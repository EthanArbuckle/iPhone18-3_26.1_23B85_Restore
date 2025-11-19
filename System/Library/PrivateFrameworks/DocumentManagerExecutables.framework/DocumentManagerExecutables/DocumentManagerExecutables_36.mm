void DOCSidebarDropContext.currentProposal.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  v4 = a1;

  DOCSidebarDropContext.currentProposal.didset();
}

uint64_t (*DOCSidebarDropContext.currentProposal.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCSidebarDropContext.currentProposal.modify;
}

uint64_t DOCSidebarDropContext.currentProposal.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return DOCSidebarDropContext.currentProposal.didset();
  }

  return result;
}

uint64_t key path setter for DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath : DOCSidebarDropContext.DebugInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of IndexPath?(a1, &v9 - v6);
  return (*(**a2 + 104))(v7);
}

uint64_t DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  swift_beginAccess();
  return outlined init with copy of IndexPath?(v1 + v3, a1);
}

uint64_t DOCSidebarDropContext.DebugInfo.lastReturnedTargetIndexPath.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  swift_beginAccess();
  outlined assign with take of IndexPath?(a1, v1 + v3);
  return swift_endAccess();
}

void *DOCSidebarDropContext.DebugInfo.lastReturnedProposal.getter()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSidebarDropContext.DebugInfo.lastReturnedProposal.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCSidebarDropContext.DebugInfo.deinit()
{
  outlined destroy of IndexPath?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath);

  return v0;
}

uint64_t DOCSidebarDropContext.DebugInfo.__deallocating_deinit()
{
  outlined destroy of IndexPath?(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath);

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarDropContext.DebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  return v0;
}

uint64_t DOCSidebarDropContext.DebugInfo.init()()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedTargetIndexPath;
  v2 = type metadata accessor for IndexPath();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCSidebarDropContext9DebugInfo_lastReturnedProposal) = 0;
  return v0;
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DOCSidebarDropContext.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DOCSidebarDropContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t DOCSidebarDropProposal.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v4 = type metadata accessor for IndexPath();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DOCSidebarDropProposal.__allocating_init(operation:intent:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a3, v9);
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_initWithDropOperation_intent_, a1, a2);
  (*(v10 + 8))(a3, v9);
  return v11;
}

id DOCSidebarDropProposal.init(operation:intent:indexPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCSidebarDropProposal_indexPath;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a3, v8);
  v12.receiver = v3;
  v12.super_class = type metadata accessor for DOCSidebarDropProposal(0);
  v10 = objc_msgSendSuper2(&v12, sel_initWithDropOperation_intent_, a1, a2);
  (*(v9 + 8))(a3, v8);
  return v10;
}

id DOCSidebarDropProposal.__allocating_init(operation:intent:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithDropOperation:a1 intent:a2];
}

id DOCSidebarDropProposal.__allocating_init(operation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithDropOperation_];
}

id DOCSidebarDropProposal.__allocating_init(dropOperation:dropLocation:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithDropOperation:a1 dropLocation:a2];
}

id DOCSidebarDropProposal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSidebarDropProposal(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for DOCSidebarDropContext.DebugInfo()
{
  type metadata accessor for IndexPath?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IndexPath?()
{
  if (!lazy cache variable for type metadata for IndexPath?)
  {
    type metadata accessor for IndexPath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexPath?);
    }
  }
}

uint64_t type metadata completion function for DOCSidebarDropProposal()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 DOCGridLayout.Spec.init(titleFontStyle:titleMaxRows:subtitleFontStyle:subtitleMaxRows:scrollDirection:scrollEnabled:allowTags:allowBadge:__layoutMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  v10 = *(a10 + 16);
  *(a9 + 48) = *a10;
  *(a9 + 64) = v10;
  result = *(a10 + 32);
  v12 = *(a10 + 48);
  *(a9 + 80) = result;
  *(a9 + 96) = v12;
  return result;
}

void DOCUniformHorizontalEdgeInsets.init(top:bottom:horizontal:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

__n128 DOCGridLayout.Spec.LayoutMetrics.init(specIconWidth:cellIconToMaxTitleEdge:cellContentMargins:gridItemSpacing:gridInsets:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = a1[1].n128_u64[0];
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  result = *a1;
  *(a2 + 40) = *a1;
  *(a2 + 56) = v7;
  return result;
}

__n128 DOCGridLayout.Spec.__layoutMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 DOCGridLayout.Spec.__layoutMetrics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 80) = result;
  *(v1 + 96) = v4;
  return result;
}

uint64_t DOCGridLayout.Spec.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 41);
  v6 = *(v0 + 42);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 80);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](v1);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](v2);
  MEMORY[0x24C1FCBD0](v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x24C1FCC00](*&v12);
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  MEMORY[0x24C1FCC00](*&v13);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x24C1FCC00](*&v14);
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x24C1FCC00](*&v15);
  if (v11 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  MEMORY[0x24C1FCC00](*&v16);
  return DOCUniformHorizontalEdgeInsets.hash(into:)();
}

Swift::Int DOCGridLayout.Spec.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.Spec()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.Spec()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.hash(into:)();
  return Hasher._finalize()();
}

double DOCGridLayout.Spec.LayoutMetrics.gridInsets.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 16) = result;
  return result;
}

double DOCGridLayout.Spec.LayoutMetrics.gridInsets.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = result;
  return result;
}

uint64_t DOCGridLayout.Spec.LayoutMetrics.maxGridWidth(numberOfColumns:)(uint64_t result)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  return result;
}

double static DOCGridLayout.Spec.LayoutMetrics.zero.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  *a1 = static DOCItemCellIconWidth.undefined;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void static DOCUniformHorizontalEdgeInsets.zero.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t DOCGridLayout.Spec.LayoutMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x24C1FCC00](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x24C1FCC00](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x24C1FCC00](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x24C1FCC00](*&v9);
  return DOCUniformHorizontalEdgeInsets.hash(into:)();
}

Swift::Int DOCGridLayout.Spec.LayoutMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridLayout.Spec.LayoutMetrics()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridLayout.Spec.LayoutMetrics()
{
  Hasher.init(_seed:)();
  DOCGridLayout.Spec.LayoutMetrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCUniformHorizontalEdgeInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x24C1FCC00](*&v5);
}

Swift::Int DOCUniformHorizontalEdgeInsets.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FCC00](*&v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCUniformHorizontalEdgeInsets()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C1FCC00](*&v6);
  return Hasher._finalize()();
}

uint64_t DOCGridItemSpacing.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x24C1FCC00](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x24C1FCC00](*&v3);
}

Swift::Int DOCGridItemSpacing.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x24C1FCC00](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x24C1FCC00](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCGridItemSpacing()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DOCGridItemSpacing.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCGridItemSpacing()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  DOCGridItemSpacing.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

BOOL specialized static DOCGridLayout.Spec.LayoutMetrics.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    v5 = a1[3].f64[0];
    v4 = a1[3].f64[1];
    v6 = a1[2].f64[1] == a2[2].f64[1];
    if (v5 != a2[3].f64[0])
    {
      v6 = 0;
    }

    return v4 == a2[3].f64[1] && v6;
  }

  return result;
}

BOOL specialized static DOCGridLayout.Spec.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v37 = *(a1 + 32);
  v32 = *(a1 + 42);
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v7 = *(a1 + 96);
  v6 = *(a1 + 104);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v35 = *(a2 + 40);
  v36 = *(a1 + 40);
  v33 = *(a2 + 41);
  v34 = *(a1 + 41);
  v31 = *(a2 + 42);
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v27 = *(a2 + 48);
  v28 = *(a2 + 64);
  v12 = *(a2 + 80);
  v11 = *(a2 + 88);
  v14 = *(a2 + 96);
  v13 = *(a2 + 104);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    if (v2 != v8)
    {
      return 0;
    }
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v19 & 1) == 0 || v2 != v8)
    {
      return result;
    }
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {

    if (v3 != v9)
    {
      return 0;
    }
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v25 & 1) == 0 || v3 != v9)
    {
      return result;
    }
  }

  result = 0;
  if (v37 == v10 && ((v36 ^ v35) & 1) == 0 && ((v34 ^ v33) & 1) == 0 && ((v32 ^ v31) & 1) == 0)
  {
    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v29, v27), vceqq_f64(v30, v28)))) & 1) != 0 && v5 == v12)
    {
      v26 = v4 == v11;
      if (v7 != v14)
      {
        v26 = 0;
      }

      return v6 == v13 && v26;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.Spec and conformance DOCGridLayout.Spec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics()
{
  result = lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics;
  if (!lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridLayout.Spec.LayoutMetrics and conformance DOCGridLayout.Spec.LayoutMetrics);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets()
{
  result = lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets;
  if (!lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUniformHorizontalEdgeInsets and conformance DOCUniformHorizontalEdgeInsets);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCGridItemSpacing and conformance DOCGridItemSpacing()
{
  result = lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing;
  if (!lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCGridItemSpacing and conformance DOCGridItemSpacing);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCGridLayout.Spec(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCGridLayout.Spec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *DOCEmptyDataSource.__allocating_init(configuration:documentManager:actionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *DOCEmptyDataSource.init(configuration:documentManager:actionManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

id DOCEmptyDataSource.containedViewController(for:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for DOCBrowserContainedViewController());
  v5 = v2;
  v6 = v1;
  v7 = v3;
  return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v5, v1, v3);
}

uint64_t DOCEmptyDataSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id protocol witness for DOCBrowserContainerDataSource.containedViewController(for:) in conformance DOCEmptyDataSource()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(type metadata accessor for DOCBrowserContainedViewController());
  v5 = v2;
  v6 = v1;
  v7 = v3;
  return DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v5, v1, v3);
}

void *DOCUnarchiveOperation.unarchivedItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCUnarchiveOperation.unarchivedItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCUnarchiveOperation.init(item:destinationFolder:undoManager:)(void *a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_unarchivedItem] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_destinationFolder] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for DOCUnarchiveOperation();
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v15, sel_initWithItem_destinationFolder_, v7, v8);
  v11 = *((*MEMORY[0x277D85000] & *v10) + 0xA8);
  v12 = v10;
  v11(v12, v13);

  return v12;
}

id DOCUnarchiveOperation.actionNameForUndoing.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v12._object = 0x8000000249BE1930;
    v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v3.value._object = 0xEB00000000656C62;
    v4._countAndFlagsBits = 0x1000000000000029;
    v4._object = 0x8000000249BE18E0;
    v5._object = 0x8000000249BE1910;
    v5._countAndFlagsBits = 0x1000000000000013;
    v12._countAndFlagsBits = 0xD00000000000003ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_249B9A480;
    v7 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item) displayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v11 = static String.localizedStringWithFormat(_:_:)();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOCUnarchiveOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_item);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_destinationFolder);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager);
  v4 = objc_allocWithZone(type metadata accessor for DOCUnarchiveOperation());
  v5 = DOCUnarchiveOperation.init(item:destinationFolder:undoManager:)(v1, v2, v3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v10[4] = partial apply for closure #1 in DOCUnarchiveOperation.operationForRedoing();
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_64;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 setUnarchiveCompletionBlock_];
  _Block_release(v7);

  return v8;
}

uint64_t partial apply for closure #1 in DOCUnarchiveOperation.operationForRedoing()(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x78);
  v4 = a1;
  return v3(a1);
}

void *DOCUnarchiveOperation.operationForUndoing()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = v3;
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCUnarchiveOperation_undoManager);
  v6 = type metadata accessor for DOCDeleteOperation();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = v4;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = v0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v5;
  type metadata accessor for FPItem();
  v8 = v5;
  v9 = v0;
  v10 = v8;
  v11 = v9;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v17.receiver = v7;
  v17.super_class = v6;
  v13 = objc_msgSendSuper2(&v17, sel_initWithItems_, isa);

  v14 = *((*v1 & *v13) + 0x88);
  v15 = v13;
  v14();

  return v13;
}

id DOCUnarchiveOperation.__allocating_init(item:destinationFolder:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItem:a1 destinationFolder:a2];

  return v5;
}

id DOCUnarchiveOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUnarchiveOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCTabBarItem.tab.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCTabBarItem.tab.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCTabBarItem.tabIdentifier.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  switch(v1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCTab.tabBarItemIdentifier.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t static DOCTabBarItem.tabIdentifier(forTab:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x73746E65636572;
    case 2:
      return 0x6573776F7262;
    case 1:
      return 0x646572616873;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id DOCTabBarItem.floatingSwitcherActionRepresentation(handler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 _internalTitle];
  if (result)
  {
    v7 = result;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DOCTabBarItem.description.getter()
{
  _StringGuts.grow(_:)(22);

  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))(v1);
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6573776F7242;
    }

    else if (v2 == 1)
    {
      v3 = 0xE600000000000000;
      v4 = 0x646572616853;
    }

    else
    {
      v3 = 0xE500000000000000;
      v4 = 0x3F3F3F3F3FLL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x73746E65636552;
  }

  MEMORY[0x24C1FAEA0](v4, v3);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t DOCTab.tabBarItemTitle.getter(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v11 = _DocumentManagerBundle();
      if (!v11)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v2 = v11;
      v15 = 0x8000000249BE1B50;
      v3 = 0x6573776F7242;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v10 = 0xD00000000000007BLL;
      v6 = 0xE600000000000000;
LABEL_10:
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
      goto LABEL_11;
    case 1:
      v1 = _DocumentManagerBundle();
      if (v1)
      {
        v2 = v1;
        v15 = 0x8000000249BE1BD0;
        v3 = 0x646572616853;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0xE600000000000000;
        v7.super.isa = v2;
        v8 = 0;
        v9 = 0xE000000000000000;
        v10 = 0xD000000000000017;
LABEL_11:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v7, *&v8, *&v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      __break(1u);
      goto LABEL_13;
    case 0:
      v12 = _DocumentManagerBundle();
      if (!v12)
      {
LABEL_14:
        __break(1u);
        break;
      }

      v2 = v12;
      v15 = 0x8000000249BE1BF0;
      v3 = 0x73746E65636552;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v10 = 0xD000000000000018;
      v6 = 0xE700000000000000;
      goto LABEL_10;
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCTabBarItem.displayTitle.getter()
{
  v1 = [v0 _internalTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id DOCTabBarItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCTabBarItem.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables13DOCTabBarItem_tab] = 2;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTabBarItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCTabBarItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCTabBarItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTabBarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UIViewController.DOCTabBarItem.getter()
{
  result = [v0 tabBarItem];
  if (result)
  {
    type metadata accessor for DOCTabBarItem();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void UIViewController.DOCTabBarItem.setter(void *a1)
{
  [v1 setTabBarItem_];
}

Class @objc UITabBar.DOCTabBarItems.getter(void *a1)
{
  v1 = a1;
  UITabBar.DOCTabBarItems.getter();

  type metadata accessor for DOCTabBarItem();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t UITabBar.DOCTabBarItems.getter()
{
  v1 = [v0 items];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITabBarItem);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return v2;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      ++v7;
      type metadata accessor for DOCTabBarItem();
      swift_dynamicCastClassUnconditional();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v7);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t @objc DOCUIPBrowserState.tab.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 contentMode];
  if (v2 + 1 >= 4)
  {
    type metadata accessor for DOCUIPBrowserContentMode(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v3 = qword_249BABEA8[v2 + 1];

    return v3;
  }

  return result;
}

uint64_t DOCUIPBrowserState.tab.getter()
{
  v1 = [v0 contentMode];
  if (v1 + 1 < 4)
  {
    return qword_249BABEA8[v1 + 1];
  }

  type metadata accessor for DOCUIPBrowserContentMode(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

id @objc DOCUIPBrowserState.tab.setter(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    type metadata accessor for DOCTab(0);
    v6 = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return [a1 setContentMode_];
  }

  return result;
}

id DOCUIPBrowserState.tab.setter(unint64_t a1)
{
  if (a1 >= 3)
  {
    type metadata accessor for DOCTab(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return [v1 setContentMode_];
  }

  return result;
}

uint64_t DOCUIPBrowserContentMode.tab.getter(uint64_t result)
{
  if (result > 0)
  {
    if (result != 1 && result != 2)
    {
      goto LABEL_6;
    }
  }

  else if (result == -1)
  {
    return 0;
  }

  else
  {
    while (result)
    {
LABEL_6:
      v3[0] = v1;
      v3[1] = v2;
      v1 = v3;
      type metadata accessor for DOCUIPBrowserContentMode(0);
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized static DOCTabBarItem._item(tab:)(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = 0xEB000000006C6C69;
        v3 = 0x662E7265646C6F66;
        goto LABEL_6;
      case 1:
        v2 = 0x8000000249BE1B30;
        v3 = 0xD00000000000001DLL;
LABEL_6:
        type metadata accessor for DOCTabBarItem();
        v4 = objc_opt_self();
        v5 = MEMORY[0x24C1FAD20](v3, v2);

        v6 = [v4 __systemImageNamedSwift_];

        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:0 image:v6 tag:a1];
LABEL_9:
        v8 = *((*MEMORY[0x277D85000] & *v7) + 0x60);
        v9 = v7;
        v8(a1);
        v10 = DOCTab.tabBarItemTitle.getter(a1);
        v11 = MEMORY[0x24C1FAD20](v10);

        [v9 _setInternalTitle_];

        [v9 setSpringLoaded_];
        return v9;
      case 0:
        type metadata accessor for DOCTabBarItem();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTabBarSystemItem:4 tag:0];
        goto LABEL_9;
    }
  }

  type metadata accessor for DOCTab(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCFileProviderSourcesCandidateSource.__allocating_init(configuration:fileProviderSources:hideCandidates:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t DOCFavoritesCandidateSource.__allocating_init(configuration:favoritesManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void *DOCRecentLocationsCandidateSource.__allocating_init(layoutDirection:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCGoToRecentLocationC_AC0fG15FolderCandidate_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v5[2] = a1;
  v5[3] = v6;
  v5[5] = a3;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v5;
}

id DOCFileProviderSource.goToIcon.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v1)
  {
    if ([v1 isiCloudDriveProvider])
    {
      v2 = MEMORY[0x24C1FAD20](0x64756F6C6369, 0xE600000000000000);
      v3 = [objc_opt_self() systemImageNamed_];

      if (v3)
      {
        return v3;
      }
    }
  }

  v5 = [v0 iconPreferingSymbolImages];

  return v5;
}

id static DOCRecentLocationsCandidateSource.saveAsRecent(_:)(void *a1)
{
  result = [a1 displayName];
  if (result)
  {

    result = [a1 node];
    if (result)
    {
      v4 = result;
      v5 = swift_allocObject();
      v5[2] = v4;
      v5[3] = a1;
      v5[4] = v1;
      v8[4] = partial apply for closure #1 in static DOCRecentLocationsCandidateSource.saveAsRecent(_:);
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCNode]?, @guaranteed Error?) -> ();
      v8[3] = &block_descriptor_65;
      v6 = _Block_copy(v8);
      swift_unknownObjectRetain();
      v7 = a1;

      [v4 fetchParents_];
      _Block_release(v6);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id static DOCRecentLocationsCandidateSource.clearRecents()()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    return [static NSUserDefaults.docUserDefaults removeObjectForKey_];
  }

  return result;
}

id DOCConcreteLocation.displayNameForGoToUI.getter()
{
  v1 = [v0 displayName];
  if (v1)
  {
    v2 = v1;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = countAndFlagsBits;

    return v8;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v9._object = 0x8000000249BE1C10;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 2960685;
    v6._object = 0xE300000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0xD000000000000053;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v2, v7, v9)._countAndFlagsBits;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t DOCConcreteLocation.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of DOCSidebarItemIconProvider(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables15DOCGoToLocation_pMd);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  if (swift_dynamicCast())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject);
    v1 = static NSObject.== infix(_:_:)();

    return v1 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id DOCGoToRecentLocation.__allocating_init(location:parents:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___DOCGoToRecentLocation_location] = a1;
  *&v5[OBJC_IVAR___DOCGoToRecentLocation_parents] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCGoToRecentLocation.init(location:parents:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___DOCGoToRecentLocation_location] = a1;
  *&v2[OBJC_IVAR___DOCGoToRecentLocation_parents] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DOCGoToRecentLocation();
  return objc_msgSendSuper2(&v4, sel_init);
}

id DOCGoToRecentLocation.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
    v11 = [a1 decodeBoolForKey_];

    _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5();
    if (v11)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9FA70;
      *(inited + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSArray);
      *(inited + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL);
      *&v1[OBJC_IVAR___DOCGoToRecentLocation_location] = v9;
      v13 = v9;
      specialized _arrayForceCast<A, B>(_:)(inited);

      NSCoder.decodeTopLevelObject(of:forKey:)();
      v36 = v13;

      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation3URLVGMd);
        v16 = swift_dynamicCast();
        v17 = v36;
        if (v16)
        {
          v18 = v41;
          v19 = [objc_opt_self() shared];
          [v19 startIfNeeded];

          v42[0] = MEMORY[0x277D84F90];
          v20 = *(v18 + 16);
          if (v20)
          {
            v35 = v2;
            v38 = objc_opt_self();
            v21 = v39 + 16;
            v39 = *(v39 + 16);
            v22 = (*(v21 + 64) + 32) & ~*(v21 + 64);
            v34[1] = v18;
            v23 = v18 + v22;
            v37 = *(v21 + 56);
            v24 = (v21 - 8);
            v25 = MEMORY[0x277D84F90];
            (v39)(v7, v23, v4);
            while (1)
            {
              URL._bridgeToObjectiveC()(v26);
              v28 = v27;
              v29 = [v38 fiNodeFromURL_];

              v30 = (*v24)(v7, v4);
              if (v29)
              {
                MEMORY[0x24C1FB090](v30);
                if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v25 = v42[0];
              }

              v23 += v37;
              if (!--v20)
              {
                break;
              }

              (v39)(v7, v23, v4);
            }

            v2 = v35;
          }

          else
          {

            v25 = MEMORY[0x277D84F90];
          }

          goto LABEL_28;
        }

LABEL_5:
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_249B9FA70;
      *(v14 + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSArray);
      *(v14 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      *&v1[OBJC_IVAR___DOCGoToRecentLocation_location] = v9;
      v15 = v9;
      specialized _arrayForceCast<A, B>(_:)(v14);

      NSCoder.decodeTopLevelObject(of:forKey:)();

      if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
        if (swift_dynamicCast())
        {
          v25 = v41;
LABEL_28:
          *&v2[OBJC_IVAR___DOCGoToRecentLocation_parents] = v25;
          v32 = type metadata accessor for DOCGoToRecentLocation();
          v40.receiver = v2;
          v40.super_class = v32;
          v33 = objc_msgSendSuper2(&v40, sel_init);

          return v33;
        }

        goto LABEL_5;
      }
    }

    outlined destroy of CharacterSet?(v42, &_sypSgMd);
    goto LABEL_23;
  }

LABEL_24:
  type metadata accessor for DOCGoToRecentLocation();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall DOCGoToRecentLocation.encode(with:)(NSCoder with)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v40 - v10;
  v12 = *(v1 + OBJC_IVAR___DOCGoToRecentLocation_location);
  v13 = MEMORY[0x24C1FAD20](0x6E6F697461636F6CLL, 0xE800000000000000, v9);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13, v40];

  v14 = *(v1 + OBJC_IVAR___DOCGoToRecentLocation_parents);
  v42 = v14 >> 62;
  if (v14 >> 62)
  {
LABEL_50:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v15 == v16)
    {
      goto LABEL_13;
    }

    if (!v17)
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      swift_unknownObjectRetain();
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    MEMORY[0x24C1FC540](v16, v14);
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_8:
    swift_getObjectType();
    v18 = DOCNode.isFINode.getter();
    swift_unknownObjectRelease();
    ++v16;
    if (!v18)
    {
      v43 = MEMORY[0x277D84F90];
      if (v42)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 = 0;
      while (v20 != v3)
      {
        if (v17)
        {
          v11 = MEMORY[0x24C1FC540](v3, v14);
          v34 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v3 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v11 = *(v14 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v34 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_48;
          }
        }

        v6 = [v11 fpfs_fpItem];
        v35 = swift_unknownObjectRelease();
        ++v3;
        if (v6)
        {
          MEMORY[0x24C1FB090](v35);
          if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = v34;
        }
      }

      v36 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
      v37 = isa;
      [(objc_class *)isa encodeBool:0 forKey:v36];

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      v38 = Array._bridgeToObjectiveC()().super.isa;

      v42 = MEMORY[0x24C1FAD20](0x73746E65726170, 0xE700000000000000);
      [(objc_class *)v37 encodeObject:v38 forKey:v42];

      v39 = v42;

      return;
    }
  }

  __break(1u);
LABEL_13:
  if (v42)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
LABEL_30:
    v30 = MEMORY[0x24C1FAD20](0x534650467369, 0xE600000000000000);
    v31 = isa;
    [(objc_class *)isa encodeBool:1 forKey:v30];

    v32 = Array._bridgeToObjectiveC()().super.isa;

    v33 = MEMORY[0x24C1FAD20](0x73746E65726170, 0xE700000000000000);
    [(objc_class *)v31 encodeObject:v32 forKey:v33];

    return;
  }

  v43 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = v43;
    do
    {
      if (v17)
      {
        v23 = MEMORY[0x24C1FC540](v21, v14);
      }

      else
      {
        v23 = *(v14 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      v24 = [v23 nodeURL];
      if (v24)
      {
        v25 = v24;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      swift_unknownObjectRelease();
      v27 = type metadata accessor for URL();
      (*(*(v27 - 8) + 56))(v6, v26, 1, v27);
      outlined init with take of URL?(v6, v11);
      v43 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
        v22 = v43;
      }

      ++v21;
      *(v22 + 16) = v29 + 1;
      outlined init with take of URL?(v11, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29);
    }

    while (v19 != v21);
    goto LABEL_30;
  }

  __break(1u);
}

id DOCGoToRecentLocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCGoToRecentLocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCGoToRecentLocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCLocationGoToCandidate.path.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t DOCLocationGoToCandidate.displayNameForGoToUI.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

id DOCLocationGoToCandidate.extendedDisplayName.getter()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];
  }

  else
  {
    v3 = v0[3];
    v4 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = MEMORY[0x24C1FAD20](v5, v7);

    v2 = [v8 initWithString_];

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

uint64_t DOCLocationGoToCandidate.init(location:path:section:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  result = outlined init with take of DOCGoToFolderCandidate(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = v6;
  return result;
}

uint64_t protocol witness for DOCGoToFolderCandidate.displayNameForGoToUI.getter in conformance DOCLocationGoToCandidate()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

id protocol witness for DOCGoToFolderCandidate.extendedDisplayName.getter in conformance DOCLocationGoToCandidate()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[5];
  }

  else
  {
    v3 = v0[3];
    v4 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v3);
    v5 = (*(v4 + 8))(v3, v4);
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = MEMORY[0x24C1FAD20](v5, v7);

    v2 = [v8 initWithString_];

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

id DOCNodeGoToCandidate.extendedDisplayName.getter()
{
  v1 = [*v0 displayName];
  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x24C1FAD20](v2);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  return v3;
}

uint64_t DOCNodeGoToCandidate.location.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getObjectType();
  v4 = DOCNode.sourceIdentifier.getter();
  v5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v4 node:v3];

  result = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  a1[3] = result;
  a1[4] = &protocol witness table for DOCConcreteLocation;
  *a1 = v5;
  return result;
}

uint64_t DOCNodeGoToCandidate.init(node:section:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

id protocol witness for DOCGoToFolderCandidate.extendedDisplayName.getter in conformance DOCNodeGoToCandidate()
{
  v1 = [*v0 displayName];
  if (!v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = MEMORY[0x24C1FAD20](v2);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  return v3;
}

uint64_t protocol witness for DOCGoToFolderCandidate.location.getter in conformance DOCNodeGoToCandidate@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getObjectType();
  v4 = DOCNode.sourceIdentifier.getter();
  v5 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v4 node:v3];

  result = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  a1[3] = result;
  a1[4] = &protocol witness table for DOCConcreteLocation;
  *a1 = v5;
  return result;
}

id DOCFileProviderSourceGoToCandidate.extendedDisplayName.getter()
{
  v1 = [*v0 displayName];
  v2 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  return v2;
}

uint64_t DOCFileProviderSourceGoToCandidate.location.getter@<X0>(void *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v3 node:0];

  result = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  a1[3] = result;
  a1[4] = &protocol witness table for DOCConcreteLocation;
  *a1 = v4;
  return result;
}

uint64_t DOCFileProviderSourceGoToCandidate.init(fileProviderSource:section:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

id protocol witness for DOCGoToFolderCandidate.extendedDisplayName.getter in conformance DOCFileProviderSourceGoToCandidate()
{
  v1 = [*v0 displayName];
  v2 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  return v2;
}

uint64_t protocol witness for DOCGoToFolderCandidate.location.getter in conformance DOCFileProviderSourceGoToCandidate@<X0>(void *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v3 node:0];

  result = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  a1[3] = result;
  a1[4] = &protocol witness table for DOCConcreteLocation;
  *a1 = v4;
  return result;
}

id DOCItemCollectionCandidateSource.init(itemCollectionConfiguration:)(_OWORD *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_semaphore;
  *&v1[v3] = dispatch_semaphore_create(0);
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_prefix];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  UUID.init()();
  v11 = 2;
  DOCItemSortDescriptor.init(type:isReversed:)(&v11, 0, &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor]);
  v6 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_itemCollectionConfiguration];
  v7 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v7;
  *(v6 + 4) = a1[4];
  v8 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DOCItemCollectionCandidateSource();
  return objc_msgSendSuper2(&v10, sel_init);
}

id DOCItemCollectionCandidateSource.__deallocating_deinit()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection];
  if (v2)
  {
    v3 = *((*MEMORY[0x277D85000] & *v2) + 0x1C8);
    v4 = v2;
    v3();
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCItemCollectionCandidateSource();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void DOCItemCollectionCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_prefix);
  *v16 = a1;
  v16[1] = a2;

  (*(v12 + 16))(v15, a3, v11);
  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_requestID;
  swift_beginAccess();
  (*(v12 + 40))(v5 + v17, v15, v11);
  swift_endAccess();
  v18 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler);
  v19 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler);
  *v18 = a4;
  v18[1] = a5;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v19);
  DOCItemCollectionCandidateSource.setUpIfNeeded()();
  DOCItemCollectionCandidateSource.deliverCandidates()();
}

void DOCItemCollectionCandidateSource.setUpIfNeeded()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection;
  if (!*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection])
  {
    v2 = v0;
    v3 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_itemCollectionConfiguration];
    v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_itemCollectionConfiguration + 72];
    v5 = MEMORY[0x277D85000];
    if (v4)
    {
      *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection] = v4;
      v6 = v4;
    }

    else
    {
      v20 = *(v3 + 8);
      if (!v20)
      {
        return;
      }

      v21 = type metadata accessor for DOCNodeCollection();
      v23 = *v3;
      v22 = *(v3 + 1);
      swift_getObjectType();
      swift_unknownObjectRetain_n();
      v24 = v22;
      v25 = v23;
      LOBYTE(v48) = 1;
      v26 = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v20, v22, v23, 0x100000000uLL, v21);
      v27 = [v25 identifier];
      v28 = *(v3 + 1);
      v29 = *(v3 + 3);
      v45 = *(v3 + 2);
      v46 = v29;
      v30 = *(v3 + 3);
      v47 = *(v3 + 4);
      v31 = *(v3 + 1);
      v44[0] = *v3;
      v44[1] = v31;
      v41 = v45;
      v42 = v30;
      v43 = *(v3 + 4);
      v39 = v44[0];
      v40 = v28;
      v32 = objc_opt_self();
      outlined init with copy of DOCItemCollectionConfiguration(v44, &v48);
      v33 = [v32 defaultPermission];
      v34 = specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v27, 0, v33, &v39, 0);

      v50 = v41;
      v51 = v42;
      v52 = v43;
      v48 = v39;
      v49 = v40;
      outlined destroy of DOCItemCollectionConfiguration(&v48);
      v35 = *((*MEMORY[0x277D85000] & *v26) + 0x238);
      v36 = v34;
      v37 = v34;
      v5 = MEMORY[0x277D85000];
      v35(v37);
      swift_unknownObjectRelease();

      v38 = *&v2[v1];
      *&v2[v1] = v26;

      v6 = *&v2[v1];
      if (!v6)
      {
        return;
      }
    }

    v7 = *((*v5 & *v6) + 0x198);
    v8 = v4;
    v9 = v6;
    v10 = v2;
    v7(v2, &protocol witness table for DOCItemCollectionCandidateSource);

    v11 = *&v2[v1];
    if (v11)
    {
      v12 = *((*v5 & *v11) + 0x1C0);
      v13 = v11;
      v12();

      v14 = *&v2[v1];
      if (v14)
      {
        v15 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor + 8];
        v16 = *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor + 16];
        v17 = v10[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor + 24];
        *&v48 = v10[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_sortingDescriptor];
        *(&v48 + 1) = v15;
        *&v49 = v16;
        BYTE8(v49) = v17;
        v18 = *((*v5 & *v14) + 0x228);
        v19 = v14;

        v18(&v48);

        outlined consume of DOCItemSortDescriptor?(v48, *(&v48 + 1));
      }
    }
  }
}

void DOCItemCollectionCandidateSource.deliverCandidates()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v52 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v15 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v20 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_nodeCollection);
  if (v20)
  {
    v48 = &v40 - v18;
    v49 = v19;
    v54 = v20;
    if ([v54 isGathering])
    {
      v21 = v54;
    }

    else
    {
      v46 = v1;
      v47 = v12;
      v44 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler);
      v45 = v2;
      if (v44)
      {
        v42 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_updateHandler + 8);
        v22 = *((*MEMORY[0x277D85000] & *v54) + 0x258);

        v41 = v22(v23);
        v24 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_requestID;
        swift_beginAccess();
        v25 = v48;
        v26 = *(v49 + 16);
        v26(v48, v0 + v24, v47);
        v27 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_prefix + 8);
        v40 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCItemCollectionCandidateSource_prefix);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        (*(v8 + 104))(v11, *MEMORY[0x277D851C8], v7);

        v43 = static OS_dispatch_queue.global(qos:)();
        (*(v8 + 8))(v11, v7);
        v28 = v25;
        v29 = v47;
        v26(v15, v28, v47);
        v30 = v49;
        v31 = (*(v49 + 80) + 56) & ~*(v49 + 80);
        v32 = swift_allocObject();
        v33 = v40;
        *(v32 + 2) = v41;
        *(v32 + 3) = v33;
        v34 = v44;
        *(v32 + 4) = v27;
        *(v32 + 5) = v34;
        *(v32 + 6) = v42;
        (*(v30 + 32))(&v32[v31], v15, v29);
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionCandidateSource.deliverCandidates();
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_86_0;
        v35 = _Block_copy(aBlock);

        v36 = v50;
        static DispatchQoS.unspecified.getter();
        v55 = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        v37 = v52;
        v38 = v46;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v43;
        MEMORY[0x24C1FB9A0](0, v36, v37, v35);
        _Block_release(v35);

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v34);
        (*(v45 + 8))(v37, v38);
        (*(v51 + 8))(v36, v53);
        (*(v30 + 8))(v48, v29);
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }
  }
}

uint64_t closure #1 in DOCItemCollectionCandidateSource.deliverCandidates()(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v39 = a4;
  v40 = a5;
  v7 = type metadata accessor for UUID();
  v37 = *(v7 - 8);
  v38 = v7;
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7, v8);
  v34 = v10;
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_30:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1;
    v42 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v14)
      {
        v16 = MEMORY[0x24C1FC540](v13, a1, v9);
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v16 = *(a1 + 8 * v13 + 32);
        swift_unknownObjectRetain();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v18 = v44;
          v12 = MEMORY[0x277D84F90];
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }
      }

      v43 = v16;
      if (closure #1 in closure #1 in DOCItemCollectionCandidateSource.deliverCandidates()(&v43))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        a1 = v41;
        v14 = v42;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v13;
      if (v17 == v11)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v18 & 0x4000000000000000) == 0)
  {
    v19 = *(v18 + 16);
    if (v19)
    {
      goto LABEL_20;
    }

LABEL_32:

    v21 = MEMORY[0x277D84F90];
LABEL_33:
    v26 = v37;
    v27 = v35;
    v28 = v38;
    (*(v37 + 16))(v35, v36, v38);
    v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v30 = (v34 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    v32 = v40;
    *(v31 + 16) = v39;
    *(v31 + 24) = v32;
    (*(v26 + 32))(v31 + v29, v27, v28);
    *(v31 + v30) = v21;

    DOCRunInMainThread(_:)();
  }

LABEL_31:
  v19 = __CocoaSet.count.getter();
  if (!v19)
  {
    goto LABEL_32;
  }

LABEL_20:
  v44 = v12;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v44;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x24C1FC540](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
        swift_unknownObjectRetain();
      }

      v44 = v21;
      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v21 = v44;
      }

      ++v20;
      v21[2] = v24 + 1;
      v25 = &v21[2 * v24];
      v25[4] = v22;
      *(v25 + 40) = 2;
    }

    while (v19 != v20);

    goto LABEL_33;
  }

  __break(1u);

  swift_unknownObjectRelease();

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DOCItemCollectionCandidateSource.deliverCandidates()(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v25 - v4;
  v6 = *a1;
  v25[1] = swift_getObjectType();
  v7 = [v6 displayName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v26[0] = v8;
  v26[1] = v10;
  v11 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.folding(options:locale:)();
  outlined destroy of CharacterSet?(v5, &_s10Foundation6LocaleVSgMd);

  if ([v6 isFolder])
  {
    v13 = specialized Sequence<>.starts<A>(with:)();

    if (v13)
    {
      v14 = [objc_opt_self() sharedManager];
      v15 = specialized DOCAppProtectionManager.candidateItemShouldShow(_:)(v6);

      if (v15)
      {
        return 1;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.UI);
      swift_unknownObjectRetain();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v26[0] = v21;
        *v20 = 136315394;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BE2000, v26);
        *(v20 + 12) = 2080;
        v22 = DOCNode.nodeDescription.getter();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v26);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_2493AC000, v18, v19, "%s [PROTECTED APPS] filtering out suggested node: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v21, -1, -1);
        MEMORY[0x24C1FE850](v20, -1, -1);
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t DOCAppProtectionManager.candidateItemShouldShow(_:)(void *a1)
{
  swift_getObjectType();

  return specialized DOCAppProtectionManager.candidateItemShouldShow(_:)(a1);
}

void *DOCRecentLocationsCandidateSource.init(layoutDirection:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCGoToRecentLocationC_AC0fG15FolderCandidate_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[2] = a1;
  v3[3] = v6;
  v3[5] = a3;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v3;
}

void closure #1 in static DOCRecentLocationsCandidateSource.saveAsRecent(_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v73[3] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for UI == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_29;
  }

  if (!a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.UI);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v73[0] = v38;
      *v37 = 136315138;
      swift_getObjectType();
      v39 = DOCNode.nodeDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v73);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2493AC000, oslog, v36, "Received nil for parents of %s.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C1FE850](v38, -1, -1);
      v17 = v37;
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249BA0290;
  v21 = type metadata accessor for DOCGoToRecentLocation();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___DOCGoToRecentLocation_location] = a4;
  *&v22[OBJC_IVAR___DOCGoToRecentLocation_parents] = a1;
  v71.receiver = v22;
  v71.super_class = v21;

  v23 = a4;
  *(v20 + 32) = objc_msgSendSuper2(&v71, sel_init);
  v24 = specialized static DOCRecentLocationsCandidateSource.recentLocations()();
  v25 = v24;
  v73[0] = MEMORY[0x277D84F90];
  if (!(v24 >> 62))
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_31:
    v34 = MEMORY[0x277D84F90];
LABEL_32:

    v73[0] = v20;
    specialized Array.append<A>(contentsOf:)(v34);
    v42 = v73[0];
    v43 = v73[0] >> 62;
    if (v73[0] >> 62)
    {
      v66 = v73[0];
      if (v73[0] >= 0)
      {
        v42 = v73[0] & 0xFFFFFFFFFFFFFF8;
      }

      v67 = __CocoaSet.count.getter();
      if (__CocoaSet.count.getter() < 0)
      {
        __break(1u);
        goto LABEL_66;
      }

      if (v67 >= 4)
      {
        v68 = 4;
      }

      else
      {
        v68 = v67;
      }

      if (v67 >= 0)
      {
        v45 = v68;
      }

      else
      {
        v45 = 4;
      }

      v44 = __CocoaSet.count.getter();
      v42 = v66;
    }

    else
    {
      v44 = *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44 >= 4)
      {
        v45 = 4;
      }

      else
      {
        v45 = *((v73[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (v44 >= v45)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {

        if (v45)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v45 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v45 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
              if (v45 != 3)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(3);
                if (v45 != 4)
                {
                  _ArrayBuffer._typeCheckSlowPath(_:)(4);
                  _ArrayBuffer._typeCheckSlowPath(_:)(5);
                  _ArrayBuffer._typeCheckSlowPath(_:)(6);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if (v43)
      {
        v47 = _CocoaArrayWrapper.subscript.getter();
        v48 = v50;
        v46 = v51;
        v49 = v52;

        if ((v49 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v46 = 0;
        v47 = v42 & 0xFFFFFFFFFFFFFF8;
        v48 = (v42 & 0xFFFFFFFFFFFFFF8) + 32;
        v49 = (2 * v45) | 1;
        if ((v49 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        swift_unknownObjectRelease();
        v53 = MEMORY[0x277D84F90];
      }

      v54 = *(v53 + 16);

      if (__OFSUB__(v49 >> 1, v46))
      {
        __break(1u);
      }

      else if (v54 == (v49 >> 1) - v46)
      {
        v55 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v55)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      swift_unknownObjectRelease_n();
LABEL_49:
      specialized _copyCollectionToContiguousArray<A>(_:)(v47, v48, v46, v49);
LABEL_55:
      swift_unknownObjectRelease();
LABEL_56:
      v56 = objc_opt_self();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v73[0] = 0;
      v58 = [v56 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v73];

      v59 = v73[0];
      if (!v58)
      {
        v64 = v59;
        v65 = _convertNSErrorToError(_:)();

        swift_willThrow();
        return;
      }

      v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v60;

      if (one-time initialization token for docUserDefaults == -1)
      {
        goto LABEL_58;
      }

      goto LABEL_67;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
LABEL_58:
    swift_beginAccess();
    if (static NSUserDefaults.docUserDefaults)
    {
      v61 = static NSUserDefaults.docUserDefaults;
      v62 = Data._bridgeToObjectiveC()().super.isa;
      v63 = *MEMORY[0x277D05E50];
      [v61 setObject:v62 forKey:v63];
      outlined consume of Data._Representation(v42, v43);
    }

    else
    {
      outlined consume of Data._Representation(v42, v43);
    }

    return;
  }

  v26 = __CocoaSet.count.getter();
  if (!v26)
  {
    goto LABEL_31;
  }

LABEL_9:
  v69 = v20;
  v27 = 0;
  v4 = (v25 & 0xC000000000000001);
  while (1)
  {
    if (v4)
    {
      v28 = MEMORY[0x24C1FC540](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v28 = *(v25 + 8 * v27 + 32);
    }

    v29 = v28;
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    v31 = *&v28[OBJC_IVAR___DOCGoToRecentLocation_location];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
    v32 = v31;
    v33 = static NSObject.== infix(_:_:)();

    if (v33)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v27;
    if (v30 == v26)
    {
      v34 = v73[0];
      v20 = v69;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.UI);
  swift_unknownObjectRetain();
  v6 = v4;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v73[0] = v9;
    *v8 = 136315394;
    swift_getObjectType();
    v10 = DOCNode.nodeDescription.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v73);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v72 = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v73);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2493AC000, oslog, v7, "Failed to fetch all parents for node: %s. Error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    v17 = v8;
LABEL_5:
    MEMORY[0x24C1FE850](v17, -1, -1);

    return;
  }

LABEL_24:
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCNode]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a4;
  v40 = a5;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v42 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v7);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v5 + 24) = MEMORY[0x277D84F98];

  v21 = specialized static DOCRecentLocationsCandidateSource.recentLocations()();
  v33 = *(v5 + 16);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v17 + 104))(v20, *MEMORY[0x277D851C8], v16);
  v34 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  (*(v13 + 16))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v12);
  v22 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v21;
  *(v23 + 3) = v6;
  v24 = v37;
  *(v23 + 4) = v36;
  *(v23 + 5) = v24;
  v25 = v39;
  v26 = v40;
  *(v23 + 6) = v33;
  *(v23 + 7) = v25;
  *(v23 + 8) = v26;
  (*(v13 + 32))(&v23[v22], &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = partial apply for closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_3;
  v27 = _Block_copy(aBlock);

  v28 = v38;
  static DispatchQoS.unspecified.getter();
  v46 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v30 = v41;
  v29 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v34;
  MEMORY[0x24C1FB9A0](0, v28, v30, v27);
  _Block_release(v27);

  (*(v45 + 8))(v30, v29);
  (*(v43 + 8))(v28, v44);
}

id closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v43 = a6;
  v44 = a7;
  v42 = a5;
  v46._countAndFlagsBits = a3;
  v46._object = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v11 - 8, v12);
  v45 = &v40 - v16;
  v51 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_22:
    v13 = __CocoaSet.count.getter();
    v17 = v13;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v41 = a8;
      a8 = 0;
      v47 = a1 & 0xFFFFFFFFFFFFFF8;
      v48 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v48)
        {
          v18 = MEMORY[0x24C1FC540](a8, a1, v15);
        }

        else
        {
          if (a8 >= *(v47 + 16))
          {
            goto LABEL_21;
          }

          v18 = *(a1 + 8 * a8 + 32);
        }

        v19 = v18;
        v20 = a8 + 1;
        if (__OFADD__(a8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v21 = OBJC_IVAR___DOCGoToRecentLocation_location;
        v22 = [*&v18[OBJC_IVAR___DOCGoToRecentLocation_location] displayName];
        if (v22)
        {
          v23 = a1;

          v24 = [*&v19[v21] sourceIdentifier];
          swift_unknownObjectUnownedLoadStrong();
          v25 = *(a2 + 40);
          ObjectType = swift_getObjectType();
          LOBYTE(v25) = (*(v25 + 8))(a2, v24, ObjectType, v25);

          swift_unknownObjectRelease();
          if ((v25 & 1) == 0)
          {
            goto LABEL_16;
          }

          result = [*&v19[v21] displayName];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v28 = result;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v49 = v29;
          v50 = v31;
          v32 = [objc_opt_self() currentLocale];
          v33 = v45;
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = type metadata accessor for Locale();
          (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol.folding(options:locale:)();
          outlined destroy of CharacterSet?(v33, &_s10Foundation6LocaleVSgMd);

          LOBYTE(v32) = String.hasPrefix(_:)(v46);

          if (v32 & 1) != 0 && (v35 = [objc_opt_self() sharedManager], v36 = specialized DOCAppProtectionManager.recentLocationShouldShow(_:)(v19), v35, (v36))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v13 = specialized ContiguousArray._endMutation()();
          }

          else
          {
LABEL_16:
          }

          a1 = v23;
        }

        else
        {
        }

        ++a8;
        if (v20 == v17)
        {
          v37 = v51;
          a8 = v41;
          goto LABEL_24;
        }
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_24:
  MEMORY[0x28223BE20](v13, v14);
  v38 = v43;
  *(&v40 - 6) = v42;
  *(&v40 - 5) = a2;
  v39 = v44;
  *(&v40 - 4) = v38;
  *(&v40 - 3) = v39;
  *(&v40 - 2) = a8;
  *(&v40 - 1) = a1;
  specialized Sequence.forEach(_:)(partial apply for closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:), (&v40 - 8), v37);
}

void closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a7;
  v45 = a2;
  v46 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = *a1;
  v18 = [*&v17[OBJC_IVAR___DOCGoToRecentLocation_location] fileProviderItem];
  if (v18)
  {
    v44 = v18;
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(*&v17[OBJC_IVAR___DOCGoToRecentLocation_parents]);
    if (All)
    {
      v41 = All;
      v43 = v7;
      v42 = [objc_opt_self() systemGrayColor];
      (*(v13 + 16))(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v12);
      v20 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = a3;
      *(v21 + 3) = v17;
      *(v21 + 4) = v46;
      *(v21 + 5) = a5;
      (*(v13 + 32))(&v21[v20], &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
      *&v21[(v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v48;

      v22 = v17;

      v23 = _DocumentManagerBundle();
      if (v23)
      {
        v24 = v23;
        v49._object = 0x8000000249BD09D0;
        v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v25.value._object = 0xEB00000000656C62;
        v26._countAndFlagsBits = 0xD00000000000001CLL;
        v26._object = 0x8000000249BD0990;
        v27._object = 0x8000000249BD09B0;
        v49._countAndFlagsBits = 0xD000000000000031;
        v27._countAndFlagsBits = 0xD000000000000010;
        v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v25, v24, v27, v49);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249B9A480;
        *(inited + 32) = 0x68736172542ELL;
        *(inited + 40) = 0xE600000000000000;
        *(inited + 48) = v28;

        v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of CharacterSet?(inited + 32, &_sSS_SStMd);
        v31 = objc_opt_self();
        v32 = swift_allocObject();
        *(v32 + 16) = 1;
        v34 = v44;
        v33 = v45;
        *(v32 + 24) = v44;
        *(v32 + 32) = 0;
        *(v32 + 40) = v28;
        *(v32 + 56) = v30;
        *(v32 + 64) = v33;
        v35 = v41;
        v36 = v42;
        *(v32 + 72) = v42;
        *(v32 + 80) = partial apply for closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:);
        *(v32 + 88) = v21;
        *(v32 + 96) = v35;
        aBlock[4] = partial apply for closure #1 in FPItem.getLocalizedDisplayPath(using:domain:layoutDirection:includeSelf:arrowColor:specialCasingLocations:completion:);
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_74;
        v37 = _Block_copy(aBlock);
        v38 = v34;
        v39 = v36;

        [v31 fetchProviderDomainForItem:v38 cachePolicy:1 completionHandler:v37];

        _Block_release(v37);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v26 = a9;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  (*(v15 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v14, v18);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  *(v20 + 3) = a5;
  v21 = v25;
  *(v20 + 4) = a1;
  *(v20 + 5) = v21;
  *(v20 + 6) = a7;
  (*(v15 + 32))(&v20[v19], &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *&v20[(v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v26;
  v22 = a1;

  v23 = a5;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, char *a2, void *a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = *&a2[OBJC_IVAR___DOCGoToRecentLocation_location];
  v30[3] = &type metadata for DOCLocationGoToCandidate;
  v30[4] = &protocol witness table for DOCLocationGoToCandidate;
  v12 = swift_allocObject();
  v30[0] = v12;
  *(v12 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation);
  *(v12 + 48) = &protocol witness table for DOCConcreteLocation;
  *(v12 + 16) = v11;
  *(v12 + 56) = a3;
  *(v12 + 64) = 0;
  swift_beginAccess();
  v13 = a3;
  v14 = a2;
  v15 = v11;
  specialized Dictionary.subscript.setter(v30, v14);
  result = swift_endAccess();
  if (a7 >> 62)
  {
    result = __CocoaSet.count.getter();
    v17 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v19 = MEMORY[0x277D84F90];
LABEL_20:
    a4(a6, v19);
  }

  v17 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a7 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C1FC540](v18, a7);
      }

      else
      {
        v20 = *(a7 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = *(a1 + 24);
      if (*(v22 + 16))
      {

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
        if (v24)
        {
          outlined init with copy of DOCSidebarItemIconProvider(*(v22 + 56) + 40 * v23, v30);

          outlined init with copy of DOCSidebarItemIconProvider(v30, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
          }

          v26 = v19[2];
          v25 = v19[3];
          if (v26 >= v25 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v19);
          }

          __swift_destroy_boxed_opaque_existential_0(v30);
          v19[2] = v26 + 1;
          outlined init with take of DOCGoToFolderCandidate(v29, &v19[5 * v26 + 4]);
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v17 == ++v18)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCRecentLocationsCandidateSource.deinit()
{

  outlined destroy of unowned DOCRecentLocationsCandidateSourceDelegate(v0 + 32);
  return v0;
}

uint64_t DOCRecentLocationsCandidateSource.__deallocating_deinit()
{

  outlined destroy of unowned DOCRecentLocationsCandidateSourceDelegate(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t DOCFileProviderSourcesCandidateSource.init(configuration:fileProviderSources:hideCandidates:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

char *DOCFileProviderSourcesCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v45 = a3;
  v48 = a1;
  v49 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6 - 8, v7);
  v51 = &isa - v9;
  v52 = v5;
  v10 = *(v5 + 24);
  v57 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_43;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v53 = v10 & 0xFFFFFFFFFFFFFF8;
    v54 = v10 & 0xC000000000000001;
    v50 = MEMORY[0x277D84F90] >> 62;
    while (1)
    {
      if (v54)
      {
        v14 = MEMORY[0x24C1FC540](v13, v10, v8);
      }

      else
      {
        if (v13 >= *(v53 + 16))
        {
          goto LABEL_42;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v11 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v17 = *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v17)
      {
        v18 = v11;
        v19 = *(v52 + 16);
        v20 = objc_opt_self();
        v21 = v15;
        v22 = v17;
        v23 = [v20 defaultPermission];
        if (v50 && __CocoaSet.count.getter() >= 1)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v24 = [v23 canItems:isa performAction:objc_msgSend(v23 fileProviderDomain:{sel_userActionForConfiguration_, v19), v22}];
        }

        else
        {
          v24 = 1;
        }

        if ([v19 forPickingFoldersOnly])
        {
          v25 = [v22 supportsPickingFolders];

          if ((v24 & 1) == 0)
          {

            v11 = v18;
            goto LABEL_6;
          }

          v11 = v18;
          if ((v25 & 1) == 0)
          {
LABEL_5:

            goto LABEL_6;
          }
        }

        else
        {

          v11 = v18;
          if ((v24 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      v26 = [v15 displayName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v55 = v27;
      v56 = v29;
      v30 = [objc_opt_self() currentLocale];
      v31 = v51;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = type metadata accessor for Locale();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.folding(options:locale:)();
      outlined destroy of CharacterSet?(v31, &_s10Foundation6LocaleVSgMd);

      if (String.count.getter() <= 0)
      {

LABEL_23:

        goto LABEL_6;
      }

      v33 = specialized Sequence<>.starts<A>(with:)();

      if ((v33 & 1) == 0)
      {
        goto LABEL_23;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      ++v13;
      if (v16 == v11)
      {
        v12 = v57;
        break;
      }
    }
  }

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v34 = *(v12 + 16);
    if (v34)
    {
      goto LABEL_32;
    }

LABEL_45:

    v37 = MEMORY[0x277D84F90];
LABEL_46:
    v43 = specialized _arrayForceCast<A, B>(_:)(v37);

    v47(v45, v43);
  }

  v34 = __CocoaSet.count.getter();
  if (!v34)
  {
    goto LABEL_45;
  }

LABEL_32:
  v55 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v55;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x24C1FC540](v36, v12);
      }

      else
      {
        v38 = *(v12 + 8 * v36 + 32);
      }

      v55 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = v38;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v38 = v42;
        v37 = v55;
      }

      ++v36;
      *(v37 + 16) = v40 + 1;
      v41 = v37 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = 1;
    }

    while (v34 != v36);

    goto LABEL_46;
  }

  __break(1u);
  return result;
}

uint64_t DOCFileProviderSourcesCandidateSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCFavoritesCandidateSource.init(configuration:favoritesManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v38 = a3;
  v39 = a1;
  v40 = a2;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v15 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v5 + 24);
  v37 = *(v5 + 16);
  v23 = [v22 favoritedLocations];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v17 + 104))(v21, *MEMORY[0x277D851C8], v16);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v21, v16);
  (*(v12 + 16))(v15, v38, v11);
  v26 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  *(v27 + 2) = v24;
  *(v27 + 3) = v28;
  v29 = v40;
  *(v27 + 4) = v39;
  *(v27 + 5) = v29;
  v30 = v43;
  *(v27 + 6) = v42;
  *(v27 + 7) = v30;
  (*(v12 + 32))(&v27[v26], v15, v11);
  aBlock[4] = partial apply for closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_12_2;
  v31 = _Block_copy(aBlock);
  v32 = v28;

  v33 = v41;
  static DispatchQoS.unspecified.getter();
  v49 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v35 = v44;
  v34 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v33, v35, v31);
  _Block_release(v31);

  (*(v48 + 8))(v35, v34);
  (*(v46 + 8))(v33, v47);
}

uint64_t closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v42 = a7;
  v12 = type metadata accessor for UUID();
  v43 = *(v12 - 8);
  v44 = v12;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12, v13);
  v40 = v15;
  v41 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_30:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v46 = v16;
  if (v16)
  {
    v38 = a6;
    v39 = a5;
    v18 = 0;
    a6 = a1 & 0xC000000000000001;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    a5 = v46;
    v45 = a2;
    do
    {
      if (a6)
      {
        v19 = MEMORY[0x24C1FC540](v18, a1, v14);
      }

      else
      {
        if (v18 >= *(v47 + 16))
        {
          goto LABEL_29;
        }

        v19 = *(a1 + 8 * v18 + 32);
      }

      v7 = v19;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v48 = v19;
      if (closure #1 in closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)(&v48))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        a2 = v45;
        a5 = v46;
      }

      else
      {
      }

      ++v18;
    }

    while (v20 != a5);
    v21 = v49;
    a6 = v38;
    a5 = v39;
    v17 = MEMORY[0x277D84F90];
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

  v21 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v21 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v22 = __CocoaSet.count.getter();
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_32:

    v24 = MEMORY[0x277D84F90];
LABEL_33:
    v30 = v43;
    v31 = v41;
    v32 = v44;
    (*(v43 + 16))(v41, v42, v44);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = (v40 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    *(v35 + 24) = a6;
    (*(v30 + 32))(v35 + v33, v31, v32);
    *(v35 + v34) = v24;

    DOCRunInMainThread(_:)();
  }

LABEL_19:
  v49 = v17;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = v49;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x24C1FC540](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v49 = v24;
      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v39 = a5;
        v29 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v25 = v29;
        a5 = v39;
        v24 = v49;
      }

      ++v23;
      v24[2] = v27 + 1;
      v28 = &v24[2 * v27];
      v28[4] = v25;
      *(v28 + 40) = 2;
    }

    while (v22 != v23);

    goto LABEL_33;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v33 - v4;
  v6 = *a1;
  if (DOCConfiguration.allowsSelecting(_:pickerContext:)(v6, 0))
  {
    v7 = [v6 displayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v33[0] = v8;
    v33[1] = v10;
    v11 = [objc_opt_self() currentLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.folding(options:locale:)();
    outlined destroy of CharacterSet?(v5, &_s10Foundation6LocaleVSgMd);

    if (String.count.getter() < 1)
    {
    }

    else
    {
      v13 = specialized Sequence<>.starts<A>(with:)();

      if (v13)
      {
        v14 = [objc_opt_self() sharedManager];
        v15 = v6;
        v16 = specialized DOCAppProtectionManager.candidateItemShouldShow(_:)(v15);

        if (v16)
        {
          return 1;
        }

        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.UI);
        v19 = v15;
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v33[0] = v23;
          *v22 = 136315394;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BE1F60, v33);
          *(v22 + 12) = 2080;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = v24;
            v26 = v19;
            v27 = [v25 description];
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;
          }

          else
          {
            v27 = [v19 displayName];
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v31;
          }

          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, v33);

          *(v22 + 14) = v32;
          _os_log_impl(&dword_2493AC000, v20, v21, "%s [PROTECTED APPS] filtering out suggested node: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v23, -1, -1);
          MEMORY[0x24C1FE850](v22, -1, -1);
        }
      }
    }
  }

  return 0;
}

uint64_t DOCFavoritesCandidateSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlFSo8NSObjectCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCmMd);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCySo8NSObjectCmGMd;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t type metadata accessor for DOCItemCollectionCandidateSource()
{
  result = type metadata singleton initialization cache for DOCItemCollectionCandidateSource;
  if (!type metadata singleton initialization cache for DOCItemCollectionCandidateSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized DOCAppProtectionManager.candidateItemShouldShow(_:)(void *a1)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315650;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BE1FA0, &v19);
    *(v5 + 12) = 2080;
    v7 = [a1 displayName];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v19);

    *(v5 + 14) = v11;
    *(v5 + 22) = 2080;
    v12 = [a1 identifier];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v19);

    *(v5 + 24) = v15;
    _os_log_impl(&dword_2493AC000, v3, v4, "%s [PROTECTED APPS] item: %s identifier: %s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v16 = [objc_opt_self() sharedManager];
  v17 = [v16 nodeRequiresAuthentication:a1 Sync:?];

  return v17 ^ 1;
}

{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BE1FA0, &v20);
    *(v6 + 12) = 2080;
    v8 = [v3 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v20);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    v13 = [v3 identifier];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v20);

    *(v6 + 24) = v16;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s [PROTECTED APPS] item: %s identifier: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  v17 = [objc_opt_self() sharedManager];
  v18 = [v17 nodeRequiresAuthentication:v3 Sync:?];

  return v18 ^ 1;
}

uint64_t specialized static DOCRecentLocationsCandidateSource.recentLocations()()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!static NSUserDefaults.docUserDefaults)
  {
    v1 = 0;
    v19 = 0u;
    v20 = 0u;
LABEL_12:
    outlined destroy of CharacterSet?(&v19, &_sypSgMd);
    goto LABEL_13;
  }

  v0 = *MEMORY[0x277D05E50];
  v1 = static NSUserDefaults.docUserDefaults;
  if ([v1 objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = MEMORY[0x277D84F90];
LABEL_14:

    return v4;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249BA08C0;
  *(v2 + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSArray);
  *(v2 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableArray);
  v3 = type metadata accessor for DOCGoToRecentLocation();
  *(v2 + 48) = v3;
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!*(&v20 + 1))
  {
    outlined destroy of CharacterSet?(&v19, &_sypSgMd);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables21DOCGoToRecentLocationCGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    outlined consume of Data._Representation(v17, *(&v17 + 1));
    goto LABEL_13;
  }

  v6 = v17 >> 62;
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v8 = v17;
    }

    else
    {
      v8 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v9 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v9 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v9;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = 4;
    }

    result = __CocoaSet.count.getter();
    if (result >= v7)
    {
LABEL_22:
      if ((v17 & 0xC000000000000001) != 0)
      {

        if (v7)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(0);
          if (v7 != 1)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(1);
            if (v7 != 2)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(2);
              if (v7 != 3)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(3);
              }
            }
          }
        }
      }

      else
      {
      }

      if (v6)
      {
        v8 = _CocoaArrayWrapper.subscript.getter();
        v6 = v10;
        v3 = v11;
        v9 = v12;
      }

      else
      {
        v3 = 0;
        v8 = v17 & 0xFFFFFFFFFFFFFF8;
        v6 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
        v9 = (2 * v7) | 1;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_34;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x277D84F90];
      }

      v15 = *(v14 + 16);

      if (!__OFSUB__(v9 >> 1, v3))
      {
        if (v15 == (v9 >> 1) - v3)
        {
          v4 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v4)
          {
            swift_unknownObjectRelease();
            v4 = MEMORY[0x277D84F90];
          }

          goto LABEL_41;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      swift_unknownObjectRelease_n();
LABEL_34:
      specialized _copyCollectionToContiguousArray<A>(_:)(v8, v6, v3, v9);
      v4 = v13;
LABEL_41:
      outlined consume of Data._Representation(v17, *(&v17 + 1));
      swift_unknownObjectRelease();
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v7)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

id partial apply for closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t specialized DOCAppProtectionManager.recentLocationShouldShow(_:)(void *a1)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BE1FC0, &v13);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s [PROTECTED APPS] location: %@", v6, 0x16u);
    outlined destroy of CharacterSet?(v7, &_sSo8NSObjectCSgMd);
    MEMORY[0x24C1FE850](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  v10 = [objc_opt_self() sharedManager];
  v11 = [v10 nodeRequiresAuthentication:objc_msgSend(*&v3[OBJC_IVAR___DOCGoToRecentLocation_location] Sync:sel_node)];

  swift_unknownObjectRelease();
  return v11 ^ 1;
}

uint64_t partial apply for closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)(v2, v3, v4, v5, v6, v7, v8);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCLocationGoToCandidate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCLocationGoToCandidate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for DOCItemCollectionCandidateSource()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  return closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #2 in closure #1 in DOCRecentLocationsCandidateSource.generateCandidates(for:requestID:updateHandler:)(v3, v4, v5, v6, v7, v0 + v2, v8);
}

uint64_t partial apply for closure #1 in DOCItemCollectionCandidateSource.deliverCandidates()()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return closure #1 in DOCItemCollectionCandidateSource.deliverCandidates()(v2, v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #3 in closure #1 in DOCFavoritesCandidateSource.generateCandidates(for:requestID:updateHandler:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = specialized _arrayForceCast<A, B>(_:)(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v3(v0 + v2, v4);
}

id static DOCServiceContext._extensionAuxiliaryHostProtocol()()
{
  v0 = [objc_opt_self() hostProtocol];

  return v0;
}

id static DOCServiceContext._extensionAuxiliaryVendorProtocol()()
{
  v0 = [objc_opt_self() vendorProtocol];

  return v0;
}

id @objc static DOCServiceContext._extensionAuxiliaryHostProtocol()(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

id DOCServiceContext.serviceViewController.getter()
{
  result = [v0 _principalObject];
  if (result)
  {
    type metadata accessor for DOCServiceViewController();

    return swift_dynamicCastClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCServiceContext.configureAsDocumentBrowser(hostProxy:configuration:initialUIPBrowserState:completionBlock:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a1;
  v11[6] = a4;
  v11[7] = a5;
  v12 = a3;
  v13 = a2;
  v14 = v5;
  swift_unknownObjectRetain();

  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCServiceContext.configureAsDocumentBrowser(hostProxy:configuration:initialUIPBrowserState:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v8 = a1;
    if ([v8 documentLandingMode] != -1)
    {
      [a2 setIsInUIPDocumentLanding_];
    }
  }

  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *a3) + 0x50);
  v11 = v10();
  v12 = *((*v9 & *v11) + 0xC0);
  v13 = a2;
  v12(a2);

  v35 = v10;
  v14 = v10();
  v15 = *((*v9 & *v14) + 0xA8);
  v16 = a3;
  v15(a3);

  v17 = objc_allocWithZone(type metadata accessor for DOCServiceDocumentBrowserViewController());
  v18 = v13;
  v19 = v16;
  v20 = swift_unknownObjectRetain();
  v21 = DOCServiceDocumentBrowserViewController.init(hostProxy:serviceContext:configuration:)(v20, v19, v18);
  if (!a1)
  {
    goto LABEL_8;
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  v23[2] = v18;
  v23[3] = v19;
  v23[4] = v21;
  v23[5] = a1;
  v24 = swift_allocObject();
  v25 = partial apply for closure #1 in closure #1 in DOCServiceContext.configureAsDocumentBrowser(hostProxy:configuration:initialUIPBrowserState:completionBlock:);
  *(v24 + 16) = partial apply for closure #1 in closure #1 in DOCServiceContext.configureAsDocumentBrowser(hostProxy:configuration:initialUIPBrowserState:completionBlock:);
  *(v24 + 24) = v23;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_70_1;
  v26 = _Block_copy(aBlock);
  v27 = a1;
  v28 = v18;
  v29 = v19;
  v30 = v21;

  [v22 performWithoutAnimation_];

  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_8:
    v25 = 0;
  }

  v31 = (v35)([v21 startSearchingSourcesWithConfiguration_]);
  (*((*MEMORY[0x277D85000] & *v31) + 0x140))(v21);

  v32 = v35();
  UIViewController.forcefullyRegisterForIconStyleChanges(with:)();

  v33 = v21;
  a5();

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v25);
}

id closure #1 in closure #1 in DOCServiceContext.configureAsDocumentBrowser(hostProxy:configuration:initialUIPBrowserState:completionBlock:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  if ([a1 isInUIPDocumentLanding])
  {
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *a2) + 0x50))();
    (*((*v7 & *v8) + 0x160))();
  }

  return [a3 applyBrowserStateChange:a4 force:1];
}

void DOCServiceContext.updateAppearance(to:shouldFlushCA:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x50))();
  (*((*v9 & *v10) + 0x130))(a1, a2, a3, a4);
}

Swift::Void __swiftcall DOCServiceContext.updateEditing(toEditing:animated:)(Swift::Bool toEditing, Swift::Bool animated)
{
  v3 = animated;
  v4 = toEditing;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x50))();
  (*((*v5 & *v6) + 0x138))(v4, v3);
}

id DOCServiceContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCServiceContext.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCServiceContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCServiceContext.__allocating_init(inputItems:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithInputItems_];

  return v3;
}

id DOCServiceContext.init(inputItems:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCServiceContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInputItems_, v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id DOCServiceContext.__allocating_init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithInputItems:v5.super.isa contextUUID:isa];

  return v9;
}

id DOCServiceContext.init(inputItems:contextUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18 - v8;
  if (a1)
  {
    v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  outlined init with copy of UUID?(a2, v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for DOCServiceContext();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInputItems_contextUUID_, v10.super.isa, isa);

  v16 = v15;
  outlined destroy of UUID?(a2);
  if (v16)
  {
  }

  return v16;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DOCServiceContext.__allocating_init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithInputItems:v7.super.isa listenerEndpoint:a2 contextUUID:isa];

  return v11;
}

id DOCServiceContext.init(inputItems:listenerEndpoint:contextUUID:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - v10;
  if (a1)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  outlined init with copy of UUID?(a3, v11);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  v16 = type metadata accessor for DOCServiceContext();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithInputItems_listenerEndpoint_contextUUID_, v12.super.isa, a2, isa);

  v18 = v17;
  outlined destroy of UUID?(a3);
  if (v18)
  {
  }

  return v18;
}

id DOCServiceView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCServiceView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCServiceView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCServiceView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCServiceView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCServiceView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void DOCServiceViewController.currentViewController.setter(void *a1)
{
  DOCServiceViewController.currentViewController.setter(a1);
}

{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*DOCServiceViewController.currentViewController.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_currentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCServiceViewController.currentViewController.modify;
}

uint64_t (*DOCServiceViewController.currentServiceContext.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_currentServiceContext;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCServiceViewController.currentServiceContext.modify;
}

void *DOCServiceViewController._configuration.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController__configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCServiceViewController._configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController__configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCServiceViewController.configuration.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCServiceViewController.isBrowserViewController.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCServiceViewController.isBrowserViewController.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOCServiceViewController.shouldOverrideWindowAppearance.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCServiceViewController.shouldOverrideWindowAppearance.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCServiceViewController.lastAppearance.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_lastAppearance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCServiceViewController.lastAppearance.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_lastAppearance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF0))())
  {
    v6 = [v1 viewIfLoaded];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 window];

      if (v8)
      {
        [v8 setAppearance_];
      }
    }
  }

  [v1 setAppearance_];
}

void (*DOCServiceViewController.lastAppearance.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_lastAppearance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCServiceViewController.lastAppearance.modify;
}

void DOCServiceViewController.lastAppearance.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if ((*((*MEMORY[0x277D85000] & **(v3 + 24)) + 0xF0))(v4))
    {
      v5 = [*(v3 + 24) viewIfLoaded];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 window];

        if (v7)
        {
          [v7 setAppearance_];
        }
      }
    }

    [*(v3 + 24) setAppearance_];
  }

  free(v3);
}

id DOCServiceViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

void *DOCServiceViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController__configuration] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_lastAppearance] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_configuredForUIPDocumentLanding] = 0;
  if (a2)
  {
    v7 = MEMORY[0x24C1FAD20](a1, a2);
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for DOCServiceViewController();
  v8 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v7, a3);

  v9 = v8;
  setiopolicy_np(3, 0, 1);
  v10 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
  (*((*MEMORY[0x277D85000] & *v9) + 0x110))(v10);
  [v9 setModalInPresentation_];

  return v9;
}

id DOCServiceViewController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController__configuration] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_isBrowserViewController] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_shouldOverrideWindowAppearance] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_lastAppearance] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_configuredForUIPDocumentLanding] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DOCServiceViewController();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    setiopolicy_np(3, 0, 1);
    v6 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
    (*((*MEMORY[0x277D85000] & *v5) + 0x110))(v6);
    [v5 setModalInPresentation_];
  }

  return v4;
}

Swift::Void __swiftcall DOCServiceViewController.loadView()()
{
  type metadata accessor for DOCServiceView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setView_];
}

Swift::Void __swiftcall DOCServiceViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DOCServiceViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setHitTestsAsOpaque_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCServiceViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  if (to)
  {
    v5 = MEMORY[0x277D85000];
    v6 = *((*MEMORY[0x277D85000] & *v2) + 0xF0);
    v7 = to;
    if (v6())
    {
      v8 = (*((*v5 & *v2) + 0x108))();
      [(UIWindow_optional *)v7 setAppearance:v8];

      v7 = v8;
    }
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCServiceViewController();
  [(UIWindow_optional *)&v9 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
}

id DOCServiceViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCServiceViewController();
  objc_msgSendSuper2(&v4, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  [a1 preferredContentSize];
  return [v1 setPreferredContentSize_];
}

uint64_t DOCServiceViewController.updateAppearance(to:shouldFlushCA:completionBlock:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a2;
  v10 = v4;
  v11 = a1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a3);
  DOCRunInMainThread(_:)();
}

void closure #1 in DOCServiceViewController.updateAppearance(to:shouldFlushCA:completionBlock:)(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, char a5)
{
  v41 = a4;
  v42 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v38 = *(v12 - 8);
  v39 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 enclosedInUIPDocumentLanding];
  if (v17)
  {
    v17 = [a2 setForceClearBackground_];
  }

  v18 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *a1) + 0x108))(v17);
  if (v19 && (v20 = v19, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance), v21 = v16, v22 = v11, v23 = v8, v24 = a5, v25 = a2, v26 = static NSObject.== infix(_:_:)(), v20, v25, a5 = v24, v8 = v23, v11 = v22, v16 = v21, (v26 & 1) != 0))
  {
    v27 = v42;
    if (v42)
    {

      v27(v28);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v27);
    }
  }

  else
  {
    v29 = *((*v18 & *a1) + 0x110);
    v30 = a2;
    v29(a2);
    v31 = v42;
    if (v42)
    {
      if (a5)
      {
        v32 = objc_opt_self();
        v33 = v41;

        [v32 flush];
      }

      else
      {
        v33 = v41;
      }

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = v31;
      *(v35 + 24) = v33;
      aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_66;
      v36 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v16, v11, v36);
      _Block_release(v36);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v31);
      (*(v40 + 8))(v11, v8);
      (*(v38 + 8))(v16, v39);
    }
  }
}

Swift::Void __swiftcall DOCServiceViewController.updateEditing(toEditing:animated:)(Swift::Bool toEditing, Swift::Bool animated)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = toEditing;
  *(v5 + 25) = animated;
  v6 = v2;
  DOCRunInMainThread(_:)();
}

uint64_t DOCServiceViewController.preferredFocusEnvironments.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_249BA0290;
    *(result + 32) = v2;
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DOCServiceViewController();
    v4 = objc_msgSendSuper2(&v6, sel_preferredFocusEnvironments);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18UIFocusEnvironment_pMd);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  return result;
}

Swift::Void __swiftcall DOCServiceViewController.embedViewController(_:)(UIViewController *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x90);
  v4 = a1;
  v3(a1);
  [(UIViewController *)v4 preferredContentSize];
  [v1 setPreferredContentSize_];
  [v1 addChildViewController_];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [(UIViewController *)v4 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v6 addSubview_];

  [(UIViewController *)v4 didMoveToParentViewController:v1];
  v9 = [(UIViewController *)v4 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  [(UIView *)v9 setAutoresizingMask:18];

  v21 = [(UIViewController *)v4 view];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = [v1 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(UIView *)v21 setFrame:v14, v16, v18, v20];
}

uint64_t DOCServiceViewController.configuredForUIPDocumentLanding.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_configuredForUIPDocumentLanding;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCServiceViewController.configuredForUIPDocumentLanding.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCServiceViewController_configuredForUIPDocumentLanding;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall DOCServiceViewController.configureUIPDocumentLandingStyleIfNecessary()()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x148))() & 1) == 0)
  {
    v2 = (*((*v1 & *v0) + 0x150))(1);
    v3 = (*((*v1 & *v0) + 0xB8))(v2);
    if (v3)
    {
      v4 = v3;
      [v3 setIsInUIPDocumentLanding_];

      [v0 setModalInPresentation_];
    }

    else
    {
      __break(1u);
    }
  }
}

id DOCServiceContext.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void partial apply for closure #1 in DOCServiceViewController.updateEditing(toEditing:animated:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 25);
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x88))();
  [v3 setEditing:v1 animated:v2];
}

uint64_t objectdestroy_3Tm_0()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroyTm_7()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id closure #1 in DOCNotifyingStackView.layoutSubviews()(char *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DOCNotifyingStackView();
  result = objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v3 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView_stackViewDidLayoutSubviews];
  if (v3)
  {

    v3(v4);
    return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  }

  return result;
}

void DOCImageViewContainerView.focusImageBackgroundFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 superview];
  v4 = 0uLL;
  if (!v3)
  {
    v22 = 1;
    v25 = 0uLL;
    goto LABEL_10;
  }

  v5 = v3;
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))(0);
  if (!v6)
  {

    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView), v10 = v1, v11 = static NSObject.== infix(_:_:)(), v10, v9, (v11 & 1) == 0))
  {

LABEL_9:
    v22 = 1;
    v25 = 0uLL;
    v4 = 0uLL;
    goto LABEL_10;
  }

  [v10 bounds];
  [v5 convertRect:v10 fromCoordinateSpace:?];
  v13 = v12;
  [v7 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v5 convertRect:v7 fromCoordinateSpace:{v15, v17, v19, v21}];
  *&v4 = UIEdgeInsetsInsetRect_1(v13);
  v22 = 0;
  *(&v4 + 1) = v23;
  *(&v25 + 1) = v24;
LABEL_10:
  *a1 = v4;
  *(a1 + 16) = v25;
  *(a1 + 32) = v22;
}

void *DOCItemCollectionGridCell.titleLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
  v2 = v1;
  return v1;
}

uint64_t DOCItemCollectionGridCell.isSelectionHighlightingTemporarilyHidden.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isSelectionHighlightingTemporarilyHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionGridCell.isSelectionHighlightingTemporarilyHidden.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isSelectionHighlightingTemporarilyHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = DOCItemCollectionGridCell.selectionView.getter();
  [v4 setHidden_];

  v5 = DOCItemCollectionGridCell.selectionShadowView.getter();
  [v5 setHidden_];
}

void (*DOCItemCollectionGridCell.isSelectionHighlightingTemporarilyHidden.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isSelectionHighlightingTemporarilyHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionGridCell.isSelectionHighlightingTemporarilyHidden.modify;
}

void DOCItemCollectionGridCell.isSelectionHighlightingTemporarilyHidden.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = DOCItemCollectionGridCell.selectionView.getter();
    [v6 setHidden_];

    v7 = DOCItemCollectionGridCell.selectionShadowView.getter();
    [v7 setHidden_];
  }

  free(v3);
}

double DOCItemCollectionGridCell.dropFrameInCell.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x100))();

  *&result = CGRectInset(*&v1, -10.0, -10.0);
  return result;
}

id DOCItemCollectionGridCell.selectionView.getter(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v7 setAccessibilityIgnoresInvertColors_];
    [v7 setAlpha_];
    [v7 setClipsToBounds_];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void DOCItemCollectionGridCell.isSelected.setter(char a1)
{
  v3 = type metadata accessor for DOCItemCollectionGridCell();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_isSelected);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setSelected_, a1 & 1);
  if (v4 != [v1 isSelected])
  {
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
    if (v5)
    {

      DOCItemCollectionGridCell.updateSelectionView()();
    }
  }
}

void *DOCItemCollectionGridCell.selectionImageDimension.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  *&result = COERCE_DOUBLE((*((*MEMORY[0x277D85000] & *v0) + 0x208))());
  if (*&result != 0.0)
  {
    v4 = result;
    if ((*((*v2 & *result) + 0xB70))())
    {
      v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics + 16];
      v6 = [objc_opt_self() defaultMetrics];
      v7 = [v1 traitCollection];
      [v6 scaledValueForValue:v7 compatibleWithTraitCollection:v5];
      v9 = v8;

      (*((*v2 & *v4) + 0x2D8))(v15);
      v23 = v15[8];
      v24 = v15[9];
      v25[0] = v16[0];
      *(v25 + 9) = *(v16 + 9);
      v19 = v15[4];
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[7];
      v17[0] = v15[0];
      v17[1] = v15[1];
      v17[2] = v15[2];
      v18 = v15[3];
      *&result = COERCE_DOUBLE(_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v17));
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        outlined destroy of CharacterSet?(v15, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        v10 = *(&v18 + 1) / 3.0;
        if (v9 < *(&v18 + 1) / 3.0)
        {
          v10 = v9;
        }

        if (v5 > v10)
        {
          v11 = v5;
        }

        else
        {
          v11 = v10;
        }

        v12 = [v1 traitCollection];
        [v12 displayScale];
        v14 = v13;

        *&result = floor(v11 * v14) / v14;
      }
    }

    else
    {

      *&result = 0.0;
    }
  }

  return result;
}

void DOCItemCollectionGridCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for UIBackgroundConfiguration();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v57 = &v54 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v58 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit24UICellConfigurationStateVSgMd);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v54 - v23;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v26 = type metadata accessor for DOCItemCollectionGridCell();
  v66.receiver = v2;
  v66.super_class = v26;
  objc_msgSendSuper2(&v66, sel__bridgedUpdateConfigurationUsingState_, isa);

  v27 = type metadata accessor for UICellConfigurationState();
  v28 = *(v27 - 8);
  v55 = *(v28 + 16);
  v55(v24, a1, v27);
  (*(v28 + 56))(v24, 0, 1, v27);
  DOCItemCollectionGridCell.updateCellTextColors(using:)(v24);
  v29 = v24;
  v30 = v2;
  outlined destroy of CharacterSet?(v29, &_s5UIKit24UICellConfigurationStateVSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_backgroundConfigurationProvider, v63, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
  if (v64)
  {
    outlined init with copy of DOCSidebarItemIconProvider(v63, v60);
    outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
    v31 = v61;
    v32 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    (*(v32 + 8))(v30, a1, v31, v32);
    v33 = *(v12 + 56);
    v33(v10, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_0(v60);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v34 = v58;
      (*(v12 + 32))(v58, v10, v11);
      v35 = v59;
      (*(v12 + 16))(v59, v34, v11);
      v33(v35, 0, 1, v11);
      MEMORY[0x24C1FBB40](v35);
      (*(v12 + 8))(v34, v11);
      return;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v63, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  outlined destroy of CharacterSet?(v10, &_s5UIKit25UIBackgroundConfigurationVSgMd);
  v36 = *(v30 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView);
  if (v36)
  {
    v37 = a1;
    v38 = *((*MEMORY[0x277D85000] & *v30) + 0x2F8);
    v39 = v30;
    v40 = v36;
    if (v38())
    {
      [v40 setHidden_];

      return;
    }

    v41 = v56;
    static UIBackgroundConfiguration.listCell()();
    v64 = v27;
    v65 = MEMORY[0x277D74BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
    v55(boxed_opaque_existential_1, v37, v27);
    v43 = v57;
    UIBackgroundConfiguration.updated(for:)();
    v44 = *(v12 + 8);
    v45 = v11;
    v44(v41, v11);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v46 = [v39 tintColor];
    if (!v46)
    {
      __break(1u);
      return;
    }

    v47 = v46;
    v48.super.isa = UIBackgroundConfiguration.resolvedBackgroundColor(for:)(v46).super.isa;

    v44(v43, v45);
    v49 = OBJC_IVAR____TtCC26DocumentManagerExecutables21DOCItemCollectionCell14BezierPathView_color;
    swift_beginAccess();
    v50 = *&v40[v49];
    *&v40[v49] = v48;
    if (v50)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
      v51 = v48.super.isa;
      v50 = v50;
      v52 = static NSObject.== infix(_:_:)();

      if (v52)
      {

LABEL_14:
        return;
      }
    }

    else
    {
      v53 = v48.super.isa;
    }

    [v40 setNeedsDisplay];

    goto LABEL_14;
  }
}

uint64_t DOCItemCollectionGridCell.shadowOnlyImage(from:)(void *a1)
{
  if ([v1 isSelected])
  {
    v3 = 0.25;
  }

  else
  {
    v3 = 0.5;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v3];
  v5 = [v4 CGColor];

  [a1 size];
  v7 = v6;
  v9 = v8;
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = v7;
  v47.size.height = v9;
  v48 = CGRectOffset(v47, 0.0, -0.5);
  v49 = CGRectInset(v48, -1.0, -1.0);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = 0.0;
  v61.size.height = 0.0;
  if (CGRectEqualToRect(v49, v61))
  {
    x = 0.0;
    y = 0.0;
    v44 = v9;
    v45 = v7;
  }

  else
  {
    v50.origin.x = 0.0;
    v50.origin.y = 0.0;
    v62.origin.x = 0.0;
    v62.origin.y = 0.0;
    v62.size.width = 0.0;
    v62.size.height = 0.0;
    v50.size.width = v7;
    v50.size.height = v9;
    if (CGRectEqualToRect(v50, v62))
    {
      v44 = height;
      v45 = width;
    }

    else
    {
      v63.origin.x = 0.0;
      v63.origin.y = 0.0;
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      v63.size.width = v7;
      v63.size.height = v9;
      v52 = CGRectUnion(v51, v63);
      x = v52.origin.x;
      y = v52.origin.y;
      v44 = v52.size.height;
      v45 = v52.size.width;
    }
  }

  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = v7;
  v53.size.height = v9;
  v14 = CGRectGetWidth(v53);
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v7;
  v54.size.height = v9;
  v15 = CGRectGetHeight(v54);
  v16 = [a1 imageRendererFormat];
  v17 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v16 format:{v45, v44}];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BAC350;
  *(v18 + 32) = 0x3FF0000000000000;
  *(v18 + 40) = v5;
  *(v18 + 48) = a1;
  *(v18 + 56) = -x;
  *(v18 + 64) = -y;
  *(v18 + 72) = v14;
  *(v18 + 80) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for closure #1 in DOCItemCollectionGridCell.shadowOnlyImage(from:);
  *(v19 + 24) = v18;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[3] = &block_descriptor_138;
  v20 = _Block_copy(aBlock);
  v21 = v5;
  v22 = a1;

  v23 = [v17 imageWithActions_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    v25 = v23;
    [v22 alignmentRectInsets];
    v27 = v26;
    v29 = v28;
    v40 = v30;
    v43 = v31;
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = v45;
    v55.size.height = v44;
    v42 = v27 - CGRectGetMinY(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v45;
    v56.size.height = v44;
    v41 = v29 - CGRectGetMinX(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v45;
    v57.size.height = v44;
    v32 = y;
    v33 = x;
    MaxY = CGRectGetMaxY(v57);
    v58.origin.x = 0.0;
    v58.origin.y = 0.0;
    v58.size.width = v7;
    v58.size.height = v9;
    v35 = v40 + MaxY - CGRectGetMaxY(v58);
    v59.origin.x = v33;
    v59.origin.y = v32;
    v59.size.width = v45;
    v59.size.height = v44;
    MaxX = CGRectGetMaxX(v59);
    v60.origin.x = 0.0;
    v60.origin.y = 0.0;
    v60.size.width = v7;
    v60.size.height = v9;
    v37 = [v25 imageWithAlignmentRectInsets_];

    if (([v22 _hasBaseline] & 1) == 0)
    {

      goto LABEL_14;
    }

    result = UIImage.baselineOffsetFromBottom.getter();
    if ((v38 & 1) == 0)
    {
      v39 = [v37 imageWithBaselineOffsetFromBottom_];

      v37 = v39;
LABEL_14:

      return v37;
    }
  }

  __break(1u);
  return result;
}

void closure #1 in DOCItemCollectionGridCell.shadowOnlyImage(from:)(void *a1, CGColor *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  c = [a1 CGContext];
  CGContextSaveGState(c);
  CGContextSaveGState(c);
  v21.width = a4;
  v21.height = a5;
  CGContextSetShadowWithColor(c, v21, a6, a2);
  [a3 drawInRect:0 blendMode:a7 alpha:{a8, a9, a10, 1.0}];
  CGContextRestoreGState(c);
  [a3 drawInRect:23 blendMode:a7 alpha:{a8, a9, a10, 1.0}];
  CGContextRestoreGState(c);
}

void *DOCItemCollectionGridCell.effectiveSelectionImages.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x208);
  result = v3();
  if (result)
  {
    v5 = result;
    v6 = (*((*v2 & *result) + 0xB70))();

    if ((v6 & 1) == 0)
    {
      return 0;
    }

    result = v3();
    if (!result)
    {
      return result;
    }

    v7 = result;
    v8 = (*((*v2 & *result) + 0x368))();

    if (v8)
    {
      result = DOCItemCollectionGridCell.selectionImageDimension.getter();
      if (v9)
      {
        __break(1u);
      }

      else
      {
        v10 = result;
        v11 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:*&result];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_249B9FA70;
        v13 = MEMORY[0x277D837D0];
        v14 = MEMORY[0x277D85048];
        *(v12 + 32) = 0xD00000000000002CLL;
        *(v12 + 40) = 0x8000000249BE2930;
        *(v12 + 88) = v14;
        *(v12 + 56) = v13;
        *(v12 + 64) = v10;
        v15 = objc_opt_self();
        isa = Array._bridgeToObjectiveC()().super.isa;
        v17 = swift_allocObject();
        *(v17 + 16) = v11;
        v38 = partial apply for closure #1 in DOCItemCollectionGridCell.effectiveSelectionImages.getter;
        v39 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v35 = 1107296256;
        v36 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
        v37 = &block_descriptor_116_0;
        v18 = _Block_copy(&aBlock);
        v19 = v11;

        v33 = v15;
        v20 = [v15 _cachedImageForKey_fromBlock_];
        _Block_release(v18);

        if ([v1 isSelected])
        {
          v32 = v20;

          v21 = [v1 tintColor];
          if (!v21)
          {
            v21 = [objc_opt_self() linkColor];
          }

          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_249BA08D0;
          *(v22 + 32) = 0xD000000000000029;
          *(v22 + 40) = 0x8000000249BE2960;
          *(v22 + 88) = MEMORY[0x277D85048];
          *(v22 + 56) = MEMORY[0x277D837D0];
          *(v22 + 64) = v10;
          v23 = [v8 userInterfaceStyle] == 2;
          *(v22 + 120) = MEMORY[0x277D839B0];
          *(v22 + 96) = v23;
          *(v22 + 152) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
          *(v22 + 128) = v21;
          v24 = v21;
          v25 = Array._bridgeToObjectiveC()().super.isa;
          v26 = swift_allocObject();
          v26[2] = v8;
          v26[3] = v24;
          v26[4] = v19;
          v38 = partial apply for closure #2 in DOCItemCollectionGridCell.effectiveSelectionImages.getter;
          v39 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v35 = 1107296256;
          v36 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
          v37 = &block_descriptor_122;
          v27 = _Block_copy(&aBlock);
          v28 = v19;
          v29 = v24;
          v30 = v8;

          v31 = [v33 _cachedImageForKey_fromBlock_];
          _Block_release(v27);

          circleShadowImage #1 (with:) in DOCItemCollectionGridCell.effectiveSelectionImages.getter(v22, v32);

          return v31;
        }

        else
        {
          circleShadowImage #1 (with:) in DOCItemCollectionGridCell.effectiveSelectionImages.getter(v12, v20);

          return v20;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void closure #1 in DOCItemCollectionGridCell.effectiveSelectionImages.getter(uint64_t a1)
{
  v2 = MEMORY[0x24C1FAD20](0x656C63726963, 0xE600000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithConfiguration_];

    v5 = [objc_opt_self() whiteColor];
    [v4 imageWithTintColor:v5 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t circleShadowImage #1 (with:) in DOCItemCollectionGridCell.effectiveSelectionImages.getter(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  if (!*(a1 + 16))
  {
    __break(1u);
LABEL_9:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  outlined init with copy of Any(a1 + 32, &v14);
  v2 = a2;

  v5 = MEMORY[0x277D837D0];
  swift_dynamicCast();
  v19 = v20;

  MEMORY[0x24C1FAEA0](0x776F646168732ELL, 0xE700000000000000);

  v16 = v5;
  v14 = v19;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v3 + 16))
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v3 + 32);
    outlined init with take of Any(&v14, (v3 + 32));
    v7 = objc_opt_self();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v2;
    v17 = partial apply for closure #1 in circleShadowImage #1 (with:) in DOCItemCollectionGridCell.effectiveSelectionImages.getter;
    v18 = v10;
    *&v14 = MEMORY[0x277D85DD0];
    *(&v14 + 1) = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
    v16 = &block_descriptor_129_1;
    v11 = _Block_copy(&v14);
    v12 = v2;

    v13 = [v7 _cachedImageForKey_fromBlock_];

    _Block_release(v11);

    return v13;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in circleShadowImage #1 (with:) in DOCItemCollectionGridCell.effectiveSelectionImages.getter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = DOCItemCollectionGridCell.shadowOnlyImage(from:)(a2);

  return v5;
}

void closure #2 in DOCItemCollectionGridCell.effectiveSelectionImages.getter(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = [objc_opt_self() linkColor];
  }

  else
  {
    v5 = a2;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249BA1010;
  *(v7 + 32) = [objc_opt_self() whiteColor];
  *(v7 + 40) = v6;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor);
  v8 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() configurationWithPaletteColors_];

  v11 = [a3 configurationByApplyingConfiguration_];
  v12 = objc_opt_self();
  v13 = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BE2990);
  v14 = [v12 _systemImageNamed_withConfiguration_];

  if (v14)
  {

    [v14 imageWithConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

void *DOCItemCollectionGridCell.init(frame:containerView:)(void *a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackView;
  type metadata accessor for DOCNotifyingStackView();
  *(v5 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel;
  type metadata accessor for DOCFastLabel();
  *(v5 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondaryLabelColor];
  [v16 setTextColor_];

  [v16 setAdjustsFontForContentSizeCategory_];
  *(v5 + v13) = v16;
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D063B0]) init];
  v20 = [v15 secondaryLabelColor];
  [v19 setTextColor_];

  [v19 setAdjustsFontForContentSizeCategory_];
  *(v5 + v18) = v19;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView;
  type metadata accessor for DOCImageViewContainerView();
  *(v5 + v21) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isSelectionHighlightingTemporarilyHidden) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionShadowView) = 0;
  v22 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_backgroundConfigurationProvider;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_circularProgressView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_horizontalProgressView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_iconWidthConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTopConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackBottomConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackLeadingConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTrailingConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressBottomConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressLeadingConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressTrailingConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalProgressHeightConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterXConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridHorizontalStopButtonCenterYConstraint) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolderConstant) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isGridCircularProgressVerticalConstraintFolderActivated) = 1;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isGridCircularProgressVerticalConstraintFileActivated) = 1;
  v23 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics;
  *v23 = 0xBFF0000000000000;
  *(v23 + 8) = 257;
  *(v23 + 16) = xmmword_249BAC360;
  *(v23 + 32) = xmmword_249BAC370;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageBackgroundCornerRadius) = 0x401C000000000000;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewAdditionalPadding) = 0x4041800000000000;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_renameTextViewConstraints) = MEMORY[0x277D84F90];
  v24 = a1;
  v25 = DOCItemCollectionCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249B9A480;
  v27 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  *(v26 + 32) = &type metadata for DOCBrowserLayoutConfiguration.Trait;
  *(v26 + 40) = v27;
  v28 = v25;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v29 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v30 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BezierPathView()) init];
  [v30 setAutoresizingMask_];
  [v30 setHidden_];
  [v29 addSubview_];
  v31 = *(v28 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView);
  *(v28 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView) = v30;
  v32 = v30;

  v33 = [objc_allocWithZone(type metadata accessor for DOCItemCollectionCell.BackgroundStateView()) init];
  [v33 setAutoresizingMask_];
  [v33 setHidden_];
  [v29 addSubview_];
  v34 = *(v28 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView);
  *(v28 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView) = v33;
  v35 = v33;

  v36 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v28 setSelectedBackgroundView_];

  [v28 setBackgroundView_];
  return v28;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.prepareForReuse()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DOCItemCollectionGridCell();
  v1 = objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v2 = MEMORY[0x24C1FDA70](v1);
  closure #1 in DOCItemCollectionGridCell.prepareForReuse()(v0);
  objc_autoreleasePoolPop(v2);
}

uint64_t closure #1 in DOCItemCollectionGridCell.prepareForReuse()(void *a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView;
  v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView);
  if (v3)
  {
    [v3 setHidden_];
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView;
  v5 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView);
  if (v5)
  {
    [v5 setHidden_];
  }

  v6 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
  [v6 setThumbnail_];
  [v6 setImage_];
  v7 = *(a1 + v2);
  if (v7)
  {
    [v7 setHidden_];
  }

  v8 = *(a1 + v4);
  if (v8)
  {
    [v8 setHidden_];
  }

  return (*((*MEMORY[0x277D85000] & *a1) + 0x570))(0);
}

uint64_t DOCItemCollectionGridCell.layoutSubviews()(SEL *a1, uint64_t (*a2)(id))
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCItemCollectionGridCell();
  v5 = objc_msgSendSuper2(&v7, *a1);
  return a2(v5);
}

void @objc DOCItemCollectionGridCell.layoutSubviews()(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for DOCItemCollectionGridCell();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

id DOCItemCollectionGridCell.focusTextBezierPath.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v66 - v3;
  v5 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
  v12 = v10;
  v13 = [v11 attributedText];
  if (!v13)
  {
    goto LABEL_7;
  }

  result = [v11 attributedText];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result length];

  if (v16 < 1)
  {
LABEL_7:
    if (one-time initialization token for UI != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_8;
  }

  [v11 setNeedsLayout];
  v17 = [v11 layoutIfNeeded];
  (*((*MEMORY[0x277D85000] & *v11) + 0x68))(v17);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
    return 0;
  }

  outlined init with take of DOCFastLabel.LabelInformation(v4, v9);
  [(CGRect *)v12 bounds];
  v24 = v23;
  v25 = &v9[*(v5 + 20)];
  v26 = *(v25 + 10);
  v27 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  v28 = *(v26 + 16);
  v29 = MEMORY[0x277D84F90];
  if (!v28)
  {
    v58 = *(MEMORY[0x277D84F90] + 16);
    if (v58)
    {
      v67 = v9;
      v38 = MEMORY[0x277D84F90];
LABEL_41:
      v71 = v29;
      specialized ContiguousArray.reserveCapacity(_:)();
      v61 = objc_opt_self();
      v62 = (v38 + 56);
      do
      {
        v63 = [v61 valueWithRect_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v62 += 4;
        --v58;
      }

      while (v58);

      v9 = v67;
    }

    else
    {
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSValue);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v65 = _UIPreviewParametersGenerateTextPlatter();

    outlined destroy of DOCFastLabel.LabelInformation(v9);
    return v65;
  }

  v66 = v12;
  v67 = v9;
  v30 = *(v27 + 40);
  v31 = &v25[*(v27 + 44)];
  v32 = *(v31 + 4);
  v33 = *(v31 + 2);
  v34 = *v31;
  v35 = *&v25[v30 + 32];
  v36 = *&v25[v30 + 16];
  v37 = *&v25[v30];
  v71 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
  v38 = v71;
  v39 = *(v26 + 16);
  if (v35)
  {
    v40 = v37 + v36;
  }

  else
  {
    v40 = 0.0;
  }

  v12 = (v26 + 32 * v39);
  v41 = 1.0;
  if (v28 != 2)
  {
    v41 = 0.0;
  }

  v70 = v41;
  v42 = v34 + v33;
  if (!v32)
  {
    v42 = 0.0;
  }

  v68 = v40;
  v69 = v42;
  v43 = (v26 + 56);
  v44 = 2.0;
  v45 = v28;
  while (1)
  {
    v46 = *(v43 - 3);
    v47 = *(v43 - 2);
    v48 = *(v43 - 1);
    v49 = *v43;
    v72.origin.x = v46;
    v72.origin.y = v47;
    v72.size.width = v48;
    v72.size.height = *v43;
    Height = CGRectGetHeight(v72);
    if (!v39)
    {
      v53 = 0.0;
      v51 = 0.0;
      goto LABEL_35;
    }

    if (!*(v26 + 16))
    {
      break;
    }

    v73.origin.x = v46;
    v73.origin.y = v47;
    v73.size.width = v48;
    v73.size.height = v49;
    v51 = 0.0;
    if (CGRectEqualToRect(v73, *(v26 + 32)))
    {
      if (v28 == 1)
      {
        Height = Height + -2.0;
      }

      else
      {
        Height = Height + -1.0;
      }

      v51 = v68;
    }

    if (v39 > *(v26 + 16))
    {
      goto LABEL_47;
    }

    v74.origin.x = v46;
    v74.origin.y = v47;
    v74.size.width = v48;
    v74.size.height = v49;
    v52 = CGRectEqualToRect(v74, *v12);
    if (v52)
    {
      Height = Height - v70;
    }

    v53 = 0.0;
    if (v52)
    {
      v53 = v69;
    }

LABEL_35:
    v54 = v53 + v48 + v51;
    v75.origin.x = (v24 - v54) * 0.5;
    v75.origin.y = v44;
    v75.size.width = v54;
    v75.size.height = Height;
    v55 = CGRectGetHeight(v75);
    v71 = v38;
    v57 = *(v38 + 16);
    v56 = *(v38 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v60 = v55;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
      v55 = v60;
      v38 = v71;
    }

    v59 = (v38 + 32 * v57);
    v59[4] = (v24 - v54) * 0.5;
    v59[5] = v44;
    v44 = v44 + v55;
    *(v38 + 16) = v58;
    v59[6] = v54;
    v59[7] = Height;
    v43 += 4;
    if (!--v45)
    {
      v12 = v66;
      v29 = MEMORY[0x277D84F90];
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_8:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.UI);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v71 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x8000000249BE2910, &v71);
    _os_log_impl(&dword_2493AC000, v19, v20, "%s gridTitleLabel is empty.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  return 0;
}

double DOCItemCollectionGridCell.focusImageBackgroundFrame.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x208))();
  if (v4)
  {
    v5 = v4;
    if (((*((*v3 & *v4) + 0x4C0))() & 1) == 0)
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.UI);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2493AC000, v7, v8, "Laying out a focus view of a cell that has no focus.", v9, 2u);
        MEMORY[0x24C1FE850](v9, -1, -1);
      }
    }
  }

  DOCImageViewContainerView.focusImageBackgroundFrame.getter(v12);
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  return result;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.layoutBackgroundStateView()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_titleSelectionBubbleView];
  if (v1)
  {
    v2 = v1;
    DOCItemCollectionGridCell.layouttitleSelectionBubbleView(_:)(v2);
  }

  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView];
  if (v3)
  {
    v11 = v3;
    v4 = DOCItemCollectionGridCell.focusImageBackgroundFrame.getter(v12);
    if ((v13 & 1) == 0)
    {
      v5 = *v12;
      v6 = *&v12[1];
      v7 = *&v12[2];
      v8 = *&v12[3];
      v9 = [v11 superview];
      if (v9)
      {
        v10 = v9;
        [v0 convertRect:v9 toCoordinateSpace:{v5, v6, v7, v8}];
        [v11 setFrame_];
      }
    }
  }
}

void DOCItemCollectionGridCell.layouttitleSelectionBubbleView(_:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v1 contentView];
  [v3 convertRect:v12 toCoordinateSpace:{v5, v7, v9, v11}];
  v14 = v13;
  v16 = v15;
  width = v17;
  v20 = v19;

  [v3 doc_effectiveContentSize];
  if (width >= v21)
  {
    v27.origin.x = v14;
    v27.origin.y = v16;
    v27.size.height = v20;
  }

  else
  {
    [v3 doc_effectiveContentSize];
    v23 = -(v22 - width);
    v26.origin.x = v14;
    v26.origin.y = v16;
    v26.size.width = width;
    v26.size.height = v20;
    v27 = CGRectInset(v26, v23, 0.0);
    width = v27.size.width;
  }

  v24 = width;
  v28 = CGRectInset(v27, -5.0, 0.0);
  [a1 setFrame_];
  v25 = DOCItemCollectionGridCell.focusTextBezierPath.getter();
  DOCItemCollectionCell.BezierPathView.path.setter(v25);
}

void DOCItemCollectionGridCell.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized Collection.first.getter(a1);
  if (!v4 || (v5 = v4, [v4 locationInView_], v7 = v6, v5, (*((*MEMORY[0x277D85000] & *v2) + 0x2D0))(&v10), (v11 & 1) != 0) || CGRectGetMaxY(v10) >= v7)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch);
    lazy protocol witness table accessor for type UITouch and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for DOCItemCollectionGridCell();
    objc_msgSendSuper2(&v9, sel_touchesBegan_withEvent_, isa, a2);
  }
}

void *DOCItemCollectionGridCell.cellContent.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_cellContent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionGridCell.cellContent.setter(void *a1)
{
  specialized DOCItemCollectionGridCell.cellContent.setter(a1);
}

void (*DOCItemCollectionGridCell.cellContent.modify(uint64_t **a1))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A8uLL);
  }

  *a1 = v3;
  v3[51] = v1;
  v3[52] = DOCItemCollectionCell.cellContent.modify(v3);
  return DOCItemCollectionGridCell.cellContent.modify;
}

void DOCItemCollectionGridCell.cellContent.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 416))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for defaultGridItemTraits != -1)
    {
      swift_once();
    }

    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & **(v3 + 408)) + 0x208))();
    v6 = swift_beginAccess();
    if (v5)
    {
      (*((*v4 & *v5) + 0x2D8))(v6);
      v7 = *(v3 + 336);
      *(v3 + 128) = *(v3 + 320);
      *(v3 + 144) = v7;
      *(v3 + 160) = *(v3 + 352);
      *(v3 + 169) = *(v3 + 361);
      v8 = *(v3 + 272);
      *(v3 + 64) = *(v3 + 256);
      *(v3 + 80) = v8;
      v9 = *(v3 + 304);
      *(v3 + 96) = *(v3 + 288);
      *(v3 + 112) = v9;
      v10 = *(v3 + 208);
      *v3 = *(v3 + 192);
      *(v3 + 16) = v10;
      v11 = *(v3 + 240);
      *(v3 + 32) = *(v3 + 224);
      *(v3 + 48) = v11;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v3) != 1)
      {
        v12 = *(v3 + 64);
        defaultGridItemTraits = *(v3 + 48);
        qword_27EEEBB78 = v12;
        outlined destroy of CharacterSet?(v3 + 192, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        qword_27EEEBB80 = *(v3 + 40);
      }
    }

    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall DOCItemCollectionGridCell.configure(in:)(UIView *in)
{
  v2 = v1;
  DOCItemCollectionCell.configure(in:)(in);
  v4 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView];
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v8 = v5;
  v7(v5);
  v158 = v8;
  [v8 setDelegate_];
  v9 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel];
  [v9 setTextAlignment_];
  v10 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel];
  [v10 setTextAlignment_];
  v11 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel];
  v12 = (*((*v6 & *v1) + 0x1E0))([v11 setUserInteractionEnabled_]);
  [v1 addGestureRecognizer_];

  LODWORD(v13) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v13];
  v159 = v11;
  LODWORD(v14) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [v10 setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v17];
  LODWORD(v18) = 1148846080;
  v19 = [v9 setContentCompressionResistancePriority:1 forAxis:v18];
  v20 = *((*v6 & *v1) + 0x208);
  v21 = v20(v19);
  v155 = v9;
  if (v21)
  {
    v22 = v21;
    (*((*v6 & *v21) + 0x2D8))(&v171);

    v190 = v179;
    v191 = v180;
    v192[0] = v181[0];
    *(v192 + 9) = *(v181 + 9);
    v186 = v175;
    v187 = v176;
    v188 = v177;
    v189 = v178;
    v182 = v171;
    v183 = v172;
    v184 = v173;
    v185 = v174;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v182) == 1)
    {
      __break(1u);
      goto LABEL_27;
    }

    v23 = v10;
    v24 = outlined destroy of CharacterSet?(&v171, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    v25 = *&v185;
  }

  else
  {
    if (one-time initialization token for defaultGridItemTraits != -1)
    {
      swift_once();
    }

    v23 = v10;
    v24 = swift_beginAccess();
    v25 = *&defaultGridItemTraits;
  }

  v26 = v20(v24);
  if (v26)
  {
    v27 = v26;
    (*((*MEMORY[0x277D85000] & *v26) + 0x2D8))(&v160);

    v179 = v168;
    v180 = v169;
    v181[0] = v170[0];
    *(v181 + 9) = *(v170 + 9);
    v175 = v164;
    v176 = v165;
    v177 = v166;
    v178 = v167;
    v171 = v160;
    v172 = v161;
    v173 = v162;
    v174 = v163;
    v190 = v168;
    v191 = v169;
    v192[0] = v170[0];
    *(v192 + 9) = *(v170 + 9);
    v186 = v164;
    v187 = v165;
    v188 = v166;
    v189 = v167;
    v182 = v160;
    v183 = v161;
    v184 = v162;
    v185 = v163;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v182) != 1)
    {
      v28 = outlined destroy of CharacterSet?(&v171, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
      v29 = *&v186;
      goto LABEL_13;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (one-time initialization token for defaultGridItemTraits != -1)
  {
    swift_once();
  }

  v28 = swift_beginAccess();
  v29 = *&qword_27EEEBB78;
LABEL_13:
  v30 = v20(v28);
  if (!v30)
  {
    if (one-time initialization token for defaultGridItemTraits != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v32 = *&qword_27EEEBB80;
    goto LABEL_19;
  }

  v31 = v30;
  (*((*MEMORY[0x277D85000] & *v30) + 0x2D8))(&v160);

  v179 = v168;
  v180 = v169;
  v181[0] = v170[0];
  *(v181 + 9) = *(v170 + 9);
  v175 = v164;
  v176 = v165;
  v177 = v166;
  v178 = v167;
  v171 = v160;
  v172 = v161;
  v173 = v162;
  v174 = v163;
  v190 = v168;
  v191 = v169;
  v192[0] = v170[0];
  *(v192 + 9) = *(v170 + 9);
  v186 = v164;
  v187 = v165;
  v188 = v166;
  v189 = v167;
  v182 = v160;
  v183 = v161;
  v184 = v162;
  v185 = v163;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v182) == 1)
  {
LABEL_28:
    __break(1u);
    return;
  }

  outlined destroy of CharacterSet?(&v171, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v32 = *(&v184 + 1);
LABEL_19:
  [v4 setFrame_];
  v33 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackView];
  [v33 frame];
  Width = CGRectGetWidth(v193);
  [v33 frame];
  [v33 setFrame_];
  [(UIView *)in addSubview:v4];
  [(UIView *)in addSubview:v33];
  v35 = DOCItemCollectionGridCell.selectionShadowView.getter();
  [(UIView *)in addSubview:v35];

  v36 = DOCItemCollectionGridCell.selectionView.getter();
  [(UIView *)in addSubview:v36];

  [v4 addSubview_];
  v37 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_metrics];
  [v158 setDecorationCornerRadius_];
  [v33 setAxis_];
  [v33 setAlignment_];
  [v33 addArrangedSubview_];
  [v33 addArrangedSubview_];
  v146 = v23;
  [v33 addArrangedSubview_];
  v156 = v37;
  [v33 setCustomSpacing:v11 afterView:v37[4]];
  [v33 setCustomSpacing:v155 afterView:v37[5]];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = &v33[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView_stackViewDidLayoutSubviews];
  v40 = *&v33[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D3F4F15D4D1E39DDD74E719D0B18933C21DOCNotifyingStackView_stackViewDidLayoutSubviews];
  *v39 = partial apply for closure #1 in DOCItemCollectionGridCell.configure(in:);
  v39[1] = v38;

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v40);

  [v158 setTranslatesAutoresizingMaskIntoConstraints_];
  v148 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionView;
  [*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionView] setTranslatesAutoresizingMaskIntoConstraints_];
  v149 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionShadowView;
  [*&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionShadowView] setTranslatesAutoresizingMaskIntoConstraints_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v171 = MEMORY[0x277D84F90];
  v41 = [v4 widthAnchor];
  v42 = [v4 heightAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  LODWORD(v44) = 1148829696;
  [v43 setPriority_];
  v45 = [v4 widthAnchor];
  v46 = [v45 constraintEqualToConstant_];

  v47 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_iconWidthConstraint];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_iconWidthConstraint] = v46;
  v48 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_249BA37E0;
  *(v49 + 32) = v43;
  v154 = v43;
  v50 = [v4 centerXAnchor];
  v51 = [in &selRef_initWithConfiguration_sourceObserver_presentAlertsOn_ + 2];
  v52 = [v50 constraintEqualToAnchor_];

  *(v49 + 40) = v52;
  *(v49 + 48) = v48;
  v153 = v48;
  specialized Array.append<A>(contentsOf:)(v49);
  v53 = [v4 topAnchor];
  v54 = [in &selRef_updateBarVisibilityIfNecessary];
  v55 = [v53 constraintEqualToAnchor:v54 constant:v29];

  if (v29 + -1.0 < 0.0)
  {
    v56 = 0.0;
  }

  else
  {
    v56 = v29 + -1.0;
  }

  v57 = [v33 leadingAnchor];
  v58 = [in &selRef_next + 1];
  v59 = [v57 &selRef:v58 initWithBundleIdentifier:v56 + 6];

  v60 = [v33 trailingAnchor];
  v61 = [in &selRef_updateForChangedTraitsAffectingFonts + 4];
  v62 = [v60 &selRef:v61 initWithBundleIdentifier:-v56 + 6];

  v63 = [(UIView *)in bottomAnchor];
  v64 = [v33 bottomAnchor];
  v65 = [(NSLayoutYAxisAnchor *)v63 constraintGreaterThanOrEqualToAnchor:v64 constant:v29];

  LODWORD(v66) = 1144750080;
  [v65 setPriority_];
  v67 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTopConstraint];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTopConstraint] = v55;
  v68 = v55;

  v69 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackBottomConstraint];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackBottomConstraint] = v65;
  v70 = v65;

  v71 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackLeadingConstraint];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackLeadingConstraint] = v59;
  v72 = v59;

  v73 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTrailingConstraint];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTrailingConstraint] = v62;
  v74 = v62;

  v147 = closure #2 in DOCItemCollectionGridCell.configure(in:)(v2);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_249BAC380;
  *(v75 + 32) = v68;
  *(v75 + 40) = v70;
  v152 = v68;
  v151 = v70;
  v76 = [v4 heightAnchor];
  v77 = [(UIView *)in heightAnchor];
  v78 = [v76 constraintLessThanOrEqualToAnchor_];

  *(v75 + 48) = v78;
  v79 = [v159 firstBaselineAnchor];
  v80 = [v4 bottomAnchor];
  v81 = [v79 constraintEqualToSystemSpacingBelowAnchor:v80 multiplier:v156[3]];

  *(v75 + 56) = v81;
  *(v75 + 64) = v72;
  *(v75 + 72) = v74;
  v157 = v72;
  v150 = v74;
  v82 = [v158 centerXAnchor];
  v83 = [v4 centerXAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v75 + 80) = v84;
  v85 = [v4 trailingAnchor];
  v86 = [v158 trailingAnchor];
  v87 = [v85 constraintGreaterThanOrEqualToAnchor_];

  *(v75 + 88) = v87;
  v88 = [v158 leadingAnchor];
  v89 = [v4 leadingAnchor];
  v90 = [v88 constraintGreaterThanOrEqualToAnchor_];

  *(v75 + 96) = v90;
  v91 = [v158 topAnchor];
  v92 = [v4 topAnchor];
  v93 = [v91 constraintGreaterThanOrEqualToAnchor_];

  *(v75 + 104) = v93;
  v94 = [v4 bottomAnchor];
  v95 = [*&v2[v148] bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95 constant:13.0];

  *(v75 + 112) = v96;
  v97 = [*&v2[v148] centerXAnchor];
  v98 = [v158 centerXAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v75 + 120) = v99;
  v100 = [*&v2[v149] &selRef_initWithConfiguration_sourceObserver_presentAlertsOn_ + 2];
  v101 = [*&v2[v148] &selRef_initWithConfiguration_sourceObserver_presentAlertsOn_ + 2];
  v102 = [v100 constraintEqualToAnchor_];

  *(v75 + 128) = v102;
  v103 = [*&v2[v149] centerYAnchor];
  v104 = [*&v2[v148] centerYAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v75 + 136) = v105;
  specialized Array.append<A>(contentsOf:)(v75);
  specialized Array.append<A>(contentsOf:)(v147);
  v106 = objc_opt_self();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v106 activateConstraints_];

  v108 = [objc_opt_self() standardUserDefaults];
  v109 = MEMORY[0x24C1FAD20](0xD00000000000001DLL, 0x8000000249BC82B0);
  LODWORD(v105) = [v108 BOOLForKey_];

  if (v105)
  {
    v110 = [v2 contentView];
    v111 = objc_opt_self();
    v112 = [v111 blackColor];
    v113 = [v110 layer];
    v114 = [v112 colorWithAlphaComponent_];
    v115 = [v114 CGColor];

    [v113 setBorderColor_];
    v116 = [v110 layer];
    [v116 setBorderWidth_];

    v117 = [v111 orangeColor];
    v118 = [v33 layer];
    v119 = [v117 colorWithAlphaComponent_];
    v120 = [v119 CGColor];

    [v118 setBorderColor_];
    v121 = [v33 layer];
    [v121 setBorderWidth_];

    v122 = [v111 greenColor];
    v123 = [v4 layer];
    v124 = [v122 colorWithAlphaComponent_];
    v125 = [v124 CGColor];

    [v123 setBorderColor_];
    v126 = [v4 &selRef_removeFileStackWithURL_];
    [v126 setBorderWidth_];

    v127 = [v111 redColor];
    v128 = [v159 &selRef_removeFileStackWithURL_];
    v129 = [v127 colorWithAlphaComponent_];
    v130 = [v129 CGColor];

    [v128 setBorderColor_];
    v131 = [v159 layer];
    [v131 setBorderWidth_];

    v132 = [v111 greenColor];
    v133 = [v155 layer];
    v134 = [v132 colorWithAlphaComponent_];
    v135 = [v134 CGColor];

    [v133 setBorderColor_];
    v136 = [v155 &selRef_removeFileStackWithURL_];
    [v136 &selRef:0.5 retrieveSourcesForConfiguration:? usingBlock:?];

    v137 = [v111 blueColor];
    v138 = [v146 &selRef_removeFileStackWithURL_];
    v139 = [v137 colorWithAlphaComponent_];
    v140 = [v139 CGColor];

    [v138 setBorderColor_];
    v141 = [v146 &selRef_removeFileStackWithURL_];
    [v141 &selRef:0.5 retrieveSourcesForConfiguration:? usingBlock:?];

    v142 = v157;
    v143 = v152;
    v157 = v151;
    v144 = v153;
    v145 = v154;
  }

  else
  {
    v141 = v153;
    v144 = v154;
    v143 = v151;
    v145 = v152;
    v142 = v150;
  }
}

void closure #1 in DOCItemCollectionGridCell.configure(in:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
  }
}

double stackHInset(forItemTraitMargins:)(double a1)
{
  result = a1 + -1.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t closure #2 in DOCItemCollectionGridCell.configure(in:)(uint64_t a1)
{
  v2 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_249BA1010;
    v4 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);
    v5 = [v4 centerYAnchor];
    v6 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView);
    v7 = [v6 centerYAnchor];
    v8 = [v5 constraintEqualToAnchor_];

    *(v3 + 32) = v8;
    v9 = (v3 + 40);
    v10 = [v4 bottomAnchor];
    v11 = &selRef_constraintLessThanOrEqualToAnchor_;
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_249BA0290;
    v9 = (v3 + 32);
    v10 = [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) bottomAnchor];
    v6 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView);
    v11 = &selRef_constraintEqualToAnchor_;
  }

  v12 = [v6 bottomAnchor];
  v13 = [v10 *v11];

  *v9 = v13;
  return v3;
}

id DOCItemCollectionGridCell.springLoadedInteractionEffect()()
{
  v0 = type metadata accessor for DOCItemCollectionGridCellSpringLoadedInteractionEffect();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables54DOCItemCollectionGridCellSpringLoadedInteractionEffect_blinkDuration] = 0x3FB999999999999ALL;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

id @objc DOCItemCollectionGridCell.isSelected.getter(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DOCItemCollectionGridCell();
  return objc_msgSendSuper2(&v5, *a3);
}

id DOCItemCollectionGridCell.isSelected.getter(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCItemCollectionGridCell();
  return objc_msgSendSuper2(&v4, *a1);
}

void DOCItemCollectionGridCell.isHighlighted.setter(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCItemCollectionGridCell();
  v11.receiver = v2;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, sel_isHighlighted);
  v10.receiver = v2;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, sel_setHighlighted_, a1 & 1);
  if (v5 != [v2 isHighlighted])
  {
    v6 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x208))();
    if (v7)
    {
      v8 = v7;
      v9 = (*((*v6 & *v7) + 0xB70))();

      if (v9)
      {
        (*((*v6 & *v2) + 0x858))();
      }
    }
  }
}

Swift::Bool __swiftcall DOCItemCollectionGridCell.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCItemCollectionGridCell();
  return objc_msgSendSuper2(&v7, sel_pointInside_withEvent_, isa, x, y);
}

void __swiftcall DOCItemCollectionGridCell.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  IsPad = DOCDeviceIsPad();
  v8 = type metadata accessor for DOCItemCollectionGridCell();
  if (IsPad)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    v9 = [(UIView_optional *)&v12 hitTest:isa withEvent:x, y];
    if (v9)
    {
      v10 = v9;
      if (((*((*MEMORY[0x277D85000] & *v3) + 0x300))(x, y) & 1) == 0)
      {
      }
    }
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    v11 = [(UIView_optional *)&v13 hitTest:isa withEvent:x, y];
  }
}

Swift::Bool __swiftcall DOCItemCollectionGridCell.pointHitSignificantView(_:)(CGPoint a1)
{
  v1 = DOCItemCollectionGridCell.hitSignificantView(at:requireWithinBounds:)(1, a1.x, a1.y);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void *DOCItemCollectionGridCell.hitSignificantView(at:requireWithinBounds:)(char a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  if ([v4 isHidden])
  {
    return 0;
  }

  if (a1)
  {
    [v4 bounds];
    v56.x = a2;
    v56.y = a3;
    if (!CGRectContainsPoint(v61, v56))
    {
      return 0;
    }
  }

  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *v4) + 0x2A8))();
  if (v10)
  {
    v8 = v10;
    v11 = v10;
    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      if (([v11 isHidden] & 1) == 0)
      {
        [v4 convertPoint:v13 toCoordinateSpace:{a2, a3}];
        v41 = v40;
        v43 = v42;
        [v11 frame];
        v60.x = v41;
        v60.y = v43;
        v44 = CGRectContainsPoint(v65, v60);

        if (v44)
        {
          return v8;
        }

        goto LABEL_10;
      }
    }

LABEL_10:
  }

  v8 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_imageSelectionBackgroundView);
  if (v8)
  {
    v14 = v8;
    if ([v14 isHidden])
    {
    }

    else
    {
      [v4 convertPoint:v14 toCoordinateSpace:{a2, a3}];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v57.x = v16;
      v57.y = v18;
      v19 = CGRectContainsPoint(v62, v57);

      if (v19)
      {
        return v8;
      }
    }
  }

  v8 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView);
  v20 = [v4 convertPoint:v8 toCoordinateSpace:{a2, a3}];
  v22 = v21;
  v24 = v23;
  result = (*((*v9 & *v8) + 0x68))(v20);
  if (result)
  {
    v26 = result;
    [result frame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v63.origin.x = v28;
    v63.origin.y = v30;
    v63.size.width = v32;
    v63.size.height = v34;
    v58.x = v22;
    v58.y = v24;
    if (CGRectContainsPoint(v63, v58) || (v8 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackView), [v4 convertPoint:v8 toCoordinateSpace:{a2, a3}], v36 = v35, v38 = v37, objc_msgSend(v8, sel_bounds), v59.x = v36, v59.y = v38, CGRectContainsPoint(v64, v59)))
    {
      v39 = v8;
      return v8;
    }

    outlined init with copy of DOCGridLayout.Spec?(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_backgroundConfigurationProvider, &v51, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
    if (v52)
    {
      outlined init with take of DOCGoToFolderCandidate(&v51, v53);
      v45 = v54;
      v46 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      if ((*(v46 + 24))(v45, v46))
      {
        v47 = v54;
        v48 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v49 = (*(v48 + 16))(v4, v47, v48, a2, a3);
        __swift_destroy_boxed_opaque_existential_0(v53);
        if (v49)
        {
          v50 = v4;
          return v4;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v53);
      }
    }

    else
    {
      outlined destroy of CharacterSet?(&v51, &_s26DocumentManagerExecutables56DOCItemCollectionGridCellBackgroundConfigurationProvider33_D3F4F15D4D1E39DDD74E719D0B18933CLL_pSgMd);
    }

    return 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateContents()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  v4 = (*((*v2 & *v0) + 0x208))(v3);
  if (!v4)
  {
    return;
  }

  v12 = v4;
  DOCItemCollectionGridCell.updateSelectionView()();
  v5 = (*((*v2 & *v0) + 0x828))();
  (*((*v2 & *v0) + 0x858))(v5);
  v6 = (*((*v2 & *v12) + 0x800))();
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isGridCircularProgressVerticalConstraintFileActivated) = (v6 & 1) == 0;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFile) setActive_];
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_isGridCircularProgressVerticalConstraintFolderActivated) = v6 & 1;
  (*((*v2 & *v1) + 0x820))([*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder) setActive_]);
  v7 = *((*v2 & *v12) + 0x460);
  v8 = v7();
  if (v8 == 2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v8)
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setAddDecoration_];
    v8 = (*((*v2 & *v1) + 0x898))(0);
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_thumbnailContainerView);
  v10 = (v7)(v8);
  if (v10 == 2)
  {
    goto LABEL_11;
  }

  v11 = (*((*v2 & *v9) + 0xB8))(v10 & 1);
  (*((*v2 & *v1) + 0x878))(v11);
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateLoadingProgress()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x370))();
  (*((*v1 & *v0) + 0x858))(v2);
  v3 = *((*v1 & *v0) + 0x878);

  v3();
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateIsSelectable()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x820))();
  v4 = (*((*v2 & *v0) + 0x840))(v3);
  v5 = (*((*v2 & *v0) + 0x858))(v4);
  v6 = (*((*v2 & *v0) + 0x208))(v5);
  if (!v6 || (v7 = v6, v8 = (*((*v2 & *v6) + 0xB60))(), v7, v9 = 1.0, (v8 & 1) == 0))
  {
    v9 = 0.0;
  }

  v10 = DOCItemCollectionGridCell.selectionView.getter();
  [v10 alpha];
  v12 = v11;

  if (v12 != v9)
  {
    [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell____lazy_storage___selectionView) setAlpha_];
    v13 = DOCItemCollectionGridCell.selectionShadowView.getter();
    [v13 setAlpha_];
  }

  DOCItemCollectionGridCell.updateSelectionView()();
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateIsFocusing()()
{
  DOCItemCollectionGridCell.updateSelectionView()();
  v1 = DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x820))(v1);
  (*((*v2 & *v0) + 0x840))(v3);
  v4 = *((*v2 & *v0) + 0x858);

  v4();
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateIsPickable()()
{
  DOCItemCollectionGridCell.updateSelectionView()();
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x820))();
  v2 = *((*v1 & *v0) + 0x840);

  v2();
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateLayout()()
{
  v1 = MEMORY[0x24C1FDA70]();
  closure #1 in DOCItemCollectionGridCell.didUpdateLayout()(v0);

  objc_autoreleasePoolPop(v1);
}

void *closure #1 in DOCItemCollectionGridCell.didUpdateLayout()(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x208);
  result = v4();
  if (!result)
  {
    return result;
  }

  v6 = result;
  (*((*v3 & *result) + 0x2D8))(v78);

  v88 = v78[8];
  v89 = v78[9];
  v90[0] = v79[0];
  *(v90 + 9) = *(v79 + 9);
  v84 = v78[4];
  v85 = v78[5];
  v86 = v78[6];
  v87 = v78[7];
  v80 = v78[0];
  v81 = v78[1];
  v82 = v78[2];
  v83 = v78[3];
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v80);
  if (result == 1)
  {
    return result;
  }

  v7 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
  v8 = v4();
  v91 = v1;
  if (v8)
  {
    v9 = v8;
    (*((*v3 & *v8) + 0x2D8))(&v45);
    v64 = v53;
    v65 = v54;
    v66[0] = v55[0];
    *(v66 + 9) = *(v55 + 9);
    v60 = v49;
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
    v75 = v53;
    v76 = v54;
    v77[0] = v55[0];
    *(v77 + 9) = *(v55 + 9);
    v71 = v49;
    v72 = v50;
    v73 = v51;
    v74 = v52;
    v67 = v45;
    v68 = v46;
    v69 = v47;
    v70 = v48;
    result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v67);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_47;
    }

    v10 = outlined destroy of CharacterSet?(&v56, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
    if (v69 >= 1)
    {
      v11 = (*((*v3 & *a1) + 0x3A8))(v10);

      goto LABEL_9;
    }
  }

  v11 = 1;
LABEL_9:
  v12 = v81;
  v13 = v11 ^ [v7 isHidden];
  if (v13)
  {
    [v7 setHidden_];
  }

  v14 = v12;
  v15 = [v7 font];
  if (!v15 || (v16 = v15, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v17 = v14, v18 = static NSObject.== infix(_:_:)(), v17, v3 = MEMORY[0x277D85000], v16, (v18 & 1) == 0))
  {
    [v7 setFont_];
    [v7 _hyphenationFactor];
    if (*&v19 == 0.75)
    {
      goto LABEL_18;
    }

LABEL_17:
    LODWORD(v19) = 0.75;
    [v7 _setHyphenationFactor_];
    goto LABEL_18;
  }

  [v7 _hyphenationFactor];
  if (*&v19 != 0.75)
  {
    goto LABEL_17;
  }

  if (v13)
  {
LABEL_18:
    [v7 invalidateIntrinsicContentSize];
  }

  v20 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
  v21 = v4();
  if (!v21)
  {
    v24 = 1;
    goto LABEL_25;
  }

  v22 = v21;
  (*((*v3 & *v21) + 0x2D8))(&v56);
  v75 = v64;
  v76 = v65;
  v77[0] = v66[0];
  *(v77 + 9) = *(v66 + 9);
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v74 = v63;
  v67 = v56;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v67);
  if (result == 1)
  {
LABEL_47:
    __break(1u);
    return result;
  }

  v23 = outlined destroy of CharacterSet?(&v56, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  if (v69 < 2)
  {

    v24 = 1;
  }

  else
  {
    v24 = (*((*v3 & *a1) + 0x3A8))(v23);
  }

LABEL_25:
  v25 = *(&v81 + 1);
  v26 = v24 ^ [v20 isHidden];
  if (v26)
  {
    [v20 setHidden_];
  }

  v27 = v25;
  v28 = [v20 font];
  if (!v28 || (v29 = v28, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont), v30 = v3, v31 = v27, v32 = static NSObject.== infix(_:_:)(), v31, v3 = v30, v29, (v32 & 1) == 0))
  {
    [v20 setFont_];
    v26 = 1;
  }

  [v20 _hyphenationFactor];
  v34 = v33;
  [v20 _hyphenationFactor];
  if (v34 == *&v35)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *&v35 = v34;
    [v20 _setHyphenationFactor_];
  }

  [v20 invalidateIntrinsicContentSize];
LABEL_35:

  v36 = *(&v83 + 1);
  [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_iconWidthConstraint) setConstant_];
  v37 = *&v84;
  [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTopConstraint) setConstant_];
  [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackBottomConstraint) setConstant_];
  if (v37 + -1.0 < 0.0)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v37 + -1.0;
  }

  [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackLeadingConstraint) setConstant_];
  v39 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_stackTrailingConstraint);
  if (v39)
  {
    v39 = [v39 setConstant_];
  }

  v40 = (*((*v3 & *a1) + 0x828))(v39);
  (*((*v3 & *a1) + 0x820))(v40);
  v41 = _UISolariumEnabled();
  v42 = 1.0;
  if (v41)
  {
    v42 = 4.0;
  }

  v43 = v36 / 3.0 / v42;
  if (*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolderConstant) != v43)
  {
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolderConstant) = v43;
    v41 = [*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridCircularProgressVerticalConstraintFolder) setConstant_];
  }

  v44 = (*((*v3 & *a1) + 0x288))(v41);
  (*((*v3 & *a1) + 0x290))(v44);
  return outlined destroy of CharacterSet?(v78, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateItemStatusConstraints()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x180))())
  {
    v2 = (*((*v1 & *v0) + 0x208))();
    if (v2)
    {
      v3 = v2;
      v4 = (*((*v1 & *v0) + 0x118))();
      if (v4)
      {
        v5 = v4;
        (*((*v1 & *v3) + 0x2D8))(&v14);
        v33 = v22;
        *v34 = v23;
        *&v34[16] = v24[0];
        *&v34[25] = *(v24 + 9);
        v29 = v18;
        v30 = v19;
        v31 = v20;
        v32 = v21;
        v25 = v14;
        v26 = v15;
        v27 = v16;
        v28 = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) == 1)
        {
          goto LABEL_20;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        [v5 setConstant_];
      }

      v6 = (*((*v1 & *v0) + 0x130))();
      if (v6)
      {
        v7 = v6;
        (*((*v1 & *v3) + 0x2D8))(&v14);
        v33 = v22;
        *v34 = v23;
        *&v34[16] = v24[0];
        *&v34[25] = *(v24 + 9);
        v29 = v18;
        v30 = v19;
        v31 = v20;
        v32 = v21;
        v25 = v14;
        v26 = v15;
        v27 = v16;
        v28 = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) == 1)
        {
LABEL_21:
          __break(1u);
          return;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        [v7 setConstant_];
      }

      v8 = (*((*v1 & *v0) + 0x198))();
      (*((*v1 & *v3) + 0x2D8))(&v14);
      v33 = v22;
      *v34 = v23;
      *&v34[16] = v24[0];
      *&v34[25] = *(v24 + 9);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      v25 = v14;
      v26 = v15;
      v27 = v16;
      v28 = v17;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) != 1)
      {
        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        v13[0] = *&v34[8];
        v13[1] = *&v34[24];
        (*((*v1 & *v8) + 0x70))(v13);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v10, "Cannot update constraints in updateItemStatusConstraints because cellContent is nil", v11, 2u);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateItemAccessStatusConstraints()()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x1B0))())
  {
    v2 = (*((*v1 & *v0) + 0x208))();
    if (v2)
    {
      v3 = v2;
      v4 = (*((*v1 & *v0) + 0x148))();
      if (v4)
      {
        v5 = v4;
        (*((*v1 & *v3) + 0x2D8))(&v14);
        v33 = v22;
        *v34 = v23;
        *&v34[16] = v24[0];
        *&v34[25] = *(v24 + 9);
        v29 = v18;
        v30 = v19;
        v31 = v20;
        v32 = v21;
        v25 = v14;
        v26 = v15;
        v27 = v16;
        v28 = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) == 1)
        {
          goto LABEL_20;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        [v5 setConstant_];
      }

      v6 = (*((*v1 & *v0) + 0x160))();
      if (v6)
      {
        v7 = v6;
        (*((*v1 & *v3) + 0x2D8))(&v14);
        v33 = v22;
        *v34 = v23;
        *&v34[16] = v24[0];
        *&v34[25] = *(v24 + 9);
        v29 = v18;
        v30 = v19;
        v31 = v20;
        v32 = v21;
        v25 = v14;
        v26 = v15;
        v27 = v16;
        v28 = v17;
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) == 1)
        {
LABEL_21:
          __break(1u);
          return;
        }

        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        [v7 setConstant_];
      }

      v8 = (*((*v1 & *v0) + 0x1C8))();
      (*((*v1 & *v3) + 0x2D8))(&v14);
      v33 = v22;
      *v34 = v23;
      *&v34[16] = v24[0];
      *&v34[25] = *(v24 + 9);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      v25 = v14;
      v26 = v15;
      v27 = v16;
      v28 = v17;
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v25) != 1)
      {
        outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
        v13[0] = *&v34[8];
        v13[1] = *&v34[24];
        (*((*v1 & *v8) + 0x70))(v13);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2493AC000, oslog, v10, "Cannot update constraints in updateItemAccessStatusConstraints because cellContent is nil", v11, 2u);
      MEMORY[0x24C1FE850](v11, -1, -1);
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateThumbnail()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v9);
  if (v13)
  {
    v24 = v7;
    v14 = *((*v12 & *v13) + 0xA80);
    v25 = v13;
    v15 = v14();
    if (v15)
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) updateImage:v15 addDecoration:(*((*v12 & *v25) + 0x940))() & 1];
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = (*((*v12 & *v25) + 0x460))();
      if (v16 == 2)
      {
        __break(1u);
        return;
      }

      (*((*v12 & *v0) + 0x898))(v16 & 1);
    }

    if (DOCItemCollectionGridCell.isLayoutBackgroundStateViewNeeded()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v23 = static OS_dispatch_queue.main.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = v0;
      aBlock[4] = partial apply for closure #1 in DOCItemCollectionGridCell.didUpdateThumbnail();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_67;
      v18 = _Block_copy(aBlock);
      v19 = v0;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type ReplaceSymbolEffect and conformance ReplaceSymbolEffect(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v20 = v23;
      MEMORY[0x24C1FB9A0](0, v11, v5, v18);
      _Block_release(v18);

      (*(v2 + 8))(v5, v1);
      (*(v24 + 8))(v11, v6);
    }

    else
    {
      v21 = v25;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didUpdateTraits()()
{
  DOCItemCollectionGridCell.updateSelectionView()();
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x820);

  v1();
}

Swift::Void __swiftcall DOCItemCollectionGridCell.didEndDisplaying()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v12 - v5;
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v4);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0x550))();
  }

  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView) setThumbnail_];
  v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
  v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*((*v7 & *v10) + 0x70))(v6);
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel) setText_];
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel) setText_];
}

Swift::Void __swiftcall DOCItemCollectionGridCell.willDisplay()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  DOCItemCollectionCell.willDisplay()();
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (v7)
  {
    v8 = *((*v6 & *v7) + 0xB70);
    v16 = v7;
    if (v8())
    {
      (*((*v6 & **(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel)) + 0x68))();
      v9 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      v10 = (*(*(v9 - 8) + 48))(v5, 1, v9);
      v11 = outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
      if (v10 == 1)
      {
        (*((*v6 & *v1) + 0x820))(v11);
      }

      v12 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel) text];
      if (v12 || (v12 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel) text]) != 0)
      {
        v13 = v12;
      }

      else
      {
        (*((*v6 & *v1) + 0x828))();
      }
    }

    else
    {
      v14 = v16;
    }
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateTitle()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd);
  v3.n128_f64[0] = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v11 - v4;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))(v3);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_gridTitleLabel);
    v9 = v7;
    (*((*v6 & *v7) + 0x6E8))();
    v10 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    (*((*v6 & *v8) + 0x70))(v5);
    DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
  }
}

Swift::Void __swiftcall DOCItemCollectionGridCell.updateSubtitleString()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x208))();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v143 = (v5 + 16);
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v152 = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v154 = v7;
  *(v7 + 24) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  *(v9 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v151 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v148 = v12;
  (*((*v1 & *v3) + 0x2D8))(&v155);
  v166[8] = v163;
  v166[9] = v164;
  v167[0] = v165[0];
  *(v167 + 9) = *(v165 + 9);
  v166[4] = v159;
  v166[5] = v160;
  v166[6] = v161;
  v166[7] = v162;
  v166[0] = v155;
  v166[1] = v156;
  v166[2] = v157;
  v166[3] = v158;
  v175 = v163;
  v176 = v164;
  v177[0] = v165[0];
  *(v177 + 9) = *(v165 + 9);
  v171 = v159;
  v172 = v160;
  v173 = v161;
  v174 = v162;
  v168[0] = v155;
  v168[1] = v156;
  v169 = v157;
  v170 = v158;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v168) == 1)
  {
    __break(1u);
    goto LABEL_211;
  }

  outlined destroy of CharacterSet?(v166, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd);
  v153 = v0;
  v149 = v3;
  v150 = v9;
  v146 = v5;
  v147 = v4;
  if (v169 > 1)
  {
    if (getter of isFolder #1 in DOCItemCollectionGridCell.updateSubtitleString()(v4, v3))
    {
      if (!getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v151, v3) && v13 == 0xE000000000000000)
      {
        goto LABEL_7;
      }

      object = 0xE000000000000000;
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v49)
      {
        v142 = 0;
      }

      else
      {
        v65 = *(v151 + 16);
        object = *(v151 + 24);

        if (v65 == getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v148) && object == v66)
        {

LABEL_7:

LABEL_8:
          v142 = 0;
          object = 0xE000000000000000;
          goto LABEL_45;
        }

        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v85)
        {
          goto LABEL_8;
        }

        v142 = v65;
      }

LABEL_45:
      v50 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v3);
      v52 = v51;
      v53 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v150, v3);
      v54 = v3;
      v56 = v55;
      v57 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v154, v54);
      v59 = v58;
      if (v50)
      {
        v60 = 0;
      }

      else
      {
        v60 = v52 == 0xE000000000000000;
      }

      v61 = v60;
      if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v53 && v56 == 0xE000000000000000)
        {

LABEL_66:

          v63 = *v8;
          v64 = v149;
LABEL_132:
          v86 = MEMORY[0x277D85000];
LABEL_133:
          v83 = *(&v63 + 1);
          v144 = v63;

          if ((*((*v86 & *v64) + 0x820))(v87))
          {

            v88 = _DocumentManagerBundle();
            if (v88)
            {
              v89 = v88;
              v178._object = 0x8000000249BE2270;
              v90._countAndFlagsBits = 0x626967696C656E49;
              v91.value._countAndFlagsBits = 0x617A696C61636F4CLL;
              v91.value._object = 0xEB00000000656C62;
              v90._object = 0xEA0000000000656CLL;
              v92._countAndFlagsBits = 0;
              v92._object = 0xE000000000000000;
              v178._countAndFlagsBits = 0xD000000000000061;
              v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v178);
              countAndFlagsBits = v93._countAndFlagsBits;
              object = v93._object;

              v82 = v144;
              goto LABEL_181;
            }

LABEL_211:
            __break(1u);
            return;
          }

          countAndFlagsBits = *(v151 + 16);
          v94 = *(v151 + 24);
          if ((countAndFlagsBits || v94 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            if (countAndFlagsBits == getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v148) && v94 == v95)
            {
            }

            else
            {
              v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v119 & 1) == 0)
              {

                v82 = v144;
                goto LABEL_179;
              }
            }
          }

          countAndFlagsBits = v144;
          if (!v142 && object == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v94 = v83;

            v82 = 0;
            v83 = 0xE000000000000000;
LABEL_179:
            object = v94;
            goto LABEL_181;
          }

          v82 = v144;
          countAndFlagsBits = v142;
LABEL_181:
          v101 = *(v153 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
          v120 = [v101 text];
          if (v120)
          {
            v121 = v120;
            v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v123;

            if (countAndFlagsBits == v122 && object == v124)
            {

LABEL_186:

              v108 = 0;
LABEL_188:
              v110 = *(v153 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
              v127 = [v110 text];
              if (!v127)
              {
                goto LABEL_193;
              }

              v128 = v127;
              v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v131 = v130;

              if (v82 == v129 && v83 == v131)
              {
LABEL_191:

                goto LABEL_195;
              }

              v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v132 & 1) == 0)
              {
LABEL_193:
                v133 = MEMORY[0x24C1FAD20](v82, v83);

                [v110 setText_];

                goto LABEL_194;
              }

LABEL_163:

              goto LABEL_195;
            }

            v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v125)
            {
              goto LABEL_186;
            }
          }

          v126 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

          [v101 setText_];

          v108 = 1;
          goto LABEL_188;
        }

        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v62)
        {

          goto LABEL_66;
        }

        if (v61)
        {
          goto LABEL_91;
        }
      }

      else
      {
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_106;
      }

LABEL_91:
      if (!v57 && v59 == 0xE000000000000000)
      {

LABEL_114:

        v63 = *v10;
        v64 = v149;
        goto LABEL_132;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {
        goto LABEL_114;
      }

      if (v61)
      {

        v64 = v149;
        goto LABEL_167;
      }

LABEL_106:
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v64 = v149;
      if ((v75 & 1) == 0)
      {
        v63 = *v143;
        goto LABEL_132;
      }

LABEL_167:
      v86 = MEMORY[0x277D85000];
      object = *(v150 + 24);
      v142 = *(v150 + 16);
      v145 = *v8;

      v63 = v145;
      goto LABEL_133;
    }

    v31 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v3);
    v33 = v32;
    v34 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v9, v3);
    v36 = v35;
    v37 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v154, v3);
    v39 = v38;
    v40 = getter of size #1 in DOCItemCollectionGridCell.updateSubtitleString()(v151, v3);
    v42 = v41;
    if (v31)
    {
      v43 = 0;
    }

    else
    {
      v43 = v33 == 0xE000000000000000;
    }

    v44 = v43;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!v34 && v36 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v37 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        if (getter of unavailableSizeString #1 in DOCItemCollectionGridCell.updateSubtitleString()(v148) == v40 && v45 == v42)
        {

LABEL_74:

          countAndFlagsBits = 0;
          v69 = 0;
          object = 0xE000000000000000;
          v70 = 0xE000000000000000;
          goto LABEL_120;
        }

        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v67)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }

      if (v44)
      {
        goto LABEL_77;
      }
    }

    else
    {
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_85:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v76 = v150;
LABEL_109:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {

          v77 = v146;
          goto LABEL_111;
        }

LABEL_169:
        if (!v37 && v39 == 0xE000000000000000)
        {

LABEL_173:

          countAndFlagsBits = *(v76 + 16);
          object = *(v76 + 24);
          goto LABEL_119;
        }

        v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v118)
        {
          goto LABEL_173;
        }

        v77 = v146;
        if (v44)
        {

          goto LABEL_207;
        }

LABEL_111:
        v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v78 & 1) == 0)
        {
          countAndFlagsBits = *(v77 + 16);
          object = *(v77 + 24);
LABEL_119:

          v69 = 0;
          v70 = 0xE000000000000000;
LABEL_120:
          if (v70 == 0xE000000000000000)
          {
LABEL_122:

            if (getter of date #1 in DOCItemCollectionGridCell.updateSubtitleString()(v152, v147, v3) || v81 != 0xE000000000000000)
            {
              v83 = 0xE000000000000000;
              v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v84)
              {
                v82 = 0;
              }

              else
              {
                v82 = countAndFlagsBits;
                v83 = object;
                countAndFlagsBits = *(v152 + 16);
              }
            }

            else
            {

              v82 = 0;
              v83 = 0xE000000000000000;
            }

            goto LABEL_181;
          }

LABEL_121:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v82 = countAndFlagsBits;
            v83 = object;
            countAndFlagsBits = v69;
            object = v70;
            goto LABEL_181;
          }

          goto LABEL_122;
        }

LABEL_207:
        v69 = *(v76 + 16);
        v70 = *(v76 + 24);
        countAndFlagsBits = *(v154 + 16);
        object = *(v154 + 24);

        if (v69)
        {
          goto LABEL_121;
        }

        goto LABEL_120;
      }

LABEL_86:
      if (!v34 && v36 == 0xE000000000000000)
      {

LABEL_117:

        v71 = v154;
        goto LABEL_118;
      }

      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v80)
      {

        goto LABEL_117;
      }

      v76 = v150;
      if (v44)
      {
        goto LABEL_169;
      }

      goto LABEL_109;
    }

LABEL_77:
    if (!v34 && v36 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (!v37 && v39 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {

      v71 = v151;
LABEL_118:
      countAndFlagsBits = *(v71 + 16);
      object = *(v71 + 24);
      goto LABEL_119;
    }

    if (v44)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v15 = getter of status #1 in DOCItemCollectionGridCell.updateSubtitleString()(v5, v3);
  v17 = v16;
  v18 = getter of share #1 in DOCItemCollectionGridCell.updateSubtitleString()(v9, v3);
  v20 = v19;
  v21 = getter of date #1 in DOCItemCollectionGridCell.updateSubtitleString()(v152, v4, v3);
  v22 = v3;
  v23 = v21;
  v25 = v24;
  v26 = getter of source #1 in DOCItemCollectionGridCell.updateSubtitleString()(v154, v22);
  v28 = v27;
  if (v15)
  {
    v29 = 0;
  }

  else
  {
    v29 = v17 == 0xE000000000000000;
  }

  v30 = v29;
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

LABEL_59:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_95:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        v72 = v150;
        goto LABEL_100;
      }

LABEL_96:
      if (!v26 && v28 == 0xE000000000000000)
      {

LABEL_104:

        v48 = v150;
        v47 = 0;
        goto LABEL_150;
      }

      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v74)
      {

        goto LABEL_104;
      }

      v72 = v150;
      if (v30)
      {

        goto LABEL_144;
      }

LABEL_100:
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v73 & 1) == 0)
      {

        goto LABEL_149;
      }

LABEL_144:
      v97 = *(v72 + 16);
      v96 = *(v72 + 24);
      if (v97 == v18 && v96 == v20)
      {

LABEL_148:
        v47 = *(v154 + 16);
        v99 = *(v154 + 24);

        v100 = v99;
        goto LABEL_151;
      }

      v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v98)
      {
        goto LABEL_148;
      }

LABEL_149:
      v47 = 0;
      v48 = v146;
      goto LABEL_150;
    }

LABEL_60:
    if (!v18 && v20 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v47 = 0;
      v48 = v152;
      goto LABEL_150;
    }

    if (v30)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  if ((v18 || v20 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_58;
  }

  if (v23 || v25 != 0xE000000000000000)
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {

      goto LABEL_42;
    }

LABEL_58:
    if (v30)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_42:

  v47 = 0;
  v48 = v154;
LABEL_150:
  v97 = *(v48 + 16);
  v96 = *(v48 + 24);
  v100 = 0xE000000000000000;
LABEL_151:

  v101 = *(v153 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_subtitleLabel);
  v102 = [v101 text];
  if (!v102)
  {

    goto LABEL_158;
  }

  v103 = v102;
  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v105;

  if (v97 != v104 || v96 != v106)
  {
    v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v107)
    {
      goto LABEL_157;
    }

LABEL_158:
    v109 = MEMORY[0x24C1FAD20](v97, v96);

    [v101 setText_];

    v108 = 1;
    goto LABEL_159;
  }

  swift_bridgeObjectRelease_n();
LABEL_157:

  v108 = 0;
LABEL_159:
  v110 = *(v153 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCItemCollectionGridCell_secondSubtitleLabel);
  v111 = [v110 text];
  if (v111)
  {
    v112 = v111;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    if (v47 == v113 && v100 == v115)
    {
      goto LABEL_191;
    }

    v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v116)
    {
      goto LABEL_163;
    }
  }

  v117 = MEMORY[0x24C1FAD20](v47, v100);

  [v110 setText_];

LABEL_194:
  v108 = 1;
LABEL_195:
  v134 = [v110 text];
  if (!v134)
  {
    goto LABEL_199;
  }

  v135 = v134;
  v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v138 = v137;

  v139 = HIBYTE(v138) & 0xF;
  if ((v138 & 0x2000000000000000) == 0)
  {
    v139 = v136 & 0xFFFFFFFFFFFFLL;
  }

  if (!v139)
  {
    v140 = 1;
    v141 = 2;
  }

  else
  {
LABEL_199:
    v140 = 2;
    v141 = 1;
  }

  [v101 setNumberOfLines_];
  [v110 setNumberOfLines_];
  if (v108)
  {
    DOCItemCollectionGridCell.layoutBackgroundStateViewIfNeeded()();
  }
}