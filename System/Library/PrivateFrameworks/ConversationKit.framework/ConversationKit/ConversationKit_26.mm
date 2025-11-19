uint64_t ConversationLocalParticipantStateProvider.deinit()
{

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 48);
  return v0;
}

uint64_t ConversationLocalParticipantStateProvider.__deallocating_deinit()
{
  ConversationLocalParticipantStateProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ConversationLocalParticipantStateProvider.onLocalParticipantChanged(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  outlined init with copy of Participant(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v10))
  {
    v11 = OUTLINED_FUNCTION_42();
    v12 = OUTLINED_FUNCTION_23();
    v20 = v12;
    *v11 = 136315138;
    outlined init with copy of Participant(v7, v4);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    specialized >> prefix<A>(_:)();
    v14 = v13;
    v16 = v15;
    outlined destroy of Participant?(v4);
    outlined destroy of Participant(v7);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1BBC58000, v9, v10, "[LocalParticipantStateProvider] onLocalParticipantChanged: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of Participant(v7);
  }

  return CurrentValueSubject.send(_:)();
}

uint64_t ConversationLocalParticipantStateProvider.onCameraEffectsStateChanged(_:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v14 = v9;
    *v8 = 136315138;
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[LocalParticipantStateProvider] onCameraEffectsStateChanged: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  LOBYTE(v14) = v1;
  BYTE1(v14) = v2;
  BYTE2(v14) = v3;
  BYTE3(v14) = v4;
  return CurrentValueSubject.send(_:)();
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.onMutedTalkingStateChanged(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v13 = v6;
    *v5 = 136315138;
    v7 = a1;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_12_37(&dword_1BBC58000, v11, v12, "[LocalParticipantStateProvider] onMutedTalkingStateChanged: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v7 = a1;
  }

  v14 = v7;
  CurrentValueSubject.send(_:)();
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.onReactingStateChanged(_:)(Swift::Bool a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.conversationKit);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_42();
    v6 = OUTLINED_FUNCTION_23();
    v13 = v6;
    *v5 = 136315138;
    v7 = a1;
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_12_37(&dword_1BBC58000, v11, v12, "[LocalParticipantStateProvider] onReactingStateChanged: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v7 = a1;
  }

  v14 = v7;
  CurrentValueSubject.send(_:)();
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setPriority_];

  return v3;
}

void NSLayoutConstraint.setConstant(_:scaledToFont:)(void *a1, double a2)
{
  v4 = [a1 fontDescriptor];
  v5 = [v4 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v6 scaledValueForValue_];
      v8 = v7;

      [v2 setConstant_];
      return;
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  [v2 setConstant_];
}

uint64_t key path getter for MoreMenuViewModel.presentAddParticipantSheet : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 104))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentAddParticipantSheet : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 112);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t MoreMenuViewModel.presentAddParticipantSheet.setter()
{
  return MoreMenuViewModel.presentAddParticipantSheet.setter();
}

{
  OUTLINED_FUNCTION_12_38();
  *v1 = v2;
  v1[1] = v0;
}

uint64_t key path getter for MoreMenuViewModel.toggleLiveCaptions : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 128))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.toggleLiveCaptions : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 136);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.startScreenSharing : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 152))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startScreenSharing : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 160);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.stopScreenSharing : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 176))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.stopScreenSharing : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 184);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.startWaitOnHold : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 200))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startWaitOnHold : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 208);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path setter for MoreMenuViewModel.presentSharePlaySheet : MoreMenuViewModel(uint64_t a1, void **a2)
{
  v2 = *(**a2 + class metadata base offset for MoreMenuViewModel + 232);

  return v2(v3);
}

uint64_t MoreMenuViewModel.presentSharePlaySheet.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
}

uint64_t MoreMenuViewModel.presentSharePlaySheet.setter(uint64_t a1)
{
  v3 = direct field offset for MoreMenuViewModel.presentSharePlaySheet;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for MoreMenuViewModel.presentSharePlayDismissalAlert : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 248))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentSharePlayDismissalAlert : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 256);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t key path getter for MoreMenuViewModel.presentContactCard : MoreMenuViewModel@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**a1 + class metadata base offset for MoreMenuViewModel + 272))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.presentContactCard : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + class metadata base offset for MoreMenuViewModel + 280);

  return v6(thunk for @escaping @callee_guaranteed () -> (@out ())partial apply, v5);
}

uint64_t MoreMenuViewModel.presentAddParticipantSheet.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t key path getter for MoreMenuViewModel.startCallRecording : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + class metadata base offset for MoreMenuViewModel + 296))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for MoreMenuViewModel.startCallRecording : MoreMenuViewModel(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + class metadata base offset for MoreMenuViewModel + 304);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MoreMenuViewModel.startCallRecording.setter()
{
  return MoreMenuViewModel.startCallRecording.setter();
}

{
  OUTLINED_FUNCTION_12_38();
  v3 = *v1;
  *v1 = v2;
  v1[1] = v0;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t key path getter for MoreMenuViewModel.stopCallRecording : MoreMenuViewModel@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + class metadata base offset for MoreMenuViewModel + 320))();
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

uint64_t key path setter for MoreMenuViewModel.stopCallRecording : MoreMenuViewModel(uint64_t *a1, void **a2)
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

  v7 = *(**a2 + class metadata base offset for MoreMenuViewModel + 328);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t MoreMenuViewModel.startCallRecording.getter(void *a1)
{
  v2 = (v1 + *a1);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v2);
  return v3;
}

uint64_t MoreMenuViewModel.__allocating_init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  OUTLINED_FUNCTION_14_26();
  __swift_mutable_project_boxed_opaque_existential_1(v26, *(v26 + 24));
  OUTLINED_FUNCTION_2_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v30 = v29 - v28;
  (*(v31 + 16))(v29 - v28);
  v32 = OUTLINED_FUNCTION_7_50();
  v33 = a22(v30, a2, a3, a4, a5, a6, a7, a8, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v33;
}

uint64_t closure #1 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuViewModel.generateRows()();
  }

  return result;
}

uint64_t closure #2 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuViewModel.generateRows()();
  }

  return result;
}

uint64_t MoreMenuViewModel.generateRows()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v59 - v3;
  v5 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_2_7();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = (v14 - v13);
  type metadata accessor for OS_dispatch_queue();
  *v15 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v9);
  v16 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_85:
    OUTLINED_FUNCTION_59_3(v17);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  v62 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.punchOutProvider.getter();
  if (!v61)
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v60, v61);
  v18 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
  v19 = __swift_destroy_boxed_opaque_existential_1(v60);
  if (!v18)
  {
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  MEMORY[0x1BFB20CC0](v19);
  OUTLINED_FUNCTION_0_87();
  if (v20)
  {
    OUTLINED_FUNCTION_1_27();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = v62;
LABEL_9:
  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_9_40();
  if ((dispatch thunk of FTMenuItemStateProviding.addPeopleAllowed.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for FTMenuItem();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_21_22();

  static FTMenuItem.addPeopleRow(subtitle:rowAction:)();

  MEMORY[0x1BFB20CC0](v22);
  OUTLINED_FUNCTION_5_55();
  v24 = *(v23 + 16);
  v17 = *(v23 + 24);
  if (v24 >= v17 >> 1)
  {
    goto LABEL_85;
  }

LABEL_11:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = v62;
LABEL_12:
  OUTLINED_FUNCTION_19_19();
  OUTLINED_FUNCTION_9_40();
  if (dispatch thunk of FTMenuItemStateProviding.isGroupOrConferenceCall.getter())
  {
    OUTLINED_FUNCTION_10_34();
    FTMenuItemProviderContainer.splitCalls.getter();
    if (v61)
    {
      __swift_project_boxed_opaque_existential_1(v60, v61);
      OUTLINED_FUNCTION_9_40();
      v25 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
      v26 = __swift_destroy_boxed_opaque_existential_1(v60);
      if (v25)
      {
        MEMORY[0x1BFB20CC0](v26);
        OUTLINED_FUNCTION_0_87();
        if (v20)
        {
          OUTLINED_FUNCTION_1_27();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v62;
      }
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    }

    v27 = FTMenuItemProviderContainer.conferenceParticipants.getter();
    if (v27)
    {
      v59[1] = v8;
      v59[2] = v1;
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = v27 + 32;
        do
        {
          outlined init with copy of IDSLookupManager(v29, v60);
          __swift_project_boxed_opaque_existential_1(v60, v61);
          v30 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
          __swift_destroy_boxed_opaque_existential_1(v60);
          if (v30)
          {

            MEMORY[0x1BFB20CC0](v31);
            OUTLINED_FUNCTION_0_87();
            if (v20)
            {
              OUTLINED_FUNCTION_1_27();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v21 = v62;
          }

          v29 += 40;
          --v28;
        }

        while (v28);
      }
    }
  }

  OUTLINED_FUNCTION_4_56();
  if (dispatch thunk of FTMenuItemStateProviding.viewContactCardAllowed.getter())
  {
    OUTLINED_FUNCTION_4_56();
    dispatch thunk of FTMenuItemStateProviding.shouldViewCallDetails.getter();
    String.LocalizationValue.init(stringLiteral:)();
    OUTLINED_FUNCTION_3_0();
    String.init(_localized:table:comment:)();
    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_19_19();
    OUTLINED_FUNCTION_9_40();
    dispatch thunk of FTMenuItemStateProviding.viewContactCardIcon.getter();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_21_22();

    static FTMenuItem.addViewContactRow(title:iconType:rowAction:)();

    outlined destroy of TapInteractionHandler?(v4, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);

    MEMORY[0x1BFB20CC0](v32);
    OUTLINED_FUNCTION_5_55();
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
    if (v35 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v34);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.callRecording.getter();
  if (v61)
  {
    OUTLINED_FUNCTION_2_76();
    v36 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v36);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
    OUTLINED_FUNCTION_4_56();
    if ((dispatch thunk of FTMenuItemStateProviding.callRecordingAllowed.getter() & 1) == 0)
    {
      goto LABEL_40;
    }

    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_4_56();
    dispatch thunk of FTMenuItemStateProviding.isCallRecordingActive.getter();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_21_22();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_21_22();

    static FTMenuItem.callRecordingRow(isSessionActive:dismissOnTap:rowAction:stopAction:)();

    MEMORY[0x1BFB20CC0](v37);
    OUTLINED_FUNCTION_5_55();
    v40 = *(v38 + 16);
    v39 = *(v38 + 24);
    if (v40 >= v39 >> 1)
    {
      OUTLINED_FUNCTION_59_3(v39);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = v62;
LABEL_40:
  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.deskView.getter();
  if (v61)
  {
    OUTLINED_FUNCTION_2_76();
    v41 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v41);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.routes.getter();
  if (v61)
  {
    OUTLINED_FUNCTION_2_76();
    v42 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v42);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.liveCaptions.getter();
  if (v61)
  {
    OUTLINED_FUNCTION_2_76();
    v43 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v43);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.liveTranslation.getter();
  if (v61)
  {
    OUTLINED_FUNCTION_2_76();
    v44 = OUTLINED_FUNCTION_22_23();
    MEMORY[0x1BFB20CC0](v44);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    OUTLINED_FUNCTION_32_2();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  OUTLINED_FUNCTION_4_56();
  if (dispatch thunk of FTMenuItemStateProviding.waitOnHoldAllowed.getter())
  {
    type metadata accessor for FTMenuItem();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_21_22();

    static FTMenuItem.holdThisCallRow(rowAction:stopAction:)();

    MEMORY[0x1BFB20CC0](v45);
    OUTLINED_FUNCTION_0_87();
    if (v20)
    {
      OUTLINED_FUNCTION_1_27();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v21 = v62;
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.screenShare.getter();
  if (v61)
  {
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v46 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
    v47 = __swift_destroy_boxed_opaque_existential_1(v60);
    if (v46)
    {
      MEMORY[0x1BFB20CC0](v47);
      OUTLINED_FUNCTION_0_87();
      if (v20)
      {
        OUTLINED_FUNCTION_1_27();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v62;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  OUTLINED_FUNCTION_10_34();
  FTMenuItemProviderContainer.sharePlay.getter();
  if (v61)
  {
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v48 = dispatch thunk of FTMenuItemProvider.createMenuItem()();
    v49 = __swift_destroy_boxed_opaque_existential_1(v60);
    if (v48)
    {
      MEMORY[0x1BFB20CC0](v49);
      OUTLINED_FUNCTION_5_55();
      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_59_3(v51);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v62;
    }
  }

  else
  {
    outlined destroy of TapInteractionHandler?(v60, &_s20CommunicationsUICore18FTMenuItemProvider_pSgMd);
  }

  if (!specialized Array.count.getter(v21))
  {
    v53 = one-time initialization token for conversationKit;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.conversationKit);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;

      _os_log_impl(&dword_1BBC58000, v55, v56, "No rows generated for MoreMenuViewModel", v57, 2u);
      MEMORY[0x1BFB23DF0](v57, -1, -1);
    }

    else
    {
    }
  }

  return dispatch thunk of FTMenuViewModel.items.setter();
}

void *closure #1 in MoreMenuViewModel.generateRows()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + class metadata base offset for MoreMenuViewModel + 104))();

    v1(v2);
  }

  return result;
}

void *closure #2 in MoreMenuViewModel.generateRows()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + class metadata base offset for MoreMenuViewModel + 272))();

    v1(v2);
  }

  return result;
}

uint64_t closure #3 in MoreMenuViewModel.generateRows()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + direct field offset for MoreMenuViewModel.provider), *(result + direct field offset for MoreMenuViewModel.provider + 24));
    if ((dispatch thunk of FTMenuItemStateProviding.isCallRecordingActive.getter() & 1) == 0)
    {
      v2 = (*(*v1 + class metadata base offset for MoreMenuViewModel + 296))();
      if (v2)
      {
        v3 = v2;
        v2();
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
      }
    }
  }

  return result;
}

void *closure #4 in MoreMenuViewModel.generateRows()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + class metadata base offset for MoreMenuViewModel + 320))();

    if (v1)
    {
      v1(result);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
    }
  }

  return result;
}

void *closure #5 in MoreMenuViewModel.generateRows()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + class metadata base offset for MoreMenuViewModel + 200))();

    v1(v2);
  }

  return result;
}

uint64_t MoreMenuViewModel.__ivar_destroyer()
{
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();

  OUTLINED_FUNCTION_18_32();
  OUTLINED_FUNCTION_18_32();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.startCallRecording));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.stopCallRecording));
  __swift_destroy_boxed_opaque_existential_1(v0 + direct field offset for MoreMenuViewModel.provider);
}

uint64_t MoreMenuViewModel.deinit()
{
  v0 = FTMenuViewModel.deinit();

  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();

  OUTLINED_FUNCTION_20_23();
  OUTLINED_FUNCTION_20_23();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.startCallRecording));
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + direct field offset for MoreMenuViewModel.stopCallRecording));
  __swift_destroy_boxed_opaque_existential_1(v0 + direct field offset for MoreMenuViewModel.provider);

  return v0;
}

uint64_t MoreMenuViewModel.__deallocating_deinit()
{
  MoreMenuViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized MoreMenuViewModel.__allocating_init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_14_26();
  OUTLINED_FUNCTION_2_7();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v33 = v32 - v31;
  type metadata accessor for MoreMenuViewModel();
  v34 = swift_allocObject();
  (*(v29 + 16))(v33, a1, a23);
  OUTLINED_FUNCTION_7_50();
  v35 = specialized MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(v33, a2, a3, a4, a5, a6, a7, a8, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, a21, v34, a23, a24);
  (*(v29 + 8))(a1, a23);
  return v35;
}

uint64_t specialized MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (*a16)(char *, uint64_t), void (*a17)(char *, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v135 = a8;
  v136 = a4;
  v107 = a5;
  v108 = a7;
  v137 = a6;
  v106 = a3;
  v123 = a2;
  v125 = a20;
  v127 = a19;
  v126 = a18;
  v130 = a17;
  v122 = a16;
  v132 = a15;
  v121 = a14;
  v131 = a13;
  v133 = a12;
  v110 = a11;
  v134 = a10;
  v109 = a9;
  v124 = a21;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = &v104 - v26;
  v138 = type metadata accessor for NSNotificationCenter.Publisher();
  v140 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v113 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v111 = &v104 - v29;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  v139 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v112 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v114 = &v104 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v104 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v115 = &v104 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v116 = &v104 - v38;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd);
  v120 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v104 - v39;
  v142[3] = a23;
  v142[4] = a24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
  (*(*(a23 - 8) + 32))(boxed_opaque_existential_1, a1, a23);
  v41 = (a22 + direct field offset for MoreMenuViewModel.presentAddParticipantSheet);
  *v41 = TPNumberPadCharacter.rawValue.getter;
  v41[1] = 0;
  v42 = (a22 + direct field offset for MoreMenuViewModel.toggleLiveCaptions);
  *v42 = TPNumberPadCharacter.rawValue.getter;
  v42[1] = 0;
  v43 = (a22 + direct field offset for MoreMenuViewModel.startScreenSharing);
  *v43 = TPNumberPadCharacter.rawValue.getter;
  v43[1] = 0;
  v44 = (a22 + direct field offset for MoreMenuViewModel.stopScreenSharing);
  *v44 = TPNumberPadCharacter.rawValue.getter;
  v44[1] = 0;
  v45 = (a22 + direct field offset for MoreMenuViewModel.startWaitOnHold);
  *v45 = TPNumberPadCharacter.rawValue.getter;
  v45[1] = 0;
  v46 = (a22 + direct field offset for MoreMenuViewModel.presentSharePlayDismissalAlert);
  *v46 = TPNumberPadCharacter.rawValue.getter;
  v46[1] = 0;
  v47 = (a22 + direct field offset for MoreMenuViewModel.presentContactCard);
  *v47 = TPNumberPadCharacter.rawValue.getter;
  v47[1] = 0;
  v104 = a22;
  v48 = (a22 + direct field offset for MoreMenuViewModel.startCallRecording);
  *v48 = 0;
  v48[1] = 0;
  v49 = (a22 + direct field offset for MoreMenuViewModel.stopCallRecording);
  v105 = v49;
  *v49 = 0;
  v49[1] = 0;
  *(a22 + direct field offset for MoreMenuViewModel.cancellable) = MEMORY[0x1E69E7CD0];
  outlined init with copy of IDSLookupManager(v142, a22 + direct field offset for MoreMenuViewModel.provider);
  swift_beginAccess();
  v50 = v136;
  *v41 = v106;
  v41[1] = v50;
  swift_beginAccess();
  v51 = v137;
  *v42 = v107;
  v42[1] = v51;

  swift_beginAccess();
  v52 = v135;
  *v43 = v108;
  v43[1] = v52;

  swift_beginAccess();
  v53 = v134;
  *v44 = v109;
  v44[1] = v53;

  swift_beginAccess();
  v54 = v133;
  *v45 = v110;
  v45[1] = v54;

  v55 = v104;
  *(v104 + direct field offset for MoreMenuViewModel.presentSharePlaySheet) = v131;
  swift_beginAccess();
  v56 = v132;
  *v46 = v121;
  v46[1] = v56;

  swift_beginAccess();
  v57 = v130;
  *v47 = v122;
  v47[1] = v57;

  swift_beginAccess();
  v58 = *v48;
  v59 = v126;
  v60 = v127;
  *v48 = v126;
  v48[1] = v60;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v59);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v58);
  v61 = v105;
  swift_beginAccess();
  v62 = *v61;
  v64 = v124;
  v63 = v125;
  *v61 = v125;
  v61[1] = v64;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v63);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v62);
  *(v55 + direct field offset for MoreMenuViewModel.container) = v123;

  v65 = FTMenuViewModel.init()();
  v66 = swift_allocObject();
  v110 = v65;
  swift_weakInit();
  v141[4] = partial apply for closure #1 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:);
  v141[5] = v66;
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 1107296256;
  v141[2] = thunk for @escaping @callee_guaranteed () -> ();
  v141[3] = &block_descriptor_29;
  v67 = _Block_copy(v141);
  swift_retain_n();

  TUDispatchMainIfNecessary();
  _Block_release(v67);
  v68 = objc_opt_self();
  v69 = [v68 defaultCenter];
  v70 = v111;
  NSNotificationCenter.publisher(for:object:)();

  v121 = v68;
  v71 = [v68 &off_1E7FE9380 + 5];
  v72 = v113;
  NSNotificationCenter.publisher(for:object:)();

  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_2(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
  v73 = v112;
  v74 = v138;
  Publisher.merge(with:)();
  v76 = v140 + 8;
  v75 = *(v140 + 8);
  v75(v72, v74);
  v75(v70, v74);
  v77 = v75;
  v122 = v75;
  v78 = [v68 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v79 = v114;
  v80 = v128;
  v81 = v73;
  Publishers.MergeMany.merge(with:)();
  v82 = v70;
  v77(v70, v74);
  v83 = *(v139 + 8);
  v139 += 8;
  v140 = v76;
  v84 = v80;
  v83(v81, v80);
  v85 = v121;
  v86 = [v121 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v87 = v79;
  Publishers.MergeMany.merge(with:)();
  v88 = v138;
  v89 = v122;
  v122(v70, v138);
  v83(v87, v84);
  v90 = [v85 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v91 = v115;
  v93 = v128;
  v92 = v129;
  Publishers.MergeMany.merge(with:)();
  v89(v82, v88);
  v83(v92, v93);
  v94 = [v121 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v95 = v116;
  Publishers.MergeMany.merge(with:)();
  v122(v82, v138);
  v83(v91, v93);
  v96 = v83;
  type metadata accessor for OS_dispatch_queue();
  v97 = static OS_dispatch_queue.main.getter();
  v141[0] = v97;
  v98 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v99 = v119;
  __swift_storeEnumTagSinglePayload(v119, 1, 1, v98);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  _sSo20NSNotificationCenterC10FoundationE9PublisherVAE7CombineAdCWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue);
  v100 = v117;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v99, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  v96(v95, v93);

  swift_allocObject();
  v101 = v110;
  swift_weakInit();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.MergeMany<NSNotificationCenter.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd);
  v102 = v118;
  Publisher<>.sink(receiveValue:)();

  (*(v120 + 8))(v100, v102);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v125);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v126);

  __swift_destroy_boxed_opaque_existential_1(v142);
  return v101;
}

uint64_t type metadata accessor for MoreMenuViewModel()
{
  result = type metadata singleton initialization cache for MoreMenuViewModel;
  if (!type metadata singleton initialization cache for MoreMenuViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreeningTranscriptLabel.text.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ScreeningTranscriptLabel.lowConfidenceText.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScreeningTranscriptLabel();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v5 - 8);
  ScreeningTranscriptLabel.attributedString.getter(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = Text.init(_:)();
  v28 = v8;
  v29 = v7;
  v10 = v9;
  v27 = v11;
  KeyPath = swift_getKeyPath();
  v32 = v10 & 1;
  v31 = 1;
  v12 = *v1;
  v25 = Font.init(_:)();
  v13 = swift_getKeyPath();
  v14 = v32;
  v15 = v31;
  v16 = static Alignment.center.getter();
  v18 = v17;
  outlined init with copy of ScreeningTranscriptLabel(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v20 = swift_allocObject();
  result = outlined init with take of ScreeningTranscriptLabel(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v22 = v28;
  *a1 = v29;
  *(a1 + 8) = v22;
  *(a1 + 16) = v14;
  v23 = KeyPath;
  *(a1 + 24) = v27;
  *(a1 + 32) = closure #1 in ScreeningTranscriptLabel.body.getter;
  *(a1 + 40) = 0;
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v15;
  v24 = v25;
  *(a1 + 72) = v13;
  *(a1 + 80) = v24;
  *(a1 + 88) = partial apply for closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter;
  *(a1 + 96) = v20;
  *(a1 + 104) = v16;
  *(a1 + 112) = v18;
  return result;
}

uint64_t type metadata accessor for ScreeningTranscriptLabel()
{
  result = type metadata singleton initialization cache for ScreeningTranscriptLabel;
  if (!type metadata singleton initialization cache for ScreeningTranscriptLabel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScreeningTranscriptLabel.attributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Text.LineStyle.Pattern();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV9LineStyleVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v53 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v53 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  MEMORY[0x1EEE9AC00](v63);
  v73 = &v53 - v12;
  v13 = type metadata accessor for AttributedString.Index();
  v56 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v53 - v19;
  v20 = type metadata accessor for RedactionReasons();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v53 - v24;
  v55 = type metadata accessor for AttributedString.CharacterView();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v70 = *(v1 + 8);

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v69 = a1;
  AttributedString.characters.getter();
  type metadata accessor for ScreeningTranscriptLabel();
  v70 = v1;
  v28 = v71;
  specialized Environment.wrappedValue.getter(v71);
  v29 = MEMORY[0x1E697EA58];
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, MEMORY[0x1E697EA58]);
  v30 = v72;
  dispatch thunk of SetAlgebra.init()();
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons, v29);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v21 + 8);
  v32(v30, v20);
  v32(v28, v20);
  if ((v31 & 1) == 0)
  {
    return (*(v54 + 8))(v26, v55);
  }

  v33 = *(v70 + 40);
  v34 = *(v33 + 16);
  if (!v34)
  {
    return (*(v54 + 8))(v26, v55);
  }

  v59 = (v56 + 2);
  v58 = (v56 + 4);
  v57 = *(v70 + 48);
  ++v56;
  v35 = (v33 + 40);
  v60 = v26;
  v61 = v17;
  while (1)
  {
    v36 = *(v35 - 1);
    v37 = *v35;
    AttributedString.CharacterView.startIndex.getter();
    result = AttributedString.CharacterView._index(_:offsetBy:)();
    if (__OFADD__(v36, v37))
    {
      break;
    }

    AttributedString.CharacterView._index(_:offsetBy:)();
    lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }

    v72 = (v35 + 2);
    v39 = *v59;
    v40 = v64;
    (*v59)(v64, v17, v13);
    v41 = v65;
    v39((v40 + *(v65 + 48)), v74, v13);
    v42 = v13;
    v71 = v34;
    v43 = v62;
    outlined init with copy of Conversation?(v40, v62, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
    v44 = *(v41 + 48);
    v45 = *v58;
    v46 = v73;
    (*v58)(v73, v43, v42);
    v47 = *v56;
    (*v56)(v43 + v44, v42);
    outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(v40, v43);
    v45(&v46[*(v63 + 36)], v43 + *(v41 + 48), v42);
    v48 = v71;
    v47(v43, v42);
    static Text.LineStyle.Pattern.solid.getter();

    v49 = v66;
    Text.LineStyle.init(pattern:color:)();
    v50 = type metadata accessor for Text.LineStyle();
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v51 = v73;
    v70 = AttributedString.subscript.modify();
    outlined init with copy of Conversation?(v49, v67, &_s7SwiftUI4TextV9LineStyleVSgMd);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute();
    v17 = v61;
    AttributedSubstring.subscript.setter();
    v52 = v49;
    v26 = v60;
    outlined destroy of CallControlsService?(v52, &_s7SwiftUI4TextV9LineStyleVSgMd);
    (v70)(v76, 0);
    outlined destroy of CallControlsService?(v51, &_sSny10Foundation16AttributedStringV5IndexVGMd);
    v47(v74, v42);
    v47(v17, v42);
    v13 = v42;
    v47(v75, v42);
    v35 = v72;
    v34 = v48 - 1;
    if (!v34)
    {
      return (*(v54 + 8))(v26, v55);
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[2] = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScreeningTranscriptLabel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v16[3] = *(a2 + 40);
  v16[1] = swift_getKeyPath();
  outlined init with copy of ScreeningTranscriptLabel(a2, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, a1, v5);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v11 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  outlined init with take of ScreeningTranscriptLabel(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  (*(v6 + 32))(v14 + v13, v8, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8_NSRangeVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [_NSRange] and conformance [A], &_sSaySo8_NSRangeVGMd);
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type _NSRange and conformance _NSRange, type metadata accessor for _NSRange);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(Swift::Int *a1@<X0>, Class *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for BorderlessButtonMenuStyle();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v11 = *a1;
  v10 = a1[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = a2[1];
  v12 = a2[2];
  v14.super.isa = *a2;
  v15._rawValue = a2[5];
  GeometryProxy.size.getter();
  v16.location = v11;
  v16.length = v10;
  v17._countAndFlagsBits = v13;
  v17._object = v12;
  v44 = TextLayoutEngine.frame(for:text:font:lowConfidenceRanges:viewSize:)(v16, v17, v14, v15, __PAIR128__(v19, v18));
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MEMORY[0x1EEE9AC00](v24);
  *(&v35 - 2) = a2;
  Menu.init(content:label:)();
  v25 = v37;
  BorderlessButtonMenuStyle.init()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Color, Text> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd);
  lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, MEMORY[0x1E697C9A8]);
  v27 = v39;
  v26 = v40;
  v28 = v36;
  View.menuStyle<A>(_:)();
  (*(v38 + 8))(v25, v27);
  (*(v35 + 8))(v9, v28);
  KeyPath = swift_getKeyPath();
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMd) + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 2;
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  CGRectGetWidth(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  CGRectGetHeight(v46);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMd) + 36));
  v32 = v42;
  *v31 = v41;
  v31[1] = v32;
  v31[2] = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
  v34 = (v26 + *(result + 36));
  *v34 = x;
  v34[1] = y;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

uint64_t ScreeningTranscriptLabel.init(font:text:lowConfidenceText:lowConfidenceRanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  static Color.white.getter();
  v8 = Color.opacity(_:)();

  a7[6] = v8;
  v9 = type metadata accessor for ScreeningTranscriptLabel();
  v10 = *(v9 + 36);
  *(a7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v11 = *(v9 + 40);
  *(a7 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static ScreeningTranscriptLabel_Previews.previews.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for UIFont();
  v2 = static UIFont.preferredFont(textStyle:weight:maximumPointSize:)(*MEMORY[0x1E69DDDB8], 0, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BA940;
  *(v3 + 32) = xmmword_1BC4C7B00;
  *a1 = v2;
  a1[1] = 0xD000000000000024;
  a1[2] = 0x80000001BC4FE750;
  a1[3] = 0xD000000000000018;
  a1[4] = 0x80000001BC4FE780;
  a1[5] = v3;
  static Color.white.getter();
  v4 = Color.opacity(_:)();

  a1[6] = v4;
  v5 = type metadata accessor for ScreeningTranscriptLabel();
  v6 = *(v5 + 36);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 40);
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for static _PreviewProvider._previews.getter in conformance ScreeningTranscriptLabel_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t protocol witness for static _PreviewProvider._platform.getter in conformance ScreeningTranscriptLabel_Previews(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined init with copy of ScreeningTranscriptLabel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreeningTranscriptLabel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ScreeningTranscriptLabel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreeningTranscriptLabel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreeningTranscriptLabel() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews()
{
  result = lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews;
  if (!lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews;
  if (!lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreeningTranscriptLabel_Previews and conformance ScreeningTranscriptLabel_Previews);
  }

  return result;
}

void type metadata completion function for ScreeningTranscriptLabel()
{
  type metadata accessor for UIFont();
  if (v0 <= 0x3F)
  {
    _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for Environment<RedactionReasons>, MEMORY[0x1E697EA58], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        _sSaySo8_NSRangeVGMaTm_0(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _sSaySo8_NSRangeVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGAA08_OverlayG0VyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAzCyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuT0Rd__lFQOyAA0U0VyAA5ColorVAEG_AA016BorderlessButtonuT0VQo_AJyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA7ForEachVySaySo8_NSRangeVGAiA15ModifiedContentVyALyALyAA4ViewPAAE9menuStyleyQrqd__AA04MenuN0Rd__lFQOyAA0O0VyAA5ColorVAA4TextVG_AA016BorderlessButtonoN0VQo_AA022_EnvironmentKeyWritingD0VyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _OverlayModifier<GeometryReader<ForEach<[_NSRange], _NSRange, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGAJyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA20_TransactionModifierVGAA022_EnvironmentKeyWritingG0VySiSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _TransactionModifier>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA20_TransactionModifierVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScreeningTranscriptLabel() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  type metadata accessor for GeometryProxy();

  return closure #1 in closure #1 in closure #2 in ScreeningTranscriptLabel.body.getter(a1, (v2 + v6), a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE9menuStyleyQrqd__AA04MenuG0Rd__lFQOyAA0H0VyAA5ColorVAA4TextVG_AA016BorderlessButtonhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd);
    type metadata accessor for BorderlessButtonMenuStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<Color, Text> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA5ColorVAA4TextVGMd);
    lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(&lazy protocol witness table cache variable for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, MEMORY[0x1E697C9A8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.menuStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ScreeningTranscriptLabel and conformance ScreeningTranscriptLabel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute and conformance AttributeScopes.SwiftUIAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t key path getter for InCallControlsIgnoreLMIRequestsCell.delegate : InCallControlsIgnoreLMIRequestsCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsIgnoreLMIRequestsCell.delegate : InCallControlsIgnoreLMIRequestsCell(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsIgnoreLMIRequestsCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate;
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

id InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v4 addTarget:v0 action:sel_didToggleMuteState_ forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v7, v8, v9);
  v10 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s5UIKit15UICellAccessoryVSgMd);
    closure #1 in InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter(a1);
    OUTLINED_FUNCTION_71();
    (*(v11 + 16))(v1, a1, v10);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v13();
  }
}

uint64_t closure #1 in InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter();
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v13 = *MEMORY[0x1E69DBF28];
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v14 - 8) + 104))(v7, v13, v14);
  *v12 = OUTLINED_FUNCTION_14_0;
  v12[1] = 0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DBF60], v4);
  v15 = type metadata accessor for UICellAccessory.LayoutDimension();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v15);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of Participant?(v8, v9, v10);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s5UIKit26UIListContentConfigurationVSgMd);
    closure #1 in InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(v1);
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v2, a1, v11);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_10_35();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v14();
  }
}

uint64_t closure #1 in InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(void *a1)
{
  MEMORY[0x1BFB21750]();
  v2 = [objc_opt_self() conversationKit];
  v17._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4FE8B0;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v17);

  UIListContentConfiguration.text.setter();
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = [v6 preferredFontForTextStyle_];
  UIFont.caseSensitive()();

  v9 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v9(v16, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v10 = static Colors.InCallControls.tableViewCellTitleLabel;
  v11 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v11(v16, 0);
  v12 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v12(v16, 0);
  v13 = [v6 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsIgnoreLMIRequestsCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  [a1 effectiveUserInterfaceLayoutDirection];
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsIgnoreLMIRequestsCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsIgnoreLMIRequestsCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  v8 = type metadata accessor for InCallControlsIgnoreLMIRequestsCell();
  v3 = OUTLINED_FUNCTION_18_1();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v8);
  InCallControlsIgnoreLMIRequestsCell.configureContent()();

  return v6;
}

uint64_t type metadata accessor for InCallControlsIgnoreLMIRequestsCell()
{
  result = type metadata singleton initialization cache for InCallControlsIgnoreLMIRequestsCell;
  if (!type metadata singleton initialization cache for InCallControlsIgnoreLMIRequestsCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InCallControlsIgnoreLMIRequestsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsIgnoreLMIRequestsCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit35InCallControlsIgnoreLMIRequestsCell____lazy_storage___ignoreLMIRequestsSwitch) = 0;
  v1 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v1);
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t InCallControlsIgnoreLMIRequestsCell.configureContent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-1] - v2;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  MEMORY[0x1BFB216F0](v3);
  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  v11[3] = type metadata accessor for UIListContentConfiguration();
  v11[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  InCallControlsIgnoreLMIRequestsCell.cellContentConfiguration.getter(boxed_opaque_existential_1);
  MEMORY[0x1BFB216E0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
  v6 = *(type metadata accessor for UICellAccessory() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC4BA940;
  InCallControlsIgnoreLMIRequestsCell.switchAccessory.getter(v8 + v7);
  return UICollectionViewListCell.accessories.setter();
}

Swift::Void __swiftcall InCallControlsIgnoreLMIRequestsCell.configure(with:)(ConversationKit::InCallControlsIgnoreLMIRequestsCell::ViewModel with)
{
  v2 = InCallControlsIgnoreLMIRequestsCell.ignoreLMIRequestsSwitch.getter();
  [v2 setOn:with.ignoreLMIRequests animated:0];
}

double InCallControlsIgnoreLMIRequestsCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_sypSgMd);
  }

  return a2;
}

uint64_t InCallControlsIgnoreLMIRequestsCell.didToggleMuteState(_:)()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id InCallControlsIgnoreLMIRequestsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsIgnoreLMIRequestsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsIgnoreLMIRequestsCell()
{
  type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UICellAccessory?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for UICellAccessory?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InCallControlsIgnoreLMIRequestsCell.ViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InCallControlsIgnoreLMIRequestsCell.ViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
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

void UIControl.addAction(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for UIAction();

  v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v4 addAction:v8 forControlEvents:{a1, 0, 0, 0, a2, a3}];
}

unint64_t type metadata accessor for UIAction()
{
  result = lazy cache variable for type metadata for UIAction;
  if (!lazy cache variable for type metadata for UIAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIAction);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x1BFB23DF0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void Lock.withLock<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t String.localizedCallRecording.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 25, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t *LocalizationSource.conversationControls.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_5_56();
  }

  return &static LocalizationSource.conversationControls;
}

unint64_t String.deviceAdjustedLocalizedKey(forDeviceFamily:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a2 & 1) != 0 || a1 != 4)
  {
    goto LABEL_39;
  }

  v6 = a3 == 0x535F4E4545524353 && a4 == 0xEE00474E49524148;
  if (!v6 && (OUTLINED_FUNCTION_6_53() & 1) == 0)
  {
    OUTLINED_FUNCTION_11();
    v8 = v5 == 0xD000000000000011 && v7 == a4;
    if (v8 || (OUTLINED_FUNCTION_6_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000025;
    }

    v9 = v5 == 0x20676E6972616853 && a4 == 0xEE006E6565726353;
    if (v9 || (OUTLINED_FUNCTION_6_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000022;
    }

    OUTLINED_FUNCTION_11();
    v11 = v5 == 0xD000000000000018 && v10 == a4;
    if (v11 || (OUTLINED_FUNCTION_6_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD00000000000001BLL;
    }

    OUTLINED_FUNCTION_11();
    v13 = v5 == 0xD000000000000028 && v12 == a4;
    if (v13 || (OUTLINED_FUNCTION_6_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD000000000000051;
    }

    OUTLINED_FUNCTION_11();
    v15 = v5 == 0xD000000000000026 && v14 == a4;
    if (v15 || (OUTLINED_FUNCTION_6_53() & 1) != 0)
    {
      OUTLINED_FUNCTION_27_4();
      return 0xD00000000000004FLL;
    }

LABEL_39:

    return v5;
  }

  OUTLINED_FUNCTION_27_4();
  return 0xD000000000000037;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = MEMORY[0x1BFB20A90]();

  return v4;
}

Swift::String __swiftcall String.localizedWithComment(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_12_39();
  v3 = [objc_opt_self() conversationKit];
  v11._object = v1;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_10_36();
  v11._countAndFlagsBits = v2;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v6, v7, v11);
  OUTLINED_FUNCTION_305();

  v8 = OUTLINED_FUNCTION_46();
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall String.localizedWithNumber(_:)(Swift::Int a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() conversationKit];
  v27._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_10_36();
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v9, v10, v27);

  v11 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v11 setLocale_];

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v14 = [v11 stringFromNumber_];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v26[1] = a1;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC4BA940;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 32) = v15;
  *(v19 + 40) = v17;
  v20 = String.init(format:_:)();
  v22 = v21;

  v23 = v20;
  v24 = v22;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

uint64_t String.localizedHidden.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 20, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

uint64_t String.localizedAlerts.getter()
{
  v1 = [objc_opt_self() conversationKit];
  v2 = OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_74(v2, v3, 18, v4);
  OUTLINED_FUNCTION_305();

  return OUTLINED_FUNCTION_46();
}

Swift::tuple_title_String_subtitle_String_optional __swiftcall String.splitForTitleAndSubtitle()()
{
  v0 = lazy protocol witness table accessor for type String and conformance String();
  v1 = MEMORY[0x1BFB21D70](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v0);
  if (*(v1 + 16))
  {

    v2 = OUTLINED_FUNCTION_46();
    MEMORY[0x1BFB20A90](v2);
    OUTLINED_FUNCTION_305();
  }

  v3 = specialized BidirectionalCollection.last.getter(v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x1BFB20A90](v3, v5, v7, v9);
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = OUTLINED_FUNCTION_46();
  v15 = v10;
  v16 = v12;
  result.subtitle.value._object = v16;
  result.subtitle.value._countAndFlagsBits = v15;
  result.title._object = v14;
  result.title._countAndFlagsBits = v13;
  return result;
}

id one-time initialization function for conversationKit()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.conversationKit = result;
  *algn_1EDDCCEE8 = 0x61737265766E6F43;
  qword_1EDDCCEF0 = 0xEF74694B6E6F6974;
  return result;
}

uint64_t *LocalizationSource.conversationKit.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  return &static LocalizationSource.conversationKit;
}

uint64_t static LocalizationSource.conversationKit.getter()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_7_12();
  }

  v0 = static LocalizationSource.conversationKit;

  return OUTLINED_FUNCTION_46();
}

id one-time initialization function for conversationControls()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.conversationControls = result;
  unk_1EBCDAF00 = 0xD000000000000014;
  qword_1EBCDAF08 = 0x80000001BC4FEB70;
  return result;
}

uint64_t static LocalizationSource.conversationControls.getter()
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_5_56();
  }

  v0 = static LocalizationSource.conversationControls;

  return OUTLINED_FUNCTION_46();
}

id one-time initialization function for systemAperture()
{
  result = [objc_opt_self() conversationKit];
  static LocalizationSource.systemAperture = result;
  unk_1EDDCCED0 = 0xD00000000000001ELL;
  qword_1EDDCCED8 = 0x80000001BC4FEB50;
  return result;
}

uint64_t *LocalizationSource.systemAperture.unsafeMutableAddressor()
{
  if (one-time initialization token for systemAperture != -1)
  {
    OUTLINED_FUNCTION_4_58();
  }

  return &static LocalizationSource.systemAperture;
}

uint64_t static LocalizationSource.systemAperture.getter()
{
  if (one-time initialization token for systemAperture != -1)
  {
    OUTLINED_FUNCTION_4_58();
  }

  v0 = static LocalizationSource.systemAperture;

  return OUTLINED_FUNCTION_46();
}

uint64_t localized(_:locale:source:value:comment:_:)(uint64_t a1, uint64_t a2, int a3, NSBundle bundle, Swift::String_optional tableName, Swift::String value, Swift::String comment, uint64_t a8)
{
  object = value._object;
  value._object = comment._countAndFlagsBits;
  v13 = comment._object;
  countAndFlagsBits = value._countAndFlagsBits;
  value._countAndFlagsBits = object;
  result = NSLocalizedString(_:tableName:bundle:value:comment:)(*&a1, tableName, bundle, *(&value - 8), *&value._object)._countAndFlagsBits;
  if (*(a8 + 16))
  {
    String.init(format:locale:arguments:)();
    OUTLINED_FUNCTION_305();

    return OUTLINED_FUNCTION_46();
  }

  return result;
}

{
  return localized(_:locale:source:value:comment:arguments:)(a1, a2, a3, bundle, tableName, value, comment, a8);
}

uint64_t key path getter for InCallControlsPTTLeaveChannelCell.leaveChannelButton : InCallControlsPTTLeaveChannelCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

id InCallControlsPTTLeaveChannelCell.leaveChannelButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void InCallControlsPTTLeaveChannelCell.leaveChannelButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t InCallControlsPTTLeaveChannelCell.leaveChannelButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v42 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v41 = v7 - v6;
  v8 = type metadata accessor for AttributeContainer();
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell____lazy_storage___leaveChannelButtonConfiguration;
  swift_beginAccess();
  outlined init with copy of UIButton.Configuration?(v1 + v21, v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v22 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    v39 = v3;
    v40 = v1;
    outlined destroy of Any?(v20, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    static UIButton.Configuration.filled()();
    v23 = [objc_opt_self() conversationKit];
    v45._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x657661654CLL;
    v25.value._countAndFlagsBits = 0x61737265766E6F43;
    v25.value._object = 0xEF74694B6E6F6974;
    v24._object = 0xE500000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v45._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v45);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v27 = type metadata accessor for AttributedString();
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v27);
    UIButton.Configuration.attributedTitle.setter();
    v28 = UIButton.Configuration.attributedTitle.modify();
    if (!__swift_getEnumTagSinglePayload(v29, 1, v27))
    {
      v30 = [objc_opt_self() preferredFontForTextStyle_];
      isa = UIFont.withTraits(_:)(0x8002u).super.isa;

      v32 = UIFont.caseSensitive()().super.isa;
      v43 = v32;
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
      AttributedString.subscript.setter();
    }

    v28(v44, 0);
    (*(v42 + 104))(v41, *MEMORY[0x1E69DC508], v39);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.Configuration.contentInsets.setter();
    v33 = [objc_opt_self() systemRedColor];
    v34 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v34(v44, 0);
    OUTLINED_FUNCTION_2_3();
    (*(v35 + 16))(v17, a1, v22);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
    v36 = v40;
    swift_beginAccess();
    outlined assign with take of UIButton.Configuration?(v17, v36 + v21, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_2_3();
    return (*(v38 + 32))(a1, v20, v22);
  }
}

uint64_t InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of UIButton.Configuration?(v9, v10, v11);
  v12 = type metadata accessor for UICellAccessory();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    outlined destroy of Any?(v8, &_s5UIKit15UICellAccessoryVSgMd);
    closure #1 in InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter(v1, a1);
    OUTLINED_FUNCTION_71();
    (*(v13 + 16))(v2, a1, v12);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_11_40();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v15();
  }
}

uint64_t closure #1 in InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v25 = type metadata accessor for UICellAccessory.Placement();
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v17 = v16(v13);
  InCallControlsPTTLeaveChannelCell.leaveChannelButtonConfiguration.getter(v15);
  v18 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  UIButton.configuration.setter();

  (v16)();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV14DisplayedStateO9displayed_yyc2attMd) + 48)];
  v20 = *MEMORY[0x1E69DBF28];
  v21 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v21 - 8) + 104))(v8, v20, v21);
  *v19 = OUTLINED_FUNCTION_14_0;
  v19[1] = 0;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF60], v25);
  v22 = *MEMORY[0x1E69DBF30];
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 104))(v5, v22, v23);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v23);
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v26 + 8))(v11, v27);
}

uint64_t InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationVSgMd);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  OUTLINED_FUNCTION_9_41();
  OUTLINED_FUNCTION_142();
  outlined init with copy of UIButton.Configuration?(v8, v9, v10);
  v11 = type metadata accessor for UIListContentConfiguration();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    outlined destroy of Any?(v7, &_s5UIKit26UIListContentConfigurationVSgMd);
    closure #1 in InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter();
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v1, a1, v11);
    OUTLINED_FUNCTION_4_57();
    OUTLINED_FUNCTION_11_40();
    return swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_142();
    return v14();
  }
}

uint64_t closure #1 in InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter()
{
  MEMORY[0x1BFB21750]();
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle_];
  v2 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  v2(v9, 0);
  if (one-time initialization token for tableViewCellTitleLabel != -1)
  {
    swift_once();
  }

  v3 = static Colors.InCallControls.tableViewCellTitleLabel;
  v4 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v4(v9, 0);
  v5 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontForContentSizeCategory.setter();
  v5(v9, 0);
  v6 = [v0 preferredFontForTextStyle_];
  isa = UIFont.caseSensitive()().super.isa;

  InCallControlsPTTLeaveChannelCell.verticalInset(_:scaledToFont:)(isa, 18.5);
  return UIListContentConfiguration.directionalLayoutMargins.setter();
}

id InCallControlsPTTLeaveChannelCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id InCallControlsPTTLeaveChannelCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v3);
  v4 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v4);
  v9 = type metadata accessor for InCallControlsPTTLeaveChannelCell();
  v5 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v6, v7, v5, v0, v9);
}

uint64_t type metadata accessor for InCallControlsPTTLeaveChannelCell()
{
  result = type metadata singleton initialization cache for InCallControlsPTTLeaveChannelCell;
  if (!type metadata singleton initialization cache for InCallControlsPTTLeaveChannelCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InCallControlsPTTLeaveChannelCell.configure(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-1] - v11;
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v13 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  MEMORY[0x1BFB216F0](v12);
  [v1 setAutomaticallyUpdatesBackgroundConfiguration_];
  InCallControlsPTTLeaveChannelCell.cellContentConfiguration.getter(v8);

  UIListContentConfiguration.text.setter();
  v20[3] = v2;
  v20[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v4 + 16))(boxed_opaque_existential_1, v8, v2);
  MEMORY[0x1BFB216E0](v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
  v15 = *(type metadata accessor for UICellAccessory() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA940;
  InCallControlsPTTLeaveChannelCell.leaveButtonAccessory.getter(v17 + v16);
  UICollectionViewListCell.accessories.setter();
  return (*(v4 + 8))(v8, v2);
}

id InCallControlsPTTLeaveChannelCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsPTTLeaveChannelCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit33InCallControlsPTTLeaveChannelCell_leaveChannelButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  v3 = type metadata accessor for UICellAccessory();
  OUTLINED_FUNCTION_0_11(v3);
  v4 = type metadata accessor for UIListContentConfiguration();
  OUTLINED_FUNCTION_0_11(v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double InCallControlsPTTLeaveChannelCell.verticalInset(_:scaledToFont:)(void *a1, double a2)
{
  v3 = [a1 fontDescriptor];
  v4 = [v3 objectForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for UIFontTextStyle(0);
    if (swift_dynamicCast())
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      [v5 scaledValueForValue_];
      a2 = v6;
    }
  }

  else
  {
    outlined destroy of Any?(v11, &_sypSgMd);
  }

  return a2;
}

id InCallControlsPTTLeaveChannelCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsPTTLeaveChannelCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for InCallControlsPTTLeaveChannelCell()
{
  type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UICellAccessory?, MEMORY[0x1E69DBF68]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIButton.Configuration?(319, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of InCallControlsPTTLeaveChannelCell.configure(with:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD0);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  v8 = *(a1 + 40);
  return v4(v6);
}

void type metadata accessor for UIButton.Configuration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of UIButton.Configuration?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_2_3();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t outlined assign with take of UIButton.Configuration?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_2_3();
  (*(v5 + 40))(v3, v4);
  return v3;
}

id CNKScreenSharingStateMonitorFactory.makeScreenSharingStateMonitor(using:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ScreenSharingStateMonitor());
  v3 = a1;
  return ScreenSharingStateMonitor.init(activeCall:conversationControllerProvider:)(a1, 0, 0);
}

CNKScreenSharingStateMonitorFactory __swiftcall CNKScreenSharingStateMonitorFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id one-time initialization function for sharedMonitor()
{
  result = [objc_allocWithZone(type metadata accessor for ScreenSharingStateMonitor()) init];
  static ScreenSharingStateMonitor.sharedMonitor = result;
  return result;
}

id ScreenSharingStateMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for ScreenSharingStateMonitor.isBroadcastingScreenSharing : ScreenSharingStateMonitor@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*ScreenSharingStateMonitor.isBroadcastingScreenSharing.modify())()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_30_2();
  return CallRecordingPillViewController.cancellable.modify;
}

BOOL ScreenSharingStateMonitor.isParticipantCurrentlySharing.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v3);
  v6 = type metadata accessor for Participant(0);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit11ParticipantVSgMd);
  return v7;
}

uint64_t key path setter for ScreenSharingStateMonitor.currentlySharingParticipant : ScreenSharingStateMonitor(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of (CGFloat, AutoplayCandidate)(a1, &v6 - v3, &_s15ConversationKit11ParticipantVSgMd);
  return ScreenSharingStateMonitor.currentlySharingParticipant.setter(v4);
}

uint64_t ScreenSharingStateMonitor.currentlySharingParticipant.getter()
{
  OUTLINED_FUNCTION_4_5();
  v0 = OUTLINED_FUNCTION_75_1();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v0, v1, v2);
}

double ScreenSharingStateMonitor.currentlySharingParticipantContentsSize.getter()
{
  v1 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-v8 - 8];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))(v7);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1))
  {
    v10 = &_s15ConversationKit11ParticipantVSgMd;
    v11 = v9;
  }

  else
  {
    outlined init with copy of Participant(v9, v4);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit11ParticipantVSgMd);
    Participant.screenInfo.getter();
    outlined destroy of Participant(v4);
    if (v16 != 1)
    {
      v12 = Participant.ScreenInfo.contentsSize.getter();
      outlined destroy of Participant.ScreenInfo(v15);
      return v12;
    }

    v10 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
    v11 = v15;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, v10);
  return 0.0;
}

uint64_t key path getter for ScreenSharingStateMonitor.call : ScreenSharingStateMonitor@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ScreenSharingStateMonitor.call : ScreenSharingStateMonitor(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

void (*ScreenSharingStateMonitor.call.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_30_2();
  return ScreenSharingStateMonitor.call.modify;
}

void ScreenSharingStateMonitor.call.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ScreenSharingStateMonitor.call.didset();
  }
}

uint64_t ScreenSharingStateMonitor.addObserver(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v3[8] = 0;
  OUTLINED_FUNCTION_30_2();
  specialized Dictionary.subscript.setter(v3, a1);
  swift_endAccess();
  return ScreenSharingStateMonitor.notifyNewObserverIfScreenSharingIsActive(_:)(a1);
}

uint64_t ScreenSharingStateMonitor.removeObserver(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_30_2();
  specialized Dictionary._Variant.removeValue(forKey:)(a1, v3);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVSgMd);
  return swift_endAccess();
}

void @objc ScreenSharingStateMonitor.addObserver(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t ScreenSharingStateMonitor.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 336))(0, 0, 0);
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t type metadata accessor for ScreenSharingStateMonitor()
{
  result = type metadata singleton initialization cache for ScreenSharingStateMonitor;
  if (!type metadata singleton initialization cache for ScreenSharingStateMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ScreenSharingStateMonitor.init(activeCall:conversationControllerProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_observations;
  *&v3[v8] = Dictionary.init(dictionaryLiteral:)();
  v9 = &v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationControllerProvider];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_isBroadcastingScreenSharing] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_screenSharingRemoteControllerObservation] = 0;
  v10 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_currentlySharingParticipant;
  v11 = type metadata accessor for Participant(0);
  __swift_storeEnumTagSinglePayload(&v3[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call;
  *&v3[OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_call] = 0;
  OUTLINED_FUNCTION_3_5();
  *&v3[v12] = a1;
  *v9 = a2;
  v9[1] = a3;
  v13 = a1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a2);
  v16.receiver = v3;
  v16.super_class = type metadata accessor for ScreenSharingStateMonitor();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  ScreenSharingStateMonitor.updateConversationController(using:)(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);

  return v14;
}

uint64_t ScreenSharingStateMonitor.didUpdateScreenInfoForParticipant(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - v5;
  v7 = ScreenSharingStateMonitor.currentObservers()();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v8 = OUTLINED_FUNCTION_54();
  *(v8 + 16) = xmmword_1BC4BAA20;
  outlined init with copy of Participant(a1, v6);
  type metadata accessor for Participant(0);
  v9 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  specialized >> prefix<A>(_:)();
  v14 = v13;
  v16 = v15;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
  v17 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  *(v8 + 64) = v18;
  *(v8 + 32) = v14;
  *(v8 + 40) = v16;
  v25[1] = specialized Array.count.getter(v7);
  v19 = String.init<A>(reflecting:)();
  *(v8 + 96) = v17;
  *(v8 + 104) = v18;
  *(v8 + 72) = v19;
  *(v8 + 80) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = specialized Array.count.getter(v7);
  if (!result)
  {
  }

  v22 = result;
  if (result >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1BFB22010](i, v7);
      }

      else
      {
        v24 = *(v7 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      if ([v24 respondsToSelector_])
      {
        [v24 screenSharingStateMonitorDidUpdateScreenInfoForParticipant_];
      }

      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t ScreenSharingStateMonitor.notifyNewObserverIfScreenSharingIsActive(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - v9;
  v11 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v50 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v15(v51, v13);
  v16 = v52;
  if (v52)
  {
    v17 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    (*(v17 + 32))(v16, v17);
    v19 = v18;
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 352))(ObjectType, v19);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd);
    v21 = 0;
  }

  v22 = [a1 respondsToSelector_];
  if (v22)
  {
    v22 = [a1 screenSharingStateMonitor:v2 didUpdateScreenSharingBroadcastingState:v21 & 1];
  }

  (v15)(v51, v22);
  v23 = v52;
  if (!v52)
  {
    v25 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd;
    v26 = v51;
    goto LABEL_10;
  }

  v24 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v24 + 40))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v51);
  Array<A>.screenSharingParticipant.getter();

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v25 = &_s15ConversationKit11ParticipantVSgMd;
    v26 = v10;
LABEL_10:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v26, v25);
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_89();
      swift_once();
    }

    static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)();
  }

  v28 = v50;
  outlined init with take of Participant(v10, v50);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  v49[1] = static OS_os_log.conversationKit;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v29 = OUTLINED_FUNCTION_54();
  *(v29 + 16) = xmmword_1BC4BAA20;
  v51[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30CNKScreenSharingStateObserving_pMd);
  v30 = String.init<A>(reflecting:)();
  v32 = v31;
  v33 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 64) = v34;
  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  v35 = OUTLINED_FUNCTION_40_2();
  outlined init with copy of Participant(v35, v36);
  v37 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v11);
  specialized >> prefix<A>(_:)();
  v41 = v40;
  v43 = v42;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantVSgMd);
  *(v29 + 96) = v33;
  *(v29 + 104) = v34;
  *(v29 + 72) = v41;
  *(v29 + 80) = v43;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v44 = OUTLINED_FUNCTION_40_2();
  outlined init with copy of Participant(v44, v45);
  v46 = OUTLINED_FUNCTION_5_57();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v11);
  ScreenSharingStateMonitor.currentlySharingParticipant.setter(v7);
  if ([a1 respondsToSelector_])
  {
    [a1 screenSharingStateMonitor:v2 didUpdateScreenSharingState:1];
  }

  if ([a1 respondsToSelector_])
  {
    [a1 screenSharingStateMonitorDidUpdateScreenInfoForParticipant_];
  }

  return outlined destroy of Participant(v28);
}

void closure #1 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for Participant(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v15 = Strong, v16 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x128))(), v15, !v16))
  {
LABEL_9:
    if (one-time initialization token for conversationKit == -1)
    {
LABEL_10:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  if (![v16 isConnected])
  {

    goto LABEL_9;
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_12:
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v18 = v17;
  v19 = OBJC_IVAR____TtC15ConversationKit25ScreenSharingStateMonitor_conversationController;
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v18 + v19, v36, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd);

  v20 = v37;
  if (!v37)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd);
    goto LABEL_12;
  }

  v21 = v38;
  v22 = __swift_project_boxed_opaque_existential_1(v36, v37);
  v34 = &v34;
  v35 = a1;
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v25);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd);
  v26 = (*(v21 + 40))(v20, v21);
  (*(v23 + 8))(v25, v20);
  a1 = v35;
LABEL_13:
  outlined init with copy of Participant(a1, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v26 = v32;
  }

  v27 = *(v26 + 16);
  if (v27 >= *(v26 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v26 = v33;
  }

  *(v26 + 16) = v27 + 1;
  outlined init with take of Participant(v8, v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27);
  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    Array<A>.screenSharingParticipant.getter();

    ScreenSharingStateMonitor.currentlySharingParticipant.setter(v4);
  }

  else
  {
  }

  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = v30;
    ScreenSharingStateMonitor.didUpdateScreenInfoForParticipant(_:)(a1);
  }
}

void closure #2 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-v4];
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (one-time initialization token for conversationKit == -1)
    {
LABEL_5:
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = type metadata accessor for Participant(0);
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v13);
        ScreenSharingStateMonitor.currentlySharingParticipant.setter(v5);
      }

      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(0);
LABEL_13:

        return;
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v15 = v16;
    ScreenSharingStateMonitor.updateCurrentSharingParticipant()();
    goto LABEL_13;
  }
}

uint64_t ScreenSharingStateMonitor.updateCurrentSharingParticipant()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-1] - v5;
  v7 = type metadata accessor for Participant(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x190))(v17, v8);
  v11 = v18;
  if (!v18)
  {
    v13 = &_s15ConversationKit025ScreenSharingStateMonitorA16ProviderProtocol_pSgMd;
    v14 = v17;
    goto LABEL_5;
  }

  v12 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v12 + 40))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v17);
  Array<A>.screenSharingParticipant.getter();

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    v13 = &_s15ConversationKit11ParticipantVSgMd;
    v14 = v6;
LABEL_5:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, v13);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    ScreenSharingStateMonitor.currentlySharingParticipant.setter(v4);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    return os_log(_:dso:log:type:_:)();
  }

  outlined init with take of Participant(v6, v10);
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  outlined init with copy of Participant(v10, v4);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  ScreenSharingStateMonitor.currentlySharingParticipant.setter(v4);
  return outlined destroy of Participant(v10);
}

void closure #3 in ScreenSharingStateMonitor.updateConversationController(using:)(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (one-time initialization token for conversationKit == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA940;
  v8 = a1 & 1;
  v14[8] = a1 & 1;
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    ScreenSharingStateMonitor.didChangeScreenSharingBroadcastingState(_:)(v8);
  }
}

void closure #4 in ScreenSharingStateMonitor.updateConversationController(using:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_4;
  }

  ObjectType = swift_getObjectType();
  if (((*(a2 + 104))(ObjectType, a2) & 1) == 0)
  {
    return;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    goto LABEL_8;
  }

LABEL_4:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    ScreenSharingStateMonitor.updateCurrentSharingParticipant()();
  }
}

uint64_t ScreenSharingStateMonitor.activeConversationController.getter()
{
  OUTLINED_FUNCTION_4_5();
  v0 = OUTLINED_FUNCTION_75_1();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v0, v1, v2);
}

id ScreenSharingStateMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSharingStateMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for ScreenSharingStateMonitor()
{
  type metadata accessor for Participant?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Participant?()
{
  if (!lazy cache variable for type metadata for Participant?)
  {
    type metadata accessor for Participant(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Participant?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScreenSharingStateMonitor.Observation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreenSharingStateMonitor.Observation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t CallScreeningService.init()()
{
  lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
  type metadata accessor for Defaults();
  swift_allocObject();
  Defaults.init()();
  return CallScreeningService.init(overrides:)();
}

uint64_t ScreeningStatusOverride.callScreeningStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (&v20 - v5);
  v7 = *v1;
  switch((*(*v7 + 848))(v4))
  {
    case 1u:
      v15 = MEMORY[0x1E6995EA0];
      goto LABEL_8;
    case 2u:
      v15 = MEMORY[0x1E6995EB0];
      goto LABEL_8;
    case 3u:
      v11 = (*(*v7 + 856))();
      if (v12)
      {
        *v6 = v11;
        v6[1] = v12;
        v13 = *MEMORY[0x1E6995EA8];
        v14 = type metadata accessor for CallScreeningStatus();
        (*(*(v14 - 8) + 104))(v6, v13, v14);
      }

      else
      {
        static CallScreeningStatus.screened.getter();
      }

      v19 = type metadata accessor for CallScreeningStatus();
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
      return outlined init with take of CallScreeningStatus?(v6, a1);
    case 4u:
      v15 = MEMORY[0x1E6995E98];
LABEL_8:
      v16 = *v15;
      v17 = type metadata accessor for CallScreeningStatus();
      (*(*(v17 - 8) + 104))(a1, v16, v17);
      v9 = a1;
      v10 = 0;
      v8 = v17;
      break;
    default:
      v8 = type metadata accessor for CallScreeningStatus();
      v9 = a1;
      v10 = 1;
      break;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t ScreeningStatusOverride.overrideForSummary.getter()
{
  v1 = *v0;
  if ((*(*v1 + 848))() != 5)
  {
    return 0;
  }

  result = (*(*v1 + 856))();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t ScreeningStatusOverride.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Defaults();
  swift_allocObject();
  result = Defaults.init()();
  *a1 = result;
  return result;
}

uint64_t outlined init with take of CallScreeningStatus?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

id CallControlsSidebarViewController.init(captionsStateController:controlsManager:sidebarStateStream:)()
{
  OUTLINED_FUNCTION_4_44();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView] = 0;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_cancellables] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v3;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_controlsManager] = v2;
  *&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_sidebarStateStream] = v0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v5;
}

id CallControlsSidebarViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CallControlsSidebarViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CallControlsSidebarViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  CallControlsSidebarViewController.setupConstraints()();
  CallControlsSidebarViewController.observeContentOffset()();
}

void CallControlsSidebarViewController.setupConstraints()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v3 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView, closure #1 in CallControlsSidebarViewController.contentView.getter);
  v4 = [v3 topAnchor];

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor_];
  *(inited + 32) = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView;
  v10 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView] bottomAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 bottomAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(inited + 40) = v14;
  v15 = [*&v1[v9] leadingAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(inited + 48) = v19;
  v20 = [*&v1[v9] trailingAnchor];
  v21 = [v1 view];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(inited + 56) = v24;
  specialized Array.append<A>(contentsOf:)(inited);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1BC4BA7F0;
  v26 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController, closure #1 in CallControlsSidebarViewController.detailsViewController.getter);
  v27 = [v26 view];

  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = [v27 topAnchor];

  v29 = [*&v1[v9] topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v25 + 32) = v30;
  v31 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController;
  v32 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController] view];
  if (!v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [*&v1[v9] leadingAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v25 + 40) = v36;
  v37 = [*&v1[v31] view];
  if (!v37)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [*&v1[v9] trailingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v25 + 48) = v41;
  v42 = [*&v1[v31] view];
  if (!v42)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = [*&v1[v9] &off_1E7FE9D20 + 5];
  v46 = [v44 constraintEqualToAnchor_];

  *(v25 + 56) = v46;
  specialized Array.append<A>(contentsOf:)(v25);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1BC4BA7F0;
  v48 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView, closure #1 in CallControlsSidebarViewController.topConverView.getter);
  v49 = [v48 topAnchor];

  v50 = [*&v1[v9] topAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v47 + 32) = v51;
  v52 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView;
  v53 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView] leadingAnchor];
  v54 = [*&v1[v9] leadingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v47 + 40) = v55;
  v56 = [*&v1[v52] trailingAnchor];
  v57 = [*&v1[v9] trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v47 + 48) = v58;
  v59 = [*&v1[v52] bottomAnchor];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 safeAreaLayoutGuide];

    v63 = [v62 topAnchor];
    v64 = [v59 constraintEqualToAnchor_];

    *(v47 + 56) = v64;
    specialized Array.append<A>(contentsOf:)(v47);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1BC4BA7F0;
    v66 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView, closure #1 in CallControlsSidebarViewController.bottomBlurView.getter);
    v67 = [v66 bottomAnchor];

    v68 = [*&v1[v9] bottomAnchor];
    v69 = [v67 constraintEqualToAnchor_];

    *(v65 + 32) = v69;
    v70 = OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView;
    v71 = [*&v1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___bottomBlurView] leadingAnchor];
    v72 = [*&v1[v9] leadingAnchor];
    v73 = [v71 constraintEqualToAnchor_];

    *(v65 + 40) = v73;
    v74 = [*&v1[v70] trailingAnchor];
    v75 = [*&v1[v9] trailingAnchor];
    v76 = [v74 constraintEqualToAnchor_];

    *(v65 + 48) = v76;
    v77 = [*&v1[v70] heightAnchor];
    v78 = [v77 constraintEqualToConstant_];

    *(v65 + 56) = v78;
    specialized Array.append<A>(contentsOf:)(v65);
    v79 = objc_opt_self();
    type metadata accessor for NSLayoutConstraint();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v79 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

void CallControlsSidebarViewController.observeContentOffset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMd);
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v16 = v0;
  v12 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController, closure #1 in CallControlsSidebarViewController.detailsViewController.getter);
  v13 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x150))();

  if (v13)
  {
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVGMd);
    Publisher.map<A>(_:)();
    (*(v2 + 8))(v4, v1);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint>, CGFloat> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGMd);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    Publisher<>.removeDuplicates()();
    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint>, CGFloat>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_So8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So16UICollectionViewCSo7CGPointVG12CoreGraphics7CGFloatVGGMd);
    Publisher<>.sink(receiveValue:)();

    (*(v15 + 8))(v11, v9);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }
}

void CallControlsSidebarViewController.updateSidebarInsets(_:)(double a1)
{
  v2 = OUTLINED_FUNCTION_0_90(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(0.0, 0.0, a1, 0.0);
}

Swift::Void __swiftcall CallControlsSidebarViewController.captioningStateDidChange()()
{
  if ([v0 isViewLoaded])
  {
    v1 = OUTLINED_FUNCTION_0_90(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___detailsViewController);
    ConversationHUDDetailsViewController.captioningStateDidChange()();
  }
}

id closure #1 in CallControlsSidebarViewController.contentView.getter(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (_UISolariumEnabled())
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    static _Glass._GlassVariant.regular.getter();
    v12[3] = type metadata accessor for _Glass();
    v12[4] = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v12);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [a1 view];
    if (result)
    {
      v5 = result;
      [result addSubview_];

      return v3;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v7 = one-time initialization token for background;
    v3 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor_];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [a1 view];
    if (result)
    {
      v8 = result;
      [result addSubview_];

      return v3;
    }

    goto LABEL_17;
  }

  if (one-time initialization token for backgroundBlurEffect != -1)
  {
    swift_once();
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    [result addSubview_];

    v11 = [v9 contentView];
    return v11;
  }

LABEL_18:
  __break(1u);
  return result;
}

void closure #1 in CallControlsSidebarViewController.detailsViewController.getter(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_controlsManager];
  *(swift_allocObject() + 16) = a1;
  v3 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v4 = v2;
  v5 = a1;
  v6 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xA0);
  v9 = swift_unknownObjectRetain();
  v8(v9);
  v10 = *((*v7 & *v4) + 0x508);
  v11 = v6;
  v10(v6, &protocol witness table for ConversationHUDDetailsViewController);
  v12 = v11;
  [v5 addChildViewController_];
  v13 = [v12 view];
  if (v13)
  {
    v14 = v13;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    v15 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___contentView, closure #1 in CallControlsSidebarViewController.contentView.getter);
    v16 = [v12 view];

    if (v16)
    {
      [v15 addSubview_];

      [v12 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id closure #1 in CallControlsSidebarViewController.topConverView.getter(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setHidden_];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CallControlsSidebarViewController.detailsViewController.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

id closure #1 in CallControlsSidebarViewController.bottomBlurView.getter(void *a1)
{
  static UnitPoint.top.getter();
  v3 = v2;
  v5 = v4;
  static UnitPoint.bottom.getter();
  *&v12 = v3;
  *(&v12 + 1) = v5;
  v13 = v6;
  v14 = v7;
  v15 = 0;
  LOBYTE(v16) = 1;
  v8 = objc_allocWithZone(type metadata accessor for VariableBlurUIView());
  v9 = VariableBlurUIView.init(radius:blurMask:)(&v12, 4.0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    [result addSubview_];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double closure #1 in CallControlsSidebarViewController.observeContentOffset()@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

void closure #2 in CallControlsSidebarViewController.observeContentOffset()(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];

    if (v4)
    {
      [v4 safeAreaInsets];
      v6 = v5;

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = CallControlsSidebarViewController.detailsViewController.getter(&OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController____lazy_storage___topConverView, closure #1 in CallControlsSidebarViewController.topConverView.getter);

        [v9 setHidden_];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id CallControlsSidebarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id CallControlsSidebarViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CallControlsSidebarViewController.isCaptioningEnabled.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit33CallControlsSidebarViewController_captionsStateController;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 56))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

Swift::Int RemoteControlParticipant.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type RemoteControlParticipant and conformance RemoteControlParticipant()
{
  result = lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant;
  if (!lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteControlParticipant and conformance RemoteControlParticipant);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteControlParticipant(_BYTE *result, unsigned int a2, unsigned int a3)
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

double CGSize.adjustedPoints(with:scaleFactor:)(double a1, double a2, double a3)
{
  v3 = a3 / a1 * a2;
  type metadata accessor for UIView();
  v4 = static UIView.screenScale.getter();
  v5 = round(v3 * v4) / v4;
  static UIView.screenScale.getter();
  return v5;
}

double CGSize.roundedToDisplay.getter()
{
  OUTLINED_FUNCTION_0_91();
  type metadata accessor for UIView();
  v1 = static UIView.screenScale.getter();
  v2 = round(v1 * v0) / v1;
  static UIView.screenScale.getter();
  return v2;
}

double CGSize.min.getter(double result, double a2)
{
  if (a2 < result)
  {
    return a2;
  }

  return result;
}

double CGSize.max.getter(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double CGSize.asPortrait.getter(double a1, double a2)
{
  if (a2 >= a1)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

double CGSize.asLandscape.getter(double a1, double a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

double CGSize.rounded(_:toScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v7 = CGFloat.rounded(_:toScale:)(a1, a2, a3);
  CGFloat.rounded(_:toScale:)(a1, a2, a4);
  return v7;
}

double CGSize.rounded(_:toScaleOf:)()
{
  OUTLINED_FUNCTION_0_91();
  v2 = v1;
  [v3 displayScale];
  CGFloat.rounded(_:toScale:)(v2, v4, v0);
  OUTLINED_FUNCTION_1_77();
  return v0;
}

{
  OUTLINED_FUNCTION_0_91();
  v3 = v2;
  v5 = v4;
  swift_getObjectType();

  return specialized CGPoint.rounded(_:toScaleOf:)(v5, v3, v1, v0);
}

{
  OUTLINED_FUNCTION_0_91();
  v2 = v1;
  v4 = [v3 traitCollection];
  [v4 displayScale];
  CGFloat.rounded(_:toScale:)(v2, v5, v0);
  OUTLINED_FUNCTION_1_77();

  return v0;
}

uint64_t DropdownViewModel.MenuItem.id.getter()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t DropdownViewModel.MenuItem.label.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 20));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.onAction.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 24));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.accessibilityIdentifier.getter()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_6_54(*(v0 + 28));

  return OUTLINED_FUNCTION_46();
}

uint64_t DropdownViewModel.MenuItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t one-time initialization function for separatorMenuItem()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_allocate_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  result = UUID.init()();
  v3 = (v1 + v0[5]);
  *v3 = 0x6F74617261706573;
  v3[1] = 0xE900000000000072;
  v4 = (v1 + v0[6]);
  *v4 = TPNumberPadCharacter.rawValue.getter;
  v4[1] = 0;
  v5 = (v1 + v0[7]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + v0[8]) = 1;
  return result;
}

int *DropdownViewModel.MenuItem.init(label:onAction:accessibilityIdentifier:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  OUTLINED_FUNCTION_7_51();
  UUID.init()();
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  v16 = (v11 + result[5]);
  *v16 = v10;
  v16[1] = v9;
  v17 = (v11 + result[6]);
  *v17 = v8;
  v17[1] = v7;
  v18 = (v11 + result[7]);
  *v18 = a5;
  v18[1] = a6;
  *(v11 + result[8]) = a7;
  return result;
}

uint64_t outlined init with copy of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DropdownViewModel.MenuItem(uint64_t a1)
{
  v2 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static DropdownViewModel.MenuItem.separatorMenuItem.modify())()
{
  if (one-time initialization token for separatorMenuItem != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.separatorMenuItem);
  OUTLINED_FUNCTION_39();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t key path getter for static DropdownViewModel.MenuItem.separatorMenuItem : DropdownViewModel.MenuItem.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor();
  swift_beginAccess();
  return outlined init with copy of DropdownViewModel.MenuItem(v2, a1);
}

uint64_t key path setter for static DropdownViewModel.MenuItem.separatorMenuItem : DropdownViewModel.MenuItem.Type(uint64_t a1)
{
  v2 = DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor();
  swift_beginAccess();
  outlined assign with copy of DropdownViewModel.MenuItem(a1, v2);
  return swift_endAccess();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DropdownViewModel.MenuItem@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t key path getter for DropdownViewModel.menuItems : DropdownViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DropdownViewModel.menuItems : DropdownViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t DropdownViewModel.menuItems.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 240))();

  OUTLINED_FUNCTION_4_5();
}

uint64_t DropdownViewModel.menuItems.setter(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 248))();
}

uint64_t closure #1 in DropdownViewModel.menuItems.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
}

void (*DropdownViewModel.menuItems.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 240))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_92();
  v7 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v5, v6);
  OUTLINED_FUNCTION_19_17(v7);

  v3[7] = DropdownViewModel._menuItems.modify();
  return DropdownViewModel.menuItems.modify;
}

void DropdownViewModel.menuItems.modify(void *a1)
{
  DropdownViewModel.menuItems.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t key path getter for DropdownViewModel.isEnabled : DropdownViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t DropdownViewModel.isEnabled.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v1 + 240))();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 80);
}

uint64_t DropdownViewModel.isEnabled.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 80) == v2)
  {
    *(v1 + 80) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_0_1();
    (*(v5 + 248))();
  }

  return result;
}

uint64_t closure #1 in DropdownViewModel.isEnabled.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 80) = a2;
  return result;
}

void (*DropdownViewModel.isEnabled.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v4 + 240))();

  v3[5] = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_92();
  v7 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v5, v6);
  OUTLINED_FUNCTION_19_17(v7);

  v3[7] = DropdownViewModel._isEnabled.modify();
  return DropdownViewModel.isEnabled.modify;
}

uint64_t DropdownViewModel.__allocating_init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)()
{
  OUTLINED_FUNCTION_4_59();
  v0 = swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  return v0;
}

uint64_t DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)()
{
  OUTLINED_FUNCTION_4_59();
  ObservationRegistrar.init()();
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v9;
  return v1;
}

uint64_t DropdownViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_92();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t DropdownViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_7_51();
  OUTLINED_FUNCTION_0_92();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t DropdownViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit17DropdownViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t DropdownViewModel.__deallocating_deinit()
{
  DropdownViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for callUsingIPhoneDescriptiveMenuItem()
{
  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_allocate_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  v1 = __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  v2 = [objc_opt_self() conversationKit];
  v10._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC4FF4D0;
  v4._countAndFlagsBits = 0xD000000000000012;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v10);

  result = UUID.init()();
  *(v1 + v0[5]) = v6;
  v8 = (v1 + v0[6]);
  *v8 = TPNumberPadCharacter.rawValue.getter;
  v8[1] = 0;
  v9 = (v1 + v0[7]);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v1 + v0[8]) = 0;
  return result;
}

uint64_t DropdownViewModel.MenuItem.separatorMenuItem.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for DropdownViewModel.MenuItem(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static DropdownViewModel.MenuItem.separatorMenuItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v6 = __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_4_5();
  return outlined init with copy of DropdownViewModel.MenuItem(v6, a3);
}

uint64_t static DropdownViewModel.MenuItem.separatorMenuItem.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_46();
  outlined assign with copy of DropdownViewModel.MenuItem(v6, v7);
  swift_endAccess();
  return outlined destroy of DropdownViewModel.MenuItem(a1);
}

uint64_t (*static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem.modify())()
{
  if (one-time initialization token for callUsingIPhoneDescriptiveMenuItem != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_project_value_buffer(v0, static DropdownViewModel.MenuItem.callUsingIPhoneDescriptiveMenuItem);
  OUTLINED_FUNCTION_39();
  return CaptionsViewController.captionVisibilityDuringCapture.modify;
}

uint64_t DropdownMenuButton.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for DropdownMenuButton.viewModel : DropdownMenuButton@<X0>(uint64_t *a1@<X8>)
{
  result = DropdownMenuButton.viewModel.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for DropdownMenuButton.viewModel : DropdownMenuButton()
{

  return DropdownMenuButton.viewModel.setter();
}

void (*DropdownMenuButton.viewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  State.wrappedValue.getter();
  return FindoView.viewModel.modify;
}

uint64_t DropdownMenuButton.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA15ModifiedContentVyAIyAIyAIyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonK0Rd__lFQOyAA0L0VyAA5GroupVyAA012_ConditionalI0VyAIyAA5ImageVAA06_FrameG0VGAIyAIyAA4TextVAA08_PaddingG0VGAA05_FlexpG0VGGGG_014CommunicationsB003MaclK0VQo_AA022_EnvironmentBackgroundK8ModifierVyAA5ColorVGGAA01_v12KeyTransformX0VySbGGAA023AccessibilityAttachmentX0VGAA08_OverlayX0VyAIyAIyAkAEALyQrqd__AA09PrimitivelK0Rd__lFQOyAA4MenuVyAA05EmptyD0VAA7ForEachVySay15ConversationKit08DropdownD5ModelC8MenuItemVG10Foundation4UUIDVASyAA7DividerVAIyAIyAOyAZGA23_GA20_GGGG_AA010BorderlesslK0VQo_A23_GAA01_vz7WritingX0VyA15_SgGGSgGGGMd);
  return closure #1 in DropdownMenuButton.body.getter(a1, a2, a3 + *(v10 + 44), a4, a5);
}

uint64_t closure #1 in DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v47 = a3;
  v9 = type metadata accessor for MacButtonStyle();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd);
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMd);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v40 - v16;
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  State.wrappedValue.getter();
  v19 = v52[7];
  v18 = v52[8];

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();

  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v42 = v52[4];

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v48 = a1;
  v49 = a2;
  v50 = a4;
  v51 = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMd);
  lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>();
  Button.init(action:label:)();
  MacButtonStyle.init(insets:rim:fillWidth:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd);
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type MacButtonStyle and conformance MacButtonStyle, MEMORY[0x1E69959E0]);
  v21 = v44;
  View.buttonStyle<A>(_:)();

  (*(v45 + 8))(v12, v21);
  (*(v43 + 8))(v15, v13);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMd);
  *&v17[*(v22 + 36)] = v42;
  v41 = a1;
  v53 = a1;
  v54 = a2;
  v23 = State.wrappedValue.getter();
  LOBYTE(v15) = (*(*v52 + 208))(v23);

  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = (v15 & 1) == 0;
  v26 = &v17[*(v46 + 36)];
  *v26 = KeyPath;
  v26[1] = partial apply for closure #1 in View.disabled(_:);
  v26[2] = v25;
  v53 = a1;
  v54 = a2;
  State.wrappedValue.getter();
  v28 = v52[2];
  v27 = v52[3];

  v53 = v28;
  v54 = v27;
  lazy protocol witness table accessor for type String and conformance String();
  v29 = Text.init<A>(_:)();
  v31 = v30;
  LOBYTE(v12) = v32;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  v33 = v47;
  View.accessibilityLabel(_:)();
  outlined consume of Text.Storage(v29, v31, v12 & 1);

  sub_1BBCE6DAC(v17);
  v34 = static Alignment.trailing.getter();
  v36 = v35;
  v37 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGAA01_s12KeyTransformU0VySbGGAA023AccessibilityAttachmentU0VGAA08_OverlayU0VyACyACyAeAEAFyQrqd__AA09PrimitivehG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC8MenuItemVG10Foundation4UUIDVAMyAA7DividerVACyACyAIyATGA17_GA14_GGGG_AA010BorderlesshG0VQo_A17_GAA01_sw7WritingU0VyA9_SgGGSgGGMd) + 36);
  closure #1 in closure #1 in DropdownMenuButton.body.getter(v41, a2, v37, a4, a5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA4MenuVyAA05EmptyG0VAA7ForEachVySay15ConversationKit08DropdownG5ModelC0L4ItemVG10Foundation4UUIDVAA012_ConditionalF0VyAA7DividerVAEyAEyAA0K0VyAA4TextVGAA023AccessibilityAttachmentD0VGAA024_EnvironmentKeyTransformD0VySbGGGGG_AA010BorderlesskI0VQo_A7_GAA022_EnvironmentKeyWritingD0VyAA5ColorVSgGGSgGMd);
  v39 = (v37 + *(result + 36));
  *v39 = v34;
  v39[1] = v36;
  return result;
}

uint64_t closure #1 in closure #1 in DropdownMenuButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v44 = a3;
  v9 = type metadata accessor for BorderlessButtonStyle();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMd);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA4MenuVyAA05EmptyC0VAA7ForEachVySay15ConversationKit08DropdownC5ModelC0H4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedT0VyAZyAA0G0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessgE0VQo_Md);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA4MenuVyAA05EmptyE0VAA7ForEachVySay15ConversationKit08DropdownE5ModelC0J4ItemVG10Foundation4UUIDVAA012_ConditionalD0VyAA7DividerVACyACyAA0I0VyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformZ0VySbGGGGG_AA010BorderlessiG0VQo_A5_GAA022_EnvironmentKeyWritingZ0VyAA5ColorVSgGGMd);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v38 - v18;
  v45 = a1;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  v19 = State.wrappedValue.getter();
  v20 = (*(*v49 + 160))(v19);

  v21 = *(v20 + 16);

  if (v21)
  {
    v45 = a1;
    v46 = a2;
    v22 = State.wrappedValue.getter();
    v23 = (*(*v49 + 160))(v22);

    MEMORY[0x1EEE9AC00](v24);
    *(&v38 - 6) = v23;
    *(&v38 - 5) = a1;
    *(&v38 - 4) = a2;
    *(&v38 - 3) = a4;
    *(&v38 - 2) = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMd);
    lazy protocol witness table accessor for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>();
    Menu.init(content:label:)();

    BorderlessButtonStyle.init()();
    v25 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Menu<EmptyView, ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>>> and conformance Menu<A, B>, &_s7SwiftUI4MenuVyAA9EmptyViewVAA7ForEachVySay15ConversationKit08DropdownE5ModelC0C4ItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedP0VyAVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformW0VySbGGGGGMd);
    v26 = lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type BorderlessButtonStyle and conformance BorderlessButtonStyle, MEMORY[0x1E697C720]);
    View.buttonStyle<A>(_:)();
    (*(v40 + 8))(v11, v9);
    (*(v38 + 8))(v14, v12);
    LocalizedStringKey.init(stringLiteral:)();
    v45 = v12;
    v46 = v9;
    v47 = v25;
    v48 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = v39;
    v28 = v42;
    View.accessibilityLabel(_:)();

    (*(v41 + 8))(v17, v28);
    v29 = static Color.white.getter();
    KeyPath = swift_getKeyPath();
    v31 = v43;
    v32 = (v27 + *(v43 + 36));
    *v32 = KeyPath;
    v32[1] = v29;
    v33 = v44;
    sub_1BBCE6E14(v27, v44);
    v34 = 0;
    v35 = v33;
    v36 = v31;
  }

  else
  {
    v34 = 1;
    v36 = v43;
    v35 = v44;
  }

  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v36);
}

void *closure #1 in closure #2 in DropdownMenuButton.primaryButton(action:text:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v24[0] = a1;
  v24[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit17DropdownViewModelCGMd);
  State.wrappedValue.getter();
  v6 = *(v19[0] + 48);

  if (v6)
  {
    v7 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v19[0] = v7;
    v19[1] = *&__src[0];
    LOBYTE(v19[2]) = BYTE8(__src[0]);
    v19[3] = *&__src[1];
    LOBYTE(v19[4]) = BYTE8(__src[1]);
    *&v19[5] = __src[2];
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VG_GWOi_(v19);
  }

  else
  {
    v24[0] = a1;
    v24[1] = a2;
    State.wrappedValue.getter();
    v9 = *(v19[0] + 16);
    v8 = *(v19[0] + 24);

    v24[0] = v9;
    v24[1] = v8;
    lazy protocol witness table accessor for type String and conformance String();
    v10 = Text.init<A>(_:)();
    v12 = v11;
    LOBYTE(v9) = v13;
    v15 = v14;
    v16 = static Edge.Set.all.getter();
    v21 = v9 & 1;
    v20 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    memcpy(&v22[7], __src, 0x70uLL);
    v19[0] = v10;
    v19[1] = v12;
    LOBYTE(v19[2]) = v9 & 1;
    v19[3] = v15;
    LOBYTE(v19[4]) = v16;
    *&v19[5] = xmmword_1BC4C82D0;
    *&v19[7] = xmmword_1BC4C82D0;
    LOBYTE(v19[9]) = 0;
    memcpy(&v19[9] + 1, v22, 0x77uLL);
    _s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VG_GWOi0_(v19);
  }

  memcpy(__dst, v19, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return memcpy(a3, v24, 0xC1uLL);
}

uint64_t closure #1 in DropdownMenuButton.menu(items:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMd);
  type metadata accessor for UUID();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [DropdownViewModel.MenuItem] and conformance [A], &_sSay15ConversationKit17DropdownViewModelC8MenuItemVGMd);
  lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type DropdownViewModel.MenuItem and conformance DropdownViewModel.MenuItem, type metadata accessor for DropdownViewModel.MenuItem);
  return ForEach<>.init(_:content:)();
}

uint64_t closure #1 in closure #1 in DropdownMenuButton.menu(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v33 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd);
  MEMORY[0x1EEE9AC00](v38);
  v37 = v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA7DividerVAA08ModifiedD0VyAIyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformL0VySbGG_GMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  v10 = type metadata accessor for Divider();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DropdownViewModel.MenuItem(0);
  v15 = (a1 + *(v14 + 20));
  v17 = *v15;
  v16 = v15[1];
  v18 = *v15 == 0x6F74617261706573 && v16 == 0xE900000000000072;
  if (v18 || (v19 = v14, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    Divider.init()();
    (*(v11 + 16))(v9, v13, v10);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v21 = v19[7];
    v22 = (a1 + v19[6]);
    v24 = *v22;
    v23 = v22[1];
    v34 = *(a1 + v19[8]);
    v25 = a1 + v21;
    v26 = *(a1 + v21);
    v33[2] = *(v25 + 8);
    v33[3] = v26;
    v27 = swift_allocObject();
    v33[1] = v33;
    *(v27 + 16) = v24;
    *(v27 + 24) = v23;
    MEMORY[0x1EEE9AC00](v27);
    v33[-2] = v17;
    v33[-1] = v16;

    Button.init(action:label:)();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    v28 = v36;
    v29 = v37;
    View.accessibilityIdentifier(_:)();
    (*(v35 + 8))(v5, v28);
    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = (v34 & 1) == 0;
    v32 = (v29 + *(v38 + 36));
    *v32 = KeyPath;
    v32[1] = closure #1 in View.disabled(_:)partial apply;
    v32[2] = v31;
    outlined init with copy of Notice?(v29, v9, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd);
  }
}

uint64_t closure #2 in DropdownMenuButton.menuButton(action:title:enabled:accessibilityIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double DropdownMenuButton.init(viewModel:)()
{
  type metadata accessor for DropdownViewModel(0);
  State.init(wrappedValue:)();
  return 70.0;
}

double closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC07059Ll7PreviewfMf_15PreviewRegistryfMu_.makePreview()@<D0>(uint64_t *a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v10 = 1;
  closure #1 in closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC070597PreviewfMf_15PreviewRegistryfMu_.makePreview()(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  outlined init with copy of Notice?(__dst, &v7, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s7SwiftUI9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3FtGMd);
  memcpy(&v9[7], __dst, 0x80uLL);
  v3 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMd);
  a1[4] = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v4 = swift_allocObject();
  *a1 = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  *(v4 + 32) = v3;
  memcpy((v4 + 33), v9, 0x87uLL);
  v5 = __src[1];
  *(v4 + 168) = __src[0];
  *(v4 + 184) = v5;
  result = *&__src[2];
  *(v4 + 200) = __src[2];
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static $s15ConversationKit0029DropdownMenuButtonswift_tAFJhfMX141_0_33_145CC22525012368AB9D61C69EC07059Ll7PreviewfMf_15PreviewRegistryfMu_.makePreview()@<X0>(uint64_t a1@<X8>)
{
  static Color.green.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit17DropdownViewModelC8MenuItemVGMd);
  v1 = (type metadata accessor for DropdownViewModel.MenuItem(0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BAA20;
  v5 = v4 + v3;
  UUID.init()();
  v6 = (v5 + v1[7]);
  strcpy(v6, "FaceTime Audio");
  v6[15] = -18;
  v7 = (v5 + v1[8]);
  *v7 = TPNumberPadCharacter.rawValue.getter;
  v7[1] = 0;
  v8 = (v5 + v1[9]);
  strcpy(v8, "facetime-audio");
  v8[15] = -18;
  *(v5 + v1[10]) = 1;
  v9 = v5 + v2;
  UUID.init()();
  v10 = (v9 + v1[7]);
  *v10 = 0x32756E654DLL;
  v10[1] = 0xE500000000000000;
  v11 = (v9 + v1[8]);
  *v11 = TPNumberPadCharacter.rawValue.getter;
  v11[1] = 0;
  v12 = (v9 + v1[9]);
  *v12 = 0x32756E656DLL;
  v12[1] = 0xE500000000000000;
  *(v9 + v1[10]) = 1;
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  v13 = v27;
  v14 = v28;
  static Color.green.getter();
  swift_allocObject();
  DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
  State.init(wrappedValue:)();
  v15 = v27;
  v16 = v28;
  v25[0] = v27;
  v25[1] = v28;
  v26 = xmmword_1BC4C82E0;
  v23[0] = v27;
  v23[1] = v28;
  v24 = xmmword_1BC4C82E0;
  v27 = v25;
  v28 = v23;
  v21[0] = v13;
  v21[1] = v14;
  v22 = xmmword_1BC4C82E0;
  v19[0] = v15;
  v19[1] = v16;
  v20 = xmmword_1BC4C82E0;
  v29 = v21;
  v30 = v19;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ15ConversationKit18DropdownMenuButtonV_A3KQP_Tt1g5(&v27, a1);
}

uint64_t lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for DropdownViewModel()
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

unint64_t type metadata completion function for DropdownViewModel.MenuItem()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3JtGGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit18DropdownMenuButtonV_A3HtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DropdownMenuButton, DropdownMenuButton, DropdownMenuButton, DropdownMenuButton)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA12_FrameLayoutVGAGyAGyAA4TextVAA08_PaddingI0VGAA05_FlexhI0VGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA12_FrameLayoutVGAEyAEyAA4TextVAA08_PaddingH0VGAA05_FlexgH0VGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_PaddingLayoutVGAA010_FlexFrameG0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA12_FrameLayoutVGACyACyAA4TextVAA08_PaddingM0VGAA05_FlexlM0VGGGG_014CommunicationsB003MachG0VQo_AA022_EnvironmentBackgroundG8ModifierVyAA5ColorVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd);
    type metadata accessor for MacButtonStyle();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Group<_ConditionalContent<ModifiedContent<Image, _FrameLayout>, ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _FlexFrameLayout>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5GroupVyAA19_ConditionalContentVyAA08ModifiedF0VyAA5ImageVAA12_FrameLayoutVGAIyAIyAA4TextVAA08_PaddingJ0VGAA05_FlexiJ0VGGGGMd);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type MacButtonStyle and conformance MacButtonStyle, MEMORY[0x1E69959E0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentBackgroundStyleModifier<Color> and conformance _EnvironmentBackgroundStyleModifier<A>, &_s7SwiftUI35_EnvironmentBackgroundStyleModifierVyAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentBackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay15ConversationKit17DropdownViewModelC8MenuItemVG10Foundation4UUIDVAA19_ConditionalContentVyAA7DividerVAA08ModifiedO0VyARyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformV0VySbGGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[DropdownViewModel.MenuItem], UUID, _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA7DividerVAA08ModifiedD0VyAGyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformK0VySbGGGMd);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type Divider and conformance Divider, MEMORY[0x1E697D6D0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGAA024_EnvironmentKeyTransformI0VySbGGMR, lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Divider, ModifiedContent<ModifiedContent<Button<Text>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
    lazy protocol witness table accessor for type DropdownViewModel and conformance DropdownViewModel(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v7);
  specialized ContiguousArray._endMutation()();
}

Swift::Int MomentsIndicatorViewDisplayStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentsIndicatorViewDisplayStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MomentsIndicatorViewDisplayStyle.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int MomentsIndicatorType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MomentsIndicatorType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MomentsIndicatorType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for MomentsIndicatorView.displayStyle : MomentsIndicatorView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

void MomentsIndicatorView.displayStyle.didset(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  swift_beginAccess();
  if (*(v1 + v3) != (a1 & 1))
  {
    MomentsIndicatorView.refreshLayout()();
  }
}

uint64_t MomentsIndicatorView.displayStyle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v1);
}

void MomentsIndicatorView.displayStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1 & 1;
  MomentsIndicatorView.displayStyle.didset(v4);
}

void (*MomentsIndicatorView.displayStyle.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle;
  OUTLINED_FUNCTION_4_0();
  *(v3 + 32) = *(v1 + v4);
  return MomentsIndicatorView.displayStyle.modify;
}

void MomentsIndicatorView.displayStyle.modify(uint64_t a1)
{
  v1 = *a1;
  MomentsIndicatorView.displayStyle.setter(*(*a1 + 32));

  free(v1);
}

id MomentsIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MomentsIndicatorView.init(frame:)()
{
  v0[OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle] = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  type metadata accessor for MomentsIndicatorBubble();
  lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType();
  *&v0[v1] = Dictionary.init(dictionaryLiteral:)();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MomentsIndicatorView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 setUserInteractionEnabled_];
  return v2;
}

unint64_t lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType()
{
  result = lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorType and conformance MomentsIndicatorType);
  }

  return result;
}

id MomentsIndicatorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MomentsIndicatorView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_displayStyle) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  type metadata accessor for MomentsIndicatorBubble();
  lazy protocol witness table accessor for type MomentsIndicatorType and conformance MomentsIndicatorType();
  *(v0 + v1) = Dictionary.init(dictionaryLiteral:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MomentsIndicatorView.didTimeOut(for:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  swift_beginAccess();
  v4 = a1;

  v6 = specialized _NativeDictionary.filter(_:)(v5, v4);

  *(v1 + v3) = v6;

  [v4 removeFromSuperview];
  MomentsIndicatorView.refreshLayout()();
}

Swift::Void __swiftcall MomentsIndicatorView.presentCaptureIndicator(type:remoteParticipantName:)(ConversationKit::MomentsIndicatorType type, Swift::String remoteParticipantName)
{
  v3 = v2;
  object = remoteParticipantName._object;
  countAndFlagsBits = remoteParticipantName._countAndFlagsBits;
  v6 = type;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  OUTLINED_FUNCTION_4_0();
  v13 = specialized Dictionary.subscript.getter(v6, *&v3[v12]);
  if (!v13)
  {
    type metadata accessor for MomentsIndicatorViewModel();
    swift_allocObject();
    MomentsIndicatorViewModel.init(type:remoteParticipantName:)(v6, countAndFlagsBits, object);
    v15 = objc_allocWithZone(type metadata accessor for MomentsIndicatorBubble());

    v17 = MomentsIndicatorBubble.init(model:)(v16);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    v25[3] = type metadata accessor for MomentsIndicatorView();
    v25[4] = &protocol witness table for MomentsIndicatorView;
    v25[0] = v3;
    v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x98);
    object = v3;
    v18(v25);
    [v17 setAlpha_];

    swift_beginAccess();
    v7 = v17;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = *&v3[v12];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *&v3[v12] = v24;
    swift_endAccess();
    [object addSubview_];
    v25[0] = MomentsIndicatorView.makeCommonConstraints(for:)(v7);
    v19 = *&v3[v12];

    v20 = MomentsIndicatorView.makeBottomConstraint(for:in:)(v7, v19);

    if (!v20)
    {
LABEL_7:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [object addConstraints_];

      [object setNeedsLayout];
      [object layoutIfNeeded];
      [v7 start];

      goto LABEL_8;
    }

    MEMORY[0x1BFB20CC0](v21);
    if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_6:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }

LABEL_10:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_6;
  }

  v14 = v13;
  (*((*MEMORY[0x1E69E7D40] & *v13) + 0xE0))();

LABEL_8:
  MomentsIndicatorView.refreshLayout()();
}

void MomentsIndicatorView.refreshLayout()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  OUTLINED_FUNCTION_4_0();
  v2 = *&v0[v1];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    *(v12 + 24) = xmmword_1BC4C8740;
    *(v12 + 40) = v10;
    aBlock[4] = partial apply for closure #1 in closure #1 in MomentsIndicatorView.refreshLayout();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_30;
    v13 = _Block_copy(aBlock);
    v14 = v10;
    v15 = v0;

    [v11 animateKeyframesWithDuration:0 delay:v13 options:0 animations:0.25 completion:0.0];
    _Block_release(v13);
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

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout()(void *a1, void *a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v21 = partial apply for closure #1 in animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout();
  v22 = v9;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed () -> ();
  v20 = &block_descriptor_19_0;
  v10 = _Block_copy(&v17);
  v11 = a1;
  v12 = a2;

  [v8 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.0 animations:1.0];
  _Block_release(v10);
  [v11 alpha];
  if (v13 == 0.0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v21 = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v22 = v14;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed () -> ();
    v20 = &block_descriptor_25_0;
    v15 = _Block_copy(&v17);
    v16 = v11;

    [v8 addKeyframeWithRelativeStartTime:v15 relativeDuration:a3 animations:a4];
    _Block_release(v15);
  }
}

id closure #1 in animateBubble #1 (_:) in MomentsIndicatorView.refreshLayout()(void *a1, char *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  if (v5)
  {
    v6 = v5;
    [a2 removeConstraint_];
  }

  v7 = OBJC_IVAR____TtC15ConversationKit20MomentsIndicatorView_bubblesByType;
  swift_beginAccess();
  v8 = *&a2[v7];

  v9 = MomentsIndicatorView.makeBottomConstraint(for:in:)(a1, v8);

  if (v9)
  {
    v10 = *((*v4 & *a1) + 0xB0);
    v11 = v9;
    v10(v9);
    [a2 addConstraint_];
  }

  else
  {
    (*((*v4 & *a1) + 0xB0))(0);
  }

  [a2 setNeedsLayout];
  return [a2 layoutIfNeeded];
}

id MomentsIndicatorView.makeCommonConstraints(for:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BC370;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v4 = type metadata accessor for MomentsIndicatorBubble();
  v5 = type metadata accessor for MomentsIndicatorView();
  v6 = a1;
  v7 = v1;
  v8 = OUTLINED_FUNCTION_0_93();
  *(v3 + 32) = @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v9, 9, 0, v10, 9, v8, 0.0);
  v23 = v4;
  *(&v21 + 1) = v5;
  v22[0] = v6;
  *&v20 = v7;
  v11 = v6;
  v12 = v7;
  result = @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(v22, 7, -1, &v20, 7, 0.85, 0.0, 750.0);
  if (result)
  {
    *(v3 + 40) = result;
    v23 = v4;
    v22[0] = v11;
    v20 = 0u;
    v21 = 0u;
    v14 = v11;
    v15 = OUTLINED_FUNCTION_0_93();
    result = @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(v16, 7, -1, v17, 0, v15, v18, v19);
    if (result)
    {
      *(v3 + 48) = result;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  v15 = a4[3];
  if (v15)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v25 = a5;
    v26 = a2;
    v17 = a3;
    v18 = *(v15 - 8);
    v19 = MEMORY[0x1EEE9AC00](v16);
    v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v18 + 8))(v21, v15);
    a3 = v17;
    a5 = v25;
    a2 = v26;
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v22 = 0;
  }

  v23 = [swift_getObjCClassFromMetadata() constraintWithItem:v14 attribute:a2 relatedBy:a3 toItem:v22 attribute:a5 multiplier:a6 constant:a7];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v23;
}

id @nonobjc NSLayoutConstraint.init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:priority:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, float a8)
{
  v34 = a5;
  v14 = a1[3];
  if (v14)
  {
    v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = *(v14 - 8);
    v18 = MEMORY[0x1EEE9AC00](v16);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v20, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v21 = 0;
  }

  v22 = a4[3];
  if (v22)
  {
    v23 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1(a4);
  }

  else
  {
    v28 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v30 = a8;
  v31 = [ObjCClassFromMetadata constraintWithItem:v21 attribute:a2 relatedBy:a3 toItem:v28 attribute:v34 multiplier:a6 constant:a7 priority:v30];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v31;
}

id MomentsIndicatorView.makeBottomConstraint(for:in:)(void *a1, uint64_t a2)
{
  v4 = a1;
  v20[0] = specialized _copyCollectionToContiguousArray<A>(_:)(a2);
  specialized MutableCollection<>.sort(by:)(v20, v4);
  v5 = v20[0];
  specialized Collection<>.firstIndex(of:)(v4, v20[0]);
  if ((v7 & 1) == 0)
  {
    if (!v6)
    {

      v18 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(v17);
      return MomentsIndicatorView.makeBottomConstraint(for:style:)(v4, v18 & 1);
    }

    v13 = v6 - 1;
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v6 - 1, (v5 & 0xC000000000000001) == 0, v5);
      if ((v5 & 0xC000000000000001) == 0)
      {
        v14 = *(v5 + 8 * v13 + 32);
LABEL_11:
        v15 = v14;

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        v21 = type metadata accessor for MomentsIndicatorBubble();
        v19[3] = v21;
        v20[0] = v4;
        v19[0] = v15;
        v16 = v4;
        return @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v20, 4, 0, v19, 3, 1.0, -10.0);
      }
    }

    v14 = MEMORY[0x1BFB22010](v13, v5);
    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBC58000, v9, v10, "bubble is missing from bubblesByType", v11, 2u);
    MEMORY[0x1BFB23DF0](v11, -1, -1);
  }

  return 0;
}

id MomentsIndicatorView.makeBottomConstraint(for:style:)(void *a1, char a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v13[3] = type metadata accessor for MomentsIndicatorBubble();
  v13[0] = a1;
  v12[3] = type metadata accessor for MomentsIndicatorView();
  v12[0] = v2;
  v5 = a1;
  v6 = v2;
  if (a2)
  {
    v9 = OUTLINED_FUNCTION_0_93();
    v10 = 10;
  }

  else
  {
    v7 = v13;
    v8 = v12;
    v9 = 0.75;
    v10 = 4;
  }

  return @nonobjc NSLayoutConstraint.__allocating_init(item:attribute:relatedBy:toItem:attribute:multiplier:constant:)(v7, 10, 0, v8, v10, v9, 0.0);
}

id MomentsIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAH0kL6BubbleCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i5Kit20klm8O_AI0jK6N4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n04_s15ivkl28ViewC10didTimeOut3foryAA0cD6n12C_tFSbAA0cD4M22O3key_AG5valuet_tXEfU_ALTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 < v4)
  {
    v7 = v6;
    UninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5(v4 / 2);
    v10[0] = v9;
    v10[1] = (v4 / 2);
    v5 = v5;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, v5);
    if (v2)
    {
      if (v4 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v4 < -1)
    {
LABEL_13:
      __break(1u);
      return;
    }

    *((UninitializedySayxG_SpyxGtSiFZ15ConversationKit22MomentsIndicatorBubbleC_Tt0g5 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, v5);
  }

  else
  {
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *a5) + 0x78);
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v19 = v6;
      v20 = a3;
      v8 = *(v5 + 8 * a3);
      v18 = v7;
      do
      {
        v9 = *v6;
        v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x78);
        v11 = v8;
        v12 = v9;
        LODWORD(v10) = *(v10() + 16);

        v14 = *(v21(v13) + 16);

        if (v14 >= v10)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v20 + 1;
      v6 = v19 + 8;
      v7 = v18 - 1;
      if (v20 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v99 = a5;
    v7 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    v126 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v101 = v7 + 16;
      v100 = *(v7 + 2);
      for (i = v7; ; v7 = i)
      {
        if (v100 < 2)
        {

          return;
        }

        v102 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v103 = &v7[16 * v100];
        v104 = *v103;
        v7 = v101;
        v105 = &v101[16 * v100];
        v106 = *(v105 + 1);
        v107 = (v102 + 8 * *v103);
        v131 = (v102 + 8 * *v105);
        v130 = (v102 + 8 * v106);
        v108 = v126;
        specialized _merge<A>(low:mid:high:buffer:by:)(v107, v131, v130, v119, v108);
        if (v125)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_123;
        }

        if (v100 - 2 >= *v7)
        {
          goto LABEL_124;
        }

        v101 = v7;
        *v103 = v104;
        *(v103 + 1) = v106;
        v109 = *v7 - v100;
        if (*v7 < v100)
        {
          goto LABEL_125;
        }

        v125 = 0;
        v100 = *v7 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v105 + 16, v109, v105);
        *v7 = v100;
      }

LABEL_107:
      return;
    }

LABEL_132:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    goto LABEL_97;
  }

  v131 = a5;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = (v6 + 1);
    if ((v6 + 1) < v5)
    {
      v120 = v7;
      v126 = v6 + 1;
      v10 = *(*a3 + 8 * v9);
      v11 = (*a3 + 8 * v6);
      v127 = v5;
      v13 = *v11;
      v12 = v11 + 2;
      v7 = (8 * v6);
      v14 = MEMORY[0x1E69E7D40];
      v15 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x78);
      v16 = v10;
      v17 = v13;
      LODWORD(v119) = *(v15() + 16);

      v115 = *((*v14 & *v131) + 0x78);
      v117 = *(v115(v18) + 16);

      v111 = v8;
      v19 = (v8 + 2);
      while (1)
      {
        v20 = v19;
        if ((v126 + 1) >= v5)
        {
          break;
        }

        ++v126;
        v21 = *(v12 - 1);
        v22 = *((*MEMORY[0x1E69E7D40] & **v12) + 0x78);
        v23 = *v12;
        v24 = v21;
        LODWORD(v22) = *(v22() + 16);

        v26 = *(v115(v25) + 16);

        v5 = v127;

        ++v12;
        v19 = v20 + 1;
        if (v117 < v119 == v26 >= v22)
        {
          goto LABEL_9;
        }
      }

      v126 = v5;
LABEL_9:
      if (v117 >= v119)
      {
        v7 = v120;
        v9 = v126;
        v8 = v111;
      }

      else
      {
        v9 = v126;
        if (v126 < v111)
        {
          goto LABEL_129;
        }

        if (v111 >= v126)
        {
          v7 = v120;
          v8 = v111;
        }

        else
        {
          if (v5 >= v20)
          {
            v27 = v20;
          }

          else
          {
            v27 = v5;
          }

          v28 = 8 * v27 - 8;
          v29 = v111;
          v8 = v111;
          do
          {
            if (v29 != --v9)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v31 = *&v7[v30];
              *&v7[v30] = *(v30 + v28);
              *(v30 + v28) = v31;
            }

            ++v29;
            v28 -= 8;
            v7 += 8;
          }

          while (v29 < v9);
          v7 = v120;
          v9 = v126;
        }
      }
    }

    v32 = a3[1];
    if (v9 >= v32)
    {
      goto LABEL_41;
    }

    v33 = v9;
    v67 = __OFSUB__(v9, v8);
    v34 = (v9 - v8);
    if (v67)
    {
      goto LABEL_128;
    }

    if (v34 >= a4)
    {
LABEL_32:
      v9 = v33;
      goto LABEL_41;
    }

    if (__OFADD__(v8, a4))
    {
      goto LABEL_130;
    }

    if (&v8[a4] >= v32)
    {
      v35 = a3[1];
    }

    else
    {
      v35 = &v8[a4];
    }

    if (v35 < v8)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v33 == v35)
    {
      goto LABEL_32;
    }

    v121 = v7;
    v36 = v33;
    v128 = *((*MEMORY[0x1E69E7D40] & *v131) + 0x78);
    v37 = *a3;
    v38 = *a3 + 8 * v33 - 8;
    v112 = v8;
    v39 = &v8[-v33];
    v116 = v35;
LABEL_34:
    v126 = v36;
    v40 = *(v37 + 8 * v36);
    v118 = v39;
    v119 = v38;
LABEL_35:
    v41 = *v38;
    v42 = *((*MEMORY[0x1E69E7D40] & *v40) + 0x78);
    v43 = v40;
    v44 = v41;
    LODWORD(v42) = *(v42() + 16);

    v46 = *(v128(v45) + 16);

    if (v46 < v42)
    {
      break;
    }

LABEL_39:
    v36 = (v126 + 1);
    v38 = (v119 + 1);
    v39 = v118 - 1;
    if (v126 + 1 != v116)
    {
      goto LABEL_34;
    }

    v9 = v116;
    v7 = v121;
    v8 = v112;
LABEL_41:
    if (v9 < v8)
    {
      goto LABEL_127;
    }

    v126 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v97;
    }

    v49 = *(v7 + 2);
    v50 = v49 + 1;
    v51 = v126;
    if (v49 >= *(v7 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v51 = v126;
      v7 = v98;
    }

    *(v7 + 2) = v50;
    v52 = (v7 + 32);
    v53 = &v7[16 * v49 + 32];
    *v53 = v8;
    *(v53 + 1) = v51;
    v129 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v49)
    {
      v119 = (v7 + 32);
      v122 = v7;
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v52[2 * v50 - 2];
        v56 = &v7[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v7 + 4);
          v58 = *(v7 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_62:
          if (v60)
          {
            goto LABEL_114;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_117;
          }

          v76 = v55[1];
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
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_77:
        if (v75)
        {
          goto LABEL_119;
        }

        v81 = *v55;
        v80 = v55[1];
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

        v87 = &v52[2 * v54 - 2];
        v88 = *v87;
        v89 = v54;
        v90 = &v52[2 * v54];
        v91 = v90[1];
        v92 = (v86 + 8 * *v87);
        v93 = (v86 + 8 * *v90);
        v94 = (v86 + 8 * v91);
        v95 = v131;
        specialized _merge<A>(low:mid:high:buffer:by:)(v92, v93, v94, v129, v95);
        if (v125)
        {

          goto LABEL_107;
        }

        v7 = v122;
        if (v91 < v88)
        {
          goto LABEL_109;
        }

        v96 = *(v122 + 2);
        if (v89 > v96)
        {
          goto LABEL_110;
        }

        *v87 = v88;
        v87[1] = v91;
        if (v89 >= v96)
        {
          goto LABEL_111;
        }

        v125 = 0;
        v50 = v96 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v90 + 16, v96 - 1 - v89, v90);
        *(v122 + 2) = v96 - 1;
        v52 = v119;
        if (v96 <= 2)
        {
          goto LABEL_91;
        }
      }

      v61 = &v52[2 * v50];
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

      v68 = *(v56 + 1);
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
        v83 = v55[1];
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
    v5 = a3[1];
    v6 = v126;
    if (v126 >= v5)
    {
      goto LABEL_95;
    }
  }

  if (v37)
  {
    v47 = *v38;
    v40 = *(v38 + 8);
    *v38 = v40;
    *(v38 + 8) = v47;
    v38 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_35;
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(id *a1, id *a2, id *a3, void **a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2 - a1, a4);
    v11 = &v5[v9];
    v38 = v11;
    for (i = v6; ; v6 = i)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v42 = v8;
      v13 = v5;
      v14 = *v5;
      v15 = MEMORY[0x1E69E7D40];
      v16 = *((*MEMORY[0x1E69E7D40] & **v7) + 0x78);
      v17 = *v7;
      v18 = v14;
      LODWORD(v14) = *(v16() + 16);

      v20 = *((*((*v15 & *a5) + 0x78))(v19) + 16);

      if (v20 >= v14)
      {
        break;
      }

      v21 = v7;
      v22 = v42;
      v23 = v42 == v7++;
      v5 = v13;
      if (!v23)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 = v22 + 1;
      v11 = v38;
    }

    v21 = v13;
    v5 = v13 + 1;
    v22 = v42;
    if (v42 == v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v22 = *v21;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, a3 - a2, a4);
  v11 = &v5[v10];
  v43 = v8;
  v37 = v5;
LABEL_15:
  v24 = v7 - 1;
  --v6;
  while (v11 > v5 && v7 > v8)
  {
    v26 = *(v11 - 1);
    v27 = v24;
    v28 = *v24;
    v29 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x78);
    v30 = v26;
    v40 = v28;
    LODWORD(v29) = *(v29() + 16);

    v32 = *((*((*MEMORY[0x1E69E7D40] & *a5) + 0x78))(v31) + 16);

    v33 = v6 + 1;
    if (v32 < v29)
    {
      v23 = v33 == v7;
      v7 = v27;
      v5 = v37;
      v8 = v43;
      if (!v23)
      {
        *v6 = *v27;
        v7 = v27;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v6 = *(v11 - 1);
    }

    --v6;
    --v11;
    v5 = v37;
    v8 = v43;
    v24 = v27;
  }

LABEL_28:
  v34 = v11 - v5;
  if (v7 != v5 || v7 >= &v5[v34])
  {
    memmove(v7, v5, 8 * v34);
  }

  return 1;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2)
{
  v3 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = a2;
  v8 = v7;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15ConversationKit20MomentsIndicatorTypeOAH0kL6BubbleCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i5Kit20klm8O_AI0jK6N4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjLIsgnndzo_Tf1nc_n04_s15ivkl28ViewC10didTimeOut3foryAA0cD6n12C_tFSbAA0cD4M22O3key_AG5valuet_tXEfU_ALTf1nnc_n(v13, v6, v3, v14);
      MEMORY[0x1BFB23DF0](v13, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = (v15 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v9);
  v10 = v8;
  specialized closure #1 in _NativeDictionary.filter(_:)(v9, v6, v3, v10);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v11;
  }

LABEL_6:
  return v3;
}

unint64_t lazy protocol witness table accessor for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle()
{
  result = lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle;
  if (!lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsIndicatorViewDisplayStyle and conformance MomentsIndicatorViewDisplayStyle);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MomentsIndicatorViewDisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MomentsIndicatorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 56) + 8 * v15);
    type metadata accessor for MomentsIndicatorBubble();
    v17 = v16;
    v18 = static NSObject.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v22, a3);

        return;
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
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  v36 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15ConversationKit14AutoplayActionO_AC0E9CandidateVtGMd);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v34 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4[7];
    v22 = *(a4[6] + 8 * v20);
    v23 = v35;
    v24 = *(v36 + 72);
    outlined init with copy of (AutoplayAction, AutoplayCandidate)(v21 + v24 * v20, v35);
    outlined init with take of (AutoplayAction, AutoplayCandidate)(v23, v37);
    result = MEMORY[0x1BFB22620](*(v13 + 40), v22);
    v25 = -1 << *(v13 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v16 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v13 + 48) + 8 * v28) = v22;
    result = outlined init with take of (AutoplayAction, AutoplayCandidate)(v37, *(v13 + 56) + v28 * v24);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v34;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15ConversationKit20MomentsIndicatorTypeOAC0eF6BubbleCGMd);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    Hasher.init(_seed:)();
    MEMORY[0x1BFB22640](v17);
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    result = v18;
    v4 = v28;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (AutoplayAction, AutoplayCandidate)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit14AutoplayActionO_AA0C9CandidateVtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for InCallControlsActivityCell.delegate : InCallControlsActivityCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for InCallControlsActivityCell.delegate : InCallControlsActivityCell(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t InCallControlsActivityCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*InCallControlsActivityCell.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate;
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

id InCallControlsActivityCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *InCallControlsActivityCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v48 - v2;
  v4 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for InCallControlsActivityCell();
  v48[0] = v0;
  v48[1] = v5;
  v6 = OUTLINED_FUNCTION_18_1();
  v9 = objc_msgSendSuper2(v7, v8, v6);
  static UIBackgroundConfiguration.preferredInCallControlsBackground.getter();
  v10 = type metadata accessor for UIBackgroundConfiguration();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  MEMORY[0x1BFB216F0](v3);
  v11 = v9;
  [v11 setAutomaticallyUpdatesBackgroundConfiguration_];
  v12 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  v13 = *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 _setOverrideBackgroundColor_];

  [*&v11[v12] _setApplyCornerRadius_];
  v17 = *&v11[v12];
  [v11 _cornerRadius];
  v19 = v18;

  [v17 _setCornerRadius_];
  [*&v11[v12] _setDisableLinkFollowing_];
  [*&v11[v12] _setDisableTapGesture_];
  [*&v11[v12] _setPreferredSizeClass_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v20) = 1148846080;
  [*&v11[v12] setContentHuggingPriority:1 forAxis:v20];
  v21 = [v11 contentView];
  [v21 addSubview_];

  v22 = [*&v11[v12] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  v24 = *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint];
  *&v11[OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint] = v23;
  v25 = v23;

  v26 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BA920;
  *(v27 + 32) = v25;
  v28 = *&v11[v12];
  v29 = v25;
  v30 = [v28 leadingAnchor];
  v31 = OUTLINED_FUNCTION_3_76();
  v32 = [v31 leadingAnchor];

  v33 = OUTLINED_FUNCTION_2_77();
  *(v27 + 40) = v33;
  v34 = [*&v11[v12] topAnchor];
  v35 = OUTLINED_FUNCTION_3_76();
  v36 = [v35 topAnchor];

  v37 = OUTLINED_FUNCTION_2_77();
  *(v27 + 48) = v37;
  v38 = [*&v11[v12] trailingAnchor];
  v39 = OUTLINED_FUNCTION_3_76();
  v40 = [v39 trailingAnchor];

  v41 = OUTLINED_FUNCTION_2_77();
  *(v27 + 56) = v41;
  v42 = [*&v11[v12] bottomAnchor];
  v43 = OUTLINED_FUNCTION_3_76();

  v44 = [v43 bottomAnchor];
  v45 = OUTLINED_FUNCTION_2_77();

  *(v27 + 64) = v45;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints_];

  return v11;
}

id InCallControlsActivityCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void InCallControlsActivityCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InCallControlsActivityCell.configure(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InCallControlsActivityCellViewModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView;
  v9 = *(v1 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkView);
  if (InCallControlsActivityCellViewModel.cellStyle.getter())
  {
    v10 = 10;
  }

  else
  {
    v10 = 11;
  }

  [v9 _setPreferredSizeClass_];

  v11 = *(v1 + v8);
  v12 = InCallControlsActivityCellViewModel.activityMetadata.getter();
  [v11 setMetadata_];

  v13 = *(v2 + v8);
  if (InCallControlsActivityCellViewModel.contacts.getter())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  [v13 _setContactsForAttribution_];

  v15 = a1[5];
  v16 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
  (*(v16 + 16))(aBlock, v15, v16);
  if (LOBYTE(aBlock[0]) == 2)
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696ECB0]) init];
    [v17 setPreserveIconAspectRatioAndAlignmentWhenScaling_];
    [*(v2 + v8) _setSizeClassParameters_];
  }

  v18 = InCallControlsActivityCellViewModel.shouldShowActionButton.getter();
  v19 = *(v2 + v8);
  if (v18)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    outlined init with copy of InCallControlsActivityCellViewModel(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    outlined init with take of InCallControlsActivityCellViewModel(v7, v22 + v21);
    aBlock[4] = partial apply for closure #1 in InCallControlsActivityCell.configure(with:);
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_31;
    v23 = _Block_copy(aBlock);
    v24 = v19;

    v25 = [objc_opt_self() conversationKit];
    v39._object = 0xE000000000000000;
    v26.value._countAndFlagsBits = 0x61737265766E6F43;
    v26.value._object = 0xEF74694B6E6F6974;
    v27._countAndFlagsBits = 1852141647;
    v27._object = 0xE400000000000000;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v39);

    v30 = MEMORY[0x1BFB209B0](v29._countAndFlagsBits, v29._object);

    [v24 _setAction_withText_buttonType_];

    _Block_release(v23);
  }

  else
  {
    v31 = v19;
    v24 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
    [v31 _setAction_withText_];
  }

  [*(v2 + v8) sizeThatFits_];
  v33 = *(v2 + OBJC_IVAR____TtC15ConversationKit26InCallControlsActivityCell_linkViewHeightConstraint);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = InCallControlsActivityCellViewModel.activityCellHeight.getter();
    if (v34 > v36)
    {
      v36 = v34;
    }

    [v35 setConstant_];
  }

  return [*(v2 + v8) setNeedsUpdateConstraints];
}

void closure #1 in InCallControlsActivityCell.configure(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x98))())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2 + 16, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id InCallControlsActivityCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InCallControlsActivityCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of InCallControlsActivityCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsActivityCellViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of InCallControlsActivityCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InCallControlsActivityCellViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in InCallControlsActivityCell.configure(with:)()
{
  v1 = *(type metadata accessor for InCallControlsActivityCellViewModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in InCallControlsActivityCell.configure(with:)(v2, v3);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S8VAIXEfU_Tf1cn_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = specialized Dictionary.Keys.startIndex.getter();
    v5 = v4;
    v6 = v21;
    v7 = 0;
    v8 = a1 + 64;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_24;
        }

        v10 = *(*(a1 + 56) + 16 * v3);
        v11 = *(v22 + 16);
        if (v11 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v20;
          v8 = a1 + 64;
          v6 = v21;
        }

        *(v22 + 16) = v11 + 1;
        *(v22 + 8 * v11 + 32) = v10;
        v12 = 1 << *(a1 + 32);
        if (v3 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v8 + 8 * v9);
        if ((v13 & (1 << v3)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v3 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v9 << 6;
          v16 = v9 + 1;
          v17 = (a1 + 72 + 8 * v9);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
              v8 = a1 + 64;
              v6 = v21;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
          v8 = a1 + 64;
          v6 = v21;
        }

LABEL_18:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S9VAIXEfU0_Tf1cn_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v21 = *(a1 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = specialized Dictionary.Keys.startIndex.getter();
    v5 = v4;
    v6 = v21;
    v7 = 0;
    v8 = a1 + 64;
    if ((v3 & 0x8000000000000000) == 0)
    {
      while (v3 < 1 << *(a1 + 32))
      {
        v9 = v3 >> 6;
        if ((*(v8 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_24;
        }

        v10 = *(*(a1 + 56) + 16 * v3 + 8);
        v11 = *(v22 + 16);
        if (v11 >= *(v22 + 24) >> 1)
        {
          v20 = v2;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v2 = v20;
          v8 = a1 + 64;
          v6 = v21;
        }

        *(v22 + 16) = v11 + 1;
        *(v22 + 8 * v11 + 32) = v10;
        v12 = 1 << *(a1 + 32);
        if (v3 >= v12)
        {
          goto LABEL_25;
        }

        v13 = *(v8 + 8 * v9);
        if ((v13 & (1 << v3)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v5)
        {
          goto LABEL_27;
        }

        v14 = v13 & (-2 << (v3 & 0x3F));
        if (v14)
        {
          v12 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = v9 << 6;
          v16 = v9 + 1;
          v17 = (a1 + 72 + 8 * v9);
          while (v16 < (v12 + 63) >> 6)
          {
            v19 = *v17++;
            v18 = v19;
            v15 += 64;
            ++v16;
            if (v19)
            {
              outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
              v8 = a1 + 64;
              v6 = v21;
              v12 = __clz(__rbit64(v18)) + v15;
              goto LABEL_18;
            }
          }

          outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v3, v5, v2 & 1);
          v8 = a1 + 64;
          v6 = v21;
        }

LABEL_18:
        if (++v7 == v6)
        {
          return;
        }

        v2 = 0;
        v5 = *(a1 + 36);
        v3 = v12;
        if (v12 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(unsigned int a1, uint64_t a2)
{
  v49 = a1;
  v42 = type metadata accessor for LayoutSubview();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = type metadata accessor for LayoutSubviews();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v43 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v44 = &v41 - v22;
  (*(v11 + 16))(v13, a2, v10, v21);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v23 = *(v15 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  v24 = (v3 + 16);
  v47 = (v3 + 8);
  v48 = (v3 + 32);
  for (i = v42; ; (*v47)(v7, i))
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v17[v23] == v51[0])
    {
      outlined destroy of TapInteractionHandler?(v17, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v29 = 1;
      v30 = v44;
      goto LABEL_7;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v46;
    (*v24)(v46);
    v26(v51, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v28 = *v48;
    (*v48)(v7, v27, i);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (LOBYTE(v51[0]) == v49)
    {
      break;
    }
  }

  outlined destroy of TapInteractionHandler?(v17, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v30 = v44;
  v28(v44, v7, i);
  v29 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v30, v29, 1, i);
  v31 = v43;
  outlined init with copy of LayoutSubview?(v30, v43);
  if (__swift_getEnumTagSinglePayload(v31, 1, i) == 1)
  {
    outlined destroy of TapInteractionHandler?(v30, &_s7SwiftUI13LayoutSubviewVSgMd);
    return specialized Dictionary._Variant.removeValue(forKey:)(v49);
  }

  else
  {
    v33 = v41;
    (*v48)(v41, v31, i);
    static ProposedViewSize.unspecified.getter();
    LOBYTE(v51[0]) = v34 & 1;
    v50 = v35 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v37 = v36;
    v39 = v38;
    (*v47)(v33, i);
    outlined destroy of TapInteractionHandler?(v30, &_s7SwiftUI13LayoutSubviewVSgMd);
    v40 = v45;
    swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *v40;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v37, v39);
    *v40 = v51[0];
  }

  return result;
}

ConversationKit::ScreenSharingToolbarLayout::Cache __swiftcall ScreenSharingToolbarLayout.Cache.init()()
{
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t ScreenSharingToolbarLayout.makeCache(subviews:)(uint64_t a1)
{
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();
  v3 = Dictionary.init(dictionaryLiteral:)();
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(0, a1);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(1u, a1);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(2u, a1);
  return v3;
}

uint64_t ScreenSharingToolbarLayout.updateCache(_:subviews:)(uint64_t a1, uint64_t a2)
{
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(0, a2);
  ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(1u, a2);
  return ScreenSharingToolbarLayout.Cache.updateIdealSize(for:in:)(2u, a2);
}

double ScreenSharingToolbarLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v8 = *a6;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S8VAIXEfU_Tf1cn_n(v9);
  v11 = specialized Sequence<>.max()(v10);
  v13 = v12;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeV_G_12CoreGraphics7CGFloatVs5NeverOTg504_s15e25Kit26ScreenSharingToolbarg42V12sizeThatFits8proposal8subviews5cacheSo6p57V7SwiftUI16ProposedViewSizeV_AJ0F8SubviewsVAC5CacheVztF12q9Graphics7S9VAIXEfU0_Tf1cn_n(v8);
  specialized Sequence<>.max()(v14);

  v15 = Axis.rawValue.getter();
  v16 = Axis.rawValue.getter();
  v17 = *&a1;
  if (a2)
  {
    v17 = 10.0;
  }

  v18 = *&v11;
  if (v13)
  {
    v18 = 0.0;
  }

  if (v15 == v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  Axis.rawValue.getter();
  Axis.rawValue.getter();

  return v19;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t ScreenSharingToolbarLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, int a12)
{
  v136 = a12;
  v133 = a5;
  v134 = a11;
  v146 = a4;
  v132 = a3;
  v137 = a2;
  v14 = type metadata accessor for LayoutSubview();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4();
  v153 = v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v152 = v20;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v151 = v22;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v150 = v24;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v147 = v26;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v131 - v28;
  *&v29 = COERCE_DOUBLE(type metadata accessor for LayoutSubviews());
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4();
  v154 = v36;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v131 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v131 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v43 - 8);
  OUTLINED_FUNCTION_4();
  v135 = v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5();
  v145 = v46;
  OUTLINED_FUNCTION_33_1();
  v48 = MEMORY[0x1EEE9AC00](v47);
  v144 = &v131 - v49;
  v50 = *(v31 + 16);
  v143 = a10;
  v51 = a10;
  v52 = v42;
  v142 = v31 + 16;
  v139 = v50;
  v50(v34, v51, v29, v48);
  v53 = lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  v141 = v34;
  v157 = *&v29;
  v138 = v53;
  dispatch thunk of Sequence.makeIterator()();
  v140 = v35;
  v54 = *(v35 + 36);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  v55 = (v16 + 32);
  *&v155 = v16 + 8;
  v156 = (v16 + 16);
  v148 = v39;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v52 + v54) == *v158)
    {
      outlined destroy of TapInteractionHandler?(v52, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v64 = 1;
      v52 = v144;
      goto LABEL_7;
    }

    v56 = dispatch thunk of Collection.subscript.read();
    v57 = v55;
    v58 = v149;
    (*v156)(v149);
    v56(v158, 0);
    v59 = v54;
    dispatch thunk of Collection.formIndex(after:)();
    v60 = *v57;
    v61 = v58;
    v55 = v57;
    (*v57)(v147, v61, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (v158[0] == 1)
    {
      break;
    }

    v62 = OUTLINED_FUNCTION_3_77();
    v63(v62);
    v39 = v148;
    v54 = v59;
  }

  outlined destroy of TapInteractionHandler?(v52, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v65 = OUTLINED_FUNCTION_7_52(&v159);
  v60(v65);
  v64 = 0;
  v39 = v148;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v52, v64, 1, v14);
  v66 = OUTLINED_FUNCTION_1_79();
  v67(v66);
  dispatch thunk of Sequence.makeIterator()();
  v68 = *(v140 + 36);
  v69 = v150;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v39[v68] == *v158)
    {
      outlined destroy of TapInteractionHandler?(v39, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v74 = 1;
      v68 = v145;
      goto LABEL_13;
    }

    v70 = dispatch thunk of Collection.subscript.read();
    (*v156)(v69);
    v70(v158, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v71 = *v55;
    (*v55)(v151, v69, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (v158[0] == 2)
    {
      break;
    }

    v72 = OUTLINED_FUNCTION_3_77();
    v73(v72);
  }

  outlined destroy of TapInteractionHandler?(v39, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v75 = OUTLINED_FUNCTION_7_52(&v160);
  v71(v75);
  v74 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v68, v74, 1, v14);
  v76 = OUTLINED_FUNCTION_1_79();
  v77(v76);
  v78 = v154;
  dispatch thunk of Sequence.makeIterator()();
  v79 = *(v140 + 36);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v78 + v79) == *v158)
    {
      outlined destroy of TapInteractionHandler?(v78, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
      v86 = 1;
      v87 = v135;
      goto LABEL_19;
    }

    v80 = dispatch thunk of Collection.subscript.read();
    v81 = v152;
    (*v156)(v152);
    v80(v158, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v82 = *v55;
    v83 = v153;
    (*v55)(v153, v81, v14);
    lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
    LayoutSubview.subscript.getter();
    if (!v158[0])
    {
      break;
    }

    v84 = OUTLINED_FUNCTION_3_77();
    v85(v84);
    v78 = v154;
  }

  outlined destroy of TapInteractionHandler?(v154, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v87 = v135;
  v82(v135, v83, v14);
  v86 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v87, v86, 1, v14);
  v88 = *v134;
  if (!*(*v134 + 16))
  {
    v155 = 0.0;
    v156 = 0;
    v101 = 0.0;
    v157 = 0.0;
    v96 = 0.0;
LABEL_29:
    v106 = 0.0;
    goto LABEL_31;
  }

  v89 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v90 = 0.0;
  v91 = 0;
  if (v92)
  {
    v93 = (*(v88 + 56) + 16 * v89);
    v90 = *v93;
    v91 = *(v93 + 1);
  }

  v94 = *(v88 + 16);
  v156 = v91;
  v157 = v90;
  if (v94)
  {
    v95 = specialized __RawDictionaryStorage.find<A>(_:)(1);
    v96 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
    if (v99)
    {
      v100 = (*(v88 + 56) + 16 * v95);
      v97 = *v100;
      v98 = v100[1];
    }

    v101 = v97;
    v102 = *(v88 + 16);
    v155 = v98;
    if (v102)
    {
      v103 = specialized __RawDictionaryStorage.find<A>(_:)(2);
      if (v104)
      {
        v105 = *(v88 + 56) + 16 * v103;
        v96 = *v105;
        v106 = *(v105 + 8);
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v101 = 0.0;
  v96 = 0.0;
  v106 = 0.0;
  v155 = 0.0;
LABEL_31:
  v107 = v136;
  v108 = Axis.rawValue.getter();
  v109 = Axis.rawValue.getter();
  v111 = v106 != 0.0 || v108 != v109;
  v112 = Axis.rawValue.getter();
  v113 = Axis.rawValue.getter();
  v114 = v133;
  v115 = a1;
  v116 = a1;
  v117 = v137;
  v118 = v132;
  v119 = v155;
  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v87, 0, v107, v116, v137, v132, v146, v157, *&v156, v101, v155, v96, v106, v133);
  v120 = v117;
  v121 = v146;
  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v144, v111, v107, v115, v120, v118, v146, v101, v119, v101, v119, v96, v106, v114);
  if (v119 == 0.0 && v112 == v113)
  {
    v123 = 0;
  }

  else
  {
    v123 = 2;
  }

  ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(v145, v123, v107, v115, v137, v118, v121, v96, v106, v101, v119, v96, v106, v114);
  OUTLINED_FUNCTION_31_2();
  outlined destroy of TapInteractionHandler?(v124, v125);
  OUTLINED_FUNCTION_31_2();
  outlined destroy of TapInteractionHandler?(v126, v127);
  OUTLINED_FUNCTION_31_2();
  return outlined destroy of TapInteractionHandler?(v128, v129);
}

uint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey()
{
  result = lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey;
  if (!lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPositionKey and conformance LayoutPositionKey);
  }

  return result;
}

uint64_t ScreenSharingToolbarLayout.placeSubview(_:at:in:idealSize:leadingActionsSize:trailingActionsSize:)(uint64_t a1, char a2, unsigned __int8 a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v77 = a8;
  v78 = a9;
  v79 = a5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = v75 - v28;
  if (a10 <= a12)
  {
    a10 = a12;
  }

  if (a11 > a13)
  {
    v30 = a11;
  }

  else
  {
    v30 = a13;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v31 = a4;
      if (a3 < 2u)
      {
        v32 = v79;
        v33 = v79;
        v34 = a6;
        v35 = a7;
        CGRectGetMinX(*&v31);
        v82.origin.x = a4;
        v82.origin.y = v32;
        v82.size.width = a6;
        v82.size.height = a7;
        CGRectGetMinY(v82);
        static UnitPoint.topLeading.getter();
LABEL_41:
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        Axis.rawValue.getter();
        goto LABEL_44;
      }

      if (a3 == 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = a4;
      if (a3 - 2 < 2)
      {
        v57 = v79;
        v58 = v79;
        v59 = a6;
        v60 = a7;
        CGRectGetMaxX(*&v31);
        v85.origin.x = a4;
        v85.origin.y = v57;
        v85.size.width = a6;
        v85.size.height = a7;
        CGRectGetMaxY(v85);
        static UnitPoint.bottomTrailing.getter();
        goto LABEL_41;
      }

      if (a3)
      {
LABEL_40:
        v67 = v79;
        v68 = v79;
        v69 = a6;
        v70 = a7;
        CGRectGetMinX(*&v31);
        v89.origin.x = a4;
        v89.origin.y = v67;
        v89.size.width = a6;
        v89.size.height = a7;
        CGRectGetMaxY(v89);
        static UnitPoint.bottomLeading.getter();
        goto LABEL_41;
      }
    }

    v63 = v79;
    v64 = v79;
    v65 = a6;
    v66 = a7;
    CGRectGetMaxX(*&v31);
    v88.origin.x = a4;
    v88.origin.y = v63;
    v88.size.width = a6;
    v88.size.height = a7;
    CGRectGetMinY(v88);
    static UnitPoint.topTrailing.getter();
    goto LABEL_41;
  }

  v76 = a14;
  v83.origin.x = a4;
  v36 = a10;
  v37 = v79;
  v83.origin.y = v79;
  v83.size.width = a6;
  v83.size.height = a7;
  v75[5] = CGRectGetMidX(v83);
  *v75 = a4;
  v84.origin.x = a4;
  v84.origin.y = v37;
  v84.size.width = a6;
  v84.size.height = a7;
  v75[4] = CGRectGetMidY(v84);
  static UnitPoint.center.getter();
  v75[2] = v39;
  v75[3] = v38;
  v40 = Axis.rawValue.getter();
  v41 = Axis.rawValue.getter();
  *&v75[1] = v36;
  v42 = v76;
  if (v40 == v41)
  {
    v43 = a6 - (v36 + v76 + v36 + v76);
  }

  else
  {
    v43 = a6;
  }

  v44 = Axis.rawValue.getter();
  if (v44 == Axis.rawValue.getter())
  {
    v45 = a7 - (v30 + v42 + v30 + v42);
  }

  else
  {
    v45 = a7;
  }

  v46 = Axis.rawValue.getter();
  v47 = Axis.rawValue.getter();
  v48 = v77;
  if (v43 < v77 && v46 == v47)
  {
    v50 = v43;
  }

  else
  {
    v50 = v77;
  }

  v76 = v50;
  v51 = Axis.rawValue.getter();
  v52 = Axis.rawValue.getter();
  v53 = v78;
  if (v45 < v78 && v51 == v52)
  {
    v53 = v45;
  }

  v78 = v53;
  v55 = Axis.rawValue.getter();
  if (v55 == Axis.rawValue.getter() && v43 < v48)
  {
    if (a11 == 0.0)
    {
      v61 = *v75;
      *&v86.origin.x = v75[0];
      v62 = v79;
      v86.origin.y = v79;
      v86.size.width = a6;
      v86.size.height = a7;
      CGRectGetMinX(v86);
      v87.origin.x = v61;
      v87.origin.y = v62;
      v87.size.width = a6;
      v87.size.height = a7;
      CGRectGetMidY(v87);
      static UnitPoint.leading.getter();
    }

    else
    {
      v71 = *v75;
      if (a13 == 0.0)
      {
        *&v90.origin.x = v75[0];
        v72 = v79;
        v90.origin.y = v79;
        v90.size.width = a6;
        v90.size.height = a7;
        CGRectGetMaxX(v90);
        v91.origin.x = v71;
        v91.origin.y = v72;
        v91.size.width = a6;
        v91.size.height = a7;
        CGRectGetMidY(v91);
        static UnitPoint.trailing.getter();
      }
    }
  }

LABEL_44:
  outlined init with copy of LayoutSubview?(a1, v29);
  v73 = type metadata accessor for LayoutSubview();
  if (__swift_getEnumTagSinglePayload(v29, 1, v73) == 1)
  {
    return outlined destroy of TapInteractionHandler?(v29, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  v81 = 0;
  v80 = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(*(v73 - 8) + 8))(v29, v73);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance ScreenSharingToolbarLayout@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ScreenSharingToolbarLayout.makeCache(subviews:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ScreenSharingToolbarLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance ScreenSharingToolbarLayout(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = Animatable<>.animatableData.modify();
  return protocol witness for Control.cnkContentAlpha.modify in conformance BaseButton;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LayoutPosition()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  LayoutRole.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v28 = a10;
  v29 = a7;
  v19[2] = a8;
  v19[3] = a11;
  v19[4] = a12;
  v20 = a13;
  v21 = a14;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v15 = type metadata accessor for TupleView();
  v16 = lazy protocol witness table accessor for type ScreenSharingToolbarLayout and conformance ScreenSharingToolbarLayout();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(partial apply for closure #1 in ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:), v19, &type metadata for ScreenSharingToolbarLayout, v15, v16, WitnessTable, a9);
}

uint64_t closure #1 in ScreenSharingToolbarLayout.callAsFunction<A, B, C>(_:leadingActions:trailingActions:)@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t (*a3)(char *, uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v81 = a5;
  v82 = a4;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v84 = a8;
  v75 = a9;
  v83 = *(a9 - 8);
  v80 = a12;
  v72 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v77 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd);
  v78 = type metadata accessor for ModifiedContent();
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v91 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = &v64 - v17;
  v68 = a7;
  v71 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v22 = *(v21 - 8);
  v88 = v21;
  v89 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v64 - v25;
  v26 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ModifiedContent();
  v66 = *(v30 - 8);
  v31 = v66;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v86 = &v64 - v36;
  v70(v35);
  LOBYTE(v96[0]) = 0;
  v64 = lazy protocol witness table accessor for type LayoutPositionKey and conformance LayoutPositionKey();
  View.layoutValue<A>(key:value:)();
  (*(v26 + 8))(v29, a6);
  v37 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<LayoutPositionKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy15ConversationKit0F11PositionKey33_CB5716349B733E4BD07C5ACF0D02830DLLVGGMd);
  v96[7] = a10;
  v96[8] = v37;
  v65 = v30;
  WitnessTable = swift_getWitnessTable();
  v85 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v33, v30, WitnessTable);
  v38 = *(v31 + 8);
  v69 = v31 + 8;
  v70 = v38;
  v39 = (v38)(v33, v30);
  v74(v39);
  LOBYTE(v96[0]) = 1;
  v40 = v87;
  v41 = v68;
  v42 = v72;
  View.layoutValue<A>(key:value:)();
  (*(v71 + 8))(v20, v41);
  v96[5] = v42;
  v96[6] = v37;
  v43 = v88;
  v72 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v40, v43, v72);
  v73 = *(v89 + 8);
  v74 = (v89 + 8);
  v44 = v73(v40, v43);
  v45 = v77;
  v82(v44);
  LOBYTE(v96[0]) = 2;
  v46 = v91;
  v47 = v75;
  v48 = v80;
  View.layoutValue<A>(key:value:)();
  (*(v83 + 8))(v45, v47);
  v96[3] = v48;
  v96[4] = v37;
  v49 = v78;
  v50 = swift_getWitnessTable();
  v51 = v76;
  v52 = v46;
  static ViewBuilder.buildExpression<A>(_:)(v46, v49, v50);
  v53 = v79;
  v83 = *(v79 + 8);
  (v83)(v52, v49);
  v54 = v85;
  v55 = v65;
  (*(v66 + 16))(v85, v86, v65);
  v96[0] = v54;
  v56 = v90;
  v57 = v88;
  (*(v89 + 16))(v40, v90, v88);
  v96[1] = v40;
  (*(v53 + 16))(v52, v51, v49);
  v96[2] = v52;
  v95[0] = v55;
  v95[1] = v57;
  v58 = v57;
  v95[2] = v49;
  v92 = WitnessTable;
  v93 = v72;
  v94 = v50;
  static ViewBuilder.buildBlock<each A>(_:)(v96, 3, v95);
  v59 = v83;
  (v83)(v51, v49);
  v60 = v57;
  v61 = v73;
  v73(v56, v60);
  v62 = v70;
  (v70)(v86, v55);
  v59(v91, v49);
  v61(v87, v58);
  return (v62)(v85, v55);
}