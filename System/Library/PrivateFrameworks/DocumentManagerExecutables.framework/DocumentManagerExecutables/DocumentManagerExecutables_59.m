void (*OutlineExpansionState.isExpanded.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 400))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineExpansionState and conformance OutlineExpansionState, type metadata accessor for OutlineExpansionState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineExpansionState._isExpanded.modify();
  return OutlineExpansionState.isExpanded.modify;
}

void OutlineExpansionState.isExpanded.modify(void *a1)
{
  OutlineExpansionState.isExpanded.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t key path getter for OutlineExpansionState.shouldShowDisclosureButton : OutlineExpansionState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineExpansionState.shouldShowDisclosureButton.getter()
{
  swift_getKeyPath();
  (*(*v0 + 400))();

  swift_beginAccess();
  return v0[17];
}

uint64_t OutlineExpansionState.shouldShowDisclosureButton.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[17] == v2)
  {
    v1[17] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 408))(v6);
  }

  return result;
}

void (*OutlineExpansionState.shouldShowDisclosureButton.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 400))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineExpansionState and conformance OutlineExpansionState, type metadata accessor for OutlineExpansionState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineExpansionState._shouldShowDisclosureButton.modify();
  return OutlineExpansionState.shouldShowDisclosureButton.modify;
}

uint64_t key path getter for OutlineExpansionState.shouldPreserveSpaceForDisclosureButton : OutlineExpansionState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.getter()
{
  swift_getKeyPath();
  (*(*v0 + 400))();

  swift_beginAccess();
  return v0[18];
}

uint64_t OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[18] == v2)
  {
    v1[18] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 408))(v6);
  }

  return result;
}

void (*OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 400))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineExpansionState and conformance OutlineExpansionState, type metadata accessor for OutlineExpansionState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineExpansionState._shouldPreserveSpaceForDisclosureButton.modify();
  return OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.modify;
}

uint64_t key path getter for OutlineExpansionState.selected : OutlineExpansionState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineExpansionState.selected.getter()
{
  swift_getKeyPath();
  (*(*v0 + 400))();

  swift_beginAccess();
  return v0[19];
}

uint64_t OutlineExpansionState.selected.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[19] == v2)
  {
    v1[19] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 408))(v6);
  }

  return result;
}

void (*OutlineExpansionState.selected.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 400))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineExpansionState and conformance OutlineExpansionState, type metadata accessor for OutlineExpansionState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineExpansionState._selected.modify();
  return OutlineExpansionState.selected.modify;
}

uint64_t key path getter for OutlineExpansionState.allowAnimation : OutlineExpansionState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineExpansionState.allowAnimation.getter()
{
  swift_getKeyPath();
  (*(*v0 + 400))();

  swift_beginAccess();
  return v0[20];
}

uint64_t OutlineExpansionState.allowAnimation.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[20] == v2)
  {
    v1[20] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 408))(v6);
  }

  return result;
}

void (*OutlineExpansionState.allowAnimation.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 400))(KeyPath);

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineExpansionState and conformance OutlineExpansionState, type metadata accessor for OutlineExpansionState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineExpansionState._allowAnimation.modify();
  return OutlineExpansionState.allowAnimation.modify;
}

uint64_t key path getter for OutlineExpansionState.action : OutlineExpansionState@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 376))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for OutlineExpansionState.action : OutlineExpansionState(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 384);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t OutlineExpansionState.action.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1);
  return v1;
}

uint64_t OutlineExpansionState.action.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v5);
}

uint64_t OutlineExpansionState.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OutlineExpansionState.__deallocating_deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + 24));
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21OutlineExpansionState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t OutlineExpansionState.init()()
{
  *(v0 + 20) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t key path getter for OutlineProgressState.wantsProgress : OutlineProgressState@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t OutlineProgressState.wantsProgress.getter()
{
  swift_getKeyPath();
  (*(*v0 + 200))();

  swift_beginAccess();
  return v0[16];
}

uint64_t OutlineProgressState.wantsProgress.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 208))(v6);
  }

  return result;
}

void (*OutlineProgressState.wantsProgress.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 200))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineProgressState._wantsProgress.modify();
  return OutlineProgressState.wantsProgress.modify;
}

void (*OutlineProgressState._progress.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return OutlineProgressState._progress.modify;
}

void OutlineProgressState._progress.modify(id **a1, char a2)
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

uint64_t key path getter for OutlineProgressState.progress : OutlineProgressState@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t key path setter for OutlineProgressState.progress : OutlineProgressState(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void OutlineProgressState.progress.init(void *a1)
{
  swift_unknownObjectWeakInit();
}

uint64_t OutlineProgressState.progress.getter()
{
  swift_getKeyPath();
  (*(*v0 + 200))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void OutlineProgressState.progress.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress);
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
  v9 = MEMORY[0x28223BE20](KeyPath, v8);
  (*(*v1 + 208))(v9);
}

void (*OutlineProgressState.progress.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 200))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = OutlineProgressState._progress.modify(v4);
  return OutlineProgressState.progress.modify;
}

uint64_t OutlineProgressState.deinit()
{
  MEMORY[0x24C1FE970](v0 + 24);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OutlineProgressState.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 24);
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables20OutlineProgressState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t OutlineProgressState.init()()
{
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  return v0;
}

uint64_t OutlineProgressStateReference.progressState.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*OutlineProgressStateReference.progressState.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v4 + 24) = swift_weakLoadStrong();
  return OutlineProgressStateReference.progressState.modify;
}

void OutlineProgressStateReference.progressState.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
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

uint64_t OutlineProgressStateReference.init(progressState:)()
{
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v0;
}

uint64_t OutlineProgressStateReference.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for defaultValue()
{
  type metadata accessor for OutlineProgressState(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  swift_unknownObjectWeakInit();
  result = ObservationRegistrar.init()();
  static OutlineProgressStateKey.defaultValue = v0;
  return result;
}

uint64_t *OutlineProgressStateKey.defaultValue.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return &static OutlineProgressStateKey.defaultValue;
}

uint64_t static OutlineProgressStateKey.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance OutlineProgressStateKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static OutlineProgressStateKey.defaultValue;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance OutlineProgressStateKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineProgressState and conformance OutlineProgressState, type metadata accessor for OutlineProgressState);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.outlineProgressState.getter()
{
  lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path setter for EnvironmentValues.outlineProgressState : EnvironmentValues()
{
  lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();

  return EnvironmentValues.subscript.setter();
}

uint64_t (*EnvironmentValues.outlineProgressState.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.outlineProgressState.modify;
}

uint64_t EnvironmentValues.outlineProgressState.modify(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return EnvironmentValues.subscript.setter();
  }

  EnvironmentValues.subscript.setter();
}

uint64_t EnvironmentValues.shouldDim.getter()
{
  lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.shouldDim : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.shouldDim.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return EnvironmentValues.shouldDim.modify;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance ShouldDimKey@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type DOCShouldDimTrait and conformance DOCShouldDimTrait();
  result = UITraitCollection.subscript.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for Dragging.color : Dragging@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Dragging.color : Dragging(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t Dragging.color.getter()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  swift_beginAccess();
}

uint64_t Dragging.color.setter(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {

      v3 = static Color.== infix(_:_:)();

      if (v3)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    v8 = v1;
    v9 = a1;
    (*(*v1 + 152))(v6);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[2] = a1;
}

uint64_t closure #1 in Dragging.color.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*Dragging.color.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 144))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type Dragging and conformance Dragging, type metadata accessor for Dragging);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Dragging._color.modify();
  return Dragging.color.modify;
}

uint64_t Dragging.deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Dragging.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables8Dragging___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t Dragging.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t Dragging.init()()
{
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t DragIndicator.dragObject.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t DragIndicator.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for DragIndicator(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t DragIndicator.body.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = type metadata accessor for ColorScheme();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v64 = &v58 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd);
  MEMORY[0x28223BE20](v71, v8);
  v10 = &v58 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
  MEMORY[0x28223BE20](v63, v11);
  v65 = &v58 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd);
  MEMORY[0x28223BE20](v70, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingN0VGAGyAGyAlA016_ForegroundStyleN0VyAPGGAUG_GMd);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v58 - v27;
  v67 = v1;
  v29 = (*(**(v1 + 8) + 120))(v26);
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = type metadata accessor for RoundedCornerStyle();
  v33 = *(*(v32 - 8) + 104);
  if (v29)
  {
    v33(&v28[v30], v31, v32);
    *v28 = xmmword_249BB83A0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v34 = &v28[*(v71 + 9)];
    v35 = v74;
    *v34 = v73;
    *(v34 + 1) = v35;
    *(v34 + 2) = v75;
    KeyPath = swift_getKeyPath();
    v37 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
    *v37 = KeyPath;
    v37[1] = v29;
    v28[*(v24 + 36)] = 0;
    v38 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd;
    outlined init with copy of DOCGridLayout.Spec?(v28, v23, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v39 = v28;
  }

  else
  {
    v59 = v15;
    v60 = v23;
    v40 = v63;
    v61 = v20;
    v62 = v19;
    v41 = v70;
    v33(&v10[v30], v31, v32);
    *v10 = xmmword_249BB83A0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = *(v71 + 9);
    v71 = v10;
    v43 = &v10[v42];
    v44 = v74;
    *v43 = v73;
    *(v43 + 1) = v44;
    *(v43 + 2) = v75;
    v45 = v64;
    DragIndicator.colorScheme.getter(v64);
    v47 = v68;
    v46 = v69;
    v48 = v66;
    (*(v68 + 104))(v66, *MEMORY[0x277CDF3C0], v69);
    v49 = static ColorScheme.== infix(_:_:)();
    v50 = *(v47 + 8);
    v50(v48, v46);
    v50(v45, v46);
    if (v49)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.black.getter();
    }

    v51 = v41;
    v52 = v60;
    v53 = v65;
    v54 = v59;
    v55 = Color.opacity(_:)();

    outlined init with take of (key: URL, value: FPItem)(v71, v53, &_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd);
    *(v53 + *(v40 + 36)) = v55;
    outlined init with take of (key: URL, value: FPItem)(v53, v54, &_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    *(v54 + *(v51 + 36)) = 0;
    v38 = &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd;
    v56 = v62;
    outlined init with take of (key: URL, value: FPItem)(v54, v62, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd);
    outlined init with copy of DOCGridLayout.Spec?(v56, v52, &_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v39 = v56;
  }

  return outlined destroy of CharacterSet?(v39, v38);
}

double DOCImageViewContainerView.size(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = 100.0;
  if (a2)
  {
    *&a1 = 100.0;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  return DOCGridLayout.specIconWidth.modify(*&a1, v5);
}

double protocol witness for DOCItemDefaultSize.size(_:) in conformance DOCImageViewContainerView(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = 100.0;
  if (a2)
  {
    *&a1 = 100.0;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  return DOCGridLayout.specIconWidth.modify(*&a1, v5);
}

id DOCReuseableView.makeUIView(context:)(double a1, double a2)
{
  DOCGridLayout.specIconWidth.modify(a1, a2);

  return v2;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance DOCReuseableView<A>(double a1, double a2)
{
  DOCGridLayout.specIconWidth.modify(a1, a2);

  return v2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DOCReuseableView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DOCReuseableView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance DOCReuseableView<A>()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t StatusView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StatusView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v10 = *v7;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
  }

  *(a2 + *(v8 + 20)) = v10;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

double StatusView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StatusView(0);
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v1 + *(v8 + 24);
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = v9;
    if (v12 != 1)
    {
      outlined copy of Environment<Bool>.Content(v11, 0);
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v11, 0);
      (*(v4 + 8))(v7, v3);
      LOBYTE(v11) = v22;
    }

    v15 = 0x3FF0000000000000;
    if (v11)
    {
      v15 = 0x3FD6666666666666;
    }

    v19 = v9;
    v20 = v15;
    v21 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMd);
  lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v22;
  v17 = v23;
  *a1 = v22;
  *(a1 + 16) = v17;
  return result;
}

uint64_t View.outlineDimmed(_:)(char a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  a4.n128_u64[0] = 0x3FD6666666666666;
  if ((a1 & 1) == 0)
  {
    a4.n128_f64[0] = 1.0;
  }

  return MEMORY[0x282133218](a2, a3, a4);
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance StatusView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v11 = *v9;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
  }

  *(a3 + *(a2 + 20)) = v11;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

uint64_t HeaderTitleLayout.TitleLayoutBestView.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LayoutSubview();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeaderTitleLayout.TitleLayoutBestView.init(view:size:isSmallestView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for LayoutSubview();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  v12 = (a3 + *(result + 20));
  *v12 = a4;
  v12[1] = a5;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t HeaderTitleLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1 <= 0.0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *&a1;
  }

  if (a2)
  {
    v17 = *&a3;
  }

  else
  {
    v17 = *&v16;
  }

  HeaderTitleLayout.bestView(for:proposal:cache:)(a6, v17, 0, a7, v15);
  return _s26DocumentManagerExecutables6ColumnOWOhTm_1(v15, type metadata accessor for HeaderTitleLayout.TitleLayoutBestView);
}

uint64_t HeaderTitleLayout.bestView(for:proposal:cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v93 = a4;
  v92 = a3;
  v98 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSg_ADtMd);
  MEMORY[0x28223BE20](v91, v7);
  v102 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v87 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v100 = &v85 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v101 = &v85 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v85 - v24;
  v26 = type metadata accessor for LayoutSubview();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v104 = &v85 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v94 = &v85 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v85 - v39;
  specialized Collection.first.getter(v25);
  v99 = v27;
  v41 = *(v27 + 48);
  v90 = v27 + 48;
  v89 = v41;
  result = (v41)(v25, 1, v26);
  if (result == 1)
  {
    goto LABEL_35;
  }

  v85 = a5;
  v43 = *(v99 + 32);
  v86 = v40;
  v96 = v43;
  v97 = v99 + 32;
  v43(v40, v25, v26);
  v44 = type metadata accessor for LayoutSubviews();
  (*(*(v44 - 8) + 16))(v12, a1, v44);
  v45 = *(v9 + 36);
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v95 = v12;
  if (*&v12[v45] == v106)
  {
    LODWORD(v98) = 0;
    v46 = 0.0;
    v47 = 0;
    v48 = v95;
LABEL_4:
    outlined destroy of CharacterSet?(v48, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
    v49 = v85;
    v96(v85, v86, v26);
    result = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
    v50 = v49 + *(result + 20);
    *v50 = v46;
    *(v50 + 8) = v47;
    *(v49 + *(result + 24)) = v98 & 1;
    return result;
  }

  v51 = v45;
  v103 = (v99 + 16);
  v52 = (v99 + 8);
  v99 += 56;
  v53 = *&v98;
  v46 = 0.0;
  v47 = 0;
  v88 = v51;
  while (1)
  {
    v98 = dispatch thunk of Collection.subscript.read();
    v55 = *v103;
    v56 = v94;
    (*v103)(v94);
    (v98)(&v106, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v96(v104, v56, v26);
    result = dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
    if (v108)
    {
      dispatch thunk of Collection.startIndex.getter();
      result = dispatch thunk of Collection.endIndex.getter();
      v57 = v105;
      if (v105 == v106)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v58 = dispatch thunk of Collection.subscript.read();
        v55(v30);
        (v58)(&v106, 0);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8]);
        LOBYTE(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
        result = (*v52)(v30, v26);
        if (v58)
        {
          break;
        }

        dispatch thunk of Collection.formIndex(after:)();
        result = dispatch thunk of Collection.endIndex.getter();
        v57 = v105;
        if (v105 == v106)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (v107)
      {
        goto LABEL_34;
      }

      v57 = v106;
    }

    v59 = v99;
    if ((v57 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v57 >= *(*v93 + 16))
    {
      goto LABEL_33;
    }

    v60 = *v93 + 16 * v57;
    v61 = *(v60 + 32);
    v62 = *(v60 + 40);
    v63 = v101;
    (v55)(v101, v104, v26);
    v64 = *v59;
    (*v59)(v63, 0, 1, v26);
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      v65 = v100;
      v66 = 1;
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v67 = dispatch thunk of Collection.subscript.read();
      v68 = v100;
      v55(v100);
      v67(&v106, 0);
      v65 = v68;
      v66 = 0;
    }

    v64(v65, v66, 1, v26);
    v69 = *(v91 + 48);
    v70 = v102;
    outlined init with copy of DOCGridLayout.Spec?(v101, v102, &_s7SwiftUI13LayoutSubviewVSgMd);
    v98 = v69;
    v71 = v70 + v69;
    v72 = v100;
    outlined init with copy of DOCGridLayout.Spec?(v100, v71, &_s7SwiftUI13LayoutSubviewVSgMd);
    v73 = v89;
    if (v89(v70, 1, v26) != 1)
    {
      v75 = v102;
      v76 = v87;
      outlined init with copy of DOCGridLayout.Spec?(v102, v87, &_s7SwiftUI13LayoutSubviewVSgMd);
      v77 = v75 + v98;
      v78 = v98;
      if (v73(v77, 1, v26) != 1)
      {
        v96(v30, (v102 + v78), v26);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8]);
        LODWORD(v98) = dispatch thunk of static Equatable.== infix(_:_:)();
        v79 = *v52;
        (*v52)(v30, v26);
        outlined destroy of CharacterSet?(v100, &_s7SwiftUI13LayoutSubviewVSgMd);
        outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd);
        v79(v76, v26);
        outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSgMd);
        v74 = v98;
        goto LABEL_28;
      }

      outlined destroy of CharacterSet?(v100, &_s7SwiftUI13LayoutSubviewVSgMd);
      outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd);
      (*v52)(v76, v26);
LABEL_26:
      outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSg_ADtMd);
      v74 = 0;
      goto LABEL_28;
    }

    outlined destroy of CharacterSet?(v72, &_s7SwiftUI13LayoutSubviewVSgMd);
    outlined destroy of CharacterSet?(v101, &_s7SwiftUI13LayoutSubviewVSgMd);
    if (v73(v102 + v98, 1, v26) != 1)
    {
      goto LABEL_26;
    }

    outlined destroy of CharacterSet?(v102, &_s7SwiftUI13LayoutSubviewVSgMd);
    v74 = 1;
LABEL_28:
    v80 = v95;
    v81 = v88;
    LODWORD(v98) = v74;
    if ((v92 & 1) != 0 || !((v61 <= v53) | v74 & 1))
    {
      v54 = *v52;
    }

    else
    {
      v54 = *v52;
      if (v46 <= v61)
      {
        v82 = v95;
        v83 = v86;
        v54(v86, v26);
        v84 = v83;
        v80 = v82;
        v96(v84, v104, v26);
        v46 = v61;
        v47 = v62;
        goto LABEL_8;
      }
    }

    v54(v104, v26);
LABEL_8:
    dispatch thunk of Collection.endIndex.getter();
    v48 = v80;
    if (*(v80 + v81) == v106)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t HeaderTitleLayout.placeSubviews(in:proposal:subviews:cache:)(void (**a1)(char *, uint64_t), char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, void (**a9)(char *), uint64_t a10)
{
  v56 = a9;
  v54 = a1;
  v16 = type metadata accessor for LayoutSubview();
  v53 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v52 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  MEMORY[0x28223BE20](v55, v28);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v52 - v33;
  v52 = type metadata accessor for HeaderTitleLayout.TitleLayoutBestView(0);
  MEMORY[0x28223BE20](v52, v35);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  if (CGRectGetWidth(v59) <= 0.0)
  {
    v42 = type metadata accessor for LayoutSubviews();
    (*(*(v42 - 8) + 16))(v30, v56, v42);
    v43 = *(v55 + 36);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v30[v43] != v58[0])
    {
      v44 = (v53 + 16);
      v45 = (v53 + 8);
      do
      {
        v46 = dispatch thunk of Collection.subscript.read();
        (*v44)(v19);
        v46(v58, 0);
        dispatch thunk of Collection.formIndex(after:)();
        static UnitPoint.center.getter();
        static ProposedViewSize.zero.getter();
        LOBYTE(v58[0]) = v47 & 1;
        v57 = v48 & 1;
        LayoutSubview.place(at:anchor:proposal:)();
        (*v45)(v19, v16);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v30[v43] != v58[0]);
    }

    return outlined destroy of CharacterSet?(v30, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  }

  else
  {
    v38 = v56;
    HeaderTitleLayout.bestView(for:proposal:cache:)(v56, v54, a2 & 1, a10, v37);
    v39 = type metadata accessor for LayoutSubviews();
    (*(*(v39 - 8) + 16))(v34, v38, v39);
    v40 = *(v55 + 36);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v34[v40] != v58[0])
    {
      v55 = v53 + 32;
      v56 = (v53 + 16);
      v54 = (v53 + 8);
      do
      {
        v49 = dispatch thunk of Collection.subscript.read();
        (*v56)(v27);
        v49(v58, 0);
        dispatch thunk of Collection.formIndex(after:)();
        (*v55)(v23, v27, v16);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubview and conformance LayoutSubview, MEMORY[0x277CDF6F8]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          v53 = *&v37[*(v52 + 20) + 8];
          v60.origin.x = a3;
          v60.origin.y = a4;
          v60.size.width = a5;
          v60.size.height = a6;
          CGRectGetWidth(v60);
          static UnitPoint.topLeading.getter();
          LOBYTE(v58[0]) = 0;
          v57 = 0;
        }

        else
        {
          static UnitPoint.center.getter();
          static ProposedViewSize.zero.getter();
          LOBYTE(v58[0]) = v50 & 1;
          v57 = v51 & 1;
        }

        LayoutSubview.place(at:anchor:proposal:)();
        (*v54)(v23, v16);
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v34[v40] != v58[0]);
    }

    outlined destroy of CharacterSet?(v34, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
    return _s26DocumentManagerExecutables6ColumnOWOhTm_1(v37, type metadata accessor for HeaderTitleLayout.TitleLayoutBestView);
  }
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance HeaderTitleLayout@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized HeaderTitleLayout.makeCache(subviews:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1158]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance HeaderTitleLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x277CE1160]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance HeaderTitleLayout(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

uint64_t Header.columnType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Header(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return outlined copy of ColumnType(v4, v5);
}

uint64_t Header.strings.getter()
{
  type metadata accessor for Header(0);
}

uint64_t Header.image.getter()
{
  type metadata accessor for Header(0);
}

uint64_t Header.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for Header(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 44), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t Header.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for Header(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 48), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  static os_log_type_t.fault.getter();
  v14 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Header.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Header(0);
  v9 = v8[11];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  v10 = v8[12];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v11 = *v7;
    v12 = *(v7 + 1);
    v13 = v7[16];
    v14 = v7[17];
    v15 = v7[18];
    v16 = (a2 + v8[5]);
    *v16 = *v7;
    v16[1] = v12;
    v19[0] = v11;
    v19[1] = v12;
    *(a2 + v8[6]) = ColumnType.localizedStrings()();
    *(a2 + v8[8]) = v13;
    *(a2 + v8[9]) = v14;
    *(a2 + v8[10]) = v15;
    if (v13)
    {
      *(a2 + v8[7]) = Image.init(systemName:)();
    }

    else
    {
      *(a2 + v8[7]) = 0;
    }
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v17 = (a2 + v8[5]);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + v8[6]) = MEMORY[0x277D84F90];
    *(a2 + v8[7]) = 0;
    *(a2 + v8[8]) = 0;
    *(a2 + v8[9]) = 0;
    *(a2 + v8[10]) = 0;
  }

  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

uint64_t Header.description.getter()
{
  v1 = type metadata accessor for Header(0);
  v2 = MEMORY[0x24C1FB0D0](*(v0 + *(v1 + 24)), MEMORY[0x277D837D0]);
  MEMORY[0x24C1FAEA0](v2);

  return 0x20726564616568;
}

uint64_t Header.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA19_ConditionalContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleO0VGAA7ForEachVySaySSGSSAA08ModifiedL0VyAZyAcAE10fontWeightyQrAA4FontV0Z0VSgFQOyAZyAZyAZyAZyAZyAIyAA05TupleC0VyAA4TextV_AcAEA_yQrA4_FQOyAZyAZyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingO0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAOy_AUA40_GGG_Qo_Md);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v44 - v17;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd);
  MEMORY[0x28223BE20](v52, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v51 = &v44 - v24;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAEy_AA01_G4RootVy26DocumentManagerExecutables011HeaderTitleG0VGAA7ForEachVySaySSGSSAA08ModifiedI0VyATyAA0D0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA0F0VyAA05TupleD0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingG0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAEy_AOA38_GGGMd);
  closure #1 in Header.body.getter(v1, &v13[*(v25 + 44)]);
  static AccessibilityChildBehavior.ignore.getter();
  v26 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>, _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd);
  View.accessibilityElement(children:)();
  (*(v46 + 8))(v9, v47);
  outlined destroy of CharacterSet?(v13, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd);
  v27 = v48;
  static AccessibilityTraits.isButton.getter();
  v54 = v10;
  v55 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v44;
  MEMORY[0x24C1FA5D0](v27, v44, OpaqueTypeConformance2);
  (*(v49 + 8))(v27, v50);
  (*(v45 + 8))(v18, v29);
  v30 = type metadata accessor for Header(0);
  v31 = *(v2 + v30[6]);
  if (v31[2])
  {
    v33 = v31[4];
    v32 = v31[5];
  }

  else
  {
    v33 = 0;
    v32 = 0xE000000000000000;
  }

  v54 = v33;
  v55 = v32;
  lazy protocol witness table accessor for type String and conformance String();
  v34 = v51;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  outlined destroy of CharacterSet?(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd);
  v35 = (v2 + v30[5]);
  v36 = *v35;
  v37 = v35[1];
  if (v37 <= 3)
  {
    if (v37 <= 1)
    {
      if (!v37)
      {
        v38 = 0xE400000000000000;
        v39 = 1701667182;
        goto LABEL_24;
      }

      if (v37 == 1)
      {
        v38 = 0xEC00000064656966;
        v39 = 0x69646F4D65746164;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v37 == 2)
    {
      v38 = 0xEB00000000646574;
      v39 = 0x6165724365746164;
    }

    else
    {
      v38 = 0xEE0064656E65704FLL;
      v39 = 0x7473614C65746164;
    }
  }

  else
  {
    if (v37 > 5)
    {
      switch(v37)
      {
        case 6:
          v38 = 0xE400000000000000;
          v39 = 1702521203;
          goto LABEL_24;
        case 7:
          v38 = 0xE400000000000000;
          v39 = 1936154996;
          goto LABEL_24;
        case 8:
          v38 = 0xE600000000000000;
          v39 = 0x737574617473;
          goto LABEL_24;
      }

LABEL_23:
      v39 = *v35;
      v38 = v35[1];
      goto LABEL_24;
    }

    if (v37 == 4)
    {
      v38 = 0xE900000000000064;
      v39 = 0x6564644165746164;
    }

    else
    {
      v38 = 0xE400000000000000;
      v39 = 1684957547;
    }
  }

LABEL_24:
  v40 = objc_opt_self();
  outlined copy of ColumnType(v36, v37);
  v41 = MEMORY[0x24C1FAD20](v39, v38);

  v42 = [v40 sortByHeaderButtonForSortIdentifier:v41 ascending:*(v2 + v30[8]) == 2 active:*(v2 + v30[7]) != 0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  ModifiedContent<>.accessibilityIdentifier(_:)();

  return outlined destroy of CharacterSet?(v34, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd);
}

void closure #1 in Header.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd);
  MEMORY[0x28223BE20](v28, v3);
  v5 = (v27 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedD0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyAA6HStackVyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA6_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA26_GA26_GA13_G_Qo_A11_yA6_14TruncationModeOGGA11_ySiSgGGGGAIy_AOA38_G_GMd);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for Header(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (v27 - v16);
  if (*(a1 + *(v10 + 36)) == 1)
  {
    *v17 = 0x408F400000000000;
    v27[2] = *(v14 + 44);
    v30 = *(a1 + *(v10 + 24));
    v27[1] = swift_getKeyPath();
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Header);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    outlined init with take of Column(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Header);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    outlined init with copy of DOCGridLayout.Spec?(v17, v9, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR, lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v20 = v17;
    v21 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd;
LABEL_5:
    outlined destroy of CharacterSet?(v20, v21);
    return;
  }

  v22 = v28;
  *v5 = 0x408F400000000000;
  v23 = *(a1 + *(v10 + 24));
  if (v23[2])
  {
    v24 = *(v22 + 44);
    v25 = v23[4];
    v26 = v23[5];

    Header.text(string:)(v25, v26, v5 + v24);

    outlined init with copy of DOCGridLayout.Spec?(v5, v9, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA7ForEachVySaySSGSSAA15ModifiedContentVyAPyAA0D0PAAE10fontWeightyQrAA4FontV0R0VSgFQOyAPyAPyAPyAPyAPyAA6HStackVyAA05TupleD0VyAA4TextV_ArAEASyQrAXFQOyAPyAPyA2_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAUSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingF0VGA22_GA22_GA9_G_Qo_A7_yA2_14TruncationModeOGGA7_ySiSgGGGGMR, lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(&lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v20 = v5;
    v21 = &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleF0VGAA15ModifiedContentVyAMyAA0D0PAAE10fontWeightyQrAA4FontV0P0VSgFQOyAMyAMyAMyAMyAMyAA6HStackVyAA05TupleD0VyAA4TextV_AoAEAPyQrAUFQOyAMyAMyA_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyARSgGG_Qo_SgtGGAA016_ForegroundStyleZ0VyAA13AnyShapeStyleVGGAA08_PaddingF0VGA19_GA19_GA6_G_Qo_A4_yA_14TruncationModeOGGA4_ySiSgGGGMd;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t Header.text(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v73 = a2;
  v81 = a3;
  v4 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v72 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd);
  MEMORY[0x28223BE20](v74, v14);
  v16 = &v72 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd);
  MEMORY[0x28223BE20](v76, v17);
  v19 = &v72 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd);
  MEMORY[0x28223BE20](v77, v20);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAKyAKyAKyAA6HStackVyAA05TupleC0VyAA4TextV_AcAEADyQrAIFQOyAKyAKyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_Md);
  v79 = *(v23 - 8);
  v80 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v78 = &v72 - v25;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd);
  MEMORY[0x28223BE20](v75, v26);
  v28 = &v72 - v27;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMd);
  closure #1 in Header.textWithImage(string:)(v72, v73, v3, &v9[*(v29 + 44)]);
  if (*(v3 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    v82 = static HierarchicalShapeStyle.primary.getter();
  }

  v30 = AnyShapeStyle.init<A>(_:)();
  outlined init with take of (key: URL, value: FPItem)(v9, v13, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd) + 36)] = v30;
  LOBYTE(v30) = static Edge.Set.leading.getter();
  Header.nameHeaderLeadingPadding.getter();
  EdgeInsets.init(_all:)();
  v31 = &v13[*(v10 + 36)];
  *v31 = v30;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = static Edge.Set.trailing.getter();
  v37 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v36)
  {
    v37 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  outlined init with take of (key: URL, value: FPItem)(v13, v16, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd);
  v46 = &v16[*(v74 + 36)];
  *v46 = v37;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v48 = static Edge.Set.top.getter();
  *(inited + 32) = v48;
  v49 = static Edge.Set.bottom.getter();
  *(inited + 33) = v49;
  v50 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v48)
  {
    v50 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v49)
  {
    v50 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  outlined init with take of (key: URL, value: FPItem)(v16, v19, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd);
  v59 = &v19[*(v76 + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  outlined init with take of (key: URL, value: FPItem)(v19, v22, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd);
  v62 = &v22[*(v77 + 36)];
  *v62 = KeyPath;
  v62[1] = v60;
  static Font.Weight.semibold.getter();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v63 = v78;
  View.fontWeight(_:)();
  outlined destroy of CharacterSet?(v22, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd);
  v64 = &v28[*(v75 + 36)];
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd) + 28);
  v66 = *MEMORY[0x277CE0B30];
  v67 = type metadata accessor for Text.TruncationMode();
  (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
  *v64 = swift_getKeyPath();
  (*(v79 + 32))(v28, v63, v80);
  v68 = swift_getKeyPath();
  v69 = v81;
  outlined init with take of (key: URL, value: FPItem)(v28, v81, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd);
  v71 = v69 + *(result + 36);
  *v71 = v68;
  *(v71 + 8) = 1;
  *(v71 + 16) = 0;
  return result;
}

double Header.nameHeaderLeadingPadding.getter()
{
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v28 - v20;
  v22 = type metadata accessor for Header(0);
  result = 12.0;
  if ((*(v0 + *(v22 + 20) + 8) - 1) >= 8)
  {
    v28 = v22;
    v29 = v0;
    Header.horizontalSizeClass.getter(v21);
    (*(v2 + 104))(v17, *MEMORY[0x277CE0558], v1);
    (*(v2 + 56))(v17, 0, 1, v1);
    v24 = *(v6 + 48);
    outlined init with copy of DOCGridLayout.Spec?(v21, v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined init with copy of DOCGridLayout.Spec?(v17, &v9[v24], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v25 = *(v2 + 48);
    if (v25(v9, 1, v1) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (v25(&v9[v24], 1, v1) == 1)
      {
        outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        result = 16.0;
        goto LABEL_10;
      }
    }

    else
    {
      outlined init with copy of DOCGridLayout.Spec?(v9, v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      if (v25(&v9[v24], 1, v1) != 1)
      {
        (*(v2 + 32))(v5, &v9[v24], v1);
        lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v27 = *(v2 + 8);
        v27(v5, v1);
        outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v27(v13, v1);
        outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        result = 10.0;
        if (v26)
        {
          result = 16.0;
        }

        goto LABEL_10;
      }

      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of CharacterSet?(v21, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      (*(v2 + 8))(v13, v1);
    }

    outlined destroy of CharacterSet?(v9, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    result = 10.0;
LABEL_10:
    if (*(v29 + *(v28 + 40)))
    {
      return result + 24.0;
    }
  }

  return result;
}

uint64_t Header.textWithImage(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v17 - v12;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA0D0PAAE10fontWeightyQrAA4FontV0K0VSgFQOyAA15ModifiedContentVyAUyAkA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAPSgGG_Qo_SgtGGMd);
  closure #1 in Header.textWithImage(string:)(a1, a2, v4, &v13[*(v14 + 44)]);
  if (*(v4 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    v17[3] = static HierarchicalShapeStyle.primary.getter();
  }

  v15 = AnyShapeStyle.init<A>(_:)();
  outlined init with take of (key: URL, value: FPItem)(v13, a3, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd);
  *(a3 + *(result + 36)) = v15;
  return result;
}

uint64_t Header.foregroundStyle<A>(view:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v19[0] = a2;
  v4 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - v13;
  if (*(v2 + *(type metadata accessor for Header(0) + 36)) == 1)
  {
    TintShapeStyle.init()();
  }

  else
  {
    LODWORD(v20) = static HierarchicalShapeStyle.primary.getter();
  }

  v20 = AnyShapeStyle.init<A>(_:)();
  View.foregroundStyle<A>(_:)();

  v15 = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
  v19[1] = a1;
  v19[2] = v15;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v6, WitnessTable);
  v17 = *(v7 + 8);
  v17(v10, v6);
  static ViewBuilder.buildExpression<A>(_:)(v14, v6, WitnessTable);
  return (v17)(v14, v6);
}

uint64_t closure #1 in Header.textWithImage(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_Md);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v54 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v47 - v17;
  v59 = a1;
  v60 = a2;
  lazy protocol witness table accessor for type String and conformance String();

  v19 = Text.init<A>(_:)();
  v57 = v20;
  v58 = v19;
  v55 = v21;
  v23 = v22;
  v24 = type metadata accessor for Header(0);
  if (*(a3 + *(v24 + 28)))
  {
    v25 = v24;
    swift_retain_n();
    v26 = Text.init(_:)();
    v48 = v27;
    v49 = v26;
    v28 = v27;
    v53 = v7;
    v30 = v29;
    v31 = a3;
    v33 = v32;
    v51 = v32;
    if (*(v31 + *(v25 + 36)))
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.0;
    }

    v35 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    v52 = v8;
    v50 = KeyPath;
    v59 = v26;
    v60 = v28;
    v37 = v30 & 1;
    v61 = v37;
    v62 = v33;
    v63 = v34;
    v64 = KeyPath;
    v65 = v35;
    static Font.Weight.semibold.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v38 = v54;
    View.fontWeight(_:)();

    v39 = v37;
    v7 = v53;
    outlined consume of Text.Storage(v49, v48, v39);

    v8 = v52;

    (*(v8 + 32))(v18, v38, v7);
    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  (*(v8 + 56))(v18, v40, 1, v7);
  outlined init with copy of DOCGridLayout.Spec?(v18, v14, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd);
  v42 = v57;
  v41 = v58;
  v43 = v56;
  *v56 = v58;
  v43[1] = v42;
  v44 = v55 & 1;
  *(v43 + 16) = v55 & 1;
  v43[3] = v23;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA4ViewPAAE10fontWeightyQrAA4FontV0F0VSgFQOyAA15ModifiedContentVyAMyAcA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtMd);
  outlined init with copy of DOCGridLayout.Spec?(v14, v43 + *(v45 + 48), &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd);
  outlined copy of Text.Storage(v41, v42, v44);

  outlined destroy of CharacterSet?(v18, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd);
  outlined destroy of CharacterSet?(v14, &_s7SwiftUI4ViewPAAE10fontWeightyQrAA4FontV0E0VSgFQOyAA15ModifiedContentVyAKyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAFSgGG_Qo_SgMd);
  outlined consume of Text.Storage(v41, v42, v44);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Header(uint64_t a1)
{
  v2 = MEMORY[0x24C1FB0D0](*(v1 + *(a1 + 24)), MEMORY[0x277D837D0]);
  MEMORY[0x24C1FAEA0](v2);

  return 0x20726564616568;
}

uint64_t key path getter for RenameObserver.isRenaming : RenameObserver@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t RenameObserver.isRenaming.getter()
{
  swift_getKeyPath();
  (*(*v0 + 144))();

  swift_beginAccess();
  return v0[16];
}

uint64_t RenameObserver.isRenaming.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x28223BE20](KeyPath, v5);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 152))(v6);
  }

  return result;
}

void (*RenameObserver.isRenaming.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 144))();

  v4[5] = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type RenameObserver and conformance RenameObserver, type metadata accessor for RenameObserver);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = RenameObserver._isRenaming.modify();
  return RenameObserver.isRenaming.modify;
}

uint64_t RenameObserver.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t RenameObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14RenameObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t RenameObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t RenameObserver.init()()
{
  *(v0 + 16) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t LeadingView.browserConfiguration.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for LeadingView(0) + 52);
  result = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 24) != 1)
  {
    v9 = *v6;
    v10 = *(v6 + 16);

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(v9, v8, v10, 0);
    (*(v2 + 8))(v5, v1);
    return v12[1];
  }

  return result;
}

uint64_t LeadingView.sizeCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LeadingView(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 56), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ContentSizeCategory();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t LeadingView.sizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = type metadata accessor for LeadingView(0);
  outlined init with copy of DOCGridLayout.Spec?(v1 + *(v12 + 60), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  }

  static os_log_type_t.fault.getter();
  v14 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t LeadingView.renameObserver.getter()
{
  type metadata accessor for LeadingView(0);
}

uint64_t LeadingView.init(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LeadingView(0);
  v13 = a2 + v12[13];
  KeyPath = swift_getKeyPath();
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = KeyPath;
  v13[24] = 0;
  v15 = v12[14];
  *(a2 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  swift_storeEnumTagMultiPayload();
  v16 = v12[15];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v12[16];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v12[18];
  type metadata accessor for RenameObserver(0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  ObservationRegistrar.init()();
  *(a2 + v18) = v19;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = v7[1];
    v57 = *v7;
    v58 = a1;
    v21 = v7[3];
    v54 = v7[2];
    v55 = v20;
    v56 = v21;
    v22 = v7[4];
    v59 = v7[5];
    v23 = v7[6];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
    v25 = v24[16];
    v26 = (v7 + v24[20]);
    v27 = v11;
    v28 = *v26;
    v29 = v26[1];
    v30 = *(v7 + v24[24]);
    v31 = *(v7 + v24[28]);
    v50 = *(v7 + v24[32]);
    v51 = v31;
    v32 = *(v7 + v24[36]);
    v52 = *(v7 + v24[40]);
    v53 = v32;
    outlined init with take of Column(v7 + v25, v27, type metadata accessor for LeadingTitle);
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(v27, a2 + v12[5], type metadata accessor for LeadingTitle);
    v33 = (a2 + v12[6]);
    *v33 = v28;
    v33[1] = v29;
    v35 = v54;
    v34 = v55;
    *a2 = v57;
    *(a2 + v12[7]) = v30;
    v36 = v56;
    v37 = v50;
    *(a2 + v12[8]) = v51;
    *(a2 + v12[9]) = v37;
    v38 = (a2 + v12[10]);
    *v38 = v34;
    v38[1] = v35;
    v38[2] = v36;
    v38[3] = v22;
    v57 = v22;
    v38[4] = v59;
    v38[5] = v23;
    v39 = v52;
    *(a2 + v12[11]) = v53;
    *(a2 + v12[12]) = v39;
    v40 = v27;
    if (v23 >= 2)
    {
      v41 = *(*v23 + 176);

      v41(v42);
      outlined consume of LeadingBadge?(v34, v35, v36, v57, v59, v23);
    }

    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v40, type metadata accessor for LeadingTitle);
    a1 = v58;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    *a2 = 0;
    v43 = (a2 + v12[5]);
    *v43 = 0;
    v43[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    v44 = (a2 + v12[6]);
    *v44 = 0;
    v44[1] = 0;
    *(a2 + v12[7]) = 0;
    *(a2 + v12[8]) = 0;
    *(a2 + v12[9]) = 0;
    v45 = a2 + v12[10];
    *v45 = 0u;
    *(v45 + 1) = 0u;
    *(v45 + 4) = 0;
    *(v45 + 5) = 1;
    type metadata accessor for OutlineExpansionState(0);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 20) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0;
    ObservationRegistrar.init()();
    *(a2 + v12[11]) = v46;
    type metadata accessor for OutlineProgressStateReference();
    v47 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    swift_weakAssign();
    *(a2 + v12[12]) = v47;
  }

  return outlined init with take of Column(a1, a2 + v12[17], type metadata accessor for Column);
}

double LeadingView.leadingIndentationSpacing()()
{
  v1 = type metadata accessor for ContentSizeCategory();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for LeadingView(0) + 28));
  LeadingView.browserConfiguration.getter();
  v8 = dbl_249BB9858[v7];
  LeadingView.sizeCategory.getter(v5);
  v9 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v2 + 8))(v5, v1);
  if (v9)
  {
    v10 = [objc_opt_self() defaultMetrics];
    [v10 scaledValueForValue_];
    v8 = v11;
  }

  return vcvtd_n_f64_s64(v6, 1uLL) * v8;
}

uint64_t LeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v47 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
  MEMORY[0x28223BE20](v49, v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAA6HStackVyAIyAKyAA6SpacerVAA12_FrameLayoutVG_AIyACyAKyAKyAKyAKyAKyAA6ButtonVyAIyACyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AOSgtGGAQGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GARG_ARSgtGSgACyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableH0VyA36_08DOCImageh9ContainerH0CGAQGAA08_OverlayS0VyAKyAKyAvQGAA07_OffsetW0VGGGAA08_PaddingM0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAGyAIyAKyAKyAKyAKyAA4TextVAXyA64_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0H0PAAE12labelsHiddenQryFQOyAA08ProgressH0VyAA05EmptyH0VA85_G_Qo_A55_GSgAKyAKyAKyA64_A73_GA0_GA77_GSgtGGA55_GAoKyAKyAKyA38_ySo014DOCChainedTagsH0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusH0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgARtGGA52_GAA024_SafeAreaRegionsIgnoringM0VG_AKyAMyAIyAR_A92_tGGA52_GSgtGGA120__GMd);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v47 - v23;
  if (LeadingView.subtitleShouldStackOverImageAndTitle()())
  {
    *v24 = static HorizontalAlignment.leading.getter();
    *(v24 + 1) = 0;
    v24[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyATyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAX5ScaleOGGAA15_RotationEffectVGAA010_AnimationT0VySbGGA10_G_AOSgtGGAQGAZyAA0O11BorderShapeVGGAA016_ForegroundStyleT0VyAA13AnyShapeStyleVGGAA023AccessibilityAttachmentT0VGA22_GARG_ARSgtGSgATyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA38_08DOCImaged9ContainerD0CGAQGAA08_OverlayT0VyAKyAKyAxQGAA07_OffsetX0VGGGAA08_PaddingG0VGAA08_OpacityX0VGA57_GAKyAKyAKyA44_A54_GA57_GA57_GGSgAKyAA0F0VyAIyAKyAKyAKyAKyAA4TextVAZyA68_14TruncationModeOGGA38_07OutlineuT0VGAZySiSgGGA25_yAA22HierarchicalShapeStyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA89_G_Qo_A57_GSgAKyAKyAKyA68_A77_GA2_GA81_GSgtGGA57_GAoKyAKyAKyA40_ySo014DOCChainedTagsD0CGA54_GA57_GA57_GSgAKyAKyAKyA40_yA38_013DOCItemStatusD0CGA54_GA57_GA57_GSgAKyAKyAVyAXGA54_GA57_GSgARtGGA54_GAA024_SafeAreaRegionsIgnoringG0VG_AKyAMyAIyAR_A96_tGGA54_GSgtGGMd);
    closure #1 in LeadingView.body.getter(v1, &v24[*(v25 + 44)]);
    outlined init with copy of DOCGridLayout.Spec?(v24, v20, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedCon, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Mod();
    _ConditionalContent<>.init(storage:)();
    v26 = v24;
    v27 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd;
  }

  else
  {
    v47[0] = v17;
    v47[1] = v21;
    v48 = v9;
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd);
    closure #1 in LeadingView.leadingContent.getter(v1, &v5[*(v28 + 44)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    v30 = static Edge.Set.top.getter();
    *(inited + 32) = v30;
    v31 = static Edge.Set.bottom.getter();
    *(inited + 33) = v31;
    v32 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v30)
    {
      v32 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v31)
    {
      v32 = Edge.Set.init(rawValue:)();
    }

    v33 = v48;
    EdgeInsets.init(_all:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    outlined init with take of (key: URL, value: FPItem)(v5, v8, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
    v42 = &v8[*(v49 + 36)];
    *v42 = v32;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = static SafeAreaRegions.all.getter();
    v44 = static Edge.Set.all.getter();
    outlined init with take of (key: URL, value: FPItem)(v8, v12, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
    v45 = &v12[*(v33 + 36)];
    *v45 = v43;
    v45[8] = v44;
    outlined init with take of (key: URL, value: FPItem)(v12, v16, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
    outlined init with copy of DOCGridLayout.Spec?(v16, v20, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedCon, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyAPyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAVyAT5ScaleOGGAA15_RotationEffectVGAA010_AnimationR0VySbGGA6_G_AKSgtGGAMGAVyAA0M11BorderShapeVGGAA016_ForegroundStyleR0VyAA03AnyY5StyleVGGAA023AccessibilityAttachmentR0VGA18_GANG_ANSgtGSgAPyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA34_08DOCImagee9ContainerE0CGAMGAA08_OverlayR0VyAGyAGyAtMGAA07_OffsetV0VGGGAA08_PaddingK0VGAA08_OpacityV0VGA53_GAGyAGyAGyA40_A50_GA53_GA53_GGSgAGyACyAEyAGyAGyAGyAGyAA4TextVAVyA62_14TruncationModeOGGA34_07OutlinesR0VGAVySiSgGGA21_yAA012HierarchicalY5StyleVGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A53_GSgAGyAGyAGyA62_A71_GAZGA75_GSgtGGA53_GAkGyAGyAGyA36_ySo014DOCChainedTagsE0CGA50_GA53_GA53_GSgAGyAGyAGyA36_yA34_013DOCItemStatusE0CGA50_GA53_GA53_GSgAGyAGyARyATGA50_GA53_GSgANtGGA50_GAA024_SafeAreaRegionsIgnoringK0VG_AGyAIyAEyAN_A90_tGGA50_GSgtGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, ModifiedContent<Spacer, _FrameLayout>>, ModifiedContent<Spacer, _FrameLayout>?)>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Mod();
    _ConditionalContent<>.init(storage:)();
    v26 = v16;
    v27 = &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd;
  }

  return outlined destroy of CharacterSet?(v26, v27);
}

Swift::Bool __swiftcall LeadingView.subtitleShouldStackOverImageAndTitle()()
{
  v36 = type metadata accessor for UserInterfaceSizeClass();
  v0 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v1);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for ContentSizeCategory();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LeadingView.sizeCategory.getter(v22);
  v23 = ContentSizeCategory.isAccessibilityCategory.getter();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    v27 = 0;
    return v27 & 1;
  }

  LeadingView.sizeClass.getter(v17);
  v24 = v36;
  (*(v0 + 104))(v13, *MEMORY[0x277CE0558], v36);
  (*(v0 + 56))(v13, 0, 1, v24);
  v25 = *(v3 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v17, v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v13, &v6[v25], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v26 = *(v0 + 48);
  if (v26(v6, 1, v24) != 1)
  {
    v28 = v35;
    outlined init with copy of DOCGridLayout.Spec?(v6, v35, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v26(&v6[v25], 1, v24) != 1)
    {
      v29 = v34;
      (*(v0 + 32))(v34, &v6[v25], v24);
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
      v30 = v28;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v0 + 8);
      v31(v29, v24);
      outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v31(v30, v24);
      outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      return v27 & 1;
    }

    outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (*(v0 + 8))(v28, v24);
    goto LABEL_8;
  }

  outlined destroy of CharacterSet?(v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of CharacterSet?(v17, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v26(&v6[v25], 1, v24) != 1)
  {
LABEL_8:
    outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v27 = 0;
    return v27 & 1;
  }

  outlined destroy of CharacterSet?(v6, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v27 = 1;
  return v27 & 1;
}

uint64_t closure #1 in LeadingView.body.getter@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v60 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
  MEMORY[0x28223BE20](v61, v7);
  v9 = &v60 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  MEMORY[0x28223BE20](v62, v10);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v66 = &v60 - v18;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v19 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd) + 44)];
  v63 = a1;
  closure #1 in LeadingView.leadingContent.getter(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_249B9FA70;
  v21 = static Edge.Set.top.getter();
  *(v20 + 32) = v21;
  v22 = static Edge.Set.bottom.getter();
  *(v20 + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  outlined init with take of (key: URL, value: FPItem)(v6, v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
  v32 = &v9[*(v61 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static SafeAreaRegions.all.getter();
  v34 = static Edge.Set.all.getter();
  outlined init with take of (key: URL, value: FPItem)(v9, v15, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
  v35 = &v15[*(v62 + 36)];
  *v35 = v33;
  v35[8] = v34;
  outlined init with take of (key: URL, value: FPItem)(v15, v66, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  if (*(v63 + *(type metadata accessor for LeadingView(0) + 24) + 8))
  {
    v36 = static VerticalAlignment.center.getter();
    v68 = 1;
    closure #1 in closure #1 in LeadingView.body.getter(&v96);
    v74 = v101;
    v75 = v102;
    v76[0] = v103[0];
    *(v76 + 12) = *(v103 + 12);
    v71 = v98;
    v72 = v99;
    v73 = v100;
    v69 = v96;
    v70 = v97;
    v87 = v101;
    v88 = v102;
    v89[0] = v103[0];
    *(v89 + 12) = *(v103 + 12);
    v84 = v98;
    v85 = v99;
    v86 = v100;
    v82 = v96;
    v83 = v97;
    outlined init with copy of DOCGridLayout.Spec?(&v69, &v91, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMd);
    outlined destroy of CharacterSet?(&v82, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAEyAEyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAA4FontVSgGGAA016_ForegroundStyleN0VyAA017HierarchicalShapeQ0VGGtGMd);
    *&v67[87] = v74;
    *&v67[103] = v75;
    *&v67[119] = v76[0];
    *&v67[131] = *(v76 + 12);
    *&v67[23] = v70;
    *&v67[39] = v71;
    *&v67[55] = v72;
    *&v67[71] = v73;
    *&v67[7] = v69;
    v37 = v68;
    v38 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    *(&v92[6] + 1) = *&v67[96];
    *(&v92[7] + 1) = *&v67[112];
    *(&v92[8] + 1) = *&v67[128];
    *(&v92[2] + 1) = *&v67[32];
    *(&v92[3] + 1) = *&v67[48];
    *(&v92[4] + 1) = *&v67[64];
    *(&v92[5] + 1) = *&v67[80];
    *(v92 + 1) = *v67;
    v91 = v36;
    LOBYTE(v92[0]) = v37;
    LODWORD(v92[9]) = *&v67[143];
    *(&v92[1] + 1) = *&v67[16];
    BYTE8(v92[9]) = v38;
    *&v93 = v39;
    *(&v93 + 1) = v40;
    *&v94 = v41;
    *(&v94 + 1) = v42;
    v95 = 0;
    DOCGridLayout.specIconWidth.modify(v39, v40);
    v105 = v92[9];
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v102 = v92[5];
    v103[0] = v92[6];
    v103[1] = v92[7];
    v104 = v92[8];
    v98 = v92[1];
    v99 = v92[2];
    v100 = v92[3];
    v101 = v92[4];
    v96 = v91;
    v97 = v92[0];
  }

  else
  {
    _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgWOi0_(&v96);
  }

  v44 = v65;
  v43 = v66;
  outlined init with copy of DOCGridLayout.Spec?(v66, v65, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  v78 = v105;
  v79 = v106;
  v80 = v107;
  v81 = v108;
  v75 = v102;
  v76[0] = v103[0];
  v76[1] = v103[1];
  v77 = v104;
  v71 = v98;
  v72 = v99;
  v73 = v100;
  v74 = v101;
  v69 = v96;
  v70 = v97;
  v45 = v64;
  outlined init with copy of DOCGridLayout.Spec?(v44, v64, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VG_ACyAEyAGyAL_A90_tGGA48_GSgtMd) + 48);
  v47 = v77;
  v89[3] = v78;
  v89[4] = v79;
  v48 = v79;
  v89[5] = v80;
  v49 = v75;
  v50 = v74;
  v88 = v75;
  v89[0] = v76[0];
  v51 = v76[0];
  v52 = v76[1];
  v89[1] = v76[1];
  v89[2] = v77;
  v53 = v72;
  v54 = v73;
  v86 = v73;
  v87 = v74;
  v55 = v71;
  v56 = v70;
  v84 = v71;
  v85 = v72;
  v57 = v69;
  v82 = v69;
  v83 = v70;
  v58 = v45 + v46;
  *(v58 + 160) = v78;
  *(v58 + 176) = v48;
  *(v58 + 192) = v80;
  *(v58 + 96) = v49;
  *(v58 + 112) = v51;
  *(v58 + 128) = v52;
  *(v58 + 144) = v47;
  *(v58 + 32) = v55;
  *(v58 + 48) = v53;
  *(v58 + 64) = v54;
  *(v58 + 80) = v50;
  v90 = v81;
  *(v58 + 208) = v81;
  *v58 = v57;
  *(v58 + 16) = v56;
  outlined init with copy of DOCGridLayout.Spec?(&v82, &v91, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMd);
  outlined destroy of CharacterSet?(v43, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  v92[9] = v78;
  v93 = v79;
  v94 = v80;
  v95 = v81;
  v92[5] = v75;
  v92[6] = v76[0];
  v92[7] = v76[1];
  v92[8] = v77;
  v92[1] = v71;
  v92[2] = v72;
  v92[3] = v73;
  v92[4] = v74;
  v91 = v69;
  v92[0] = v70;
  outlined destroy of CharacterSet?(&v91, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgMd);
  return outlined destroy of CharacterSet?(v44, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
}

uint64_t LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AIyAA012_ConditionalJ0VyAKyAKyAKyAKyAKyAA6ButtonVyAIyARyAKyAKyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAXyAV5ScaleOGGAA15_RotationEffectVGAA010_AnimationS0VySbGGA8_G_AMSgtGGAOGAXyAA0N11BorderShapeVGGAA016_ForegroundStyleS0VyAA03AnyZ5StyleVGGAA023AccessibilityAttachmentS0VGA20_GAPG_APSgtGSgARyAKyAKyAKyAKyAKy26DocumentManagerExecutables012DOCReuseableD0VyA36_08DOCImaged9ContainerD0CGAOGAA08_OverlayS0VyAKyAKyAvOGAA07_OffsetW0VGGGAA08_PaddingG0VGAA08_OpacityW0VGA55_GAKyAKyAKyA42_A52_GA55_GA55_GGSgAKyAA6VStackVyAIyAKyAKyAKyAKyAA4TextVAXyA66_14TruncationModeOGGA36_07OutlinetS0VGAXySiSgGGA23_yAA012HierarchicalZ5StyleVGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA87_G_Qo_A55_GSgAKyAKyAKyA66_A75_GA0_GA79_GSgtGGA55_GAmKyAKyAKyA38_ySo014DOCChainedTagsD0CGA52_GA55_GA55_GSgAKyAKyAKyA38_yA36_013DOCItemStatusD0CGA52_GA55_GA55_GSgAKyAKyATyAVGA52_GA55_GSgAPtGGMd);
  closure #1 in LeadingView.leadingContent.getter(v2, &v7[*(v12 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  v14 = static Edge.Set.top.getter();
  *(inited + 32) = v14;
  v15 = static Edge.Set.bottom.getter();
  *(inited + 33) = v15;
  v16 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  outlined init with take of (key: URL, value: FPItem)(v7, v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AEyAA012_ConditionalG0VyAGyAGyAGyAGyAGyAA6ButtonVyAEyANyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyAGyAGyAGyAGyAGy26DocumentManagerExecutables012DOCReuseableE0VyA32_08DOCImagee9ContainerE0CGAKGAA08_OverlayQ0VyAGyAGyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GAGyAGyAGyA38_A48_GA51_GA51_GGSgAGyAA6VStackVyAEyAGyAGyAGyAGyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA83_G_Qo_A51_GSgAGyAGyAGyA62_A71_GAXGA75_GSgtGGA51_GAiGyAGyAGyA34_ySo014DOCChainedTagsE0CGA48_GA51_GA51_GSgAGyAGyAGyA34_yA32_013DOCItemStatusE0CGA48_GA51_GA51_GSgAGyAGyAPyARGA48_GA51_GSgALtGGMd);
  v25 = &v11[*(v8 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = static SafeAreaRegions.all.getter();
  v27 = static Edge.Set.all.getter();
  outlined init with take of (key: URL, value: FPItem)(v11, a1, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GMd);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AGyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAGyANyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGATyAR5ScaleOGGAA15_RotationEffectVGAA010_AnimationQ0VySbGGA4_G_AISgtGGAKGATyAA0L11BorderShapeVGGAA016_ForegroundStyleQ0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentQ0VGA16_GALG_ALSgtGSgANyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableG0VyA32_08DOCImageg9ContainerG0CGAKGAA08_OverlayQ0VyACyACyArKGAA07_OffsetU0VGGGAA08_PaddingJ0VGAA08_OpacityU0VGA51_GACyACyACyA38_A48_GA51_GA51_GGSgACyAA6VStackVyAGyACyACyACyACyAA4TextVATyA62_14TruncationModeOGGA32_07OutlinerQ0VGATySiSgGGA19_yAA012HierarchicalxZ0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA83_G_Qo_A51_GSgACyACyACyA62_A71_GAXGA75_GSgtGGA51_GAiCyACyACyA34_ySo014DOCChainedTagsG0CGA48_GA51_GA51_GSgACyACyACyA34_yA32_013DOCItemStatusG0CGA48_GA51_GA51_GSgACyACyAPyARGA48_GA51_GSgALtGGA48_GAA024_SafeAreaRegionsIgnoringJ0VGMd);
  v29 = a1 + *(result + 36);
  *v29 = v26;
  *(v29 + 8) = v27;
  return result;
}

uint64_t closure #1 in closure #1 in LeadingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = v20;
  v3 = v22;
  v4 = v24;
  v5 = v25;
  v28 = 1;
  v27 = v21;
  v26 = v23;
  LeadingView.subtitleView.getter(&v16);
  v6 = v28;
  v7 = v27;
  v8 = v26;
  v9 = v17;
  v29[1] = v17;
  v10 = v18;
  v29[2] = v18;
  v11 = v19[0];
  v30[0] = v19[0];
  *(v30 + 12) = *(v19 + 12);
  v12 = v16;
  v29[0] = v16;
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v2;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;
  *(a1 + 40) = v8;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 96) = v10;
  *(a1 + 112) = v11;
  v13 = *(v19 + 12);
  *(a1 + 124) = *(v19 + 12);
  *(a1 + 64) = v12;
  *(a1 + 80) = v9;
  v31[1] = v9;
  v31[2] = v10;
  v32[0] = v11;
  *(v32 + 12) = v13;
  v31[0] = v12;
  outlined init with copy of DOCGridLayout.Spec?(v29, v15, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd);
  return outlined destroy of CharacterSet?(v31, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd);
}

uint64_t LeadingView.subtitleView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LeadingView(0);
  v9 = (v1 + *(result + 24));
  v10 = v9[1];
  if (v10)
  {
    v11 = result;
    v30 = *v9;
    v31 = v10;
    lazy protocol witness table accessor for type String and conformance String();

    v12 = Text.init<A>(_:)();
    v26 = v13;
    v27 = v12;
    v15 = v14;
    v29 = v16;
    KeyPath = swift_getKeyPath();
    v28 = static Font.footnote.getter();
    v18 = swift_getKeyPath();
    v19 = v15 & 1;
    v34 = v15 & 1;
    v33 = 0;
    v20 = v1 + *(v11 + 64);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      if ((v21 & 1) == 0)
      {
LABEL_4:
        result = static HierarchicalShapeStyle.secondary.getter();
LABEL_7:
        v23 = v26;
        *a1 = v27;
        *(a1 + 8) = v23;
        *(a1 + 16) = v19;
        *(a1 + 17) = v30;
        *(a1 + 20) = *(&v30 + 3);
        *(a1 + 24) = v29;
        *(a1 + 32) = KeyPath;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        *(a1 + 49) = *v32;
        *(a1 + 52) = *&v32[3];
        v24 = v28;
        *(a1 + 56) = v18;
        *(a1 + 64) = v24;
        *(a1 + 72) = result;
        return result;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v21, 0);
      (*(v4 + 8))(v7, v3);
      if (v30 != 1)
      {
        goto LABEL_4;
      }
    }

    result = static HierarchicalShapeStyle.quaternary.getter();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LeadingView.leadingContent.getter@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v419 = a2;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMd);
  MEMORY[0x28223BE20](v396, v3);
  v405 = &v361 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
  v417 = *(v5 - 8);
  v418 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v398 = &v361 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v397 = &v361 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v427 = &v361 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v429 = &v361 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMd);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v423 = (&v361 - v19);
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  MEMORY[0x28223BE20](v422, v20);
  v426 = &v361 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v421 = &v361 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v430 = &v361 - v27;
  v28 = type metadata accessor for EnvironmentValues();
  v407 = *(v28 - 8);
  v408 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v406 = &v361 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Image.ResizingMode();
  v368 = *(v31 - 8);
  v369 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v367 = &v361 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMd));
  v412 = *(*&v420 - 8);
  MEMORY[0x28223BE20](*&v420, v34);
  v409 = &v361 - v35;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGyAA6ButtonVyAA9TupleViewVyACyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAM5ScaleOGGAA15_RotationEffectVGAA010_AnimationN0VySbGGA_G_AA6SpacerVSgtGGAA12_FrameLayoutVGAOyAA0G11BorderShapeVGGAA016_ForegroundStyleN0VyAA03AnyxZ0VGGAA023AccessibilityAttachmentN0VGA15_GAGyA6_A11_G_GMd);
  MEMORY[0x28223BE20](v402, v36);
  v404 = &v361 - v37;
  v371 = type metadata accessor for TintShapeStyle();
  MEMORY[0x28223BE20](v371, v38);
  v370 = &v361 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = type metadata accessor for LeadingView(0);
  v382 = *(v432 - 1);
  MEMORY[0x28223BE20](v432, v40);
  v383 = v41;
  v384 = &v361 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd);
  MEMORY[0x28223BE20](v385, v42);
  v386 = &v361 - v43;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd);
  MEMORY[0x28223BE20](v391, v44);
  v390 = &v361 - v45;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd);
  MEMORY[0x28223BE20](v389, v46);
  v387 = &v361 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v392 = &v361 - v50;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd);
  MEMORY[0x28223BE20](v401, v51);
  v388 = &v361 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v393 = &v361 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v403 = &v361 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v60);
  v411 = &v361 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd);
  MEMORY[0x28223BE20](v62 - 8, v63);
  v425 = &v361 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v431 = &v361 - v67;
  v424 = type metadata accessor for ContentSizeCategory();
  v428 = *(v424 - 8);
  MEMORY[0x28223BE20](v424, v68);
  v399 = &v361 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v71);
  v416 = &v361 - v72;
  v73 = type metadata accessor for UserInterfaceSizeClass();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v75);
  v395 = &v361 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
  MEMORY[0x28223BE20](v77, v78);
  v394 = &v361 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80, v81);
  v365 = &v361 - v82;
  MEMORY[0x28223BE20](v83, v84);
  v86 = &v361 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x28223BE20](v87 - 8, v88);
  v366 = &v361 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v91);
  v380 = &v361 - v92;
  MEMORY[0x28223BE20](v93, v94);
  v381 = &v361 - v95;
  MEMORY[0x28223BE20](v96, v97);
  v362 = &v361 - v98;
  MEMORY[0x28223BE20](v99, v100);
  v363 = &v361 - v101;
  MEMORY[0x28223BE20](v102, v103);
  v364 = &v361 - v104;
  MEMORY[0x28223BE20](v105, v106);
  v108 = &v361 - v107;
  MEMORY[0x28223BE20](v109, v110);
  v112 = &v361 - v111;
  MEMORY[0x28223BE20](v113, v114);
  v116 = &v361 - v115;
  v433 = a1;
  LeadingView.sizeClass.getter(&v361 - v115);
  v117 = v74[13];
  v372 = *MEMORY[0x277CE0558];
  v373 = v117;
  v374 = v74 + 13;
  v117(v112);
  v375 = v74[7];
  v376 = v74 + 7;
  v375(v112, 0, 1, v73);
  v379 = v77;
  v118 = *(v77 + 48);
  outlined init with copy of DOCGridLayout.Spec?(v116, v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined init with copy of DOCGridLayout.Spec?(v112, &v86[v118], &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v410 = v74;
  v119 = v74[6];
  v120 = v119(v86, 1, v73);
  v400 = v73;
  v377 = v119;
  v378 = v74 + 6;
  if (v120 == 1)
  {
    outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    if (v119(&v86[v118], 1, v73) == 1)
    {
      outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of DOCGridLayout.Spec?(v86, v108, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  if (v119(&v86[v118], 1, v73) == 1)
  {
    outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (v410[1])(v108, v73);
LABEL_6:
    outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    goto LABEL_8;
  }

  v121 = v410;
  v122 = v395;
  (v410[4])(v395, &v86[v118], v73);
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
  LODWORD(v415) = dispatch thunk of static Equatable.== infix(_:_:)();
  v123 = v121[1];
  v123(v122, v73);
  outlined destroy of CharacterSet?(v112, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  outlined destroy of CharacterSet?(v116, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v123(v108, v400);
  outlined destroy of CharacterSet?(v86, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
LABEL_8:
  v124 = v433;
  v125 = v428;
  LeadingView.browserConfiguration.getter();
  v127 = dbl_249BB9858[v126];
  v128 = v416;
  LeadingView.sizeCategory.getter(v416);
  v129 = ContentSizeCategory.isAccessibilityCategory.getter();
  v132 = *(v125 + 8);
  v130 = v125 + 8;
  v131 = v132;
  (v132)(v128, v424);
  if (v129)
  {
    v133 = [objc_opt_self() defaultMetrics];
    [v133 scaledValueForValue_];
  }

  LeadingView.leadingIndentationSpacing()();
  static Alignment.center.getter();
  v134 = 1;
  v135 = _FrameLayout.init(width:height:alignment:)();
  v415 = v526;
  v416 = v524;
  v413 = v529;
  v414 = v528;
  v523 = 1;
  v522 = v525;
  v521 = v527;
  v136 = *(v124 + v432[11]);
  if ((*(*v136 + 256))(v135))
  {
    if ((*(*v136 + 208))())
    {
      v137 = v384;
      _s26DocumentManagerExecutables6ColumnOWOcTm_0(v124, v384, type metadata accessor for LeadingView);
      v138 = (*(v382 + 80) + 16) & ~*(v382 + 80);
      v139 = swift_allocObject();
      v140 = outlined init with take of Column(v137, v139 + v138, type metadata accessor for LeadingView);
      MEMORY[0x28223BE20](v140, v141);
      *(&v361 - 2) = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMd);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationL0VySbGGAWG_AA6SpacerVSgtGMd);
      v142 = v386;
      Button.init(action:label:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v143 = &v142[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMd) + 36)];
      v144 = v531;
      *v143 = v530;
      *(v143 + 1) = v144;
      *(v143 + 2) = v532;
      v145 = &v142[*(v385 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
      static ButtonBorderShape.circle.getter();
      *v145 = swift_getKeyPath();
      if ((*(*v136 + 304))())
      {
        LODWORD(v507) = static HierarchicalShapeStyle.secondary.getter();
      }

      else
      {
        TintShapeStyle.init()();
      }

      v151 = AnyShapeStyle.init<A>(_:)();
      v152 = v142;
      v153 = v390;
      outlined init with take of (key: URL, value: FPItem)(v152, v390, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd);
      *(v153 + *(v391 + 36)) = v151;
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
      v154 = v387;
      View.accessibilityIdentifier(_:)();
      outlined destroy of CharacterSet?(v153, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd);
      v155 = v392;
      ModifiedContent<>.accessibilityHidden(_:)();
      outlined destroy of CharacterSet?(v154, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd);
      v156 = v388;
      v157 = &v388[*(v401 + 36)];
      static ButtonBorderShape.circle.getter();
      *v157 = swift_getKeyPath();
      outlined init with take of (key: URL, value: FPItem)(v155, v156, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd);
      v158 = v156;
      v159 = v393;
      outlined init with take of (key: URL, value: FPItem)(v158, v393, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd);
      outlined init with copy of DOCGridLayout.Spec?(v159, v404, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      outlined destroy of CharacterSet?(v159, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd);
    }

    else
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v146 = v530;
      v147 = BYTE8(v530);
      v148 = v531;
      v149 = BYTE8(v531);
      LOBYTE(v507) = 1;
      LOBYTE(v493) = BYTE8(v530);
      LOBYTE(v469) = BYTE8(v531);
      v150 = v404;
      *v404 = 0;
      v150[8] = 1;
      *(v150 + 2) = v146;
      v150[24] = v147;
      *(v150 + 4) = v148;
      v150[40] = v149;
      *(v150 + 3) = v532;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    v404 = v131;
    v428 = v130;
    if (UIAccessibilityButtonShapesEnabled())
    {
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      LODWORD(v402) = 0;
      v160 = v533;
      v392 = v535;
      v393 = v537;
      v401 = v538;
      LOBYTE(v493) = 1;
      LOBYTE(v469) = v534;
      LOBYTE(v457) = v536;
      v161 = 1;
      v162 = v534;
      v163 = v536;
      LOBYTE(v507) = 0;
    }

    else
    {
      v162 = 0;
      v163 = 0;
      v401 = 0;
      v392 = 0;
      v393 = 0;
      v160 = 0;
      v161 = 0;
      LODWORD(v402) = 1;
    }

    v164 = v411;
    v165 = v403;
    outlined init with copy of DOCGridLayout.Spec?(v411, v403, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd);
    v166 = v409;
    outlined init with copy of DOCGridLayout.Spec?(v165, v409, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd);
    v167 = v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GG_A25_SgtMd) + 48);
    *v167 = 0;
    *(v167 + 8) = v161;
    *(v167 + 16) = v160;
    *(v167 + 24) = v162;
    v168 = v393;
    *(v167 + 32) = v392;
    *(v167 + 40) = v163;
    v169 = v401;
    *(v167 + 48) = v168;
    *(v167 + 56) = v169;
    *(v167 + 64) = v402;
    outlined destroy of CharacterSet?(v164, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd);
    outlined destroy of CharacterSet?(v165, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEyAA6ButtonVyAA9TupleViewVyACyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0F11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAEyA4_A9_GGMd);
    outlined init with take of (key: URL, value: FPItem)(v166, v431, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGMd);
    v134 = 0;
    v124 = v433;
    v130 = v428;
    v131 = v404;
  }

  (*(*&v412 + 56))(v431, v134, 1, COERCE_DOUBLE(*&v420));
  v170 = v432;
  v171 = (v124 + v432[10]);
  v172 = v171[5];
  if (v172 < 2 || (v173 = v171[4], (v173 & 1) != 0))
  {
LABEL_32:
    if (!*v124)
    {
      _s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgWOi0_(&v507);
      goto LABEL_49;
    }

    v210 = *v124;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v211) = v546;
    v428 = v547;
    LODWORD(v212) = v548;
    v420 = *&v549;
    v411 = v545;
    v412 = *&v550;
    LODWORD(v409) = static Edge.Set.trailing.getter();
    v213 = EdgeInsets.init(_all:)();
    v215 = v214;
    v217 = v216;
    v219 = v218;
    v221 = v220;
    LOBYTE(v457) = v211;
    LOBYTE(v440) = v212;
    LOBYTE(v434) = 0;
    if ((*(**(v124 + v170[18]) + 120))(v213))
    {
      LODWORD(v404) = v212;
      v212 = v399;
      LeadingView.sizeCategory.getter(v399);
      v222 = ContentSizeCategory.isAccessibilityCategory.getter();
      v223 = v212;
      LOBYTE(v212) = v404;
      (v131)(v223, v424);
      if (v222)
      {
        LODWORD(v403) = v211;
        v424 = v210;
        v211 = v381;
        LeadingView.sizeClass.getter(v381);
        v224 = v380;
        v225 = v400;
        v373(v380, v372, v400);
        v375(v224, 0, 1, v225);
        v226 = *(v379 + 48);
        v212 = v394;
        outlined init with copy of DOCGridLayout.Spec?(v211, v394, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        outlined init with copy of DOCGridLayout.Spec?(v224, v212 + v226, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
        v227 = v377;
        if (v377(v212, 1, v225) == 1)
        {
          outlined destroy of CharacterSet?(v224, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          outlined destroy of CharacterSet?(v211, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          v228 = v227(v394 + v226, 1, v225);
          v212 = v394;
          v210 = v424;
          LOBYTE(v211) = v403;
          if (v228 == 1)
          {
            outlined destroy of CharacterSet?(v394, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            v229 = 0.0;
            v124 = v433;
            v170 = v432;
            LOBYTE(v212) = v404;
LABEL_43:
            v231 = v124 + v170[16];
            v232 = *v231;
            if (v231[8] != 1)
            {

              static os_log_type_t.fault.getter();
              v233 = static Log.runtimeIssuesLog.getter();
              os_log(_:dso:log:_:_:)();

              v124 = v433;
              v234 = v406;
              EnvironmentValues.init()();
              swift_getAtKeyPath();
              outlined consume of Environment<Bool>.Content(v232, 0);
              (*(v407 + 8))(v234, v408);
              LOBYTE(v232) = v507;
            }

            v235 = 0.35;
            *&v469 = v210;
            *(&v469 + 1) = v411;
            if ((v232 & 1) == 0)
            {
              v235 = 1.0;
            }

            LOBYTE(v470) = v211;
            *(&v470 + 1) = v428;
            LOBYTE(v471) = v212;
            *(&v471 + 1) = v420;
            *&v472 = v412;
            BYTE8(v472) = v409;
            *&v473 = v215;
            *(&v473 + 1) = v217;
            *&v474 = v219;
            *(&v474 + 1) = v221;
            LOBYTE(v475) = 0;
            *(&v475 + 1) = v229;
            *&v476 = v235;
            _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGy26DocumentManagerExecutables16DOCReuseableViewVyAH08DOCImagek9ContainerK0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAGyAA5ImageVAOGAA13_OffsetEffectVGGGAA08_PaddingO0VGAA08_OpacityT0VGA3_GAGyAGyAGyAPA0_GA3_GA3_G_GWOi0_(&v469);
            v503 = v479;
            v504 = v480;
            v505 = v481;
            v506 = v482;
            v499 = v475;
            v500 = v476;
            v501 = v477;
            v502 = v478;
            v495 = v471;
            v496 = v472;
            v497 = v473;
            v498 = v474;
            v493 = v469;
            v494 = v470;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd);
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
            lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
            _ConditionalContent<>.init(storage:)();
            v503 = v517;
            v504 = v518;
            v505 = v519;
            v506 = v520;
            v499 = v513;
            v500 = v514;
            v501 = v515;
            v502 = v516;
            v495 = v509;
            v496 = v510;
            v497 = v511;
            v498 = v512;
            v493 = v507;
            v494 = v508;
            DOCGridLayout.specIconWidth.modify(*&v507, *&v508);
            v517 = v503;
            v518 = v504;
            v519 = v505;
            v520 = v506;
            v513 = v499;
            v514 = v500;
            v515 = v501;
            v516 = v502;
            v509 = v495;
            v510 = v496;
            v511 = v497;
            v512 = v498;
            v507 = v493;
            v508 = v494;
            goto LABEL_48;
          }
        }

        else
        {
          v230 = v366;
          outlined init with copy of DOCGridLayout.Spec?(v212, v366, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          if (v227(v212 + v226, 1, v225) != 1)
          {
            v347 = v410;
            v348 = v212 + v226;
            v349 = v395;
            (v410[4])(v395, v348, v225);
            lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
            v350 = dispatch thunk of static Equatable.== infix(_:_:)();
            v351 = v347[1];
            v351(v349, v225);
            outlined destroy of CharacterSet?(v380, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            outlined destroy of CharacterSet?(v381, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            v351(v230, v225);
            outlined destroy of CharacterSet?(v212, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
            v229 = 0.0;
            v124 = v433;
            v170 = v432;
            v210 = v424;
            LOBYTE(v211) = v403;
            LOBYTE(v212) = v404;
            if (v350)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }

          outlined destroy of CharacterSet?(v380, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          outlined destroy of CharacterSet?(v381, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
          (v410[1])(v230, v225);
          v210 = v424;
          LOBYTE(v211) = v403;
        }

        outlined destroy of CharacterSet?(v212, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
        v124 = v433;
        v170 = v432;
        LOBYTE(v212) = v404;
      }
    }

LABEL_42:
    v229 = 1.0;
    goto LABEL_43;
  }

  v174 = *v171;
  v411 = v171[1];
  v412 = *&v174;
  v176 = v171[2];
  v175 = v171[3];
  v409 = v176;
  v420 = *&v175;
  v177 = *(*v172 + 144);

  v179 = v177(v178);
  if (!v179)
  {
LABEL_31:
    outlined consume of LeadingBadge?(*&v412, v411, v409, *&v420, v173, v172);
    v170 = v432;
    goto LABEL_32;
  }

  v180 = v179;
  v181 = *v124;
  if (!*v124)
  {

    goto LABEL_31;
  }

  v404 = v131;
  v428 = v130;
  v182 = v420;
  v402 = v181;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v391) = v540;
  v401 = v541;
  LODWORD(v390) = v542;
  v394 = v543;
  v392 = v539;
  v393 = v544;
  v183 = static Alignment.bottomTrailing.getter();
  v190 = v184;
  v403 = v180;
  Image.init(uiImage:)();
  v185 = v367;
  v186 = v368;
  v189 = v369;
  (*(v368 + 104))(v367, *MEMORY[0x277CE0FE0], v369);
  v187 = Image.resizable(capInsets:resizingMode:)();
  v188 = v433;

  (*(v186 + 8))(v185, v189);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LODWORD(v493) = v507;
  *(&v493 + 3) = *(&v507 + 3);
  LODWORD(v469) = v457;
  *(&v469 + 3) = *(&v457 + 3);
  DWORD1(v435) = *(&v507 + 3);
  *(&v435 + 1) = v493;
  DWORD1(v436) = *(&v457 + 3);
  *(&v436 + 1) = v469;
  *&v434 = v187;
  *(&v434 + 1) = v545;
  LOBYTE(v435) = v546;
  *(&v435 + 1) = v547;
  LOBYTE(v436) = v548;
  *(&v436 + 1) = v549;
  *&v437 = v550;
  *(&v437 + 1) = v409;
  *&v438 = -v182;
  *(&v438 + 1) = v183;
  v439 = v190;
  LOBYTE(v457) = v391;
  LOBYTE(v483) = v390;
  v456 = v190;
  v455 = v438;
  v454 = v437;
  v453 = v436;
  v452 = v435;
  v451 = v434;
  v440 = v187;
  v441 = v545;
  LOBYTE(v442) = v546;
  HIDWORD(v442) = *(&v507 + 3);
  *(&v442 + 1) = v493;
  v443 = v547;
  LOBYTE(v444) = v548;
  HIDWORD(v444) = *(&v457 + 3);
  *(&v444 + 1) = v469;
  v445 = v549;
  v446 = v550;
  v447 = v409;
  v448 = -v182;
  v449 = v183;
  v450 = v190;
  outlined init with copy of DOCGridLayout.Spec?(&v434, &v507, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
  outlined destroy of CharacterSet?(&v440, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
  LODWORD(v391) = v457;
  LODWORD(v189) = v483;
  LODWORD(v190) = static Edge.Set.trailing.getter();
  v191 = EdgeInsets.init(_all:)();
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v199 = v198;
  LOBYTE(v488) = 0;
  v200 = v432;
  if (((*(**(v188 + v432[18]) + 120))(v191) & 1) == 0)
  {
    goto LABEL_102;
  }

  LODWORD(v390) = v189;
  v189 = v399;
  LeadingView.sizeCategory.getter(v399);
  v201 = ContentSizeCategory.isAccessibilityCategory.getter();
  v202 = v189;
  LOBYTE(v189) = v390;
  (v404)(v202, v424);
  if ((v201 & 1) == 0)
  {
    goto LABEL_102;
  }

  LODWORD(v428) = v190;
  v189 = v364;
  LeadingView.sizeClass.getter(v364);
  v203 = v363;
  v204 = v400;
  v373(v363, v372, v400);
  v375(v203, 0, 1, v204);
  v205 = *(v379 + 48);
  v206 = v365;
  outlined init with copy of DOCGridLayout.Spec?(v189, v365, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v424 = v205;
  outlined init with copy of DOCGridLayout.Spec?(v203, v206 + v205, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v190 = v377;
  if (v377(v206, 1, v204) != 1)
  {
    v352 = v362;
    outlined init with copy of DOCGridLayout.Spec?(v206, v362, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v189 = v424;
    if ((v190)(v206 + v424, 1, v204) != 1)
    {
      v358 = v410;
      v190 = v395;
      (v410[4])(v395, v206 + v189, v204);
      lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
      v359 = v206;
      LODWORD(v424) = dispatch thunk of static Equatable.== infix(_:_:)();
      v360 = v358[1];
      v360(v190, v204);
      outlined destroy of CharacterSet?(v363, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      outlined destroy of CharacterSet?(v364, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v360(v352, v204);
      outlined destroy of CharacterSet?(v359, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
      v209 = 0.0;
      v188 = v433;
      v200 = v432;
      LOBYTE(v190) = v428;
      LOBYTE(v189) = v390;
      if (v424)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    outlined destroy of CharacterSet?(v363, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v207 = v365;
    outlined destroy of CharacterSet?(v364, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    (v410[1])(v352, v204);
    LOBYTE(v190) = v428;
    LOBYTE(v189) = v390;
    goto LABEL_101;
  }

  outlined destroy of CharacterSet?(v203, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v207 = v365;
  outlined destroy of CharacterSet?(v189, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v208 = (v190)(v207 + v424, 1, v204);
  LOBYTE(v190) = v428;
  LOBYTE(v189) = v390;
  if (v208 != 1)
  {
LABEL_101:
    outlined destroy of CharacterSet?(v207, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd);
    v188 = v433;
    v200 = v432;
LABEL_102:
    v209 = 1.0;
    goto LABEL_103;
  }

  outlined destroy of CharacterSet?(v207, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  v209 = 0.0;
  v188 = v433;
  v200 = v432;
LABEL_103:
  v353 = v188 + v200[16];
  v354 = *v353;
  if (*(v353 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v355 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v356 = v406;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v354, 0);
    (*(v407 + 8))(v356, v408);
    LOBYTE(v354) = v507;
  }

  v357 = 0.35;
  *&v457 = v402;
  *(&v457 + 1) = v392;
  if ((v354 & 1) == 0)
  {
    v357 = 1.0;
  }

  LOBYTE(v458) = v391;
  *(&v458 + 1) = v401;
  LOBYTE(v459) = v189;
  *(&v459 + 1) = v394;
  *&v460[0] = v393;
  *(&v460[2] + 8) = v453;
  *(&v460[3] + 8) = v454;
  *(&v460[4] + 8) = v455;
  *(&v460[5] + 1) = v456;
  *(v460 + 8) = v451;
  *(&v460[1] + 8) = v452;
  LOBYTE(v461) = v190;
  *(&v461 + 1) = v193;
  *&v462 = v195;
  *(&v462 + 1) = v197;
  *&v463 = v199;
  BYTE8(v463) = 0;
  *&v464 = v209;
  *(&v464 + 1) = v357;
  v475 = v460[3];
  v476 = v460[4];
  v471 = v459;
  v472 = v460[0];
  v473 = v460[1];
  v474 = v460[2];
  v469 = v457;
  v470 = v458;
  v477 = v460[5];
  v478 = v461;
  v479 = v462;
  v480 = v463;
  v481 = v464;
  _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAGy26DocumentManagerExecutables16DOCReuseableViewVyAH08DOCImagek9ContainerK0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAGyAGyAA5ImageVAOGAA13_OffsetEffectVGGGAA08_PaddingO0VGAA08_OpacityT0VGA3_GAGyAGyAGyAPA0_GA3_GA3_G_GWOi_(&v469);
  v503 = v479;
  v504 = v480;
  v505 = v481;
  v506 = v482;
  v499 = v475;
  v500 = v476;
  v501 = v477;
  v502 = v478;
  v495 = v471;
  v496 = v472;
  v497 = v473;
  v498 = v474;
  v493 = v469;
  v494 = v470;
  outlined init with copy of DOCGridLayout.Spec?(&v457, &v507, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined consume of LeadingBadge?(*&v412, v411, v409, *&v420, v173, v172);

  outlined destroy of CharacterSet?(&v457, &_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd);
  v503 = v517;
  v504 = v518;
  v505 = v519;
  v506 = v520;
  v499 = v513;
  v500 = v514;
  v501 = v515;
  v502 = v516;
  v495 = v509;
  v496 = v510;
  v497 = v511;
  v498 = v512;
  v493 = v507;
  v494 = v508;
  DOCGridLayout.specIconWidth.modify(*&v507, *&v508);
  v517 = v503;
  v518 = v504;
  v519 = v505;
  v520 = v506;
  v513 = v499;
  v514 = v500;
  v515 = v501;
  v516 = v502;
  v509 = v495;
  v510 = v496;
  v511 = v497;
  v512 = v498;
  v507 = v493;
  v508 = v494;
  v124 = v433;
LABEL_48:
  v170 = v432;
LABEL_49:
  v236 = static HorizontalAlignment.leading.getter();
  v237 = v423;
  *v423 = v236;
  *(v237 + 8) = 0;
  *(v237 + 16) = 1;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAM14TruncationModeOGG26DocumentManagerExecutables011OutlineFontO0VGAOySiSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeX0VGG_AKyAA0D0PAAE12labelsHiddenQryFQOyAA08ProgressD0VyAA05EmptyD0VA11_G_Qo_AA14_OpacityEffectVGSgAKyAKyAKyAmYGAOyAA0V0VSgGGA3_GSgtGGMd);
  v239 = closure #4 in closure #1 in LeadingView.leadingContent.getter(v124, v237 + *(v238 + 44));
  v240 = *(**(v124 + v170[18]) + 120);
  v241 = 0;
  if ((v240)(v239))
  {
    v242 = 0.0;
  }

  else
  {
    v242 = 1.0;
  }

  v243 = v421;
  outlined init with take of (key: URL, value: FPItem)(v237, v421, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_AGyAA0E0PAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VA7_G_Qo_AA14_OpacityEffectVGSgAGyAGyAGyAiUGAKyAA0S0VSgGGA_GSgtGGMd);
  *(v243 + *(v422 + 36)) = v242;
  v244 = outlined init with take of (key: URL, value: FPItem)(v243, v430, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  v245 = *(v124 + v170[9]);
  v428 = v245;
  if (!v245)
  {
    v423 = 0;
    v424 = 0;
    v412 = 0.0;
    v422 = 0;
    v250 = 0;
    v252 = 0;
    v254 = 0;
    v256 = 0;
    goto LABEL_66;
  }

  v246 = v245;
  v247 = static Edge.Set.trailing.getter();
  v248 = EdgeInsets.init(_all:)();
  v250 = v249;
  v252 = v251;
  v254 = v253;
  v256 = v255;
  v257 = (v240)(v248);
  LOBYTE(v493) = 0;
  v424 = 0;
  if ((v240() & 1) == 0)
  {
    v259 = v433 + v170[16];
    v260 = *v259;
    if (v259[8] == 1)
    {

      if ((v260 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v261 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v262 = v406;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v260, 0);
      v263 = v262;
      v170 = v432;
      (*(v407 + 8))(v263, v408);

      if ((v469 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v258 = 0x3FD6666666666666;
    goto LABEL_62;
  }

LABEL_55:
  v258 = 0x3FF0000000000000;
LABEL_62:
  v412 = *&v258;
  v124 = v433;
  if (v257)
  {
    v264 = 0;
  }

  else
  {
    v264 = 0x3FF0000000000000;
  }

  v422 = v247;
  v423 = v264;
LABEL_66:
  v265 = *(v124 + v170[8]);
  if (!v265)
  {
    v410 = 0;
    v411 = 0;
    v420 = 0.0;
    v421 = 0;
    v409 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    v272 = v418;
    goto LABEL_85;
  }

  v266 = *(**(v124 + v170[12]) + 88);
  v267 = v265;
  v268 = v266();
  if (!v268)
  {

    goto LABEL_72;
  }

  if ((*(*v268 + 128))())
  {

LABEL_72:
    v410 = 0;
    v411 = 0;
    v420 = 0.0;
    v421 = 0;
    v409 = 0;
    v269 = 0;
    v270 = 0;
    v271 = 0;
    v272 = v418;
    v124 = v433;
    v170 = v432;
    goto LABEL_85;
  }

  v273 = v267;
  v274 = static Edge.Set.trailing.getter();
  v275 = EdgeInsets.init(_all:)();
  v241 = v276;
  v269 = v277;
  v270 = v278;
  v271 = v279;
  v280 = (v240)(v275);
  LOBYTE(v493) = 0;
  v410 = 0;
  v281 = v240();
  v411 = v265;
  if ((v281 & 1) == 0)
  {
    v283 = v433 + v432[16];
    v284 = *v283;
    if (v283[8] == 1)
    {

      v272 = v418;
      if ((v284 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v285 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v286 = v406;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v284, 0);
      (*(v407 + 8))(v286, v408);

      v272 = v418;
      if ((v469 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v282 = 0x3FD6666666666666;
    goto LABEL_81;
  }

  v272 = v418;
LABEL_75:
  v282 = 0x3FF0000000000000;
LABEL_81:
  v409 = v282;
  v124 = v433;
  v170 = v432;
  if (v280)
  {
    v287 = 0;
  }

  else
  {
    v287 = 0x3FF0000000000000;
  }

  *&v420 = v274;
  v421 = v287;
LABEL_85:
  v288 = (*(**(v124 + v170[12]) + 88))(v244);
  if (!v288)
  {
LABEL_90:
    v302 = 1;
    goto LABEL_96;
  }

  if (((*(*v288 + 128))(v288) & 1) == 0)
  {

    goto LABEL_90;
  }

  v432 = v256;
  v289 = v254;
  v290 = v252;

  v291 = v405;
  Button.init(action:label:)();
  v292 = v170;
  v293 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v294 = v291 + *(v396 + 36);
  *v294 = v293;
  *(v294 + 8) = v295;
  *(v294 + 16) = v296;
  *(v294 + 24) = v297;
  *(v294 + 32) = v298;
  *(v294 + 40) = 0;
  v299 = v433 + v292[16];
  v300 = *v299;
  v301 = v250;
  if (v299[8] == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v303 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v304 = v406;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v300, 0);
    (*(v407 + 8))(v304, v408);

    LOBYTE(v300) = v493;
  }

  if (v300)
  {
    v305 = 0.35;
  }

  else
  {
    v305 = 1.0;
  }

  v306 = v398;
  outlined init with take of (key: URL, value: FPItem)(v405, v398, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGMd);
  *(v306 + *(v272 + 36)) = v305;
  v307 = v306;
  v308 = v397;
  outlined init with take of (key: URL, value: FPItem)(v307, v397, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
  outlined init with take of (key: URL, value: FPItem)(v308, v429, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
  v302 = 0;
  v250 = v301;
  v252 = v290;
  v254 = v289;
  v256 = v432;
LABEL_96:
  v309 = v429;
  (*(v417 + 56))(v429, v302, 1, v272);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v433 = v551;
  v432 = v553;
  v417 = v556;
  v418 = v555;
  v468 = 1;
  v467 = v552;
  v466 = v554;
  v310 = v523;
  v311 = v522;
  v312 = v521;
  v313 = v425;
  outlined init with copy of DOCGridLayout.Spec?(v431, v425, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd);
  v462 = v517;
  v463 = v518;
  v464 = v519;
  v465 = v520;
  v460[3] = v513;
  v460[4] = v514;
  v460[5] = v515;
  v461 = v516;
  v459 = v509;
  v460[0] = v510;
  v460[1] = v511;
  v460[2] = v512;
  v457 = v507;
  v458 = v508;
  v314 = v426;
  outlined init with copy of DOCGridLayout.Spec?(v430, v426, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  outlined init with copy of DOCGridLayout.Spec?(v309, v427, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd);
  LODWORD(v406) = v468;
  LODWORD(v407) = v467;
  LODWORD(v408) = v466;
  v315 = v419;
  *v419 = 0;
  *(v315 + 8) = v310;
  v316 = v415;
  v315[2] = v416;
  *(v315 + 24) = v311;
  v315[4] = v316;
  *(v315 + 40) = v312;
  v317 = v413;
  v315[6] = v414;
  v315[7] = v317;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyAA6ButtonVyAJyALyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGARyAP5ScaleOGGAA15_RotationEffectVGAA010_AnimationP0VySbGGA2_G_AESgtGGAGGARyAA0K11BorderShapeVGGAA016_ForegroundStyleP0VyAA03AnywY0VGGAA023AccessibilityAttachmentP0VGA14_GAHG_AHSgtGSgALyACyACyACyACyACy26DocumentManagerExecutables012DOCReuseableI0VyA30_08DOCImagei9ContainerI0CGAGGAA08_OverlayP0VyACyACyApGGAA07_OffsetT0VGGGAA08_PaddingG0VGAA08_OpacityT0VGA49_GACyACyACyA36_A46_GA49_GA49_GGSgACyAA6VStackVyAJyACyACyACyACyAA4TextVARyA60_14TruncationModeOGGA30_07OutlineqP0VGARySiSgGGA17_yAA012HierarchicalwY0VGG_ACyAA0I0PAAE12labelsHiddenQryFQOyAA08ProgressI0VyAA05EmptyI0VA81_G_Qo_A49_GSgACyACyACyA60_A69_GAVGA73_GSgtGGA49_GAeCyACyACyA32_ySo014DOCChainedTagsI0CGA46_GA49_GA49_GSgACyACyACyA32_yA30_013DOCItemStatusI0CGA46_GA49_GA49_GSgACyACyANyAPGA46_GA49_GSgAHtMd);
  outlined init with copy of DOCGridLayout.Spec?(v313, v315 + v318[12], &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd);
  v319 = v318[16];
  v320 = v461;
  v479 = v462;
  v480 = v463;
  v321 = v463;
  v481 = v464;
  v322 = v460[3];
  v323 = v460[2];
  v475 = v460[3];
  v476 = v460[4];
  v324 = v460[4];
  v325 = v460[5];
  v477 = v460[5];
  v478 = v461;
  v326 = v460[0];
  v327 = v460[1];
  v473 = v460[1];
  v474 = v460[2];
  v328 = v459;
  v329 = v458;
  v471 = v459;
  v472 = v460[0];
  v330 = v457;
  v469 = v457;
  v470 = v458;
  v331 = v315 + v319;
  *(v331 + 10) = v462;
  *(v331 + 11) = v321;
  *(v331 + 12) = v464;
  *(v331 + 6) = v322;
  *(v331 + 7) = v324;
  *(v331 + 8) = v325;
  *(v331 + 9) = v320;
  *(v331 + 2) = v328;
  *(v331 + 3) = v326;
  *(v331 + 4) = v327;
  *(v331 + 5) = v323;
  v482 = v465;
  v331[208] = v465;
  *v331 = v330;
  *(v331 + 1) = v329;
  outlined init with copy of DOCGridLayout.Spec?(v314, v315 + v318[20], &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  v332 = v315 + v318[24];
  *v332 = 0x4028000000000000;
  v332[8] = 0;
  v333 = v315 + v318[28];
  *&v483 = v428;
  *(&v483 + 1) = v422;
  *&v484 = v250;
  *(&v484 + 1) = v252;
  *&v485 = v254;
  *(&v485 + 1) = v256;
  *&v486 = v424;
  *(&v486 + 1) = v423;
  v334 = v411;
  v335 = v412;
  v487 = *&v412;
  v336 = v486;
  *(v333 + 2) = v485;
  *(v333 + 3) = v336;
  *(v333 + 8) = v335;
  v337 = v484;
  *v333 = v483;
  *(v333 + 1) = v337;
  v338 = v315 + v318[32];
  *&v488 = v334;
  *(&v488 + 1) = v420;
  *&v489 = v241;
  *(&v489 + 1) = v269;
  *&v490 = v270;
  *(&v490 + 1) = v271;
  v339 = v409;
  v340 = v410;
  *&v491 = v410;
  *(&v491 + 1) = v421;
  v492 = v409;
  *(v338 + 8) = v409;
  v341 = v489;
  *v338 = v488;
  *(v338 + 1) = v341;
  v342 = v491;
  *(v338 + 2) = v490;
  *(v338 + 3) = v342;
  v343 = v427;
  outlined init with copy of DOCGridLayout.Spec?(v427, v315 + v318[36], &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd);
  v344 = v315 + v318[40];
  *v344 = 0;
  v344[8] = v406;
  *(v344 + 2) = v433;
  v344[24] = v407;
  *(v344 + 4) = v432;
  v344[40] = v408;
  v345 = v417;
  *(v344 + 6) = v418;
  *(v344 + 7) = v345;
  outlined init with copy of DOCGridLayout.Spec?(&v469, &v493, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMd);
  outlined init with copy of DOCGridLayout.Spec?(&v483, &v493, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd);
  outlined init with copy of DOCGridLayout.Spec?(&v488, &v493, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd);
  outlined destroy of CharacterSet?(v429, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd);
  outlined destroy of CharacterSet?(v430, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  outlined destroy of CharacterSet?(v431, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd);
  outlined destroy of CharacterSet?(v343, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA5ImageVGAA14_PaddingLayoutVGAA14_OpacityEffectVGSgMd);
  *&v434 = v334;
  *(&v434 + 1) = v420;
  *&v435 = v241;
  *(&v435 + 1) = v269;
  *&v436 = v270;
  *(&v436 + 1) = v271;
  *&v437 = v340;
  *(&v437 + 1) = v421;
  *&v438 = v339;
  outlined destroy of CharacterSet?(&v434, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd);
  v440 = v428;
  v441 = v422;
  v442 = v250;
  v443 = v252;
  v444 = v254;
  v445 = v256;
  v446 = v424;
  v447 = v423;
  v448 = v335;
  outlined destroy of CharacterSet?(&v440, &_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGANGSgMd);
  outlined destroy of CharacterSet?(v426, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAI14TruncationModeOGG26DocumentManagerExecutables011OutlineFontL0VGAKySiSgGGAA016_ForegroundStyleL0VyAA017HierarchicalShapeU0VGG_ACyAA0G0PAAE12labelsHiddenQryFQOyAA08ProgressG0VyAA05EmptyG0VA7_G_Qo_AA14_OpacityEffectVGSgACyACyACyAiUGAKyAA0S0VSgGGA_GSgtGGA11_GMd);
  v503 = v462;
  v504 = v463;
  v505 = v464;
  v506 = v465;
  v499 = v460[3];
  v500 = v460[4];
  v501 = v460[5];
  v502 = v461;
  v495 = v459;
  v496 = v460[0];
  v497 = v460[1];
  v498 = v460[2];
  v493 = v457;
  v494 = v458;
  outlined destroy of CharacterSet?(&v493, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgMd);
  return outlined destroy of CharacterSet?(v425, &_s7SwiftUI9TupleViewVyAA19_ConditionalContentVyAA08ModifiedF0VyAGyAGyAGyAGyAA6ButtonVyACyAEyAGyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0H11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GAGyA4_A9_GG_A25_SgtGSgMd);
}

uint64_t closure #1 in closure #1 in LeadingView.leadingContent.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LeadingView(0);
  v10 = v9 - 8;
  v43 = *(v9 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v18, v19);
  v22 = &v37 - v21;
  v23 = *(a1 + *(v10 + 52));
  result = (*(*v23 + 376))(v20);
  if (result)
  {
    v26 = result;
    v27 = *(*v23 + 360);
    v38 = v8;
    v42 = v25;
    v28 = v27(1);
    v26(v28);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v39 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = *(v14 + 8);
    v40 = v13;
    v41 = v29;
    v29(v17, v13);
    _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeadingView);
    v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v31 = swift_allocObject();
    outlined init with take of Column(&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for LeadingView);
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in LeadingView.leadingContent.getter;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_131;
    v32 = _Block_copy(aBlock);

    v33 = v38;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v34 = v44;
    v35 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v39;
    MEMORY[0x24C1FB940](v22, v33, v34, v32);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26);
    _Block_release(v32);

    (*(v47 + 8))(v34, v35);
    (*(v45 + 8))(v33, v46);
    return v41(v22, v40);
  }

  return result;
}

uint64_t closure #2 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAI5ScaleOGGAA15_RotationEffectVGAA010_AnimationK0VySbGGAW_GMd);
  MEMORY[0x28223BE20](v83, v3);
  v84 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v74 - v12);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd);
  MEMORY[0x28223BE20](v82, v14);
  v75 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v78 = &v74 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v76 = &v74 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd);
  MEMORY[0x28223BE20](v79, v22);
  v74 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v77 = &v74 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v81 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v80 = &v74 - v32;
  v33 = *(a1 + *(type metadata accessor for LeadingView(0) + 44));
  v34 = (*(*v33 + 352))();
  v35 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v36 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v38 = *(v6 + 44);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v40 = *MEMORY[0x277CE1050];
  v41 = type metadata accessor for Image.Scale();
  v42 = *(*(v41 - 8) + 104);
  if (v34)
  {
    v42(v13 + v38 + v39, v40, v41);
    *(v13 + v38) = swift_getKeyPath();
    *v13 = v35;
    v13[1] = KeyPath;
    v13[2] = v36;
    v43 = *(*v33 + 160);
    if (v43())
    {
      v44 = 1.57079633;
    }

    else
    {
      v44 = 0.0;
    }

    static UnitPoint.center.getter();
    v46 = v45;
    v48 = v47;
    v49 = v13;
    v50 = v76;
    v51 = outlined init with take of (key: URL, value: FPItem)(v49, v76, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
    v52 = v50 + *(v82 + 36);
    *v52 = v44;
    *(v52 + 8) = v46;
    *(v52 + 16) = v48;
    v53 = MEMORY[0x24C1FA8C0](v51, 0.5, 0.85, 0.0);
    v54 = v43();
    v55 = v74;
    outlined init with take of (key: URL, value: FPItem)(v50, v74, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd);
    v56 = v55 + *(v79 + 36);
    *v56 = v53;
    *(v56 + 8) = v54 & 1;
    v57 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd;
    v58 = v77;
    outlined init with take of (key: URL, value: FPItem)(v55, v77, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd);
    outlined init with copy of DOCGridLayout.Spec?(v58, v84, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    v59 = v80;
    _ConditionalContent<>.init(storage:)();
    v60 = v58;
  }

  else
  {
    v42(v9 + v38 + v39, v40, v41);
    *(v9 + v38) = swift_getKeyPath();
    *v9 = v35;
    v9[1] = KeyPath;
    v9[2] = v36;
    if ((*(*v33 + 160))())
    {
      v61 = 1.57079633;
    }

    else
    {
      v61 = 0.0;
    }

    static UnitPoint.center.getter();
    v63 = v62;
    v65 = v64;
    v66 = v75;
    outlined init with take of (key: URL, value: FPItem)(v9, v75, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
    v67 = v66 + *(v82 + 36);
    *v67 = v61;
    *(v67 + 8) = v63;
    *(v67 + 16) = v65;
    v57 = &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd;
    v68 = v78;
    outlined init with take of (key: URL, value: FPItem)(v66, v78, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd);
    outlined init with copy of DOCGridLayout.Spec?(v68, v84, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    v59 = v80;
    _ConditionalContent<>.init(storage:)();
    v60 = v68;
  }

  outlined destroy of CharacterSet?(v60, v57);
  v69 = UIAccessibilityButtonShapesEnabled();
  v70 = v81;
  outlined init with copy of DOCGridLayout.Spec?(v59, v81, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd);
  v71 = v85;
  outlined init with copy of DOCGridLayout.Spec?(v70, v85, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd);
  v72 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUG_AA6SpacerVSgtMd) + 48);
  *v72 = 0;
  *(v72 + 8) = !v69;
  *(v72 + 9) = v69;
  outlined destroy of CharacterSet?(v59, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd);
  return outlined destroy of CharacterSet?(v70, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAG5ScaleOGGAA15_RotationEffectVGAA010_AnimationJ0VySbGGAUGMd);
}

id LeadingView.overlayImage()@<X0>(void *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    *a1 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #4 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v3);
  v113 = &v112 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12labelsHiddenQryFQOyAA08ProgressC0VyAA05EmptyC0VAHG_Qo_Md);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v5);
  v117 = &v112 - v6;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMd);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v7);
  v116 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v135 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v134 = &v112 - v14;
  v122 = type metadata accessor for EnvironmentValues();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v15);
  v120 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributedString();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v112 - v24;
  v26 = type metadata accessor for LeadingTitle(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = (&v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMd);
  MEMORY[0x28223BE20](v123, v30);
  v32 = &v112 - v31;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMd);
  MEMORY[0x28223BE20](v125, v33);
  v35 = &v112 - v34;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMd);
  MEMORY[0x28223BE20](v124, v36);
  v127 = &v112 - v37;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
  MEMORY[0x28223BE20](v126, v38);
  v133 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v43 = &v112 - v42;
  MEMORY[0x28223BE20](v44, v45);
  v136 = &v112 - v46;
  v128 = type metadata accessor for LeadingView(0);
  v47 = *(v128 + 20);
  v131 = a1;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1 + v47, v29, type metadata accessor for LeadingTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v18 + 32))(v25, v29, v17);
    (*(v18 + 16))(v21, v25, v17);
    v48 = Text.init(_:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v18 + 8))(v25, v17);
  }

  else
  {
    v55 = v29[1];
    v141 = *v29;
    v142 = v55;
    lazy protocol witness table accessor for type String and conformance String();
    v48 = Text.init<A>(_:)();
    v50 = v56;
    v52 = v57;
    v54 = v58;
  }

  v59 = &v32[*(v123 + 36)];
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd) + 28);
  v61 = *MEMORY[0x277CE0B30];
  v62 = type metadata accessor for Text.TruncationMode();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = swift_getKeyPath();
  *v32 = v48;
  *(v32 + 1) = v50;
  v32[16] = v52 & 1;
  *(v32 + 3) = v54;
  KeyPath = swift_getKeyPath();
  outlined init with take of (key: URL, value: FPItem)(v32, v35, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGGMd);
  v64 = &v35[*(v125 + 36)];
  *(v64 + 1) = 0;
  *(v64 + 2) = 0;
  *v64 = KeyPath;
  v64[24] = 0;
  v65 = swift_getKeyPath();
  v66 = v127;
  outlined init with take of (key: URL, value: FPItem)(v35, v127, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGMd);
  v67 = v66 + *(v124 + 36);
  *v67 = v65;
  *(v67 + 8) = 1;
  *(v67 + 16) = 0;
  v68 = v128;
  v69 = v131;
  v70 = v131 + *(v128 + 64);
  v71 = *v70;
  v72 = *(v70 + 8);
  if (v72 == 1)
  {
    if ((v71 & 1) == 0)
    {
LABEL_6:
      v73 = static HierarchicalShapeStyle.primary.getter();
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v74 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v75 = v120;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v71, 0);
    (*(v121 + 8))(v75, v122);
    if (v141 != 1)
    {
      goto LABEL_6;
    }
  }

  v73 = static HierarchicalShapeStyle.tertiary.getter();
LABEL_9:
  v76 = v73;
  outlined init with take of (key: URL, value: FPItem)(v66, v43, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGMd);
  *&v43[*(v126 + 36)] = v76;
  v77 = outlined init with take of (key: URL, value: FPItem)(v43, v136, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
  v78 = (*(**(v69 + *(v68 + 48)) + 88))(v77);
  if (v78)
  {
    v79 = v78;
    if ((*(*v78 + 128))())
    {
      v80 = (*(*v79 + 176))();
      if (v80)
      {
        v81 = v80;
        v82 = v113;
        ProgressView.init<>(_:)();
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd);
        v83 = v117;
        v84 = v115;
        View.labelsHidden()();
        (*(v114 + 8))(v82, v84);
        if (v72)
        {
        }

        else
        {

          static os_log_type_t.fault.getter();
          v107 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v108 = v120;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          outlined consume of Environment<Bool>.Content(v71, 0);
          (*(v121 + 8))(v108, v122);

          LOBYTE(v71) = v141;
        }

        v87 = v130;
        if (v71)
        {
          v109 = 0.35;
        }

        else
        {
          v109 = 1.0;
        }

        v110 = v116;
        (*(v118 + 32))(v116, v83, v119);
        *&v110[*(v87 + 36)] = v109;
        v111 = v110;
        v86 = v134;
        outlined init with take of (key: URL, value: FPItem)(v111, v134, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGMd);
        v85 = 0;
        goto LABEL_16;
      }
    }
  }

  v85 = 1;
  v86 = v134;
  v87 = v130;
LABEL_16:
  (*(v129 + 56))(v86, v85, 1, v87);
  if (*(v69 + *(v68 + 24) + 8) && (LeadingView.browserConfiguration.getter(), v88) && !LeadingView.subtitleShouldStackOverImageAndTitle()())
  {
    LeadingView.subtitleView.getter(&v141);
    v131 = v141;
    v130 = v142;
    v129 = v143;
    v128 = v144;
    v127 = v145;
    v126 = v146;
    v125 = v147;
    v124 = v148;
    v123 = v149;
    LODWORD(v122) = v150;
  }

  else
  {
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v125 = 0;
    v124 = 0;
    v123 = 0;
    LODWORD(v122) = 0;
  }

  v89 = v133;
  outlined init with copy of DOCGridLayout.Spec?(v136, v133, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
  v90 = v135;
  outlined init with copy of DOCGridLayout.Spec?(v86, v135, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd);
  v91 = v132;
  outlined init with copy of DOCGridLayout.Spec?(v89, v132, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGG_ACyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressU0VyAA05EmptyU0VA3_G_Qo_AA14_OpacityEffectVGSgACyACyACyAeQGAGyAA0P0VSgGGAWGSgtMd);
  outlined init with copy of DOCGridLayout.Spec?(v90, v91 + *(v92 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd);
  v93 = (v91 + *(v92 + 64));
  v94 = v131;
  *&v137 = v131;
  v95 = v130;
  v96 = v129;
  *(&v137 + 1) = v130;
  *&v138 = v129;
  v97 = v128;
  v98 = v127;
  *(&v138 + 1) = v128;
  *&v139 = v127;
  v99 = v126;
  v100 = v125;
  *(&v139 + 1) = v126;
  *v140 = v125;
  v101 = v124;
  v102 = v123;
  *&v140[8] = v124;
  *&v140[16] = v123;
  v103 = v122;
  *&v140[24] = v122;
  v104 = *v140;
  v93[2] = v139;
  v93[3] = v104;
  v105 = v138;
  *v93 = v137;
  v93[1] = v105;
  *(v93 + 60) = *&v140[12];
  outlined init with copy of DOCGridLayout.Spec?(&v137, &v141, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMd);
  outlined destroy of CharacterSet?(v134, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd);
  outlined destroy of CharacterSet?(v136, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
  v141 = v94;
  v142 = v95;
  v143 = v96;
  v144 = v97;
  v145 = v98;
  v146 = v99;
  v147 = v100;
  v148 = v101;
  v149 = v102;
  v150 = v103;
  outlined destroy of CharacterSet?(&v141, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGSgMd);
  outlined destroy of CharacterSet?(v135, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12labelsHiddenQryFQOyAA08ProgressE0VyAA05EmptyE0VAJG_Qo_AA14_OpacityEffectVGSgMd);
  return outlined destroy of CharacterSet?(v133, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAE14TruncationModeOGG26DocumentManagerExecutables011OutlineFontI0VGAGySiSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeR0VGGMd);
}

uint64_t View.outlineAdjustedFont()(uint64_t a1, uint64_t a2)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x24C1FA630](v5, a1, &type metadata for OutlineFontModifier, a2);
}

uint64_t closure #6 in closure #1 in LeadingView.leadingContent.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t OutlineFontModifier.browserConfiguration.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(a1, a2, a3, 0);
    (*(v9 + 8))(v12, v8);
    return v15[1];
  }

  return a1;
}

uint64_t OutlineFontModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(a2, a3, a4, 0);
    (*(v13 + 8))(v16, v12);
    if (v24[16])
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = static Font.subheadline.getter();
    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = static Font.body.getter();
LABEL_6:
  v19 = v17;
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMd);
  (*(*(v21 - 8) + 16))(a6, a1, v21);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd);
  v23 = (a6 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v19;
  return result;
}

uint64_t DateView.description.getter()
{
  result = 0x202C2065746164;
  DateView.description.getter(0x202C2065746164, type metadata accessor for DateView);
  return result;
}

uint64_t DateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DateView(0);
  v9 = (v1 + *(v8 + 20));
  v10 = v9[1];
  *&v43 = *v9;
  *(&v43 + 1) = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v11 = Text.init<A>(_:)();
  v38 = v12;
  v39 = v11;
  LOBYTE(v10) = v13;
  v37 = v14;
  KeyPath = swift_getKeyPath();
  v47 = v10 & 1;
  v46 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = v47;
  v16 = v46;
  *&v40[23] = v44;
  *&v40[39] = v45;
  *&v40[7] = v43;
  v17 = v1 + *(v8 + 24);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      v19 = static HierarchicalShapeStyle.secondary.getter();
      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v18, 0);
    (*(v4 + 8))(v7, v3);
    if (v42 != 1)
    {
      goto LABEL_3;
    }
  }

  v19 = static HierarchicalShapeStyle.quaternary.getter();
LABEL_6:
  v21 = v19;
  v22 = swift_getKeyPath();
  v41 = 0;
  v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_249B9FA70;
  v25 = static Edge.Set.leading.getter();
  *(v24 + 32) = v25;
  v26 = static Edge.Set.trailing.getter();
  *(v24 + 33) = v26;
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  result = EdgeInsets.init(_all:)();
  v29 = *&v40[16];
  *(a1 + 57) = *v40;
  v30 = v38;
  *a1 = v39;
  *(a1 + 8) = v30;
  *(a1 + 16) = v15;
  v31 = KeyPath;
  *(a1 + 24) = v37;
  *(a1 + 32) = v31;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v16;
  *(a1 + 73) = v29;
  *(a1 + 89) = *&v40[32];
  *(a1 + 104) = *&v40[47];
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = v23;
  *(a1 + 152) = 0;
  *(a1 + 160) = v27;
  *(a1 + 168) = v32;
  *(a1 + 176) = v33;
  *(a1 + 184) = v34;
  *(a1 + 192) = v35;
  *(a1 + 200) = 0;
  return result;
}

uint64_t OutlineColumnView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for OutlineColumnView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v7;
    v11 = v7[1];
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (a2 + *(v8 + 20));
  *v12 = v10;
  v12[1] = v11;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

uint64_t OutlineColumnView.description.getter()
{
  result = 0x206E6D756C6F63;
  DateView.description.getter(0x206E6D756C6F63, type metadata accessor for OutlineColumnView);
  return result;
}

uint64_t OutlineColumnView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OutlineColumnView(0);
  v9 = (v1 + *(v8 + 20));
  v10 = v9[1];
  *&v41 = *v9;
  *(&v41 + 1) = v10;
  lazy protocol witness table accessor for type String and conformance String();

  v11 = Text.init<A>(_:)();
  v36 = v12;
  v37 = v11;
  v14 = v13;
  v35 = v15;
  KeyPath = swift_getKeyPath();
  v45 = v14 & 1;
  v44 = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v45;
  v18 = v44;
  *&v38[23] = v42;
  *&v38[39] = v43;
  *&v38[7] = v41;
  v19 = v1 + *(v8 + 24);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Bool>.Content(v20, 0);
    (*(v4 + 8))(v7, v3);
    if (v40 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = static HierarchicalShapeStyle.quaternary.getter();
    goto LABEL_6;
  }

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = static HierarchicalShapeStyle.secondary.getter();
LABEL_6:
  v23 = v21;
  v24 = swift_getKeyPath();
  v39 = 0;
  v25 = swift_getKeyPath();
  v26 = static Edge.Set.leading.getter();
  result = EdgeInsets.init(_all:)();
  v28 = *&v38[16];
  *(a1 + 57) = *v38;
  v29 = v36;
  *a1 = v37;
  *(a1 + 8) = v29;
  *(a1 + 16) = v17;
  *(a1 + 24) = v35;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v18;
  *(a1 + 73) = v28;
  *(a1 + 89) = *&v38[32];
  *(a1 + 104) = *&v38[47];
  *(a1 + 112) = v23;
  *(a1 + 120) = v24;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = v25;
  *(a1 + 152) = 0;
  *(a1 + 160) = v26;
  *(a1 + 168) = v30;
  *(a1 + 176) = v31;
  *(a1 + 184) = v32;
  *(a1 + 192) = v33;
  *(a1 + 200) = 0;
  return result;
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance OutlineColumnView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v9;
    v12 = v9[1];
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = (a3 + *(a2 + 20));
  *v13 = v11;
  v13[1] = v12;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

double DOCChainedTagsView.size(_:)()
{
  [v0 setNeedsDisplay];
  [v0 intrinsicContentSize];
  return result;
}

double protocol witness for DOCItemDefaultSize.size(_:) in conformance DOCChainedTagsView()
{
  v1 = *v0;
  [*v0 setNeedsDisplay];
  [v1 intrinsicContentSize];
  return result;
}

uint64_t TagView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TagView(0);
  v9 = a2 + *(v8 + 24);
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v7, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v10 = *v7;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v7, type metadata accessor for Column);
    v10 = 0;
  }

  *(a2 + *(v8 + 20)) = v10;
  return outlined init with take of Column(a1, a2, type metadata accessor for Column);
}

__n128 TagView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagView(0);
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = v1 + *(v10 + 24);
    v22 = *v21;
    if (*(v21 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<Bool>.Content(v22, 0);
      (*(v4 + 8))(v7, v3);
      LOBYTE(v22) = v38;
    }

    v34 = 0;
    v24 = 0.35;
    *&v28 = v11;
    if ((v22 & 1) == 0)
    {
      v24 = 1.0;
    }

    BYTE8(v28) = v12;
    HIDWORD(v28) = *&v35[3];
    *(&v28 + 9) = *v35;
    v29.n128_u64[0] = v14;
    v29.n128_u64[1] = v16;
    *&v30 = v18;
    *(&v30 + 1) = v20;
    LOBYTE(v31) = 0;
    *(&v31 + 1) = *v33;
    DWORD1(v31) = *&v33[3];
    *(&v31 + 1) = v24;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v32 = 0;
    v42 = 0;
    outlined init with copy of DOCGridLayout.Spec?(&v28, v36, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    outlined destroy of CharacterSet?(&v28, &_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
    v40 = v36[2];
    v41 = v36[3];
    v42 = v37;
    v38 = v36[0];
    v39 = v36[1];
  }

  else
  {
    LOBYTE(v28) = 1;
    v37 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  v25 = v41;
  *(a1 + 32) = v40;
  *(a1 + 48) = v25;
  *(a1 + 64) = v42;
  result = v39;
  *a1 = v38;
  *(a1 + 16) = result;
  return result;
}

uint64_t TagView.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for TagView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18DOCChainedTagsViewCSgMd);
  v2 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v2);

  return 0x7765697620676174;
}

uint64_t protocol witness for ColumnCell.init(with:) in conformance TagView@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a3 + *(a2 + 24);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  _s26DocumentManagerExecutables6ColumnOWOcTm_0(a1, v9, type metadata accessor for Column);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v11 = *v9;
  }

  else
  {
    _s26DocumentManagerExecutables6ColumnOWOhTm_1(v9, type metadata accessor for Column);
    v11 = 0;
  }

  *(a3 + *(a2 + 20)) = v11;
  return outlined init with take of Column(a1, a3, type metadata accessor for Column);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TagView(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18DOCChainedTagsViewCSgMd);
  v3 = String.init<A>(describing:)();
  MEMORY[0x24C1FAEA0](v3);

  return 0x7765697620676174;
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v6 - v4, &_s7SwiftUI22UserInterfaceSizeClassOSgMd);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.sizeCategory : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

BOOL specialized static LeadingBadge.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  if (v5)
  {
    return v7 && specialized static DOCItemCollectionCellContent.DecorationImageObserver.== infix(_:_:)(v5, v7);
  }

  return !v7;
}

BOOL specialized static OutlineProgressState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 128))();
  if ((v4 ^ (*(*a2 + 128))()))
  {
    return 0;
  }

  v6 = (*(*a1 + 176))();
  v7 = (*(*a2 + 176))();
  if (v6)
  {
    if (v7)
    {
      v8 = v7;

      return v6 == v8;
    }

    return 0;
  }

  if (v7)
  {

    return 0;
  }

  return 1;
}

uint64_t specialized static OutlineExpansionState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 160))();
  if ((v4 ^ (*(*a2 + 160))()) & 1) != 0 || (v5 = (*(*a1 + 208))(), ((v5 ^ (*(*a2 + 208))())) || (v6 = (*(*a1 + 256))(), ((v6 ^ (*(*a2 + 256))())))
  {
    v7 = 0;
  }

  else
  {
    v9 = (*(*a1 + 304))();
    v7 = v9 ^ (*(*a2 + 304))() ^ 1;
  }

  return v7 & 1;
}

BOOL specialized static OutlineProgressStateReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 88))();
  v4 = (*(*a2 + 88))();
  if (v3)
  {
    if (v4)
    {
      v5 = v4;

      return v3 == v5;
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t partial apply for closure #1 in OutlineExpansionState.shouldShowDisclosureButton.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 17) = v2;
  return result;
}

uint64_t partial apply for closure #1 in OutlineExpansionState.shouldPreserveSpaceForDisclosureButton.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 18) = v2;
  return result;
}

uint64_t partial apply for closure #1 in OutlineExpansionState.selected.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 19) = v2;
  return result;
}

uint64_t partial apply for closure #1 in OutlineExpansionState.allowAnimation.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

uint64_t lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type OutlineProgressStateKey and conformance OutlineProgressStateKey()
{
  result = lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey;
  if (!lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineProgressStateKey and conformance OutlineProgressStateKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShouldDimKey and conformance ShouldDimKey()
{
  result = lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey;
  if (!lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey;
  if (!lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldDimKey and conformance ShouldDimKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingL0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16RoundedRectangleVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGAA017_AllowsHitTestingK0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA16RoundedRectangleVAA12_FrameLayoutVGAA24_ForegroundStyleModifierVyAA5ColorVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<RoundedRectangle, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

double specialized DOCItemStatusView.size(_:)()
{
  v1 = [v0 traitCollection];
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();

  v2 = MEMORY[0x277D76940];
  if (v10)
  {
    v2 = MEMORY[0x277D76918];
  }

  v3 = *v2;
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 ascender];
  v6 = v5;
  [v4 descender];
  v8 = v7;

  return ceil(fmax(v6 - v8, 27.0));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD013DOCItemStatusI0CGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCItemStatusView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA013DOCItemStatusE0CGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<Bool>.Content(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t _s26DocumentManagerExecutables6ColumnOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized HeaderTitleLayout.makeCache(subviews:)(uint64_t a1)
{
  v24 = type metadata accessor for LayoutSubview();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, MEMORY[0x277CDF7F8]);
  v6 = dispatch thunk of Collection.count.getter();
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v27 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  v7 = v27;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = (v2 + 16);
    do
    {
      v10 = dispatch thunk of Collection.subscript.read();
      v11 = v24;
      (*v23)(v5);
      v10(v26, 0);
      static ProposedViewSize.unspecified.getter();
      v26[0] = v12 & 1;
      v25 = v13 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v15 = v14;
      v17 = v16;
      (*(v2 + 8))(v5, v11);
      v27 = v7;
      v18 = a1;
      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v20 + 1;
      v21 = v7 + 16 * v20;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
      dispatch thunk of Collection.formIndex(after:)();
      --v8;
      a1 = v18;
    }

    while (v8);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA0E0PAAE10fontWeightyQrAA4FontV0H0VSgFQOyAA15ModifiedContentVyAQyAgA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyALSgGG_Qo_SgtGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in OutlineExpansionState.isExpanded.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

{
  return partial apply for closure #1 in RenameObserver.isRenaming.setter();
}

uint64_t outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined init with take of Column(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s26DocumentManagerExecutables6ColumnOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsI0CGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCChainedTagsView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsE0CGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StatusView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type StatusView and conformance StatusView, type metadata accessor for StatusView);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HeaderTitleLayout and conformance HeaderTitleLayout()
{
  result = lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout;
  if (!lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeaderTitleLayout and conformance HeaderTitleLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Header(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type Header and conformance Header, type metadata accessor for Header);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LeadingView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type LeadingView and conformance LeadingView, type metadata accessor for LeadingView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for DateView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type DateView and conformance DateView, type metadata accessor for DateView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for OutlineColumnView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type OutlineColumnView and conformance OutlineColumnView, type metadata accessor for OutlineColumnView);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for TagView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type TagView and conformance TagView, type metadata accessor for TagView);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeadingBadge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for LeadingBadge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for OutlineExpansionState()
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

uint64_t type metadata completion function for OutlineProgressState()
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

uint64_t type metadata completion function for Dragging()
{
  return type metadata completion function for Dragging();
}

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

void type metadata completion function for DragIndicator()
{
  type metadata accessor for Dragging(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata instantiation function for DOCReuseableView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for StatusView()
{
  type metadata accessor for Column(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCItemStatusView?, type metadata accessor for DOCItemStatusView, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Environment<ColorScheme>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata completion function for HeaderTitleLayout.TitleLayoutBestView()
{
  type metadata accessor for LayoutSubview();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Header()
{
  type metadata accessor for Column(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Image?, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Environment<UserInterfaceSizeClass?>();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<UserInterfaceSizeClass?>()
{
  if (!lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>);
    }
  }
}

void type metadata completion function for LeadingView()
{
  type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCImageViewContainerView?, type metadata accessor for DOCImageViewContainerView, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LeadingTitle(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for DOCItemStatusView?, type metadata accessor for DOCItemStatusView, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for DOCChainedTagsView?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for LeadingBadge?, &type metadata for LeadingBadge, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for OutlineExpansionState(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for OutlineProgressStateReference();
                type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<DOCBrowserLayoutConfiguration>, &type metadata for DOCBrowserLayoutConfiguration, MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for Environment<ColorScheme>(319, &lazy cache variable for type metadata for Environment<ContentSizeCategory>, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for Environment<UserInterfaceSizeClass?>();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for Column(319);
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for RenameObserver(319);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for DOCChainedTagsView?()
{
  if (!lazy cache variable for type metadata for DOCChainedTagsView?)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for DOCChainedTagsView);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DOCChainedTagsView?);
    }
  }
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for OutlineFontModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for OutlineFontModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_194Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Column(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_195Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Column(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for DateView()
{
  type metadata accessor for Column(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_142Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Column(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_143Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Column(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void type metadata completion function for TagView()
{
  type metadata accessor for Column(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DOCChainedTagsView?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA16RoundedRectangleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA017_AllowsHitTestingM0VGAEyAEyAjA016_ForegroundStyleM0VyANGGASGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _AllowsHitTestingModifier>, ModifiedContent<ModifiedContent<ModifiedContent<RoundedRectangle, _FrameLayout>, _ForegroundStyleModifier<Color>>, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy26DocumentManagerExecutables16DOCReuseableViewVyAF013DOCItemStatusJ0CGAA14_OpacityEffectVGAA05EmptyJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<DOCReuseableView<DOCItemStatusView>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6HStackVyAA012_ConditionalD0VyAA09_VariadicE0O4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleP0VGAA7ForEachVySaySSGSSACyACyAeAE10fontWeightyQrAA4FontV0Z0VSgFQOyACyACyACyACyACyAKyAA05TupleE0VyAA4TextV_AeAEA_yQrA4_FQOyACyACyA8_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyA1_SgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingP0VGA28_GA28_GA15_G_Qo_A13_yA8_14TruncationModeOGGA13_ySiSgGGGGAQy_AWA40_GGG_Qo_AA0I18AttachmentModifierVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type HStack<_ConditionalContent<_VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>, _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>>>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA19_ConditionalContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleI0VGAA7ForEachVySaySSGSSAA08ModifiedE0VyATyAA0G0PAAE10fontWeightyQrAA4FontV0T0VSgFQOyATyATyATyATyATyACyAA05TupleG0VyAA4TextV_AvAEAWyQrA0_FQOyATyATyA4_AA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAYSgGG_Qo_SgtGGAA24_ForegroundStyleModifierVyAA13AnyShapeStyleVGGAA08_PaddingI0VGA24_GA24_GA11_G_Qo_A9_yA4_14TruncationModeOGGA9_ySiSgGGGGAIy_AOA36_GGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGAVySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10fontWeightyQrAA4FontV0G0VSgFQOyACyACyACyACyACyAA6HStackVyAA05TupleE0VyAA4TextV_AeAEAFyQrAKFQOyACyACyAqA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAHSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXG_Qo_AVyAQ14TruncationModeOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AA0G0PAAE10fontWeightyQrAA4FontV0J0VSgFQOyACyACyAiA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyANSgGG_Qo_SgtGGAA016_ForegroundStyleQ0VyAA08AnyShapeS0VGGAA14_PaddingLayoutVGA9_GA9_GAXGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, (<<opaque return type of View.fontWeight(_:)>>.0)?)>>, _ForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Text.TruncationMode> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy26DocumentManagerExecutables011OutlineFontF0VGAA022_EnvironmentKeyWritingF0VyAA0K0VSgGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<OutlineFontModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy26DocumentManagerExecutables011OutlineFontD0VGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutlineFontModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutlineFontModifier and conformance OutlineFontModifier()
{
  result = lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier;
  if (!lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutlineFontModifier and conformance OutlineFontModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGATyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGAA022_EnvironmentKeyWritingK0VySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGAA016_ForegroundStyleK0VyAA017HierarchicalShapeO0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, OutlineFontModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextV26DocumentManagerExecutables19OutlineFontModifierVGMd);
    lazy protocol witness table accessor for type OutlineFontModifier and conformance OutlineFontModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, OutlineFontModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy26DocumentManagerExecutables16DOCReuseableViewVySo014DOCChainedTagsJ0CGAA14_PaddingLayoutVGAA14_OpacityEffectVGAA05EmptyJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCChainedTagsView>, _PaddingLayout>, _OpacityEffect>, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAPyAA4FontVSgGGAA016_ForegroundStyleO0VyAA017HierarchicalShapeR0VGGtGGAA08_PaddingJ0VGSgWOi0_(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double _s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAEy26DocumentManagerExecutables16DOCReuseableViewVyAF08DOCImagej9ContainerJ0CGAA12_FrameLayoutVGAA16_OverlayModifierVyAEyAEyAA5ImageVAMGAA13_OffsetEffectVGGGAA08_PaddingN0VGAA08_OpacityS0VGA1_GAEyAEyAEyAnZGA1_GA1_GGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = -1;
  return result;
}

void partial apply for closure #5 in closure #1 in LeadingView.leadingContent.getter()
{
  v1 = (*(*v0 + 176))();
  [v1 cancel];
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGA_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGAA08_OpacityR0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA16_OverlayModifierVyACyACyAA5ImageVAKGAA13_OffsetEffectVGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA5ImageVAA12_FrameLayoutVGAA13_OffsetEffectVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _OverlayModifier<ModifiedContent<ModifiedContent<Image, _FrameLayout>, _OffsetEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type DOCReuseableView<DOCImageViewContainerView> and conformance DOCReuseableView<A>, &_s26DocumentManagerExecutables16DOCReuseableViewVyAA08DOCImagee9ContainerE0CGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGAQGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGAA14_OpacityEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy26DocumentManagerExecutables16DOCReuseableViewVyAD08DOCImagei9ContainerI0CGAA12_FrameLayoutVGAA08_PaddingM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DOCReuseableView<DOCImageViewContainerView>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGA13_GMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGAA023AccessibilityAttachmentM0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type OutlineExpansionState and conformance OutlineExpansionState(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGAA016_ForegroundStyleM0VyAA03AnywY0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA08AnyShapeD0VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>>, _ForegroundStyleModifier<AnyShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGAMyAA0E11BorderShapeVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ButtonBorderShapeVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout>, _EnvironmentKeyWritingModifier<ButtonBorderShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA9TupleViewVyAA19_ConditionalContentVyAA08ModifiedG0VyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGAA15_RotationEffectVGAA010_AnimationM0VySbGGAYG_AA6SpacerVSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>>, Spacer?)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in LeadingView.leadingContent.getter()
{
  v1 = *(type metadata accessor for LeadingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in LeadingView.leadingContent.getter(v2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGAA010_AnimationI0VySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGAA15_RotationEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t objectdestroy_235Tm()
{
  v1 = type metadata accessor for LeadingView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  type metadata accessor for LeadingTitle(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  if (*(v5 + v1[10] + 40) != 1)
  {
  }

  outlined consume of Environment<DOCBrowserLayoutConfiguration>.Content(*(v5 + v1[13]), *(v5 + v1[13] + 8), *(v5 + v1[13] + 16), *(v5 + v1[13] + 24));
  v8 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  outlined consume of Environment<Bool>.Content(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  v13 = v5 + v1[17];
  type metadata accessor for Column(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {

          if (*(v13 + 48) != 1)
          {
          }

          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables021DOCImageViewContainerE0CSg_AA12LeadingBadgeVSgAA0G5TitleOSSSgSiAA013DOCItemStatusE0CSgSo014DOCChainedTagsE0CSgAA21OutlineExpansionStateCAA0n8ProgressP9ReferenceCtMd);
          v16 = v13 + v15[16];
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v17 = type metadata accessor for AttributedString();
            (*(*(v17 - 8) + 8))(v16, v17);
          }

          else
          {
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
      v18 = type metadata accessor for Date();
      (*(*(v18 - 8) + 8))(v13, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd);

      if (*(v13 + *(v19 + 64) + 8) < 9uLL)
      {
        goto LABEL_31;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (*(v13 + 8) < 9uLL)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
  {
  }

LABEL_31:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<HeaderTitleLayout>, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> _VariadicView.Tree<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type _LayoutRoot<HeaderTitleLayout> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy26DocumentManagerExecutables011HeaderTitleC0VGMd);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySaySSGSSAA15ModifiedContentVyAFyAA4ViewPAAE10fontWeightyQrAA4FontV0I0VSgFQOyAFyAFyAFyAFyAFyAA6HStackVyAA05TupleG0VyAA4TextV_AhAEAIyQrANFQOyAFyAFyAtA14_OpacityEffectVGAA30_EnvironmentKeyWritingModifierVyAKSgGG_Qo_SgtGGAA016_ForegroundStyleS0VyAA08AnyShapeU0VGGAA14_PaddingLayoutVGA12_GA12_GA_G_Qo_AYyAT14TruncationModeOGGAYySiSgGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[String], String, ModifiedContent<ModifiedContent<<<opaque return type of View.fontWeight(_:)>>.0, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, _EnvironmentKeyWritingModifier<Int?>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2, Swift::Int *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v16 = v3 & 0xFFFFFFFFFFFFFF8;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }

LABEL_8:
        v8 = [v6 tags];
        v9 = DOCTagsFromFPTags();

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = specialized _ArrayProtocol.filter(_:)(v11, a2);

        v13 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          if (v13 < 0)
          {
            v14 = *a3;
          }

          else
          {
            v14 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          v15 = __CocoaSet.count.getter();
          v13 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(v14, v15);
        }

        *a3 = specialized _NativeSet.genericIntersection<A>(_:)(v10, v13);
        specialized Set.formUnion<A>(_:)(v10);

        specialized Array.append<A>(contentsOf:)(v12);
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *(v16 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_8;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, unint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    v21 = i;
    v22 = v5;
    while (1)
    {
      if (v24)
      {
        v9 = MEMORY[0x24C1FC540](v7, v5);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v5 + 8 * v7 + 32);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_35;
        }
      }

      v11 = v9;
      v12 = v3;
      v13 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a2);

      if (*a2 >> 62)
      {
        v14 = __CocoaSet.count.getter();
        v15 = v14 - v13;
        if (v14 < v13)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v14 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 - v13;
        if (v14 < v13)
        {
          goto LABEL_37;
        }
      }

      if (v13 < 0)
      {
        goto LABEL_38;
      }

      v5 = *a2;
      v3 = *a2 >> 62;
      if (v3)
      {
        break;
      }

      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v14)
      {
        goto LABEL_34;
      }

LABEL_15:
      v16 = __OFSUB__(0, v15);
      v17 = -v15;
      if (v16)
      {
        goto LABEL_39;
      }

      if (v3)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
        goto LABEL_40;
      }

      v19 = *a2;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *a2 = v19;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
        {
          if (v5 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      else if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __CocoaSet.count.getter();
LABEL_5:
      *a2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_6:
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v13, v14, 0);

      v8 = specialized Set._Variant.remove(_:)(v11);
      ++v7;
      v5 = v22;
      v3 = v12;
      if (v10 == v21)
      {
        return;
      }
    }

    if (__CocoaSet.count.getter() >= v14)
    {
      goto LABEL_15;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }
}

uint64_t DOCTagsCollectionViewData.pendingExternalChange.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v3)
  {
    *(v3 + 16) = 0;
  }

  *(v1 + v2) = a1;

  v5 = *(v1 + v2);
  if (v5)
  {
    *(v5 + 16) = 1;
  }

  return result;
}

uint64_t DOCTagsCollectionViewData.PendingExternalChange.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCTagsCollectionViewData.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCTagsCollectionViewData.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

Swift::Void __swiftcall DOCTagsCollectionViewData.applyTagsFromNodes(_:)(Swift::OpaquePointer a1)
{

  v3 = specialized DOCTagUnionCollection.init(nodes:)(v2);
  v5 = v4;
  v7 = v6;

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v10 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  v11 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8);
  v12 = v9 + 3;
  v13 = v9 + 4;
  v14 = v9 == 0;
  if (v9)
  {
    v15 = v9 + 5;
  }

  else
  {
    v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16);
  }

  if (!v14)
  {
    v10 = v12;
    v11 = v13;
  }

  v16 = *v11;
  v17 = *v10;
  v18 = *v15;

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v3, v17) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v5, v16), (v19))
  {
    _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v7, v18);
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  *v22 = v3;
  v22[1] = v5;
  v22[2] = v7;

  v23 = *(v1 + v8);
  if (!v23)
  {

    if (v21)
    {
      return;
    }

    goto LABEL_23;
  }

  v24 = v23[3];
  v25 = v23[4];
  v26 = v23[5];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(v24, v3) & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v25, v5), (v27 & 1) == 0))
  {

LABEL_20:

    if (v21)
    {
      return;
    }

    goto LABEL_23;
  }

  _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v26, v7);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
  v31 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v31)
  {
    *(v31 + 16) = 0;
  }

  *(v1 + v30) = 0;

  v32 = *(v1 + v30);
  if (v32)
  {
    *(v32 + 16) = 1;
  }

LABEL_23:
  v34 = (*((*MEMORY[0x277D85000] & *v1) + 0xA8))(v33);
  if (v34)
  {
    [v34 tagsCollectionDataNeedsReload_];

    swift_unknownObjectRelease();
  }
}

uint64_t DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchTime();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v46 - v19;
  v21 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v18);
  if ((result & 1) == 0)
  {
    v47 = v9;
    v48 = v5;
    v49 = v4;
    v23 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange];
    v24 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection];
    v25 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8];
    v26 = (v23 + 24);
    v27 = (v23 + 32);
    v28 = v23 == 0;
    if (v23)
    {
      v29 = (v23 + 40);
    }

    else
    {
      v29 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16];
    }

    if (!v28)
    {
      v24 = v26;
      v25 = v27;
    }

    v30 = *v25;
    v31 = *v24;
    v32 = *v29;

    *&aBlock = v31;
    *(&aBlock + 1) = v30;
    v54 = v32;
    v34 = (*((*v21 & *a1) + 0x58))(v33);
    specialized Sequence.forEach(_:)(v34, &aBlock);

    v35 = v54;
    type metadata accessor for DOCTagsCollectionViewData.PendingExternalChange();
    v46 = aBlock;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v46;
    *(v36 + 40) = v35;
    v37 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
    v38 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange];

    if (v38)
    {
      *(v38 + 16) = 0;
    }

    *&v46 = v8;
    *&v2[v37] = v36;

    v39 = *&v2[v37];
    if (v39)
    {
      *(v39 + 16) = 1;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v40 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v50 = *(v50 + 8);
    (v50)(v15, v52);
    v41 = swift_allocObject();
    *(v41 + 16) = v36;
    *(v41 + 24) = v2;
    v56 = partial apply for closure #1 in DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:);
    v57 = v41;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v55 = &block_descriptor_132;
    v42 = _Block_copy(&aBlock);

    v43 = v2;

    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v46;
    v45 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB940](v20, v12, v44, v42);
    _Block_release(v42);

    (*(v48 + 8))(v44, v45);
    (*(v51 + 8))(v12, v47);
    return (v50)(v20, v52);
  }

  return result;
}

_BYTE *closure #1 in DOCTagsCollectionViewData.applyPendingExternalChange(_:timeout:)(_BYTE *result, void *a2)
{
  if (result[16] == 1)
  {
    v3 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange;
    v4 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
    if (v4)
    {
      *(v4 + 16) = 0;
    }

    *(a2 + v3) = 0;

    v6 = *(a2 + v3);
    if (v6)
    {
      *(v6 + 16) = 1;
    }

    result = (*((*MEMORY[0x277D85000] & *a2) + 0xA8))(v5);
    if (result)
    {
      [result tagsCollectionDataNeedsReload_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t DOCTagsCollectionViewData.countOfTags.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  if (v1)
  {
    v2 = (v1 + 24);
  }

  else
  {
    v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  }

  v3 = *v2;
  if (v3 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t DOCTagsCollectionViewData.tag(atIndex:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  if (v3)
  {
    v4 = (v3 + 24);
  }

  v5 = *v4;

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result > a1)
    {
      goto LABEL_5;
    }

LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

  result = __CocoaSet.count.getter();
  if (result <= a1)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x24C1FC540](a1, v5);
    goto LABEL_9;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v7 = *(v5 + 8 * a1 + 32);

    v8 = v7;
LABEL_9:
    v9 = v8;

LABEL_12:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t DOCTagsCollectionViewData.index(ofTag:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection);
  if (v3)
  {
    v4 = (v3 + 24);
  }

  v5 = *v4;

  v6 = specialized Collection<>.firstIndex(of:)(a1, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return v6;
  }

  return NSNotFound.getter();
}

uint64_t DOCTagsCollectionViewData.presence(of:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange);
  v4 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 8);
  v5 = (v3 + 32);
  v6 = v3 == 0;
  if (v3)
  {
    v7 = (v3 + 40);
  }

  else
  {
    v7 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection + 16);
  }

  if (!v6)
  {
    v4 = v5;
  }

  v8 = *v4;
  v9 = *v7;

  if (specialized Set.contains(_:)(a1, v9))
  {

    return 2;
  }

  else
  {
    v11 = specialized Set.contains(_:)(a1, v8);

    return v11 & 1;
  }
}

id DOCTagsCollectionViewData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCTagsCollectionViewData.init()()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_tagsUnionCollection];
  *v1 = specialized DOCTagUnionCollection.init(nodes:)(MEMORY[0x277D84F90]);
  v1[1] = v2;
  v1[2] = v3;
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCTagsCollectionViewData_pendingExternalChange] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCTagsCollectionViewData();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t DOCTagsCollectionViewDataPresence.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t DOCTagsCollectionViewDataChanges.deletions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL DOCTagsCollectionViewDataChanges.empty.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

id DOCTagsCollectionViewDataChanges.init()()
{
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables32DOCTagsCollectionViewDataChanges_deletions] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCTagsCollectionViewDataChanges();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DOCTagsCollectionViewData.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void protocol witness for static Equatable.== infix(_:_:) in conformance DOCTagUnionCollection(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSo6DOCTagC_Tt1g5(*a1, *a2))
  {
    _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v2, v4);
    if (v6)
    {

      _sSh2eeoiySbShyxG_ABtFZSo6DOCTagC_Tt1g5(v3, v5);
    }
  }
}

uint64_t specialized _ArrayProtocol.filter(_:)(unint64_t a1, void *a2)
{
  v27 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v21 = a1;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = a2;
    v26 = a1 + 32;
    v23 = a1 & 0xC000000000000001;
    v24 = v3;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x24C1FC540](v4, v21);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v26 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {

        v10 = v7;
        v11 = __CocoaSet.contains(_:)();

        if (v11)
        {

          goto LABEL_6;
        }
      }

      else if (*(v9 + 16))
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
        v12 = *(v9 + 40);

        v13 = NSObject._rawHashValue(seed:)(v12);
        v14 = -1 << *(v9 + 32);
        v15 = v13 & ~v14;
        if ((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = *(*(v9 + 48) + 8 * v15);
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v3 = v24;
          a2 = v25;
          v6 = v22;
          v5 = v23;
          goto LABEL_6;
        }

LABEL_4:

        v3 = v24;
        a2 = v25;
        v6 = v22;
        v5 = v23;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = specialized ContiguousArray._endMutation()();
LABEL_6:
      if (v4 == v3)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized DOCTagUnionCollection.init(nodes:)(unint64_t a1)
{
  v8 = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result >= 1)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < 1)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_6:
    v4 = [v3 tags];
    swift_unknownObjectRelease();
    v5 = DOCTagsFromFPTags();

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Set.formUnion<A>(_:)(v6);

    specialized Sequence.forEach(_:)(a1, &v8, &v9);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence()
{
  result = lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence;
  if (!lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTagsCollectionViewDataPresence and conformance DOCTagsCollectionViewDataPresence);
  }

  return result;
}

Swift::Int DOCLinkDeferredLocalizedError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

id DOCLinkDeferredLocalizedError.localizedDescription.getter()
{
  v1 = *v0;
  result = _DocumentManagerBundle();
  v3 = result;
  if (!v1)
  {
    if (result)
    {
      v11 = 0x8000000249BF5240;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD00000000000001DLL;
      v7 = 0x8000000249BF5220;
      v8 = 0xD00000000000004ELL;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v1 == 1)
  {
    if (result)
    {
      v11 = 0x8000000249BF51E0;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xD00000000000001BLL;
      v7 = 0x8000000249BF51C0;
      v8 = 0xD000000000000036;
LABEL_9:
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v6, *&v4, v3, v9, *&v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v11 = 0x8000000249BF5170;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v7 = 0x8000000249BF5150;
    v8 = 0xD00000000000004CLL;
    v6 = 0xD000000000000014;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DOCThumbnailStyle.init(userInterfaceStyle:)(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_249BB9BA0[a1];
  }

  type metadata accessor for UIUserInterfaceStyle(0);
  v4[3] = v3;
  v4[0] = a1;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 1;
}

id DOCBlockOperation.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t DOCBlockOperation.block.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block);

  return v1;
}

id DOCBlockOperation.init(block:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCBlockOperation_block];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCBlockOperation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBlockOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSArray) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FINode();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1, isa);
}

id thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned FIOperationError) -> (@autoreleased FIOperationReply?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

uint64_t static DOCCreateFolderOperation.renameCollisionFormattedString(folderName:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for renameCollisionBaseString != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return String.init(format:_:)();
}

void *DOCCreateFolderOperation.__allocating_init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v11 = objc_allocWithZone(v5);
  swift_getObjectType();
  v12 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(a1, a2, a3, a4, a5, v11);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t static DOCCreateFolderOperation.appendNumber(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v9 = MEMORY[0x24C1FAD20](a1, a2);
  v10 = MEMORY[0x24C1FAD20](a3, a4);
  v11 = [v8 uniqueNameByAppendingNumber:v9 fileExtension:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id DOC_FINewFolderOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName + 8);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager);
  v5 = type metadata accessor for DOC_FINewFolderOperation();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_destinationNode] = v3;
  v7 = &v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_folderName];
  *v7 = v1;
  v7[1] = v2;
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager] = v4;
  v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_didRegisterUndo] = 0;
  swift_getObjectType();
  v8 = DOCNode.isFINode.getter();
  swift_unknownObjectRetain();

  v9 = v4;
  v10 = MEMORY[0x24C1FAD20](v1, v2);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  if (v8)
  {
    v15.receiver = v6;
    v15.super_class = v5;
    v12 = objc_msgSendSuper2(&v15, sel_initWithName_destinationFolder_propertyList_, v10, v11, 0);
  }

  else
  {
    v16.receiver = v6;
    v16.super_class = v5;
    v12 = objc_msgSendSuper2(&v16, sel_initWithName_destinationFolderItem_, v10, v11);
  }

  v13 = v12;

  if (v13)
  {
  }

  return v13;
}

void *DOC_FINewFolderOperation.operationForUndoing()()
{
  v1 = [v0 folderNode];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249BA0290;
    *(v2 + 32) = v1;
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_D62D100ED26770BFC74B1CBE50EFE27E24DOC_FINewFolderOperation_undoManager];
    v4 = v1;
    v1 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, v0, v3);
  }

  return v1;
}

void one-time initialization function for untitledFolderName(uint64_t a1)
{
  one-time initialization function for untitledFolderName(a1, &static DOC_FPCreateFolderOperation.untitledFolderName, &qword_27EEF0928);
}

{
  one-time initialization function for untitledFolderName(a1, &static DOCCreateFolderOperation.untitledFolderName, algn_27EEF0938);
}

uint64_t DOC_FPCreateFolderOperation.folderName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName);

  return v1;
}

void *DOC_FPCreateFolderOperation.folderItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOC_FPCreateFolderOperation.folderItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOC_FPCreateFolderOperation.__allocating_init(parentItem:folderName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = a1;
  v13 = &v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v13 = a2;
  v13[1] = a3;
  swift_beginAccess();
  *&v11[v12] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a4;
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = a5;
  v14 = a1;

  v15 = a4;
  v16 = MEMORY[0x24C1FAD20](a2, a3);

  v21.receiver = v11;
  v21.super_class = v5;
  v17 = objc_msgSendSuper2(&v21, sel_initWithParentItem_folderName_, v14, v16);

  v18 = *((*MEMORY[0x277D85000] & *v17) + 0xB0);
  v19 = v17;
  v18();

  return v19;
}

void *DOC_FPCreateFolderOperation.init(parentItem:folderName:undoManager:shouldRegisterUndo:)(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = a1;
  v12 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v12 = a2;
  v12[1] = a3;
  swift_beginAccess();
  *&v5[v11] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a4;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = a5;
  v13 = a1;

  v14 = a4;
  v15 = MEMORY[0x24C1FAD20](a2, a3);

  v20.receiver = v5;
  v20.super_class = type metadata accessor for DOC_FPCreateFolderOperation();
  v16 = objc_msgSendSuper2(&v20, sel_initWithParentItem_folderName_, v13, v15);

  v17 = *((*MEMORY[0x277D85000] & *v16) + 0xB0);
  v18 = v16;
  v17();

  return v18;
}

id @objc DOC_FINewFolderOperation.actionNameForUndoing.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v8._object = 0x8000000249BF5330;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x646C6F462077654ELL;
    v4._object = 0x8000000249BF5300;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    v4._countAndFlagsBits = 0xD000000000000020;
    v3._object = 0xEA00000000007265;
    v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v8);

    v6 = MEMORY[0x24C1FAD20](v5._countAndFlagsBits, v5._object);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DOC_FPCreateFolderOperation.actionNameForUndoing.getter()
{
  result = _DocumentManagerBundle();
  if (result)
  {
    v1 = result;
    v6._object = 0x8000000249BF5330;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._countAndFlagsBits = 0x646C6F462077654ELL;
    v4._object = 0x8000000249BF5300;
    v6._countAndFlagsBits = 0xD00000000000003FLL;
    v4._countAndFlagsBits = 0xD000000000000020;
    v3._object = 0xEA00000000007265;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v2, v1, v3, v6)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DOC_FPCreateFolderOperation.operationForRedoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName + 8);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager);
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo);
  v6 = type metadata accessor for DOC_FPCreateFolderOperation();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v1;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
  *v9 = v2;
  v9[1] = v3;
  swift_beginAccess();
  *&v7[v8] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = v4;
  v7[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = v5;
  v10 = v1;

  v11 = v4;
  v12 = MEMORY[0x24C1FAD20](v2, v3);
  v21.receiver = v7;
  v21.super_class = v6;
  v13 = objc_msgSendSuper2(&v21, sel_initWithParentItem_folderName_, v10, v12);

  v14 = *((*MEMORY[0x277D85000] & *v13) + 0xB0);
  v15 = v13;
  v14();

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  aBlock[4] = partial apply for closure #1 in DOC_FPCreateFolderOperation.operationForRedoing();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_133;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  [v18 setCreateFolderCompletionBlock_];
  _Block_release(v17);

  return v13;
}

void *DOC_FPCreateFolderOperation.operationForUndoing()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249BA0290;
    *(v2 + 32) = v1;
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager);
    v4 = v1;
    v1 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, v0, v3);
  }

  return v1;
}

Swift::Void __swiftcall DOC_FPCreateFolderOperation.registerUndo()()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo) == 1)
  {
    [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager) registerUndoOperationForSender_];
  }
}

id DOC_FPCreateFolderOperation.__allocating_init(parentItem:folderName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = MEMORY[0x24C1FAD20](a2, a3);

  v9 = [v7 initWithParentItem:a1 folderName:v8];

  return v9;
}

uint64_t DOCCreateFolderOperation.folderNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_folderNode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id DOCCreateFolderOperation.stateLock.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation____lazy_storage___stateLock);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void one-time initialization function for untitledFolderName(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v6 = v5;
    v11._object = 0x8000000249BF5690;
    v7._countAndFlagsBits = 0x64656C7469746E75;
    v7._object = 0xEF7265646C6F6620;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0xD00000000000001DLL;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v11);

    *a2 = v10._countAndFlagsBits;
    *a3 = v10._object;
  }

  else
  {
    __break(1u);
  }
}

void *DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  swift_getObjectType();
  v11 = specialized DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(a1, a2, a3, a4, a5, v5);
  swift_unknownObjectRelease();

  return v11;
}

void closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = DOCCreateFolderOperation.stateLock.getter();
    [v13 lock];
    closure #1 in closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(v12, a1, a3, a4, a5, a6, &v14);
    [v13 unlock];

    if (v14)
    {
      DOCCreateFolderOperation._schedule()();
    }
  }
}

void closure #1 in closure #1 in DOCCreateFolderOperation.init(destination:folderName:isForAppIntents:undoManager:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _BYTE *a7@<X8>)
{
  v8 = a1;
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_waitingForNodes) = 0;
  if (a2)
  {
    v12 = one-time initialization token for UI;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v50 = a7;
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);
    v15 = v13;
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v43 = v17;
      v18 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v18 = 136315394;
      v19 = [a3 filename];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v49);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v15;
      *v42 = a2;
      v24 = v15;
      outlined destroy of NSObject?(v42);
      MEMORY[0x24C1FE850](v42, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    v25 = type metadata accessor for DOC_FPCreateFolderOperation();
    v26 = objc_allocWithZone(v25);
    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderItem] = 0;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_parentItem] = v15;
    v28 = &v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_folderName];
    *v28 = a4;
    v28[1] = a5;
    swift_beginAccess();
    *&v26[v27] = 0;
    *&v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_undoManager] = a6;
    v26[OBJC_IVAR____TtC26DocumentManagerExecutables27DOC_FPCreateFolderOperation_didRegisterUndo] = 0;
    v29 = v15;

    v30 = a6;
    v31 = MEMORY[0x24C1FAD20](a4, a5);
    v48.receiver = v26;
    v48.super_class = v25;
    v32 = objc_msgSendSuper2(&v48, sel_initWithParentItem_folderName_, v29, v31);

    v33 = *((*MEMORY[0x277D85000] & *v32) + 0xB0);
    v34 = v32;
    v33();

    v8 = a1;
    v35 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp) = v32;

    a7 = v50;
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.UI);
    swift_unknownObjectRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      objc_opt_self();
      v41 = swift_dynamicCastObjCClassUnconditional();
      *(v39 + 4) = v41;
      *v40 = v41;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2493AC000, v37, v38, "Failed to get FPItem for destinationNode: %@", v39, 0xCu);
      outlined destroy of NSObject?(v40);
      MEMORY[0x24C1FE850](v40, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
    }
  }

  *a7 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_scheduleWasDeferred);
}

uint64_t key path getter for DOCCreateFolderOperation.nameConflictHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x158))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCCreateFolderOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.nameConflictHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCCreateFolderOperation, @in_guaranteed String, @in_guaranteed String, @in_guaranteed AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@out String?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x160);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCCreateFolderOperation.errorHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x170))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed FIOperationError?, @guaranteed Error?) -> (@owned FIOperationReply?);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.errorHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed FIOperationError?, @in_guaranteed Error?) -> (@out FIOperationReply?);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x178);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t key path getter for DOCCreateFolderOperation.completionHandler : DOCCreateFolderOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x188))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCRenameOperation, @guaranteed DOCNode?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCCreateFolderOperation.completionHandler : DOCCreateFolderOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCRenameOperation, @in_guaranteed DOCNode?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x190);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOCCreateFolderOperation.nameConflictHandler.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t DOCCreateFolderOperation.nameConflictHandler.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void DOCCreateFolderOperation.setUpCallbacks()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fiNodeNewFolderOp);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 completionHandler];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      v3 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSArray) -> ();
    }

    else
    {
      v4 = 0;
    }

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v3;
    v13[4] = v4;
    v37 = partial apply for closure #1 in DOCCreateFolderOperation.setUpCallbacks();
    v38 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v36 = &block_descriptor_55_5;
    v14 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);

    [v2 setCompletionHandler_];
    _Block_release(v14);
    v15 = v2;
    v16 = [v15 nameConflictHandler];
    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      v16 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSString, @unowned NSString, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@autoreleased NSString?);
    }

    else
    {
      v17 = 0;
    }

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = v16;
    v19[4] = v17;
    v37 = partial apply for closure #2 in DOCCreateFolderOperation.setUpCallbacks();
    v38 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?);
    v36 = &block_descriptor_62_1;
    v20 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16);

    [v15 setNameConflictHandler_];
    _Block_release(v20);

    v21 = [v15 errorHandler];
    if (v21)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      v21 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned NSCollectionLayoutEnvironment) -> (@autoreleased NSCollectionLayoutSection?);
    }

    else
    {
      v22 = 0;
    }

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v21;
    v24[4] = v22;
    v37 = partial apply for closure #3 in DOCCreateFolderOperation.setUpCallbacks();
    v38 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v36 = &block_descriptor_69_1;
    v25 = _Block_copy(&aBlock);
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);

    [v15 setErrorHandler_];
    _Block_release(v25);

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v16);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v5)
    {
      v6 = *((*MEMORY[0x277D85000] & *v0) + 0x158);
      v7 = v5;
      v8 = v6();
      v9 = v8;
      if (v8)
      {
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
      }

      [v7 setShouldBounceOnCollision_];
      v10 = [v7 createFolderCompletionBlock];
      if (v10)
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v10 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ();
      }

      else
      {
        v11 = 0;
      }

      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      v30[2] = v29;
      v30[3] = v10;
      v30[4] = v11;
      v37 = partial apply for closure #4 in DOCCreateFolderOperation.setUpCallbacks();
      v38 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v36 = &block_descriptor_45_2;
      v31 = _Block_copy(&aBlock);
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);

      [v7 setCreateFolderCompletionBlock_];
      _Block_release(v31);

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.UI);
      oslog = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2493AC000, oslog, v27, "Attempting to set up callbacks prematurely", v28, 2u);
        MEMORY[0x24C1FE850](v28, -1, -1);
      }
    }
  }
}

void closure #1 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (a2 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(a2 + 32);
    }

    v10 = v9;
    v11 = v9;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_10:
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v8) + 0xF0))(v10);
  v14 = (*((*v12 & *v8) + 0x188))(v13);
  if (v14)
  {
    v15 = v14;
    v16 = v10;
    v15(v8, v10);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v15);
  }

  if (a4)
  {
    a4(a1, a2);
  }

  (*((*v12 & *v8) + 0x160))(0, 0);
  (*((*v12 & *v8) + 0x178))(0, 0);
  (*((*v12 & *v8) + 0x190))(0, 0);
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned FIOperation, @unowned NSString, @unowned NSString, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@autoreleased NSString?)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = MEMORY[0x24C1FAD20](a2, a3);
  v13 = MEMORY[0x24C1FAD20](a4, a5);
  v14 = (*(a7 + 16))(a7, a1, v12, v13, a6);

  if (!v14)
  {
    return 0;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v15;
}

void *closure #2 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = (*((*MEMORY[0x277D85000] & *result) + 0x158))();
    if (v17 && (v18 = v17, v22 = v17(v16, a2, a3, a4, a5, a6), v20 = v19, outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v18), v20))
    {

      return v22;
    }

    else if (a8)
    {
      v21 = a8(a1, a2, a3, a4, a5, a6);

      return v21;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed String, @guaranteed String, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@owned String?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x24C1FAD20](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id closure #3 in DOCCreateFolderOperation.setUpCallbacks()(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))();
    if (v9)
    {
      v10 = v9;
      v11 = v9(v8, a2, 0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v10);
    }

    else if (a4)
    {
      v11 = a4(a1, a2);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    v12 = [a2 error];
    v13 = objc_allocWithZone(MEMORY[0x277D04718]);
    v14 = _convertErrorToNSError(_:)();

    v11 = [v13 initWithResolution:5 error:v14];
  }

  return v11;
}

void closure #4 in DOCCreateFolderOperation.setUpCallbacks()(void *a1, void *a2, uint64_t a3, void (*a4)(void *, void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = MEMORY[0x277D85000];
    if (a2)
    {
      v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))(a2);
      if (v10)
      {
        v11 = v10;
        v12 = a2;

        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v11);
      }

      else
      {
      }
    }

    v13 = *((*v9 & *v8) + 0xF0);
    v14 = a1;
    v15 = v13(a1);
    v16 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCreateFolderOperation_fpItemCreateFolderOp);
    if (v16)
    {
      v17 = *((*v9 & *v16) + 0x80);
      v18 = v14;
      v19 = v16;
      v17(a1);
    }

    v20 = (*((*v9 & *v8) + 0x188))(v15);
    if (v20)
    {
      v21 = v20;
      v20(v8, a1);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v21);
    }

    if (a4)
    {
      a4(a1, a2);
    }

    (*((*v9 & *v8) + 0x160))(0, 0);
    (*((*v9 & *v8) + 0x178))(0, 0);
    (*((*v9 & *v8) + 0x190))(0, 0);
  }
}