id closure #1 in DetailsTab.init<A>(tabItem:viewProvider:)(uint64_t a1, void (*a2)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsHostingController();
  a2(a1);
  return DetailsHostingController.__allocating_init(rootView:)(v5);
}

void *DetailsTab.init<A, B>(_:viewProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = TabItem.id.getter(a4, a6);
  a9[1] = v18;
  type metadata accessor for AnyTabItem();
  a9[2] = AnyTabItem.__allocating_init<A>(_:)(a1, a4, a6);
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  result[6] = a8;
  result[7] = a2;
  result[8] = a3;
  a9[3] = partial apply for closure #1 in DetailsTab.init<A, B>(_:viewProvider:);
  a9[4] = result;
  return result;
}

id closure #1 in DetailsTab.init<A, B>(_:viewProvider:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsHostingController();
  a3(a1, a2);
  return DetailsHostingController.__allocating_init(rootView:)(v7);
}

__n128 DetailsTab.init<A, B>(_:viewProvider:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  type metadata accessor for AnyTabItem();
  v16 = swift_unknownObjectRetain();
  v17 = AnyTabItem.__allocating_init<A>(_:)(v16, a3, a5);
  DetailsTab.init<A>(tabItem:viewProvider:)(v17, a1, a2, a4, a6, a7, &v19);
  swift_unknownObjectRelease();
  *a8 = v19;
  result = v21;
  *(a8 + 8) = v20;
  *(a8 + 24) = result;
  return result;
}

uint64_t static DetailsTab.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int DetailsTab.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DetailsTab@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsTab()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsTab()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DetailsTab(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsTab(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsTab(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t key path getter for HorizontalTabControl.ViewModel.tabs : HorizontalTabControl.ViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t key path setter for HorizontalTabControl.ViewModel.tabs : HorizontalTabControl.ViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t HorizontalTabControl.ViewModel.tabs.getter()
{
  swift_getKeyPath();
  (*(*v0 + 216))();

  swift_beginAccess();
}

uint64_t HorizontalTabControl.ViewModel.tabs.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0C3TabV_Tt1g5(v3, a1);

  if (v4)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 224))(v7, partial apply for closure #1 in HorizontalTabControl.ViewModel.tabs.setter);
  }
}

void (*HorizontalTabControl.ViewModel.tabs.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = HorizontalTabControl.ViewModel._tabs.modify();
  return HorizontalTabControl.ViewModel.tabs.modify;
}

void HorizontalTabControl.ViewModel.tabs.modify(void *a1)
{
  HorizontalTabControl.ViewModel.tabs.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t HorizontalTabControl.ViewModel._selectedTab.didset(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v14 = *(*v1 + 184);
  v14(v18);
  v8 = v18[0];
  if (!v4)
  {
    outlined copy of DetailsTab?(v3, 0);
    if (!*(&v8 + 1))
    {
      v12 = v3;
      v13 = 0;
      return outlined consume of DetailsTab?(v12, v13);
    }

    goto LABEL_9;
  }

  *&v15 = v3;
  *(&v15 + 1) = v4;
  *&v16 = v6;
  *(&v16 + 1) = v5;
  v17 = v7;
  if (!*(&v18[0] + 1))
  {
    outlined copy of DetailsTab?(v3, v4);
    outlined copy of DetailsTab?(v3, v4);

LABEL_9:
    outlined consume of DetailsTab?(v3, v4);
    result = outlined consume of DetailsTab?(v8, *(&v8 + 1));
    v11 = v1[8];
    if (!v11)
    {
      return result;
    }

    goto LABEL_10;
  }

  outlined copy of DetailsTab?(v3, v4);
  outlined copy of DetailsTab?(v3, v4);
  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  result = outlined consume of DetailsTab?(v3, v4);
  if ((v9 & 1) == 0)
  {
    v11 = v2[8];
    if (v11)
    {
LABEL_10:
      (v14)(v18, result);
      v15 = v18[0];
      v16 = v18[1];
      v17 = v19;
      v11(&v15);
      v13 = *(&v15 + 1);
      v12 = v15;
      return outlined consume of DetailsTab?(v12, v13);
    }
  }

  return result;
}

void (*HorizontalTabControl.ViewModel._selectedTab.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  outlined copy of DetailsTab?(v5, v6);
  return HorizontalTabControl.ViewModel._selectedTab.modify;
}

void HorizontalTabControl.ViewModel._selectedTab.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v11 = v9[3];
  v10 = v9[4];
  v13 = v9[5];
  v12 = v9[6];
  v14 = v9[7];
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = v7;
  v9[7] = v8;
  if (a2)
  {
    outlined copy of DetailsTab?(v4, v5);
    outlined copy of DetailsTab?(v11, v10);
    outlined consume of DetailsTab?(v11, v10);
    v17 = v11;
    v18 = v10;
    v19 = v13;
    v20 = v12;
    v21 = v14;
    HorizontalTabControl.ViewModel._selectedTab.didset(&v17);
    outlined consume of DetailsTab?(v11, v10);
    v15 = *v3;
    v16 = v3[1];
  }

  else
  {
    outlined copy of DetailsTab?(v11, v10);
    outlined consume of DetailsTab?(v11, v10);
    v17 = v11;
    v18 = v10;
    v19 = v13;
    v20 = v12;
    v21 = v14;
    HorizontalTabControl.ViewModel._selectedTab.didset(&v17);
    v15 = v11;
    v16 = v10;
  }

  outlined consume of DetailsTab?(v15, v16);

  free(v3);
}

uint64_t HorizontalTabControl.ViewModel.selectedTab.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 216))();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  return outlined copy of DetailsTab?(v3, v4);
}

uint64_t HorizontalTabControl.ViewModel.selectedTab.setter(__int128 *a1)
{
  v2 = a1[1];
  v16 = *a1;
  v17 = v2;
  v18 = *(a1 + 4);
  v3 = *(v1 + 40);
  v19 = *(v1 + 24);
  v20 = v3;
  v21 = *(v1 + 56);
  outlined init with copy of DetailsTab?(&v19, &v25);
  v4 = v19;
  v5 = v16;
  if (*(&v19 + 1))
  {
    v25 = v19;
    v26 = v20;
    v27 = v21;
    if (*(&v16 + 1))
    {
      v23[0] = v16;
      v23[1] = v17;
      v24 = v18;
      outlined init with copy of DetailsTab?(&v19, v22);
      outlined init with copy of DetailsTab?(&v16, v22);
      outlined copy of DetailsTab?(v4, *(&v4 + 1));
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();

      outlined consume of DetailsTab?(v4, *(&v4 + 1));
      outlined destroy of DetailsTab?(&v19);
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_9:
      KeyPath = swift_getKeyPath();
      v8 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 224))(v8, partial apply for closure #1 in HorizontalTabControl.ViewModel.selectedTab.setter);
      outlined destroy of DetailsTab?(&v16);
    }

    outlined init with copy of DetailsTab?(&v19, v23);
    outlined init with copy of DetailsTab?(&v16, v23);
    outlined copy of DetailsTab?(v4, *(&v4 + 1));

LABEL_8:
    outlined consume of DetailsTab?(v4, *(&v4 + 1));
    outlined consume of DetailsTab?(v5, *(&v5 + 1));
    outlined destroy of DetailsTab?(&v19);
    goto LABEL_9;
  }

  if (*(&v16 + 1))
  {
    outlined init with copy of DetailsTab?(&v19, &v25);
    outlined init with copy of DetailsTab?(&v16, &v25);
    goto LABEL_8;
  }

  outlined init with copy of DetailsTab?(&v19, &v25);
  outlined init with copy of DetailsTab?(&v16, &v25);
  outlined consume of DetailsTab?(v4, 0);
  outlined destroy of DetailsTab?(&v19);
LABEL_11:
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v17;
  *(v1 + 24) = v16;
  *(v1 + 40) = v15;
  *(v1 + 56) = v18;
  outlined copy of DetailsTab?(v10, v11);
  outlined consume of DetailsTab?(v10, v11);
  *&v25 = v10;
  *(&v25 + 1) = v11;
  *&v26 = v12;
  *(&v26 + 1) = v13;
  v27 = v14;
  HorizontalTabControl.ViewModel._selectedTab.didset(&v25);
  return outlined consume of DetailsTab?(v10, v11);
}

void (*HorizontalTabControl.ViewModel.selectedTab.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 216))();

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = HorizontalTabControl.ViewModel._selectedTab.modify(v4);
  return HorizontalTabControl.ViewModel.selectedTab.modify;
}

uint64_t HorizontalTabControl.ViewModel.onTabChange.getter()
{
  v1 = *(v0 + 64);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v1);
  return v1;
}

uint64_t HorizontalTabControl.ViewModel.__allocating_init(tabs:selectedTab:onTabChange:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *a2;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 64) = a3;
  *(v8 + 72) = a4;
  v12 = v9;
  v10 = *(a2 + 3);
  v13 = *(a2 + 1);
  v14 = v10;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3);
  HorizontalTabControl.ViewModel.selectedTab.setter(&v12);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3);
  return v8;
}

uint64_t HorizontalTabControl.ViewModel.init(tabs:selectedTab:onTabChange:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a2;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  ObservationRegistrar.init()();
  *(v4 + 16) = a1;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  v12 = v9;
  v10 = *(a2 + 3);
  v13 = *(a2 + 1);
  v14 = v10;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3);
  HorizontalTabControl.ViewModel.selectedTab.setter(&v12);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(a3);
  return v4;
}

uint64_t *HorizontalTabControl.ViewModel.deinit()
{

  outlined consume of DetailsTab?(v0[3], v0[4]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v0[8]);
  v1 = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HorizontalTabControl.ViewModel.__deallocating_deinit()
{

  outlined consume of DetailsTab?(v0[3], v0[4]);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v0[8]);
  v1 = OBJC_IVAR____TtCV20CommunicationDetails20HorizontalTabControl9ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0C3TabV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
      v3 = 0;
      do
      {

        v4 = dispatch thunk of static Equatable.== infix(_:_:)();

        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t partial apply for closure #1 in HorizontalTabControl.ViewModel.tabs.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

unint64_t lazy protocol witness table accessor for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel()
{
  result = lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel;
  if (!lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel)
  {
    type metadata accessor for HorizontalTabControl.ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HorizontalTabControl.ViewModel and conformance HorizontalTabControl.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for HorizontalTabControl.ViewModel()
{
  result = type metadata singleton initialization cache for HorizontalTabControl.ViewModel;
  if (!type metadata singleton initialization cache for HorizontalTabControl.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DetailsTab?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DetailsTab?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B3TabVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in HorizontalTabControl.ViewModel.selectedTab.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = *(v1 + 32);
  v9 = *(v1 + 16);
  *(v2 + 3) = *v1;
  *(v2 + 5) = v9;
  v2[7] = v8;
  outlined copy of DetailsTab?(v3, v4);
  outlined init with copy of DetailsTab?(v1, v11);
  outlined consume of DetailsTab?(v3, v4);
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  HorizontalTabControl.ViewModel._selectedTab.didset(v11);
  return outlined consume of DetailsTab?(v3, v4);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata completion function for HorizontalTabControl.ViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

double DetailsContentOffsetProxy.headerSize.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[3];
}

uint64_t DetailsContentOffsetProxy.headerSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[3] == a1 && v2[4] == a2)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 832))(v8, partial apply for closure #1 in DetailsContentOffsetProxy.headerSize.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.headerSize.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

void (*DetailsContentOffsetProxy.headerSize.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._headerSize.modify();
  return DetailsContentOffsetProxy.headerSize.modify;
}

void DetailsContentOffsetProxy.headerSize.modify(void *a1)
{
  DetailsContentOffsetProxy.headerSize.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t type metadata accessor for DetailsContentOffsetProxy()
{
  result = type metadata singleton initialization cache for DetailsContentOffsetProxy;
  if (!type metadata singleton initialization cache for DetailsContentOffsetProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DetailsContentOffsetProxy.safeAreaBottomInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[5];
}

uint64_t DetailsContentOffsetProxy.safeAreaBottomInset.setter(double a1)
{
  result = swift_beginAccess();
  if (v1[5] == a1)
  {
    v1[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.safeAreaBottomInset.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.safeAreaBottomInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

void (*DetailsContentOffsetProxy.safeAreaBottomInset.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._safeAreaBottomInset.modify();
  return DetailsContentOffsetProxy.safeAreaBottomInset.modify;
}

double DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[6];
}

uint64_t DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.setter(double a1)
{
  result = swift_beginAccess();
  if (v1[6] == a1)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

void (*DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._bottomInsetDisregardingSafeAreaInset.modify();
  return DetailsContentOffsetProxy.bottomInsetDisregardingSafeAreaInset.modify;
}

double DetailsContentOffsetProxy.topInset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[7];
}

uint64_t DetailsContentOffsetProxy.topInset.setter(double a1)
{
  result = swift_beginAccess();
  if (v1[7] == a1)
  {
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.topInset.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.topInset.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

void (*DetailsContentOffsetProxy.topInset.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._topInset.modify();
  return DetailsContentOffsetProxy.topInset.modify;
}

uint64_t key path getter for DetailsContentOffsetProxy.contentOffset : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t key path setter for DetailsContentOffsetProxy.contentOffset : DetailsContentOffsetProxy(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[2];
  v5 = *(**a2 + 424);

  return v5(*&v2, v3, v4);
}

double DetailsContentOffsetProxy.contentOffset.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  v1 = v0[10];

  return v1;
}

uint64_t DetailsContentOffsetProxy.contentOffset.setter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.contentOffset.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  swift_beginAccess();
  v2[8] = v1;
  v2[9] = v3;
  v2[10] = v4;
}

void (*DetailsContentOffsetProxy.contentOffset.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._contentOffset.modify();
  return DetailsContentOffsetProxy.contentOffset.modify;
}

double DetailsContentOffsetProxy.contentOffsetY.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  v7[1] = (*(*v0 + 416))(v1);
  v7[2] = v2;
  v7[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMd);
  MEMORY[0x193AEA550](v7, v4);
  v5 = *v7;

  return v5;
}

uint64_t DetailsContentOffsetProxy.withContentOffsetChange<A>(_:)()
{
  swift_getKeyPath();
  (*(*v0 + 832))();
}

double DetailsContentOffsetProxy.contentOffsetForInitialScroll.getter()
{
  v1 = (*(*v0 + 560))();
  v2 = *(*v0 + 608);
  v3 = v2(v6);
  if (v1 <= v6[0] && v1 <= (*(*v0 + 440))(v3))
  {
    v2(v6);
    return v6[0];
  }

  else
  {
    v4 = *(*v0 + 440);

    v4();
  }

  return result;
}

uint64_t key path getter for DetailsContentOffsetProxy.needsToSetInitialScrollPosition : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.needsToSetInitialScrollPosition.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[88];
}

uint64_t DetailsContentOffsetProxy.needsToSetInitialScrollPosition.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[88] == v2)
  {
    v1[88] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.needsToSetInitialScrollPosition.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.needsToSetInitialScrollPosition.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

void (*DetailsContentOffsetProxy.needsToSetInitialScrollPosition.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._needsToSetInitialScrollPosition.modify();
  return DetailsContentOffsetProxy.needsToSetInitialScrollPosition.modify;
}

uint64_t key path getter for DetailsContentOffsetProxy.supportsScrollSync : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.supportsScrollSync.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[89];
}

uint64_t DetailsContentOffsetProxy.supportsScrollSync.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[89] == v2)
  {
    v1[89] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.supportsScrollSync.setter);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.supportsScrollSync.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 89) = v2;
  return result;
}

void (*DetailsContentOffsetProxy.supportsScrollSync.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._supportsScrollSync.modify();
  return DetailsContentOffsetProxy.supportsScrollSync.modify;
}

uint64_t DetailsContentOffsetProxy.contentOffsetForHeaderCollapse.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

BOOL static DetailsContentOffsetProxy.ScrollMetrics.ContentHeight.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1 == *&a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *&a1 == *&a3;
  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t DetailsContentOffsetProxy.ScrollMetrics.contentHeight.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = a5;
  return result;
}

double key path getter for DetailsContentOffsetProxy.latestScrollMetrics : DetailsContentOffsetProxy@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 608))(v7);
  result = *v7;
  v4 = v7[1];
  v5 = v8;
  v6 = v9;
  *a2 = v7[0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t key path setter for DetailsContentOffsetProxy.latestScrollMetrics : DetailsContentOffsetProxy(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = v2;
  v7 = v3;
  return DetailsContentOffsetProxy.latestScrollMetrics.setter(v5);
}

double DetailsContentOffsetProxy.latestScrollMetrics.getter@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 824))();

  result = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t DetailsContentOffsetProxy.latestScrollMetrics.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  if (*(v1 + 104) == *result)
  {
    v5 = *(v1 + 128);
    v6 = *(v1 + 112);
    if (*(v1 + 120))
    {
      if (v6 == v2)
      {
        v7 = *(result + 16);
      }

      else
      {
        v7 = 0;
      }

      if (v7 != 1 || v5 != v4)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (*(result + 16))
      {
        goto LABEL_18;
      }

      if (v6 != v2 || v5 != v4)
      {
        goto LABEL_18;
      }
    }

    *(v1 + 104) = *result;
    *(v1 + 112) = v2;
    *(v1 + 120) = v3;
    *(v1 + 128) = v4;
    return result;
  }

LABEL_18:
  KeyPath = swift_getKeyPath();
  v11 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 832))(v11, partial apply for closure #1 in DetailsContentOffsetProxy.latestScrollMetrics.setter);
}

void (*DetailsContentOffsetProxy._headerContainerView.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DetailsContentOffsetProxy._headerContainerView.modify;
}

void DetailsContentOffsetProxy._headerContainerView.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t key path getter for DetailsContentOffsetProxy.headerContainerView : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 656))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsContentOffsetProxy.headerContainerView : DetailsContentOffsetProxy(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 664);
  v4 = *a1;
  return v3(v2);
}

uint64_t DetailsContentOffsetProxy.headerContainerView.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void DetailsContentOffsetProxy.headerContainerView.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for UIView();
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 832))(v8, partial apply for closure #1 in DetailsContentOffsetProxy.headerContainerView.setter);
}

void (*DetailsContentOffsetProxy.headerContainerView.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._headerContainerView.modify(v4);
  return DetailsContentOffsetProxy.headerContainerView.modify;
}

uint64_t DetailsContentOffsetProxy.__allocating_init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 24) = 0;
  *(v12 + 88) = 257;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 96) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  ObservationRegistrar.init()();
  *(v12 + 16) = a1;
  *(v12 + 48) = a5;
  *(v12 + 56) = a4;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  *(v12 + 80) = a6;
  return v12;
}

uint64_t DetailsContentOffsetProxy.init(tabIndex:topInset:bottomInsetDisregardingSafeAreaInset:contentOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 88) = 257;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 96) = 0;
  *(v6 + 120) = 1;
  *(v6 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  ObservationRegistrar.init()();
  *(v6 + 16) = a1;
  *(v6 + 48) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 80) = a6;
  return v6;
}

uint64_t DetailsContentOffsetProxy.isActive.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[144] == v2)
  {
    v1[144] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 832))(v5, partial apply for closure #1 in DetailsContentOffsetProxy.isActive.setter);
  }

  return result;
}

uint64_t DetailsContentOffsetProxy.updateContentOffset(_:)()
{
  (*(*v0 + 416))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy12CoreGraphics7CGFloatVGMd);
  Binding.wrappedValue.setter();
}

uint64_t key path getter for DetailsContentOffsetProxy.isActive : DetailsContentOffsetProxy@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result & 1;
  return result;
}

uint64_t DetailsContentOffsetProxy.isActive.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();

  swift_beginAccess();
  return v0[144];
}

void (*DetailsContentOffsetProxy.isActive.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 824))(KeyPath);

  v4[5] = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy, type metadata accessor for DetailsContentOffsetProxy);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsContentOffsetProxy._isActive.modify();
  return DetailsContentOffsetProxy.isActive.modify;
}

uint64_t DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.getter()
{
  swift_getKeyPath();
  (*(*v0 + 824))();
}

uint64_t key path getter for DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded : DetailsContentOffsetProxy@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 824))();

  *a2 = v3[19];
}

uint64_t DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter(uint64_t a1)
{
  if (!v1[19])
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 832))(v5, closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setterpartial apply);
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[19] = a1;
}

uint64_t DetailsContentOffsetProxy.setScrollMetrics(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32[-v5];
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v33[0] = *a1;
  *&v33[1] = v8;
  v34 = v9;
  v35 = v10;
  v11 = DetailsContentOffsetProxy.latestScrollMetrics.setter(v33);
  v12 = v10 + (*(*v2 + 560))(v11);
  v13 = v12 - v8;
  if (v9)
  {
    v14.n128_f64[0] = v13 - (*(*v2 + 360))();
    if (v14.n128_f64[0] < 0.0)
    {
      v14.n128_f64[0] = 0.0;
    }

    v15 = (*(*v2 + 320))(v14);
    result = (*(*v2 + 720))(v15);
    if (result)
    {
      result = (*(*v2 + 488))();
      if ((result & 1) == 0)
      {
        v18 = *(*v2 + 688);
        v17.n128_f64[0] = v7;

        return v18(v17);
      }
    }
  }

  else
  {
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v19.n128_f64[0] = v13 + (*(*v2 + 312))();
    if (v12 < v19.n128_f64[0])
    {
      v19.n128_f64[0] = v12;
    }

    if (v19.n128_f64[0] < 0.0)
    {
      v19.n128_f64[0] = 0.0;
    }

    v20 = (*(*v2 + 320))(v19);
    if (((*(*v2 + 720))(v20) & 1) != 0 && ((*(*v2 + 488))() & 1) == 0)
    {
      (*(*v2 + 688))(v7);
    }

    swift_getKeyPath();
    (*(*v2 + 824))();

    v21 = v2[19];
    v22 = MEMORY[0x1E69E7CA8];
    if (v21)
    {

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      MEMORY[0x193AEAAE0](v21, v22 + 8, v23, MEMORY[0x1E69E7288]);
    }

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    type metadata accessor for MainActor();

    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    *(v26 + 16) = v25;
    *(v26 + 24) = v27;
    *(v26 + 32) = v2;
    *(v26 + 40) = v12;
    *(v26 + 48) = v8;
    v28 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:), v26);
    if (v2[19] && (, __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd), v29 = static Task.== infix(_:_:)(), , (v29 & 1) != 0))
    {
      v2[19] = v28;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v31 = MEMORY[0x1EEE9AC00](KeyPath);
      *&v32[-16] = v2;
      *&v32[-8] = v28;
      (*(*v2 + 832))(v31, partial apply for closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter);
    }
  }

  return result;
}

uint64_t closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return MEMORY[0x1EEE6DFA0](closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:), v9, v8);
}

uint64_t closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);
  }

  else
  {
    v8 = closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  v1 = *(v0 + 96);

  v2 = static Task<>.checkCancellation()();
  if (!v1)
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = v4 + (*(**(v0 + 16) + 264))(v2) - v3;
    if (v5 < 0.0)
    {
      v6 = *(v0 + 24);
      v7 = *(v0 + 16);
      v8.n128_f64[0] = v5 + (*(*v7 + 312))();
      if (v8.n128_f64[0] > v6)
      {
        v8.n128_f64[0] = v6;
      }

      if (v8.n128_f64[0] < 0.0)
      {
        v8.n128_f64[0] = 0.0;
      }

      (*(*v7 + 320))(v8);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

BOOL DetailsContentOffsetProxy.isReadyForInitialScroll.getter()
{
  if (((*(*v0 + 488))() & 1) == 0)
  {
    return 0;
  }

  v1 = (*v0 + 608);
  v2 = *v1;
  v3 = (*v1)(&v11);
  v4 = v14;
  v5 = v4 + (*(*v0 + 560))(v3);
  v6 = v2(&v11);
  v7 = v12;
  if (v13)
  {
    v8 = (*(*v0 + 360))(v6) + v7;
    return v5 + -1.0 < v8 + (*(*v0 + 384))();
  }

  else
  {
    return v5 + -1.0 < v12;
  }
}

uint64_t DetailsContentOffsetProxy.deinit()
{

  MEMORY[0x193AEBC30](v0 + 136);

  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DetailsContentOffsetProxy.__deallocating_deinit()
{

  MEMORY[0x193AEBC30](v0 + 136);

  v1 = OBJC_IVAR____TtC20CommunicationDetails25DetailsContentOffsetProxy___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t Array<A>.updateTopInset(_:)(unint64_t result, double a2)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AEB000](v5, v2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        (*(*v6 + 368))(a2);

        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v2 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      if (v2 < 0)
      {
        v8 = v2;
      }

      else
      {
        v8 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x193AEB0F0](v8);
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

BOOL specialized static DetailsContentOffsetProxy.ScrollMetrics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v4 != v3)
    {
      v2 = 0;
    }

    if (v2 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (v4 != v3)
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

double partial apply for closure #1 in DetailsContentOffsetProxy.latestScrollMetrics.setter()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  *(v1 + 104) = result;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;
  *(v1 + 128) = v5;
  return result;
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.isActive.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  return result;
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)()
{
  v2 = *(v0 + 4);
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:);

  return closure #1 in DetailsContentOffsetProxy.setScrollMetrics(_:)(v3, v4, v5, v6, v7, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter()
{
  return partial apply for closure #1 in DetailsContentOffsetProxy.hackyTaskToShrinkBottomInsetIfNeeded.setter();
}

{
  *(*(v0 + 16) + 152) = *(v0 + 24);
}

uint64_t type metadata completion function for DetailsContentOffsetProxy()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsContentOffsetProxy.ScrollMetrics.ContentHeight(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DetailsContentOffsetProxy and conformance DetailsContentOffsetProxy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DetailsViewController.CommunicationType.contacts.getter()
{
  v1 = *v0;
  v2 = v0[9];
  if (v2 < 0)
  {

    return v1;
  }

  else
  {
    v14 = v0[11];
    v15 = v0[12];
    v3 = v0[7];
    v12 = v0[8];
    v13 = v0[10];
    v5 = v0[5];
    v4 = v0[6];
    v7 = v0[3];
    v6 = v0[4];
    v9 = v0[1];
    v8 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1901E6CD0;
    *(v10 + 32) = v1;
    *(v10 + 40) = v9;
    *(v10 + 48) = v8;
    *(v10 + 56) = v7;
    *(v10 + 64) = v6;
    *(v10 + 72) = v5;
    *(v10 + 80) = v4;
    *(v10 + 88) = v3;
    *(v10 + 96) = v12;
    *(v10 + 104) = v2;
    *(v10 + 112) = v13;
    *(v10 + 120) = v14;
    *(v10 + 128) = v15;
    v17[0] = v1;
    v17[1] = v9;
    v17[2] = v8;
    v17[3] = v7;
    v17[4] = v6;
    v17[5] = v5;
    v17[6] = v4;
    v17[7] = v3;
    v17[8] = v12;
    v17[9] = v2;
    v17[10] = v13;
    v17[11] = v14;
    v17[12] = v15;
    outlined init with copy of CommunicationDetailsContact(v17, v16);
  }

  return v10;
}

void *DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:)(char a1)
{
  if (((*(v1 + 75) | (*(v1 + 79) << 32)) & 0x8000000000000000) != 0)
  {
    if (a1)
    {
      return &outlined read-only object #1 of DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (*(v1 + 74))
  {
    return &outlined read-only object #0 of DetailsViewController.CommunicationType.defaultEditMenuActions(supportsEditGroupIdentity:);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0bC7ContactV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    outlined init with copy of CommunicationDetailsContact(v31, v16);
    outlined init with copy of CommunicationDetailsContact(v37, v16);
    lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact();
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    outlined destroy of CommunicationDetailsContact(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    outlined destroy of CommunicationDetailsContact(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

void *_sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails10EditActionO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    v13 = 0;
    return (v13 & 1);
  }

  if (!v2 || a1 == a2)
  {
    v13 = 1;
    return (v13 & 1);
  }

  v3 = (a2 + 80);
  v4 = a1 + 40;
  while (1)
  {
    result = *(v4 - 8);
    v17 = result;
    v18 = *v4;
    v19 = *(v4 + 8);
    v20 = *(v4 + 16);
    v21 = *(v4 + 24);
    v22 = *(v4 + 32);
    v23 = *(v4 + 40);
    if (!v2)
    {
      break;
    }

    v6 = *(v3 - 6);
    v7 = *(v3 - 5);
    v8 = *(v3 - 4);
    v9 = *(v3 - 3);
    v10 = *(v3 - 2);
    v11 = *(v3 - 1);
    v14 = v2;
    v15 = v6;
    v12 = *v3;
    v16 = *v3;
    outlined copy of EditAction(result, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40));
    outlined copy of EditAction(v6, v7, v8, v9, v10, v11, v12);
    lazy protocol witness table accessor for type EditAction and conformance EditAction();
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined consume of EditAction(v15, v7, v8, v9, v10, v11, v16);
    outlined consume of EditAction(v17, v18, v19, v20, v21, v22, v23);
    if (v13)
    {
      v4 += 56;
      v3 += 56;
      v2 = v14 - 1;
      if (v14 != 1)
      {
        continue;
      }
    }

    return (v13 & 1);
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

Swift::Int DetailsViewController.HeaderStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DetailsViewController.HeaderStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DetailsViewController.HeaderStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

uint64_t DetailsViewController.ObservableConfiguration.contacts.getter()
{
  (*(*v0 + 200))(&v8);
  v1 = v8;
  v2 = v13;
  if (v13 < 0)
  {

    outlined destroy of DetailsViewController.CommunicationType(&v8);
    return v1;
  }

  else
  {
    v3 = v15;
    v7 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20CommunicationDetails0dE7ContactVGMd);
    result = swift_allocObject();
    *(result + 16) = xmmword_1901E6CD0;
    *(result + 32) = v1;
    v5 = v9;
    *(result + 56) = v10;
    *(result + 40) = v5;
    v6 = v11;
    *(result + 88) = v12;
    *(result + 72) = v6;
    *(result + 104) = v2;
    *(result + 112) = v7;
    *(result + 128) = v3;
  }

  return result;
}

__n128 key path getter for DetailsViewController.ObservableConfiguration.communicationType : DetailsViewController.ObservableConfiguration@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 200))(v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.communicationType : DetailsViewController.ObservableConfiguration(__int128 *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v18 = a1[4];
  v19 = v3;
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v16 = a1[2];
  v17 = v5;
  v8 = a1[5];
  v13[4] = v18;
  v13[5] = v8;
  v13[0] = v7;
  v13[1] = v6;
  v20 = *(a1 + 12);
  v9 = *a2;
  v14 = *(a1 + 12);
  v13[2] = v16;
  v13[3] = v2;
  v10 = *(*v9 + 208);
  outlined init with copy of DetailsViewController.CommunicationType(v15, v12);
  return v10(v13);
}

uint64_t DetailsViewController.ObservableConfiguration.communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  v3 = *(v1 + 144);
  if ((v3 & 0xFFFFFFFFFEFEFEFELL) == 0xFFEFEFEFELL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 104);
    v6 = *(v1 + 120);
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    v7 = *(v1 + 136);
    v8 = *(v1 + 72);
    *a1 = v8;
    *(a1 + 16) = v4;
    *(a1 + 64) = v7;
    *(a1 + 72) = v3;
    *(a1 + 80) = *(v1 + 152);
    *(a1 + 96) = *(v1 + 168);
    v11[0] = v8;
    v11[1] = v4;
    v11[2] = v5;
    v11[3] = v6;
    v12 = v7;
    v13 = v3;
    v15 = *(v1 + 168);
    v14 = *(v1 + 152);
    return outlined init with copy of DetailsViewController.CommunicationType(v11, v10);
  }

  return result;
}

uint64_t DetailsViewController.ObservableConfiguration.communicationType.setter(__int128 *a1)
{
  v2 = a1[5];
  v52 = a1[4];
  v53 = v2;
  v54 = *(a1 + 12);
  v3 = a1[1];
  v51[0] = *a1;
  v51[1] = v3;
  v4 = a1[3];
  v51[2] = a1[2];
  v51[3] = v4;
  if ((*(&v52 + 1) & 0x8000000000000000) != 0)
  {
    v17 = *(&v51[0] + 1);
    v36 = *&v51[0];

    specialized MutableCollection<>.sort(by:)(&v36);
    *&v37 = v36;
    *(&v37 + 1) = v17;
    *(&v41 + 1) = 0x8000000000000000;
    v18 = *(v1 + 120);
    v19 = *(v1 + 152);
    v48 = *(v1 + 136);
    v49 = v19;
    v50 = *(v1 + 168);
    v20 = *(v1 + 88);
    v44 = *(v1 + 72);
    v45 = v20;
    v46 = *(v1 + 104);
    v47 = v18;
    v21 = v17;
    outlined init with copy of DetailsViewController.CommunicationType?(&v44, v34);
    v22 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(&v44, &v37);
    outlined destroy of DetailsViewController.CommunicationType?(&v44, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
    if (v22)
    {
      KeyPath = swift_getKeyPath();
      v24 = MEMORY[0x1EEE9AC00](KeyPath);
      v32 = v1;
      v33 = &v37;
      (*(*v1 + 840))(v24, partial apply for closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter);
      outlined destroy of DetailsViewController.CommunicationType(v51);
    }
  }

  else
  {
    v5 = a1[5];
    v41 = a1[4];
    v42 = v5;
    v43 = *(a1 + 12);
    v6 = a1[1];
    v37 = *a1;
    v38 = v6;
    v7 = a1[3];
    v39 = a1[2];
    v40 = v7;
    v8 = *(v1 + 88);
    v9 = *(v1 + 104);
    v44 = *(v1 + 72);
    v45 = v8;
    v10 = *(v1 + 120);
    v11 = *(v1 + 136);
    v12 = *(v1 + 152);
    v50 = *(v1 + 168);
    v48 = v11;
    v49 = v12;
    v46 = v9;
    v47 = v10;
    outlined init with copy of DetailsViewController.CommunicationType(v51, v34);
    outlined init with copy of DetailsViewController.CommunicationType?(&v44, v34);
    v13 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(&v44, &v37);
    outlined destroy of DetailsViewController.CommunicationType?(&v44, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
    if (v13)
    {
      v14 = swift_getKeyPath();
      v15 = MEMORY[0x1EEE9AC00](v14);
      v32 = v1;
      v33 = &v37;
      (*(*v1 + 840))(v15, closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setterpartial apply);
      outlined destroy of DetailsViewController.CommunicationType(v51);
      outlined destroy of DetailsViewController.CommunicationType(v51);
    }
  }

  outlined destroy of DetailsViewController.CommunicationType(v51);
  v25 = *(v1 + 120);
  v26 = *(v1 + 152);
  v34[4] = *(v1 + 136);
  v34[5] = v26;
  v35 = *(v1 + 168);
  v27 = *(v1 + 88);
  v34[0] = *(v1 + 72);
  v34[1] = v27;
  v34[2] = *(v1 + 104);
  v34[3] = v25;
  v28 = v38;
  *(v1 + 72) = v37;
  *(v1 + 88) = v28;
  v29 = v40;
  *(v1 + 104) = v39;
  v30 = v41;
  v31 = v42;
  *(v1 + 168) = v43;
  *(v1 + 152) = v31;
  *(v1 + 136) = v30;
  *(v1 + 120) = v29;
  return outlined destroy of DetailsViewController.CommunicationType?(v34, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
}

void (*DetailsViewController.ObservableConfiguration.communicationType.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x210uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 520) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v6 = *(v1 + 144);
  if ((v6 & 0xFFFFFFFFFEFEFEFELL) == 0xFFEFEFEFELL)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *v4 = *(v1 + 72);
    v7 = *(v1 + 88);
    v8 = *(v1 + 120);
    v9 = *(v1 + 136);
    *(v4 + 32) = *(v1 + 104);
    *(v4 + 48) = v8;
    *(v4 + 16) = v7;
    *(v4 + 64) = v9;
    *(v4 + 72) = v6;
    v10 = *(v1 + 152);
    *(v4 + 96) = *(v1 + 168);
    *(v4 + 80) = v10;
    v11 = *(v1 + 88);
    v12 = *(v1 + 104);
    v13 = *(v1 + 120);
    *(v4 + 168) = *(v1 + 136);
    *(v4 + 152) = v13;
    *(v4 + 136) = v12;
    *(v4 + 120) = v11;
    *(v4 + 104) = *(v1 + 72);
    *(v4 + 176) = v6;
    v14 = *(v1 + 152);
    *(v4 + 200) = *(v1 + 168);
    *(v4 + 184) = v14;
    outlined init with copy of DetailsViewController.CommunicationType(v4 + 104, v4 + 208);
    return DetailsViewController.ObservableConfiguration.communicationType.modify;
  }

  return result;
}

void DetailsViewController.ObservableConfiguration.communicationType.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    v5 = v2[4];
    v4 = v2[5];
    *(v2 + 376) = v5;
    *(v2 + 392) = v4;
    v6 = v2[1];
    *(v2 + 312) = *v2;
    *(v2 + 328) = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v10 = v2[2];
    *(v2 + 344) = v10;
    *(v2 + 360) = v7;
    v11 = v2[5];
    v22 = v5;
    v23 = v11;
    v18 = v9;
    v19 = v8;
    *(v2 + 51) = *(v2 + 12);
    v24 = *(v2 + 12);
    v20 = v10;
    v21 = v3;
    outlined init with copy of DetailsViewController.CommunicationType(v2 + 312, (v2 + 26));
    DetailsViewController.ObservableConfiguration.communicationType.setter(&v18);
    v12 = v2[5];
    v2[17] = v2[4];
    v2[18] = v12;
    *(v2 + 38) = *(v2 + 12);
    v13 = v2[1];
    v2[13] = *v2;
    v2[14] = v13;
    v14 = v2[3];
    v2[15] = v2[2];
    v2[16] = v14;
    outlined destroy of DetailsViewController.CommunicationType((v2 + 13));
  }

  else
  {
    v15 = v2[5];
    v22 = v2[4];
    v23 = v15;
    v24 = *(v2 + 12);
    v16 = v2[1];
    v18 = *v2;
    v19 = v16;
    v17 = v2[3];
    v20 = v2[2];
    v21 = v17;
    DetailsViewController.ObservableConfiguration.communicationType.setter(&v18);
  }

  free(v2);
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 248))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNVisualIdentity) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNVisualIdentity) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 256);
  sub_19011CAE8(v3);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[2];
  sub_19011CAE8(v1);
  return v1;
}

void (*DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onUpdateGroupIdentity.modify();
  return DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify;
}

void DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify(void *a1)
{
  DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.initialTabId : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.initialTabId : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 304);

  return v4(v2, v3);
}

uint64_t DetailsViewController.ObservableConfiguration.initialTabId.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[4];

  return v1;
}

uint64_t DetailsViewController.ObservableConfiguration.initialTabId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[4] == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[4] = a1;
    v2[5] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x1EEE9AC00](KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 840))(v9, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.initialTabId.setter);
}

void (*DetailsViewController.ObservableConfiguration.initialTabId.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._initialTabId.modify();
  return DetailsViewController.ObservableConfiguration.initialTabId.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.defaultEditMenuActions : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.defaultEditMenuActions : DetailsViewController.ObservableConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.defaultEditMenuActions.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails10EditActionO_Tt1g5(v3, a1);

  if (v4)
  {
    v1[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 840))(v7, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter);
  }
}

void (*DetailsViewController.ObservableConfiguration.defaultEditMenuActions.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._defaultEditMenuActions.modify();
  return DetailsViewController.ObservableConfiguration.defaultEditMenuActions.modify;
}

void DetailsViewController.ObservableConfiguration.presentationMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t DetailsViewController.ObservableConfiguration._communicationType.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  v3 = *(v1 + 120);
  v5 = *(v1 + 152);
  v14 = *(v1 + 136);
  v4 = v14;
  v15 = v5;
  v16 = *(v1 + 168);
  v6 = v16;
  v7 = *(v1 + 88);
  v11[0] = *(v1 + 72);
  v11[1] = v7;
  v12 = *(v1 + 104);
  v8 = v12;
  v13 = v3;
  *a1 = v11[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  return outlined init with copy of DetailsViewController.CommunicationType?(v11, v10);
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration._communicationType : DetailsViewController.ObservableConfiguration@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 832))();

  v17 = *(v3 + 168);
  v4 = v17;
  v5 = *(v3 + 152);
  v15 = *(v3 + 136);
  v6 = v15;
  v16 = v5;
  v7 = *(v3 + 120);
  v8 = *(v3 + 88);
  v12[0] = *(v3 + 72);
  v12[1] = v8;
  v13 = *(v3 + 104);
  v14 = v7;
  *(a2 + 32) = v13;
  *(a2 + 48) = v7;
  *(a2 + 64) = v6;
  *(a2 + 80) = v5;
  *(a2 + 96) = v4;
  v9 = *(v3 + 88);
  *a2 = *(v3 + 72);
  *(a2 + 16) = v9;
  return outlined init with copy of DetailsViewController.CommunicationType?(v12, v11);
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration._communicationType : DetailsViewController.ObservableConfiguration(uint64_t a1)
{
  v2 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v2;
  v8 = *(a1 + 96);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  outlined init with copy of DetailsViewController.CommunicationType?(v7, v6);
  return DetailsViewController.ObservableConfiguration._communicationType.setter(a1);
}

uint64_t DetailsViewController.ObservableConfiguration._communicationType.setter(__int128 *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[2];
  v29 = a1[3];
  v30 = v2;
  v31 = v3;
  v32 = *(a1 + 12);
  v5 = a1[1];
  v26 = *a1;
  v27 = v5;
  v28 = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 104);
  v33[0] = *(v1 + 72);
  v33[1] = v6;
  v8 = *(v1 + 120);
  v9 = *(v1 + 136);
  v10 = *(v1 + 152);
  v34 = *(v1 + 168);
  v33[4] = v9;
  v33[5] = v10;
  v33[2] = v7;
  v33[3] = v8;
  outlined init with copy of DetailsViewController.CommunicationType?(v33, v24);
  v11 = specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(v33, &v26);
  outlined destroy of DetailsViewController.CommunicationType?(v33, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    v22 = v1;
    v23 = &v26;
    (*(*v1 + 840))(v13, closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setterpartial apply);
    outlined destroy of DetailsViewController.CommunicationType?(&v26, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
  }

  else
  {
    v15 = *(v1 + 120);
    v16 = *(v1 + 152);
    v24[4] = *(v1 + 136);
    v24[5] = v16;
    v25 = *(v1 + 168);
    v17 = *(v1 + 88);
    v24[0] = *(v1 + 72);
    v24[1] = v17;
    v24[2] = *(v1 + 104);
    v24[3] = v15;
    *(v1 + 72) = v26;
    v18 = v28;
    *(v1 + 88) = v27;
    *(v1 + 104) = v18;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    *(v1 + 168) = v32;
    *(v1 + 152) = v21;
    *(v1 + 136) = v20;
    *(v1 + 120) = v19;
    return outlined destroy of DetailsViewController.CommunicationType?(v24, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
  }
}

__n128 closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  v15 = *(a1 + 152);
  v16 = *(a1 + 136);
  v6 = *(a2 + 32);
  *(a1 + 120) = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 136) = *(a2 + 64);
  *(a1 + 152) = v7;
  v8 = *(a2 + 16);
  *(a1 + 72) = *a2;
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  *(a1 + 88) = v8;
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 96);
  *(a1 + 104) = v6;
  outlined init with copy of DetailsViewController.CommunicationType?(a2, v17);
  outlined consume of DetailsViewController.CommunicationType?(v2, v3, v9, v10, v11, v12, v4, v5, v16, *(&v16 + 1), v15, *(&v15 + 1), v13);
  return result;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 440))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNGroupIdentity) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNGroupIdentity) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 448);
  sub_19011CAE8(v3);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[22];
  sub_19011CAE8(v1);
  return v1;
}

void (*DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onGroupIdentityUpdate.modify();
  return DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onContactsUpdate : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 488))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = _sIeg_ytIegr_TRTA_0;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onContactsUpdate : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 496);
  sub_19011CAE8(v3);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onContactsUpdate.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[24];
  sub_19011CAE8(v1);
  return v1;
}

void (*DetailsViewController.ObservableConfiguration.onContactsUpdate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onContactsUpdate.modify();
  return DetailsViewController.ObservableConfiguration.onContactsUpdate.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.onCapabilityChange : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 536))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.onCapabilityChange : DetailsViewController.ObservableConfiguration(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DetailsViewController.ObservableConfiguration.ConfigurationCapabilities) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 544);
  sub_19011CAE8(v3);
  return v7(v6, v5);
}

uint64_t DetailsViewController.ObservableConfiguration.onCapabilityChange.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
  v1 = v0[26];
  sub_19011CAE8(v1);
  return v1;
}

uint64_t DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  (*(*v5 + 840))();
  a5(a1, a2);
}

void (*DetailsViewController.ObservableConfiguration.onCapabilityChange.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._onCapabilityChange.modify();
  return DetailsViewController.ObservableConfiguration.onCapabilityChange.modify;
}

void *key path getter for DetailsViewController.ObservableConfiguration.headerStyle : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.headerStyle : DetailsViewController.ObservableConfiguration(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 592))(&v4);
}

uint64_t DetailsViewController.ObservableConfiguration.headerStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 832))();

  result = swift_beginAccess();
  *a1 = v1[224];
  return result;
}

uint64_t DetailsViewController.ObservableConfiguration.headerStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  if (v2 == v1[224])
  {
    v1[224] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 840))(v5, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.headerStyle.setter);
  }

  return result;
}

void (*DetailsViewController.ObservableConfiguration.headerStyle.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._headerStyle.modify();
  return DetailsViewController.ObservableConfiguration.headerStyle.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.capabilities : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.capabilities : DetailsViewController.ObservableConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 640);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.capabilities.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

uint64_t DetailsViewController.ObservableConfiguration.capabilities.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails0C14ViewControllerC23ObservableConfigurationC0G12CapabilitiesO_Tt1g5(v3, a1);

  if (v4)
  {
    v1[29] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 840))(v7, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.capabilities.setter);
  }
}

void (*DetailsViewController.ObservableConfiguration.capabilities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._capabilities.modify();
  return DetailsViewController.ObservableConfiguration.capabilities.modify;
}

uint64_t DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, char *a6)
{
  v12 = swift_allocObject();
  v13 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v14 = *(a5 + 80);
  v30 = *(a5 + 64);
  v31 = v14;
  v32 = *(a5 + 96);
  v15 = *(a5 + 16);
  v29[0] = *a5;
  v29[1] = v15;
  v16 = *(a5 + 48);
  v29[2] = *(a5 + 32);
  v29[3] = v16;
  v17 = *a6;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0xFFEFEFEFELL;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
  *(v12 + 232) = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CC0];
  *(v12 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 248) = v18;
  ObservationRegistrar.init()();
  *(v12 + 65) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = v13;
  *(v12 + 64) = a3;
  *(v12 + 224) = v17;

  outlined init with copy of DetailsViewController.CommunicationType(v29, v28);
  DetailsViewController.ObservableConfiguration.communicationType.setter(a5);
  v19 = *(a2 + 16);

  if (v19)
  {
    outlined destroy of DetailsViewController.CommunicationType(v29);
  }

  else
  {
    v28[0] = 10;
    v20 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v28);
    if (((*(&v30 + 11) | (SHIBYTE(v30) << 32)) & 0x8000000000000000) != 0)
    {
      v21 = v20;
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v22 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    else
    {
      v21 = BYTE10(v30);
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v22 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = v18;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v23);
  }

  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  [v25 addObserver:v12 selector:sel_updateContactsWithNotification_ name:*NSNotificationName.contactsChanged.unsafeMutableAddressor() object:0];

  v26 = [v24 defaultCenter];
  [v26 addObserver:v12 selector:sel_updateGroupIdentityWithNotification_ name:*NSNotificationName.groupIdentityChanged.unsafeMutableAddressor() object:0];

  return v12;
}

uint64_t DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, char *a6)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a5 + 80);
  v35 = *(a5 + 64);
  v36 = v13;
  v37 = *(a5 + 96);
  v14 = *(a5 + 16);
  v34[0] = *a5;
  v34[1] = v14;
  v15 = *(a5 + 48);
  v34[2] = *(a5 + 32);
  v34[3] = v15;
  v16 = *a6;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0xFFEFEFEFELL;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0;
  *(v6 + 232) = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CC0];
  *(v6 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 248) = v17;
  ObservationRegistrar.init()();
  *(v6 + 65) = a1;
  *(v6 + 48) = a2;
  *(v6 + 56) = v11;
  *(v6 + 64) = v12;
  *(v6 + 224) = v16;
  v18 = *(a5 + 80);
  v32[4] = *(a5 + 64);
  v32[5] = v18;
  v33 = *(a5 + 96);
  v19 = *(a5 + 16);
  v32[0] = *a5;
  v32[1] = v19;
  v20 = *(a5 + 48);
  v32[2] = *(a5 + 32);
  v32[3] = v20;
  v21 = *(*v6 + 208);

  outlined init with copy of DetailsViewController.CommunicationType(v34, v31);
  v21(v32);
  v22 = *(a2 + 16);

  if (v22)
  {
    outlined destroy of DetailsViewController.CommunicationType(v34);
  }

  else
  {
    LOBYTE(v32[0]) = 10;
    v23 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v32);
    if (((*(&v35 + 11) | (SHIBYTE(v35) << 32)) & 0x8000000000000000) != 0)
    {
      v24 = v23;
      outlined destroy of DetailsViewController.CommunicationType(v34);
      v25 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    else
    {
      v24 = BYTE10(v35);
      outlined destroy of DetailsViewController.CommunicationType(v34);
      v25 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:headerActionHandlers:communicationType:headerStyle:);
    }

    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v17;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v26);
  }

  v27 = objc_opt_self();
  v28 = [v27 defaultCenter];
  [v28 addObserver:v6 selector:sel_updateContactsWithNotification_ name:*NSNotificationName.contactsChanged.unsafeMutableAddressor() object:0];

  v29 = [v27 defaultCenter];
  [v29 addObserver:v6 selector:sel_updateGroupIdentityWithNotification_ name:*NSNotificationName.groupIdentityChanged.unsafeMutableAddressor() object:0];

  return v6;
}

uint64_t DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.setter(uint64_t a1)
{
  swift_beginAccess();

  v4 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(v3, a1);

  if (v4)
  {
    v1[30] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 840))(v7, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.setter);
  }
}

uint64_t DetailsViewController.ObservableConfiguration.contactsPerformingBlock.setter(uint64_t a1)
{
  swift_beginAccess();
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[31], a1))
  {
    v1[31] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 840))(v5, partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsPerformingBlock.setter);
  }
}

uint64_t DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v12 = *(a4 + 80);
  v25 = *(a4 + 64);
  v26 = v12;
  v27 = *(a4 + 96);
  v13 = *(a4 + 16);
  v24[0] = *a4;
  v24[1] = v13;
  v14 = *(a4 + 48);
  v24[2] = *(a4 + 32);
  v24[3] = v14;
  v15 = *a5;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0xFFEFEFEFELL;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0;
  *(v10 + 232) = MEMORY[0x1E69E7CD0];
  v16 = MEMORY[0x1E69E7CC0];
  *(v10 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + 248) = v16;
  ObservationRegistrar.init()();
  *(v10 + 65) = a1;
  *(v10 + 48) = a2;
  *(v10 + 56) = v11;
  *(v10 + 64) = a3;
  *(v10 + 224) = v15;

  outlined init with copy of DetailsViewController.CommunicationType(v24, v23);
  DetailsViewController.ObservableConfiguration.communicationType.setter(a4);
  v17 = *(a2 + 16);

  if (v17)
  {
    outlined destroy of DetailsViewController.CommunicationType(v24);
  }

  else
  {
    v23[0] = 10;
    v18 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v23);
    if (((*(&v25 + 11) | (SHIBYTE(v25) << 32)) & 0x8000000000000000) != 0)
    {
      v19 = v18;
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v20 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    else
    {
      v19 = BYTE10(v25);
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v20 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.__allocating_init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v21);
  }

  return v10;
}

uint64_t DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:)(char a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = *(a4 + 80);
  v30 = *(a4 + 64);
  v31 = v11;
  v32 = *(a4 + 96);
  v12 = *(a4 + 16);
  v29[0] = *a4;
  v29[1] = v12;
  v13 = *(a4 + 48);
  v29[2] = *(a4 + 32);
  v29[3] = v13;
  v14 = *a5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0xFFEFEFEFELL;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 0u;
  *(v5 + 216) = 0;
  *(v5 + 232) = MEMORY[0x1E69E7CD0];
  v15 = MEMORY[0x1E69E7CC0];
  *(v5 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v5 + 248) = v15;
  ObservationRegistrar.init()();
  *(v5 + 65) = a1;
  *(v5 + 48) = a2;
  *(v5 + 56) = v9;
  *(v5 + 64) = v10;
  *(v5 + 224) = v14;
  v16 = *(a4 + 80);
  v27[4] = *(a4 + 64);
  v27[5] = v16;
  v28 = *(a4 + 96);
  v17 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v17;
  v18 = *(a4 + 48);
  v27[2] = *(a4 + 32);
  v27[3] = v18;
  v19 = *(*v5 + 208);

  outlined init with copy of DetailsViewController.CommunicationType(v29, v26);
  v19(v27);
  v20 = *(a2 + 16);

  if (v20)
  {
    outlined destroy of DetailsViewController.CommunicationType(v29);
  }

  else
  {
    LOBYTE(v27[0]) = 10;
    v21 = DetailsViewController.ObservableConfiguration.supportsCapability(_:)(v27);
    if (((*(&v30 + 11) | (SHIBYTE(v30) << 32)) & 0x8000000000000000) != 0)
    {
      v22 = v21;
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v23 = &outlined read-only object #1 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    else
    {
      v22 = BYTE10(v30);
      outlined destroy of DetailsViewController.CommunicationType(v29);
      v23 = &outlined read-only object #0 of DetailsViewController.ObservableConfiguration.init(showsTabForSinglePage:defaultEditMenuActions:presentationMode:communicationType:headerStyle:);
    }

    if (v22)
    {
      v24 = v23;
    }

    else
    {
      v24 = v15;
    }

    DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter(v24);
  }

  return v5;
}

uint64_t DetailsViewController.ObservableConfiguration.cnContacts.getter()
{
  v1 = (*(*v0 + 192))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 48;
    do
    {
      v4 = *(v1 + v3);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 104;
      --v2;
    }

    while (v2);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

Swift::Void __swiftcall DetailsViewController.ObservableConfiguration.handleUpdateContacts(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  v33 = *(v5 + 16);
  v34 = v11;
  v33(v10);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = v8;
    v15 = v14;
    *v14 = 134217984;
    *(v14 + 4) = *(with._rawValue + 2);

    _os_log_impl(&dword_190119000, v12, v13, "Processing contacts update with %ld contacts.", v15, 0xCu);
    v16 = v15;
    v8 = v32;
    MEMORY[0x193AEBB30](v16, -1, -1);
  }

  else
  {
  }

  v17 = *(v5 + 8);
  v18 = v17(v10, v4);
  if (*(with._rawValue + 2))
  {
    (*(*v2 + 200))(v47, v18);
    if ((v47[9] & 0x8000000000000000) != 0)
    {
      v27 = v47[1];

      *&v41[0] = with;
      *(&v41[0] + 1) = v27;
      *(&v44 + 1) = 0x8000000000000000;
      v28 = *(*v2 + 208);
      v29 = v27;

      v28(v41);
    }

    else
    {
      outlined destroy of DetailsViewController.CommunicationType(v47);
      v19 = *(with._rawValue + 7);
      v44 = *(with._rawValue + 6);
      v45 = v19;
      v46 = *(with._rawValue + 16);
      v20 = *(with._rawValue + 3);
      v41[0] = *(with._rawValue + 2);
      v41[1] = v20;
      v21 = *(with._rawValue + 5);
      v42 = *(with._rawValue + 4);
      v43 = v21;
      v36[0] = v41[0];
      v36[1] = v20;
      v36[2] = v42;
      v36[3] = v21;
      v37 = v44;
      v38 = DWORD2(v44) & 0x1010101;
      v39 = v45;
      v40 = v46;
      v22 = *(*v2 + 208);
      outlined init with copy of CommunicationDetailsContact(v41, &v35);
      v23 = v22(v36);
    }

    v30 = (*(*v2 + 488))(v23);
    if (v30)
    {
      v31 = v30;
      v30();
      _sSo16CNVisualIdentityCIegg_SgWOe_0(v31);
    }
  }

  else
  {
    (v33)(v8, v34, v4);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_190119000, v24, v25, "Tried to update contacts with an empty array.", v26, 2u);
      MEMORY[0x193AEBB30](v26, -1, -1);
    }

    v17(v8, v4);
  }
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 712))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist : DetailsViewController.ObservableConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 720);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

void (*DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._contactsRecentlyAddedToBlocklist.modify();
  return DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.modify;
}

uint64_t key path getter for DetailsViewController.ObservableConfiguration.contactsPerformingBlock : DetailsViewController.ObservableConfiguration@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 760))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DetailsViewController.ObservableConfiguration.contactsPerformingBlock : DetailsViewController.ObservableConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 768);

  return v2(v3);
}

uint64_t DetailsViewController.ObservableConfiguration.contactsPerformingBlock.getter()
{
  swift_getKeyPath();
  (*(*v0 + 832))();

  swift_beginAccess();
}

void (*DetailsViewController.ObservableConfiguration.contactsPerformingBlock.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 832))(KeyPath);

  v4[5] = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DetailsViewController.ObservableConfiguration._contactsPerformingBlock.modify();
  return DetailsViewController.ObservableConfiguration.contactsPerformingBlock.modify;
}

Swift::Void __swiftcall DetailsViewController.ObservableConfiguration.handleUpdatedBlocklist(with:)(Swift::OpaquePointer with)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v1 + 760))(v6);
  v10 = (*(*v1 + 776))(v25);
  *v11 = MEMORY[0x1E69E7CC0];

  v10(v25, 0);
  if (v9[2] == 1)
  {
    v13 = v9[4];
    v12 = v9[5];

    v14 = (*(*v2 + 728))(v25);
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v16;
    *v16 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, v13, v12, isUniquelyReferenced_nonNull_native);

    *v16 = v24;

    v14(v25, 0);
  }

  else
  {
    v18 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v18, v4);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = v9[2];

      *(v21 + 4) = v22;

      _os_log_impl(&dword_190119000, v19, v20, "Tried to update contactsRecentlyAddedToBlocklist, but contactsPerformingBlock has unexpected count: %ld", v21, 0xCu);
      MEMORY[0x193AEBB30](v21, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v5 + 8))(v8, v4);
  }

  (*(*v2 + 680))(with._rawValue);
}

void (*DetailsViewController.ObservableConfiguration.handleUpdateGroupIdentity(for:)(void *a1))(id)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 200))(v20, v6);
  if ((v20[9] & 0x8000000000000000) == 0)
  {
    return outlined destroy of DetailsViewController.CommunicationType(v20);
  }

  v10 = v20[0];

  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v5 + 16))(v8, v11, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_190119000, v12, v13, "Processing group identity change.", v14, 2u);
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v19[0] = v10;
  v19[1] = a1;
  v19[9] = 0x8000000000000000;
  v15 = *(*v2 + 208);
  v16 = a1;
  v17 = v15(v19);
  result = (*(*v2 + 440))(v17);
  if (result)
  {
    v18 = result;
    result(v16);
    return _sSo16CNVisualIdentityCIegg_SgWOe_0(v18);
  }

  return result;
}

void DetailsViewController.ObservableConfiguration.updateGroupIdentity(notification:)()
{
  v1 = v0;
  (*(*v0 + 200))(v6);
  if ((v6[9] & 0x8000000000000000) != 0)
  {
    v2 = v6[1];

    v3 = type metadata accessor for CNGroupIdentity();
    Notification.parse<A>(for:)(1, v3, &v5);
    v4 = v5;
    if (v5)
    {
      (*(*v1 + 792))(v5);
    }
  }

  else
  {
    outlined destroy of DetailsViewController.CommunicationType(v6);
  }
}

uint64_t DetailsViewController.ObservableConfiguration.deinit()
{
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 16));

  outlined consume of DetailsViewController.CommunicationType?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 176));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 192));
  _sSo16CNVisualIdentityCIegg_SgWOe_0(*(v0 + 208));

  v1 = OBJC_IVAR____TtCC20CommunicationDetails21DetailsViewController23ObservableConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DetailsViewController.ObservableConfiguration.__deallocating_deinit()
{
  DetailsViewController.ObservableConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12CoreGraphics7CGFloatVSaySo6UIViewCGGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      if (v20 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v20;
      }

      result = MEMORY[0x193AEB240](*(v7 + 40), *&v22);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS20CommunicationDetails29PhotosGridQuickLookDataSourceC16MediaPreviewItemCGMd);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 104 * a3 - 104;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 178);
      v12 = *(v10 + 74);
      if (v11 == v12)
      {
        result = *(v10 + 128);
        v13 = result == *(v10 + 24) && *(v10 + 136) == *(v10 + 32);
        if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 104;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if ((v11 & (v12 ^ 1) & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v23 = *(v10 + 168);
      v24 = *(v10 + 184);
      v25 = *(v10 + 200);
      v19 = *(v10 + 104);
      v20 = *(v10 + 120);
      v21 = *(v10 + 136);
      v22 = *(v10 + 152);
      v14 = *(v10 + 16);
      *(v10 + 104) = *v10;
      *(v10 + 120) = v14;
      v15 = *(v10 + 48);
      *(v10 + 136) = *(v10 + 32);
      v16 = *(v10 + 64);
      v17 = *(v10 + 80);
      *(v10 + 200) = *(v10 + 96);
      *(v10 + 184) = v17;
      *(v10 + 168) = v16;
      *(v10 + 152) = v15;
      *(v10 + 64) = v23;
      *(v10 + 80) = v24;
      *(v10 + 96) = v25;
      *v10 = v19;
      *(v10 + 16) = v20;
      *(v10 + 32) = v21;
      *(v10 + 48) = v22;
      v10 -= 104;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    type metadata accessor for MainActor();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v11 = *v9;
    v10 = v9[1];
    v21 = v8;
    v22 = v7;
    while (1)
    {
      v23 = v11;
      v24 = v10;
      v12 = *v7;
      v13 = *(v7 + 8);
      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v25.origin.x = v23;
      *&v25.size.width = v24;
      v25.origin.y = *(&v23 + 1);
      v25.size.height = *(&v24 + 1);
      MinX = CGRectGetMinX(v25);
      v26.origin.x = v12;
      v26.origin.y = v13;
      v26.size.width = v14;
      v26.size.height = v15;
      v17 = CGRectGetMinX(v26);

      if (MinX >= v17)
      {
LABEL_4:
        ++v4;
        v7 = v22 + 32;
        v8 = v21 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18 = *(v7 + 16);
      *(v7 + 32) = *v7;
      *(v7 + 48) = v18;
      *v7 = v11;
      *(v7 + 16) = v10;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
    v8 = (v7 + v4);
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        ++v8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v12;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v99 = *v99;
    if (!v99)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_116:
      v89 = v8 + 16;
      v90 = *(v8 + 2);
      if (v90 >= 2)
      {
        while (1)
        {
          v91 = *v5;
          if (!*v5)
          {
            goto LABEL_150;
          }

          v92 = &v8[16 * v90];
          v5 = *v92;
          v93 = &v89[2 * v90];
          v94 = v93[1];
          specialized _merge<A>(low:mid:high:buffer:by:)((v91 + 104 * *v92), (v91 + 104 * *v93), (v91 + 104 * v94), v99);
          if (v4)
          {
          }

          if (v94 < v5)
          {
            goto LABEL_138;
          }

          if (v90 - 2 >= *v89)
          {
            goto LABEL_139;
          }

          *v92 = v5;
          *(v92 + 1) = v94;
          v95 = *v89 - v90;
          if (*v89 < v90)
          {
            goto LABEL_140;
          }

          v90 = *v89 - 1;
          result = memmove(v93, v93 + 2, 16 * v95);
          *v89 = v90;
          v5 = a3;
          if (v90 <= 1)
          {
          }
        }
      }
    }

LABEL_146:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    goto LABEL_116;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_38;
    }

    v10 = *v5;
    v11 = *v5 + 104 * v7;
    v12 = *(v11 + 74);
    v13 = *v5 + 104 * v9;
    v14 = *(v13 + 74);
    if (v12 == v14)
    {
      result = *(v11 + 24);
      if (result == *(v13 + 24) && *(v11 + 32) == *(v13 + 32))
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }
    }

    else
    {
      v15 = v12 & (v14 ^ 1);
    }

    v7 = v9 + 2;
    if (v9 + 2 >= v6)
    {
LABEL_26:
      if (v15)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }

    v17 = (v10 + 104 * v9 + 282);
    do
    {
      v18 = *v17;
      v19 = *(v17 - 104);
      if (v18 == v19)
      {
        result = *(v17 - 50);
        if (result == *(v17 - 154) && *(v17 - 42) == *(v17 - 146))
        {
LABEL_15:
          if (v15)
          {
            goto LABEL_29;
          }

          goto LABEL_16;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      else
      {
        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }

        result = v19 ^ 1u;
      }

      if ((v15 ^ result))
      {
        goto LABEL_26;
      }

LABEL_16:
      ++v7;
      v17 += 104;
    }

    while (v6 != v7);
    v7 = v6;
    if (v15)
    {
LABEL_29:
      if (v7 < v9)
      {
        goto LABEL_143;
      }

      if (v9 < v7)
      {
        v21 = 104 * v7 - 104;
        v22 = v9;
        v23 = 104 * v9;
        v24 = v7;
        v96 = v22;
        do
        {
          if (v22 != --v24)
          {
            v26 = *v5;
            if (!*v5)
            {
              goto LABEL_149;
            }

            v25 = v26 + v21;
            v109 = *(v26 + v23 + 64);
            v111 = *(v26 + v23 + 80);
            v113 = *(v26 + v23 + 96);
            v101 = *(v26 + v23);
            v103 = *(v26 + v23 + 16);
            v105 = *(v26 + v23 + 32);
            v107 = *(v26 + v23 + 48);
            result = memmove((v26 + v23), (v26 + v21), 0x68uLL);
            *(v25 + 64) = v109;
            *(v25 + 80) = v111;
            *(v25 + 96) = v113;
            *v25 = v101;
            *(v25 + 16) = v103;
            *(v25 + 32) = v105;
            *(v25 + 48) = v107;
          }

          ++v22;
          v21 -= 104;
          v23 += 104;
        }

        while (v22 < v24);
        v9 = v96;
      }
    }

LABEL_38:
    v27 = v5[1];
    if (v7 >= v27)
    {
      goto LABEL_63;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_142;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_63;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_144;
    }

    if (v9 + a4 >= v27)
    {
      v28 = v5[1];
    }

    else
    {
      v28 = v9 + a4;
    }

    if (v28 < v9)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v7 == v28)
    {
LABEL_63:
      if (v7 < v9)
      {
        goto LABEL_141;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v43 = *(v8 + 2);
      v42 = *(v8 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v44;
      v45 = &v8[16 * v43];
      *(v45 + 4) = v9;
      *(v45 + 5) = v7;
      v46 = *v99;
      if (!*v99)
      {
        goto LABEL_151;
      }

      if (!v43)
      {
LABEL_3:
        v6 = v5[1];
        if (v7 >= v6)
        {
          goto LABEL_114;
        }

        continue;
      }

      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v8 + 4);
          v49 = *(v8 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_83:
          if (v51)
          {
            goto LABEL_129;
          }

          v64 = &v8[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_132;
          }

          v70 = &v8[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_136;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v74 = &v8[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_97:
        if (v69)
        {
          goto LABEL_131;
        }

        v77 = &v8[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_134;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_104:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v5)
        {
          goto LABEL_148;
        }

        v86 = *&v8[16 * v85 + 32];
        v87 = *&v8[16 * v47 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 104 * v86), (*v5 + 104 * *&v8[16 * v47 + 32]), (*v5 + 104 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v85 >= *(v8 + 2))
        {
          goto LABEL_126;
        }

        v88 = &v8[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = specialized Array.remove(at:)(v47);
        v44 = *(v8 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v8[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_127;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_128;
      }

      v59 = &v8[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_130;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_133;
      }

      if (v63 >= v55)
      {
        v81 = &v8[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_137;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

    break;
  }

  v29 = *v5;
  v30 = *v5 + 104 * v7 - 104;
  v97 = v9;
  v31 = v9 - v7;
LABEL_49:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 178);
    v35 = *(v33 + 74);
    if (v34 == v35)
    {
      result = *(v33 + 128);
      if (result != *(v33 + 24) || *(v33 + 136) != *(v33 + 32))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          goto LABEL_58;
        }
      }

LABEL_48:
      ++v7;
      v30 += 104;
      --v31;
      if (v7 == v28)
      {
        v7 = v28;
        v5 = a3;
        v9 = v97;
        goto LABEL_63;
      }

      goto LABEL_49;
    }

    if ((v34 & (v35 ^ 1) & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_58:
    if (!v29)
    {
      break;
    }

    v110 = *(v33 + 168);
    v112 = *(v33 + 184);
    v114 = *(v33 + 200);
    v102 = *(v33 + 104);
    v104 = *(v33 + 120);
    v106 = *(v33 + 136);
    v108 = *(v33 + 152);
    v37 = *(v33 + 16);
    *(v33 + 104) = *v33;
    *(v33 + 120) = v37;
    v38 = *(v33 + 48);
    *(v33 + 136) = *(v33 + 32);
    v39 = *(v33 + 64);
    v40 = *(v33 + 80);
    *(v33 + 200) = *(v33 + 96);
    *(v33 + 184) = v40;
    *(v33 + 168) = v39;
    *(v33 + 152) = v38;
    *(v33 + 64) = v110;
    *(v33 + 80) = v112;
    *(v33 + 96) = v114;
    *v33 = v102;
    *(v33 + 16) = v104;
    *(v33 + 32) = v106;
    *(v33 + 48) = v108;
    v33 -= 104;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[104 * v11] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v12 = &v4[104 * v11];
    if (v10 < 104 || v6 <= v7)
    {
LABEL_44:
      v13 = v6;
      goto LABEL_45;
    }

    while (1)
    {
      v18 = 0;
      v19 = v12;
      while (1)
      {
        v20 = &v19[v18];
        v21 = v19[v18 - 30];
        v22 = *(v6 - 30);
        if (v21 == v22)
        {
          break;
        }

        if (v21 & (v22 ^ 1))
        {
          goto LABEL_39;
        }

LABEL_37:
        if (&v5[v18] != v20)
        {
          memmove(&v5[v18 - 104], v20 - 104, 0x68uLL);
        }

        v18 -= 104;
        v12 = &v19[v18];
        if (&v19[v18] <= v4)
        {
          goto LABEL_44;
        }
      }

      v23 = *(v20 - 10) == *(v6 - 10) && *(v20 - 9) == *(v6 - 9);
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_39:
      v13 = v6 - 104;
      v24 = &v5[v18];
      v5 = &v5[v18 - 104];
      if (v24 != v6)
      {
        memmove(v5, v6 - 104, 0x68uLL);
      }

      v12 = &v19[v18];
      if (&v19[v18] > v4)
      {
        v6 -= 104;
        if (v13 > v7)
        {
          continue;
        }
      }

      v12 = &v19[v18];
      goto LABEL_45;
    }
  }

  if (a4 != __dst || &__dst[104 * v9] <= a4)
  {
    memmove(a4, __dst, 104 * v9);
  }

  v12 = &v4[104 * v9];
  if (v8 >= 104)
  {
    do
    {
      if (v6 >= v5)
      {
        break;
      }

      v15 = v6[74];
      v16 = v4[74];
      if (v15 == v16)
      {
        v17 = *(v6 + 3) == *(v4 + 3) && *(v6 + 4) == *(v4 + 4);
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_19:
          v14 = v6;
          v17 = v7 == v6;
          v6 += 104;
          if (v17)
          {
            goto LABEL_9;
          }

LABEL_8:
          memmove(v7, v14, 0x68uLL);
          goto LABEL_9;
        }
      }

      else if (v15 & (v16 ^ 1))
      {
        goto LABEL_19;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 104;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 104;
    }

    while (v4 < v12);
  }

  v13 = v7;
LABEL_45:
  v25 = (v12 - v4) / 104;
  if (v13 != v4 || v13 >= &v4[104 * v25])
  {
    memmove(v13, v4, 104 * v25);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ20CommunicationDetails0C14ViewControllerC23ObservableConfigurationC0G12CapabilitiesO_Tt1g5(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  v16 = result;
  if (v7)
  {
    do
    {
      v17 = (v7 - 1) & v7;
LABEL_13:
      lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities();
      v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }

      v15 = ~v13;
      lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities();
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v9 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          return 0;
        }
      }

      result = v16;
      v7 = v17;
    }

    while (v17);
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
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SbTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + v12);

    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || v16 != *(*(a2 + 56) + v17))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
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

uint64_t specialized static DetailsViewController.CommunicationType.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  *&v42[64] = a1[4];
  *&v42[80] = v3;
  v4 = a1[1];
  *v42 = *a1;
  *&v42[16] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  *&v42[32] = a1[2];
  *&v42[48] = v5;
  v8 = a2[1];
  v43 = *a2;
  v44 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v47 = a2[4];
  v48 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v45 = a2[2];
  v46 = v11;
  v50[0] = v7;
  v50[1] = v6;
  v14 = a1[5];
  v50[4] = *&v42[64];
  v50[5] = v14;
  v50[2] = *&v42[32];
  v50[3] = v2;
  v54 = v45;
  v53 = v13;
  *&v42[96] = *(a1 + 12);
  v49 = *(a2 + 12);
  v15 = *(a1 + 12);
  v52 = v12;
  v16 = a2[5];
  v17 = *(a2 + 12);
  v51 = v15;
  v58 = v17;
  v57 = v16;
  v56 = v47;
  v55 = v9;
  v18 = *v42;
  if ((*&v42[72] & 0x8000000000000000) != 0)
  {
    if ((*(&v47 + 1) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v21 = v43;
    v26 = *&v42[8];
    outlined init with copy of DetailsViewController.CommunicationType(v42, &v35);
    outlined init with copy of DetailsViewController.CommunicationType(&v43, &v35);
    v22 = *(&v21 + 1);
    v23 = v26;
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ20CommunicationDetails0bC7ContactV_Tt1g5(v18, v21) & 1) == 0)
    {

      goto LABEL_6;
    }

    if (v26)
    {
      if (*(&v21 + 1))
      {
        type metadata accessor for CNGroupIdentity();
        v24 = v23;
        v25 = static NSObject.== infix(_:_:)();

        outlined destroy of DetailsViewController.CommunicationType?(v50, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd);
        if ((v25 & 1) == 0)
        {
          goto LABEL_7;
        }

LABEL_16:
        v19 = 1;
        return v19 & 1;
      }

      outlined destroy of DetailsViewController.CommunicationType?(v50, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd);
      v22 = v23;
    }

    else
    {
      outlined destroy of DetailsViewController.CommunicationType?(v50, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd);
      if (!*(&v21 + 1))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_7;
  }

  if ((*(&v47 + 1) & 0x8000000000000000) != 0)
  {
LABEL_5:
    outlined init with copy of DetailsViewController.CommunicationType(v42, &v35);
    outlined init with copy of DetailsViewController.CommunicationType(&v43, &v35);
LABEL_6:
    outlined destroy of DetailsViewController.CommunicationType?(v50, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd);
LABEL_7:
    v19 = 0;
    return v19 & 1;
  }

  v34 = v49;
  v35 = *v42;
  v36 = *&v42[8];
  v37 = *&v42[24];
  v38 = *&v42[40];
  v39 = *&v42[56];
  v40 = *&v42[72];
  v41 = *&v42[88];
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  outlined init with copy of DetailsViewController.CommunicationType(&v43, v27);
  outlined init with copy of DetailsViewController.CommunicationType(v42, v27);
  outlined init with copy of DetailsViewController.CommunicationType(v42, v27);
  outlined init with copy of DetailsViewController.CommunicationType(&v43, v27);
  lazy protocol witness table accessor for type CommunicationDetailsContact and conformance CommunicationDetailsContact();
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of DetailsViewController.CommunicationType?(v50, &_s20CommunicationDetails0B14ViewControllerC0A4TypeO_AEtMd);
  outlined destroy of DetailsViewController.CommunicationType(&v43);
  outlined destroy of DetailsViewController.CommunicationType(v42);
  return v19 & 1;
}

uint64_t specialized DetailsViewController.ObservableConfiguration.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v68 = *(a1 + 32);
  v69 = v3;
  v4 = *(a1 + 72);
  v70 = *(a1 + 64);
  v5 = *(a1 + 16);
  v66 = *a1;
  v67 = v5;
  v64 = *(a1 + 80);
  v65 = *(a1 + 96);
  v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 72);
  v63 = *(a2 + 64);
  v61 = v8;
  v62 = v9;
  v59 = v6;
  v60 = v7;
  v11 = *(a2 + 80);
  v58 = *(a2 + 96);
  v57 = v11;
  if ((v4 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    v16 = *(a1 + 64);
    v17 = *(a1 + 48);
    v44 = *(a1 + 32);
    v45 = v17;
    v18 = *(a1 + 16);
    v42 = *a1;
    v43 = v18;
    *&v46 = v16;
    *(&v46 + 1) = v4;
    v47 = *(a1 + 80);
    v48 = *(a1 + 96);
    v35 = v42;
    v36 = v18;
    v41 = v48;
    v39 = v46;
    v40 = v47;
    v37 = v44;
    v38 = v17;
    if ((v10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
    {
      v19 = *(a2 + 48);
      v30 = *(a2 + 32);
      v31 = v19;
      v34 = *(a2 + 96);
      v20 = *(a2 + 64);
      v21 = *(a2 + 16);
      v28 = *a2;
      v29 = v21;
      v33 = *(a2 + 80);
      *&v32 = v20;
      *(&v32 + 1) = v10;
      outlined init with copy of DetailsViewController.CommunicationType?(a1, v26);
      outlined init with copy of DetailsViewController.CommunicationType?(a2, v26);
      outlined init with copy of DetailsViewController.CommunicationType?(&v42, v26);
      v22 = specialized static DetailsViewController.CommunicationType.== infix(_:_:)(&v35, &v28);
      v24[4] = v32;
      v24[5] = v33;
      v25 = v34;
      v24[0] = v28;
      v24[1] = v29;
      v24[2] = v30;
      v24[3] = v31;
      outlined destroy of DetailsViewController.CommunicationType(v24);
      v26[4] = v39;
      v26[5] = v40;
      v27 = v41;
      v26[0] = v35;
      v26[1] = v36;
      v26[2] = v37;
      v26[3] = v38;
      outlined destroy of DetailsViewController.CommunicationType(v26);
      v30 = v68;
      v31 = v69;
      v28 = v66;
      v29 = v67;
      *&v32 = v70;
      *(&v32 + 1) = v4;
      v33 = v64;
      v34 = v65;
      outlined destroy of DetailsViewController.CommunicationType?(&v28, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
      v15 = v22 ^ 1;
      return v15 & 1;
    }

    v32 = v46;
    v33 = v47;
    v34 = v48;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    outlined init with copy of DetailsViewController.CommunicationType?(a1, v26);
    outlined init with copy of DetailsViewController.CommunicationType?(a2, v26);
    outlined init with copy of DetailsViewController.CommunicationType?(&v42, v26);
    outlined destroy of DetailsViewController.CommunicationType(&v28);
    goto LABEL_7;
  }

  if ((v10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    outlined init with copy of DetailsViewController.CommunicationType?(a1, &v42);
    outlined init with copy of DetailsViewController.CommunicationType?(a2, &v42);
LABEL_7:
    v44 = v68;
    v45 = v69;
    v42 = v66;
    v43 = v67;
    *&v46 = v70;
    *(&v46 + 1) = v4;
    v47 = v64;
    v49 = v59;
    v48 = v65;
    v53 = v63;
    v52 = v62;
    v51 = v61;
    v50 = v60;
    v54 = v10;
    v56 = v58;
    v55 = v57;
    outlined destroy of DetailsViewController.CommunicationType?(&v42, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSg_AFtMd);
    v15 = 1;
    return v15 & 1;
  }

  v12 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v12;
  v13 = *(a1 + 64);
  v14 = *(a1 + 16);
  v42 = *a1;
  v43 = v14;
  *&v46 = v13;
  *(&v46 + 1) = v4;
  v47 = *(a1 + 80);
  v48 = *(a1 + 96);
  outlined init with copy of DetailsViewController.CommunicationType?(a1, &v35);
  outlined init with copy of DetailsViewController.CommunicationType?(a2, &v35);
  outlined destroy of DetailsViewController.CommunicationType?(&v42, &_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
  v15 = 0;
  return v15 & 1;
}

uint64_t outlined init with copy of DetailsViewController.CommunicationType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails0B14ViewControllerC0A4TypeOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onUpdateGroupIdentity.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_19011CAE8(v1);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4);
}

unint64_t lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration()
{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration)
  {
    type metadata accessor for DetailsViewController.ObservableConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration and conformance DetailsViewController.ObservableConfiguration);
  }

  return result;
}

uint64_t type metadata accessor for DetailsViewController.ObservableConfiguration()
{
  result = type metadata singleton initialization cache for DetailsViewController.ObservableConfiguration;
  if (!type metadata singleton initialization cache for DetailsViewController.ObservableConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.initialTabId.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.defaultEditMenuActions.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 48) = v1;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onGroupIdentityUpdate.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 176);
  *(v2 + 176) = v1;
  *(v2 + 184) = v3;
  sub_19011CAE8(v1);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4);
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onContactsUpdate.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 192);
  *(v2 + 192) = v1;
  *(v2 + 200) = v3;
  sub_19011CAE8(v1);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4);
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.onCapabilityChange.setter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v2 + 208);
  *(v2 + 208) = v1;
  *(v2 + 216) = v3;
  sub_19011CAE8(v1);
  return _sSo16CNVisualIdentityCIegg_SgWOe_0(v4);
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.headerStyle.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.capabilities.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 232) = v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsRecentlyAddedToBlocklist.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 240) = v1;
}

uint64_t partial apply for closure #1 in DetailsViewController.ObservableConfiguration.contactsPerformingBlock.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 248) = v1;
}

void outlined consume of DetailsViewController.CommunicationType?(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if ((a10 & 0xFFFFFFFFFEFEFEFELL) != 0xFFEFEFEFELL)
  {
    outlined consume of DetailsViewController.CommunicationType(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }
}

void outlined consume of DetailsViewController.CommunicationType(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a10 < 0)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.CommunicationType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x3F80 | (*(a1 + 72) >> 1) | (*(a1 + 72) >> 3) & 0x1FC000 | (*(a1 + 72) >> 4) & 0xFFE00000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

int8x8_t storeEnumTagSinglePayload for DetailsViewController.CommunicationType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      v4 = vdupq_n_s64(-a2);
      v5 = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1901E6CD0), xmmword_1901E6D00), vandq_s8(vshlq_u64(v4, xmmword_1901E6CE0), xmmword_1901E6CF0));
      *(a1 + 64) = 0;
      result = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 72) = result;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 0;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.PresentationMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.PresentationMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for DetailsViewController.PresentationMode(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for DetailsViewController.PresentationMode(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsViewController.HeaderStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsViewController.HeaderStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DetailsViewController.ObservableConfiguration()
{
  result = type metadata accessor for ObservationRegistrar();
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

void type metadata accessor for UIModalPresentationStyle()
{
  if (!lazy cache variable for type metadata for UIModalPresentationStyle)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for UIModalPresentationStyle);
    }
  }
}

unint64_t type metadata accessor for CNGroupIdentity()
{
  result = lazy cache variable for type metadata for CNGroupIdentity;
  if (!lazy cache variable for type metadata for CNGroupIdentity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNGroupIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities()
{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities;
  if (!lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsViewController.ObservableConfiguration.ConfigurationCapabilities and conformance DetailsViewController.ObservableConfiguration.ConfigurationCapabilities);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNGroupIdentity) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined destroy of DetailsViewController.CommunicationType?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setterpartial apply()
{
  return partial apply for closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter();
}

{
  return partial apply for closure #1 in DetailsViewController.ObservableConfiguration._communicationType.setter();
}

id SegmentedTabControl.__allocating_init(viewModel:styleGuide:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = specialized SegmentedTabControl.init(viewModel:styleGuide:)(a1, a2);

  return v6;
}

id SegmentedTabControl.init(viewModel:styleGuide:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized SegmentedTabControl.init(viewModel:styleGuide:)(a1, a2);

  return v2;
}

id SegmentedTabControl.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedTabControl.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SegmentedTabControl.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for SegmentedTabControl();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v1 = SegmentedTabControl.segmentedControl.getter();
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;

  v6 = v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds;
  v7 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds);
  v8 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 8);
  v9 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 16);
  v10 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 24);
  v11 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds + 32);
  [v0 bounds];
  if (v11 & 1) != 0 || (v31.origin.x = v12, v31.origin.y = v13, v31.size.width = v14, v31.size.height = v15, v29.origin.x = v7, v29.origin.y = v8, v29.size.width = v9, v29.size.height = v10, !CGRectEqualToRect(v29, v31)) || (v16 = (v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize), (*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize + 16)) || (v12 = *v16, *v16 != v3) || (v12 = v16[1], v12 != v5))
  {
    [v0 bounds];
    *v6 = v17;
    *(v6 + 1) = v18;
    *(v6 + 2) = v19;
    *(v6 + 3) = v20;
    v6[32] = 0;
    v21 = (v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize);
    *v21 = v3;
    v21[1] = v5;
    *(v21 + 16) = 0;
    v22 = SegmentedTabControl.scrollView.getter();
    [v0 bounds];
    [v22 setFrame_];

    [v0 bounds];
    if (v3 <= CGRectGetWidth(v30) - (*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide) + *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide)))
    {
      SegmentedTabControl.setupCenteredLayout(segmentedIntrinsicSize:)(v3);
    }

    else
    {
      SegmentedTabControl.setupScrollableLayout(segmentedIntrinsicSize:)(v3);
    }

    v23 = SegmentedTabControl.segmentedControl.getter();
    v24 = [v23 selectedSegmentIndex];

    if (v24 != -1)
    {
      v25 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
      v26 = [*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) selectedSegmentIndex];
      if (v26 < [*(v0 + v25) numberOfSegments])
      {
        v27 = [*(v0 + v25) selectedSegmentIndex];
        (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v27, 0);
      }
    }
  }
}

Swift::Void __swiftcall SegmentedTabControl.updateSelection()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v3 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 184);

  v3(&v20, v4);

  v5 = v21;
  if (v21)
  {
    v6 = v20;
    v25[0] = v20;
    v25[1] = v21;
    v25[2] = v22;
    v25[3] = v23;
    v25[4] = v24;
    v7 = *(**(v0 + v2) + 136);

    v9 = v7(v8);

    v10 = specialized Collection<>.firstIndex(of:)(v25, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = SegmentedTabControl.segmentedControl.getter();
      v14 = [v13 selectedSegmentIndex];

      if (v10 != v14)
      {
        v15 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
        [*(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) setSelectedSegmentIndex_];
        v16 = SegmentedTabControl.segmentedControl.getter();
        v17 = [v16 selectedSegmentIndex];

        if (v17 != -1)
        {
          v18 = [*(v1 + v15) selectedSegmentIndex];
          if (v18 < [*(v1 + v15) numberOfSegments])
          {
            v19 = [*(v1 + v15) selectedSegmentIndex];
            (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v19, 1);
          }
        }
      }
    }

    outlined consume of DetailsTab?(v6, v5);
  }
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
  v4 = 0;
  for (i = a2 + 64; ; i += 40)
  {

    v6 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v6)
    {
      break;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

Swift::Void __swiftcall SegmentedTabControl.scrollToSegment(_:animated:)(Swift::Int _, Swift::Bool animated)
{
  SegmentedTabControl.frameForSegment(at:)(_, v30);
  if ((v31 & 1) == 0)
  {
    v4 = *v30;
    v5 = *&v30[1];
    v6 = *&v30[2];
    v7 = *&v30[3];
    v33.origin.x = SegmentedTabControl.visibleBounds.getter();
    v35.origin.x = v4;
    v35.origin.y = v5;
    v35.size.width = v6;
    v35.size.height = v7;
    if (!CGRectContainsRect(v33, v35))
    {
      v8 = SegmentedTabControl.visibleBounds.getter();
      v10 = v9;
      v12 = v11;
      v28 = v13;
      v14 = SegmentedTabControl.scrollView.getter();
      [v14 contentOffset];
      v16 = v15;

      SegmentedTabControl.calculateScrollOffset(segmentFrame:visibleBounds:currentOffset:)(v4, v5, v6, v7, v8, v10, v12, *&v28);
      v18 = v17;
      v19 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
      [*(v2 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) contentInset];
      v21 = -v20;
      [*(v2 + v19) contentSize];
      v23 = v22;
      [*(v2 + v19) bounds];
      v24 = v23 - CGRectGetWidth(v34);
      [*(v2 + v19) contentInset];
      v26 = v24 + v25;
      if (v24 + v25 >= v18)
      {
        v26 = v18;
      }

      if (v26 < v21)
      {
        v27 = v21;
      }

      else
      {
        v27 = v26;
      }

      v29 = *(v2 + v19);
      [v29 contentOffset];
      [v29 setContentOffset:animated animated:v27];
    }
  }
}

double SegmentedTabControl.visibleBounds.getter()
{
  v1 = SegmentedTabControl.scrollView.getter();
  [v1 contentOffset];
  v3 = v2;

  v4 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  [*(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) contentInset];
  v6 = v3 + v5;
  [*(v0 + v4) contentOffset];
  [*(v0 + v4) contentInset];
  [*(v0 + v4) bounds];
  CGRectGetWidth(v8);
  [*(v0 + v4) contentInset];
  [*(v0 + v4) contentInset];
  [*(v0 + v4) bounds];
  CGRectGetHeight(v9);
  [*(v0 + v4) contentInset];
  [*(v0 + v4) contentInset];
  return v6;
}

id SegmentedTabControl.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    [v4 setShowsHorizontalScrollIndicator_];
    [v4 setShowsVerticalScrollIndicator_];
    [v4 setAlwaysBounceHorizontal_];
    [v4 setContentInsetAdjustmentBehavior_];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *SegmentedTabControl.segmentedControl.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v2 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  }

  else
  {
    type metadata accessor for GesturePassthroughSegmentedControl();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setApportionsSegmentWidthsByContent_];
    *&v4[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = &protocol witness table for SegmentedTabControl;
    swift_unknownObjectWeakAssign();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SegmentedTabControl.setupCenteredLayout(segmentedIntrinsicSize:)(double a1)
{
  [v1 bounds];
  v3 = (CGRectGetWidth(v14) - a1) * 0.5;
  v4 = *&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide + 8];
  [v1 bounds];
  v5 = CGRectGetHeight(v15) - (v4 + v4);
  v6 = SegmentedTabControl.segmentedControl.getter();
  [v6 setFrame_];

  v7 = SegmentedTabControl.scrollView.getter();
  [v1 bounds];
  [v7 setContentSize_];

  v10 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] setContentInset_];
  v11 = *&v1[v10];

  return [v11 setScrollEnabled_];
}

id SegmentedTabControl.setupScrollableLayout(segmentedIntrinsicSize:)(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide];
  v4 = *&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide + 8];
  [v1 bounds];
  v5 = CGRectGetHeight(v14) - (v4 + v4);
  v6 = SegmentedTabControl.segmentedControl.getter();
  [v6 setFrame_];

  v7 = SegmentedTabControl.scrollView.getter();
  [v1 bounds];
  [v7 setContentSize_];

  v8 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView;
  v9 = *v3;
  [*&v1[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] setContentInset_];
  [*&v1[v8] setScrollEnabled_];
  result = [*&v1[v8] contentOffset];
  if (v11 == 0.0)
  {
    v12 = *&v1[v8];

    return [v12 setContentOffset_];
  }

  return result;
}

void SegmentedTabControl.setupSegmentedControl()()
{
  v1 = SegmentedTabControl.scrollView.getter();
  [v0 addSubview_];

  v2 = *&v0[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView];
  v3 = SegmentedTabControl.segmentedControl.getter();
  [v2 addSubview_];

  v32 = v0;
  v30 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v4 = *(**&v0[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel] + 136);

  v6 = v4(v5);

  v33 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v34 = v6;
  v31 = *(v6 + 16);
  if (v31)
  {
    v7 = 0;
    v8 = v6 + 64;
    while (v7 < v34[2])
    {
      v9 = *&v32[v33];
      v10 = *(**(v8 - 16) + 96);

      v11 = v9;
      v10();
      v13 = v12;
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 32))(ObjectType, v13);
      v17 = v16;
      swift_unknownObjectRelease();
      v18 = MEMORY[0x193AEA8E0](v15, v17);

      [v11 insertSegmentWithTitle:v18 atIndex:v7 animated:0];

      v8 += 40;
      if (v31 == ++v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v19 = *(**&v32[v30] + 184);

    v19(&v36, v20);

    v21 = v37;
    if (v37)
    {
      v22 = v36;
      v41[0] = v36;
      v41[1] = v37;
      v41[2] = v38;
      v41[3] = v39;
      v41[4] = v40;
      v23 = *(**&v32[v30] + 136);

      v25 = v23(v24);

      v26 = specialized Collection<>.firstIndex(of:)(v41, v25);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        [*&v32[v33] setSelectedSegmentIndex_];
      }

      outlined consume of DetailsTab?(v22, v21);
    }

    [*&v32[v33] addTarget:v32 action:sel_segmentedControlValueChanged forControlEvents:4096];
    v29 = *&v32[v33];
    v35 = MEMORY[0x193AEA8E0](0xD000000000000017, 0x80000001901FC800);
    [v29 setAccessibilityIdentifier_];
  }
}

void SegmentedTabControl.calculateScrollOffset(segmentFrame:visibleBounds:currentOffset:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  MinX = CGRectGetMinX(*&a1);
  v25.origin.x = a5;
  v25.origin.y = a6;
  v25.size.width = a7;
  v25.size.height = a8;
  v17 = CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v22 = a4;
  v26.size.width = a3;
  v26.size.height = a4;
  MaxX = CGRectGetMaxX(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  v19 = CGRectGetMaxX(v27);
  if (MinX < v17 || v19 < MaxX)
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = v22;
    CGRectGetMinX(v28);
    v21 = SegmentedTabControl.scrollView.getter();
    [v21 contentInset];

    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = v22;
    CGRectGetMaxX(v29);
    v30.origin.x = a5;
    v30.origin.y = a6;
    v30.size.width = a7;
    v30.size.height = a8;
    CGRectGetWidth(v30);
    [*&v8[OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView] contentInset];
    [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  }
}

void SegmentedTabControl.frameForSegment(at:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0uLL;
  if (a1 < 0)
  {
    v33 = 1;
    v34 = 0uLL;
    goto LABEL_15;
  }

  v11 = SegmentedTabControl.segmentedControl.getter();
  v12 = [v11 numberOfSegments];

  if (v12 <= a1)
  {
LABEL_14:
    v33 = 1;
    v34 = 0uLL;
    v10 = 0uLL;
    goto LABEL_15;
  }

  *&v43 = v7;
  v13 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v14 = *(v3 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);
  v15 = [v14 numberOfSegments];
  v16 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];

  if (v16 == 1)
  {
    v17 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v18 = __OFSUB__(v17, a1);
    a1 = &v17[-a1];
    if (v18)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v19 = *(v3 + v13);
  v20 = GesturePassthroughSegmentedControl.cleanSegmentFrames()();

  v21 = *(v20 + 2);
  if (v21 != [*(v3 + v13) numberOfSegments])
  {

    v35 = Logger.segmentedTabControl.unsafeMutableAddressor();
    v36 = v43;
    (*(v43 + 16))(v9, v35, v6);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_190119000, v37, v38, "Not able to perform auto scroll", v39, 2u);
      MEMORY[0x193AEBB30](v39, -1, -1);
    }

    (*(v36 + 8))(v9, v6);
    goto LABEL_14;
  }

  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a1 < *(v20 + 2))
  {
    v22 = &v20[32 * a1];
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[6];
    v26 = v22[7];

    v27 = *(v3 + v13);
    v28 = SegmentedTabControl.scrollView.getter();
    [v27 convertRect:v28 toCoordinateSpace:{v23, v24, v25, v26}];
    v41 = v29;
    v42 = v30;
    v40 = v31;
    v43 = v32;

    *&v34 = v40;
    *&v10 = v41;
    v33 = 0;
    *(&v10 + 1) = v42;
    *(&v34 + 1) = v43;
LABEL_15:
    *a2 = v10;
    *(a2 + 16) = v34;
    *(a2 + 32) = v33;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t closure #1 in SegmentedTabControl.observeViewModel()(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(**(a1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 184);

  v2(v5, v3);

  outlined consume of DetailsTab?(v5[0], v5[1]);
}

void closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel(), v8);
  }
}

uint64_t closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel(), v6, v5);
}

uint64_t closure #1 in closure #2 in implicit closure #1 in SegmentedTabControl.observeViewModel()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x88))();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t SegmentedTabControl.segmentedControlValueChanged()()
{
  v1 = v0;
  v2 = SegmentedTabControl.segmentedControl.getter();
  v3 = [v2 selectedSegmentIndex];

  v4 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel;
  v5 = *(**(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_viewModel) + 136);

  v7 = v5(v6);

  v8 = *(v7 + 16);

  if (v3 >= v8)
  {
    return result;
  }

  v10 = *(v1 + v4);
  v27 = OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl;
  v11 = *(v1 + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl);

  v12 = [v11 selectedSegmentIndex];
  v13 = (*(*v10 + 136))();

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= *(v13 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v14 = (v13 + 40 * v12);
  v16 = v14[4];
  v15 = v14[5];
  v17 = v14[6];
  v18 = v14[7];
  v19 = v14[8];

  v20 = *(v1 + v4);
  v28 = v16;
  v29 = v15;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v21 = *(*v20 + 192);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  v21(&v28);

  v22 = *(*(v1 + v4) + 64);
  if (v22)
  {
    v28 = v16;
    v29 = v15;
    v30 = v17;
    v31 = v18;
    v32 = v19;

    v22(&v28);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed DetailsTab?) -> ())?(v22);
    outlined consume of DetailsTab?(v28, v29);
  }

  else
  {
  }

  v23 = SegmentedTabControl.segmentedControl.getter();
  v24 = [v23 selectedSegmentIndex];

  if (v24 != -1)
  {
    v25 = [*(v1 + v27) selectedSegmentIndex];
    if (v25 < [*(v1 + v27) numberOfSegments])
    {
      v26 = [*(v1 + v27) selectedSegmentIndex];
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v26, 1);
    }
  }
}

void @objc SegmentedTabControl.layoutSubviews()(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

id SegmentedTabControl.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Bool __swiftcall SegmentedTabControl.scrollGestureShouldBegin(_:)(UIGestureRecognizer a1)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject);
  v1 = SegmentedTabControl.scrollView.getter();
  v2 = [v1 panGestureRecognizer];

  v3 = static NSObject.== infix(_:_:)();
  return v3 & 1;
}

uint64_t protocol witness for GesturePassthroughSegmentedControlDelegate.scrollGestureShouldBegin(_:) in conformance SegmentedTabControl()
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for NSObject);
  v0 = SegmentedTabControl.scrollView.getter();
  v1 = [v0 panGestureRecognizer];

  v2 = static NSObject.== infix(_:_:)();
  return v2 & 1;
}

void GesturePassthroughSegmentedControl.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v14, sel_touchesBegan_withEvent_, isa, a2);

  v6 = specialized Collection.first.getter(a1);
  if (v6)
  {
    v7 = v6;
    *&v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = GesturePassthroughSegmentedControl.cleanSegmentFrames()();

    v8 = GesturePassthroughSegmentedControl.segmentIndex(for:)(v7);
    v9 = v8;
    if (v10)
    {

      v11 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
      *v11 = v9;
      v11[8] = 1;
      v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
    }

    else
    {
      v12 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
      *v12 = v8;
      v12[8] = 0;
      v13 = [v2 selectedSegmentIndex];

      v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = v9 == v13;
    }
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x193AEAF20](v3, v5, v6, v7);
    outlined consume of Set<UITouch>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UITouch>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

void GesturePassthroughSegmentedControl.touchesMoved(_:with:)(uint64_t a1, uint64_t a2)
{
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v15, sel_touchesMoved_withEvent_, isa, a2);

  if ((v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] & 1) == 0)
  {
    v6 = specialized Collection.first.getter(a1);
    if (v6)
    {
      v7 = v6;
      v8 = GesturePassthroughSegmentedControl.segmentIndex(for:)(v6);
      if (v9)
      {
      }

      else
      {
        v10 = v8;
        v11 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
        if (v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex + 8] == 1 || *v11 == v8 || (v12 = &v2[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate], !swift_unknownObjectWeakLoadStrong()))
        {
        }

        else
        {
          v13 = *(v12 + 1);
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(v10, 1, ObjectType, v13);

          swift_unknownObjectRelease();
        }

        *v11 = v10;
        v11[8] = 0;
      }
    }
  }
}

uint64_t @objc GesturePassthroughSegmentedControl.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *))
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a4;
  v11 = a1;
  a6(v9, a4);
}

uint64_t @objc GesturePassthroughSegmentedControl.touchesEnded(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UITouch);
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v14.receiver = v10;
  v14.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  objc_msgSendSuper2(&v14, *a6, isa, v9);

  v12 = &v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v12 = 0;
  v12[8] = 1;
  v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v10[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
}

uint64_t GesturePassthroughSegmentedControl.segmentIndex(for:)(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames];
  if (!v3)
  {
    return 0;
  }

  v5 = (v3 + 56);

  [a1 locationInView_];
  v7 = v6;
  v9 = v8;
  v10 = *(v3 + 16);

  v12 = 0;
  do
  {
    if (v10 == v12)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (v12 >= *(v3 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = *(v5 - 3);
    v15 = *(v5 - 2);
    v16 = *(v5 - 1);
    v17 = *v5;
    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v20.origin.x = v14;
    v20.origin.y = v15;
    v20.size.width = v16;
    v20.size.height = v17;
    v19.x = v7;
    v19.y = v9;
    v13 = CGRectContainsPoint(v20, v19);

    v5 += 4;
    ++v12;
  }

  while (!v13);

  v18 = *(v3 + 16);

  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    return v18 - v12;
  }

  else
  {
    return v12 - 1;
  }
}

char *GesturePassthroughSegmentedControl.cleanSegmentFrames()()
{
  v1 = [v0 subviews];
  _sSo8NSObjectCMaTm_0(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufC12CoreGraphics7CGFloatV_SaySo6UIViewCGTt1g50136_s20CommunicationDetails34GesturePassthroughSegmentedControl33_14FE08E8F5222DE52E4C6E817780A66FLLC18cleanSegmentFramesSaySo6CGRectVGyF12d9Graphics7f4VSo6G6CXEfU_Tf1nc_nTf4g_n(v2);

  v4 = (v3 + 64);
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = v8;
  v35 = (v3 + 64);
  v36 = v3;
  if (!v7)
  {
LABEL_8:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_50;
      }

      if (v14 >= v8)
      {

        v39 = v33;

        specialized MutableCollection<>.sort(by:)(&v39);

        return v39;
      }

      v7 = v4[v14];
      ++v9;
      if (v7)
      {
        v9 = v14;
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v37 = v7;
    v15 = *(*(v3 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));

    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_5:

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_6:
    v7 = (v37 - 1) & v37;
    v40 = v16 == 0;

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      }

      v29 = *(v33 + 2);
      v28 = *(v33 + 3);
      if (v29 >= v28 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v33);
      }

      *(v33 + 2) = v29 + 1;
      v30 = &v33[32 * v29];
      *(v30 + 4) = v10;
      *(v30 + 5) = v11;
      *(v30 + 6) = v12;
      *(v30 + 7) = v13;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (v15 < 0)
  {
    v31 = v15;
  }

  else
  {
    v31 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v16 = MEMORY[0x193AEB0F0](v31);
  if (!v16)
  {
    goto LABEL_5;
  }

LABEL_16:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x193AEB000](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

    v17 = *(v15 + 32);
  }

  v38 = v17;
  if (v16 == 1)
  {
LABEL_20:
    v18 = v38;
LABEL_21:
    [v18 frame];
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;

    v4 = v35;
    v3 = v36;
    v8 = v34;
    goto LABEL_6;
  }

  v23 = 1;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x193AEB000](v23, v15);
    }

    else
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      if (v23 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v24 = *(v15 + 8 * v23 + 32);
    }

    v18 = v24;
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v4 = &off_1E72E3000;
    [v18 frame];
    Width = CGRectGetWidth(v41);
    [v38 frame];
    v27 = CGRectGetWidth(v42);

    if (Width < v27)
    {

      v38 = v18;
      ++v23;
      if (v25 == v16)
      {
        goto LABEL_21;
      }
    }

    else
    {

      ++v23;
      if (v25 == v16)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);

  __break(1u);
  return result;
}

id GesturePassthroughSegmentedControl.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id GesturePassthroughSegmentedControl.init(items:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_lastTouchedSegmentIndex];
  *v3 = 0;
  v3[8] = 1;
  v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_pressStartedOnSelectedSegment] = 0;
  *&v1[OBJC_IVAR____TtC20CommunicationDetailsP33_14FE08E8F5222DE52E4C6E817780A66F34GesturePassthroughSegmentedControl_cachedSegmentFrames] = 0;
  if (a1)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for GesturePassthroughSegmentedControl();
  v5 = objc_msgSendSuper2(&v7, sel_initWithItems_, v4.super.isa);

  return v5;
}

id SegmentedTabControl.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x193AEB240](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CGRect(0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v122 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v8 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v111 = *(v9 + 2);
    if (v111 >= 2)
    {
      while (*v6)
      {
        v112 = *&v9[16 * v111];
        v113 = *&v9[16 * v111 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 32 * v112), (*v6 + 32 * *&v9[16 * v111 + 16]), (*v6 + 32 * v113), v8);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v111 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v9[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        result = specialized Array.remove(at:)(v111 - 1);
        v111 = *(v9 + 2);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v125 = v7;
      v116 = v9;
      v118 = v5;
      v11 = *v6;
      v12 = *v6 + 32 * v8;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *v6 + 32 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v5 = type metadata accessor for MainActor();
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v22;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v131.origin.x = v13;
      v131.origin.y = v14;
      v131.size.width = v15;
      v131.size.height = v16;
      MinX = CGRectGetMinX(v131);
      v132.origin.x = v18;
      v132.origin.y = v19;
      v132.size.width = v20;
      v132.size.height = v21;
      v127 = CGRectGetMinX(v132);

      v23 = 0;
      v24 = v10 + 2;
      v120 = v10;
      v6 = (32 * v10);
      v25 = v11 + 32 * v10 + 48;
      v26 = v6;
      do
      {
        v29 = v23;
        v9 = v26;
        v30 = v24;
        if (v24 >= v125)
        {
          break;
        }

        v31 = *(v25 + 16);
        v32 = *(v25 + 24);
        v33 = *(v25 + 32);
        v34 = *(v25 + 40);
        v35 = *(v25 - 16);
        v36 = *(v25 - 8);
        v37 = *v25;
        v38 = *(v25 + 8);
        static MainActor.shared.getter();
        v8 = dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v5 = MinX < v127;
        v133.origin.x = v31;
        v133.origin.y = v32;
        v133.size.width = v33;
        v133.size.height = v34;
        v27 = CGRectGetMinX(v133);
        v134.origin.x = v35;
        v134.origin.y = v36;
        v134.size.width = v37;
        v134.size.height = v38;
        v28 = CGRectGetMinX(v134);

        v24 = v30 + 1;
        v25 += 32;
        v23 = v29 + 1;
        v26 = v9 + 32;
      }

      while (MinX < v127 != v27 >= v28);
      if (MinX >= v127)
      {
        v9 = v116;
        v5 = v118;
        v6 = a3;
        v8 = v30;
        v10 = v120;
      }

      else
      {
        v10 = v120;
        if (v30 < v120)
        {
          goto LABEL_123;
        }

        v8 = v30;
        if (v120 < v30)
        {
          v39 = 0;
          do
          {
            if (v120 + v39 != v120 + v29 + 1)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v40 = &v6[v45];
              v41 = &v9[v45];
              v42 = *v40;
              v43 = *(v40 + 1);
              v44 = *(v41 + 3);
              *v40 = *(v41 + 2);
              *(v40 + 1) = v44;
              *(v41 + 2) = v42;
              *(v41 + 3) = v43;
            }

            --v29;
            ++v39;
            v9 -= 32;
            v6 += 32;
          }

          while (v39 + v120 < v120 + v29 + 2);
        }

        v9 = v116;
        v5 = v118;
        v6 = a3;
      }
    }

    v46 = *(v6 + 1);
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_122;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v46)
        {
          v47 = *(v6 + 1);
        }

        else
        {
          v47 = v10 + a4;
        }

        if (v47 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v47)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v8 < v10)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v65 = *(v9 + 2);
    v64 = *(v9 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v66;
    v67 = &v9[16 * v65];
    *(v67 + 4) = v10;
    *(v67 + 5) = v8;
    v68 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v9 + 4);
          v71 = *(v9 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_63:
          if (v73)
          {
            goto LABEL_110;
          }

          v86 = &v9[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_113;
          }

          v92 = &v9[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_117;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v96 = &v9[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_77:
        if (v91)
        {
          goto LABEL_112;
        }

        v99 = &v9[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_115;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_84:
        v107 = v69 - 1;
        if (v69 - 1 >= v66)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v108 = *&v9[16 * v107 + 32];
        v109 = *&v9[16 * v69 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 32 * v108), (*v6 + 32 * *&v9[16 * v69 + 32]), (*v6 + 32 * v109), v68);
        if (v5)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v107 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v110 = &v9[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        result = specialized Array.remove(at:)(v69);
        v66 = *(v9 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v9[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_108;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_109;
      }

      v81 = &v9[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_111;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_114;
      }

      if (v85 >= v77)
      {
        v103 = &v9[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_118;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_94;
    }
  }

  v117 = v9;
  v119 = v5;
  v48 = *v6;
  type metadata accessor for MainActor();
  v49 = v48 + 32 * v8 - 32;
  v121 = v10;
  v50 = v10 - v8;
  v124 = v47;
LABEL_34:
  v126 = v8;
  v51 = (v48 + 32 * v8);
  v53 = *v51;
  v52 = v51[1];
  v54 = v50;
  v55 = v49;
  while (1)
  {
    v128 = v53;
    v130 = v52;
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *&v135.origin.x = v128;
    *&v135.size.width = v130;
    v135.origin.y = *(&v128 + 1);
    v135.size.height = *(&v130 + 1);
    v60 = CGRectGetMinX(v135);
    v136.origin.x = v56;
    v136.origin.y = v57;
    v136.size.width = v58;
    v136.size.height = v59;
    v61 = CGRectGetMinX(v136);

    if (v60 >= v61)
    {
LABEL_33:
      ++v8;
      v49 += 32;
      --v50;
      if (v126 + 1 != v124)
      {
        goto LABEL_34;
      }

      v8 = v124;
      v9 = v117;
      v5 = v119;
      v6 = a3;
      v10 = v121;
      goto LABEL_43;
    }

    if (!v48)
    {
      break;
    }

    v53 = *(v55 + 32);
    v52 = *(v55 + 48);
    v62 = *(v55 + 16);
    *(v55 + 32) = *v55;
    *(v55 + 48) = v62;
    *v55 = v53;
    *(v55 + 16) = v52;
    v55 -= 32;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}