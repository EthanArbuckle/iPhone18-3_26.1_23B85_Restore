unint64_t lazy protocol witness table accessor for type CaptionsPauseTransition and conformance CaptionsPauseTransition()
{
  result = lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition;
  if (!lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CaptionsPauseTransition and conformance CaptionsPauseTransition);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionsPauseTransition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *getEnumTagSinglePayload for CaptionsPausedState(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 <= 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = *result;
    }

    v8 = v7 - 4;
    if (v6 < 3)
    {
      v9 = -1;
    }

    else
    {
      v9 = v8;
    }

    if (v9 + 1 >= 2)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CaptionsPausedState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for CaptionsPausedState(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 3;
  if (v1 >= 3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for CaptionsPausedState(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t key path getter for ConversationControlsShareCardViewController.delegate : ConversationControlsShareCardViewController@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationControlsShareCardViewController.delegate : ConversationControlsShareCardViewController(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationControlsShareCardViewController.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void ConversationControlsShareCardViewController.delegate.setter(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*ConversationControlsShareCardViewController.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return ConversationControlsShareCardViewController.delegate.modify;
}

void ConversationControlsShareCardViewController.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
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

uint64_t key path getter for ConversationControlsShareCardViewController.updateSheetDetent : ConversationControlsShareCardViewController@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v4);
}

uint64_t key path setter for ConversationControlsShareCardViewController.updateSheetDetent : ConversationControlsShareCardViewController(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CNComposeRecipient) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
}

uint64_t ConversationControlsShareCardViewController.updateSheetDetent.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1);
  return v2;
}

uint64_t ConversationControlsShareCardViewController.updateSheetDetent.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_13();
  v5 = *v2;
  *v2 = a1;
  v2[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

id ConversationControlsShareCardViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = closure #1 in ConversationControlsShareCardViewController.backgroundMaterialView.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in ConversationControlsShareCardViewController.backgroundMaterialView.getter()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

void closure #1 in ConversationControlsShareCardViewController.headerView.getter(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v1)
  {
    v14.receiver = a1;
    v14.super_class = swift_getObjectType();
    v3 = v1;
    v4 = objc_msgSendSuper2(&v14, sel_modalPresentationStyle) == 7;
    State.init(wrappedValue:)();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32UIHostingAutoResizableControllerCyAA19ShareCardHeaderViewVGMd));
    v6 = specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(v3, v4, v12, v13, 1);
    [a1 addChildViewController_];
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 setBackgroundColor_];

      v9 = [v6 view];
      if (v9)
      {
        [v9 setTranslatesAutoresizingMaskIntoConstraints_];

        [v6 didMoveToParentViewController_];
        v10 = [v6 view];

        if (v10)
        {

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v11 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  [v11 init];
}

id ConversationControlsShareCardViewController.modalPresentationStyle.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_modalPresentationStyle);
}

id closure #1 in ConversationControlsShareCardViewController.closeButton.getter(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v2 _setImageColor_forState_];

  v5 = [v2 backgroundImageForState_];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 secondarySystemFillColor];
    v8 = [v6 imageWithTintColor_];
  }

  else
  {
    v8 = 0;
  }

  [v2 setBackgroundImage:v8 forState:0];
  [v2 addTarget:a1 action:sel_didTapCloseButton forControlEvents:64];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v9) = 1144750080;
  [v2 setContentHuggingPriority:0 forAxis:v9];

  return v2;
}

id ConversationControlsShareCardViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
    [v4 setShowsVerticalScrollIndicator_];
    [v4 setShowsHorizontalScrollIndicator_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ConversationControlsShareCardViewController.scrollViewContent.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id ConversationControlsShareCardViewController.headerView.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

void closure #1 in ConversationControlsShareCardViewController.controlsView.getter(char *a1)
{
  v2 = type metadata accessor for ShareCardControlsView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&a1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v5)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ShareCardViewModel(0);
    swift_allocObject();
    v6 = v5;
    ShareCardViewModel.init(didTapScreenShareButton:didTapAskToScreenShareButton:didTapCollaborateButton:didTapEndSharePlay:)();
    v8 = v7;
    v20[3] = type metadata accessor for ConversationControlsManager(0);
    v20[4] = &protocol witness table for ConversationControlsManager;
    v20[0] = v6;
    v9 = *(*v8 + 688);
    v10 = v6;
    v9(v20);
    __swift_destroy_boxed_opaque_existential_1(v20);
    *v4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd);
    swift_storeEnumTagMultiPayload();
    v11 = v4 + *(v2 + 20);
    *v11 = partial apply for implicit closure #1 in closure #1 in ConversationControlsShareCardViewController.controlsView.getter;
    *(v11 + 1) = v8;
    v11[16] = 0;
    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32UIHostingAutoResizableControllerCyAA21ShareCardControlsViewVGMd));

    v13 = specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(v4, 1);
    [a1 addChildViewController_];
    v14 = [v13 view];
    if (v14)
    {
      v15 = v14;
      [v14 setBackgroundColor_];

      v16 = [v13 view];
      if (v16)
      {
        [v16 setTranslatesAutoresizingMaskIntoConstraints_];

        [v13 didMoveToParentViewController_];
        v17 = [v13 view];

        if (v17)
        {

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  [v18 init];
}

void closure #2 in closure #1 in ConversationControlsShareCardViewController.controlsView.getter(NSObject *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(a1);
  }
}

void ConversationControlsShareCardViewController.didTapAskToScreenShareButton(_:)(NSObject *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationControls == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "Did tap share card ask to share screen button", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    [v2 dismissViewControllerAnimated:1 completion:0];
    if (!a1)
    {
      a1 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(a1, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1BBC58000, a1, v21, "Cannot request to screen share without a handle", v22, 2u);
        MEMORY[0x1BFB23DF0](v22, -1, -1);
      }

      goto LABEL_16;
    }

    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager);
    if (!v7)
    {
      break;
    }

    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x2C0);
    v47 = a1;
    v9 = v8();
    if (!v9)
    {
      goto LABEL_13;
    }

    v10 = v9;
    v11 = [v9 mergedActiveRemoteParticipants];
    v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    v2 = lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject();
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Set.count.getter(v13);

    if (!v14)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1BBC58000, v28, v29, "Cannot request to screen share with no participants", v30, 2u);
        MEMORY[0x1BFB23DF0](v30, -1, -1);
      }

      v27 = v47;
      goto LABEL_17;
    }

    v46 = v10;
    v15 = [v10 mergedActiveRemoteParticipants];
    v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    a1 = v12;
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v16 = v50;
      v17 = v51;
      v18 = v52;
      v19 = v53;
      v20 = v54;
    }

    else
    {
      v31 = -1 << *(v16 + 32);
      v17 = v16 + 56;
      v2 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v20 = v33 & *(v16 + 56);

      v18 = v2;
      v19 = 0;
    }

    v34 = (v18 + 64) >> 6;
    if (v16 < 0)
    {
      while (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v2 = v49;
        v37 = v19;
        v38 = v20;
        if (!v49)
        {
          break;
        }

LABEL_36:
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
        v39 = [v2 handle];
        v40 = static NSObject.== infix(_:_:)();

        if (v40)
        {
          outlined consume of Set<TUHandle>.Iterator._Variant();

          v44 = [objc_opt_self() sharedInstance];
          v45 = [v44 conversationManager];

          [v45 requestParticipantToShareScreen:v2 forConversation:v46];
          return;
        }

        v19 = v37;
        v20 = v38;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_39;
    }

LABEL_28:
    v35 = v19;
    v36 = v20;
    v37 = v19;
    if (v20)
    {
LABEL_32:
      v38 = (v36 - 1) & v36;
      v2 = *(*(v16 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
      if (v2)
      {
        goto LABEL_36;
      }

LABEL_39:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1BBC58000, v41, v42, "Couldn't find participant for request to screen share", v43, 2u);
        MEMORY[0x1BFB23DF0](v43, -1, -1);
      }

      return;
    }

    while (1)
    {
      v37 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v37 >= v34)
      {
        goto LABEL_39;
      }

      v36 = *(v17 + 8 * v37);
      ++v35;
      if (v36)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  v23 = a1;
LABEL_13:
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "Cannot request to screen share without a conversation", v26, 2u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

LABEL_16:
  v27 = a1;
LABEL_17:
}

void ConversationControlsShareCardViewController.didTapCollaborateButton()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Did tap share card collaborate button", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v6)
  {
    v7 = v6;
    [v1 dismissViewControllerAnimated:1 completion:0];
    [v7 collaborateButtonTapped];
  }
}

void closure #1 in closure #1 in ConversationControlsShareCardViewController.controlsView.getter(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void ConversationControlsShareCardViewController.didTapEndSharePlay()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Did Tap End Share Play", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (!v6)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_12;
  }

  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x980))(&v25);
  if (!*(&v26 + 1))
  {
LABEL_12:
    outlined destroy of Activity?(&v25);
    return;
  }

  v8 = outlined init with take of TapInteractionHandler(&v25, v28);
  v9 = (*((*v7 & *v6) + 0x2C0))(v8);
  if (v9)
  {
    v10 = v9;
    outlined init with copy of IDSLookupManager(v28, &v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivitySession);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v28);

      return;
    }

    v11 = v24;
    outlined init with copy of IDSLookupManager(v28, &v25);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = *(&v26 + 1);
      v17 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v18 = (*(v17 + 8))(v16, v17);
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1BBC58000, v12, v13, "End active SharePlay activity: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB23DF0](v15, -1, -1);
      MEMORY[0x1BFB23DF0](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v25);
    }

    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 conversationManager];

    [v23 presentDismissalAlertForActivitySession:v11 onConversation:v10];
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
}

void *ConversationControlsShareCardViewController.sharePlayDiscoverabilityView.getter(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = closure #1 in ConversationControlsShareCardViewController.sharePlayDiscoverabilityView.getter(v2, a2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    v7 = v5;
    outlined consume of IMAccount??(v6);
  }

  outlined copy of IMAccount??(v4);
  return v5;
}

void *closure #1 in ConversationControlsShareCardViewController.sharePlayDiscoverabilityView.getter(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager);
  if (v3)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x860))();
  }

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCyAA32SharePlayDiscoverabilityMenuViewVGMd));
  LOBYTE(v12) = a2;
  BYTE1(v12) = 1;
  v5 = UIHostingController.init(rootView:)();
  v6 = [v5 view];
  v7 = v6;
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 clearColor];
    [v9 setBackgroundColor_];
  }

  return v7;
}

id ConversationControlsShareCardViewController.createSeparator()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v1 = [objc_opt_self() tertiaryLabelColor];
  [v0 setBackgroundColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id ConversationControlsShareCardViewController.init(conversationControlsManager:)()
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_foregroundAppCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___headerView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___closeButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___controlsView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___sharePlayDiscoverabilityView) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___gelatoDiscoverabilityView) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager) = v0;
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v4, v5, v1, ObjectType);
}

id ConversationControlsShareCardViewController.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

void ConversationControlsShareCardViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_foregroundAppCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollViewContent) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___controlsView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___sharePlayDiscoverabilityView) = 1;
  *(v0 + OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___gelatoDiscoverabilityView) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationControlsShareCardViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
  OUTLINED_FUNCTION_1();
  v291 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v290 = &v286 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v286 - v11;
  [v0 setOverrideUserInterfaceStyle_];
  v13 = ConversationControlsShareCardViewController.backgroundMaterialView.getter();
  v14 = [v0 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_41;
  }

  v15 = v14;
  v289 = v2;
  [v14 addSubview_];

  ConversationControlsShareCardViewController.headerView.getter(&OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___headerView, closure #1 in ConversationControlsShareCardViewController.headerView.getter);
  v16 = OUTLINED_FUNCTION_9_61();
  if (!v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v16;
  v303 = v2;
  [v16 addSubview_];

  OUTLINED_FUNCTION_1_108();
  ConversationControlsShareCardViewController.headerView.getter(v18, v19);
  v20 = OUTLINED_FUNCTION_9_61();
  if (!v20)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v21 = v20;
  v288 = v12;
  v302 = v2;
  [v21 addSubview_];

  ConversationControlsShareCardViewController.scrollView.getter();
  v22 = OUTLINED_FUNCTION_9_61();
  if (!v22)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = v22;
  v24 = v2;
  [v23 addSubview_];

  v25 = ConversationControlsShareCardViewController.scrollViewContent.getter();
  v297 = v24;
  [v24 addSubview_];
  v26 = ConversationControlsShareCardViewController.headerView.getter(&OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___controlsView, closure #1 in ConversationControlsShareCardViewController.controlsView.getter);
  v27 = OUTLINED_FUNCTION_6_70();
  [v27 v28];

  ConversationControlsShareCardViewController.createSeparator()();
  v29 = OUTLINED_FUNCTION_6_70();
  v295 = v30;
  [v29 v31];
  v32 = ConversationControlsShareCardViewController.sharePlayDiscoverabilityView.getter(&OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___sharePlayDiscoverabilityView, 0);
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_6_70();
    [v33 v34];
  }

  v300 = v32;
  v287 = v6;
  ConversationControlsShareCardViewController.createSeparator()();
  v35 = OUTLINED_FUNCTION_6_70();
  v301 = v36;
  [v35 v37];
  v38 = ConversationControlsShareCardViewController.sharePlayDiscoverabilityView.getter(&OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___gelatoDiscoverabilityView, 1);
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_6_70();
    [v39 v40];
  }

  v299 = v25;
  v294 = v38;
  v306.receiver = v1;
  v306.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v306, sel_modalPresentationStyle, v8);
  v42 = v302;
  [v302 setHidden_];

  v43 = [v1 view];
  if (!v43)
  {
    goto LABEL_44;
  }

  v44 = v43;
  *&v298 = v41;
  v307 = **&MEMORY[0x1E69DC5C0];
  v292 = v13;
  UIView.addConstraintsToFill(_:insets:)(v13, v307);

  v305 = MEMORY[0x1E69E7CC0];
  ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v296 = xmmword_1BC4BC370;
  *(inited + 16) = xmmword_1BC4BC370;
  v46 = v303;
  v47 = [v303 topAnchor];
  v48 = OUTLINED_FUNCTION_3_99();
  if (!v48)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v49 = v48;
  v50 = [v48 safeAreaLayoutGuide];

  v51 = [v50 topAnchor];
  v52 = OUTLINED_FUNCTION_0_122();
  v54 = [v52 v53];

  *(inited + 32) = v54;
  v55 = [v46 leadingAnchor];
  v56 = OUTLINED_FUNCTION_3_99();
  if (!v56)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v57 = v56;
  v58 = [v56 safeAreaLayoutGuide];

  v59 = [v58 leadingAnchor];
  v60 = OUTLINED_FUNCTION_0_122();
  v62 = [v60 v61];

  *(inited + 40) = v62;
  v63 = v297;
  if (v298 == 7)
  {
    v64 = v302;

    v65 = [v46 trailingAnchor];
    v66 = [v1 view];
    if (!v66)
    {
LABEL_59:
      __break(1u);
      return;
    }

    v67 = v66;
    v68 = [v66 safeAreaLayoutGuide];

    v69 = &selRef_trailingAnchor;
  }

  else
  {
    v65 = [v46 trailingAnchor];
    v69 = &selRef_leadingAnchor;
    v64 = v302;
    v68 = v302;
  }

  v70 = [v68 *v69];

  v71 = OUTLINED_FUNCTION_0_122();
  v73 = [v71 v72];

  *(inited + 48) = v73;
  OUTLINED_FUNCTION_5_85();
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_1BC4BA930;
  v75 = [v64 topAnchor];

  v76 = [v303 topAnchor];
  v77 = OUTLINED_FUNCTION_2_105();
  v79 = [v77 v78];

  *(v74 + 32) = v79;
  v80 = [v64 trailingAnchor];

  v81 = [v1 view];
  if (!v81)
  {
    goto LABEL_47;
  }

  v82 = v81;
  v83 = [v81 safeAreaLayoutGuide];

  v84 = [v83 trailingAnchor];
  v85 = OUTLINED_FUNCTION_2_105();
  v87 = [v85 v86];

  *(v74 + 40) = v87;
  OUTLINED_FUNCTION_5_85();
  v88 = swift_initStackObject();
  v298 = xmmword_1BC4BA7F0;
  *(v88 + 16) = xmmword_1BC4BA7F0;
  v89 = [v63 topAnchor];

  v90 = [v303 bottomAnchor];
  v91 = OUTLINED_FUNCTION_2_105();
  v93 = [v91 v92];

  *(v88 + 32) = v93;
  v94 = [v63 leadingAnchor];

  v95 = [v1 view];
  if (!v95)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v96 = v95;
  v97 = [v95 leadingAnchor];

  v98 = OUTLINED_FUNCTION_0_122();
  v100 = [v98 v99];

  *(v88 + 40) = v100;
  v101 = [v63 trailingAnchor];

  v102 = [v1 view];
  if (!v102)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v103 = v102;
  v104 = [v102 trailingAnchor];

  v105 = OUTLINED_FUNCTION_0_122();
  v107 = [v105 v106];

  *(v88 + 48) = v107;
  v108 = [v63 bottomAnchor];

  v109 = [v1 view];
  v293 = v1;
  if (!v109)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v110 = v109;
  v111 = v63;
  v112 = [v109 bottomAnchor];

  v113 = OUTLINED_FUNCTION_0_122();
  v115 = [v113 v114];

  *(v88 + 56) = v115;
  OUTLINED_FUNCTION_5_85();
  v116 = swift_initStackObject();
  *(v116 + 16) = xmmword_1BC4BE4A0;
  v117 = v299;
  v118 = [v299 topAnchor];
  v119 = [v111 contentLayoutGuide];
  v120 = [v119 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

  v121 = OUTLINED_FUNCTION_0_122();
  v123 = [v121 v122];

  *(v116 + 32) = v123;
  v124 = [v117 leadingAnchor];
  v125 = [v111 contentLayoutGuide];
  v126 = [v125 leadingAnchor];

  v127 = OUTLINED_FUNCTION_0_122();
  v129 = [v127 v128];

  *(v116 + 40) = v129;
  v130 = [v117 leadingAnchor];
  v131 = [v111 frameLayoutGuide];
  v132 = [v131 leadingAnchor];

  v133 = OUTLINED_FUNCTION_0_122();
  v135 = [v133 v134];

  *(v116 + 48) = v135;
  v136 = [v117 trailingAnchor];
  v137 = [v111 contentLayoutGuide];
  v138 = [v137 trailingAnchor];

  v139 = OUTLINED_FUNCTION_0_122();
  v141 = [v139 v140];

  *(v116 + 56) = v141;
  v142 = [v117 trailingAnchor];
  v143 = [v111 frameLayoutGuide];
  v144 = [v143 trailingAnchor];

  v145 = OUTLINED_FUNCTION_0_122();
  v147 = [v145 v146];

  *(v116 + 64) = v147;
  v148 = [v117 bottomAnchor];
  v149 = [v111 contentLayoutGuide];
  v150 = [v149 bottomAnchor];

  v151 = OUTLINED_FUNCTION_0_122();
  v153 = [v151 v152];

  *(v116 + 72) = v153;
  OUTLINED_FUNCTION_5_85();
  v154 = swift_initStackObject();
  *(v154 + 16) = v296;
  v155 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___controlsView;
  v156 = v293;
  v157 = [*&v293[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___controlsView] topAnchor];
  v158 = [v117 topAnchor];
  v159 = OUTLINED_FUNCTION_2_105();
  v161 = [v159 v160];

  *(v154 + 32) = v161;
  v162 = [*&v156[v155] leadingAnchor];
  v163 = [v303 leadingAnchor];
  v164 = OUTLINED_FUNCTION_2_105();
  v166 = [v164 v165];

  *(v154 + 40) = v166;
  v167 = [*&v156[v155] trailingAnchor];
  v168 = v302;
  v169 = [v302 trailingAnchor];

  v170 = OUTLINED_FUNCTION_2_105();
  v172 = [v170 v171];

  *(v154 + 48) = v172;
  OUTLINED_FUNCTION_5_85();
  v173 = swift_initStackObject();
  *&v174 = OUTLINED_FUNCTION_4_89(v173).n128_u64[0];
  v175 = v295;
  v176 = [v295 topAnchor];
  v177 = [*&v156[v155] bottomAnchor];
  v178 = OUTLINED_FUNCTION_2_105();
  v180 = [v178 v179];

  LODWORD(v181) = 1144750080;
  [v180 setPriority_];
  *(v154 + 32) = v180;
  v182 = [v175 leadingAnchor];
  v183 = [v156 view];
  if (!v183)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v184 = v183;
  v185 = [v183 leadingAnchor];

  v186 = OUTLINED_FUNCTION_0_122();
  v188 = [v186 v187];

  *(v154 + 40) = v188;
  v189 = [v175 trailingAnchor];
  v190 = OUTLINED_FUNCTION_3_99();
  if (!v190)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v191 = v190;
  v192 = [v190 trailingAnchor];

  v193 = OUTLINED_FUNCTION_0_122();
  v195 = [v193 v194];

  *(v154 + 48) = v195;
  v196 = [v175 heightAnchor];
  v197 = [v196 constraintEqualToConstant_];

  *(v154 + 56) = v197;
  OUTLINED_FUNCTION_5_85();
  if (one-time initialization token for appShelfSeparatorInsetBuffer != -1)
  {
    swift_once();
  }

  v198 = *&static Layout.ShareCard.appShelfSeparatorInsetBuffer;
  v199 = [objc_opt_self() sharedApplication];
  v200 = [v199 preferredContentSizeCategory];

  LOBYTE(v199) = static UIContentSizeCategory.>= infix(_:_:)();
  if (v199)
  {
    v198 = 16.0;
  }

  if (v300)
  {
    v201 = swift_initStackObject();
    OUTLINED_FUNCTION_4_89(v201);
    v202 = v300;
    v203 = [v202 topAnchor];
    v204 = [v175 bottomAnchor];
    v205 = OUTLINED_FUNCTION_0_122();
    v207 = [v205 v206];

    v200[4] = v207;
    v208 = [v202 leadingAnchor];
    v209 = OUTLINED_FUNCTION_3_99();
    if (!v209)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v210 = v209;
    v211 = [v209 safeAreaLayoutGuide];

    v212 = [v211 leadingAnchor];
    v213 = OUTLINED_FUNCTION_0_122();
    v215 = [v213 v214];

    v200[5] = v215;
    v216 = [v202 trailingAnchor];
    v217 = [v156 view];
    v218 = v301;
    if (!v217)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v219 = v217;
    v220 = [v217 safeAreaLayoutGuide];

    v221 = [v220 trailingAnchor];
    v222 = OUTLINED_FUNCTION_0_122();
    v224 = [v222 v223];

    v200[6] = v224;
    v225 = [v218 topAnchor];
    v226 = [v202 bottomAnchor];
    v227 = OUTLINED_FUNCTION_0_122();
    v229 = [v227 v228];

    LODWORD(v230) = 1144750080;
    [v229 setPriority_];
    v200[7] = v229;
    OUTLINED_FUNCTION_5_85();
  }

  v231 = swift_initStackObject();
  *(v231 + 16) = v296;
  v232 = v301;
  v233 = [v301 leadingAnchor];
  v234 = [v156 view];
  if (!v234)
  {
    goto LABEL_53;
  }

  v235 = v234;
  v236 = [v234 leadingAnchor];

  v237 = OUTLINED_FUNCTION_0_122();
  v239 = [v237 v238];

  *(v231 + 32) = v239;
  v240 = [v232 trailingAnchor];
  v241 = OUTLINED_FUNCTION_3_99();
  if (!v241)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v242 = v241;
  v243 = [v241 trailingAnchor];

  v244 = OUTLINED_FUNCTION_0_122();
  v246 = [v244 v245];

  *(v231 + 40) = v246;
  v247 = [v232 heightAnchor];
  v248 = [v247 constraintEqualToConstant_];

  *(v231 + 48) = v248;
  OUTLINED_FUNCTION_5_85();
  v249 = v294;
  if (v294)
  {
    v250 = swift_initStackObject();
    OUTLINED_FUNCTION_4_89(v250);
    v251 = v249;
    v252 = [v251 topAnchor];
    v253 = [v301 bottomAnchor];
    v254 = OUTLINED_FUNCTION_2_105();
    v256 = [v254 v255];

    *(v231 + 32) = v256;
    v257 = [v251 leadingAnchor];
    v258 = OUTLINED_FUNCTION_3_99();
    if (v258)
    {
      v259 = v258;
      v260 = [v258 safeAreaLayoutGuide];

      v261 = [v260 leadingAnchor];
      v262 = OUTLINED_FUNCTION_2_105();
      v264 = [v262 v263];

      *(v231 + 40) = v264;
      v265 = [v251 trailingAnchor];
      v266 = OUTLINED_FUNCTION_3_99();
      if (v266)
      {
        v267 = v266;
        v268 = [v266 safeAreaLayoutGuide];

        v269 = [v268 trailingAnchor];
        v270 = OUTLINED_FUNCTION_2_105();
        v272 = [v270 v271];

        *(v231 + 48) = v272;
        v273 = [v251 bottomAnchor];
        v274 = [v299 bottomAnchor];
        v275 = OUTLINED_FUNCTION_2_105();
        v277 = [v275 v276];

        *(v231 + 56) = v277;
        OUTLINED_FUNCTION_5_85();

        v249 = v294;
        goto LABEL_36;
      }

      goto LABEL_58;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_36:
  v278 = objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v278 activateConstraints_];

  ConversationControlsShareCardViewController.updateSize()();
  v280 = *&v156[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_conversationControlsManager];
  if (v280)
  {
    v281 = v290;
    (*((*MEMORY[0x1E69E7D40] & *v280) + 0x878))();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<ForegroundApp?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GMd);
    lazy protocol witness table accessor for type ForegroundApp? and conformance <A> A?();
    v282 = v249;
    v284 = v288;
    v283 = v289;
    Publisher<>.removeDuplicates()();
    (*(v291 + 8))(v281, v283);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ForegroundApp?>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy15ConversationKit13ForegroundAppCSg_GGMd);
    v285 = v287;
    v280 = Publisher<>.sink(receiveValue:)();

    (*(v286 + 8))(v284, v285);
  }

  else
  {
  }

  *&v156[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_foregroundAppCancellable] = v280;
}

void ConversationControlsShareCardViewController.updateSize()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = ConversationControlsShareCardViewController.scrollView.getter();
  v4 = ConversationControlsShareCardViewController.scrollViewContent.getter();
  [v4 systemLayoutSizeFittingSize_];
  v6 = v5;
  v8 = v7;

  [v3 setContentSize_];
  v9 = OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView;
  [*&v1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController____lazy_storage___scrollView] contentSize];
  v11 = v10;
  [*&v1[v9] frame];
  v13 = ceil(v11 + v12);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  if (objc_msgSendSuper2(&v18, sel_modalPresentationStyle) == 7)
  {
    [*&v1[v9] contentSize];
    [v1 setPreferredContentSize_];
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
    *(swift_allocObject() + 16) = v13;
    v15 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    v16 = &v1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_updateSheetDetent];
    swift_beginAccess();
    v17 = *v16;
    if (*v16)
    {

      v17(v15);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v17);
    }
  }
}

void closure #1 in ConversationControlsShareCardViewController.viewDidLoad()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall ConversationControlsShareCardViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidDisappear_, a1);
  v3 = &v1[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate];
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v1, ObjectType, v6);
  }
}

void ConversationControlsShareCardViewController.modalPresentationStyle.setter()
{
  OUTLINED_FUNCTION_247();
  v2.receiver = v1;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_setModalPresentationStyle_, v0);
  ConversationControlsShareCardViewController.modalPresentationStyle.didset();
}

void ConversationControlsShareCardViewController.modalPresentationStyle.didset()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, sel_modalPresentationStyle) == 7;
  OUTLINED_FUNCTION_1_108();
  v4 = ConversationControlsShareCardViewController.headerView.getter(v2, v3);
  [v4 setHidden_];
}

void (*ConversationControlsShareCardViewController.modalPresentationStyle.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v3[4].receiver = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  v3[3].receiver = [(objc_super *)v3 modalPresentationStyle];
  return ConversationControlsShareCardViewController.modalPresentationStyle.modify;
}

void ConversationControlsShareCardViewController.modalPresentationStyle.modify(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  v6 = *a1;
  if (a2)
  {
    v6[1].receiver = super_class;
    v6[1].super_class = v4;
    objc_msgSendSuper2(v6 + 1, sel_setModalPresentationStyle_, receiver);
  }

  else
  {
    v6[2].receiver = super_class;
    v6[2].super_class = v4;
    objc_msgSendSuper2(v6 + 2, sel_setModalPresentationStyle_, receiver);
    ConversationControlsShareCardViewController.modalPresentationStyle.didset();
  }

  free(v2);
}

Swift::Void __swiftcall ConversationControlsShareCardViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  ConversationControlsShareCardViewController.updateSize()();
}

id ConversationControlsShareCardViewController.didTapCloseButton()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Did tap share card close button", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id ConversationControlsShareCardViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ConversationControlsShareCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v12);
  v7 = MEMORY[0x1E69E7D40];
  v8 = v5 + *((*MEMORY[0x1E69E7D40] & *v5) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *(v5 + *((*v7 & *v5) + class metadata base offset for UIHostingAutoResizableController + 24)) = a5;
  v9 = UIHostingController.init(rootView:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  *(swift_allocObject() + 16) = xmmword_1BC4BAA20;
  v10 = v9;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  lazy protocol witness table accessor for type ForegroundApp and conformance NSObject(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A], &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  return v10;
}

id specialized UIHostingAutoResizableController.init(rootView:canShowWhileLocked:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for ShareCardControlsView(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = MEMORY[0x1E69E7D40];
  v9 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + class metadata base offset for UIHostingAutoResizableController + 16);
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *(v2 + *((*v8 & *v2) + class metadata base offset for UIHostingAutoResizableController + 24)) = a2;
  outlined init with copy of ShareCardControlsView(a1, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = UIHostingController.init(rootView:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BAA20;
  v12 = v10;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v14[1] = v11;
  lazy protocol witness table accessor for type ForegroundApp and conformance NSObject(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A], &_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  outlined destroy of ShareCardControlsView(a1);
  return v12;
}

uint64_t outlined destroy of Activity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit8Activity_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TUConversationParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for TUConversationParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject);
  }

  return result;
}

double partial apply for closure #1 in ConversationControlsShareCardViewController.updateSize()(void *a1)
{
  v2 = *(v1 + 16);
  [a1 maximumDetentValue];
  if (result >= v2)
  {
    return v2;
  }

  return result;
}

uint64_t outlined init with copy of ShareCardControlsView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareCardControlsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ForegroundApp and conformance NSObject(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ShareCardControlsView(uint64_t a1)
{
  v2 = type metadata accessor for ShareCardControlsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VideoButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  VideoButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t VideoButtonViewModel.init(service:)(__int128 *a1)
{
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 16);
  return v1;
}

uint64_t VideoButtonViewModel.config.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVySbGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  if (v0[8])
  {
    v4 = v0[8];
  }

  else
  {
    VideoButtonViewModel.buttonStyle.getter(&v25 - v3);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      object = 0;
      countAndFlagsBits = 0;
    }

    else
    {
      v5 = [objc_opt_self() conversationKit];
      v29._object = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD00000000000001DLL;
      v6._object = 0x80000001BC505AC0;
      v7.value._countAndFlagsBits = 0x61737265766E6F43;
      v7.value._object = 0xEF74694B6E6F6974;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v29._countAndFlagsBits = 0;
      v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v29);
      object = v9._object;
      countAndFlagsBits = v9._countAndFlagsBits;
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v10 = OUTLINED_FUNCTION_6_71();
    v12 = v11(v10);
    v13 = [objc_opt_self() conversationKit];
    v14 = "IN_CALL_CONTROLS_CAMERA_LABEL";
    if (v12)
    {
      v14 = "DRAWER_CAMERA_ON_AX";
      v15 = 0xD000000000000014;
    }

    else
    {
      v15 = 0xD000000000000013;
    }

    v30._object = 0xE000000000000000;
    v16 = v14 | 0x8000000000000000;
    v17.value._countAndFlagsBits = 0x61737265766E6F43;
    v17.value._object = 0xEF74694B6E6F6974;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, v17, v13, v18, v30);

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v19 = OUTLINED_FUNCTION_6_71();
    v21 = v20(v19);
    v22 = v1[5];
    v23 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v22);
    (*(v23 + 224))(v22, v23);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();
    v28 = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCySbGMd);
    swift_allocObject();
    v4 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v1[8] = v4;
  }

  return v4;
}

Swift::Void __swiftcall VideoButtonViewModel.onAppear()()
{
  swift_beginAccess();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];

  VideoButtonViewModel.observeLocalVideoSupportedState()();
  VideoButtonViewModel.observeVideoState()();
  VideoButtonViewModel.updateAccessibilityLabel()();
}

Swift::Void __swiftcall VideoButtonViewModel.observeLocalVideoSupportedState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_5_86(v4);
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = OUTLINED_FUNCTION_182();
  v17[2] = v12(v11, v10);
  v13 = [objc_opt_self() mainRunLoop];
  v17[5] = v13;
  v14 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  type metadata accessor for NSRunLoop();
  v15 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9();
  outlined destroy of TapInteractionHandler?(v3, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v16, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v6 + 8))(v9, v15);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall VideoButtonViewModel.observeVideoState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_5_86(v4);
  v6 = v5;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = OUTLINED_FUNCTION_182();
  v17[2] = v12(v11, v10);
  v13 = [objc_opt_self() mainRunLoop];
  v17[5] = v13;
  v14 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  type metadata accessor for NSRunLoop();
  v15 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9();
  outlined destroy of TapInteractionHandler?(v3, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v16, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v6 + 8))(v9, v15);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t VideoButtonViewModel.updateAccessibilityLabel()()
{
  VideoButtonViewModel.config.getter();

  IconButtonConfig.state.getter();

  v0 = [objc_opt_self() conversationKit];
  v1 = "IN_CALL_CONTROLS_CAMERA_LABEL";
  if (v7)
  {
    v1 = "DRAWER_CAMERA_ON_AX";
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  v8._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4 = v1 | 0x8000000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, v3, v0, v5, v8);

  IconButtonConfig.accessibilityLabel.setter();
}

Swift::Void __swiftcall VideoButtonViewModel.didTap()()
{
  VideoButtonViewModel.config.getter();
  v1 = IconButtonConfig.state.modify();
  *v2 = !*v2;
  v1(v5, 0);

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);

  IconButtonConfig.state.getter();

  (*(v4 + 256))(v5[0], v3, v4);
  VideoButtonViewModel.updateAccessibilityLabel()();
}

uint64_t closure #1 in VideoButtonViewModel.observeLocalVideoSupportedState()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoButtonViewModel.config.getter();
    v3 = IconButtonConfig.enabled.getter() & 1;

    if (v1 != v3)
    {

      IconButtonConfig.enabled.setter();
    }
  }

  return result;
}

uint64_t closure #1 in VideoButtonViewModel.observeVideoState()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoButtonViewModel.config.getter();
    IconButtonConfig.state.getter();

    if (v1 != v3)
    {

      IconButtonConfig.state.setter();

      VideoButtonViewModel.updateAccessibilityLabel()();
    }
  }

  return result;
}

uint64_t VideoButtonViewModel.symbolName.getter()
{
  v0 = *MEMORY[0x1E69DDCF8];
  v4[64] = 0;
  v5[0] = 0x69662E6F65646976;
  v5[1] = 0xEA00000000006C6CLL;
  v5[2] = 3;
  v5[3] = v0;
  v6 = 0;
  v7 = 4;
  v8 = 0;
  v9 = 0;
  v10[0] = 0x69662E6F65646976;
  v10[1] = 0xEA00000000006C6CLL;
  v10[2] = 3;
  v10[3] = v0;
  v11 = 0;
  v12 = 4;
  v13 = 0;
  v14 = 0;
  v1 = v0;
  outlined init with copy of SymbolImageDescription(v5, v4);
  outlined destroy of SymbolImageDescription(v10);
  v2 = v5[0];

  outlined destroy of SymbolImageDescription(v5);
  return v2;
}

uint64_t VideoButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = type metadata accessor for IconButtonWidthRestriction();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  v19 = *(v11 - 8);
  v20 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    static IconButtonStyle.Defaults.phone.iconFont.getter();
    static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();
  }

  else
  {
    VideoButtonViewModel.symbolName.getter();
    static IconButtonStyle.Defaults.phone.iconFont.getter();
    static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();
  }

  v14 = type metadata accessor for _Glass();
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  static Color.white.getter();
  static Font.subheadline.getter();
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v16 = v21;
  v15 = v22;
  (*(v21 + 104))(v3, *MEMORY[0x1E6995BD0], v22);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v16 + 8))(v3, v15);
  outlined destroy of TapInteractionHandler?(v10, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of TapInteractionHandler?(v23, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v19 + 8))(v13, v20);
}

uint64_t closure #4 in VideoButtonViewModel.buttonStyle.getter(char a1)
{
  if (a1)
  {
    return 0x69662E6F65646976;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t closure #5 in VideoButtonViewModel.buttonStyle.getter(char a1)
{
  if (a1)
  {
    return static Color.green.getter();
  }

  v2 = [objc_opt_self() redColor];
  UIColor.apply(_:)();

  return Color.init(uiColor:)();
}

uint64_t closure #6 in VideoButtonViewModel.buttonStyle.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    static IconButtonStyle.SystemSymbol<A>.controlGlassOn.getter();
  }

  else
  {
    static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  }

  v3 = type metadata accessor for _Glass();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t closure #7 in VideoButtonViewModel.buttonStyle.getter(char a1)
{
  if (a1)
  {
    return static Color.green.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

uint64_t closure #1 in VideoButtonViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    VideoButtonViewModel.didTap()();
  }

  return result;
}

uint64_t VideoButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t VideoButtonViewModel.__deallocating_deinit()
{
  VideoButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized CKStateMachine.currentState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 104));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  result = outlined copy of CallScreening.State(v4, v5, v6, v7, v8, v9, v10);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return result;
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance <> CKStateMachine<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return CKStateMachine<>.update(with:)();
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreening.State()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreening.State;

  return CallScreening.State.update(with:)();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

unint64_t lazy protocol witness table accessor for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error()
{
  result = lazy protocol witness table cache variable for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error;
  if (!lazy protocol witness table cache variable for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit14CKStateMachineC5ErrorOyAA13CallScreeningO5StateO_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error);
  }

  return result;
}

uint64_t dispatch thunk of UpdatesWithCallStatus.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_87(a3);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return v10(a1, a2, a3);
}

uint64_t outlined copy of CallScreening.State(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  switch(a7 >> 61)
  {
    case 0uLL:
    case 1uLL:
      goto LABEL_6;
    case 2uLL:

      goto LABEL_6;
    case 3uLL:

      goto LABEL_6;
    case 4uLL:

      goto LABEL_6;
    case 5uLL:
      outlined copy of CallScreening.EndingAction(result, a2, a3);
LABEL_6:

      break;
    default:
      return result;
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20TUConversationMemberCG_SSs5NeverOTg506_sSo14d63C15ConversationKitE27existingAddressesLowercasedShySSGvgSSSo0A6E6CXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v39 = v44;
    v41 = specialized Set.startIndex.getter(v1);
    v42 = v3;
    v43 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v36 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v41;
        v8 = v43;
        v38 = v42;
        v9 = v1;
        specialized Set.subscript.getter(v41, v42, v43, v1);
        v11 = v10;
        v12 = [v10 handle];
        v13 = [v12 value];

        if (!v13)
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = MEMORY[0x1BFB209B0](v14);
        }

        v15 = outlined bridged method (ob) of @objc NSString._im_normalizedURI()(v13);
        if (!v16)
        {
          goto LABEL_39;
        }

        v17 = v15;
        v18 = v16;

        v19 = v39;
        v44 = v39;
        v20 = *(v39 + 16);
        if (v20 >= *(v39 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v19 = v44;
        }

        *(v19 + 16) = v20 + 1;
        v21 = v19 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v39 = v19;
        if (v37)
        {
          if (!v8)
          {
            goto LABEL_40;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v26 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo20TUConversationMemberC_GMd);
          v27 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v27(v40, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_41;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v1 = v9;
          v22 = 1 << *(v9 + 32);
          if (v7 >= v22)
          {
            goto LABEL_35;
          }

          v23 = v7 >> 6;
          v24 = *(v35 + 8 * (v7 >> 6));
          if (((v24 >> v7) & 1) == 0)
          {
            goto LABEL_36;
          }

          if (*(v9 + 36) != v38)
          {
            goto LABEL_37;
          }

          v25 = v24 & (-2 << (v7 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v26 = v36;
          }

          else
          {
            v28 = v23 << 6;
            v29 = v23 + 1;
            v30 = (v34 + 8 * v23);
            v26 = v36;
            while (v29 < (v22 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v7, v38, 0);
                v22 = __clz(__rbit64(v31)) + v28;
                goto LABEL_30;
              }
            }

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v7, v38, 0);
          }

LABEL_30:
          v33 = *(v9 + 36);
          v41 = v22;
          v42 = v33;
          v43 = 0;
        }

        if (v5 == v26)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v41, v42, v43);
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)()
{
  OUTLINED_FUNCTION_8_19();
  swift_getObjectType();

  specialized static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)();
}

id ConversationHUDDetailsViewController.__allocating_init(controlsManager:closeSideBarAction:)()
{
  OUTLINED_FUNCTION_8_19();
  v1 = objc_allocWithZone(v0);
  return ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.resetScroll(animated:)(Swift::Bool animated)
{
  v3 = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v12 = *(v10 + v11);
    if (v12)
    {
      v13 = v12;
      if ([(objc_class *)v13 numberOfSections]>= 1 && [(objc_class *)v13 numberOfItemsInSection:0]>= 1)
      {
        MEMORY[0x1BFB1A660](0, 0);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v5 + 8))(v9, v3);
        [(objc_class *)v13 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:animated];

        v13 = isa;
      }
    }
  }
}

void ConversationHUDDetailsViewController.refreshTitleCell()(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v2)
  {
    v4 = v2;
    a1();
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.controlsModeUpdated()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_11_62();
    OUTLINED_FUNCTION_10_54();
    v2 = *(v1 + 2344);
    v5 = v3;
    v4 = v2();
    InCallControlsCollectionViewController.mode.setter(v4);
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.layoutStyleUpdated()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_11_62();
    OUTLINED_FUNCTION_10_54();
    v2 = *(v1 + 2336);
    v4 = v3;
    v2(&v6);
    v5 = v6;
    InCallControlsCollectionViewController.gridLayoutStyle.setter(&v5);
  }
}

void ConversationHUDDetailsViewController.updated(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v2)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(a1, v4, &_s15ConversationKit8Activity_pSgMd);
    v3 = v2;
    InCallControlsCollectionViewController.activity.setter(v4);
  }
}

void ConversationHUDDetailsViewController.update(participant:broadcastingState:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_11_62();
    OUTLINED_FUNCTION_10_54();
    v3 = *(v2 + 704);
    v5 = v4;
    v6 = v3();
    InCallControlsCollectionViewController.conversation.setter(v6);

    v7 = *(v0 + v1);
    if (v7)
    {
      v8 = v7;
      InCallControlsCollectionViewController.update(participant:broadcastingState:)();
    }
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v3 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController) && (OUTLINED_FUNCTION_11_62(), OUTLINED_FUNCTION_10_54(), v5 = *(v4 + 704), v7 = v6, v8 = v5(), InCallControlsCollectionViewController.conversation.setter(v8), v7, (v9 = *(v2 + v3)) != 0))
  {
    v10 = v9;
    v11 = OUTLINED_FUNCTION_23_32();
    InCallControlsCollectionViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(v11, v12);
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void ConversationHUDDetailsViewController.update(participant:isKickingAvailable:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController) && (OUTLINED_FUNCTION_11_62(), OUTLINED_FUNCTION_10_54(), v3 = *(v2 + 704), v5 = v4, v6 = v3(), InCallControlsCollectionViewController.conversation.setter(v6), v5, (v7 = *(v0 + v1)) != 0))
  {
    v8 = v7;
    OUTLINED_FUNCTION_23_32();
    InCallControlsCollectionViewController.update(participant:isKickingAvailable:)();
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void ConversationHUDDetailsViewController.update(with:updateReason:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_11_62();
    OUTLINED_FUNCTION_10_54();
    v3 = *(v2 + 704);
    v5 = v4;
    v6 = v3();
    InCallControlsCollectionViewController.conversation.setter(v6);

    v7 = *(v0 + v1);
    if (v7)
    {
      v8 = v7;
      ConversationController.visibleParticipants.getter();
      InCallControlsCollectionViewController.update(with:updateReason:)();
    }
  }

  OUTLINED_FUNCTION_194_0();
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.updateRemoteAudioPaused(audioPaused:)(Swift::Bool audioPaused)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_remoteAudioPaused;
    OUTLINED_FUNCTION_3_12();
    *(v2 + v4) = audioPaused;
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.refreshToggleIgnoreLMIRequestsRowCell()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_11_62();
    OUTLINED_FUNCTION_10_54();
    v2 = *(v1 + 704);
    v5 = v3;
    v4 = v2();
    InCallControlsCollectionViewController.conversation.setter(v4);
    InCallControlsCollectionViewController.refreshToggleIgnoreLMIRequestsRowCell()();
  }
}

uint64_t key path getter for ConversationHUDDetailsViewController.detailsDelegate : ConversationHUDDetailsViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDDetailsViewController.detailsDelegate : ConversationHUDDetailsViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t ConversationHUDDetailsViewController.detailsDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationHUDDetailsViewController.detailsDelegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationHUDDetailsViewController.detailsDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsDelegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

uint64_t ConversationHUDDetailsViewController.isOnScreen.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_isOnScreen;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationHUDDetailsViewController.isOnScreen.setter(char a1)
{
  ConversationHUDDetailsViewController.isOnScreen.willset(a1);
  v3 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_isOnScreen;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for ConversationHUDDetailsViewController.isOnScreen : ConversationHUDDetailsViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

void ConversationHUDDetailsViewController.isOnScreen.willset(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v2)
  {
    v4 = v2;
    a1 &= 1u;
    InCallControlsCollectionViewController.isOnScreen.willset(a1);
    v5 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_isOnScreen;
    swift_beginAccess();
    v4[v5] = a1;
  }
}

void (*ConversationHUDDetailsViewController.isOnScreen.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_isOnScreen;
  v3[3] = v1;
  v3[4] = v4;
  swift_beginAccess();
  *(v3 + 40) = *(v1 + v4);
  return ConversationHUDDetailsViewController.isOnScreen.modify;
}

void ConversationHUDDetailsViewController.isOnScreen.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  ConversationHUDDetailsViewController.isOnScreen.willset(v4);
  *(v2 + v3) = v4;

  free(v1);
}

id ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)()
{
  OUTLINED_FUNCTION_8_19();
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_isOnScreen) = 0;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_linkShareCoordinator;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_featureFlag;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_peoplePickerViewController) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *(v1 + v6) = swift_allocObject();
  *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager) = v3;
  v7 = (v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_closeSideBarAction);
  *v7 = v2;
  v7[1] = v0;
  v11 = type metadata accessor for ConversationHUDDetailsViewController();
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v8, v9, v1, v11);
}

id ConversationHUDDetailsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDDetailsViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_isOnScreen) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_linkShareCoordinator;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_featureFlag;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_peoplePickerViewController) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_spamAlertBuilder;
  type metadata accessor for SpamAlertBuilder();
  *(v0 + v3) = swift_allocObject();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ConversationHUDDetailsViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  ConversationHUDDetailsViewController.setupRootView()();
}

void ConversationHUDDetailsViewController.setupRootView()()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = dynamic_cast_existential_1_conditional(v3);
    if (!v4)
    {
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *&v1[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager];
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2C0))();
  v7 = ConversationController.visibleParticipants.getter();
  v8 = (*((*v6 & *v5) + 0x928))(v7);
  (*((*v6 & *v5) + 0x920))(v23, v8);
  v24 = v23[0];
  v9 = objc_allocWithZone(type metadata accessor for InCallControlsCollectionViewController(0));
  v10 = v4;
  InCallControlsCollectionViewController.init(conversation:participants:mode:gridLayoutStyle:isLegacy:shareLinkEnabled:menuHostViewController:)();
  v12 = v11;
  v13 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_controlsManager;
  swift_beginAccess();
  v14 = *&v12[v13];
  *&v12[v13] = v5;
  v15 = v5;

  (*((*v6 & *v15) + 0x980))(v23);
  InCallControlsCollectionViewController.activity.setter(v23);
  v16 = &v12[OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_inCallControlsCollectionViewControllerDelegate];
  swift_beginAccess();
  *(v16 + 1) = &protocol witness table for ConversationHUDDetailsViewController;
  swift_unknownObjectWeakAssign();
  v17 = *&v1[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController];
  *&v1[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController] = v12;
  v18 = v12;

  v19 = v18;
  [v1 addChildViewController_];
  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v19 view];

  if (!v22)
  {
LABEL_12:
    __break(1u);
    return;
  }

  [v21 addSubview_];

  [v19 didMoveToParentViewController_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  Features.isICUIRedesignEnabled.getter();
}

uint64_t ConversationHUDDetailsViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v16.receiver = v3;
  v16.super_class = type metadata accessor for ConversationHUDDetailsViewController();
  objc_msgSendSuper2(&v16, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_linkShareCoordinator;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v7, v14, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  if (!v15)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  }

  outlined init with copy of IDSLookupManager(v14, v11);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 24))(v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.updateScrollableInsets(_:)(UIEdgeInsets a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController;
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (v5)
    {
      OUTLINED_FUNCTION_35_13(v5, sel_setContentInset_);
    }

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8)
      {
        OUTLINED_FUNCTION_35_13(v8, sel_setVerticalScrollIndicatorInsets_);
      }
    }
  }
}

char *ConversationHUDDetailsViewController.collectionView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_detailsViewController);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit38InCallControlsCollectionViewController_collectionView;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v1 = *&v1[v2];
    v3 = v1;
  }

  return v1;
}

id ConversationHUDDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ConversationHUDDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDDetailsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ConversationHUDDetailsViewController.isCaptioningEnabled(inCallControlsCollectionViewController:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v3 = [v2 isCaptioningEnabled];
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

void ConversationHUDDetailsViewController.inCallControlsCollectionViewController(_:didTap:from:)()
{
  OUTLINED_FUNCTION_29();
  v61 = v2;
  v62 = v0;
  v4 = v3;
  v60 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v12 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  type metadata accessor for InCallControlsCollectionViewController.Action(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v24 = (v23 - v22);
  outlined init with copy of InCallControlsCollectionViewController.Action(v4, v23 - v22, type metadata accessor for InCallControlsCollectionViewController.Action);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = OUTLINED_FUNCTION_4_90();
      v47(v46);
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.buzz(participantIdentifier:)();
      goto LABEL_19;
    case 2u:
      v42 = OUTLINED_FUNCTION_4_90();
      v43(v42);
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.approve(participantIdentifier:)();
      goto LABEL_19;
    case 3u:
      v44 = OUTLINED_FUNCTION_4_90();
      v45(v44);
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.dismiss(participantIdentifier:)();
LABEL_19:
      (*(v14 + 8))(v20, v24);
      break;
    case 4u:
      (*(v14 + 32))(v17, v24, v12);
      ConversationController.participant(with:)();
      if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
      {
        (*(v14 + 8))(v17, v12);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        outlined init with take of Participant(v1, v11);
        if (ConversationControlsManager.canKick(participantIdentifier:)())
        {
          ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)();
        }

        outlined destroy of Participant(v11);
        (*(v14 + 8))(v17, v12);
      }

      break;
    case 5u:
      [*&v62[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager] openMessagesButtonTapped];
      break;
    case 6u:
      ConversationHUDDetailsViewController.handleAddParticipant()();
      break;
    case 7u:
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.toggleMultiwayLayout()();
      break;
    case 8u:
      if (static Platform.current.getter() == 3)
      {
        v51 = v60;
        v52 = v61;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:)(v51, v52);
      break;
    case 9u:
      ConversationHUDDetailsViewController.handleToggleIgnoreLMIRequestsAction()();
      break;
    case 0xAu:
      if (v61)
      {
        objc_opt_self();
        v50 = swift_dynamicCastObjCClass();
        if (v50)
        {
          [*&v62[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager] joinButtonTappedWithButton_];
        }
      }

      break;
    case 0xBu:
      if (v61)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          [*&v62[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager] leaveButtonTappedWithButton_];
        }
      }

      break;
    case 0xCu:
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.toggleCaptionsButtonTapped()();
      break;
    case 0xDu:
      v48 = v62;
      (*((*MEMORY[0x1E69E7D40] & **&v62[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager]) + 0x2A0))();
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49 && [v49 isIncoming])
      {
        if (TUCall.isBlocked()())
        {
          specialized SpamModelable.unblockUnknown()();
        }

        else
        {
          v53 = *&v48[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_spamAlertBuilder];
          v54 = one-time initialization token for faceTime;

          swift_unknownObjectRetain();
          if (v54 != -1)
          {
            OUTLINED_FUNCTION_9_62();
          }

          OUTLINED_FUNCTION_3_0();
          v59 = specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(v55, v56, v57, v58, 0, v53);
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_259(v48, sel_presentViewController_animated_completion_, v59);
        }
      }

      goto LABEL_38;
    case 0xEu:
      (*((*MEMORY[0x1E69E7D40] & **&v62[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager]) + 0x2A0))();
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = v25;
        v27 = one-time initialization token for faceTime;

        swift_unknownObjectRetain();
        if (v27 != -1)
        {
          OUTLINED_FUNCTION_9_62();
        }

        v28 = static ReportSpamManager.faceTime;
        v65[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
        v65[4] = &protocol witness table for TUCall;
        v65[0] = v26;
        outlined init with copy of IDSLookupManager(v65, v64);
        OUTLINED_FUNCTION_77_0();
        v29 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v64, (v29 + 2));
        v29[8] = 0;
        v29[9] = 0;
        v29[7] = 0;
        outlined init with copy of IDSLookupManager(v65, v63);
        v30 = swift_allocObject();
        outlined init with take of TapInteractionHandler(v63, (v30 + 2));
        v30[7] = v28;
        v30[8] = 0;
        v30[9] = 0;
        v30[10] = 0;
        OUTLINED_FUNCTION_24();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        OUTLINED_FUNCTION_24();
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;

        _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F122of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(partial apply for closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:), v29, _s15ConversationKit16SpamAlertBuilderC19buildReportAndBlock3for4with24presentingViewController10didDismissSo07UIAlertN0CAA0C9Modelable_p_AA0gC7ManagerCSo06UIViewN0CSgyycSgtFySbcfU0_TA_1, v30, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v31);
        v34 = v33;

        [0 fetchSharing];

        __swift_destroy_boxed_opaque_existential_1(v65);
        if (TUCall.isGroupFaceTimeWithUnknownInitiator.getter())
        {
          v35 = v62;
          swift_unknownObjectRetain();

          OUTLINED_FUNCTION_3_0();
          v40 = specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(v36, v37, v38, v39);
          swift_unknownObjectRelease();

          v34 = v40;
        }

        else
        {
          v35 = v62;
        }

        OUTLINED_FUNCTION_259(v35, sel_presentViewController_animated_completion_, v34);
      }

LABEL_38:
      swift_unknownObjectRelease();
      break;
    default:
      outlined init with take of TapInteractionHandler(v24, v65);
      OUTLINED_FUNCTION_17_43();
      ConversationControlsManager.viewActivity(_:)();
      __swift_destroy_boxed_opaque_existential_1(v65);
      break;
  }

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.handleAddParticipant()()
{
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & **&v0[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager]) + 0x2C0))();
  if (v2)
  {
    v3 = v2;
    _s15ConversationKit0A24HUDDetailsViewControllerC022generateFTPeoplePickerdE012conversation8delegateSo012UINavigationE0CSo14TUConversationC_AA06PeoplehdE8Delegate_ptFZTf4nen_nAC_Tt1g5Tm();
    v5 = v4;
    v6 = [v4 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (specialized Array.count.getter(v7))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000001) == 0, v7);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v7);
      }

      else
      {
        v8 = *(v7 + 32);
      }

      v9 = v8;

      type metadata accessor for PeoplePickerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = 0;
LABEL_13:
    v26 = *&v1[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_peoplePickerViewController];
    *&v1[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_peoplePickerViewController] = v10;

    type metadata accessor for ConversationHUDDetailsViewController();
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v27 = v1;
    @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
    v37 = v28;
    v29 = [v5 navigationItem];
    [v29 setRightBarButtonItem_];

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v30 = type metadata accessor for Logger();
    v31 = OUTLINED_FUNCTION_8_49(v30, &static Logger.conversationControls);
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_33();
      *v33 = 0;
      _os_log_impl(&dword_1BBC58000, v31, v32, "Present peoplePicker to add participant", v33, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_259(v27, sel_presentViewController_animated_completion_, v5);
    goto LABEL_18;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = type metadata accessor for Logger();
  v36 = OUTLINED_FUNCTION_8_49(v11, &static Logger.conversationControls);
  v12 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_29(v12, v13, v14, v15, v16, v17, v18, v19, v34, v36))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v20, v21, "Unable to addParticipant, no conversation.", v22, v23, v24, v25, v35, v37);
    OUTLINED_FUNCTION_27();
  }

LABEL_18:
}

void ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)()
{
  OUTLINED_FUNCTION_29();
  v43 = v0;
  v39 = v1;
  v2 = type metadata accessor for Participant(0);
  v42 = *(v2 - 8);
  v41 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_14_2();
  v7.super.isa = v5;
  OUTLINED_FUNCTION_17_0(v6 + 5, 0x80000001BC505C50, 0x61737265766E6F43, v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v10 = v44;
  v11 = v45;
  v12 = v46;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  v13 = String.init(format:_:)();
  v15 = v14;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v38 = v4;
  v16 = [v4 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v17.super.isa = v16;
  v18 = OUTLINED_FUNCTION_17_0(0xD00000000000001ELL, 0x80000001BC505C80, 0x61737265766E6F43, 0xEF74694B6E6F6974, v17);
  v20 = v19;

  v21 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v18, v20, v13, v15, 1);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v22 = [v4 &off_1E7FE9588];
  OUTLINED_FUNCTION_40_0();
  v23.super.isa = v22;
  OUTLINED_FUNCTION_17_0(0xD000000000000032, 0x80000001BC505CA0, 0x61737265766E6F43, 0xEF74694B6E6F6974, v23);

  OUTLINED_FUNCTION_20();
  v24 = swift_allocObject();
  v25 = v43;
  swift_unknownObjectWeakInit();
  v26 = v40;
  outlined init with copy of InCallControlsCollectionViewController.Action(v39, v40, type metadata accessor for Participant);
  v27 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  outlined init with take of Participant(v26, v28 + v27);
  v29 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v30 = [v38 conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_14_2();
  v31.super.isa = v30;
  OUTLINED_FUNCTION_17_0(v32, v33, v34, v35, v31);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v21 addAction_];
  [v21 addAction_];
  OUTLINED_FUNCTION_259(v25, sel_presentViewController_animated_completion_, v21);

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:)(UIViewController_optional *hostingViewController, UIView_optional *sourceView)
{
  OUTLINED_FUNCTION_29();
  v28 = v3;
  v29 = v4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  v30 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  (*(v20 + 104))(v2, *MEMORY[0x1E69E7F88], v18);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v20 + 8))(v2, v18);
  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_37_0();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v28;
  v24[4] = v29;
  v31[4] = partial apply for closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:);
  v31[5] = v24;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = thunk for @escaping @callee_guaranteed () -> ();
  v31[3] = &block_descriptor_48;
  v25 = _Block_copy(v31);
  v26 = v29;

  v27 = v28;
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v17, v11, v25);
  _Block_release(v25);

  (*(v7 + 8))(v11, v5);
  (*(v13 + 8))(v17, v30);

  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.handleToggleIgnoreLMIRequestsAction()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager)) + 0x2C0))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ignoreLMIRequests];
    v4 = [objc_opt_self() sharedInstance];
    v22 = [v4 conversationManager];

    [v22 setIgnoreLMIRequests:v3 ^ 1 forConversation:v2];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_8_49(v5, &static Logger.conversationControls);
    v6 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_29(v6, v7, v8, v9, v10, v11, v12, v13, v20, v23))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v14, v15, "Unable to toggle mute join request state, no conversation.", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_27();
    }
  }
}

void specialized SpamModelable.unblockUnknown()()
{
  TUCall.unknownHandles.getter();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v2 + 1;
    [*(v1 + 8 * v2 + 32) unblock];
    v2 = v4;
  }
}

{
  RecentsCallItem.unknownHandles.getter();
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 16);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v2 + 1;
    [*(v1 + 8 * v2 + 32) unblock];
    v2 = v4;
  }
}

void closure #1 in ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "ConversationHUDDetailsViewController: did tap on kick from the kick participant alert", v3, 2u);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager);

    ConversationControlsManager.kick(participant:)();
  }
}

void closure #2 in ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)()
{
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, &static Logger.conversationControls);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "ConversationHUDDetailsViewController: did tap on cancel from the kick participant alert", v3, 2u);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t TUConversation.existingAddressesLowercased.getter()
{
  v1 = [v0 remoteMembers];
  OUTLINED_FUNCTION_30_20();
  type metadata accessor for NSObject(v2, v3);
  OUTLINED_FUNCTION_30_20();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v4, v5);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20TUConversationMemberCG_SSs5NeverOTg506_sSo14d63C15ConversationKitE27existingAddressesLowercasedShySSGvgSSSo0A6E6CXEfU_Tf1cn_n(v6);
  v8 = v7;

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v8);
}

uint64_t closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:)(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager);
    v8 = swift_allocObject();
    v8[2] = v6;
    v8[3] = a2;
    v8[4] = a3;
    v9 = a3;
    v10 = v7;
    v11 = v6;
    v12 = a2;
    ConversationController.shareableLink(completionHandler:)(partial apply for closure #1 in closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:), v8);
  }

  return result;
}

void closure #1 in closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, &static Logger.conversationControls);
    v28 = a2;
    v39 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      aBlock[6] = a2;
      v32 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1BBC58000, v39, v29, "Couldn't look up a link for the active conversation, error: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1BFB23DF0](v31, -1, -1);
      MEMORY[0x1BFB23DF0](v30, -1, -1);
    }

    else
    {
      v36 = v39;
    }
  }

  else
  {
    v38 = v16;
    v39 = v15;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v19 = a1;
    v37 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = v19;
    v20[4] = a4;
    v20[5] = a5;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_47;
    v21 = _Block_copy(aBlock);
    v22 = a5;
    v23 = v19;
    v24 = a3;
    v25 = a4;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v37;
    MEMORY[0x1BFB215C0](0, v18, v13, v21);
    _Block_release(v21);

    (*(v11 + 8))(v13, v10);
    (*(v38 + 8))(v18, v39);
  }
}

id closure #1 in closure #1 in closure #1 in ConversationHUDDetailsViewController.handleShareLinkAction(hostingViewController:sourceView:)(void *a1, void *a2, void *a3, void *a4)
{
  v22 = a2;
  v23 = 0;
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      v8 = a3;
      v9 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = a1;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = a3;
  v12 = a2;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v14 = type metadata accessor for LinkShareCoordinator();
  objc_allocWithZone(v14);
  v15 = a4;
  v24 = v14;
  v25 = &protocol witness table for LinkShareCoordinator;
  v22 = LinkShareCoordinator.init(type:hostViewController:originatingView:)();
  v16 = OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_linkShareCoordinator;
  swift_beginAccess();
  outlined assign with take of LinkShareCoordinatorProtocol?(&v22, a1 + v16);
  swift_endAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1 + v16, &v22, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  if (!v24)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v22, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  }

  outlined init with copy of IDSLookupManager(&v22, v19);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v22, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  v17 = v20;
  v18 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v18 + 16))(TPNumberPadCharacter.rawValue.getter, 0, v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)()
{
  OUTLINED_FUNCTION_29();
  HIDWORD(v94) = v0;
  v2 = v1;
  v4 = v3;
  v99 = v6;
  v100 = v5;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v92 = v8;
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v91 = v10 - v9;
  v102 = MEMORY[0x1E69E7CD0];
  v103 = MEMORY[0x1E69E7CD0];
  if (one-time initialization token for peoplePicker != -1)
  {
LABEL_43:
    swift_once();
  }

  v95 = v2;
  v96 = v4;
  v11 = type metadata accessor for Logger();
  v2 = OUTLINED_FUNCTION_8_49(v11, static Logger.peoplePicker);
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v4))
  {
    v12 = OUTLINED_FUNCTION_33();
    *v12 = 0;
    _os_log_impl(&dword_1BBC58000, v2, v4, "Adding people to conversation on active call.", v12, 2u);
    OUTLINED_FUNCTION_27();
  }

  v13 = specialized Array.count.getter(v100);
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = v100 & 0xC000000000000001;
    v98 = v100 & 0xFFFFFFFFFFFFFF8;
    v97 = xmmword_1BC4BA940;
    while (1)
    {
      if (v16)
      {
        v17 = MEMORY[0x1BFB22010](v15, v100);
      }

      else
      {
        if (v15 >= *(v98 + 16))
        {
          goto LABEL_42;
        }

        v17 = *(v100 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v2 = TUConversation.existingAddressesLowercased.getter();
      v20 = OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle;
      v21 = [*&v18[OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle] value];
      if (!v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = MEMORY[0x1BFB209B0](v22);
      }

      v23 = [v21 _im_normalizedURIString];

      if (!v23)
      {
        break;
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v4 = specialized Set.contains(_:)(v24, v26, v2);

      if (v4)
      {
      }

      else
      {
        v27 = *&v18[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address];
        v28 = *&v18[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8];

        v29 = MEMORY[0x1BFB209B0](v27, v28);

        v4 = TUCopyIDSCanonicalAddressForDestinationID();

        if (v4 && (v30 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v32 = v31, v4, v4 = [objc_opt_self() sharedManager], __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd), v33 = swift_allocObject(), *(v33 + 16) = v97, *(v33 + 32) = v30, *(v33 + 40) = v32, isa = Array._bridgeToObjectiveC()().super.isa, , LODWORD(v32) = objc_msgSend(v4, sel_isFaceTimeMultiwayAvailableForAnyDestinationInDestinations_, isa), v4, isa, v32))
        {
          v4 = *&v18[v20];
          v35 = objc_allocWithZone(MEMORY[0x1E69D8B80]);
          v36 = @nonobjc TUConversationMember.init(handle:nickname:)(v4, 0, 0);
          v2 = &v103;
          specialized Set._Variant.insert(_:)(&v101, v36, v37, v38, v39, v40, v41, v42, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103);
        }

        else
        {
          v43 = TUNormalizedHandleForTUHandle();
          if (!v43)
          {
            v43 = *&v18[v20];
          }

          v2 = &v102;
          specialized Set._Variant.insert(_:)(&v101, v43);
        }
      }

      ++v15;
      if (v19 == v14)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    if ((v94 & 0x100000000) != 0)
    {
      v44 = [v99 otherInvitedHandles];
      OUTLINED_FUNCTION_30_20();
      type metadata accessor for NSObject(v45, v46);
      OUTLINED_FUNCTION_30_20();
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(v47, v48);
      v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = specialized Collection.first.getter(v49);

      if (v50)
      {
        v51 = [objc_allocWithZone(MEMORY[0x1E69D8B80]) initWithHandle_];
        v52 = v51;
        [v51 setIsOtherInvitedHandle_];
        specialized Set._Variant.insert(_:)(&v101, v52, v53, v54, v55, v56, v57, v58, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103);
      }
    }

    v59 = v103;
    v60 = v95;
    if (specialized Set.count.getter(v103) > 0 || specialized Set.count.getter(v102) >= 1)
    {
      if (v96)
      {
        ObjectType = swift_getObjectType();
        v62 = *(v95 + 120);
        swift_unknownObjectRetain();
        v63 = OUTLINED_FUNCTION_20_31();
        if ((v62(v63) & 1) == 0)
        {
          v69 = OUTLINED_FUNCTION_20_31();
          v71 = v70(v69);
          if (v71)
          {
            v72 = v71;
            v73 = objc_allocWithZone(MEMORY[0x1E69D8B80]);
            v74 = v72;
            v75 = @nonobjc TUConversationMember.init(handle:nickname:)(v74, 0, 0);
            specialized Set._Variant.insert(_:)(&v101, v75, v76, v77, v78, v79, v80, v81, v91, v92, v93, v94, v95, v96, v97, *(&v97 + 1), v98, v99, v100, v101, v102, v103);

            v59 = v103;
          }

          v82 = v102;
          v83 = objc_allocWithZone(MEMORY[0x1E69D8C10]);

          v84 = @nonobjc TUJoinConversationRequest.init(remoteMembers:otherInvitedHandles:originatingUIType:)(v59, v82, 21);
          v85 = OUTLINED_FUNCTION_20_31();
          [v84 setVideoEnabled_];
          (*(v60 + 232))(ObjectType, v60);
          v87 = UUID._bridgeToObjectiveC()().super.isa;
          (*(v92 + 8))(v91, v93);
          [v84 setUUID_];

          v88 = [objc_opt_self() sharedInstance];
          v89 = [v88 joinConversationWithConversationRequest_];

          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_30_0();
          return;
        }

        swift_unknownObjectRelease();
      }

      v64 = [objc_opt_self() sharedInstance];
      v65 = [v64 conversationManager];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
      v66 = Set._bridgeToObjectiveC()().super.isa;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
      [v65 addRemoteMembers:v66 otherInvitedHandles:Set._bridgeToObjectiveC()().super.isa toConversation:v99];

      OUTLINED_FUNCTION_30_0();

      return;
    }

    OUTLINED_FUNCTION_30_0();
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC15ConversationKit36ConversationHUDDetailsViewController_controlsManager];
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0))();
  if (v6)
  {
    v24 = v6;
    (*((*v5 & *v4) + 0x2A0))();
    addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)();
    swift_unknownObjectRelease();
    [v3 dismissPeoplePicker];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = type metadata accessor for Logger();
    v25 = OUTLINED_FUNCTION_8_49(v7, &static Logger.conversationControls);
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_15_29(v8, v9, v10, v11, v12, v13, v14, v15, v22, v25))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v16, v17, "Unable to add remote members, no conversation.", v18, v19, v20, v21, v23, v24);
      OUTLINED_FUNCTION_27();
    }
  }
}

Swift::Void __swiftcall ConversationHUDDetailsViewController.dismissPeoplePicker()()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 window];

    if (v4)
    {
      v5 = MEMORY[0x1BFB209B0](0x676E69646E69625FLL, 0xED0000726579614CLL);
      v6 = [v4 valueForKey_];

      if (v6)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14[0] = v12;
      v14[1] = v13;
      if (*(&v13 + 1))
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer);
        if (swift_dynamicCast())
        {
          [v11 setTimeOffset_];
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_sypSgMd);
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = type metadata accessor for Logger();
    v8 = OUTLINED_FUNCTION_8_49(v7, &static Logger.conversationControls);
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_33();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Dismiss peoplePicker", v10, 2u);
      OUTLINED_FUNCTION_27();
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

id @nonobjc TUConversationMember.init(handle:nickname:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithHandle:a1 nickname:v5];

  return v6;
}

id @nonobjc TUJoinConversationRequest.init(remoteMembers:otherInvitedHandles:originatingUIType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  isa = Set._bridgeToObjectiveC()().super.isa;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
  v6 = Set._bridgeToObjectiveC()().super.isa;

  v7 = [v3 initWithRemoteMembers:isa otherInvitedHandles:v6 originatingUIType:a3];

  return v7;
}

uint64_t outlined bridged method (ob) of @objc NSString._im_normalizedURI()(void *a1)
{
  v2 = [a1 _im_normalizedURIString];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void _s15ConversationKit0A24HUDDetailsViewControllerC022generateFTPeoplePickerdE012conversation8delegateSo012UINavigationE0CSo14TUConversationC_AA06PeoplehdE8Delegate_ptFZTf4nen_nAC_Tt1g5Tm()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  TUConversation.existingAddressesLowercased.getter();
  v5 = objc_allocWithZone(type metadata accessor for PeoplePickerViewController());
  v6 = v3;
  OUTLINED_FUNCTION_6_72();
  v8 = v7;
  v9 = ((*MEMORY[0x1E69E7D40] & *v7) + 888);
  v10 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x378);
  v11 = swift_unknownObjectRetain();
  v10(v11, v1);
  v12 = v8;
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    v15 = objc_opt_self();
    OUTLINED_FUNCTION_27_27([v15 systemGreenColor]);

    v16 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v17 = [v16 navigationBar];
    OUTLINED_FUNCTION_36_19([v15 systemGreenColor]);

    v18 = v16;
    v19 = OUTLINED_FUNCTION_37_21();
    v20 = static PeoplePickerViewController.preferredModalPresentationStyle(trailCollection:)(v19);

    [v18 setModalPresentationStyle_];
    v21 = [v18 sheetPresentationController];
    v22 = v12;
    if (v21)
    {
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      OUTLINED_FUNCTION_37_0();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BAC30;
      *(v24 + 32) = [objc_opt_self() largeDetent];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 setDetents_];

      v26 = OUTLINED_FUNCTION_37_21();
      v27 = [v26 userInterfaceIdiom];

      [v23 setPrefersGrabberVisible_];
      v22 = v23;
    }

    v28 = [v18 presentationController];
    if (v28)
    {
      UIPresentationController.traitOverrides.getter();
      UIMutableTraits.userInterfaceStyle.setter();
      UIPresentationController.traitOverrides.setter();
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ConversationHUDDetailsViewController.generateFTPeoplePickerViewController(conversation:delegate:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  TUConversation.existingAddressesLowercased.getter();
  v5 = objc_allocWithZone(type metadata accessor for PeoplePickerViewController());
  v6 = v3;
  OUTLINED_FUNCTION_6_72();
  v8 = v7;
  v9 = ((*MEMORY[0x1E69E7D40] & *v7) + 888);
  v10 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x378);
  v11 = swift_unknownObjectRetain();
  v10(v11, v1);
  v12 = v8;
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    v15 = objc_opt_self();
    OUTLINED_FUNCTION_27_27([v15 systemGreenColor]);

    v16 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    v17 = [v16 navigationBar];
    OUTLINED_FUNCTION_36_19([v15 systemGreenColor]);

    v18 = v16;
    v19 = OUTLINED_FUNCTION_37_21();
    v20 = static PeoplePickerViewController.preferredModalPresentationStyle(trailCollection:)(v19);

    [v18 setModalPresentationStyle_];
    v21 = [v18 sheetPresentationController];
    v22 = v12;
    if (v21)
    {
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      OUTLINED_FUNCTION_37_0();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC4BAC30;
      *(v24 + 32) = [objc_opt_self() largeDetent];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v23 setDetents_];

      v26 = OUTLINED_FUNCTION_37_21();
      v27 = [v26 userInterfaceIdiom];

      [v23 setPrefersGrabberVisible_];
      v22 = v23;
    }

    v28 = [v18 presentationController];
    if (v28)
    {
      UIPresentationController.traitOverrides.getter();
      UIMutableTraits.userInterfaceStyle.setter();
      UIPresentationController.traitOverrides.setter();
    }

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized SpamAlertBuilder.buildBlockAlert(for:with:presentingViewController:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TUCall.isGroupFaceTimeWithAllUnknownContacts.getter();
  if (v12)
  {
    v13 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    OUTLINED_FUNCTION_15_37(v13, &protocol witness table for TUCall, v36, v39, *(&v39 + 1), v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_77_0();
    v14 = swift_allocObject();
    outlined init with take of TapInteractionHandler(&v43, (v14 + 2));
    v14[7] = a3;
    v14[8] = a4;
    v14[9] = a5;
    OUTLINED_FUNCTION_24();
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    OUTLINED_FUNCTION_24();
    v16 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_88(v16);
    v18 = a1;
    OUTLINED_FUNCTION_31_22();
    v19 = _s15ConversationKit16SpamAlertBuilderC020blockAllParticipantsD033_1968E5514C13C55B0B1DD71C8D317F122of0F7Handler06cancelS0011preparationS0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA2MtFTf4ennnn_nSo6TUCallC_Ttg5();
  }

  else
  {
    if (!TUCall.isGroupFaceTimeWithSomeUnknownContacts.getter())
    {
      v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      OUTLINED_FUNCTION_15_37(v26, &protocol witness table for TUCall, v36, v39, *(&v39 + 1), v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_77_0();
      v27 = swift_allocObject();
      outlined init with take of TapInteractionHandler(&v43, (v27 + 2));
      v27[7] = a3;
      v27[8] = a4;
      v27[9] = a5;
      outlined init with copy of IDSLookupManager(&v47, &v39);
      v28 = swift_allocObject();
      outlined init with take of TapInteractionHandler(&v39, (v28 + 2));
      v28[7] = a2;
      v28[8] = a3;
      v28[9] = a4;
      v28[10] = a5;
      OUTLINED_FUNCTION_24();
      v29 = swift_allocObject();
      *(v29 + 16) = a4;
      *(v29 + 24) = a5;
      OUTLINED_FUNCTION_24();
      v30 = swift_allocObject();
      v31 = OUTLINED_FUNCTION_5_88(v30);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
      v32 = a1;
      v33 = v31;

      v38 = a6;
      _s15ConversationKit16SpamAlertBuilderC014reportAndBlockD033_1968E5514C13C55B0B1DD71C8D317F122of12blockHandler0sg6ReportT006cancelT0011preparationT0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA3NtFTf4ennnnn_nSo6TUCallC_Ttg5(closure #1 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)partial apply, v27, closure #2 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)partial apply, v28, closure #3 in SpamAlertBuilder.buildReportAndBlock(for:with:presentingViewController:didDismiss:)partial apply, v29);
      v25 = v34;

      [v33 fetchSharing];
      goto LABEL_7;
    }

    v20 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
    OUTLINED_FUNCTION_15_37(v20, &protocol witness table for TUCall, v36, v39, *(&v39 + 1), v40, v41, v42, v43, *(&v43 + 1), v44, v45, v46, v47, v48, v49, v50, v51);
    OUTLINED_FUNCTION_77_0();
    v21 = swift_allocObject();
    outlined init with take of TapInteractionHandler(&v43, (v21 + 2));
    v21[7] = a3;
    v21[8] = a4;
    v21[9] = a5;
    OUTLINED_FUNCTION_24();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    OUTLINED_FUNCTION_24();
    v23 = swift_allocObject();
    v17 = OUTLINED_FUNCTION_5_88(v23);
    v24 = a1;
    OUTLINED_FUNCTION_31_22();
    v19 = _s15ConversationKit16SpamAlertBuilderC024blockUnknownParticipantsD033_1968E5514C13C55B0B1DD71C8D317F122of0F7Handler06cancelS0011preparationS0So17UIAlertControllerCAA0C9Modelable_p_ySbcSgA2MtFTf4ennnn_nSo6TUCallC_Ttg5();
  }

  v25 = v19;

  [v17 fetchSharing];
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(&v47);
  return v25;
}

id specialized SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  v15[4] = &protocol witness table for TUCall;
  v15[0] = a1;
  outlined init with copy of IDSLookupManager(v15, v14);
  v8 = swift_allocObject();
  outlined init with take of TapInteractionHandler(v14, (v8 + 2));
  v8[7] = a2;
  v8[8] = a3;
  v8[9] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
  v11 = a1;

  v12 = specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(v11, partial apply for closure #1 in SpamAlertBuilder.buildReportGroupInitiatorAlert(for:with:didDismiss:), v8, partial apply for closure #3 in SpamAlertBuilder.buildReportAndBlockGroupInitiatorAlert(for:with:presentingViewController:didDismiss:), v9);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t outlined init with copy of InCallControlsCollectionViewController.Action(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void partial apply for closure #1 in ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)()
{
  type metadata accessor for Participant(0);

  closure #1 in ConversationHUDDetailsViewController.showKickParticipantAlert(toKick:)();
}

uint64_t outlined assign with take of LinkShareCoordinatorProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id specialized SpamAlertBuilder.reportGroupInitiatorAlert(of:reportHandler:cancelHandler:preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_opt_self();
  v7 = [v6 conversationKit];
  v37._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x61737265766E6F43;
  v8.value._object = 0xEF74694B6E6F6974;
  v9._countAndFlagsBits = 0xD00000000000002DLL;
  v9._object = 0x80000001BC4FF820;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA940;
  v12 = specialized SpamModelable.formattedInitiatorHandle.getter();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (v14)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  v17 = String.init(format:_:)();
  v19 = v18;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
  v20 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v17, v19, 0, 0, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
  v21 = [v6 conversationKit];
  v38._object = 0xE000000000000000;
  v22._object = 0x80000001BC4F9CC0;
  v22._countAndFlagsBits = 0xD00000000000001BLL;
  v23.value._countAndFlagsBits = 0x61737265766E6F43;
  v23.value._object = 0xEF74694B6E6F6974;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v38);

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a4);
  v26 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  v27 = [v6 conversationKit];
  v39._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000034;
  v28._object = 0x80000001BC4FF850;
  v29.value._countAndFlagsBits = 0x61737265766E6F43;
  v29.value._object = 0xEF74694B6E6F6974;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v39);

  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  *(v31 + 24) = a3;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  v32 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
  [v20 addAction_];
  [v20 addAction_];

  return v20;
}

uint64_t CallScreening.StateTransitioner.transition(state:transition:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v40 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  switch(v13 >> 61)
  {
    case 1uLL:
      v42 = a2;
      if (a4 >> 5 == 1)
      {
        v36 = v5[3];
        v18 = v5[4];
        v8 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v37 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();
        OUTLINED_FUNCTION_3_100();

        v20 = 0;
        v23 = 0x6000000000000000;
        v10 = v6;
        v22 = v37;
        v19 = v36;
      }

      else
      {
        if (a4 >> 5)
        {
          goto LABEL_21;
        }

        v18 = *v5;
        v10 = v5[1];
        v8 = v5[2];
        v19 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v20 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();
        outlined copy of CallScreening.StateTransition(v42, v19, a4);

        v22 = v42;
        v23 = 0x4000000000000000;
      }

      goto LABEL_25;
    case 2uLL:
      v24 = a4 >> 5;
      if (v24 == 1)
      {
        v19 = v5[3];
        v18 = v5[4];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v38 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();

        v8 = v40;

        v22 = v38;
        v20 = 0;
        v23 = 0x6000000000000000;
        goto LABEL_25;
      }

      v16 = v24 == 4;
LABEL_11:
      v42 = a2;
      v25 = v16 && a2 == 1;
      if (v25 && !a3 && a4 == 128)
      {
        v10 = v5[1];
        v8 = v5[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v26 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();

        v22 = v26;
        v19 = 0;
        v18 = 0;
        v20 = 0;
        v23 = 0x2000000000000000;
        goto LABEL_25;
      }

      goto LABEL_21;
    case 3uLL:
      v17 = a4 >> 5;
      if (v17 == 2)
      {
        v34 = v5[5];
        v19 = v5[6];
        v18 = v5[7];
        v20 = v5[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v35 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();
        v23 = v35 | 0x8000000000000000;

        v22 = v34;
        v10 = v9;
      }

      else
      {
        v42 = a2;
        if (v17 != 3)
        {
LABEL_21:
          v28 = v10;
          v30 = v8;
          v31 = v11;
          v39 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14CKStateMachineC5ErrorOyAA13CallScreeningO5StateO_GMd);
          lazy protocol witness table accessor for type CKStateMachine<CallScreening.State>.Error and conformance CKStateMachine<A>.Error();
          swift_allocError();
          *v32 = v9;
          *(v32 + 8) = v30;
          *(v32 + 16) = v28;
          *(v32 + 24) = v40;
          *(v32 + 32) = v31;
          *(v32 + 40) = v12;
          v33 = v42;
          *(v32 + 48) = v39;
          *(v32 + 56) = v33;
          *(v32 + 64) = a3;
          *(v32 + 72) = a4;
          *(v32 + 73) = 2;
          swift_willThrow();
          outlined copy of CallScreening.StateTransition(v33, a3, a4);
          return outlined init with copy of CallScreening.State(a1, v41);
        }

LABEL_20:
        v18 = v5[9];
        v20 = v5[10];
        v8 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
        v27 = OUTLINED_FUNCTION_5_3();
        OUTLINED_FUNCTION_1_110();
        OUTLINED_FUNCTION_3_100();

        v23 = 0xA000000000000000;
        v10 = v6;
        v22 = a4 & 0x1F;
        v19 = v27;
      }

LABEL_25:
      *a5 = v10;
      a5[1] = v8;
      a5[2] = v22;
      a5[3] = v19;
      a5[4] = v18;
      a5[5] = v20;
      a5[6] = v23;
      return result;
    case 4uLL:
      v42 = a2;
      if ((a4 & 0xE0) == 0x60)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    default:
      v16 = (a4 & 0xE0) == 128;
      goto LABEL_11;
  }
}

uint64_t outlined copy of CallScreening.StateTransition(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
    case 2:

      break;
    case 3:
      result = outlined copy of CallScreening.EndingAction(result, a2, a3 & 0x1F);
      break;
    default:
      return result;
  }

  return result;
}

__n128 CallScreening.StateTransitioner.init(trackingServce:canScreenCall:onEnterAnsweringState:onEnterScreeningState:onExitScreeningState:endCall:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

uint64_t getEnumTagSinglePayload for CallScreening.StateTransitioner(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CallScreening.StateTransitioner(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id UIBlurEffect.init(privateStyle:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() effectWithStyle_];

  return v1;
}

uint64_t CallCenterCallProvider.providerType.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return CallProviderType.init(_:)(v3, a2);
}

uint64_t CallProviderType.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isFaceTimeProvider])
  {

    v4 = MEMORY[0x1E6995E50];
  }

  else if ([a1 isTelephonyProvider])
  {

    v4 = MEMORY[0x1E6995E60];
  }

  else if ([a1 isSuperboxProvider])
  {

    v4 = MEMORY[0x1E6995E58];
  }

  else
  {
    v5 = outlined bridged method (pb) of @objc FBSDisplayLayoutElement.bundleIdentifier.getter(a1);
    if (v6)
    {
      v7 = v5;
      v8 = v6;

      *a2 = v7;
      a2[1] = v8;
      v4 = MEMORY[0x1E6995E40];
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.conversationKit);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&dword_1BBC58000, v11, v12, "Returning Unknown provider: %@", v13, 0xCu);
        outlined destroy of NSObject?(v14);
        MEMORY[0x1BFB23DF0](v14, -1, -1);
        MEMORY[0x1BFB23DF0](v13, -1, -1);
        v10 = v11;
        v11 = v15;
      }

      v4 = MEMORY[0x1E6995E48];
    }
  }

  v16 = *v4;
  v17 = type metadata accessor for CallProviderType();
  v18 = *(*(v17 - 8) + 104);

  return v18(a2, v16, v17);
}

id CallCenterCallProvider.prioritizedSenderIdentitiesCount.getter(void *a1)
{
  v1 = [a1 prioritizedSenderIdentities];
  v2 = [v1 count];

  return v2;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo18TUConversationLinkCG_15ConversationKit0fE0Vs5NeverOTg504_s15f12Kit21Recentse37ControllerC12refreshLinksyyFyShySo014d9D0CGSg_s5c35_pSgtYbcfU0_yAA0cdE5ModelCXEfU_AA0aR8VAFXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v4 = v44;
    v41 = specialized Set.startIndex.getter(v1);
    v42 = v5;
    v43 = v6 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v36 = v3 >> 62;
      v37 = v1;
      v35 = v2;
      while (!__OFADD__(v7++, 1))
      {
        v9 = v41;
        v10 = v43;
        v39 = v42;
        specialized Set.subscript.getter(v41, v42, v43, v1);
        v12 = v11;
        if (v36 && __CocoaSet.count.getter())
        {
          v13 = v12;
          v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo5SGURLC_Tt0gq5(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v15 = v12;
          v14 = MEMORY[0x1E69E7CD0];
        }

        if (one-time initialization token for faceTime != -1)
        {
          swift_once();
        }

        v16 = static ParticipantContactDetailsCache.faceTime;

        v44 = v4;
        v18 = *(v4 + 16);
        v17 = *(v4 + 24);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
          v4 = v44;
        }

        *(v4 + 16) = v18 + 1;
        v19 = (v4 + 24 * v18);
        v19[4] = v12;
        v19[5] = v14;
        v19[6] = v16;
        if (v38)
        {
          v1 = v37;
          if (!v10)
          {
            goto LABEL_42;
          }

          v20 = v4;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v25 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo18TUConversationLinkC_GMd);
          v26 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v26(v40, 0);
        }

        else
        {
          v1 = v37;
          if (v10)
          {
            goto LABEL_43;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = v4;
          v21 = 1 << *(v37 + 32);
          if (v9 >= v21)
          {
            goto LABEL_38;
          }

          v22 = v9 >> 6;
          v23 = *(v34 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v37 + 36) != v39)
          {
            goto LABEL_40;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v25 = v35;
          }

          else
          {
            v27 = v22 << 6;
            v28 = v22 + 1;
            v29 = (v33 + 8 * v22);
            v25 = v35;
            while (v28 < (v21 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v39, 0);
                v21 = __clz(__rbit64(v30)) + v27;
                goto LABEL_33;
              }
            }

            outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v9, v39, 0);
          }

LABEL_33:
          v32 = *(v37 + 36);
          v41 = v21;
          v42 = v32;
          v43 = 0;
        }

        v4 = v20;
        if (v7 == v25)
        {
          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v41, v42, v43);
          return;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t RecentsLinkController.__allocating_init(conversationManager:)(uint64_t a1)
{
  OUTLINED_FUNCTION_37_22();
  v2 = swift_allocObject();
  RecentsLinkController.init(conversationManager:)(a1);
  return v2;
}

void specialized RecentsLinkController.showDeleteConfirmationIfRequired(for:isRemovingAllRecents:from:completionHandler:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_17_1();
  v68 = type metadata accessor for RecentOngoingConversationMetadata(v8);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v67 = v11 - v10;
  v12 = OUTLINED_FUNCTION_4_24();
  v66 = type metadata accessor for RecentCallRecentItemMetadata(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v65 = v15 - v14;
  v16 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v16);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_2();
  v18 = type metadata accessor for RecentsCallItem(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_8();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = v3;
  v64 = v23;
  v63 = v5;
  if (*(v0 + 16))
  {
    v62 = v7;
    v24 = *(v0 + 16);
    v25 = v0 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v26 = *(v19 + 72);
    v61 = v5;

    v27 = v24;
    while (1)
    {
      OUTLINED_FUNCTION_0_67();
      _s15ConversationKit15RecentsCallItemVWOcTm_2(v25, v22, v28);
      OUTLINED_FUNCTION_15_38();
      _s15ConversationKit15RecentsCallItemVWOcTm_2(v22, v1, v29);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_17_44();
          outlined init with take of RecentOngoingConversationMetadata(v1, v67, v31);
          OUTLINED_FUNCTION_28_29(*(v68 + 28));
          goto LABEL_8;
        case 2u:
          v3 = *v1;
          goto LABEL_9;
        case 3u:
        case 4u:
          OUTLINED_FUNCTION_19_29();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
          goto LABEL_11;
        default:
          OUTLINED_FUNCTION_18_39();
          outlined init with take of RecentOngoingConversationMetadata(v1, v65, v30);
          OUTLINED_FUNCTION_28_29(*(v66 + 44));
LABEL_8:
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
          if (v3)
          {
LABEL_9:

            v32 = [v3 isLocallyCreated];

            OUTLINED_FUNCTION_0_123();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
            if (v32)
            {
              v34 = objc_opt_self();
              v35 = [v34 conversationKit];
              OUTLINED_FUNCTION_36_20();
              if (v24 == 1)
              {
                v37 = "DELETE_LINK_ALERT_TITLE";
              }

              else
              {
                v37 = "DELETE_LINKS_ALERT_TITLE";
              }

              if (v24 == 1)
              {
                v38 = v36 + 1;
              }

              else
              {
                v38 = v36 | 2;
              }

              OUTLINED_FUNCTION_35_14();
              v40.super.isa = v35;
              v42 = OUTLINED_FUNCTION_17_0(v41, v39 | 0x8000000000000000, v25, 0xEF74694B6E6F6974, v40);
              v44 = v43;

              v45 = [v34 &off_1E7FE9588];
              v46.super.isa = v45;
              v47 = OUTLINED_FUNCTION_17_0(v38, v37 | 0x8000000000000000, v25, 0xEF74694B6E6F6974, v46);
              v49 = v48;

              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);

              v50 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v42, v44, v47, v49, 1);
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
              OUTLINED_FUNCTION_24();
              v51 = swift_allocObject();
              *(v51 + 16) = partial apply for closure #1 in RecentsListViewController.deleteAllRecents(_:);
              *(v51 + 24) = v64;
              v52 = v50;

              v53 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
              v54 = [objc_opt_self() conversationKit];
              v55 = OUTLINED_FUNCTION_34_23();
              v56.super.isa = v54;
              OUTLINED_FUNCTION_17_0(v55, v57, v58, 0xEF74694B6E6F6974, v56);

              OUTLINED_FUNCTION_24();
              v59 = swift_allocObject();
              *(v59 + 16) = partial apply for closure #1 in RecentsListViewController.deleteAllRecents(_:);
              *(v59 + 24) = v64;

              v60 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
              [v52 addAction_];
              [v52 addAction_];
              [v62 presentViewController:v52 animated:1 completion:0];

              goto LABEL_16;
            }
          }

          else
          {
LABEL_11:
            OUTLINED_FUNCTION_0_123();
            _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
          }

          v25 += v26;
          if (!--v27)
          {
            goto LABEL_15;
          }

          break;
      }
    }
  }

  v33 = v5;

LABEL_15:
  doRemoveAllRecents #1 () in RecentsListViewController.deleteAllRecents(_:)();

LABEL_16:

  OUTLINED_FUNCTION_30_0();
}

void RecentsLinkController.showDeleteConfirmationIfRequired(for:isRemovingAllRecents:from:completionHandler:)()
{
  OUTLINED_FUNCTION_29();
  v64 = v2;
  v65 = v3;
  v62 = v4;
  v5 = OUTLINED_FUNCTION_17_1();
  v69 = type metadata accessor for RecentOngoingConversationMetadata(v5);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v68 = v8 - v7;
  v9 = OUTLINED_FUNCTION_4_24();
  v67 = type metadata accessor for RecentCallRecentItemMetadata(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v66 = v12 - v11;
  v13 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = (v16 - v15);
  v18 = type metadata accessor for RecentsCallItem(0) - 8;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v0 + 16);
  if (!v63)
  {
LABEL_13:
    v64(1, v20);
    goto LABEL_14;
  }

  v23 = v0 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v24 = *(v19 + 72);
  v25 = v63;
  while (2)
  {
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_2(v23, v22, v26);
    OUTLINED_FUNCTION_15_38();
    _s15ConversationKit15RecentsCallItemVWOcTm_2(v22, v17, v27);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        OUTLINED_FUNCTION_17_44();
        outlined init with take of RecentOngoingConversationMetadata(v17, v68, v29);
        OUTLINED_FUNCTION_27_28(*(v69 + 28));
        goto LABEL_8;
      case 2u:
        v1 = *v17;
        goto LABEL_9;
      case 3u:
      case 4u:
        OUTLINED_FUNCTION_19_29();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
        goto LABEL_11;
      default:
        OUTLINED_FUNCTION_18_39();
        outlined init with take of RecentOngoingConversationMetadata(v17, v66, v28);
        OUTLINED_FUNCTION_27_28(*(v67 + 44));
LABEL_8:
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
        if (!v1)
        {
LABEL_11:
          OUTLINED_FUNCTION_0_123();
          _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
          goto LABEL_12;
        }

LABEL_9:

        v30 = [v1 isLocallyCreated];

        OUTLINED_FUNCTION_0_123();
        _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
        if ((v30 & 1) == 0)
        {
LABEL_12:
          v23 += v24;
          if (!--v25)
          {
            goto LABEL_13;
          }

          continue;
        }

        v31 = objc_opt_self();
        v32 = [v31 conversationKit];
        OUTLINED_FUNCTION_36_20();
        if (v63 == 1)
        {
          v34 = "DELETE_LINK_ALERT_TITLE";
        }

        else
        {
          v34 = "DELETE_LINKS_ALERT_TITLE";
        }

        if (v63 == 1)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = v33 | 2;
        }

        OUTLINED_FUNCTION_35_14();
        v37.super.isa = v32;
        v39 = OUTLINED_FUNCTION_17_0(v38, v36 | 0x8000000000000000, v23, 0xEF74694B6E6F6974, v37);
        v41 = v40;

        v42 = [v31 &off_1E7FE9588];
        v43.super.isa = v42;
        v44 = OUTLINED_FUNCTION_17_0(v35, v34 | 0x8000000000000000, v23, 0xEF74694B6E6F6974, v43);
        v46 = v45;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);

        v47 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v39, v41, v44, v46, 1);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
        OUTLINED_FUNCTION_24();
        v48 = swift_allocObject();
        v49 = v64;
        v50 = v65;
        *(v48 + 16) = v64;
        *(v48 + 24) = v50;
        v51 = v47;

        v52 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
        v53 = objc_opt_self();
        v54 = v52;
        v55 = [v53 conversationKit];
        v56 = OUTLINED_FUNCTION_34_23();
        v57.super.isa = v55;
        OUTLINED_FUNCTION_17_0(v56, v58, v59, 0xEF74694B6E6F6974, v57);

        OUTLINED_FUNCTION_24();
        v60 = swift_allocObject();
        *(v60 + 16) = v49;
        *(v60 + 24) = v50;

        v61 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
        [v51 addAction_];

        [v51 addAction_];
        [v62 presentViewController:v51 animated:1 completion:0];

LABEL_14:
        OUTLINED_FUNCTION_30_0();
        return;
    }
  }
}

uint64_t key path setter for RecentsLinkControllerModel.delegate : RecentsLinkControllerModel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*RecentsLinkControllerModel.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return RecentsLinkControllerModel.delegate.modify;
}

void RecentsLinkControllerModel.delegate.modify()
{
  OUTLINED_FUNCTION_29_21();
  *(v2 + 40) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t key path setter for RecentsLinkControllerModel.tuLinks : RecentsLinkControllerModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t RecentsLinkControllerModel.tuLinks.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 48) = a1;
}

uint64_t RecentsLinkControllerModel.updateState.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 56) = a1;
  return RecentsLinkControllerModel.updateState.didset();
}

uint64_t key path setter for RecentsLinkControllerModel.conversationLinks : RecentsLinkControllerModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 240);

  return v2(v3);
}

uint64_t RecentsLinkControllerModel.conversationLinks.setter(uint64_t a1)
{

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B4LinkV_Tt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
  }

  else
  {
    *(v1 + 64) = a1;

    OUTLINED_FUNCTION_0_1();
    v9 = (*(v7 + 200))(v10);
    if ((*v8 & 4) == 0)
    {
      *v8 |= 4uLL;
    }

    return v9(v10, 0);
  }
}

uint64_t (*RecentsLinkControllerModel.conversationLinks.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;

  return RecentsLinkControllerModel.conversationLinks.modify;
}

uint64_t RecentsLinkControllerModel.conversationLinks.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return RecentsLinkControllerModel.conversationLinks.setter(*a1);
  }

  RecentsLinkControllerModel.conversationLinks.setter(v2);
}

uint64_t key path setter for RecentsLinkControllerModel.suggestionsURLs : RecentsLinkControllerModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 264);

  return v2(v3);
}

uint64_t RecentsLinkControllerModel.suggestionsURLs.didset(unint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZSo5SGURLC_Tt1g5(v3, a1);
  LOBYTE(a1) = v4;

  if ((a1 & 1) == 0)
  {
    v7 = (*(*v1 + 200))(v8);
    if ((*v6 & 4) == 0)
    {
      *v6 |= 4uLL;
    }

    return v7(v8, 0);
  }

  return result;
}

uint64_t RecentsLinkControllerModel.suggestionsURLs.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
  RecentsLinkControllerModel.suggestionsURLs.didset(v3);
}

void (*RecentsLinkControllerModel.suggestionsURLs.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = *(v1 + 72);

  return RecentsLinkControllerModel.suggestionsURLs.modify;
}

void RecentsLinkControllerModel.suggestionsURLs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    RecentsLinkControllerModel.suggestionsURLs.setter(v4);
  }

  else
  {
    RecentsLinkControllerModel.suggestionsURLs.setter(v3);
  }

  free(v2);
}

Swift::Void __swiftcall RecentsLinkControllerModel.updateCallItems()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_1();
  v14 = (*(v13 + 136))();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v26 = v9;
    OUTLINED_FUNCTION_20();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_0_1();
    *(v18 + 16) = (*(v19 + 232))();
    v20 = (*(*v0 + 256))();
    OUTLINED_FUNCTION_0_1();
    v23 = (*(v21 + 200))(v27);
    if ((*v22 & 4) != 0)
    {
      *v22 &= ~4uLL;
    }

    v23(v27, 0);
    v24 = swift_allocObject();
    v24[2] = v0;
    v24[3] = v18;
    v24[4] = v20;
    v24[5] = v16;
    v24[6] = v17;
    v27[4] = partial apply for closure #1 in RecentsLinkControllerModel.updateCallItems();
    v27[5] = v24;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = thunk for @escaping @callee_guaranteed () -> ();
    v27[3] = &block_descriptor_49;
    v25 = _Block_copy(v27);

    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v1, v8, v25);
    _Block_release(v25);
    swift_unknownObjectRelease();
    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v1, v26);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsLinkControllerModel.updateCallItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 + 16;
  swift_beginAccess();
  RecentsLinkControllerModel.generateCallItems(for:suggestionsURLs:)();
  v9 = v8;
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v12[2] = a1;
  v12[3] = v7;
  (*(a5 + 8))(a1, v9, partial apply for closure #1 in closure #1 in RecentsLinkControllerModel.updateCallItems(), v12, ObjectType, a5);
}

uint64_t closure #1 in closure #1 in RecentsLinkControllerModel.updateCallItems()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  *(a1 + 64) = *a2;
}

void RecentsLinkControllerModel.generateCallItems(for:suggestionsURLs:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v61 - v8;
  v70 = type metadata accessor for RecentsCallItem(0);
  OUTLINED_FUNCTION_1();
  v61[1] = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v66 = v13 - v12;
  OUTLINED_FUNCTION_4_24();
  v14 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v67 = v19 - v18;
  OUTLINED_FUNCTION_4_24();
  v20 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_2();
  v24 = *(v0 + 24);
  *v1 = v24;
  (*(v22 + 104))(v1, *MEMORY[0x1E69E8020], v20);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v1, v20);
  if (v24)
  {
    v63 = v14;
    v64 = v3;
    v62 = v16;
    v65 = v5;
    v26 = *v5;
    v27 = *(*v5 + 16);
    v28 = MEMORY[0x1E69E7CC0];
    if (v27)
    {
      v71 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v29 = v71;
      v61[0] = v26;
      v30 = v26 + 48;
      v68 = v28 >> 62;
      v69 = v9;
      do
      {
        v31 = *(v30 - 16);
        if (v68 && __CocoaSet.count.getter())
        {
          v32 = v31;

          v33 = v32;
          v34 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo5SGURLC_Tt0gq5(v28);
        }

        else
        {
          v35 = v31;

          v36 = v35;
          v34 = MEMORY[0x1E69E7CD0];
        }

        v37 = v28;
        if (one-time initialization token for faceTime != -1)
        {
          swift_once();
        }

        v38 = static ParticipantContactDetailsCache.faceTime;

        v71 = v29;
        v40 = v29[2];
        v39 = v29[3];
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1);
          v29 = v71;
        }

        v29[2] = v40 + 1;
        v41 = &v29[3 * v40];
        v41[4] = v31;
        v41[5] = v34;
        v41[6] = v38;
        v30 += 24;
        --v27;
        v28 = v37;
        v9 = v69;
      }

      while (v27);
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    v42 = v65;
    *v65 = v29;
    v43 = v67;
    v44 = Date.init()();
    MEMORY[0x1EEE9AC00](v44);
    v61[-2] = v42;
    v61[-1] = v43;
    specialized Sequence.forEach(_:)(partial apply for closure #2 in RecentsLinkControllerModel.generateCallItems(for:suggestionsURLs:), &v61[-4], v64);
    v45 = 0;
    v74 = v28;
    v46 = *v42;
    v47 = *(*v42 + 16);
    v48 = *v42 + 48;
    v69 = v48;
LABEL_16:
    for (i = (v48 + 24 * v45); ; i += 3)
    {
      if (v47 == v45)
      {
        specialized Array.append<A>(contentsOf:)(v28);
        (*(v62 + 8))(v67, v63);
        OUTLINED_FUNCTION_30_0();
        return;
      }

      if (v45 >= *(v46 + 16))
      {
        break;
      }

      v51 = *(i - 1);
      v50 = *i;
      v71 = *(i - 2);
      v72 = v51;
      v73 = v50;
      v52 = v71;

      RecentsCallItem.init(link:)();
      if (__swift_getEnumTagSinglePayload(v9, 1, v70) != 1)
      {
        OUTLINED_FUNCTION_9_63();
        outlined init with take of RecentOngoingConversationMetadata(v9, v66, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v59;
        }

        v56 = *(v28 + 16);
        if (v56 >= *(v28 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v28 = v60;
        }

        ++v45;
        *(v28 + 16) = v56 + 1;
        OUTLINED_FUNCTION_9_63();
        outlined init with take of RecentOngoingConversationMetadata(v66, v57, v58);
        v48 = v69;
        goto LABEL_16;
      }

      v53 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, v54);
      ++v45;
    }

    __break(1u);
  }

  __break(1u);
}

void closure #2 in RecentsLinkControllerModel.generateCallItems(for:suggestionsURLs:)(void **a1, char *a2, uint64_t a3)
{
  v54 = a3;
  v57 = type metadata accessor for Calendar();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Date();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v9;
  v10 = type metadata accessor for URL();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
  v61 = v13;
  v15 = [v13 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = @nonobjc TUConversationLink.init(url:)(v12, v16);
  if (v63)
  {
    v52 = a2;
    v62 = *(*a2 + 16);

    v18 = 0;
    v19 = 48;
    while (v62 != v18)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      *&v64 = v18;
      v70 = v19;
      v14 = v17;
      v15 = *(v17 + v19 - 8);
      v3 = *(v17 + v19);
      a2 = *(v17 + v19 - 16);

      v20 = [a2 pseudonym];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = [v63 pseudonym];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (v21 == v12 && v23 == v26)
      {

        a2 = v70;
        v18 = v64;
        goto LABEL_16;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v18 = v64;
      if (v12)
      {

        a2 = v70;
LABEL_16:
        v15 = v52;
        if (v18 < *(*v52 + 16))
        {
          v32 = &a2[*v52];
          v33 = *(v32 - 1);
          v34 = *v32;
          v65 = *(v32 - 2);
          v66 = v33;
          v67 = v34;
          v35 = v65;

          ConversationLink.updated(with:)(v61, &v68);
          v36 = v65;

          v64 = v68;
          v14 = v69;
          v12 = *v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v15 = v12;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        specialized _ArrayBuffer._consumeAndCreateNew()();
        *v15 = v50;
LABEL_18:

        if (v18 < *(*v15 + 16))
        {
          v38 = &a2[*v15];
          v39 = *(v38 - 2);
          *(v38 - 1) = v64;
          *v38 = v14;

          return;
        }

        __break(1u);
LABEL_30:
        swift_once();
        goto LABEL_24;
      }

      v18 = v64 + 1;
      v19 = (v70 + 24);
      v17 = v14;
    }

    SGURL.recentsDate.getter(v59);
    v28 = static Date.< infix(_:_:)();
    v29 = v55;
    static Calendar.current.getter();
    v30 = v53;
    SGURL.recentsDate.getter(v53);
    v31 = Calendar.isDateInToday(_:)();
    v3 = *(v58 + 8);
    v3(v30, v60);
    (*(v56 + 8))(v29, v57);
    if ((v31 & 1) == 0 && (v28 & 1) == 0)
    {
      v3(v59, v60);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAC30;
    v41 = v61;
    *(inited + 32) = v61;
    if (specialized Array.count.getter(inited))
    {
      v42 = v41;
      v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo5SGURLC_Tt0g5(inited);
    }

    else
    {
      swift_setDeallocating();
      v43 = v41;
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v12 = MEMORY[0x1E69E7CD0];
    }

    v44 = one-time initialization token for faceTime;
    v15 = v63;
    if (v44 != -1)
    {
      goto LABEL_30;
    }

LABEL_24:
    v45 = static ParticipantContactDetailsCache.faceTime;

    v46 = v52;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v47 = *(*v46 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v47);

    v3(v59, v60);
    v48 = *v46;
    *(v48 + 16) = v47 + 1;
    v49 = (v48 + 24 * v47);
    v49[4] = v15;
    v49[5] = v12;
    v49[6] = v45;
  }
}

uint64_t RecentsLinkControllerModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 32);

  return v0;
}

uint64_t RecentsLinkControllerModel.__deallocating_deinit()
{
  RecentsLinkControllerModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t RecentsLinkControllerModel.__allocating_init()()
{
  v0 = swift_allocObject();
  RecentsLinkControllerModel.init()();
  return v0;
}

uint64_t key path setter for RecentLinkCallItems.callItems : RecentLinkCallItems(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t RecentLinkCallItems.callItems.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  *(v1 + 16) = a1;
}

uint64_t RecentLinkCallItems.__deallocating_deinit()
{

  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t RecentLinkCallItems.__allocating_init()()
{
  OUTLINED_FUNCTION_20();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t RecentLinkCallItems.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void one-time initialization function for deleteLink()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4C5F4554454C4544;
  v1._object = 0xEB000000004B4E49;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  static RecentsLinkController.deleteLink = v4;
}

uint64_t static RecentsLinkController.deleteLink.getter()
{
  if (one-time initialization token for deleteLink != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_46();
}

void static RecentsLinkController.shouldTargetUpcomingSectionDate.getter()
{
  OUTLINED_FUNCTION_29();
  v25 = v1;
  v2 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_2();
  v6 = type metadata accessor for Calendar.Component();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for Calendar();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v21 = OUTLINED_FUNCTION_22(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v24 - v22;
  static Calendar.current.getter();
  (*(v8 + 104))(v12, *MEMORY[0x1E6969A48], v6);
  Date.init()();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v4 + 8))(v0, v2);
  (*(v8 + 8))(v12, v6);
  (*(v15 + 8))(v19, v13);
  if (__swift_getEnumTagSinglePayload(v23, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v25, v23, v2);
    OUTLINED_FUNCTION_30_0();
  }
}

uint64_t key path setter for RecentsLinkController.delegate : RecentsLinkController(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 136);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*RecentsLinkController.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return RecentsLinkController.delegate.modify;
}

void RecentsLinkController.delegate.modify()
{
  OUTLINED_FUNCTION_29_21();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

id *RecentsLinkController.deinit()
{
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 264))();

  outlined destroy of weak InCallControlsBaseCellDelegate?((v0 + 3));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RecentsLinkController.__deallocating_deinit()
{
  RecentsLinkController.deinit();
  OUTLINED_FUNCTION_37_22();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in closure #1 in RecentsLinkController.resume()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 352))(result);
  }

  return result;
}

Swift::Void __swiftcall RecentsLinkController.suspend()()
{
  if ((*(v0 + 44) & 1) == 0)
  {
    notify_cancel(*(v0 + 40));
    *(v0 + 40) = 0;
    *(v0 + 44) = 1;
  }
}

BOOL closure #2 in RecentsLinkController.callItems.getter(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v33 = a1;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for Date();
  v34 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v29 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - v19;
  v21 = type metadata accessor for RecentsCallItem(0);
  outlined init with copy of Date?(v33 + *(v21 + 36), v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v33 = v2;
  v28 = *(v34 + 32);
  v28(v20, v15, v16);
  static Calendar.current.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A88], v3);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v4 + 8))(v6, v3);
  (*(v30 + 8))(v9, v31);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    (*(v34 + 8))(v20, v16);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s10Foundation4DateVSgMd);
    return 0;
  }

  v22 = v34;
  v23 = v29;
  v28(v29, v13, v16);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v24 = *(v22 + 8);
    v24(v23, v16);
    v24(v20, v16);
    return 0;
  }

  v26 = dispatch thunk of static Comparable.< infix(_:_:)();
  v27 = *(v22 + 8);
  v27(v23, v16);
  v27(v20, v16);
  return (v26 & 1) == 0;
}

uint64_t closure #3 in RecentsLinkController.callItems.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for RecentsCallItem(0);
  outlined init with copy of Date?(a1 + *(v12 + 36), v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s10Foundation4DateVSgMd);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    Date.init()();
    v13 = static Date.< infix(_:_:)();
    v14 = *(v6 + 8);
    v14(v9, v5);
    if (v13)
    {
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v15 = dispatch thunk of static Comparable.< infix(_:_:)();
      v14(v11, v5);
      if ((v15 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      v14(v11, v5);
    }
  }

  return 0;
}

id RecentsLinkController.shouldConfirmDeleteAll.getter()
{
  v14 = MEMORY[0x1E69E7CC0];
  v0 = RecentsLinkController.modelLocked.getter();
  OUTLINED_FUNCTION_20();
  v1 = swift_allocObject();
  *(v1 + 16) = &v14;
  OUTLINED_FUNCTION_24();
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in RecentsLinkController.shouldConfirmDeleteAll.getter;
  *(v2 + 24) = v1;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_3_101();
  aBlock[2] = v3;
  aBlock[3] = &block_descriptor_33;
  v4 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v4);
  LOBYTE(v0) = OUTLINED_FUNCTION_31_23();

  if ((v0 & 1) == 0)
  {
    v6 = v14;
    v7 = *(v14 + 16);

    v8 = -v7;
    v9 = -1;
    v10 = 32;
    while (1)
    {
      v11 = v8 + v9;
      if (v8 + v9 == -1)
      {
LABEL_6:

        return (v11 != -1);
      }

      if (++v9 >= *(v6 + 16))
      {
        break;
      }

      v12 = v10 + 24;
      result = [*(v6 + v10) isLocallyCreated];
      v10 = v12;
      if (result)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in RecentsLinkController.shouldConfirmDeleteAll.getter(uint64_t a1, void *a2)
{
  *a2 = (*(*a1 + 232))();
}

Swift::Void __swiftcall RecentsLinkController.deleteAll()()
{
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 272))();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 296))();
}

Swift::Void __swiftcall RecentsLinkController.delete(callItems:)(Swift::OpaquePointer callItems)
{
  v3 = OUTLINED_FUNCTION_17_1();
  v4 = type metadata accessor for RecentsCallItem(v3) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_2(v7, v6, v8);
    OUTLINED_FUNCTION_20();
    v9 = swift_allocObject();
    *(v9 + 16) = 1;
    MEMORY[0x1EEE9AC00](v9);
    *&v11[-32] = v6;
    *&v11[-24] = v10;
    *&v11[-16] = v2;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in RecentsLinkController.delete(callItems:), &v11[-48], v1);

    OUTLINED_FUNCTION_0_123();
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_2();
  }
}

uint64_t closure #1 in RecentsLinkController.delete(callItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static RecentsCallItem.== infix(_:_:)();
  v8 = v7;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.conversationKit);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    swift_beginAccess();
    *(v12 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1BBC58000, v10, v11, "Deleting link #%ld", v12, 0xCu);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(*a4 + 304))(a1, v8 & 1);
  result = swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v16;
  }

  return result;
}

void RecentsLinkController.delete(callItem:refresh:)(uint64_t a1, char a2)
{
  RecentsCallItem.conversationLink.getter();
  v3 = v4;
  if (v4)
  {
    RecentsLinkController.delete(conversationLink:refresh:)(&v4, a2 & 1);
    outlined consume of ConversationLink?(v3);
  }
}

uint64_t RecentsLinkController.delete(conversationLink:refresh:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = RecentsLinkController.modelLocked.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v3;
  *(v9 + 48) = a2;
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in RecentsLinkController.delete(conversationLink:refresh:);
  *(v10 + 24) = v9;
  v19[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
  v19[5] = v10;
  OUTLINED_FUNCTION_1_25();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_3_101();
  v19[2] = v11;
  v19[3] = &block_descriptor_182;
  v12 = _Block_copy(v19);
  v13 = v5;

  [v8 performWhileLocked_];

  _Block_release(v12);
  LOBYTE(v8) = OUTLINED_FUNCTION_31_23();

  if (v8)
  {
    __break(1u);
  }

  else if (one-time initialization token for conversationKit == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.conversationKit);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&dword_1BBC58000, v15, v16, "Deleting link, should refresh %{BOOL}d", v17, 8u);
    MEMORY[0x1BFB23DF0](v17, -1, -1);
  }

  (*(*v3 + 320))(v13, a2 & 1);
}

void closure #1 in RecentsLinkController.delete(conversationLink:refresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v50 = a6;
  v49 = a5;
  v48 = type metadata accessor for URL();
  v9 = *(v48 - 8);
  v10 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(*a1 + 232))(v10);
  specialized Collection<>.firstIndex(of:)();
  v14 = v13;
  v16 = v15;

  if (v16)
  {
    goto LABEL_5;
  }

  v6 = a3;
  v17 = (*(*a1 + 248))(v54);
  v12 = v18;
  v19 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v21 = *(v19 + 16);
    if (v14 >= v21)
    {
      break;
    }

    v22 = v21 - 1;
    v23 = v19 + 24 * v14;
    v24 = v9;
    v25 = *(v23 + 32);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v23 + 56), v21 - 1 - v14, (v23 + 32));
    *(v19 + 16) = v22;
    *v12 = v19;

    v9 = v24;
    (v17)(v54, 0);
    a3 = v6;
LABEL_5:
    if ((a3 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      v12 = &lazy cache variable for type metadata for SGURL;
      v6 = 0x1E69992A8uLL;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type SGURL and conformance NSObject, &lazy cache variable for type metadata for SGURL);
      Set.Iterator.init(_cocoa:)();
      v26 = v54[0];
      v14 = v54[1];
      v17 = v54[2];
      v27 = v54[3];
      v28 = v54[4];
    }

    else
    {
      v29 = -1 << *(a3 + 32);
      v14 = a3 + 56;
      v17 = ~v29;
      v30 = -v29;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      else
      {
        v31 = -1;
      }

      v28 = v31 & *(a3 + 56);

      v27 = 0;
    }

    v46 = v17;
    v32 = (v17 + 64) >> 6;
    ++v9;
    for (i = v26; i < 0; v26 = i)
    {
      v37 = __CocoaSet.Iterator.next()();
      if (!v37)
      {
        goto LABEL_24;
      }

      v52 = v37;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SGURL);
      v36 = swift_dynamicCast();
      v17 = v53[0];
      v35 = v27;
      v6 = v28;
      if (!v53[0])
      {
        goto LABEL_24;
      }

LABEL_20:
      (*(*a1 + 256))(v36);
      specialized Collection<>.firstIndex(of:)();
      v39 = v38;
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        v42 = (*(*a1 + 272))(v53);

        v42(v53, 0);
      }

      v43 = [v17 url];
      v44 = v47;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = v49;
      RecentsLinkController.rejectSuggestedURL(_:refresh:)(v44, v50 & 1);

      (*v9)(v44, v48);
      v27 = v35;
      v28 = v6;
    }

    v33 = v27;
    v34 = v28;
    v35 = v27;
    if (v28)
    {
LABEL_16:
      v6 = (v34 - 1) & v34;
      v36 = *(*(v26 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
      v17 = v36;
      if (v36)
      {
        goto LABEL_20;
      }

LABEL_24:
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        goto LABEL_24;
      }

      v34 = *(v14 + 8 * v35);
      ++v33;
      if (v34)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    specialized _ArrayBuffer._consumeAndCreateNew()();
    v19 = v45;
    *v12 = v45;
  }

  __break(1u);
}

void RecentsLinkController.delete(tuLink:refresh:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_24();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v9[4] = partial apply for closure #1 in RecentsLinkController.delete(tuLink:refresh:);
  v9[5] = v7;
  OUTLINED_FUNCTION_1_25();
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v9[3] = &block_descriptor_43;
  v8 = _Block_copy(v9);

  [v5 invalidateLink:a1 completionHandler:v8];
  _Block_release(v8);
}

void closure #1 in RecentsLinkController.delete(tuLink:refresh:)(uint64_t a1, void *a2, char a3)
{
  if (a2)
  {
    swift_getErrorValue();
    v5 = a2;
    Error.localizedDescription.getter();
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    v7 = MEMORY[0x1E69E6158];
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    *(v6 + 56) = v7;
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    os_log(_:dso:log:type:_:)();
  }

  if (a3)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 344))(Strong);
    }
  }
}

void RecentsLinkController.engaged(with:)(void *a1)
{
  v3 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  v7 = RecentsLinkController.suggestionsService.getter();
  v8 = [a1 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = URL.absoluteString.getter();
  v11 = v10;
  (*(v5 + 8))(v1, v3);
  v12 = MEMORY[0x1BFB209B0](v9, v11);

  v19 = TPNumberPadCharacter.rawValue.getter;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  OUTLINED_FUNCTION_16_43();
  v17 = v13;
  v18 = &block_descriptor_46;
  v14 = _Block_copy(&aBlock);
  [v7 registerURLFeedback:1 absoluteURL:v12 withCompletion:{v14, aBlock, v16}];
  _Block_release(v14);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall RecentsLinkController.refresh(links:)(Swift::OpaquePointer links)
{
  v2 = RecentsLinkController.modelLocked.getter();
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  v3[2]._rawValue = links._rawValue;
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in RecentsLinkController.refresh(links:);
  *(v4 + 24) = v3;
  v7[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
  v7[5] = v4;
  OUTLINED_FUNCTION_1_25();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_3_101();
  v7[2] = v5;
  v7[3] = &block_descriptor_56_0;
  v6 = _Block_copy(v7);

  [v2 performWhileLocked_];

  _Block_release(v6);
  LOBYTE(v2) = OUTLINED_FUNCTION_31_23();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t closure #1 in RecentsLinkController.refresh(links:)(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 184))();
  if ((result & 1) == 0)
  {
    v4 = *(*a1 + 200);
    v6 = v4(v29);
    if ((*v5 & 1) == 0)
    {
      *v5 |= 1uLL;
    }

    v6(v29, 0);
    v7 = specialized Array.count.getter(a2);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v9 = v7;
      v29[0] = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return result;
      }

      v27 = v4;
      v10 = 0;
      v11 = v29[0];
      v12 = v8 >> 62;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB22010](v10, a2);
        }

        else
        {
          v13 = *(a2 + 8 * v10 + 32);
        }

        v14 = v13;
        if (v12 && (v15 = MEMORY[0x1E69E7CC0], __CocoaSet.count.getter()))
        {
          v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo5SGURLC_Tt0gq5(v15);
        }

        else
        {
          v16 = MEMORY[0x1E69E7CD0];
        }

        if (one-time initialization token for faceTime != -1)
        {
          swift_once();
        }

        v17 = static ParticipantContactDetailsCache.faceTime;
        v29[0] = v11;
        v18 = *(v11 + 16);
        v19 = *(v11 + 24);

        if (v18 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v18 + 1, 1);
          v11 = v29[0];
        }

        ++v10;
        *(v11 + 16) = v18 + 1;
        v20 = (v11 + 24 * v18);
        v20[4] = v14;
        v20[5] = v16;
        v20[6] = v17;
      }

      while (v9 != v10);
      v4 = v27;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    v29[0] = *(v11 + 16);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    (*(*a1 + 240))(v11);
    v26 = v4(v29);
    if (*v25)
    {
      *v25 &= ~1uLL;
    }

    return v26(v29, 0);
  }

  return result;
}

void RecentsLinkController.rejectSuggestedURL(_:refresh:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &aBlock - v6;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  v9 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 16))(v7, a1, v9);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  specialized >> prefix<A>(_:)(v7, v11, v12, v13, v14, v15, v16, v17, aBlock, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v19 = v18;
  v21 = v20;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s10Foundation3URLVSgMd);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 32) = v19;
  *(v8 + 40) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = RecentsLinkController.suggestionsService.getter();
  v23 = URL.absoluteString.getter();
  v24 = MEMORY[0x1BFB209B0](v23);

  OUTLINED_FUNCTION_20();
  v25 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_24();
  v26 = swift_allocObject();
  *(v26 + 16) = a2 & 1;
  *(v26 + 24) = v25;
  v33 = partial apply for closure #1 in RecentsLinkController.rejectSuggestedURL(_:refresh:);
  v34 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  OUTLINED_FUNCTION_16_43();
  v31 = v27;
  v32 = &block_descriptor_138;
  v28 = _Block_copy(&aBlock);

  [v22 registerURLFeedback:0 absoluteURL:v24 withCompletion:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in RecentsLinkController.rejectSuggestedURL(_:refresh:)(uint64_t a1, char a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(*result + 352))(result);
    }
  }

  return result;
}

uint64_t RecentsLinkController.recentsLinkControllerModel(_:updatedCallItems:handlerWithModelLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = RecentsLinkController.callItemsLocked.getter();
  OUTLINED_FUNCTION_20();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  OUTLINED_FUNCTION_24();
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in RecentsLinkController.recentsLinkControllerModel(_:updatedCallItems:handlerWithModelLocked:);
  *(v10 + 24) = v9;
  v29 = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
  v30 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
  v28 = &block_descriptor_83;
  v11 = _Block_copy(&aBlock);

  [v8 performWhileLocked_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v12 = RecentsLinkController.modelLocked.getter();
    OUTLINED_FUNCTION_24();
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    OUTLINED_FUNCTION_24();
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v14 + 24) = v13;
    v29 = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    v30 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
    v28 = &block_descriptor_93;
    v15 = _Block_copy(&aBlock);

    [v12 performWhileLocked_];

    _Block_release(v15);
    LOBYTE(v15) = OUTLINED_FUNCTION_31_23();

    if ((v15 & 1) == 0)
    {
      if (one-time initialization token for conversationKit == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  OUTLINED_FUNCTION_0_6();
LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  OUTLINED_FUNCTION_37_22();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BA940;
  aBlock = *(a2 + 16);
  v17 = String.init<A>(reflecting:)();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  OUTLINED_FUNCTION_0_1();
  if ((*(v20 + 128))())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v4, ObjectType, v22);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t closure #1 in RecentsLinkController.recentsLinkControllerModel(_:updatedCallItems:handlerWithModelLocked:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 96);

  return v3(a2);
}

void RecentsLinkController.delete(callItem:from:completionHandler:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v19[1] = v6;
  v8 = v7;
  v9 = type metadata accessor for RecentsCallItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit15RecentsCallItemVGMd);
  v12 = *(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA940;
  _s15ConversationKit15RecentsCallItemVWOcTm_2(v8, v13 + ((v12 + 32) & ~v12), type metadata accessor for RecentsCallItem);
  _s15ConversationKit15RecentsCallItemVWOcTm_2(v8, v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentsCallItem);
  v14 = (v12 + 24) & ~v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  OUTLINED_FUNCTION_9_63();
  outlined init with take of RecentOngoingConversationMetadata(v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, v17);
  v18 = (v15 + ((v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v5;
  v18[1] = v3;

  RecentsLinkController.showDeleteConfirmationIfRequired(for:isRemovingAllRecents:from:completionHandler:)();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in RecentsLinkController.delete(callItem:from:completionHandler:)(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    (*(*a2 + 304))(a3, 1);
  }

  return a4(a1 & 1);
}

uint64_t SGURL.linkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = type metadata accessor for URL();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t TUConversationLink.linkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 URL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t outlined init with take of RecentOngoingConversationMetadata(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t partial apply for closure #1 in RecentsLinkController.delete(callItem:from:completionHandler:)(char a1)
{
  v3 = *(type metadata accessor for RecentsCallItem(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in RecentsLinkController.delete(callItem:from:completionHandler:)(a1, v5, v1 + v4, v6);
}

unint64_t lazy protocol witness table accessor for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState()
{
  result = lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState;
  if (!lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState;
  if (!lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState;
  if (!lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState;
  if (!lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsLinkControllerModel.UpdateState and conformance RecentsLinkControllerModel.UpdateState);
  }

  return result;
}

id NSCache.__allocating_init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id DefaultObjectCache.object(forKey:defaultObject:)(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(v2 + 16);
  v6 = [v5 objectForKey_];
  if (!v6)
  {
    v6 = a2();
    [v5 setObject:v6 forKey:a1];
  }

  return v6;
}

uint64_t DefaultObjectCache.__deallocating_deinit()
{
  DefaultObjectCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t DefaultObjectCache.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultObjectCache.init()();
  return v0;
}

uint64_t DefaultObjectCache.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7NSCacheCMd);
  *(v0 + 16) = NSCache.__allocating_init()();
  return v0;
}

double DefaultObjectCache<>.cgFloat(forKey:defaultValue:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = DefaultObjectCache<>.float(forKey:defaultValue:)(v5);

  return v7;
}

float DefaultObjectCache<>.float(forKey:defaultValue:)(float a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v3 = a1;
  v4 = [v2 initWithFloat_];
  v5 = DefaultObjectCache.object(forKey:defaultObject:)(v4, partial apply for implicit closure #1 in DefaultObjectCache<>.float(forKey:defaultValue:));

  [v5 floatValue];
  v7 = v6;

  return v7;
}

id implicit closure #1 in DefaultObjectCache<>.float(forKey:defaultValue:)(float (*a1)(void))
{
  v1 = a1();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v3 = v1;

  return [v2 initWithFloat_];
}

uint64_t VideoAttributeOrientation.deviceOrientation.getter(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 1;
  }

  else
  {
    return qword_1BC4D0200[a1 - 1];
  }
}

BOOL specialized Sequence<>.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  while (v2)
  {
    v4 = *v3;
    if (v4 >> 6)
    {
      if (v4 >> 6 == 1)
      {
        if ((a1 & 0xC0) == 0x40 && ((v4 ^ a1) & 0x3F) == 0)
        {
          return v2 != 0;
        }
      }

      else if (v4 == 128)
      {
        if (a1 == 128)
        {
          return v2 != 0;
        }
      }

      else if (a1 == 129)
      {
        return v2 != 0;
      }
    }

    else if (a1 <= 0x3Fu && v4 == a1)
    {
      return v2 != 0;
    }

    ++v3;
    --v2;
  }

  return v2 != 0;
}

BOOL specialized Sequence<>.contains(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  specialized LazyMapSequence.makeIterator()(a2, a3, a4, &v11);
  do
  {
    specialized LazyMapSequence.Iterator.next()();
  }

  while (v8 != 2 && ((v8 ^ a1) & 1) != 0);
  v9 = v8 != 2;
  outlined consume of Set<TUHandle>.Iterator._Variant();

  return v9;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 41);
  while (v3)
  {
    if (*v4)
    {
      if ((a2 & 0x100) != 0)
      {
        return v3 != 0;
      }
    }

    else if ((a2 & 0x100) == 0)
    {
      if (*(v4 - 1))
      {
        if (a2)
        {
          return v3 != 0;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 9) == a1)
      {
        return v3 != 0;
      }
    }

    v4 += 16;
    --v3;
  }

  return v3 != 0;
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    if (v3-- == 0)
    {
      break;
    }

    v6 = 0xE500000000000000;
    v7 = 0x656C746974;
    switch(*v4)
    {
      case 1:
        v7 = 0x41746E6572727563;
        v6 = 0xEF79746976697463;
        break;
      case 2:
        v7 = 0x7069636974726170;
        v9 = 1937010273;
        goto LABEL_14;
      case 3:
        v7 = 0x6572616873;
        break;
      case 4:
        v7 = 0x6143656C67676F74;
        v8 = 0x736E6F697470;
        goto LABEL_11;
      case 5:
        v7 = 0xD000000000000017;
        v6 = 0x80000001BC4F1D50;
        break;
      case 6:
        v7 = 0x7373654D6E65706FLL;
        v9 = 1936025441;
LABEL_14:
        v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 7:
        v7 = 0x646E416B636F6C62;
        v8 = 0x74726F706552;
LABEL_11:
        v6 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      case 8:
        v6 = 0xE800000000000000;
        v7 = 0x656C746954747470;
        break;
      case 9:
        v7 = 0x545450657661656CLL;
        v6 = 0xEF6C656E6E616843;
        break;
      case 0xA:
        v7 = 0x415454506E65706FLL;
        v6 = 0xEA00000000007070;
        break;
      default:
        break;
    }

    v10 = 0xE500000000000000;
    v11 = 0x656C746974;
    switch(a1)
    {
      case 1:
        v11 = 0x41746E6572727563;
        v10 = 0xEF79746976697463;
        break;
      case 2:
        v11 = 0x7069636974726170;
        v13 = 1937010273;
        goto LABEL_27;
      case 3:
        v11 = 0x6572616873;
        break;
      case 4:
        v11 = 0x6143656C67676F74;
        v12 = 0x736E6F697470;
        goto LABEL_24;
      case 5:
        v11 = 0xD000000000000017;
        v10 = 0x80000001BC4F1D50;
        break;
      case 6:
        v11 = 0x7373654D6E65706FLL;
        v13 = 1936025441;
LABEL_27:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 7:
        v11 = 0x646E416B636F6C62;
        v12 = 0x74726F706552;
LABEL_24:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        break;
      case 8:
        v10 = 0xE800000000000000;
        v11 = 0x656C746954747470;
        break;
      case 9:
        v11 = 0x545450657661656CLL;
        v10 = 0xEF6C656E6E616843;
        break;
      case 10:
        v11 = 0x415454506E65706FLL;
        v10 = 0xEA00000000007070;
        break;
      default:
        break;
    }

    if (v7 == v11 && v6 == v10)
    {

      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v4;
  }

  while ((v15 & 1) == 0);
  OUTLINED_FUNCTION_30_0();
}

uint64_t *ReportSpamManager.faceTime.unsafeMutableAddressor()
{
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_9_62();
  }

  return &static ReportSpamManager.faceTime;
}

id ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = 0xD000000000000026;
  }

  else
  {
    v5 = 0xD00000000000002ALL;
  }

  if (*a1)
  {
    v6 = "e.alloy.facetime.messaging";
  }

  else
  {
    v6 = "systemApertureLayoutMode";
  }

  v7 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  result = @nonobjc IDSService.init(service:)(v5, v6 | 0x8000000000000000);
  if (result)
  {
    v9 = result;
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v10 = result;
      v11 = [objc_opt_self() sharedController];
      v12 = swift_allocObject();
      ReportSpamManager.init(idsService:imAccountController:imDaemonController:unknownContactChecker:)(v9, v10, v11, a2, a3);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void ReportSpamManager.reportFaceTimeCallSpam<A>(call:)()
{
  v3 = v0;
  OUTLINED_FUNCTION_19_30();
  ReportSpamManager.fetchLocalFaceTimeHandles()();
  v5 = specialized Collection.first.getter(v4);
  if (v6)
  {
    v7 = v5;
    v8 = v6;

    (*(v1 + 80))(__src, v7, v8, v2, v1);

    memcpy(__dst, __src, sizeof(__dst));
    ReportSpamManager.SpamDataModel.mapToDict.getter();
    v10 = v9;
    outlined destroy of ReportSpamManager.SpamDataModel(__src);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v11, static ReportSpamManager.logger);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_42();
      v15 = OUTLINED_FUNCTION_23();
      __dst[0] = v15;
      *v14 = 136315138;
      if (v10)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
        v16 = String.init<A>(reflecting:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, __dst);

      *(v14 + 4) = v29;
      _os_log_impl(&dword_1BBC58000, v12, v13, "ReportSpamManager: report spam, model.dictionary: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    v30 = *(v3 + 16);
    if (v10)
    {
      v31.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v31.super.isa = 0;
    }

    v32 = [v30 reportSpamMessage_];

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = OUTLINED_FUNCTION_25(v34);
    if (v32)
    {
      if (v35)
      {
        v36 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v36);
        v39 = "ReportSpamManager: report spam was sent successfully";
LABEL_24:
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v37, v38, v39);
        OUTLINED_FUNCTION_27();
      }
    }

    else if (v35)
    {
      v40 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v40);
      v39 = "ReportSpamManager: report spam was rejected for some reason";
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_124();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v19, static ReportSpamManager.logger);

  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v20))
  {
    v21 = OUTLINED_FUNCTION_42();
    v22 = OUTLINED_FUNCTION_23();
    __src[0] = v22;
    *v21 = 136315138;
    v23 = Set.description.getter();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, __src);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1BBC58000, oslog, v20, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_26:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_30_0();
}

BOOL ReportSpamManager.reportVideoMessagingSpam(call:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for RecentsCallItem(0);
  outlined init with copy of Date?(a1 + *(v7 + 36), v6);
  v8 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    outlined destroy of TapInteractionHandler?(v6, &_s10Foundation4DateVSgMd);
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v9 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v9, static ReportSpamManager.logger);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_25(v11))
    {
      goto LABEL_14;
    }

    v12 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v12);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v13, v14, "Could not report video message spam for call due to nil call date");
    goto LABEL_12;
  }

  Date.timeIntervalSince1970.getter();
  v16 = v15;
  (*(*(v8 - 8) + 8))(v6, v8);
  ReportSpamManager.fetchLocalFaceTimeHandles()();
  v18 = specialized Collection.first.getter(v17);
  if (!v19)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, static ReportSpamManager.logger);

    v10 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v10, v28))
    {

      goto LABEL_14;
    }

    v29 = OUTLINED_FUNCTION_42();
    v30 = OUTLINED_FUNCTION_23();
    v37 = v30;
    *v29 = 136315138;
    v31 = Set.description.getter();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v37);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1BBC58000, v10, v28, "Could not report video message spam for call due to zero registered facetime service IMAccount %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_27();
LABEL_12:
    OUTLINED_FUNCTION_27();
LABEL_14:

    return 0;
  }

  v20 = v18;
  v21 = v19;

  RecentsCallItem.tuHandles.getter();
  v23 = v22;
  v24 = swift_allocObject();
  v24[2] = v16;
  v24[3] = v20;
  v24[4] = v21;
  v25 = swift_allocObject();
  v25[2] = partial apply for closure #2 in ReportSpamManager.reportVideoMessagingSpam(call:);
  v25[3] = v2;
  v25[4] = v23;
  v25[5] = partial apply for closure #1 in ReportSpamManager.reportVideoMessagingSpam(call:);
  v25[6] = v24;

  v26 = specialized Sequence<>.contains(_:)(1, v23, partial apply for specialized closure #1 in LazyMapSequence<>.map<A>(_:), v25);

  return v26;
}

id one-time initialization function for faceTime()
{
  type metadata accessor for ReportSpamManager();
  v1 = 1;
  result = ReportSpamManager.__allocating_init(idsServiceType:unknownContactChecker:)(&v1, 0, 0);
  static ReportSpamManager.faceTime = result;
  return result;
}

uint64_t static ReportSpamManager.faceTime.getter()
{
  if (one-time initialization token for faceTime != -1)
  {
    OUTLINED_FUNCTION_9_62();
  }
}

uint64_t ReportSpamManager.logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_124();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static ReportSpamManager.logger);
}

uint64_t static ReportSpamManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_124();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static ReportSpamManager.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

ConversationKit::ReportSpamManager::IDSServiceType_optional __swiftcall ReportSpamManager.IDSServiceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ReportSpamManager.IDSServiceType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t ReportSpamManager.IDSServiceType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReportSpamManager.IDSServiceType@<X0>(unint64_t *a1@<X8>)
{
  result = ReportSpamManager.IDSServiceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *ReportSpamManager.SpamDataModel.senderHandle.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void ReportSpamManager.SpamDataModel.mapToDict.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v985 = *(v0 + 32);
  v984 = *(v0 + 33);
  v982 = *(v0 + 34);
  v983 = *(v0 + 38);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v849 = *(v0 + 64);
  v882 = *(v0 + 48);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 88);
  v981[0] = *(v0 + 89);
  *(v981 + 3) = *(v0 + 92);
  v783 = *(v0 + 96);
  v816 = v7;
  v717 = *(v0 + 120);
  v750 = *(v0 + 104);
  v618 = *(v0 + 128);
  v651 = *(v0 + 112);
  v684 = *(v0 + 136);
  v10 = *(v0 + 160);
  v977 = *(v0 + 144);
  v978 = v10;
  v979 = *(v0 + 176);
  v980 = *(v0 + 192);
  v11 = Dictionary.init(dictionaryLiteral:)();
  *(&v973 + 1) = 0xEF737265626D656DLL;
  v12 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_2_107(v11, v13, MEMORY[0x1E69E6168], v14, v15, v16, v17, v18, v384, v417, v451, v485, v518, v552, v585, v618, v651, v684, v717, v750, v783, v816, v849, v882, v915, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, 105);
  AnyHashable.init<A>(_:)();
  v974 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  *&v973 = v1;
  OUTLINED_FUNCTION_16_44(v974, v19, v20, v21, v22, v23, v24, v25, v385, v418, v452, v486, v519, v553, v586, v619, v652, v685, v718, v751, v784, v817, v850, v883, v916, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v973);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_111(isUniquelyReferenced_nonNull_native, v27, v28, v29, v30, v31, v32, v33, v386, v419, v453, v487, v520, v554, v587, v620, v653, v686, v719, v752, v785, v818, v851, v884, v917, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_21_30(v34, v35, v36, v37, v38, v39, v40, v41, v387, v420, v454, v488, v521, v555, v588, v621, v654, v687, v720, v753, v786, v819, v852, v885, v918, v948, *(&v948 + 1), v949, v950, v951);
  if (v9)
  {

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v42 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v42, static ReportSpamManager.logger);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v44))
    {
      goto LABEL_21;
    }

    v45 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v45);
    v48 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_20:
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v46, v47, v48);
    OUTLINED_FUNCTION_27();
LABEL_21:

    goto LABEL_22;
  }

  if (!v8)
  {

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v140 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v140, static ReportSpamManager.logger);
    v43 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v141))
    {
      goto LABEL_21;
    }

    v142 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v142);
    v48 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_16:

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_124();
    }

    v143 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v143, static ReportSpamManager.logger);
    v43 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v144))
    {
      goto LABEL_21;
    }

    v145 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v145);
    v48 = "senderHandle is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_20;
  }

  v556 = v2;
  v589 = v3;
  v49 = v6;

  v50 = TUCopyIDSFromIDForHandle();
  if (!v50)
  {

    goto LABEL_16;
  }

  v51 = v50;
  v421 = v49;
  v522 = v4;
  v52 = MEMORY[0x1BFB209B0](v5, v886);
  v53 = TUHandleForIDSCanonicalAddress();

  v489 = TUHandleForIDSCanonicalAddress();
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_2_107(v54, v56, v57, v58, v59, v60, v61, v62, v388, v421, v455, v489, v522, v556, v589, v622, v655, v688, v721, v754, v787, v820, v853, v886, v919, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v54);
  v63 = AnyHashable.init<A>(_:)();
  *&v973 = v788;
  *(&v973 + 1) = v755;
  OUTLINED_FUNCTION_16_44(v63, v64, v65, v66, v67, v68, v69, v70, v389, v422, v456, v490, v523, v557, v590, v623, v656, v689, v722, v755, v788, v821, v854, v887, v920, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v973);

  v71 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_111(v71, v72, v73, v74, v75, v76, v77, v78, v390, v423, v457, v491, v524, v558, v591, v624, v657, v690, v723, v756, v789, v822, v855, v888, v921, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_21_30(v79, v80, v81, v82, v83, v84, v85, v86, v391, v424, v458, v492, v525, v559, v592, v625, v658, v691, v724, v757, v790, v823, v856, v889, v922, v948, *(&v948 + 1), v949, v950, v951);
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v973 + 1) = v88;
  OUTLINED_FUNCTION_2_107(v87, v88, v89, v90, v91, v92, v93, v94, v392, v425, v459, v493, v526, v560, v593, v626, v659, v692, v725, v758, v791, v824, v857, v890, v923, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v87);
  AnyHashable.init<A>(_:)();
  v974 = MEMORY[0x1E69E63B0];
  *&v973 = v825;
  OUTLINED_FUNCTION_12_52(&v973);
  v95 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_111(v95, v96, v97, v98, v99, v100, v101, v102, v393, v426, v460, v494, v527, v561, v594, v627, v660, v693, v726, v759, v792, v825, v858, v891, v924, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_21_30(v103, v104, v105, v106, v107, v108, v109, v110, v394, v427, v461, v495, v528, v562, v595, v628, v661, v694, v727, v760, v793, v826, v859, v892, v925, v948, *(&v948 + 1), v949, v950, v951);
  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v973 + 1) = v112;
  OUTLINED_FUNCTION_2_107(v111, v112, v113, v114, v115, v116, v117, v118, v395, v428, v462, v496, v529, v563, v596, v629, v662, v695, v728, v761, v794, v827, v860, v893, v926, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v111);
  AnyHashable.init<A>(_:)();
  v396 = v53;
  v119 = TUCopyIDSFromIDForHandle();
  v463 = v5;
  if (v119)
  {
    v120 = v119;
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v122;

    v974 = v12;
    *&v973 = v121;
    *(&v973 + 1) = v5;
    OUTLINED_FUNCTION_12_52(&v973);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_111(v123, v124, v125, v126, v127, v128, v129, v130, v53, v429, v463, v497, v530, v564, v597, v630, v663, v696, v729, v762, v795, v828, v861, v894, v927, v948, *(&v948 + 1), v949, v950, v951);
    OUTLINED_FUNCTION_21_30(v131, v132, v133, v134, v135, v136, v137, v138, v397, v430, v464, v498, v531, v565, v598, v631, v664, v697, v730, v763, v796, v829, v862, v895, v928, v948, *(&v948 + 1), v949, v950, v951);
    v139 = v530;
  }

  else
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v146)
    {
      OUTLINED_FUNCTION_38_18();
      *&v975 = v11;
      v5 = *(v11 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      v147 = OUTLINED_FUNCTION_7_69();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v147, v148);
      v11 = v975;
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v149 + v55 * v150);
      v151 = OUTLINED_FUNCTION_30_21();
      outlined init with take of Any(v151, &v973);
      OUTLINED_FUNCTION_20_32();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      OUTLINED_FUNCTION_15_39();
    }

    v139 = v530;
    outlined destroy of AnyHashable(&v951);
    outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
  }

  OUTLINED_FUNCTION_28_30();
  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v973 + 1) = v153;
  v154 = MEMORY[0x1E69E6168];
  OUTLINED_FUNCTION_2_107(v152, v153, v155, v156, v157, v158, v159, v160, v396, v429, v463, v497, v530, v564, v597, v630, v663, v696, v729, v762, v795, v828, v861, v894, v927, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v152);
  AnyHashable.init<A>(_:)();
  v974 = v12;
  *&v973 = v863;
  *(&v973 + 1) = v8;
  OUTLINED_FUNCTION_12_52(&v973);
  v161 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_111(v161, v162, v163, v164, v165, v166, v167, v168, v398, v431, v465, v499, v532, v566, v599, v632, v665, v698, v731, v764, v797, v830, v863, v896, v929, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_21_30(v169, v170, v171, v172, v173, v174, v175, v176, v399, v432, v466, v500, v533, v567, v600, v633, v666, v699, v732, v765, v798, v831, v864, v897, v930, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_27_29();
  *(&v973 + 1) = v5;
  OUTLINED_FUNCTION_2_107(v177, v178, v179, v180, v181, v182, v183, v184, v400, v433, v467, v501, v534, v568, v601, v634, v667, v700, v733, v766, v799, v832, v865, v898, v931, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v185);
  v186 = AnyHashable.init<A>(_:)();
  if (v139)
  {
    v974 = v12;
    *&v973 = v569;
    *(&v973 + 1) = v139;
    OUTLINED_FUNCTION_16_44(v186, v187, v188, v189, v190, v191, v192, v193, v401, v434, v468, v502, v535, v569, v602, v635, v668, v701, v734, v767, v800, v833, v866, v899, v932, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v973);

    v194 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_111(v194, v195, v196, v197, v198, v199, v200, v201, v402, v435, v469, v503, v536, v570, v603, v636, v669, v702, v735, v768, v801, v834, v867, v900, v933, v948, *(&v948 + 1), v949, v950, v951);
    OUTLINED_FUNCTION_21_30(v202, v203, v204, v205, v206, v207, v208, v209, v403, v436, v470, v504, v537, v571, v604, v637, v670, v703, v736, v769, v802, v835, v868, v901, v934, v948, *(&v948 + 1), v949, v950, v951);
    v210 = v602;
  }

  else
  {
    OUTLINED_FUNCTION_15_39();
    outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v211)
    {
      OUTLINED_FUNCTION_38_18();
      *&v948 = v11;
      v5 = *(v11 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      OUTLINED_FUNCTION_8_67();
      OUTLINED_FUNCTION_28_30();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v212, v213);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v214 + v154 * v215);
      v216 = OUTLINED_FUNCTION_30_21();
      outlined init with take of Any(v216, &v975);
      OUTLINED_FUNCTION_20_32();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v975 = 0u;
      v976 = 0u;
    }

    v210 = v602;
    outlined destroy of AnyHashable(&v951);
    outlined destroy of TapInteractionHandler?(&v975, &_sypSgMd);
  }

  OUTLINED_FUNCTION_27_29();
  *(&v973 + 1) = 0xEB00000000687467;
  OUTLINED_FUNCTION_6_73(v217, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], v218, v219, v220, v221, v222, v401, v434, v468, v502, v535, v569, v602, v635, v668, v701, v734, v767, v800, v833, v866, v899, v932, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v223);
  AnyHashable.init<A>(_:)();
  if (v985)
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v224)
    {
      OUTLINED_FUNCTION_38_18();
      *&v975 = v11;
      v5 = *(v11 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      OUTLINED_FUNCTION_7_69();
      OUTLINED_FUNCTION_28_30();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v225, v226);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v227 + v210 * v228);
      v229 = OUTLINED_FUNCTION_30_21();
      outlined init with take of Any(v229, &v973);
      OUTLINED_FUNCTION_20_32();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      OUTLINED_FUNCTION_15_39();
    }

    outlined destroy of AnyHashable(&v951);
    v246 = outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
  }

  else
  {
    v974 = MEMORY[0x1E69E63B0];
    *&v973 = v210;
    OUTLINED_FUNCTION_12_52(&v973);
    v230 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_111(v230, v231, v232, v233, v234, v235, v236, v237, v404, v437, v471, v505, v538, v572, v605, v638, v671, v704, v737, v770, v803, v836, v869, v902, v935, v948, *(&v948 + 1), v949, v950, v951);
    v246 = OUTLINED_FUNCTION_21_30(v238, v239, v240, v241, v242, v243, v244, v245, v405, v438, v472, v506, v539, v573, v606, v639, v672, v705, v738, v771, v804, v837, v870, v903, v936, v948, *(&v948 + 1), v949, v950, v951);
  }

  *(&v973 + 1) = 0xE800000000000000;
  v254 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_6_73(v246, v247, v248, v249, v250, v251, v252, v253, v404, v437, v471, v505, v538, v572, v605, v638, v671, v704, v737, v770, v803, v836, v869, v902, v935, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, 104);
  AnyHashable.init<A>(_:)();
  v974 = MEMORY[0x1E69E6370];
  LOBYTE(v973) = v984;
  OUTLINED_FUNCTION_12_52(&v973);
  v255 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_111(v255, v256, v257, v258, v259, v260, v261, v262, v406, v439, v473, v507, v540, v574, v607, v640, v673, v706, v739, v772, v805, v838, v871, v904, v937, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_35_15(v263, v264, v265, v266, v267, v268, v269, v270, v407, v440, v474, v508, v541, v575, v608, v641, v674, v707, v740, v773, v806, v839, v872, v905, v938, v948, *(&v948 + 1), v949, v950, v951);
  OUTLINED_FUNCTION_27_29();
  *(&v973 + 1) = 0xEB00000000737574;
  OUTLINED_FUNCTION_6_73(v271, v272, v273, v274, v275, v276, v277, v278, v408, v441, v475, v509, v542, v576, v609, v642, v675, v708, v741, v774, v807, v840, v873, v906, v939, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v279);
  AnyHashable.init<A>(_:)();
  if (v742)
  {
    v974 = v254;
    *&v973 = v676;
    *(&v973 + 1) = v742;
    OUTLINED_FUNCTION_12_52(&v973);

    v280 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_91(v280, v281, v280, v282, v283, v284, v285, v286, v409, v442, v476, v510, v543, v577, v610, v643, v676, v709, v742, v775, v808, v841, v874, v907, v940, v12, *(&v948 + 1), v949, v950, v951);
    v295 = OUTLINED_FUNCTION_35_15(v287, v288, v289, v290, v291, v292, v293, v294, v410, v443, v477, v511, v544, v578, v611, v644, v677, v710, v743, v776, v809, v842, v875, v908, v941, v948, *(&v948 + 1), v949, v950, v951);
    v302 = v709;
  }

  else
  {
    OUTLINED_FUNCTION_15_39();
    outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
    v303 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v304)
    {
      v305 = v303;
      swift_isUniquelyReferenced_nonNull_native();
      *&v948 = v12;
      v5 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      OUTLINED_FUNCTION_8_67();
      OUTLINED_FUNCTION_28_30();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v306, v307);
      OUTLINED_FUNCTION_23_33();
      outlined init with take of Any((*(v12 + 56) + 32 * v305), &v975);
      OUTLINED_FUNCTION_20_32();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v975 = 0u;
      v976 = 0u;
    }

    v302 = v709;
    outlined destroy of AnyHashable(&v951);
    v295 = outlined destroy of TapInteractionHandler?(&v975, &_sypSgMd);
  }

  *(&v973 + 1) = v5;
  v308 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_6_73(v295, v296, MEMORY[0x1E69E6168], v297, v298, v299, v300, v301, v409, v442, v476, v510, v543, v577, v610, v643, v676, v709, v742, v775, v808, v841, v874, v907, v940, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, 108);
  v309 = AnyHashable.init<A>(_:)();
  if (v302)
  {
    v974 = v308;
    *&v973 = v645;
    *(&v973 + 1) = v302;
    OUTLINED_FUNCTION_16_44(v309, v310, v311, v312, v313, v314, v315, v316, v411, v444, v478, v512, v545, v579, v612, v645, v678, v711, v744, v777, v810, v843, v876, v909, v942, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v973);

    v317 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_91(v317, v318, v317, v319, v320, v321, v322, v323, v412, v445, v479, v513, v546, v580, v613, v646, v679, v712, v745, v778, v811, v844, v877, v910, v943, v12, *(&v948 + 1), v949, v950, v951);
    OUTLINED_FUNCTION_35_15(v324, v325, v326, v327, v328, v329, v330, v331, v413, v446, v480, v514, v547, v581, v614, v647, v680, v713, v746, v779, v812, v845, v878, v911, v944, v948, *(&v948 + 1), v949, v950, v951);
  }

  else
  {
    OUTLINED_FUNCTION_15_39();
    outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
    v332 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v333)
    {
      v334 = v332;
      swift_isUniquelyReferenced_nonNull_native();
      *&v948 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      v335 = OUTLINED_FUNCTION_8_67();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v335, v336);
      OUTLINED_FUNCTION_23_33();
      outlined init with take of Any((*(v12 + 56) + 32 * v334), &v975);
      OUTLINED_FUNCTION_20_32();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v975 = 0u;
      v976 = 0u;
    }

    outlined destroy of AnyHashable(&v951);
    outlined destroy of TapInteractionHandler?(&v975, &_sypSgMd);
  }

  v337 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v973 + 1) = v338;
  v339 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_6_73(v337, v338, MEMORY[0x1E69E6168], v340, v341, v342, v343, v344, v411, v444, v478, v512, v545, v579, v612, v645, v678, v711, v744, v777, v810, v843, v876, v909, v942, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v337);
  AnyHashable.init<A>(_:)();
  v345 = TUCopyIDSFromIDForHandle();
  if (v345)
  {
    v346 = v345;
    v347 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v349 = v348;

    v974 = v339;
    *&v973 = v347;
    *(&v973 + 1) = v349;
    OUTLINED_FUNCTION_16_44(v350, v351, v352, v353, v354, v355, v356, v357, v414, v447, v481, v515, v548, v582, v615, v648, v681, v714, v747, v780, v813, v846, v879, v912, v945, v948, *(&v948 + 1), v949, v950, v951, v952, v953, v954, v955, v956, v957, v958, v959, v960, v961, v962, v963, v964, v965, v966, v967, v968, v969, *(&v969 + 1), v970, *(&v970 + 1), v971, *(&v971 + 1), v972, v973);
    v358 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_4_91(v358, v359, v358, v360, v361, v362, v363, v364, v415, v448, v482, v516, v549, v583, v616, v649, v682, v715, v748, v781, v814, v847, v880, v913, v946, v12, *(&v948 + 1), v949, v950, v951);
    OUTLINED_FUNCTION_35_15(v365, v366, v367, v368, v369, v370, v371, v372, v416, v449, v483, v517, v550, v584, v617, v650, v683, v716, v749, v782, v815, v848, v881, v914, v947, v948, *(&v948 + 1), v949, v950, v951);
    v373 = v551;
    v375 = v450;
    v374 = v484;
  }

  else
  {
    v376 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v377)
    {
      v378 = v376;
      swift_isUniquelyReferenced_nonNull_native();
      *&v975 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      v379 = OUTLINED_FUNCTION_7_69();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v379, v380);
      v381 = v975;
      OUTLINED_FUNCTION_23_33();
      outlined init with take of Any((*(v381 + 56) + 32 * v378), &v973);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      OUTLINED_FUNCTION_15_39();
    }

    v373 = v548;
    v375 = v447;
    v374 = v481;
    outlined destroy of AnyHashable(&v951);
    outlined destroy of TapInteractionHandler?(&v973, &_sypSgMd);
  }

  OUTLINED_FUNCTION_24_7();
  v951 = 0xD00000000000001CLL;
  v952 = v382;
  AnyHashable.init<A>(_:)();
  v951 = v1;
  v952 = v582;
  v953 = v373;
  v954 = v615;
  LOBYTE(v955) = v985;
  BYTE1(v955) = v984;
  *(&v955 + 2) = v982;
  HIWORD(v955) = v983;
  v956 = v374;
  v957 = v912;
  v958 = v6;
  v959 = v879;
  v960 = v8;
  v961 = v846;
  LOBYTE(v962) = v9;
  *(&v962 + 1) = v981[0];
  HIDWORD(v962) = *(v981 + 3);
  v963 = v813;
  v964 = v780;
  v965 = v681;
  v966 = v747;
  v967 = v648;
  v968 = v714;
  v969 = v977;
  v970 = v978;
  v971 = v979;
  v972 = v980;
  v383 = ReportSpamManager.SpamDataModel.snapSpamDictionary.getter();
  *(&v976 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd);
  *&v975 = v383;
  outlined init with take of Any(&v975, &v948);
  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v948, &v973);
  outlined destroy of AnyHashable(&v973);

LABEL_22:
  OUTLINED_FUNCTION_30_0();
}

uint64_t ReportSpamManager.SpamDataModel.snapSpamDictionary.getter()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[24];

  v8 = Dictionary.init(dictionaryLiteral:)();
  *(&v157 + 1) = 0xEA0000000000656DLL;
  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_26_27(v8, v10, MEMORY[0x1E69E6168], v11, v12, v13, v14, v15, v137, v146, v155, *(&v155 + 1), v156, *(&v156 + 1), 102);
  v16 = AnyHashable.init<A>(_:)();
  if (v1)
  {
    v158 = v9;
    *&v157 = v2;
    *(&v157 + 1) = v1;
    OUTLINED_FUNCTION_37_23(v16, v17, v18, v19, v20, v21, v22, v23, v138, v147, v155, v156, *(&v156 + 1), v157);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_102(isUniquelyReferenced_nonNull_native, v25);
    v34 = OUTLINED_FUNCTION_36_21(v26, v27, v28, v29, v30, v31, v32, v33, v139, v148, v155);
  }

  else
  {
    specialized __RawDictionaryStorage.find<A>(_:)();
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_38_18();
      *&v155 = v8;
      v43 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v42, v43);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v44);
      v45 = OUTLINED_FUNCTION_30_21();
      outlined init with take of Any(v45, &v157);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      OUTLINED_FUNCTION_29_22();
    }

    outlined destroy of AnyHashable(v159);
    v34 = outlined destroy of TapInteractionHandler?(&v157, &_sypSgMd);
  }

  *(&v157 + 1) = 0xE900000000000065;
  v46 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_26_27(v34, v35, MEMORY[0x1E69E6168], v36, v37, v38, v39, v40, v138, v147, v155, *(&v155 + 1), v156, *(&v156 + 1), 108);
  v47 = AnyHashable.init<A>(_:)();
  if (v3)
  {
    v158 = v46;
    *&v157 = v4;
    *(&v157 + 1) = v3;
    OUTLINED_FUNCTION_37_23(v47, v48, v49, v50, v51, v52, v53, v54, v140, v149, v155, v156, *(&v156 + 1), v157);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_102(v55, v56);
    v65 = OUTLINED_FUNCTION_36_21(v57, v58, v59, v60, v61, v62, v63, v64, v141, v150, v155);
  }

  else
  {
    OUTLINED_FUNCTION_29_22();
    outlined destroy of TapInteractionHandler?(&v157, &_sypSgMd);
    v72 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v73)
    {
      v74 = v72;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v149 = v8;
      v76 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v75, v76);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v77 + v74 * v78);
      outlined init with take of Any((*(v8 + 56) + 32 * v74), &v155);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v155 = 0u;
      v156 = 0u;
    }

    outlined destroy of AnyHashable(v159);
    v65 = outlined destroy of TapInteractionHandler?(&v155, &_sypSgMd);
  }

  *(&v157 + 1) = 0xE800000000000000;
  v79 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_26_27(v65, v66, MEMORY[0x1E69E6168], v67, v68, v69, v70, v71, v140, v149, v155, *(&v155 + 1), v156, *(&v156 + 1), 114);
  v80 = AnyHashable.init<A>(_:)();
  if (v5)
  {
    v158 = v79;
    *&v157 = v6;
    *(&v157 + 1) = v5;
    OUTLINED_FUNCTION_37_23(v80, v81, v82, v83, v84, v85, v86, v87, v142, v151, v155, v156, *(&v156 + 1), v157);

    v88 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_102(v88, v89);
    OUTLINED_FUNCTION_36_21(v90, v91, v92, v93, v94, v95, v96, v97, v143, v152, v155);
  }

  else
  {
    OUTLINED_FUNCTION_29_22();
    outlined destroy of TapInteractionHandler?(&v157, &_sypSgMd);
    v98 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v99)
    {
      v100 = v98;
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v151 = v8;
      v102 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v101, v102);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v103 + v100 * v104);
      outlined init with take of Any((*(v8 + 56) + 32 * v100), &v155);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v155 = 0u;
      v156 = 0u;
    }

    outlined destroy of AnyHashable(v159);
    outlined destroy of TapInteractionHandler?(&v155, &_sypSgMd);
  }

  OUTLINED_FUNCTION_24_7();
  *(&v157 + 1) = v105;
  OUTLINED_FUNCTION_26_27(v106, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], v107, v108, v109, v110, v111, v142, v151, v155, *(&v155 + 1), v156, *(&v156 + 1), 23);
  AnyHashable.init<A>(_:)();
  if (v7)
  {
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd);
    *&v157 = v7;
    OUTLINED_FUNCTION_37_23(v158, v112, v113, v114, v115, v116, v117, v118, v144, v153, v155, v156, *(&v156 + 1), v157);

    v119 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_3_102(v119, v120);
    OUTLINED_FUNCTION_36_21(v121, v122, v123, v124, v125, v126, v127, v128, v145, v154, v155);
  }

  else
  {
    OUTLINED_FUNCTION_29_22();
    outlined destroy of TapInteractionHandler?(&v157, &_sypSgMd);
    v129 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v130)
    {
      v131 = v129;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *(v8 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v132, v133);
      OUTLINED_FUNCTION_11_63();
      outlined destroy of AnyHashable(v134 + v131 * v135);
      outlined init with take of Any((*(v8 + 56) + 32 * v131), &v155);
      OUTLINED_FUNCTION_46();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v155 = 0u;
      v156 = 0u;
    }

    outlined destroy of AnyHashable(v159);
    outlined destroy of TapInteractionHandler?(&v155, &_sypSgMd);
  }

  return v8;
}

__n128 ReportSpamManager.SpamDataModel.init(invitedMembers:callType:callLength:hasLink:recipientHandleValue:senderHandle:messageId:spamTime:messageKey:callStatus:linkName:snapFirstName:snapLastName:snapRecordId:snapRecordInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 128) = a16;
  *(a9 + 144) = a17;
  *(a9 + 160) = a18;
  *(a9 + 176) = a19;
  *(a9 + 192) = a20;
  return result;
}

uint64_t ReportSpamManager.__allocating_init(idsService:imAccountController:imDaemonController:unknownContactChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_30();
  OUTLINED_FUNCTION_18_6();
  v10 = swift_allocObject();
  ReportSpamManager.init(idsService:imAccountController:imDaemonController:unknownContactChecker:)(v7, v6, v5, a4, a5);
  return v10;
}

void *ReportSpamManager.init(idsService:imAccountController:imDaemonController:unknownContactChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_19_30();
  v5[6] = 0;
  swift_unknownObjectWeakInit();
  v5[2] = v8;
  v5[3] = v7;
  v5[4] = v6;
  v5[6] = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

void ReportSpamManager.fetchLocalFaceTimeHandles()()
{
  v1 = v0;
  [*(v0 + 32) blockUntilConnected];
  v2 = objc_opt_self();
  v3 = &selRef__iconForResourceProxy_format_;
  v4 = [v2 facetimeService];
  v5 = IMPreferredAccountForService();

  if (v5)
  {
    if ([v5 registrationStatus] == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BA940;
      outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v5);
      if (v7)
      {
        v8 = String.lowercased()();

        *(inited + 32) = v8;
        _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(inited);

LABEL_40:
        OUTLINED_FUNCTION_31_0();
        return;
      }

LABEL_48:
      __break(1u);
      return;
    }
  }

  v9 = *(v1 + 24);
  v10 = [v2 facetimeService];
  v11 = &selRef__iconForResourceProxy_format_;
  v12 = [v9 accountsForService_];

  if (!v12)
  {
    if (one-time initialization token for videoMessaging != -1)
    {
LABEL_46:
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v24, &static Logger.videoMessaging);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_42();
      v28 = OUTLINED_FUNCTION_23();
      *v27 = 136315138;
      v29 = *(v1 + 24);
      v30 = [v2 *(v3 + 3584)];
      v31 = [v29 v11[425]];

      if (v31)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9IMAccountCGSgMd);
      Optional.debugDescription.getter();

      v34 = OUTLINED_FUNCTION_46();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v36);

      *(v27 + 4) = v37;
      _os_log_impl(&dword_1BBC58000, v25, v26, "Could not find any facetime service IMAccount in IMAccountController %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_40;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IMAccount);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v13 = specialized Array.count.getter(v1);
  v2 = 0;
  v11 = (v1 & 0xC000000000000001);
  while (v13 != v2)
  {
    if (v11)
    {
      v14 = MEMORY[0x1BFB22010](v2, v1);
    }

    else
    {
      if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v14 = *(v1 + 8 * v2 + 32);
    }

    v15 = v14;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ([v14 registrationStatus] == 5)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v2;
  }

  v1 = v38;
  v16 = specialized Array.count.getter(v38);
  if (v16)
  {
    v17 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v18 = v3;
      v11 = (v38 & 0xC000000000000001);
      while (1)
      {
        v19 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_43;
        }

        if (v11)
        {
          v20 = MEMORY[0x1BFB22010](v2, v38);
        }

        else
        {
          if (v2 >= *(v38 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v38 + 8 * v2 + 32);
        }

        v21 = v20;
        outlined bridged method (pb) of @objc IMAccount.strippedLogin.getter(v20);
        if (!v22)
        {
          __break(1u);
          goto LABEL_48;
        }

        v23 = String.lowercased()();

        v3 = *(v18 + 16);
        if (v3 >= *(v18 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v18 + 16) = v3 + 1;
        *(v18 + 16 * v3 + 32) = v23;
        ++v2;
        if (v19 == v17)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_35:

  OUTLINED_FUNCTION_31_0();

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v32);
}

uint64_t closure #1 in ReportSpamManager.reportVideoMessagingSpam(call:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = Double.description.getter();
  v10 = v9;
  v11 = [v7 value];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *a4 = v8;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = v14;
  a4[4] = a2;
  a4[5] = a3;
}

uint64_t SpamMessageDataModel.init(timeStamp:messageType:callerHandle:recipientHandle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void closure #2 in ReportSpamManager.reportVideoMessagingSpam(call:)(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = SpamMessageDataModel.dictionary.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  v6 = v5;

  v7 = outlined bridged method (mbnn) of @objc IDSService.reportSpamMessage(_:)(v6, v3);

  *a2 = v7 & 1;
}

uint64_t SpamMessageDataModel.dictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSgtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB990;
  *(inited + 32) = 0x6D617473656D6974;
  *(inited + 40) = 0xE900000000000070;
  OUTLINED_FUNCTION_24_7();
  v8[8] = 0xD000000000000011;
  v8[9] = v9;
  v8[6] = v2;
  v8[7] = v1;
  OUTLINED_FUNCTION_24_7();
  *(v11 + 80) = v10 + 7;
  *(v11 + 88) = v12;
  OUTLINED_FUNCTION_27_29();
  v14[12] = v13 | 0x6148726500000000;
  v14[13] = 0xEC000000656C646ELL;
  v14[14] = v4;
  v14[15] = v3;
  v14[16] = 0x6E65697069636572;
  v14[17] = 0xEF656C646E614874;
  v14[18] = v6;
  v14[19] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  return Dictionary.init(dictionaryLiteral:)();
}

void static ReportSpamManager.getContact(forHandle:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;
  *(inited + 32) = a1;
  v3 = a1;
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
  if (one-time initialization token for faceTime != -1)
  {
LABEL_14:
    swift_once();
  }

  specialized Sequence.compactMap<A>(_:)(v4);
  v6 = v5;

  v7 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v8 = *(v6 + 16);
LABEL_3:
  v9 = 56 * v7 + 32;
  while (v8 != v7)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    ++v7;
    v10 = *(v6 + v9);
    v9 += 56;
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1BFB20CC0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v12;
      goto LABEL_3;
    }
  }

  if (!specialized Array.count.getter(v4))
  {
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t ReportSpamManager.__deallocating_deinit()
{
  ReportSpamManager.deinit();
  OUTLINED_FUNCTION_18_6();

  return swift_deallocClassInstance();
}

BOOL SpamMessageDataModel.SpamMessageType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SpamMessageDataModel.SpamMessageType.init(rawValue:), v2);

  return v3 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SpamMessageDataModel.SpamMessageType@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SpamMessageDataModel.SpamMessageType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SpamMessageDataModel.SpamMessageType@<X0>(void *a1@<X8>)
{
  result = SpamMessageDataModel.SpamMessageType.rawValue.getter();
  *a1 = 0xD000000000000018;
  a1[1] = v3;
  return result;
}

id TUHandle.init(_:)(void *a1)
{
  v2 = closure #1 in TUHandle.init(_:)(a1);
  v3 = [a1 value];
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x1BFB209B0](v4);
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v2 value:v3];

  return v5;
}

id closure #1 in TUHandle.init(_:)(void *a1)
{
  result = [a1 type];
  v2 = 1;
  if (result == 2)
  {
    v2 = 2;
  }

  if (result != 3)
  {
    return v2;
  }

  return result;
}

uint64_t ReportSpamManager.shouldShowBlockReportActions(for:callItem:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    if (ReportSpamManager.isValidFaceTimeCall(_:)(v2))
    {
      v3 = ReportSpamManager.isInitiatorUnknown(in:)(v2);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

BOOL ReportSpamManager.isValidFaceTimeCall(_:)(void *a1)
{
  v2 = outlined bridged method (pb) of @objc CHRecentCall.serviceProvider.getter(a1);
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v4)
  {

    return 0;
  }

  if (v2 == v5 && v4 == v6)
  {

    goto LABEL_10;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v8)
  {
LABEL_10:
    v10 = [a1 callStatus];
    return (*MEMORY[0x1E69935C0] & v10) != 0;
  }

  return result;
}

id ReportSpamManager.isInitiatorUnknown(in:)(void *a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v2 = dispatch thunk of UnknownContactChecking.isInitiatorUnknown(in:)();
    swift_unknownObjectRelease();
    return (v2 & 1);
  }

  else
  {
    result = [a1 initiator];
    if (result)
    {
      v4 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
      v6 = v4;
      *(inited + 32) = TUHandle.init(_:)(v6);
      v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(inited);
      if (one-time initialization token for faceTime != -1)
      {
LABEL_16:
        swift_once();
      }

      specialized Sequence.compactMap<A>(_:)(v7);
      v9 = v8;

      v10 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      v16 = MEMORY[0x1E69E7CC0];
      v11 = *(v9 + 16);
LABEL_6:
      v12 = 56 * v10 + 32;
      while (v11 != v10)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        ++v10;
        v13 = *(v9 + v12);
        v12 += 56;
        if (v13)
        {
          v14 = v13;
          MEMORY[0x1BFB20CC0]();
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v16;
          goto LABEL_6;
        }
      }

      v15 = specialized Array.count.getter(v7);

      return (v15 == 0);
    }
  }

  return result;
}