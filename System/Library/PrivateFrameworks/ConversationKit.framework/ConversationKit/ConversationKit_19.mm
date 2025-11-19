Swift::Void __swiftcall PeoplePickerViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  PeoplePickerViewController.setUpNavigationBar()();
  PeoplePickerViewController.updateState()();
  [*&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] becomeFirstResponder];
}

void PeoplePickerViewController.setUpNavigationBar()()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationBar];
    [v3 setPrefersLargeTitles_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    v5 = MEMORY[0x1E69DB650];
    *(inited + 16) = xmmword_1BC4BA940;
    v6 = *v5;
    *(inited + 32) = *v5;
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 labelColor];
    *(inited + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
    *(inited + 40) = v9;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
    v10 = Dictionary.init(dictionaryLiteral:)();
    outlined bridged method (mbnn) of @objc UINavigationBar.largeTitleTextAttributes.setter(v10, v3);
    type metadata accessor for PeoplePickerViewController();
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v11 = v0;
    @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
    v13 = v12;
    v14 = [v11 navigationItem];
    [v14 setRightBarButtonItem_];

    PeoplePickerViewController.updateNavigationTitle()();
    v15 = [v11 navigationItem];
    [v15 _setLargeTitleTwoLineMode_];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.conversationKit);
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v17, "Navigation controller doesn't exist", v18, 2u);
      MEMORY[0x1BFB23DF0](v18, -1, -1);
    }
  }
}

void PeoplePickerViewController.updateState()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient);
    Set.Iterator.init(_cocoa:)();
    v3 = v68[4];
    v4 = v68[5];
    v5 = v68[6];
    v6 = v68[7];
    v7 = v68[8];
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = ((v5 + 64) >> 6);
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_20;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v18 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
      PeoplePickerViewController.tintColor(for:isChild:)(v16, 0);
      v20 = v19;
      [v18 setTintColor:v19 forRecipient:v16];

      v21 = PeoplePickerViewController.preferredRecipient(for:)(v16);
      if (v21)
      {
        v22 = v21;
        [v18 setPreferredRecipient:v21 forRecipient:v16];
      }

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v67 = v17;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
        swift_dynamicCast();
        v16 = v68[0];
        v14 = v6;
        v15 = v7;
        if (v68[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_20:
  outlined consume of Set<TUHandle>.Iterator._Variant();
  v23 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel];
  PeoplePickerViewController.activeParticipantsAddresses()();
  v25 = v24;
  v26 = PeoplePickerViewController.currentRecipientsAddresses()();
  specialized Set.union<A>(_:)(v26, v25);
  v27 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style;
  LOBYTE(v68[0]) = v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style];
  PeoplePickerViewModel.update(for:style:)(v28, v68);

  PeoplePickerViewController.updateActionBarState()();
  PeoplePickerViewController.updateHelpText()();
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo18CNComposeRecipientC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CD0];
  }

  v68[0] = v29;
  v30 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController];
  v31 = [v30 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = specialized Array.count.getter(v32);
  v34 = v33;
  v66 = v32;
  v65 = v23;
  if (!v33)
  {
    v37 = 0x8000;
    goto LABEL_36;
  }

  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_67;
  }

  v35 = 0;
  v36 = v32 & 0xC000000000000001;
  v37 = 0x8000;
  do
  {
    if (v36)
    {
      v38 = MEMORY[0x1BFB22010](v35, v32);
    }

    else
    {
      v38 = *(v32 + 8 * v35 + 32);
    }

    v39 = v38;
    PeoplePickerViewController.presentationOptions(for:)(v38);
    v41 = v40;
    if ((v40 & 0x10001) != 0)
    {
      [v30 setPresentationOptions:v40 forRecipient:v39];
      specialized Set._Variant.insert(_:)(&v67, v39);
    }

    else
    {

      if ((v41 & 2) != 0)
      {
        v37 = 2;
      }
    }

    ++v35;
    v32 = v66;
  }

  while (v34 != v35);
LABEL_36:

  specialized _ArrayProtocol.filter(_:)(v42, v68);
  PeoplePickerViewController.updatePresentationOptions(_:for:)(v37, v43);

  if (specialized Set.count.getter(v68[0]) >= 1)
  {
    PeoplePickerViewController.setActionUnavailable()();
  }

  v44 = *&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation];
  if (v44)
  {
    v6 = v44;
    v45 = [v6 link];
    if (!v45)
    {
      goto LABEL_50;
    }

    v46 = [v6 otherInvitedHandles];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = specialized Set.count.getter(v47);

    if (v48)
    {
      goto LABEL_50;
    }

    v32 = v66;
    if (v1[v27] != 1 || specialized Array.count.getter(v66) != 1 || !v34)
    {
      goto LABEL_50;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v66 & 0xC000000000000001) == 0, v66);
    if ((v66 & 0xC000000000000001) == 0)
    {
      v49 = *(v66 + 32);
LABEL_46:
      v11 = v49;
      if (([v49 isGroup] & 1) != 0 || *(*&v1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses] + 16) > 1uLL || PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()())
      {

        goto LABEL_51;
      }

LABEL_56:
      v53 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v11, &selRef_address);
      if (v54)
      {
        v55 = MEMORY[0x1BFB209B0](v53);
      }

      else
      {
        v55 = 0;
      }

      v56 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v56)
      {

        goto LABEL_54;
      }

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60._countAndFlagsBits = v57;
      v60._object = v59;
      if (PeoplePickerViewModel.isWebCapableAvailable(for:)(v60))
      {
        v61._countAndFlagsBits = v57;
        v61._object = v59;
        v62 = PeoplePickerViewModel.isModernAvailable(for:)(v61);

        if (!v62)
        {
          PeoplePickerViewController.setActionUnavailable()();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BC4BAC30;
          *(inited + 32) = v11;
          v64 = v11;
          PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 3, inited);

          swift_setDeallocating();
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          goto LABEL_51;
        }
      }

      else
      {
      }

LABEL_50:
      goto LABEL_51;
    }

LABEL_67:
    v49 = MEMORY[0x1BFB22010](0, v32);
    goto LABEL_46;
  }

LABEL_51:
  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    [v50 setNeedsLayout];

    v52 = [v1 view];
    if (v52)
    {
      v11 = v52;

      [v11 layoutIfNeeded];

LABEL_54:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t PeoplePickerViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v13.receiver = v3;
  v13.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v13, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  outlined init with copy of LinkShareCoordinatorProtocol?(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkShareCoordinator, v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  if (!v12)
  {
    return outlined destroy of TapInteractionHandler?(v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  }

  outlined init with copy of IDSLookupManager(v11, v10);
  outlined destroy of TapInteractionHandler?(v11, &_s15ConversationKit28LinkShareCoordinatorProtocol_pSgMd);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v7 = OUTLINED_FUNCTION_44_0();
  v8(v7);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

Swift::Void __swiftcall PeoplePickerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PeoplePickerViewController();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x370))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PeoplePickerViewController.willDismissViewAnimated(_:)(Swift::Bool a1)
{
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:a1 completion:0];
  }
}

void PeoplePickerViewController.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
    OUTLINED_FUNCTION_1_65();
    lazy protocol witness table accessor for type TUCall and conformance TUCall(v2, &lazy cache variable for type metadata for UIPress);
    Set.Iterator.init(_cocoa:)();
    v4 = v35;
    v3 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v6;
  if (v7)
  {
LABEL_12:
    OUTLINED_FUNCTION_7_1();
    v16 = v15 & v14;
    v18 = *(*(v4 + 48) + ((v13 << 9) | (8 * v17)));
    if (!v18)
    {
LABEL_29:
      OUTLINED_FUNCTION_4_42();
      outlined consume of Set<TUHandle>.Iterator._Variant();
      return;
    }

    while (1)
    {
      v19 = [v18 key];
      if (v19)
      {
        break;
      }

      v20 = v18;
LABEL_27:

      v6 = v13;
      v7 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
        swift_dynamicCast();
        v18 = v33;
        v13 = v6;
        v16 = v7;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    v20 = v19;
    v21 = [v19 charactersIgnoringModifiers];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
        OUTLINED_FUNCTION_1_65();
        lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type UIPress and conformance NSObject, &lazy cache variable for type metadata for UIPress);
        isa = Set._bridgeToObjectiveC()().super.isa;
        v29 = type metadata accessor for PeoplePickerViewController();
        v34.receiver = v32;
        v34.super_class = v29;
        objc_msgSendSuper2(&v34, sel_pressesBegan_withEvent_, isa, a2);

LABEL_26:
        goto LABEL_27;
      }
    }

    PeoplePickerViewController.handleCancel()();
    goto LABEL_26;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_29;
    }

    ++v12;
    if (*(v3 + 8 * v13))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t PeoplePickerViewController.handleCancel()()
{
  v1 = PeoplePickerViewController.reset()();
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x370))(v1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id PeoplePickerViewController.FakeFooterView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t (*protocol witness for PeoplePickerViewControllerProtocol.delegate.modify in conformance PeoplePickerViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x380))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for PeoplePickerViewControllerProtocol.appName.modify in conformance PeoplePickerViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x398))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for PeoplePickerViewControllerProtocol.stagedActivity.modify in conformance PeoplePickerViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3B0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for PeoplePickerViewControllerProtocol.initialRecipientDestinations.modify in conformance PeoplePickerViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t PeoplePickerViewController.handleIDSStatusChanged(notification:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  v7 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in PeoplePickerViewController.handleIDSStatusChanged(notification:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = v7;
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v6, v3, v10);
  _Block_release(v10);

  (*(v14 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v13);
}

uint64_t PeoplePickerViewController.cancelButtonTapped()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.info.getter();
  os_log(_:dso:log:type:_:)();

  return PeoplePickerViewController.handleCancel()();
}

id PeoplePickerViewController.reset()()
{
  v1 = v0;
  PeoplePickerViewController.cancelQueries()();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVySSSo8NSNumberC_GMd);
  Dictionary._Variant.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7CD0];
  *(v1 + v2) = MEMORY[0x1E69E7CD0];

  v4 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients;
  swift_beginAccess();
  *(v1 + v4) = v3;

  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations;
  swift_beginAccess();
  *(v1 + v5) = v3;

  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) = v3;

  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
  *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = 0;

  return [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) prepareForReuse];
}

uint64_t PeoplePickerViewController.startCall(videoEnabled:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13MessagesGroupVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v6 + 16), 0);
  v7 = [*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  PeoplePickerViewController.pickablePersonItems(for:)(v8);
  v10 = v9;

  v12 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & *v1) + 0x370))(v11))
  {
  }

  v14 = v13;
  v15 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_videoButton;
  v23 = a1 & 1;
  if ((a1 & 1) == 0)
  {
    v15 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_audioButton;
  }

  v16 = *(v1 + *v15);
  ObjectType = swift_getObjectType();
  v17 = *((*v12 & *v1) + 0x2D8);
  v18 = v16;
  v19 = v17();
  CNAutocompleteSearchController.messagesGroup.getter(v5);
  (*(v14 + 24))(v10, v23, v18, v19, v5, ObjectType, v14);

  swift_unknownObjectRelease();

  return outlined destroy of TapInteractionHandler?(v5, &_s15ConversationKit13MessagesGroupVSgMd);
}

id PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(char a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Array.count.getter(v6);

  v8 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_reporter);
  v9 = *off_1E7FE3DA0[a1];

  return [v8 v9];
}

void PeoplePickerViewController.pickablePersonItems(for:)(uint64_t a1)
{
  v2 = specialized Array.count.getter(a1);
  v3 = 0;
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v42 = a1 & 0xC000000000000001;
  v38 = a1;
  v40 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v39 = v2;
  while (v3 != v2)
  {
    v47 = v4;
    if (v42)
    {
      v5 = MEMORY[0x1BFB22010](v3, v38);
    }

    else
    {
      if (v3 >= *(v41 + 16))
      {
        goto LABEL_59;
      }

      v5 = *(v40 + 8 * v3);
    }

    v6 = v5;
    v7 = __OFADD__(v3++, 1);
    if (v7)
    {
      goto LABEL_58;
    }

    if ([v5 isGroup])
    {
      v44 = v3;
      v8 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v6);
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x1E69E7CC0];
        v48[0] = MEMORY[0x1E69E7CC0];
        v11 = specialized Array.count.getter(v8);
        v12 = 0;
        while (1)
        {
          if (v11 == v12)
          {

            v3 = v44;
            goto LABEL_24;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1BFB22010](v12, v9);
          }

          else
          {
            if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v13 = *(v9 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = PeoplePickerViewController.pickablePerson(for:)(v13);

          ++v12;
          if (v16)
          {
            MEMORY[0x1BFB20CC0]();
            if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v10 = v48[0];
            v12 = v15;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v17 = PeoplePickerViewController.pickablePerson(for:)(v6);
    if (v17)
    {
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1BC4BAC30;
      *(v10 + 32) = v18;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v4 = v47;
    if (v10 >> 62)
    {
      v19 = __CocoaSet.count.getter();
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v47 >> 62;
    if (v47 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v21 + v19;
    if (__OFADD__(v21, v19))
    {
      goto LABEL_60;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v20)
      {
LABEL_34:
        __CocoaSet.count.getter();
      }

LABEL_35:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_36;
    }

    if (v20)
    {
      goto LABEL_34;
    }

    v23 = v47 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_35;
    }

LABEL_36:
    v46 = v19;
    v24 = *(v23 + 16);
    v25 = (*(v23 + 24) >> 1) - v24;
    v26 = v23 + 8 * v24;
    v43 = v23;
    if (v10 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (!v28)
      {
        goto LABEL_50;
      }

      v29 = v28;
      v30 = __CocoaSet.count.getter();
      if (v25 < v30)
      {
        goto LABEL_63;
      }

      if (v29 < 1)
      {
        goto LABEL_65;
      }

      v27 = v30;
      v45 = v3;
      v31 = v26 + 32;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [PickablePerson] and conformance [A], &_sSay15ConversationKit14PickablePersonCGMd);
      for (i = 0; i != v29; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd);
        v33 = specialized protocol witness for Collection.subscript.read in conformance [A](v48, i, v10);
        v35 = *v34;
        v33(v48, 0);
        *(v31 + 8 * i) = v35;
      }

      v3 = v45;
LABEL_46:

      v2 = v39;
      if (v27 < v46)
      {
        goto LABEL_61;
      }

      if (v27 > 0)
      {
        v36 = *(v43 + 16);
        v7 = __OFADD__(v36, v27);
        v37 = v36 + v27;
        if (v7)
        {
          goto LABEL_62;
        }

        *(v43 + 16) = v37;
      }
    }

    else
    {
      v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        if (v25 < v27)
        {
          goto LABEL_64;
        }

        type metadata accessor for PickablePerson();
        swift_arrayInitWithCopy();
        goto LABEL_46;
      }

LABEL_50:

      v2 = v39;
      if (v46 > 0)
      {
        goto LABEL_61;
      }
    }
  }
}

void PeoplePickerViewController.addPeople()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v96 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v95 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v92 - v9;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v98 = &v92 - v12;
  v13 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v14 = OUTLINED_FUNCTION_51_5();

  PeoplePickerViewController.pickablePersonItems(for:)(v14);
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  if (one-time initialization token for peoplePicker != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = __swift_project_value_buffer(v19, static Logger.peoplePicker);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_33();
    *v23 = 0;
    _os_log_impl(&dword_1BBC58000, v21, v22, "Add people.", v23, 2u);
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_20();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_37_0();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v16;
  v25[4] = v17;
  v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (!v26)
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v36))
    {
      v37 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_50_0(v37);
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v38, v39, "currentConversation is nil.");
      OUTLINED_FUNCTION_26();
    }

    closure #1 in PeoplePickerViewController.addPeople()(v24, v16, v17);

    return;
  }

  v27 = v26;
  v28 = [v27 link];
  v100 = v20;
  v101 = v27;
  if (!v28)
  {

    goto LABEL_25;
  }

  v93 = v25;
  v94 = v17;

  v29 = [v27 otherInvitedHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v30, &lazy cache variable for type metadata for TUHandle);
  v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = specialized Set.count.getter(v31);

  if (v32 < 1)
  {

    v25 = v93;
    v17 = v94;
    goto LABEL_25;
  }

  if (specialized Array.count.getter(v14) != 1)
  {

    v17 = v94;
LABEL_24:
    v25 = v93;
    goto LABEL_25;
  }

  v17 = v94;
  if (*(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16) > 1uLL || !specialized Array.count.getter(v14))
  {

    goto LABEL_24;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v14 & 0xC000000000000001) == 0, v14);
  v25 = v93;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1BFB22010](0, v14);
  }

  else
  {
    v33 = *(v14 + 32);
  }

  v34 = v33;

  if ([v34 isGroup])
  {
  }

  else
  {
    v92 = v34;
    v79 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v34, &selRef_address);
    if (v80)
    {
      v81 = MEMORY[0x1BFB209B0](v79);
    }

    else
    {
      v81 = 0;
    }

    v82 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v82)
    {
      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      v86._countAndFlagsBits = v83;
      v86._object = v85;
      v87 = PeoplePickerViewModel.isWebCapableAvailable(for:)(v86);

      if (v87)
      {
        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();
        v90 = os_log_type_enabled(v88, v89);
        v17 = v94;
        if (v90)
        {
          v91 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_50_0(v91);
          _os_log_impl(&dword_1BBC58000, v88, v89, "shouldAddOtherInvitedToRemoteMembers = true", v85, 2u);
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_3_5();
        *v18 = 1;
        v43 = v99;
        goto LABEL_28;
      }

      v17 = v94;
    }

    else
    {
    }
  }

LABEL_25:
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = OUTLINED_FUNCTION_25(v41);
  v43 = v99;
  if (v42)
  {
    v44 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_50_0(v44);
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v45, v46, "shouldAddOtherInvitedToRemoteMembers = false");
    OUTLINED_FUNCTION_26();
  }

LABEL_28:
  v47 = v101;
  v48 = [v101 messagesGroupUUID];
  if (v48)
  {
    v49 = v48;
    v50 = v98;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    __swift_storeEnumTagSinglePayload(v50, 0, 1, v2);
    outlined destroy of TapInteractionHandler?(v50, &_s10Foundation4UUIDVSgMd);
    v51 = PeoplePickerViewController.currentConversationIsAVLess.getter();
    v47 = v101;
    if ((v51 & 1) == 0)
    {

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v53))
      {
        v54 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v54);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v55, v56, "calling PlatformAlert.confirmAddToMessagesGroup");
        OUTLINED_FUNCTION_26();
      }

      v57 = type metadata accessor for PlatformAlert();

      specialized static PlatformAlert.confirmAddToMessagesGroup(fromViewController:_:)(v1, v57, partial apply for closure #1 in PeoplePickerViewController.addPeople(), v25, v58, v59, v60, v61, v92, v93, v94, v95, SWORD2(v95), SBYTE6(v95), SHIBYTE(v95), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);

      return;
    }
  }

  else
  {
    v62 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v2);
    outlined destroy of TapInteractionHandler?(v62, &_s10Foundation4UUIDVSgMd);
  }

  v101 = v16;
  v63 = v47;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    LODWORD(v100) = v65;
    v66 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v107 = v99;
    *v66 = 136315138;
    v67 = [v63 messagesGroupUUID];
    if (v67)
    {
      v68 = v67;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    __swift_storeEnumTagSinglePayload(v43, v69, 1, v2);
    v70 = v97;
    outlined init with take of UUID?(v43, v97);
    if (__swift_getEnumTagSinglePayload(v70, 1, v2))
    {
      outlined destroy of TapInteractionHandler?(v70, &_s10Foundation4UUIDVSgMd);
      v71 = 0xE300000000000000;
      v72 = 7104878;
    }

    else
    {
      v74 = v95;
      v73 = v96;
      (*(v96 + 16))(v95, v70, v2);
      outlined destroy of TapInteractionHandler?(v70, &_s10Foundation4UUIDVSgMd);
      v75 = UUID.uuidString.getter();
      v98 = v76;
      (*(v73 + 8))(v74, v2);
      v105 = v75;
      v106 = v98;
      v72 = String.init<A>(reflecting:)();
      v71 = v77;
    }

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, &v107);

    *(v66 + 4) = v78;
    _os_log_impl(&dword_1BBC58000, v64, v100, "non-avless conversation messagesGroupUUID: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v99);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  closure #1 in PeoplePickerViewController.addPeople()(v24, v101, v17);
}

void closure #1 in PeoplePickerViewController.addPeople()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.peoplePicker);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, "Did add people.", v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    v11 = *(v6 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
    swift_beginAccess();
    v12 = PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v11 + 16), 1);
    if ((*((*MEMORY[0x1E69E7D40] & *v6) + 0x370))(v12))
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      swift_beginAccess();
      (*(v14 + 32))(a2, *(a3 + 16), ObjectType, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t closure #2 in PeoplePickerViewController.addPeople()(uint64_t result, uint64_t (*a2)(void))
{
  if (result)
  {
    return a2();
  }

  return result;
}

void PeoplePickerViewController.dialTelephonyCall(handle:rttType:)(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v5 + 16), 0);
  v6 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  PeoplePickerViewController.pickablePersonItems(for:)(v7);
  v9 = v8;

  if (specialized Array.count.getter(v9))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1BFB22010](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;

    v13 = qword_1BC4C3638[a2];
    v14 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x370))(v12))
    {
      v28 = v15;
      v29 = v13;
      v16 = [objc_opt_self() sharedInstance];
      v17 = [v16 providerManager];

      v18 = [v17 telephonyProvider];
      v19 = *&v11[OBJC_IVAR____TtC15ConversationKit14PickablePerson_contact];
      if (a1)
      {
        v20 = a1;
      }

      else
      {
        v20 = *&v11[OBJC_IVAR____TtC15ConversationKit14PickablePerson_handle];
      }

      ObjectType = swift_getObjectType();
      v26 = (*((*v14 & *v2) + 0x2D8))(a1);
      v27 = PeoplePickerViewController.matchingSenderIdentity(for:)(v26);

      (*(v28 + 40))(v18, 0, v19, v20, v27, v29, ObjectType);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    os_log(_:dso:log:type:_:)();
  }
}

void PeoplePickerViewController.tintColor(for:isChild:)(void *a1, char a2)
{
  v3 = v2;
  if ([a1 isGroup])
  {
    v6 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor);
    v7 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (v7)
    {
      v8 = v7;
      v41 = specialized Array.count.getter(v7);
      if (!v41)
      {
LABEL_15:

        return;
      }

      v42 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v9 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](v9, v8);
        }

        else
        {
          if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v10 = *(v8 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = PeoplePickerViewController.tintColor(for:isChild:)(v10, 1);
        if (static NSObject.== infix(_:_:)())
        {

          v14 = v42;
          v42 = v13;
        }

        else
        {
          v15 = static NSObject.== infix(_:_:)();

          if (v15)
          {

            return;
          }

          v14 = v13;
        }

        ++v9;
        if (v12 == v41)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v16 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
  if (v17)
  {
    v18 = MEMORY[0x1BFB209B0](v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v19)
  {
    goto LABEL_22;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!PeoplePickerViewController.isIDSLookupPending(for:)(v20, v22))
  {
    v26 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (!v27)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v28 = MEMORY[0x1BFB209B0](v26);

    v29 = [v28 destinationIdIsPhoneNumber];

    v30 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_gondolaRecipientTintColor;
    if (!v29)
    {
      v30 = &OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
    }

    v31 = *(v3 + *v30);
    if (a2)
    {
      v32 = v31;
    }

    else
    {
      v33 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
      v34 = v31;
      v35 = [v33 recipients];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = specialized Array.count.getter(v36);

      if (v37 <= 0 && *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1)
      {
        v40 = PeoplePickerViewController.isFaceTimeAvailable(for:)(v20, v22);

        if (!v40)
        {
          return;
        }

        goto LABEL_37;
      }
    }

    v38._countAndFlagsBits = v20;
    v38._object = v22;
    v39 = PeoplePickerViewModel.isMultiwayAvailable(for:)(v38);

    if (!v39)
    {
      return;
    }

LABEL_37:
    v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_availableRecipientTintColor;
    goto LABEL_23;
  }

LABEL_22:
  v23 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_unavailableRecipientTintColor;
LABEL_23:
  v24 = *(v3 + v23);

  v25 = v24;
}

id PeoplePickerViewController.preferredRecipient(for:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ([a1 isGroup])
  {
    return v3;
  }

  v4 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = specialized Array.count.getter(v4);
  if (v6 < 2)
  {

    return v3;
  }

  v7 = v6;
  if (one-time initialization token for peoplePickerAutocomplete != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.peoplePickerAutocomplete);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v84 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v88[0] = v13;
    *v12 = 136315138;
    v89[0] = v9;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    v14 = v9;
    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v88);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v10, v11, "Find preferred recepient for %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
    MEMORY[0x1BFB23DF0](v12, -1, -1);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v88[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v19 = 0;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB22010](v19, v5);
    }

    else
    {
      v20 = *(v5 + 8 * v19 + 32);
    }

    v21 = v20;
    ++v19;
    type metadata accessor for RecipientResultWrapper();
    v22 = swift_allocObject();
    *(v22 + 24) = xmmword_1BC4BB7D0;
    *(v22 + 16) = v21;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v7 != v19);
  v23 = v88[0];
  v24 = [*&v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = specialized Array.count.getter(v25);

  if (v26 > 0 || v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style] == 1)
  {
    v27 = implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply;
    v28 = 1;
  }

  else
  {
    v28 = 0;
    v27 = partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:);
  }

  *(swift_allocObject() + 16) = v2;
  v29 = v2;
  v30 = _s15ConversationKit18PeoplePickerRankerC14findDuetHandle4from02isH8EligiblexSgSayxG_SbSSXEtAA0cdH0RzlFZAA22RecipientResultWrapperC_Tt2g5(v23, v27);

  if (v30)
  {

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v89[0] = v34;
      *v33 = 136315138;
      v35 = RecipientResultWrapper.idsHandle.getter();
      if (v36)
      {
        v88[0] = v35;
        v88[1] = v36;
        v37 = String.init<A>(reflecting:)();
        v39 = v38;
      }

      else
      {
        v39 = 0xE300000000000000;
        v37 = 7104878;
      }

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v89);

      *(v33 + 4) = v58;
      _os_log_impl(&dword_1BBC58000, v31, v32, "Return duet handle %s.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1BFB23DF0](v34, -1, -1);
      MEMORY[0x1BFB23DF0](v33, -1, -1);
    }

    v40 = *(v30 + 16);
LABEL_57:

    return v40;
  }

  v42 = v29;

  v88[0] = specialized Array._copyToContiguousArray()(v43);
  specialized MutableCollection<>.sort(by:)(v88, v28, v42);

  v44 = v88[0];

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v88[0] = v80;
    buf = v47;
    *v47 = 136315138;
    v48 = specialized Array.count.getter(v23);
    log = v45;
    v82 = v46;
    if (v48)
    {
      v49 = v48;
      v89[0] = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48 & ~(v48 >> 63), 0);
      if (v49 < 0)
      {
        __break(1u);
        goto LABEL_61;
      }

      v50 = 0;
      v51 = v89[0];
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](v50, v23);
        }

        else
        {
        }

        v52 = RecipientResultWrapper.idsHandle.getter();
        v54 = v53;

        v89[0] = v51;
        v56 = *(v51 + 16);
        v55 = *(v51 + 24);
        if (v56 >= v55 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 > 1, v56 + 1, 1);
          v51 = v89[0];
        }

        ++v50;
        *(v51 + 16) = v56 + 1;
        v57 = v51 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
      }

      while (v49 != v50);
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v89[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd);
    v59 = String.init<A>(reflecting:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, v88);

    *(buf + 4) = v61;
    _os_log_impl(&dword_1BBC58000, log, v82, "Unsorted handles: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    MEMORY[0x1BFB23DF0](v80, -1, -1);
    MEMORY[0x1BFB23DF0](buf, -1, -1);
  }

  else
  {
  }

  v46 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v46, v62))
  {

LABEL_54:
    v3 = v84;
    if (specialized Array.count.getter(v44))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v44 & 0xC000000000000001) == 0, v44);
      if ((v44 & 0xC000000000000001) != 0)
      {
        v79 = MEMORY[0x1BFB22010](0, v44);

        v40 = *(v79 + 16);
        swift_unknownObjectRelease();
        return v40;
      }

      v78 = *(v44 + 32);

      v40 = *(v78 + 16);
      goto LABEL_57;
    }

    return v3;
  }

  v63 = swift_slowAlloc();
  v85 = swift_slowAlloc();
  v88[0] = v85;
  *v63 = 136315138;
  v64 = v44;
  v65 = specialized Array.count.getter(v44);
  v66 = MEMORY[0x1E69E7CC0];
  loga = v63;
  if (!v65)
  {
LABEL_53:
    v89[0] = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSgGMd);
    v75 = String.init<A>(reflecting:)();
    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v88);

    *(loga + 1) = v77;
    _os_log_impl(&dword_1BBC58000, v46, v62, "Sorted handles: %s", loga, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    MEMORY[0x1BFB23DF0](v85, -1, -1);
    MEMORY[0x1BFB23DF0](loga, -1, -1);

    v44 = v64;
    goto LABEL_54;
  }

  v67 = v65;
  v83 = v46;
  v89[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65 & ~(v65 >> 63), 0);
  if ((v67 & 0x8000000000000000) == 0)
  {
    v68 = 0;
    v66 = v89[0];
    do
    {
      if ((v64 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB22010](v68, v64);
      }

      else
      {
      }

      v69 = RecipientResultWrapper.idsHandle.getter();
      v71 = v70;

      v89[0] = v66;
      v73 = *(v66 + 16);
      v72 = *(v66 + 24);
      if (v73 >= v72 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v72 > 1, v73 + 1, 1);
        v66 = v89[0];
      }

      ++v68;
      *(v66 + 16) = v73 + 1;
      v74 = v66 + 16 * v73;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
    }

    while (v67 != v68);
    v46 = v83;
    goto LABEL_53;
  }

LABEL_61:
  __break(1u);

  __break(1u);
  return result;
}

void PeoplePickerViewController.activeParticipantsAddresses()()
{
  v23[2] = MEMORY[0x1E69E7CD0];
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
  if (v1)
  {
    v22 = v1;
    v2 = [v22 activeRemoteParticipants];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v3 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v3 = v23[3];
      v4 = v23[4];
      v5 = v23[5];
      v6 = v23[6];
      v7 = v23[7];
    }

    else
    {
      v6 = 0;
      v8 = -1 << *(v3 + 32);
      v4 = v3 + 56;
      v5 = ~v8;
      v9 = -v8;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v7 = v10 & *(v3 + 56);
    }

    v11 = (v5 + 64) >> 6;
    if (v3 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_22;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_13:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v17 = [v16 handle];
        v18 = [v17 value];

        if (!v18)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = MEMORY[0x1BFB209B0](v19);
        }

        v20 = outlined bridged method (ob) of @objc NSString._im_normalizedURI()(v18);
        if (!v21)
        {
          break;
        }

        specialized Set._Variant.insert(_:)(v23, v20, v21);

        v6 = v14;
        v7 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v16 = v23[0];
          v14 = v6;
          v15 = v7;
          if (v23[0])
          {
            continue;
          }
        }

        goto LABEL_22;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_22:
    outlined consume of Set<TUHandle>.Iterator._Variant();
  }
}

uint64_t PeoplePickerViewController.currentRecipientsAddresses()()
{
  v17 = MEMORY[0x1E69E7CD0];
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = specialized Array.count.getter(v2);
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB22010](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        v8 = *(CNComposeRecipient.normalizedAddresses()() + 16);

        if (v8)
        {
          v9 = v17;
          v10 = CNComposeRecipient.normalizedAddresses()();
          v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v10);
          specialized Set.union<A>(_:)(v11, v9);
          v13 = v12;

          v17 = v13;
        }

        else
        {
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          specialized Set._Variant.insert(_:)(v16, v14, v15);
        }
      }

      return v17;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void PeoplePickerViewController.updateActionBarState()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v4 = v1;
    v5 = [v3 recipients];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Array.count.getter(v6);
    if (v7 == 1 && specialized Array.count.getter(v6))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v6);
      }

      else
      {
        v8 = *(v6 + 32);
      }

      v9 = v8;
      v10 = CNComposeRecipient.tuHandle.getter();
    }

    else
    {
      v10 = 0;
    }

    v11 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v4) + 0x148))(v10);
    if (!v7 || PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()() || (PeoplePickerViewController.recipientsIncludeInvalidAddresses()(), (v12 & 1) != 0) || (swift_beginAccess(), v13 = , PeoplePickerViewController.isCallAllowed(policy:)(v13), v15 = v14, , (v15 & 1) == 0) || v7 >= 2 && (v16 = [objc_opt_self() sharedInstance]) != 0 && (v17 = v16, v18 = objc_msgSend(v16, sel_isGreenTea), v17, v18))
    {

      (*((*v11 & *v4) + 0x178))(0);
    }

    else
    {
      v19 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      v20 = *(v19 + 16);
      v35 = PeoplePickerViewController.isAudioAllowedForCurrentRecipients()();
      v21 = PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
      v22 = PeoplePickerViewController.isVideoAllowedForCurrentRecipients()();
      v23 = PeoplePickerViewController.isAVLessSharePlayAllowedForCurrentRecipients()();
      if (v20 == 3)
      {
        (*((*v11 & *v4) + 0x130))(3);
        PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 4, v6);

        v26 = 0;
      }

      else if (v20)
      {

        (*((*v11 & *v4) + 0x130))(3);
        v26 = 0x10000;
      }

      else
      {

        v25 = (*((*v11 & *v2) + 0x3D8))(v24);
        (*((*v11 & *v4) + 0x130))(v25);
        if (v22)
        {
          v26 = 0x10000;
        }

        else
        {
          v26 = 0;
        }
      }

      v27 = PeoplePickerViewController.isTelephonyAllowedForCurrentState()();
      v28 = 0x100000000;
      if ((v23 & 1) == 0)
      {
        v28 = 0;
      }

      v29 = 0x1000000;
      if ((v21 & 1) == 0)
      {
        v29 = 0;
      }

      v30 = 256;
      if ((v35 & 1) == 0)
      {
        v30 = 0;
      }

      (*((*v11 & *v4) + 0x178))(v29 | v30 | v28 | v26 | v27 & 1);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1BC4BA940;
      v32 = String.init<A>(reflecting:)();
      v34 = v33;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      os_log(_:dso:log:type:_:)();
    }

    [v4 layoutIfNeeded];
  }
}

void PeoplePickerViewController.updateHelpText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v2 = [v1 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);

  if (v4 >= 1 && !PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()())
  {
    if (v4 == 1 || (v5 = [objc_opt_self() sharedInstance]) == 0 || (v6 = v5, v7 = objc_msgSend(v5, sel_isGreenTea), v6, (v7 & 1) == 0))
    {
      v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      v9 = *(v8 + 16);
      if ((v9 - 1) >= 2)
      {
        v13 = 0;
        if (!v9)
        {
LABEL_14:
          [v1 setComposeFieldInfoText_];

          return;
        }

        v14 = [objc_opt_self() conversationKit];
        v20._object = 0xE000000000000000;
        v15.value._countAndFlagsBits = 0x61737265766E6F43;
        v15.value._object = 0xEF74694B6E6F6974;
        v16._object = 0x80000001BC4F9870;
        v16._countAndFlagsBits = 0xD00000000000001BLL;
        v17._countAndFlagsBits = 0;
        v17._object = 0xE000000000000000;
        v20._countAndFlagsBits = 0;
        v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v20);
        countAndFlagsBits = v18._countAndFlagsBits;
        object = v18._object;
      }

      else
      {
        countAndFlagsBits = PeoplePickerViewController.webInviteeExplanation()();
        object = v11;
      }

      v13 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

      goto LABEL_14;
    }
  }

  [v1 setComposeFieldInfoText_];
}

void PeoplePickerViewController.presentationOptions(for:)(void *a1)
{
  v2 = v1;
  if ([a1 isGroup])
  {
    v4 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (!v4)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v5 = v4;
    v6 = specialized Array.count.getter(v4);
    if (!v6)
    {
LABEL_13:

      return;
    }

    v7 = v6;
    if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](v9, v5);
        }

        else
        {
          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        ++v9;
        v12 = PeoplePickerViewController.presentationOptions(for:)();

        if ((v12 & ~v8) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v8 |= v13;
      }

      while (v7 != v9);
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v55 = a1;
  v14 = CNComposeRecipient.normalizedAddresses()();
  v15 = PeoplePickerViewController.currentRecipientsAddresses()();

  specialized Set.union<A>(_:)(v16, v15);
  v17 = PeoplePickerViewController.callFilterPolicy(for:)();

  v18 = *(v14 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = (v14 + 40);
    while (v19 < *(v14 + 16))
    {
      if (*(v17 + 16))
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
        v25 = v24;

        if (v25)
        {
          v26 = *(*(v17 + 56) + 8 * v23);
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
          v27 = v26;
          isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          v29 = [v27 isEqualToNumber_];

          if (v29)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BC4BAC30;
            *(inited + 32) = v55;
            v51 = v55;
            PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 5, inited);
            swift_setDeallocating();
            specialized _ContiguousArrayStorage.__deallocating_deinit();

            return;
          }
        }
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_22:
  v30 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v55, &selRef_address);
  if (v31)
  {
    v32 = MEMORY[0x1BFB209B0](v30);
  }

  else
  {
    v32 = 0;
  }

  v33 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v33)
  {

    return;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (PeoplePickerViewController.isIDSLookupPending(for:)(v34, v36))
  {
    v37 = [v2 view];
    if (v37)
    {
      v38 = v37;

      [v38 effectiveUserInterfaceLayoutDirection];

      return;
    }

    goto LABEL_43;
  }

  v39 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v55, &selRef_address);
  if (!v40)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v41 = v39;
  v42 = v40;

  v43 = MEMORY[0x1BFB209B0](v41, v42);

  v44 = [v43 destinationIdIsPhoneNumber];

  v45 = [*&v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = specialized Array.count.getter(v46);

  if (v47 > 1 || v2[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style] == 1)
  {
    v48._countAndFlagsBits = v34;
    v48._object = v36;
    v49 = PeoplePickerViewModel.isMultiwayAvailable(for:)(v48);
  }

  else
  {
    v49 = PeoplePickerViewController.isFaceTimeAvailable(for:)(v34, v36);
  }

  v52 = v49;

  if (((v52 | v44) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_1BC4BAC30;
    *(v53 + 32) = v55;
    v54 = v55;
    PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(3, 6, v53);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }
}

void PeoplePickerViewController.updatePresentationOptions(_:for:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](v6, a2);
      }

      else
      {
        v8 = *(a2 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      [v7 setPresentationOptions:a1 forRecipient:v8];
    }

    while (v5 != v6);
  }
}

id PeoplePickerViewController.setActionUnavailable()()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) setComposeFieldInfoText_];
  v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
  if (v4)
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x178);
    v6 = v4;
    v5(0);

    result = *(v1 + v3);
    if (result)
    {

      return [result layoutIfNeeded];
    }
  }

  return result;
}

BOOL PeoplePickerViewController.isIDSLookupPendingForCurrentRecipients()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
  v2 = &selRef_fillRule;
  v3 = [v1 recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  j = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter(j))
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (j & 0xC000000000000001) == 0, j);
  if ((j & 0xC000000000000001) != 0)
  {
    goto LABEL_28;
  }

  for (i = *(j + 32); ; i = MEMORY[0x1BFB22010](0, j))
  {
    v6 = i;

    v7 = [v1 v2[40]];
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = specialized Array.count.getter(v8);

    if (v9 <= 1 && *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1 && ![v6 isGroup])
    {
      break;
    }

    v10 = [v1 v2[40]];
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v1 = specialized Array.count.getter(v11);
    for (j = 0; ; ++j)
    {
      if (v1 == j)
      {

        goto LABEL_18;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFB22010](j, v11);
      }

      else
      {
        if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v12 = *(v11 + 8 * j + 32);
      }

      v13 = v12;
      if (__OFADD__(j, 1))
      {
        break;
      }

      PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(v12);
      v2 = v14;

      if (v2)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v16 = [v1 v2[40]];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = specialized Array.count.getter(v17);

  if (v18 != 1)
  {
    goto LABEL_18;
  }

  v19 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v6, &selRef_address);
  if (v20)
  {
    v21 = MEMORY[0x1BFB209B0](v19);
  }

  else
  {
    v21 = 0;
  }

  v22 = TUCopyIDSCanonicalAddressForDestinationID();

  if (!v22)
  {
LABEL_18:

    return 0;
  }

  v23 = [objc_opt_self() sharedManager];
  v24 = [v23 faceTimeVideoAvailabilityForDestination_];

  return v24 == 0;
}

void PeoplePickerViewController.reportIncompatibilityEvent(with:reason:recipients:)(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v22 = a2;
  v21 = a1;
  if (a3 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_loggedInvalidRecipients;
    v8 = *(v4 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v23 = v5 & 0xC000000000000001;
    v24 = v8;
    swift_beginAccess();
    v9 = 0;
    v10 = v5;
    do
    {
      if (v23)
      {
        v11 = MEMORY[0x1BFB22010](v9, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v24 recipients];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v12;
      MEMORY[0x1EEE9AC00](v15);
      v20[2] = &v25;
      LOBYTE(v13) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, v14);

      if (v13)
      {
        v16 = *(v4 + v7);

        specialized Set.contains(_:)(v12, v16);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(&v26, v12);
          v19 = v26;
          swift_endAccess();

          PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(v21, v22);
        }
      }

      ++v9;

      v5 = v10;
    }

    while (v6 != v9);
  }
}

uint64_t PeoplePickerViewController.webInviteeExplanation()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);

  v4 = [objc_opt_self() conversationKit];
  if (v3 <= 1)
  {
    v5 = 5459283;
  }

  else
  {
    v5 = 5459277;
  }

  v28._object = 0xE000000000000000;
  v6 = 0xE300000000000000;
  v7.value._countAndFlagsBits = 0x61737265766E6F43;
  v7.value._object = 0xEF74694B6E6F6974;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, v7, v4, v8, v28);

  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style);
  v11 = [objc_opt_self() conversationKit];
  v27 = 0xE000000000000000;
  if (v10)
  {
    v12 = 0x4C465F4552414853;
    v13 = 0xEA0000000000574FLL;
  }

  else
  {
    v12 = 0x465F455441455243;
    v13 = 0xEB00000000574F4CLL;
  }

  v14.value._countAndFlagsBits = 0x61737265766E6F43;
  v14.value._object = 0xEF74694B6E6F6974;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16 = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v14, v11, v15, *(&v27 - 1));

  v18 = [objc_opt_self() conversationKit];
  v29._object = 0xE000000000000000;
  v19._object = 0x80000001BC4F9890;
  v19._countAndFlagsBits = 0xD000000000000017;
  v20.value._countAndFlagsBits = 0x61737265766E6F43;
  v20.value._object = 0xEF74694B6E6F6974;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BAA20;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v24 = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v9;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v17;
  v25 = String.init(format:_:)();

  return v25;
}

uint64_t CNComposeRecipient.tuHandle.getter()
{
  v1 = [v0 kind];
  if (v1)
  {
    if (v1 != 1)
    {
      return 0;
    }

    result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = OUTLINED_FUNCTION_46();
      v6 = MEMORY[0x1BFB209B0](v5);

      v7 = [v4 normalizedPhoneNumberHandleForValue:v6 isoCountryCode:0];
LABEL_7:
      v11 = v7;

      return v11;
    }

    __break(1u);
  }

  else
  {
    result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = OUTLINED_FUNCTION_46();
      v6 = MEMORY[0x1BFB209B0](v10);

      v7 = [v9 normalizedEmailAddressHandleForValue_];
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void PeoplePickerViewController.recipientsIncludeInvalidAddresses()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  v24 = v3;
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v5)
    {
      v7 = MEMORY[0x1BFB22010](v4, v2);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_35;
      }

      v7 = *(v2 + 32 + 8 * v4);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if ([v7 isGroup])
    {
      v25 = v8;
      v9 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v8);
      if (!v9)
      {
        goto LABEL_36;
      }

      v10 = v9;
      v11 = specialized Array.count.getter(v9);
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {

          v3 = v24;
          v21 = v25;
          v6 = v2 & 0xFFFFFFFFFFFFFF8;
          v5 = v2 & 0xC000000000000001;
          goto LABEL_27;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB22010](i, v10);
        }

        else
        {
          if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v13 = *(v10 + 8 * i + 32);
        }

        v14 = v13;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v15 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v13, &selRef_address);
        if (v16)
        {
          v17 = MEMORY[0x1BFB209B0](v15);
        }

        else
        {
          v17 = 0;
        }

        v18 = TUCopyIDSCanonicalAddressForDestinationID();

        if (!v18)
        {

          return;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
      break;
    }

    v19 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v8, &selRef_address);
    v21 = v8;
    if (v20)
    {
      v22 = MEMORY[0x1BFB209B0](v19);
    }

    else
    {
      v22 = 0;
    }

    v23 = TUCopyIDSCanonicalAddressForDestinationID();

    if (!v23)
    {

      return;
    }

LABEL_27:
    ++v4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void PeoplePickerViewController.isCallAllowed(policy:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * v9)));
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
    v11 = v10;
    isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
    v13 = [v11 isEqualToNumber_];

    if (v13)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_11;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
}

id PeoplePickerViewController.isAudioAllowedForCurrentRecipients()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2) == 1)
  {
    if (specialized Array.count.getter(v2))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) == 0)
      {
        v3 = *(v2 + 32);
LABEL_5:
        v4 = v3;

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        v6 = v5;
        if ([objc_opt_self() supportsDisplayingFaceTimeAudioCalls])
        {
          v7 = PeoplePickerViewController.isMultiwayAllowed(for:)(v6, &selRef_isFaceTimeAudioAvailableForAnyDestinationInDestinations_);
        }

        else
        {

          v7 = 0;
        }

        return (v7 & 1);
      }
    }

    else
    {
      __break(1u);
    }

    v3 = MEMORY[0x1BFB22010](0, v2);
    goto LABEL_5;
  }

  return PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
}

id PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);
  v5 = v4 > 0;
  v6 = specialized Array.count.getter(v3);
  if (v6)
  {
    v7 = v6;
    v18 = v4;
    v8 = 0;
    v9 = v3 & 0xC000000000000001;
LABEL_3:
    v19 = v5;
    v10 = v8;
    do
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v10, v9 == 0, v3);
      if (v9)
      {
        result = MEMORY[0x1BFB22010](v10, v3);
      }

      else
      {
        result = *(v3 + 8 * v10 + 32);
      }

      v12 = result;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      CNComposeRecipient.idsDestinationsMatchingAddress()();
      v14 = PeoplePickerViewController.isMultiwayAllowed(for:)(v13, &selRef_isFaceTimeMultiwayAvailableForAnyDestinationInDestinations_);

      if ((v14 & 1) == 0)
      {

LABEL_13:
        v5 = 0;
        if (v8 != v7)
        {
          goto LABEL_3;
        }

        return 0;
      }

      PeoplePickerViewController.hasMatchingMeHandle(for:)(v12);
      v16 = v15;

      if (v16)
      {
        goto LABEL_13;
      }

      ++v10;
    }

    while (v8 != v7);

    v4 = v18;
    if (v19)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v4 < 1)
  {
    return 0;
  }

LABEL_18:
  v17 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16);
  if (!__OFADD__(v17, v4))
  {
    return (PeoplePickerViewController.maxParticipantLimit.getter() >= v17 + v4);
  }

LABEL_21:
  __break(1u);
  return result;
}

id PeoplePickerViewController.isVideoAllowedForCurrentRecipients()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2) == 1)
  {
    if (specialized Array.count.getter(v2))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) == 0)
      {
        v3 = *(v2 + 32);
LABEL_5:
        v4 = v3;

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        v6 = PeoplePickerViewController.isMultiwayAllowed(for:)(v5, &selRef_isFaceTimeVideoAvailableForAnyDestinationInDestinations_);

        return (v6 & 1);
      }
    }

    else
    {
      __break(1u);
    }

    v3 = MEMORY[0x1BFB22010](0, v2);
    goto LABEL_5;
  }

  return PeoplePickerViewController.isMultiwayAllowedForCurrentRecipients()();
}

id PeoplePickerViewController.isAVLessSharePlayAllowedForCurrentRecipients()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses) + 16);
  result = specialized Array.count.getter(v3);
  if (!__OFADD__(v6, result))
  {
    if (PeoplePickerViewController.maxParticipantLimit.getter() >= result + v6)
    {
      v8 = 0;
      v9 = v3 & 0xC000000000000001;
      while (1)
      {
        v10 = v5 == v8;
        if (v5 == v8)
        {
          goto LABEL_15;
        }

        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v8, v9 == 0, v3);
        if (v9)
        {
          result = MEMORY[0x1BFB22010](v8, v3);
        }

        else
        {
          result = *(v3 + 8 * v8 + 32);
        }

        v11 = result;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
          goto LABEL_17;
        }

        CNComposeRecipient.idsDestinationsMatchingAddress()();
        if ((PeoplePickerViewController.isMultiwayAllowed(for:)(v12, &selRef_isiMessageAvailableForAnyDestinationInDestinations_) & 1) == 0)
        {

          break;
        }

        v13 = PeoplePickerViewController.isAVLessSharePlayCapable(for:)();

        ++v8;
        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_14:
    v10 = 0;
LABEL_15:

    return v10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.isTelephonyAllowedForCurrentState()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    return 0;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2) != 1 || !specialized Array.count.getter(v2))
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1BFB22010](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;
  result = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v3, &selRef_address);
  if (v6)
  {
    v7 = result;
    v8 = v6;

    v9 = PeoplePickerViewController.isTelephonyCallAllowed(for:)(v7, v8);

    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void PeoplePickerViewController.cancelQueries()()
{
  v0 = [objc_opt_self() sharedManager];
  [v0 cancelQueries];
}

uint64_t CNComposeRecipient.idsDestinations()()
{
  v49 = MEMORY[0x1E69E7CD0];
  if (![v0 isGroup])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BC4BA930;
    v11 = *MEMORY[0x1E695C208];
    v12 = *MEMORY[0x1E695C330];
    *(v10 + 32) = *MEMORY[0x1E695C208];
    *(v10 + 40) = v12;
    v13 = v11;
    v14 = v12;
    v15 = outlined bridged method (mbnn) of @objc CNComposeRecipient.contactWithKeys(toFetch:)(v10, v0);
    if (v15)
    {
      v47 = v15;
      v16 = [v15 emailAddresses];
      __swift_instantiateConcreteTypeFromMangledNameV2(_sSo14CNLabeledValueCMd);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = specialized Array.count.getter(v17);
      if (result)
      {
        v18 = result;
        if (result < 1)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        for (i = 0; i != v18; ++i)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1BFB22010](i, v17);
          }

          else
          {
            v20 = *(v17 + 8 * i + 32);
          }

          v21 = v20;
          v22 = [v20 value];
          v23 = TUCopyIDSCanonicalAddressForDestinationID();

          if (v23)
          {
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = v25;

            specialized Set._Variant.insert(_:)(v48, v24, v26);
          }

          else
          {
          }
        }
      }

      v27 = [v47 phoneNumbers];
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      result = specialized Array.count.getter(v28);
      if (result)
      {
        v29 = result;
        if (result < 1)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        for (j = 0; j != v29; ++j)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1BFB22010](j, v28);
          }

          else
          {
            v31 = *(v28 + 8 * j + 32);
          }

          v32 = v31;
          v33 = [v31 value];
          v34 = [v33 stringValue];

          if (!v34)
          {
            v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = MEMORY[0x1BFB209B0](v35);
          }

          v36 = TUCopyIDSCanonicalAddressForDestinationID();

          if (v36)
          {
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            specialized Set._Variant.insert(_:)(v48, v37, v39);
          }

          else
          {
          }
        }
      }
    }

    else
    {
      v40 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
      if (!v41)
      {
        return v49;
      }

      v42 = MEMORY[0x1BFB209B0](v40);

      v43 = TUCopyIDSCanonicalAddressForDestinationID();

      if (!v43)
      {
        return v49;
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      specialized Set._Variant.insert(_:)(v48, v44, v46);
    }

LABEL_40:

    return v49;
  }

  result = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
  if (result)
  {
    v2 = result;
    result = specialized Array.count.getter(result);
    if (result)
    {
      v3 = result;
      if (result >= 1)
      {
        v4 = 0;
        v5 = MEMORY[0x1E69E7CD0];
        do
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1BFB22010](v4, v2);
          }

          else
          {
            v6 = *(v2 + 8 * v4 + 32);
          }

          v7 = v6;
          ++v4;
          v8 = CNComposeRecipient.idsDestinations()();
          specialized Set.union<A>(_:)(v8, v5);
          v5 = v9;
        }

        while (v3 != v4);

        return v5;
      }

      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.callFilterPolicy(for:)()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 callFilterController];

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v3 = TUPreferredFaceTimeBundleIdentifier();
  if (!v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = MEMORY[0x1BFB209B0](v4);
  }

  v5 = [v1 policyForAddresses:v2.super.isa forBundleIdentifier:v3];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void PeoplePickerViewController.removeRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA940;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  a1;
  v5 = String.init<A>(reflecting:)();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:type:_:)();

  v8 = CNComposeRecipient.idsDestinations()();
  swift_beginAccess();
  specialized Set._subtract<A>(_:)(v8);
  swift_endAccess();

  PeoplePickerViewController.currentRecipientsAddresses()();
  v9 = PeoplePickerViewController.callFilterPolicy(for:)();

  v10 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_restrictionPolicy;
  swift_beginAccess();
  *(v2 + v10) = v9;

  PeoplePickerViewController.updateState()();
}

id PeoplePickerViewController.coordinatorFinished(_:completed:)(void *a1, char a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
  if (a2)
  {

    return [v2 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id PeoplePickerViewController.coordinatorFailed(_:)(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id PeoplePickerViewController.isTelephonyCallAllowed(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  if (([v4 supportsPrimaryCalling] & 1) != 0 || !objc_msgSend(v4, sel_supportsTelephonyCalls))
  {
    return 0;
  }

  v5 = MEMORY[0x1BFB209B0](a1, a2);
  v6 = [v5 destinationIdIsPhoneNumber];

  return v6;
}

void CNComposeRecipient.idsDestinationsMatchingAddress()()
{
  if ([v0 isGroup])
  {
    v1 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
    if (!v1)
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v2 = v1;
    v3 = specialized Array.count.getter(v1);
    if (v3)
    {
      v4 = v3;
      v36 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if ((v4 & 0x8000000000000000) == 0)
      {
        v5 = 0;
        v6 = v36;
        while (1)
        {
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1BFB22010](v5, v2);
          }

          else
          {
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v8 = *(v2 + 8 * v5 + 32);
          }

          v9 = v8;
          v10 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v8, &selRef_address);
          if (v11)
          {
            v12 = MEMORY[0x1BFB209B0](v10);
          }

          else
          {
            v12 = 0;
          }

          v13 = TUCopyIDSCanonicalAddressForDestinationID();

          if (!v13)
          {
            goto LABEL_40;
          }

          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = *(v36 + 16);
          if (v17 >= *(v36 + 24) >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          *(v36 + 16) = v17 + 1;
          v18 = v36 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v16;
          ++v5;
          if (v7 == v4)
          {

            goto LABEL_25;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    v19 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_address);
    if (v20)
    {
      v21 = MEMORY[0x1BFB209B0](v19);
    }

    else
    {
      v21 = 0;
    }

    v22 = TUCopyIDSCanonicalAddressForDestinationID();

    if (!v22)
    {
      goto LABEL_42;
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(v6 + 32) = v23;
    *(v6 + 40) = v25;
  }

LABEL_25:
  v26 = 0;
  v27 = *(v6 + 16);
  v28 = (v6 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  while (v27 != v26)
  {
    if (v26 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v31 = *(v28 - 1);
    v30 = *v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v34;
    }

    v32 = *(v29 + 16);
    if (v32 >= *(v29 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v29 = v35;
    }

    *(v29 + 16) = v32 + 1;
    v33 = v29 + 16 * v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    v28 += 2;
    ++v26;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v29);
}

void PeoplePickerViewController.hasMatchingMeHandle(for:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_meHandles);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v11 = *v10;
    v12 = v10[1];

    v13 = MEMORY[0x1BFB209B0](v11, v12);

    v14 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (v15)
    {
      v16 = MEMORY[0x1BFB209B0](v14);
    }

    else
    {
      v16 = 0;
    }

    v6 &= v6 - 1;
    v17 = TUDestinationIDsAreEqual();

    if (v17)
    {
LABEL_13:

      return;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      goto LABEL_13;
    }

    v6 = *(v3 + 56 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(void *a1)
{
  if ([a1 isGroup])
  {
    v2 = outlined bridged method (pb) of @objc CNComposeRecipient.children()(a1);
    if (v2)
    {
      v3 = v2;
      v4 = specialized Array.count.getter(v2);
      v5 = 0;
      while (1)
      {
        if (v4 == v5)
        {
LABEL_10:

          return;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFB22010](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v8 = PeoplePickerViewController.isIDSMultiwayLookupPending(for:)(v6);

        ++v5;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v9 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    if (v10)
    {
      v11 = MEMORY[0x1BFB209B0](v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v12)
    {
      v13 = [objc_opt_self() sharedManager];
      [v13 faceTimeMultiwayAvailabilityForDestination_];
    }
  }
}

BOOL PeoplePickerViewController.isIDSLookupPending(for:)(uint64_t a1, uint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = specialized Array.count.getter(v6);

  v8 = &selRef_faceTimeMultiwayAvailabilityForDestination_;
  if (v7 <= 1 && *(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) != 1)
  {
    v8 = &selRef_faceTimeVideoAvailabilityForDestination_;
  }

  v9 = [objc_opt_self() sharedManager];
  v10 = MEMORY[0x1BFB209B0](a1, a2);
  v11 = [v9 *v8];

  return v11 == 0;
}

id PeoplePickerViewController.isMultiwayAllowed(for:)(uint64_t a1, SEL *a2)
{
  v3 = [objc_opt_self() sharedManager];

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 *a2];

  return v5;
}

id PeoplePickerViewController.isAVLessSharePlayCapable(for:)()
{
  v0 = [objc_opt_self() sharedManager];
  isa = Set._bridgeToObjectiveC()().super.isa;
  v2 = [v0 isAVLessSharePlayCapableForAnyDestinationInDestinations_];

  return v2;
}

BOOL PeoplePickerViewController.isFaceTimeAvailable(for:)(uint64_t a1, void *a2)
{
  if (PeoplePickerViewModel.isAudioAvailable(for:)(*&a1))
  {
    return 1;
  }

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  return PeoplePickerViewModel.isVideoAvailable(for:)(v5);
}

id PeoplePickerViewController.pickablePerson(for:)(void *a1)
{
  v2 = CNComposeRecipient.tuHandle.getter();
  if (v2)
  {
    v3 = v2;
    if ([a1 contact])
    {
      v4 = objc_allocWithZone(type metadata accessor for PickablePerson());
      v5 = OUTLINED_FUNCTION_38_2();
    }

    else
    {
      v13 = objc_allocWithZone(type metadata accessor for PickablePerson());
      v5 = 0;
      v6 = v3;
    }

    return PickablePerson.init(contact:handle:)(v5, v6);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BC4BA940;
    outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
    v8 = MEMORY[0x1E69E6158];
    if (v9)
    {
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE300000000000000;
      v10 = 7104878;
    }

    *(v7 + 56) = v8;
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    OUTLINED_FUNCTION_41_0();
    os_log(_:dso:log:type:_:)();

    return 0;
  }
}

uint64_t CNComposeRecipient.normalizedAddresses()()
{
  if (![v0 isGroup])
  {
    v17 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_normalizedAddress);
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v21)
    {
LABEL_30:
      v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v29;
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v30;
      v1 = *(v30 + 16);
      v5 = v1 + 1;
      if (v1 < *(v30 + 24) >> 1)
      {
LABEL_31:
        *(v6 + 16) = v5;
        v31 = v6 + 16 * v1;
        *(v31 + 32) = v0;
        *(v31 + 40) = v3;
        return v6;
      }

LABEL_40:
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v32;
      goto LABEL_31;
    }

    v22 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v0, &selRef_normalizedAddress);
    if (v23)
    {
      v24 = v22;
      v25 = v23;

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v26;
      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v33;
      }

      *(v6 + 16) = v27 + 1;
      v28 = v6 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
LABEL_29:

      return v6;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = outlined bridged method (pb) of @objc CNComposeRecipient.children()(v0);
  if (result)
  {
    v3 = result;
    v4 = specialized Array.count.getter(result);
    if (v4)
    {
      v5 = v4;
      if (v4 >= 1)
      {
        v1 = 0;
        v6 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v7 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB22010](v1, v3) : *(v3 + 8 * v1 + 32);
          v0 = v7;
          v8 = CNComposeRecipient.normalizedAddresses()();
          v9 = *(v8 + 16);
          v10 = *(v6 + 16);
          if (__OFADD__(v10, v9))
          {
            break;
          }

          v11 = v8;
          if (!swift_isUniquelyReferenced_nonNull_native() || (v12 = *(v6 + 24) >> 1, v12 < v10 + v9))
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v6 = v13;
            v12 = *(v13 + 24) >> 1;
          }

          if (*(v11 + 16))
          {
            if (v12 - *(v6 + 16) < v9)
            {
              goto LABEL_37;
            }

            swift_arrayInitWithCopy();

            if (v9)
            {
              v14 = *(v6 + 16);
              v15 = __OFADD__(v14, v9);
              v16 = v14 + v9;
              if (v15)
              {
                goto LABEL_38;
              }

              *(v6 + 16) = v16;
            }
          }

          else
          {

            if (v9)
            {
              goto LABEL_36;
            }
          }

          ++v1;

          if (v5 == v1)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      __break(1u);
      goto LABEL_40;
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t _s15ConversationKit18PeoplePickerRankerC14findDuetHandle4from02isH8EligiblexSgSayxG_SbSSXEtAA0cdH0RzlFZAA22RecipientResultWrapperC_Tt2g5(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = specialized Array.count.getter(a1);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB22010](i, a1);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (RecipientResultWrapper.isDuetHandle.getter())
    {
      v8 = RecipientResultWrapper.idsHandle.getter();
      if (v9)
      {
        v10 = a2(v8);

        if (v10)
        {
          return v7;
        }
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t PeoplePickerViewController.addPossibleRecipient(_:)(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  specialized Set._Variant.insert(_:)(&v11, v4);
  v5 = v11;
  swift_endAccess();

  if ([v4 isGroup])
  {
    v6 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsGroupDestinations);
  }

  else
  {
    v6 = (v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_idsDestinations);
    swift_beginAccess();
  }

  v7 = *v6;

  v8 = CNComposeRecipient.idsDestinations()();
  specialized Set.union<A>(_:)(v8, v7);
  *v6 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Subject<>.send()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  return Subject<>.send()();
}

void PeoplePickerViewController.removePossibleRecipient(_:)(void *a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  swift_beginAccess();
  v45 = v1;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient);
    Set.Iterator.init(_cocoa:)();
    v4 = v49;
    v5 = v50;
    v6 = v51;
    v7 = v52;
    v8 = v53;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v4 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_28:
      outlined consume of Set<TUHandle>.Iterator._Variant();
LABEL_29:

      return;
    }

    while (1)
    {
      v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
      v20 = v19;
      v47 = v17;
      v21 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v17, &selRef_address);
      if (!v20)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_25;
      }

      if (v18 == v21 && v20 == v22)
      {

LABEL_31:
        outlined consume of Set<TUHandle>.Iterator._Variant();

        swift_beginAccess();
        v25 = specialized Set._Variant.remove(_:)();
        swift_endAccess();

        v26 = [*(v45 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v28 = specialized Array.count.getter(v27);
        v29 = 0;
        while (2)
        {
          if (v28 == v29)
          {

            v40 = *(v45 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_existingAddresses);

            v41 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
            if (!v42)
            {
              goto LABEL_60;
            }

            v43 = specialized Set.contains(_:)(v41, v42, v40);

            if (!v43)
            {
              v44 = CNComposeRecipient.idsDestinations()();
              swift_beginAccess();
              specialized Set._subtract<A>(_:)(v44);
              swift_endAccess();

              goto LABEL_29;
            }

            goto LABEL_55;
          }

          if ((v27 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1BFB22010](v29, v27);
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v30 = *(v27 + 8 * v29 + 32);
          }

          v31 = v30;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_58;
          }

          v32 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a1, &selRef_address);
          v34 = v33;
          v35 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v31, &selRef_address);
          v37 = v36;
          if (v34)
          {
            if (v36)
            {
              if (v32 == v35 && v34 == v36)
              {

                return;
              }

              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v39)
              {
                goto LABEL_54;
              }

              goto LABEL_49;
            }
          }

          else
          {

            if (!v37)
            {
LABEL_54:

LABEL_55:

              return;
            }
          }

LABEL_49:
          ++v29;
          continue;
        }
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_31;
      }

LABEL_26:
      v7 = v15;
      v8 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
        swift_dynamicCast();
        v17 = v48;
        v15 = v7;
        v16 = v8;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    if (!v22)
    {
      goto LABEL_31;
    }

LABEL_25:

    goto LABEL_26;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_28;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void PeoplePickerViewController.providersChanged(for:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BAA20;
  *(v3 + 56) = type metadata accessor for PeoplePickerViewController();
  *(v3 + 64) = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type PeoplePickerViewController and conformance NSObject, v4, type metadata accessor for PeoplePickerViewController);
  *(v3 + 32) = v1;
  *(v3 + 96) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCallProviderManager);
  *(v3 + 104) = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCallProviderManager and conformance NSObject, &lazy cache variable for type metadata for TUCallProviderManager);
  *(v3 + 72) = a1;
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_48_7();

  PeoplePickerViewController.refreshCallerIDPicker()();
}

void PeoplePickerViewController.searchController(_:willDisplayRowFor:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_49_7();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v7, v8);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUCall and conformance TUCall(v9, v10);
    OUTLINED_FUNCTION_50_8();
    v6 = v28;
    v3 = v29;
    v2 = v30;
    v11 = v31;
    v4 = v32;
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v11 = 0;
  }

  v12 = (v2 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient), swift_dynamicCast(), (v17 = v27) == 0))
      {
LABEL_26:
        OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant();

        PeoplePickerViewController.addPossibleRecipient(_:)(a2);
        return;
      }

      goto LABEL_14;
    }

    v13 = v11;
    if (!v4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v4 = v15 & v14;
    v17 = *(*(v6 + 48) + ((v11 << 9) | (8 * v16)));
    if (!v17)
    {
      goto LABEL_26;
    }

LABEL_14:
    v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a2, &selRef_address);
    v20 = v19;
    v21 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v17, &selRef_address);
    v23 = v22;
    if (v20)
    {
      if (!v22)
      {

        goto LABEL_25;
      }

      if (v18 == v21 && v20 == v22)
      {

LABEL_28:
        OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant();

        return;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (!v23)
      {
        goto LABEL_28;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_26;
    }

    ++v13;
    if (*(v3 + 8 * v11))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.searchController(_:preferredRecipientFor:)(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_possibleRecipients;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_49_7();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    OUTLINED_FUNCTION_41();
    type metadata accessor for NSObject(v7, v8);
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUCall and conformance TUCall(v9, v10);
    OUTLINED_FUNCTION_50_8();
    v6 = v30;
    v3 = v31;
    v2 = v32;
    v11 = v33;
    v4 = v34;
  }

  else
  {
    OUTLINED_FUNCTION_6_41();
    v11 = 0;
  }

  v12 = (v2 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient), swift_dynamicCast(), (v17 = v29) == 0))
      {
LABEL_26:
        OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant();

        return;
      }

      goto LABEL_14;
    }

    v13 = v11;
    if (!v4)
    {
      break;
    }

LABEL_10:
    OUTLINED_FUNCTION_7_1();
    v4 = v15 & v14;
    v17 = *(*(v6 + 48) + ((v11 << 9) | (8 * v16)));
    if (!v17)
    {
      goto LABEL_26;
    }

LABEL_14:
    v18 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(a2, &selRef_address);
    v20 = v19;
    v21 = OUTLINED_FUNCTION_15_14();
    v23 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v21, v22);
    v25 = v24;
    if (v20)
    {
      if (!v24)
      {

        goto LABEL_25;
      }

      if (v18 == v23 && v20 == v24)
      {

LABEL_28:
        OUTLINED_FUNCTION_4_42();
        outlined consume of Set<TUHandle>.Iterator._Variant();

        PeoplePickerViewController.preferredRecipient(for:)(a2);
        return;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (!v25)
      {
        goto LABEL_28;
      }

LABEL_25:
    }
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_26;
    }

    ++v13;
    if (*(v3 + 8 * v11))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void PeoplePickerViewController.searchController(_:didTapTableAccessoryFor:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  *(v5 + 56) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  *(v5 + 64) = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type CNComposeRecipient and conformance NSObject, &lazy cache variable for type metadata for CNComposeRecipient);
  *(v5 + 32) = a2;
  v6 = a2;
  OUTLINED_FUNCTION_48_7();

  v7 = [v6 contact];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 hasBeenPersisted];
    v10 = objc_opt_self();
    if (v9)
    {
      v11 = [v10 viewControllerForContact_];
    }

    else
    {
      v11 = [v10 viewControllerForUnknownContact_];
    }
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    v12 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v6, &selRef_address);
    v8 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(0, 0, v12, v13);
    v11 = [objc_opt_self() viewControllerForUnknownContact_];
  }

  v14 = v11;

  v15 = *&v3[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation];
  if (v15)
  {
    objc_opt_self();
    v16 = v14;
    v17 = OUTLINED_FUNCTION_40_2();
    v19 = [v17 v18];
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E695CE28]);
    v21 = v14;
    v19 = [v20 init];
  }

  v27 = v19;
  [v27 setIncludeDonatedContacts_];
  [v27 setIncludeSuggestedContacts_];
  v22 = [v14 view];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() systemBackgroundColor];
    [v23 setBackgroundColor_];

    [v14 setAllowsEditing_];
    [v14 setAllowsActions_];
    v25 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    [v14 setContactStore_];
    v26 = [v3 navigationController];
    [v26 pushViewController:v14 animated:1];
  }

  else
  {
    __break(1u);
  }
}

void PeoplePickerViewController.didTapTextViewAccessoryButton(for:anchoredTo:)(uint64_t a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = a2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v11 = v6;
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BBC58000, v7, v8, "Showing contact picker from accessory button, anchorView: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if (*(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler))
  {
    v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_addButtonHandler + 8);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 80);
    swift_unknownObjectRetain();
    v17(v6, ObjectType, v15);
    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerViewController.searchController(_:contextMenuConfigurationFor:)(void *a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    v3 = [a1 atomViewForRecipient_];
    if (!v3)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.conversationKit);
      v3 = Logger.logObject.getter();
      v5 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_25(v5))
      {
        v6 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_50_0(v6);
        OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v7, v8, "Unable to grab recipient atom view.");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  return 0;
}

void PeoplePickerViewController.actionBar(_:selectedAction:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.info.getter();
      os_log(_:dso:log:type:_:)();
      v5 = type metadata accessor for LinkCreationCoordinator();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_shareSheetViewController] = 0;
      v7 = &v6[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_conversationLink];
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v8 = &v6[OBJC_IVAR____TtC15ConversationKit23LinkCreationCoordinator_parentViewController];
      OUTLINED_FUNCTION_3_5();
      *(v8 + 1) = &protocol witness table for PeoplePickerViewController;
      swift_unknownObjectUnownedInit();
      v23.receiver = v6;
      v23.super_class = v5;
      v9 = objc_msgSendSuper2(&v23, sel_init);
      v10 = *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator);
      *(v3 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_linkCoordinator) = v9;
      v11 = v9;

      (*((*MEMORY[0x1E69E7D40] & *v11) + 0xB8))(a2);
      OUTLINED_FUNCTION_52_5();
    }

    else
    {
      switch(a2)
      {
        case 1:
          if (one-time initialization token for conversationKit != -1)
          {
            goto LABEL_32;
          }

          goto LABEL_26;
        case 2:
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_0_6();
          }

          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)();
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.addPeople()();
          break;
        case 3:
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.handleShareLinkWithMessagesAction()();
          break;
        case 4:
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.presentMessageComposeSheetWithActivity()();
          break;
        case 5:
          OUTLINED_FUNCTION_52_5();

          [v20 v21];
          break;
        default:
          if (one-time initialization token for conversationKit != -1)
          {
LABEL_32:
            OUTLINED_FUNCTION_0_6();
          }

LABEL_26:
          static os_log_type_t.default.getter();
          OUTLINED_FUNCTION_41_0();
          os_log(_:dso:log:type:_:)();
          OUTLINED_FUNCTION_52_5();

          PeoplePickerViewController.startCall(videoEnabled:)(v18);
          break;
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    OUTLINED_FUNCTION_52_5();

    PeoplePickerViewController.dialTelephonyCall(handle:rttType:)(v12, v13);
  }
}

void PeoplePickerViewController.handleShareLinkWithMessagesAction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
  swift_beginAccess();
  PeoplePickerViewController.reportIncompatibilityEvent(with:reason:)(*(v1 + 16), 2);
  v2 = PeoplePickerViewController.smsAccount.getter();
  if (v2)
  {

    v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController____lazy_storage___smsAccount);
    if (!v4)
    {
      __break(1u);
      goto LABEL_10;
    }

    if ([v4 isSMSRelayCapable])
    {
      v5 = *(v0 + v3);
      if (v5)
      {
        if (([v5 allowsSMSRelay] & 1) == 0)
        {
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();

          PeoplePickerViewController.showSMSRelayUpgradeAlert(withCompletion:)(partial apply for closure #1 in PeoplePickerViewController.handleShareLinkWithMessagesAction(), v6);

          return;
        }

        goto LABEL_6;
      }

LABEL_10:
      __break(1u);
      return;
    }
  }

LABEL_6:
  PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()();
}

uint64_t PeoplePickerViewController.presentMessageComposeSheetWithActivity()()
{
  if (one-time initialization token for conversationKit != -1)
  {
LABEL_31:
    swift_once();
  }

  static os_log_type_t.default.getter();
  v1 = MEMORY[0x1E69E7CC0];
  os_log(_:dso:log:type:_:)();
  v19 = v0;
  v0 = [*(v0 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController) recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Array.count.getter(v2);
  for (i = 0; v3 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v0 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = CNComposeRecipient.normalizedAddresses()();

    v0 = *(v6 + 16);
    v7 = *(v1 + 16);
    if (__OFADD__(v7, v0))
    {
      goto LABEL_27;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v0 + v7 > *(v1 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v1 = v8;
    }

    if (*(v6 + 16))
    {
      if ((*(v1 + 24) >> 1) - *(v1 + 16) < v0)
      {
        goto LABEL_29;
      }

      swift_arrayInitWithCopy();

      if (v0)
      {
        v9 = *(v1 + 16);
        v10 = __OFADD__(v9, v0);
        v11 = v0 + v9;
        if (v10)
        {
          goto LABEL_30;
        }

        *(v1 + 16) = v11;
      }
    }

    else
    {

      if (v0)
      {
        goto LABEL_28;
      }
    }
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v19) + 0x370))(v12))
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = CNAutocompleteSearchController.messagesChatGUID.getter();
    (*(v14 + 48))(v1, v16, v17, ObjectType, v14);

    swift_unknownObjectRelease();
  }
}

void closure #2 in PeoplePickerViewController.init(style:existingAddresses:currentConversation:stagedActivity:setPreventsApplicationTerminationWhenModal:)(uint64_t a1, void (*a2)(void))
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

void PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()()
{
  v1 = v0;
  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    static os_log_type_t.default.getter();
    v2 = MEMORY[0x1E69E7CC0];
    os_log(_:dso:log:type:_:)();
    v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar;
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_actionBar);
    v5 = MEMORY[0x1E69E7D40];
    if (v4)
    {
      v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x160);
      v7 = v4;
      v6(0);
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
    if (!v9)
    {
      v26 = v5;
      v27 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversation);
      if (v27)
      {
        v28 = objc_opt_self();
        v29 = v27;
        v30 = [v28 sharedInstance];
        v31 = [v30 conversationManager];

        v48 = partial apply for closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
        v49 = v8;
        aBlock = MEMORY[0x1E69E9820];
        v45 = 1107296256;
        v46 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
        v47 = &block_descriptor_127;
        v32 = _Block_copy(&aBlock);

        [v31 generateLinkForConversation:v29 completionHandler:v32];

        _Block_release(v32);
      }

      else
      {
        v34 = [objc_opt_self() sharedInstance];
        v35 = [v34 conversationManager];

        PeoplePickerViewController.currentRecipientHandlesWithFaceTimeAvailable()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
        lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, &lazy cache variable for type metadata for TUHandle);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v48 = partial apply for closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
        v49 = v8;
        aBlock = MEMORY[0x1E69E9820];
        v45 = 1107296256;
        v46 = thunk for @escaping @callee_guaranteed (@guaranteed ASCLockupRequest?, @guaranteed Error?) -> ();
        v47 = &block_descriptor_124;
        v37 = _Block_copy(&aBlock);

        [v35 generateLinkWithInvitedMemberHandles:isa linkLifetimeScope:0 completionHandler:v37];

        _Block_release(v37);
      }

      v5 = v26;
LABEL_24:
      v38 = *(v1 + v3);
      if (v38)
      {
        v39 = *((*v5 & *v38) + 0x160);
        v40 = v38;
        v39(1);
      }

      return;
    }

    v42 = v3;
    v43 = v1;
    v10 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController);
    v11 = v9;
    v12 = [v10 recipients];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Array.count.getter(v13);
    v41 = v11;
    if (!v14)
    {

      v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v1 = v43;
      v33 = *(v43 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel);
      swift_beginAccess();
      specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(v41, v16, *(v33 + 16) != 1, v1, v1);

      v3 = v42;
      goto LABEL_24;
    }

    v1 = v14;
    aBlock = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v1 < 0)
    {
      break;
    }

    v15 = 0;
    v16 = aBlock;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB22010](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v18, &selRef_address);
      if (!v21)
      {
        goto LABEL_31;
      }

      v22 = v20;
      v23 = v21;

      aBlock = v16;
      v24 = *(v16 + 16);
      if (v24 >= *(v16 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v16 = aBlock;
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v23;
      ++v15;
      if (v17 == v1)
      {

        v5 = MEMORY[0x1E69E7D40];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void PeoplePickerViewController.showSMSRelayUpgradeAlert(withCompletion:)(uint64_t a1, uint64_t a2)
{
  v5 = PeoplePickerViewController.smsAccount.getter();
  if (v5)
  {
    v6 = v5;
    v30 = v2;
    v31 = a1;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertController);
    v7 = objc_opt_self();
    v8 = [v7 conversationKit];
    v34._object = 0xE000000000000000;
    v9._object = 0x80000001BC4F96A0;
    v9._countAndFlagsBits = 0xD000000000000012;
    v10.value._countAndFlagsBits = 0x61737265766E6F43;
    v10.value._object = 0xEF74694B6E6F6974;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v34._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v34);

    v13 = [v7 conversationKit];
    v35._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD00000000000001ALL;
    v14._object = 0x80000001BC4F96C0;
    v15.value._countAndFlagsBits = 0x61737265766E6F43;
    v15.value._object = 0xEF74694B6E6F6974;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v35);

    v32 = @nonobjc UIAlertController.__allocating_init(title:message:preferredStyle:)(v12._countAndFlagsBits, v12._object, v17._countAndFlagsBits, v17._object, 1);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAlertAction);
    v18 = [v7 conversationKit];
    v36._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0x4E4F5F4E525554;
    v19._object = 0xE700000000000000;
    v20.value._countAndFlagsBits = 0x61737265766E6F43;
    v20.value._object = 0xEF74694B6E6F6974;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v36._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v36);

    v22 = swift_allocObject();
    v22[2] = v6;
    v22[3] = v31;
    v22[4] = a2;
    v23 = v6;

    v24 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v32 addAction_];

    v25 = [v7 &off_1E7FE9588];
    v37._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0x4C45434E4143;
    v26._object = 0xE600000000000000;
    v27.value._countAndFlagsBits = 0x61737265766E6F43;
    v27.value._object = 0xEF74694B6E6F6974;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v37);

    v29 = @nonobjc UIAlertAction.__allocating_init(title:style:handler:)();
    [v32 addAction_];

    [v30 presentViewController:v32 animated:1 completion:0];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();

    os_log(_:dso:log:type:_:)();
  }
}

void closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a2)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC4BA940;
      aBlock[0] = a2;
      v15 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v16 = String.init<A>(reflecting:)();
      v18 = v17;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v16;
      *(v14 + 40) = v18;
      os_log(_:dso:log:type:_:)();
    }

    else if (a1)
    {
      v19 = *(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
      *(Strong + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink) = a1;
      v20 = a1;

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v28 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = v13;
      *(v21 + 24) = v20;
      aBlock[4] = partial apply for closure #1 in closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink();
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_133;
      v25 = _Block_copy(aBlock);
      v27 = v20;
      v26 = v13;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v25;
      v23 = v28;
      MEMORY[0x1BFB215C0](0, v11, v7, v25);
      _Block_release(v22);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

void closure #1 in closure #1 in PeoplePickerViewController.presentMessageComposeSheetWithConversationLink()(char *a1, void *a2)
{
  v4 = [*&a1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_searchController] recipients];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = specialized Array.count.getter(v5);
  if (v6)
  {
    v7 = v6;
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v20 = a2;
      v8 = 0;
      v9 = v21;
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB22010](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v5 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = outlined bridged method (pb) of @objc TUConversationLink.displayName.getter(v11, &selRef_address);
        if (!v14)
        {
          goto LABEL_19;
        }

        v15 = v13;
        v16 = v14;

        v17 = *(v21 + 16);
        if (v17 >= *(v21 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        *(v21 + 16) = v17 + 1;
        v18 = v21 + 16 * v17;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        ++v8;
        if (v10 == v7)
        {

          a2 = v20;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v19 = *&a1[OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_viewModel];
    swift_beginAccess();
    specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(a2, v9, *(v19 + 16) != 1, a1, a1);
  }
}

Swift::Void __swiftcall PeoplePickerViewController.messageComposeViewController(_:didFinishWith:)(MFMessageComposeViewController *_, MessageComposeResult didFinishWith)
{
  [(MFMessageComposeViewController *)_ dismissViewControllerAnimated:1 completion:0];

  PeoplePickerViewController.handleMessageComposeCompletion(withResult:)(didFinishWith);
}

void PeoplePickerViewController.handleMessageComposeCompletion(withResult:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style))
  {
    if (*(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_style) == 1 && a1 == 1)
    {
      PeoplePickerViewController.addPeople()();
    }
  }

  else
  {
    PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(a1);
  }
}

void PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit26PeoplePickerViewController_currentConversationLink);
  if (v4)
  {
    if (a1 != 1)
    {
      v19 = objc_opt_self();
      v20 = v4;
      v21 = [v19 sharedInstance];
      v22 = [v21 conversationManager];

      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      aBlock[4] = partial apply for closure #1 in PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:);
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_109;
      v24 = _Block_copy(aBlock);
      v25 = v20;

      [v22 invalidateLink:v25 completionHandler:v24];

      _Block_release(v24);
      v26 = *(v2 + v3);
      *(v2 + v3) = 0;

      return;
    }

    v34 = v4;
    v5 = PeoplePickerViewController.currentRecipientsWithFaceTimeUnvailable()();
    v6 = PeoplePickerViewController.currentRecipientsWithFaceTimeAvailable()();
    v7 = specialized Array.count.getter(v5);
    if (v7 < 1 || (v7 = specialized Array.count.getter(v6), v7 != 1))
    {
      v18 = 0;
      goto LABEL_17;
    }

    if (specialized Array.count.getter(v6))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v6 & 0xC000000000000001) == 0, v6);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB22010](0, v6);
      }

      else
      {
        v8 = *(v6 + 32);
      }

      v9 = v8;
      v10 = *&v8[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address];
      v11 = *&v8[OBJC_IVAR____TtC15ConversationKit14PickablePerson_address + 8];

      v12 = MEMORY[0x1BFB209B0](v10, v11);

      v13 = TUCopyIDSCanonicalAddressForDestinationID();

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17._countAndFlagsBits = v14;
        v17._object = v16;
        v18 = PeoplePickerViewModel.isWebCapableAvailable(for:)(v17);

LABEL_17:
        if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x370))(v7))
        {
          v28 = v27;
          ObjectType = swift_getObjectType();
          (*(v28 + 56))(v34, v5, v6, v18, ObjectType, v28);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BC4BA940;
    aBlock[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit14PickablePersonCGMd);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
  }
}

void closure #1 in PeoplePickerViewController.handleMessageComposeCompletionForInviteFlow(withResult:)(int a1, id a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAA20;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
    v7 = a3;
    v8 = String.init<A>(reflecting:)();
    v10 = v9;
    v11 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v12 = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 64) = v12;
    *(v6 + 32) = v8;
    *(v6 + 40) = v10;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v14 = String.init<A>(reflecting:)();
    *(v6 + 96) = v11;
    *(v6 + 104) = v12;
    *(v6 + 72) = v14;
    *(v6 + 80) = v15;
    os_log(_:dso:log:type:_:)();
  }
}

id @nonobjc CNComposeRecipient.init(contact:address:kind:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v8 = MEMORY[0x1BFB209B0](a2, a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithContact:a1 address:v8 kind:a4];

  return v9;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, void *a6)
{
  v7 = a3[1];
  v124 = a6;
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v112 = v124;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v99 = (v9 + 16);
      v98 = *(v9 + 16);
      for (i = v9; ; v9 = i)
      {
        if (v98 < 2)
        {

          return;
        }

        v100 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v101 = (v9 + 16 * v98);
        v102 = *v101;
        v103 = v99;
        v9 = &v99[2 * v98];
        v104 = *(v9 + 8);
        v105 = (v100 + 8 * *v9);
        v113 = (v100 + 8 * v104);
        v117 = (v100 + 8 * *v101);
        v106 = v112;
        specialized _merge<A>(low:mid:high:buffer:by:)(v117, v105, v113, v111, a5 & 1, v106);
        if (v123)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_123;
        }

        if (v98 - 2 >= *v103)
        {
          goto LABEL_124;
        }

        v99 = v103;
        *v101 = v102;
        v101[1] = v104;
        v107 = *v103 - v98;
        if (*v103 < v98)
        {
          goto LABEL_125;
        }

        v123 = 0;
        v98 = *v103 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 16), v107, v9);
        *v103 = v98;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_97;
  }

  v108 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v119 = v9;
      v12 = *(*a3 + 8 * v11);
      v13 = v8;
      v14 = (*a3 + 8 * v8);
      v112 = (8 * v8);
      v16 = *v14;
      v15 = v14 + 2;
      v17 = v8 + 1;
      v9 = swift_allocObject();
      *(v9 + 16) = v124;
      *(swift_allocObject() + 16) = v124;
      v113 = v124;

      v114 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v12, v16, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v9, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

      v11 = v17;
      v18 = v13 + 2;
      while (1)
      {
        v19 = v18;
        v20 = v11 + 1;
        if (v20 >= v7)
        {
          break;
        }

        v9 = *(v15 - 1);
        v21 = *v15;
        v22 = v20;
        v23 = v7;
        v24 = swift_allocObject();
        *(v24 + 16) = v113;
        *(swift_allocObject() + 16) = v113;
        v25 = v113;

        v26 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v21, v9, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v24, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:)) & 1;

        v7 = v23;

        ++v15;
        v18 = v19 + 1;
        v11 = v22;
        if ((v114 & 1) != v26)
        {
          goto LABEL_9;
        }
      }

      v11 = v7;
LABEL_9:
      if (v114)
      {
        v10 = v13;
        if (v11 < v13)
        {
          goto LABEL_129;
        }

        if (v13 >= v11)
        {
          v9 = v119;
        }

        else
        {
          if (v7 >= v19)
          {
            v27 = v19;
          }

          else
          {
            v27 = v7;
          }

          v28 = 8 * v27 - 8;
          v29 = v11;
          v30 = v13;
          v31 = v112;
          do
          {
            if (v30 != --v11)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v33 = *&v31[v32];
              *&v31[v32] = *(v32 + v28);
              *(v32 + v28) = v33;
            }

            ++v30;
            v28 -= 8;
            v31 += 8;
          }

          while (v30 < v11);
          v9 = v119;
          v11 = v29;
        }
      }

      else
      {
        v9 = v119;
        v10 = v13;
      }
    }

    v34 = a3[1];
    if (v11 >= v34)
    {
      goto LABEL_41;
    }

    v35 = v11;
    v67 = __OFSUB__(v11, v10);
    v36 = v11 - v10;
    if (v67)
    {
      goto LABEL_128;
    }

    if (v36 < v108)
    {
      break;
    }

    v11 = v35;
LABEL_41:
    if (v11 < v10)
    {
      goto LABEL_127;
    }

    v116 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = v96;
    }

    v49 = *(v9 + 16);
    v50 = v49 + 1;
    v51 = v116;
    if (v49 >= *(v9 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v51 = v116;
      v9 = v97;
    }

    *(v9 + 16) = v50;
    v52 = (v9 + 32);
    v53 = (v9 + 32 + 16 * v49);
    *v53 = v10;
    v53[1] = v51;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v49)
    {
      v112 = (v9 + 32);
      v121 = v9;
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v52[16 * v50 - 16];
        v56 = (v9 + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v9 + 32);
          v58 = *(v9 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_62:
          if (v60)
          {
            goto LABEL_114;
          }

          v72 = *v56;
          v71 = v56[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_117;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_120;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_122;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        if (v50 < 2)
        {
          goto LABEL_116;
        }

        v79 = *v56;
        v78 = v56[1];
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_77:
        if (v75)
        {
          goto LABEL_119;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_121;
        }

        if (v82 < v74)
        {
          goto LABEL_91;
        }

LABEL_84:
        if (v54 - 1 >= v50)
        {
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
          goto LABEL_131;
        }

        v86 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v87 = &v52[16 * v54 - 16];
        v88 = *v87;
        v89 = v54;
        v9 = &v52[16 * v54];
        v90 = *(v9 + 8);
        v91 = (v86 + 8 * *v87);
        v92 = (v86 + 8 * *v9);
        v93 = (v86 + 8 * v90);
        v94 = v124;
        specialized _merge<A>(low:mid:high:buffer:by:)(v91, v92, v93, v113, a5 & 1, v94);
        if (v123)
        {

          goto LABEL_107;
        }

        if (v90 < v88)
        {
          goto LABEL_109;
        }

        v95 = *(v121 + 16);
        if (v89 > v95)
        {
          goto LABEL_110;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        if (v89 >= v95)
        {
          goto LABEL_111;
        }

        v123 = 0;
        v50 = v95 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v9 + 16), v95 - 1 - v89, v9);
        v9 = v121;
        *(v121 + 16) = v95 - 1;
        v52 = v112;
        if (v95 <= 2)
        {
          goto LABEL_91;
        }
      }

      v61 = &v52[16 * v50];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = v56[1];
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_126;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_62;
    }

LABEL_91:
    v8 = v116;
    v7 = a3[1];
    if (v116 >= v7)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v10, v108))
  {
    goto LABEL_130;
  }

  if (v10 + v108 >= v34)
  {
    v37 = a3[1];
  }

  else
  {
    v37 = (v10 + v108);
  }

  if (v37 < v10)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v11 = v35;
  if (v35 == v37)
  {
    goto LABEL_41;
  }

  v120 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v35 - 8;
  v109 = v10;
  v40 = (v10 - v35);
  v111 = v37;
LABEL_33:
  v113 = v39;
  v115 = v11;
  v41 = *(v38 + 8 * v11);
  v112 = v40;
  v42 = v39;
  while (1)
  {
    v43 = *v42;
    v44 = swift_allocObject();
    *(v44 + 16) = v124;
    *(swift_allocObject() + 16) = v124;
    v45 = v124;

    v46 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v41, v43, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v44, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

    if ((v46 & 1) == 0)
    {
LABEL_38:
      v11 = v115 + 1;
      v39 = (v113 + 1);
      v40 = v112 - 1;
      if ((v115 + 1) == v111)
      {
        v11 = v111;
        v9 = v120;
        v10 = v109;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v38)
    {
      break;
    }

    v47 = *v42;
    v41 = v42[1];
    *v42 = v41;
    v42[1] = v47;
    --v42;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char a5, void *a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = a2 - a1;
  v11 = a3 - a2;
  if (v10 < v11)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v12 = &v6[v10];
    v38 = v7;
    for (i = v12; ; v12 = i)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_28;
      }

      v14 = *v8;
      v15 = *v6;
      v16 = swift_allocObject();
      *(v16 + 16) = a6;
      *(swift_allocObject() + 16) = a6;
      v17 = a6;

      v18 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v14, v15, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v16, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v8;
      v20 = v9 == v8++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      v7 = v38;
    }

    v19 = v6;
    v20 = v9 == v6++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v19;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v12 = &v6[v11];
  v37 = v9;
  v35 = v6;
LABEL_15:
  v21 = v8 - 1;
  --v7;
  for (j = v8 - 1; v12 > v6 && v8 > v9; v21 = j)
  {
    v23 = v8;
    v25 = v12 - 1;
    v24 = *(v12 - 1);
    v26 = *v21;
    v27 = v12;
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(swift_allocObject() + 16) = a6;
    v29 = a6;

    v30 = _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(v24, v26, a5 & 1, implicit closure #2 in implicit closure #1 in closure #2 in PeoplePickerViewController.preferredRecipient(for:)partial apply, v28, partial apply for implicit closure #6 in implicit closure #5 in PeoplePickerViewController.preferredRecipient(for:));

    v31 = v7 + 1;
    if (v30)
    {
      v20 = v31 == v23;
      v9 = v37;
      v8 = j;
      v12 = v27;
      v6 = v35;
      if (!v20)
      {
        *v7 = *j;
        v8 = j;
      }

      goto LABEL_15;
    }

    if (v27 != v31)
    {
      *v7 = *v25;
    }

    --v7;
    v12 = v25;
    v6 = v35;
    v8 = v23;
    v9 = v37;
  }

LABEL_28:
  v32 = v12 - v6;
  if (v8 != v6 || v8 >= &v6[v32])
  {
    memmove(v8, v6, 8 * v32);
  }

  return 1;
}

void outlined bridged method (mbnn) of @objc UINavigationItem.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setTitle_];
}

uint64_t outlined bridged method (ob) of @objc TUConversationActivity.concatenatedMetadataDescription.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_15_14();
}

id outlined bridged method (mbnn) of @objc CNComposeRecipient.contactWithKeys(toFetch:)(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [a2 contactWithKeysToFetch_];

  return v4;
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PeoplePickerStyle and conformance PeoplePickerStyle()
{
  result = lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle;
  if (!lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PeoplePickerStyle and conformance PeoplePickerStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PeoplePickerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of LinkShareCoordinatorProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

void outlined consume of IMAccount??(id a1)
{
  if (a1 != 1)
  {
  }
}

id outlined copy of IMAccount??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t outlined bridged method (pb) of @objc CNComposeRecipient.children()(void *a1)
{
  v1 = [a1 children];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNComposeRecipient);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc CNAutocompleteSearchController.otherRecipientAddresses.setter(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setOtherRecipientAddresses_];
}

void outlined bridged method (mbnn) of @objc UINavigationBar.largeTitleTextAttributes.setter(uint64_t a1, void *a2)
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, 255, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setLargeTitleTextAttributes_];
}

uint64_t _s15ConversationKit18PeoplePickerRankerC4sort3lhs3rhs15isGroupFaceTime0ijkL9Available0iklM0SbAA0cD6Handle_p_AaJ_pS2bSSXESbSSXEtFZTf4eennnn_nAA22RecipientResultWrapperC_ALTt4g5(uint64_t a1, uint64_t a2, char a3, unsigned int (*a4)(uint64_t, uint64_t), uint64_t a5, unsigned int (*a6)(uint64_t, uint64_t))
{
  v45 = type metadata accessor for RecipientResultWrapper();
  v46 = &protocol witness table for RecipientResultWrapper;
  v44[0] = a1;
  v43[3] = v45;
  v43[4] = &protocol witness table for RecipientResultWrapper;
  v43[0] = a2;

  v11 = RecipientResultWrapper.idsHandle.getter();
  v13 = v12;
  v14 = RecipientResultWrapper.idsHandle.getter();
  v16 = v15;
  if (!v13)
  {

    goto LABEL_15;
  }

  if (!v15)
  {
LABEL_15:
    if (one-time initialization token for peoplePicker != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.peoplePicker);
    outlined init with copy of IDSLookupManager(v44, v42);
    outlined init with copy of IDSLookupManager(v43, v41);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315394;
      outlined init with copy of IDSLookupManager(v42, v39);
      v30 = specialized >> prefix<A>(_:)(v39);
      v32 = v31;
      outlined destroy of TapInteractionHandler?(v39, &_s15ConversationKit18PeoplePickerHandle_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v40);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      outlined init with copy of IDSLookupManager(v41, v39);
      v34 = specialized >> prefix<A>(_:)(v39);
      v36 = v35;
      outlined destroy of TapInteractionHandler?(v39, &_s15ConversationKit18PeoplePickerHandle_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v40);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_1BBC58000, v26, v27, "Missing IDS Handle for %s, %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v29, -1, -1);
      MEMORY[0x1BFB23DF0](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v41);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    LOBYTE(v20) = v13 != 0;
    goto LABEL_21;
  }

  v17 = v14;
  if (a3)
  {
    v18 = a4;
    v19 = a4(v11, v13);
  }

  else
  {
    v18 = a6;
    v19 = a6(v11, v13);
  }

  LOBYTE(v20) = v19;
  if (((v19 ^ v18(v17, v16)) & 1) == 0)
  {
    v21 = MEMORY[0x1BFB209B0](v11, v13);
    v20 = [v21 destinationIdIsPhoneNumber];

    v22 = MEMORY[0x1BFB209B0](v17, v16);
    v23 = [v22 destinationIdIsPhoneNumber];

    if (v20 == v23)
    {
      if (v11 == v17 && v13 == v16)
      {

        LOBYTE(v20) = 0;
        goto LABEL_22;
      }

      LOBYTE(v20) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_21:

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v20 & 1;
}

uint64_t specialized PeoplePickerViewController.presentMessageComposeViewController(for:withRecipientHandles:shouldIgnoreEmails:delegate:)(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
    [v17 setMessageComposeDelegate_];
    outlined bridged method (mbgnn) of @objc MFMessageComposeViewController.recipients.setter(a2, v17);
    v18 = [objc_opt_self() conversationKit];
    v38._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x61737265766E6F43;
    v19.value._object = 0xEF74694B6E6F6974;
    v20._object = 0x80000001BC4F97A0;
    v20._countAndFlagsBits = 0xD000000000000010;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v38);

    outlined bridged method (mbnn) of @objc MFMessageComposeViewController.body.setter(v22._countAndFlagsBits, v22._object, v17);
    [v17 _setCanEditRecipients_];
    [v17 setShouldHideClearPluginButton_];
    [v17 _setShouldIgnoreEmailsWhenSending_];
    v23 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
    v24 = TULinkShareItem.dataRepresentation.getter();
    v26 = v25;

    isa = Data._bridgeToObjectiveC()().super.isa;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    [v17 addRichLinkData:isa withWebpageURL:v29];

    [a5 presentViewController:v17 animated:1 completion:0];
    outlined consume of Data._Representation(v24, v26);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC4BA940;
    v37[1] = a1;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationLink);
    v33 = a1;
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    os_log(_:dso:log:type:_:)();
  }
}

{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  if (v15)
  {
    v16 = v15;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [objc_allocWithZone(MEMORY[0x1E6973F10]) init];
    [v17 setMessageComposeDelegate_];
    outlined bridged method (mbgnn) of @objc MFMessageComposeViewController.recipients.setter(a2, v17);
    v18 = [objc_opt_self() conversationKit];
    v38._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0x61737265766E6F43;
    v19.value._object = 0xEF74694B6E6F6974;
    v20._object = 0x80000001BC4F97A0;
    v20._countAndFlagsBits = 0xD000000000000010;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0;
    v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v19, v18, v21, v38);

    outlined bridged method (mbnn) of @objc MFMessageComposeViewController.body.setter(v22._countAndFlagsBits, v22._object, v17);
    [v17 _setCanEditRecipients_];
    [v17 setShouldHideClearPluginButton_];
    [v17 _setShouldIgnoreEmailsWhenSending_];
    v23 = [objc_allocWithZone(MEMORY[0x1E69D8C20]) initWithTUConversationLink_];
    v24 = TULinkShareItem.dataRepresentation.getter();
    v26 = v25;

    isa = Data._bridgeToObjectiveC()().super.isa;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    [v17 addRichLinkData:isa withWebpageURL:v29];

    [a5 presentViewController:v17 animated:1 completion:0];
    outlined consume of Data._Representation(v24, v26);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC4BA940;
    v37[1] = a1;
    type metadata accessor for TUConversationLink();
    v33 = a1;
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t key path getter for InCallControlsOpenMessagesCell.delegate : InCallControlsOpenMessagesCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsOpenMessagesCell.delegate : InCallControlsOpenMessagesCell(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsOpenMessagesCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsOpenMessagesCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton()
{
  type metadata accessor for InCallControlButton();
  v10 = &type metadata for SymbolImageDescribers.DrawerTable;
  v11 = &protocol witness table for SymbolImageDescribers.DrawerTable;
  v9[0] = 0;
  v0 = [objc_opt_self() conversationKit];
  v12._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4547415353454DLL;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE700000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v12);

  v5 = InCallControlButton.__allocating_init(style:symbolDescriber:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:isImageTrailing:)(4, v9, v4._countAndFlagsBits, v4._object, 0x402C000000000000, 0, 0, 0, 0, 1);
  v6 = OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label;
  [*(v5 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label) setAdjustsFontForContentSizeCategory_];
  v7 = *(v5 + v6);
  if (v7)
  {
    [v7 setNumberOfLines_];
    v7 = *(v5 + v6);
  }

  [v7 setAdjustsFontSizeToFitWidth_];
  return v5;
}

id InCallControlsOpenMessagesCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

void *InCallControlsOpenMessagesCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton;
  *(v0 + v1) = closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton();
  v9 = type metadata accessor for InCallControlsOpenMessagesCell();
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v9);
  v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
  v7 = v5;
  v6();

  return v7;
}

Swift::Void __swiftcall InCallControlsOpenMessagesCell.configureSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  static UIBackgroundConfiguration.listPlainCell()();
  v5 = [objc_opt_self() clearColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v6 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  MEMORY[0x1BFB216F0](v4);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  UIControl.addAction(for:handler:)(64, partial apply for closure #1 in InCallControlsOpenMessagesCell.configureSubviews(), v8);

  if (one-time initialization token for brickButton != -1)
  {
    swift_once();
  }

  v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x1D0);

  v9(v10);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = OUTLINED_FUNCTION_0_64();
  [v11 addSubview_];

  v12 = [v7 heightAnchor];
  v13 = [v12 constraintGreaterThanOrEqualToConstant_];

  v14 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint;
  v15 = *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint);
  *(v1 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = v13;

  InCallControlsOpenMessagesCell.updateConstraintsConstants()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BC4BE4A0;
  v17 = [v7 leadingAnchor];
  v18 = OUTLINED_FUNCTION_0_64();
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v20;
  v21 = *(v1 + v14);
  if (v21)
  {
    v22 = objc_opt_self();
    *(v16 + 40) = v21;
    v23 = v21;
    v24 = [v7 centerYAnchor];
    v25 = OUTLINED_FUNCTION_0_64();
    v26 = [v25 centerYAnchor];

    v27 = OUTLINED_FUNCTION_1_14();
    *(v16 + 48) = v27;
    v28 = [v7 topAnchor];
    v29 = OUTLINED_FUNCTION_0_64();
    v30 = [v29 topAnchor];

    v31 = OUTLINED_FUNCTION_1_14();
    *(v16 + 56) = v31;
    v32 = [v7 bottomAnchor];
    v33 = OUTLINED_FUNCTION_0_64();
    v34 = [v33 bottomAnchor];

    v35 = OUTLINED_FUNCTION_1_14();
    *(v16 + 64) = v35;
    v36 = [v7 trailingAnchor];
    v37 = OUTLINED_FUNCTION_0_64();
    v38 = [v37 trailingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v16 + 72) = v39;
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in InCallControlsOpenMessagesCell.configureSubviews()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x68))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      v6 = *&v1[OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton];
      v5(v1, v6, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id InCallControlsOpenMessagesCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsOpenMessagesCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton;
  *(v0 + v1) = closure #1 in variable initialization expression of InCallControlsOpenMessagesCell.openMessagesButton();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall InCallControlsOpenMessagesCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for InCallControlsOpenMessagesCell();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (isa)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
    {

      goto LABEL_13;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  InCallControlsOpenMessagesCell.updateConstraintsConstants()();
LABEL_13:
}

void InCallControlsOpenMessagesCell.updateConstraintsConstants()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_buttonHeightConstraint);
  if (v1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit30InCallControlsOpenMessagesCell_openMessagesButton) + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
    v4 = v1;
    v3 = [v2 font];
    if (!v3)
    {
      v3 = [objc_opt_self() preferredFontForTextStyle_];
    }

    NSLayoutConstraint.setConstant(_:scaledToFont:)(v3, 52.0);
  }

  else
  {
    __break(1u);
  }
}

id InCallControlsOpenMessagesCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsOpenMessagesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for reuseIdentifier()
{
  type metadata accessor for ParticipantCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15ParticipantCellCmMd);
  result = String.init<A>(describing:)();
  static ParticipantCell.reuseIdentifier = result;
  *algn_1EDDCCF28 = v1;
  return result;
}

uint64_t *ParticipantCell.reuseIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for reuseIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  return &static ParticipantCell.reuseIdentifier;
}

uint64_t static ParticipantCell.reuseIdentifier.getter()
{
  if (one-time initialization token for reuseIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_65();
  }

  v0 = static ParticipantCell.reuseIdentifier;

  return v0;
}

uint64_t ParticipantCell.participantIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  return outlined init with copy of UUID?(v1 + v3, a1);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ParticipantCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id ParticipantCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_6(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView;
  v4 = objc_allocWithZone(type metadata accessor for ParticipantView());
  *(v0 + v3) = OUTLINED_FUNCTION_1_66();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OUTLINED_FUNCTION_18_1();
  v9 = objc_msgSendSuper2(v7, v8, v6, v0, ObjectType);
  v10 = [v9 contentView];
  ParticipantCell.configureSubviews(in:)(v10);

  return v9;
}

id ParticipantCell.configureSubviews(in:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  ParticipantView.isInRoster.setter(1);
  UIView.addTapInteraction(withTapCount:)(1);
  [a1 addSubview_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA7F0;
  v6 = [v3 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v3 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v3 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [v3 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints_];

  static Layout.Roster.iOS.getter(v20);
  [a1 _setContinuousCornerRadius_];

  return [a1 setClipsToBounds_];
}

id ParticipantCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantCell.init(coder:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_13_6(v1);
  v2 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantView;
  v3 = objc_allocWithZone(type metadata accessor for ParticipantView());
  *(v0 + v2) = OUTLINED_FUNCTION_1_66();
  v4 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v8 - v4;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_prepareForReuse, v3);
  v6 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  outlined assign with take of UUID?(v5, v0 + v7);
  swift_endAccess();
  ParticipantView.reset()();
}

uint64_t ParticipantCell.configure(with:)()
{
  v1 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ParticipantViewModel.ParticipantDetails(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  ParticipantViewModel.participantDetails.getter();
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 16))(v10, v7, v11);
  outlined destroy of ParticipantViewModel.ParticipantDetails(v7, type metadata accessor for ParticipantViewModel.ParticipantDetails);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC15ConversationKit15ParticipantCell_participantIdentifier;
  swift_beginAccess();
  outlined assign with take of UUID?(v10, v0 + v12);
  swift_endAccess();
  ParticipantViewModel.participantDetails.getter();
  v13 = &v7[*(v5 + 28)];
  v15 = *v13;
  v14 = *(v13 + 1);

  outlined destroy of ParticipantViewModel.ParticipantDetails(v7, type metadata accessor for ParticipantViewModel.ParticipantDetails);
  v16 = (v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v16 = v15;
  v16[1] = v14;

  ParticipantViewModel.compatibleWithRoster.getter();
  ParticipantView.configure(with:isOneToOneMode:)(v3, 0);
  return outlined destroy of ParticipantViewModel.ParticipantDetails(v3, type metadata accessor for ParticipantViewModel);
}

Swift::Void __swiftcall ParticipantCell.updateAudioPowerForParticipantCell(withPower:)(Swift::Float withPower)
{
  v2 = ParticipantView.monogramView.getter();
  ParticipantMonogramView.updateAudioVisualization(with:)(withPower);
}

uint64_t ParticipantCell.accessibilityDisplayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);

  return v1;
}

uint64_t ParticipantCell.accessibilityDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15ConversationKit15ParticipantCell_accessibilityDisplayName);
  *v3 = a1;
  v3[1] = a2;
}

id ParticipantCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ParticipantViewModel.ParticipantDetails(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ParticipantCell()
{
  result = type metadata singleton initialization cache for ParticipantCell;
  if (!type metadata singleton initialization cache for ParticipantCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ParticipantCell()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CollaborationControlsRecipeGenerator.collaborationHUDRecipe(controlsManager:alternateAppearance:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v114) = a2;
  v117 = a3;
  v4 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v113 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v115 = &v104 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  v19 = type metadata accessor for StagedCollaboration(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v116 = v22 - v21;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 296))() & 1) == 0)
  {
    goto LABEL_9;
  }

  v23 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_59();
  v25 = (*(v24 + 704))();
  if (!v25)
  {
    goto LABEL_9;
  }

  v112 = v25;
  OUTLINED_FUNCTION_3_59();
  v111 = (*(v26 + 2144))();
  if (!v111)
  {

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_59();
  (*(v27 + 2240))();
  if (swift_getEnumCaseMultiPayload())
  {

    outlined destroy of ForegroundCollaborationState(v18, type metadata accessor for ForegroundCollaborationState);
LABEL_9:
    OUTLINED_FUNCTION_10_0();
    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v4);
  }

  outlined init with take of StagedCollaboration(v18, v116);
  if ((v114 & 1) != 0 && (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView), v32 = OUTLINED_FUNCTION_4_43(), (v34 = static UIImageView.appIcon(for:)(v32, v33)) != 0))
  {
    v108 = v34;
    v109 = [v34 image];
    v107 = closure #1 in CollaborationControlsRecipeGenerator.recipeViewFor(_:in:managedBy:usingAlternateApperance:)(v111, a1);
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v35 = OUTLINED_FUNCTION_4_43();
    v37 = static UIImage.appIcon(for:usingIconCrop:)(v35, v36, 1);
    v110 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v38 = objc_opt_self();
    v39 = v37;
    v109 = v112;
    v40 = [v38 clearColor];
    v41 = v109;
    v109 = v37;
    v42 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v41, v37, 0, 0, v40);
    v108 = [v42 view];
    (*((*v23 & *a1) + 0x2A8))();
    v107 = (*((*v23 & *v42) + 0x58))(v14);

    (*(v11 + 8))(v14, v10);
  }

  v43 = v116;
  v44 = SWShareableContent.collaborationInitiator.getter();
  v45 = (v43 + *(v19 + 28));
  v46 = *v45;
  v47 = v45[1];
  v110 = ConversationControlsStringProvider.collaborationHUDStrings(initiator:itemTitle:)(v44, *v45, v47);
  v49 = v48;
  v51 = v50;

  if (v114)
  {
    if (one-time initialization token for bundleIDToItemType != -1)
    {
      swift_once();
    }

    v52 = *&v111[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
    v53 = *&v111[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8];
    swift_beginAccess();
    v54 = specialized Dictionary.subscript.getter(v52, v53, static AppLaunchNotice.bundleIDToItemType);
    v56 = v55;
    swift_endAccess();
    if (v56)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1BC4BA940;
      v58 = [objc_opt_self() conversationKit];
      v126._object = 0xE000000000000000;
      v59.value._countAndFlagsBits = 0x61737265766E6F43;
      v59.value._object = 0xEF74694B6E6F6974;
      v60._countAndFlagsBits = v54;
      v60._object = v56;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      v126._countAndFlagsBits = 0;
      v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v126);

      *(v57 + 32) = v62;

      v51 = v57;
    }

    if (v47)
    {

      v49 = v47;
      v110 = v46;
    }
  }

  v120 = 10;
  v121 = 0u;
  v122 = 0u;
  v123 = 7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);

  v63._countAndFlagsBits = v110;
  v110 = v49;
  v63._object = v49;
  isa = NSAttributedString.__allocating_init(string:)(v63).super.isa;
  v64 = *(v51 + 16);
  v65 = MEMORY[0x1E69E7CC0];
  v114 = v51;
  if (v64)
  {
    *&v124[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v66 = (v51 + 40);
    do
    {
      v67 = *(v66 - 1);
      v68 = *v66;

      v69._countAndFlagsBits = v67;
      v69._object = v68;
      NSAttributedString.__allocating_init(string:)(v69);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v66 += 2;
      --v64;
    }

    while (v64);
    v65 = *&v124[0];
  }

  v70 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  type metadata accessor for ConversationControlsAction();
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v124);
  v104 = v124[1];
  v105 = v124[0];
  v75 = v125;
  v76 = v4[9];
  v77 = v113;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v70);
  v81 = (v77 + v4[10]);
  v82 = v77 + v4[15];
  *(v82 + 4) = 0;
  *v82 = 0u;
  *(v82 + 1) = 0u;
  v82[40] = -2;
  *(v77 + v4[16]) = 0;
  v83 = v77 + v4[17];
  v84 = v77 + v4[18];
  *v84 = 1;
  *(v84 + 8) = 0u;
  *(v84 + 24) = 0u;
  *(v84 + 40) = 0u;
  *(v84 + 56) = 0u;
  v84[72] = 0;
  outlined init with copy of ConversationControlsType(&v120, v77);
  v85 = v108;
  v77[6] = 0;
  v77[7] = v85;
  v86 = v107;
  v77[8] = v109;
  v77[9] = v86;
  v77[10] = isa;
  v77[11] = v65;
  v81[1] = 0;
  v81[2] = 0;
  *v81 = 0;
  v87 = v77 + v76;
  v88 = v115;
  outlined assign with copy of AttributedString?(v115, v87);
  *(v77 + v4[11]) = 2;
  *(v77 + v4[12]) = 0;
  *(v77 + v4[13]) = 1;
  *(v77 + v4[14]) = 2;
  *v83 = 0;
  *(v83 + 1) = 0;
  v83[16] = -1;
  v89 = *(v74 + 16);
  if (v89 <= 5)
  {

    outlined destroy of AttributedString?(v88);
    outlined destroy of ConversationControlsType(&v120);
    *v82 = v74;
    *(v82 + 24) = v104;
    *(v82 + 8) = v105;
    v82[40] = v75 | 0x80;
    v100 = v117;
    outlined init with copy of ConversationControlsRecipe(v77, v117);
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v4);
    OUTLINED_FUNCTION_0_66();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, &static Logger.conversationControls);

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = v88;
      v95 = swift_slowAlloc();
      v118 = v89;
      v119 = v95;
      *v93 = 136315138;
      v96 = String.init<A>(reflecting:)();
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, &v119);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_1BBC58000, v91, v92, "Too many buttonShelf actions (%s)", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x1BFB23DF0](v95, -1, -1);
      MEMORY[0x1BFB23DF0](v93, -1, -1);

      v99 = v94;
    }

    else
    {

      v99 = v88;
    }

    outlined destroy of AttributedString?(v99);
    outlined destroy of ConversationControlsType(&v120);
    OUTLINED_FUNCTION_0_66();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v4);
  }

  outlined destroy of ForegroundCollaborationState(v116, type metadata accessor for StagedCollaboration);
}

Swift::Int closure #1 in CollaborationControlsRecipeGenerator.recipeViewFor(_:in:managedBy:usingAlternateApperance:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = String.hash(into:)();
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x2A8))(v7);
  UUID.uuidString.getter();
  (*(v4 + 8))(v6, v3);
  String.hash(into:)();

  return Hasher.finalize()();
}

uint64_t outlined init with take of StagedCollaboration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StagedCollaboration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ForegroundCollaborationState(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t key path getter for CallControlsFullScreenStatusViewModel.view : CallControlsFullScreenStatusViewModel@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for CallControlsFullScreenStatusViewModel.view : CallControlsFullScreenStatusViewModel(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return CallControlsFullScreenStatusViewModel.view.setter(v2, v1);
}

uint64_t CallControlsFullScreenStatusViewModel.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  CallControlsFullScreenStatusViewModel.view.didset();
  return swift_unknownObjectRelease();
}

uint64_t CallControlsFullScreenStatusViewModel.view.didset()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(1, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*CallControlsFullScreenStatusViewModel.view.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return CallControlsFullScreenStatusViewModel.view.modify;
}

void CallControlsFullScreenStatusViewModel.view.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    CallControlsFullScreenStatusViewModel.view.didset();
  }

  free(v3);
}

id CallControlsFullScreenStatusViewModel.init(powerSaverManager:videoStatusProvider:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable] = 0;
  v6 = &v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager];
  *v6 = v4;
  *(v6 + 1) = v3;
  v7 = &v1[OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider];
  *v7 = v2;
  *(v7 + 1) = v0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::Void __swiftcall CallControlsFullScreenStatusViewModel.startObservingStatesIfNeeded()()
{
  if (!*(v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable))
  {
    CallControlsFullScreenStatusViewModel.startObservation(_:)(0, 0);
  }
}

uint64_t CallControlsFullScreenStatusViewModel.startObservation(_:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v46 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMd);
  OUTLINED_FUNCTION_1();
  v43 = v12;
  v44 = v11;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v47 = v17;
  v48 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v45 = v42 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine5EmptyVyyts5NeverOGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider))
  {
    v21 = *(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider + 8);
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
  }

  else
  {
    Empty.init(completeImmediately:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Empty<(), Never> and conformance Empty<A, B>, &_s7Combine5EmptyVyyts5NeverOGMd);
    v23 = Publisher.eraseToAnyPublisher()();
    v24 = OUTLINED_FUNCTION_7_8();
    v25(v24);
  }

  v42[1] = v23;
  v26 = v2;
  v27 = *(v2 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager + 8);
  v28 = swift_getObjectType();
  v29 = (*(v27 + 32))(v28, v27);
  v51 = v23;
  v52 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVyyts5NeverOGMd);
  Publisher.merge(with:)();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<AnyPublisher<(), Never>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AA12AnyPublisherVyyts5NeverOGGMd);
  Publisher.prepend(_:)();
  (*(v7 + 8))(v10, v5);
  v30 = [objc_opt_self() mainRunLoop];
  v52 = v30;
  v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v32 = v46;
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v31);
  type metadata accessor for NSRunLoop();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Concatenate<Publishers.Sequence<[()], Never>, Publishers.MergeMany<AnyPublisher<(), Never>>> and conformance Publishers.Concatenate<A, B>, &_s7Combine10PublishersO11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytAJGGGMd);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  v34 = v44;
  v33 = v45;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v32);

  (*(v43 + 8))(v15, v34);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = v35;
  v37 = v49;
  v38 = v50;
  v36[3] = v49;
  v36[4] = v38;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v37, v38);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Concatenate<Publishers.Sequence<[()], Never>, Publishers.MergeMany<AnyPublisher<(), Never>>>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC11ConcatenateVy_AC8SequenceVy_SayytGs5NeverOGAC9MergeManyVy_AA12AnyPublisherVyytALGGGSo9NSRunLoopCGMd);
  v39 = v48;
  v40 = Publisher<>.sink(receiveValue:)();

  (*(v47 + 8))(v33, v39);
  *(v26 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_cancellable) = v40;
}

void closure #1 in CallControlsFullScreenStatusViewModel.startObservation(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    CallControlsFullScreenStatusViewModel.updateStatus()();
  }

  if (a3)
  {
    a3();
  }
}

Swift::Void __swiftcall CallControlsFullScreenStatusViewModel.updateStatus()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_powerSaverManager + 8);
    swift_getObjectType();
    if ((*(v4 + 8))())
    {
      ObjectType = swift_getObjectType();
      v6 = objc_opt_self();
      v7 = [v6 conversationKit];
      v8.super.isa = v7;
      OUTLINED_FUNCTION_17_0(0x54415245504D4554, 0xEB00000000455255, 0x61737265766E6F43, 0xEF74694B6E6F6974, v8);

      v9 = [v6 conversationKit];
      v10.super.isa = v9;
      OUTLINED_FUNCTION_17_0(0xD000000000000013, 0x80000001BC4F9B30, 0x61737265766E6F43, 0xEF74694B6E6F6974, v10);

      OUTLINED_FUNCTION_6_42();
      OUTLINED_FUNCTION_3_60();
      v12(v11);
    }

    else
    {
      v13 = OUTLINED_FUNCTION_7_8();
      if ((v14(v13) & 1) == 0 || (v15 = OUTLINED_FUNCTION_7_8(), v16(v15), !v17))
      {
        if (*(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider))
        {
          v26 = *(v1 + OBJC_IVAR____TtC15ConversationKit37CallControlsFullScreenStatusViewModel_videoStatusProvider + 8);
          swift_getObjectType();
          v27 = *(v26 + 8);
          swift_unknownObjectRetain();
          v28 = OUTLINED_FUNCTION_7_8();
          if (v27(v28))
          {
            v29 = swift_getObjectType();
            v30 = [objc_opt_self() conversationKit];
            OUTLINED_FUNCTION_5_5();
            v31.super.isa = v30;
            v34 = OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC4F9B10, v32, v33, v31);
            v36 = v35;

            OUTLINED_FUNCTION_6_42();
            v37(0, 0, v34, v36, v29, v3);

            (*(v3 + 16))(0, v29, v3);
            swift_unknownObjectRelease();
            goto LABEL_13;
          }

          swift_unknownObjectRelease();
        }

        v38 = swift_getObjectType();
        OUTLINED_FUNCTION_6_42();
        OUTLINED_FUNCTION_3_60();
        v39();
        (*(v3 + 16))(1, v38, v3);
        goto LABEL_13;
      }

      ObjectType = swift_getObjectType();
      v18 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_5_5();
      v19.super.isa = v18;
      OUTLINED_FUNCTION_17_0(v20, v21, v22, v23, v19);

      OUTLINED_FUNCTION_6_42();
      OUTLINED_FUNCTION_3_60();
      v25(v24);
    }

    (*(v3 + 16))(0, ObjectType, v3);
LABEL_13:
    swift_unknownObjectRelease();
  }
}

id CallControlsFullScreenStatusViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CallControlsFullScreenStatusViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double RecentsListViewController.gridLayoutInset()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
  v1 = v0;
  if (static RecentsCollectionViewGridCell.needsAXLayout.getter())
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 2.0;
  }

  type metadata accessor for RecentsListViewController(0);
  static RecentsListViewController.gridLayoutItemSize()();
  return (v1 - v2 * v3) / (v2 + 1.0);
}

void static RecentsListViewController.gridLayoutItemSize()()
{
  type metadata accessor for RecentsCollectionViewGridCell();
  static RecentsCollectionViewGridCell.effectiveScreenWidth.getter();
  static RecentsCollectionViewGridCell.needsAXLayout.getter();
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];
}

uint64_t *RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v303 = a4;
  v321 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v10);
  v324 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v333 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v14);
  v306 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v305 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  v18 = OUTLINED_FUNCTION_16(v17);
  v19 = type metadata accessor for RecentsCallItem(v18);
  OUTLINED_FUNCTION_1();
  v299 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_10(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_16(v31);
  v297 = type metadata accessor for BackgroundStyleConfiguration();
  OUTLINED_FUNCTION_1();
  v296 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v34);
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration.Symbol();
  OUTLINED_FUNCTION_1();
  v330 = v36;
  v331 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8();
  v39 = v38 - v37;
  v316 = type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  OUTLINED_FUNCTION_1();
  v315 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_32();
  v332 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32();
  v323 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v53 = OUTLINED_FUNCTION_22(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_17();
  v56 = v54 - v55;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  v329 = v58;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v292 - v60;
  v62 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v327 = v63;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_40();
  v326 = v65;
  OUTLINED_FUNCTION_4_24();
  v320 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v319 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_5();
  v328 = v69;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_10(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  OUTLINED_FUNCTION_22(v72);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v292 - v74;
  v76 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v325 = v77;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_8();
  v81 = v80 - v79;
  v334 = v19;
  v335 = a1;
  v82 = &a1[*(v19 + 20)];
  v83 = v82[1];
  v301 = v27;
  v322 = v56;
  v295 = v39;
  if (v83)
  {
    v308 = *v82;
    v309 = v83;
  }

  else
  {
    v308 = 0;
    v309 = 0xE000000000000000;
  }

  v84 = *&v335[*(v334 + 48)];
  if (specialized Array.count.getter(v84) == 1 && specialized Array.count.getter(v84))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v84 & 0xC000000000000001) == 0, v84);
    if ((v84 & 0xC000000000000001) != 0)
    {

      v86 = MEMORY[0x1BFB22010](0, v84);
    }

    else
    {
      v85 = *(v84 + 32);

      v86 = v85;
    }

    v87 = v86;
    v88 = [v86 givenName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = String.count.getter();

    if (v89 < 1)
    {
    }

    else
    {

      v90 = [v87 familyName];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      LOBYTE(v90) = RecentsListViewController.isStringChineseJapaneseKorean(_:)(v91, v93);

      if (v90)
      {
        v94 = [objc_opt_self() stringFromContact:v87 style:0];
        if (v94)
        {
          v95 = v94;
          v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          object = v96;
        }

        else
        {
          v308 = 0;
          object = 0;
        }

        v285 = [v87 familyName];
        v311 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v287 = v286;

        v288 = [v87 givenName];
        v309 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v290 = v289;

        v336 = v311;
        v337 = v287;

        MEMORY[0x1BFB20B10](v309, v290);

        v291 = object;
        if (object)
        {

          v309 = v291;
        }

        else
        {
          v309 = v337;
          v308 = v336;
        }
      }

      else
      {
        v141 = [v87 givenName];
        v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v309 = v142;
      }
    }
  }

  else
  {
  }

  v97 = RecentsCallItem.mediaType.getter();
  if ((v98 & 1) == 0 && v97 == 1 || (v99 = RecentsCallItem.mediaType.getter(), v311 = 0, v100 = 0xE000000000000000, (v101 & 1) == 0) && v99 == 2)
  {
    v102 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v311 = OUTLINED_FUNCTION_18_27(v103, v104, v105, v106);
    v100 = v107;
  }

  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);
  object = v100;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_s10Foundation4DateVSgMd);
    v109 = 0;
    v298 = 0xE000000000000000;
  }

  else
  {
    v110 = v325;
    (*(v325 + 32))(v81, v75, v76);
    v109 = static Date.faceTimeDateString(from:showToday:)(v81, 0);
    v298 = v111;
    (*(v110 + 8))(v81, v76);
  }

  v112 = v62;
  v113 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (!v113)
  {
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v118, v119, v120, v62);
    goto LABEL_27;
  }

  v114 = v113;
  v115 = [v113 thumbnailURL];

  if (v115)
  {
    v116 = v329;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = 0;
  }

  else
  {
    v117 = 1;
    v116 = v329;
  }

  __swift_storeEnumTagSinglePayload(v116, v117, 1, v62);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
LABEL_27:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v61, &_s10Foundation3URLVSgMd);
    if (specialized Array.count.getter(v84) < 2)
    {
      v121 = RecentsCallItem.contact.getter();
      if (v121)
      {
        v122 = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        OUTLINED_FUNCTION_37_0();
        v123 = swift_allocObject();
        *(v123 + 16) = xmmword_1BC4BAC30;
        *(v123 + 32) = v122;
        v124 = v318;
        *v318 = v123;
        v125 = MEMORY[0x1E6995B28];
      }

      else
      {
        v136 = static Color.gray.getter();
        v124 = v318;
        *v318 = v136;
        v125 = MEMORY[0x1E6995B40];
      }

      (*(v319 + 104))(v124, *v125, v320);
    }

    else
    {
      *v318 = v84;
      (*(v319 + 104))();
    }

    v132 = v295;
    v135 = v331;
    goto LABEL_43;
  }

  v127 = v326;
  v126 = v327;
  (*(v327 + 32))(v326, v61, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV05imageB0_ACSg05videoB0tMd);
  v128 = v328;
  (*(v126 + 16))(v328, v127, v112);
  v129 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v129)
  {
    v130 = v129;
    v131 = [v129 mediaURL];

    v132 = v295;
    if (v131)
    {
      v133 = v322;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v134 = 0;
      v135 = v331;
    }

    else
    {
      v134 = 1;
      v135 = v331;
      v133 = v322;
    }

    (*(v327 + 8))(v326, v112);
    __swift_storeEnumTagSinglePayload(v133, v134, 1, v112);
    v140 = v328;
    outlined init with take of CaptionSectioner.SpeakerSection?();
  }

  else
  {
    (*(v126 + 8))(v127, v112);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v112);
    v132 = v295;
    v135 = v331;
    v140 = v128;
  }

  v143 = v319;
  v144 = v320;
  (*(v319 + 104))(v140, *MEMORY[0x1E6995B38], v320);
  (*(v143 + 32))(v318, v140, v144);
LABEL_43:
  v294 = v109;
  type metadata accessor for ContactAvatarTileView.Caption();
  OUTLINED_FUNCTION_10_0();
  v322 = v145;
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
  v149 = *(v330 + 104);
  v149(v132, *MEMORY[0x1E6995B58], v135);
  v150 = *MEMORY[0x1E6995960];
  type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v152 = v310;
  v330 = *(v151 + 104);
  v331 = v153;
  v329 = v151 + 104;
  (v330)(v310, v150);
  v154 = *MEMORY[0x1E6995980];
  type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v156 = *(v155 + 104);
  LODWORD(v328) = v154;
  v326 = v156;
  v327 = v157;
  v325 = v155 + 104;
  v156(v152, v154);
  v158 = *MEMORY[0x1E6995C00];
  v159 = v296[13];
  v160 = v297;
  v159(v152, v158, v297);
  ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
  v161 = RecentsCallItem.mediaType.getter();
  if ((v162 & 1) == 0 && v161 == 1)
  {
    v149(v132, *MEMORY[0x1E6995B50], v135);
    v163 = v310;
    (v330)(v310, v150, v331);
    OUTLINED_FUNCTION_50_9();
    v164();
    v159(v163, v158, v160);
    v165 = v293;
    ContactAvatarTileView.ButtonConfiguration.init(symbol:backgroundStyle:)();
    v166 = v315;
    v167 = v332;
    v168 = v316;
    (*(v315 + 8))(v332, v316);
    (*(v166 + 32))(v167, v165, v168);
  }

  RecentsCallItem.isIncomingCall.getter();
  v169 = v317;
  SystemImage.init(systemName:)();
  v170 = v314;
  v171 = v324;
  v172 = 0xE900000000000044;
  v173 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v173);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v173);
  v180 = static Color.primary.getter();
  v181 = RecentsCallItem.isMissedCallItem.getter();
  RecentsCallItem.hasVideoMessage.getter();
  v310 = v173;
  if (v182)
  {
    v183 = RecentsCallItem.messageIndicatorViewModel.getter();
    if (v183)
    {
      v184 = v183;

      [v184 duration];
      v186 = v185;

      v187 = RecentsListViewController.formatTimeInterval(_:)(v186);
      countAndFlagsBits = v187._countAndFlagsBits;
      object = v187._object;
    }

    else
    {
      countAndFlagsBits = v311;
    }

    SystemImage.init(systemName:)();
    v172 = &_s16CommunicationsUI11SystemImageVSgMR;
    OUTLINED_FUNCTION_33_3(v169);
    v196 = OUTLINED_FUNCTION_21_3();
    __swift_storeEnumTagSinglePayload(v196, v197, v198, v173);
    outlined init with take of CaptionSectioner.SpeakerSection?();
    v199 = v335;
    v200 = RecentsCallItem.messageIndicatorViewModel.getter();
    v311 = countAndFlagsBits;
    if (v200)
    {
      v199 = v200;
      if ([v200 isRead])
      {
      }

      else
      {
        OUTLINED_FUNCTION_55_6();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s16CommunicationsUI11SystemImageVSgMd);
        v201 = OUTLINED_FUNCTION_21_3();
        __swift_storeEnumTagSinglePayload(v201, v202, v203, v173);
        OUTLINED_FUNCTION_100_0();
        v172 = static Color.green.getter();

        v180 = v172;
      }
    }

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_60_4();
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_0();
    OUTLINED_FUNCTION_82_2();
    v204 = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_12_30(v204);
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v205 = v199;
    v299 = v204;

    v181 = 1;
    v195 = partial apply for closure #1 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
    goto LABEL_60;
  }

  v189 = v335;
  RecentsCallItem.hasAudioMessage.getter();
  if ((v190 & 1) == 0)
  {
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_60_4();
    OUTLINED_FUNCTION_0_67();
    _s15ConversationKit15RecentsCallItemVWOcTm_0();
    OUTLINED_FUNCTION_82_2();
    v193 = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_12_30(v193);
    v171 = v324;
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v194 = v189;
    v299 = v193;

    v195 = partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
LABEL_60:
    v297 = v195;
    v296 = v172;
    goto LABEL_68;
  }

  v191 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v191)
  {
    v192 = v191;
    if ([v191 isRead])
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd);
    }

    else
    {
      OUTLINED_FUNCTION_55_6();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v170, &_s16CommunicationsUI11SystemImageVSgMd);
      v206 = OUTLINED_FUNCTION_21_3();
      __swift_storeEnumTagSinglePayload(v206, v207, v208, v173);
      OUTLINED_FUNCTION_100_0();
      v209 = static Color.green.getter();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd);
      v180 = v209;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v169, &_s16CommunicationsUI11SystemImageVSgMd);
  }

  v181 = 1;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v210, v211, v212, v173);
  v213 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_5_5();
  v214.super.isa = v213;
  v311 = OUTLINED_FUNCTION_17_0(v215, v216, v217, v218, v214);
  object = v219;

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_0_67();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v296 = *(v299 + 80);
  v220 = swift_allocObject();
  OUTLINED_FUNCTION_12_30(v220);
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v221 = v213;
  v299 = v220;

  v222 = RecentsCallItem.messageIndicatorViewModel.getter();
  if (v222)
  {
    v223 = v222;
    outlined bridged method (pb) of @objc TPMessageIndicatorViewModel.transcriptSummary.getter(v222);
    if (v224)
    {
      static Color.primary.getter();
      (*(v305 + 104))(v307, *MEMORY[0x1E6981DF0], v306);
      ContactAvatarTileView.Caption.init(title:color:blendMode:)();

      OUTLINED_FUNCTION_33_3(v323);
      v181 = 1;
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v225, v226, v227, v322);
      outlined init with take of CaptionSectioner.SpeakerSection?();
    }

    else
    {
    }
  }

  v297 = partial apply for closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:);
LABEL_68:
  (*(v319 + 16))(v312, v318, v320);
  v228 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd) + 48);
  v229 = MEMORY[0x1E6995978];
  if (!v181)
  {
    v229 = MEMORY[0x1E6995968];
  }

  v230 = v300;
  (v330)(v300, *v229, v331);
  OUTLINED_FUNCTION_50_9();
  v231();
  *(v230 + v228) = 0x3FF0000000000000;
  v232 = *(v333 + 104);
  v233 = *MEMORY[0x1E6995B68];
  v333 += 104;
  (v232)(v230, v233, v171);
  v235 = v334;
  v234 = v335;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  OUTLINED_FUNCTION_51_6();
  v236(v307);

  v306 = v180;
  v293 = v180;
  OUTLINED_FUNCTION_3_0();
  ContactAvatarTileView.Caption.init(title:subTitle:foregroundStyle:shadow:showBlockedIndicator:accessory:blendMode:accessoryForegroundColor:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v237, v238, v239, v322);
  v240 = v234[*(v235 + 60)];
  if (v240 == 1)
  {

    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v241, v242, v243, v310);
  }

  else
  {
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd);
  v244 = OUTLINED_FUNCTION_62_4();
  v245(v244);
  OUTLINED_FUNCTION_50_9();
  v246();
  v247 = OUTLINED_FUNCTION_63_5();
  v232(v247);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v248, v249, v250, v322);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (v240)
  {

    v251 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_5_5();
    v252.super.isa = v251;
    OUTLINED_FUNCTION_17_0(v253, v254, v255, v256, v252);
  }

  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v310);
  v260 = OUTLINED_FUNCTION_62_4();
  v261(v260);
  OUTLINED_FUNCTION_50_9();
  v262();
  v263 = OUTLINED_FUNCTION_63_5();
  v232(v263);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v264, v265, v266, v322);
  v267 = v316;
  (*(v315 + 16))(v302, v332, v316);
  v268 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v268, v269, v270, v267);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  type metadata accessor for ContactPosterOrAvatarTileState();
  OUTLINED_FUNCTION_84();
  v333 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  OUTLINED_FUNCTION_20();
  v271 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v272 = swift_allocObject();
  v273 = v321;
  *(v272 + 16) = v271;
  *(v272 + 24) = v273;
  OUTLINED_FUNCTION_41_10();
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v274 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v275 = swift_allocObject();
  v276 = v321;
  *(v275 + 16) = v274;
  *(v275 + 24) = v276;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v277 = v304;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v334);
  type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84();
  v281 = v276;

  v282 = v297;
  v283 = ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v333, partial apply for closure #4 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:), v272, v297, v299, partial apply for closure #5 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:), v275, 0, 0, 0, v277, MEMORY[0x1E69E7CC0]);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v282);

  OUTLINED_FUNCTION_33_3(v314);
  OUTLINED_FUNCTION_33_3(v317);
  (*(v315 + 8))(v332, v316);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v323, &_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd);
  (*(v319 + 8))(v318, v320);
  return v283;
}

uint64_t RecentsListViewController.isStringChineseJapaneseKorean(_:)(uint64_t a1, unint64_t a2)
{
  v4 = RecentsListViewController.isPreferredLocalizationChineseKorean()();
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = MEMORY[0x1BFB209B0](a1, a2);
      v4 = CNIsChineseJapaneseKoreanString();
    }
  }

  return v4 & 1;
}

Swift::String __swiftcall RecentsListViewController.formatTimeInterval(_:)(Swift::Double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v2 setZeroFormattingBehavior_];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  v3 = [v2 stringFromTimeInterval_];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

void closure #1 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (![Strong isEditing])
    {
      v18 = RecentsCallItem.messageIndicatorViewModel.getter();
      if (v18)
      {
        v19 = v18;
        v20 = [v18 mediaURL];

        if (v20)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v21 = 0;
        }

        else
        {
          v21 = 1;
        }

        __swift_storeEnumTagSinglePayload(v5, v21, 1, v9);
        outlined init with take of CaptionSectioner.SpeakerSection?();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
        {
          (*(v10 + 32))(v12, v8, v9);
          RecentsListViewController.presentVideoMessagePlayer(url:and:bypassSafety:)();

          (*(v10 + 8))(v12, v9);
          return;
        }
      }

      else
      {

        __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation3URLVSgMd);
      return;
    }

    type metadata accessor for RecentsCollectionViewGridCell();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;
      v17 = a2;
      [v16 setSelected_];
    }
  }
}

void closure #2 in RecentsListViewController.createCellViewForRecentsCallItemCalls(item:contactStore:sourceView:isPlayingBackgroundVideo:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *, __n128, __n128, __n128, __n128))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([Strong isEditing])
    {
      type metadata accessor for RecentsCollectionViewGridCell();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = a2;
        [v10 setSelected_];
      }
    }

    else
    {
      UIView.windowRect.getter(v16);
      v12.n128_u64[0] = 0;
      v13.n128_u64[0] = 0;
      v14.n128_u64[0] = 0;
      v15.n128_u64[0] = 0;
      if ((v17 & 1) == 0)
      {
        v14.n128_u64[0] = v16[2];
        v15.n128_u64[0] = v16[3];
        v12.n128_u64[0] = v16[0];
        v13.n128_u64[0] = v16[1];
      }

      a4(a3, a2, v12, v13, v14, v15);
    }
  }
}

void RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)()
{
  OUTLINED_FUNCTION_29();
  v147 = v0;
  v150 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit15RecentsCallItemVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_1();
  v7 = OUTLINED_FUNCTION_16(v6);
  v8 = type metadata accessor for RecentsCallItem(v7);
  OUTLINED_FUNCTION_1();
  v145 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_48_8();
  v12 = OUTLINED_FUNCTION_16(v11);
  v162 = type metadata accessor for RecentOngoingConversationMetadata(v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV19ButtonConfigurationVSgMd);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_10(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11SystemImageVSgMd);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_16(v20);
  v141 = type metadata accessor for BlendMode();
  OUTLINED_FUNCTION_1();
  v139 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16(v23);
  v163 = type metadata accessor for ContactAvatarTileView.Caption.ForegroundStyle();
  OUTLINED_FUNCTION_1();
  v158 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_40();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI21ContactAvatarTileViewV7CaptionVSgMd);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v157 = v31;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v156 = v33;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32();
  v155 = v35;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for ContactAvatarTileView.ButtonConfiguration();
  OUTLINED_FUNCTION_1();
  v159 = v37;
  v160 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_40();
  v166 = v38;
  v39 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for RecentsCallItemType(v39);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v129 - v47;
  v49 = type metadata accessor for ContactAvatarTileView.ImageStyle();
  OUTLINED_FUNCTION_1();
  v165 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_4();
  v53 = v52;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_32();
  v164 = v55;
  v56 = v8[5];
  v161 = v3;
  v57 = (v3 + v56);
  v58 = *(v3 + v56 + 8);
  v59 = 0xE000000000000000;
  if (v58)
  {
    v135 = *v57;
    v134 = v58;
  }

  else
  {
    v135 = 0;
    v134 = 0xE000000000000000;
  }

  v60 = (v161 + v8[6]);
  v61 = v60[1];
  if (v61)
  {
    v62 = *v60;
  }

  else
  {
    v62 = 0;
  }

  v138 = v62;
  if (v61)
  {
    v59 = v61;
  }

  v137 = v59;
  v148 = v8;
  *v164 = *(v161 + v8[12]);
  (*(v165 + 104))();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v162);
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
    OUTLINED_FUNCTION_40_13();
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    OUTLINED_FUNCTION_12();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v162);
  }

  else
  {
    _s15ConversationKit19RecentsCallItemTypeOWOhTm_0(v43, type metadata accessor for RecentsCallItemType);
  }

  closure #1 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:)(v166);
  v70 = *(v165 + 16);
  v136 = v53;
  v144 = v49;
  v70(v53, v164, v49);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI11CUIMaterialO_12CoreGraphics7CGFloatV7opacitytMd);
  v72 = *(v71 + 48);
  v73 = *MEMORY[0x1E6995968];
  type metadata accessor for CUIMaterial.Platter();
  OUTLINED_FUNCTION_7_0();
  v132 = *(v74 + 104);
  v133 = v74 + 104;
  v130 = v75;
  v132(v27, v73);
  v154 = *MEMORY[0x1E6995980];
  v76 = v154;
  v153 = type metadata accessor for CUIMaterial();
  OUTLINED_FUNCTION_7_0();
  v152 = *(v77 + 104);
  v131 = v77 + 104;
  v152(v27, v76);
  *(v27 + v72) = 0x3FF0000000000000;
  v78 = *MEMORY[0x1E6995B68];
  v151 = *(v158 + 13);
  v79 = v78;
  v151(v27);
  OUTLINED_FUNCTION_51_6();
  v80(v140);
  ContactAvatarTileView.Caption.init(title:foregroundStyle:showBlockedIndicator:blendMode:)();
  v81 = type metadata accessor for ContactAvatarTileView.Caption();
  v82 = OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  v141 = type metadata accessor for SystemImage();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v158 = v48;
  v89 = *(v71 + 48);
  LODWORD(v140) = *MEMORY[0x1E6995970];
  v90 = v132;
  (v132)(v27);
  (v152)(v27, v154, v153);
  *(v27 + v89) = 0x3FF0000000000000;
  v91 = v79;
  (v151)(v27, v79, v163);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v81);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v81);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v141);
  v101 = *(v71 + 48);
  (v90)(v27, v140, v130);
  (v152)(v27, v154, v153);
  *(v27 + v101) = 0x3FF0000000000000;
  (v151)(v27, v91, v163);
  ContactAvatarTileView.Caption.init(subtitle:accessory:foregroundStyle:)();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v81);
  v105 = v160;
  (*(v159 + 16))(v143, v166, v160);
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
  type metadata accessor for ContactPosterOrAvatarTileState();
  v167 = 0u;
  v168 = 0u;
  v169 = 0;
  OUTLINED_FUNCTION_84();
  v163 = ContactPosterOrAvatarTileState.init(avatarImageStyle:primaryCaption:secondaryCaption:bodyCaption:detailCaption:buttonConfiguration:playable:)();
  v109 = v142;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  v110 = v162;
  if (__swift_getEnumTagSinglePayload(v109, 1, v162) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_40_13();
    v111 = v129[1];
    _s15ConversationKit15RecentsCallItemVWObTm_1();
    v112 = *(v111 + *(v110 + 24));
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_5_18();
    if (((*(v113 + 128))(v112) & 1) == 0)
    {
      type metadata accessor for RecentsJoinButton();
      v114 = static RecentsJoinButton.fetchMenuItems(_:)(v111);
      OUTLINED_FUNCTION_47_9();
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_47_9();
  }

  v114 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v157 = v114;
  OUTLINED_FUNCTION_20();
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v116 = *(v145 + 80);
  v117 = v146;
  v118 = swift_allocObject();
  v162 = v118;
  *(v118 + 16) = v115;
  *(v118 + 24) = v114;
  OUTLINED_FUNCTION_41_10();
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  OUTLINED_FUNCTION_20();
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  _s15ConversationKit15RecentsCallItemVWObTm_1();
  v121 = v150;
  *(v120 + ((v117 + ((v116 + 24) & ~v116) + 7) & 0xFFFFFFFFFFFFFFF8)) = v150;
  v122 = v149;
  _s15ConversationKit15RecentsCallItemVWOcTm_0();
  OUTLINED_FUNCTION_12();
  __swift_storeEnumTagSinglePayload(v123, v124, v125, v148);
  type metadata accessor for ContactAvatarTileViewModel(0);
  OUTLINED_FUNCTION_84();
  v126 = v157;

  v127 = v121;
  ContactAvatarTileViewModel.init(state:primaryAction:secondaryAction:tertiaryAction:longPressAction:menuItems:recentCallItem:accessibilityCustomActions:)(v163, partial apply for specialized closure #2 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:), v162, partial apply for closure #3 in RecentsListViewController.createCellViewForRecentsCallItemOngoingCalls(item:contactStore:sourceView:), v120, 0, 0, 0, 0, v126, v122, MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_93_0();
  v128(v166);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, &_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  (*(v165 + 8))(v164, v144);
  OUTLINED_FUNCTION_30_0();
}