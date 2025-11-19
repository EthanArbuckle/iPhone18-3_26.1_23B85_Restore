void PeoplePickerActionBar.inviteWithMessagesButton.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = a1;
}

id closure #1 in PeoplePickerActionBar.messageAndFaceTimeStackView.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  OUTLINED_FUNCTION_19_54([v0 setTranslatesAutoresizingMaskIntoConstraints_], sel_setDistribution_);
  [v0 setAxis_];
  [v0 setSpacing_];
  return v0;
}

id PeoplePickerActionBar.cancelButton.getter(void *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v5 = OUTLINED_FUNCTION_36_39(v6);

    v4 = 0;
  }

  v7 = v4;
  return v5;
}

void *closure #1 in PeoplePickerActionBar.audioVideoDropdownButton.getter(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2B8))();
  type metadata accessor for DropdownViewModel(0);
  State.init(wrappedValue:)();
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit21SelfSizingHostingViewCyAA18DropdownMenuButtonVGMd));
  v2 = _UIHostingView.init(rootView:)();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  return v2;
}

uint64_t key path setter for PeoplePickerActionBar.faceTimeAudioDropdownMenuItem : PeoplePickerActionBar(uint64_t a1)
{
  v2 = type metadata accessor for DropdownViewModel.MenuItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DropdownViewModel.MenuItem(a1, v4);
  return PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.setter(v4);
}

uint64_t PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_32_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v10, v9, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd);
  v11 = type metadata accessor for DropdownViewModel.MenuItem(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    return outlined init with take of DropdownViewModel.MenuItem(v9, a1);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd);
  closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter(v1, a1);
  v12 = OUTLINED_FUNCTION_45_1();
  outlined init with copy of DropdownViewModel.MenuItem(v12, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of Participant?(v6, v1 + v10, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd);
  return swift_endAccess();
}

int *closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x454D495445434146;
  v5._object = 0xEE004F494455415FLL;
  v6.value._countAndFlagsBits = 0x61737265766E6F43;
  v6.value._object = 0xEF74694B6E6F6974;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v14);

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a1;
  UUID.init()();
  result = type metadata accessor for DropdownViewModel.MenuItem(0);
  *(a2 + result[5]) = v8;
  v12 = (a2 + result[6]);
  *v12 = partial apply for closure #1 in closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter;
  v12[1] = v9;
  v13 = (a2 + result[7]);
  strcpy(v13, "facetime-audio");
  v13[15] = -18;
  *(a2 + result[8]) = 1;
  return result;
}

uint64_t closure #1 in closure #1 in PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.getter(void *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x110))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, 0, 128, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.faceTimeAudioDropdownMenuItem.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  outlined init with take of DropdownViewModel.MenuItem(a1, &v9 - v4);
  v6 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of Participant?(v5, v1 + v7, &_s15ConversationKit17DropdownViewModelC8MenuItemVSgMd);
  return swift_endAccess();
}

void *PeoplePickerActionBar.init(frame:buttonsStyle:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled) = 1;
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  *(v3 + 4) = 0;
  *v3 = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton) = 0;
  v4 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButtonConfiguration;
  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAddPersonButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___sharePlayAddPersonButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioCallDisambiguationMenu) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDownViewModel) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDown) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownButton) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAudioDropdownMenuItem;
  v7 = type metadata accessor for DropdownViewModel.MenuItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle) = a1;
  v19 = v1;
  v20 = type metadata accessor for PeoplePickerActionBar();
  v8 = OUTLINED_FUNCTION_18_1();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  [v11 setPreservesSuperviewLayoutMargins_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BC4C48E0;
  *(v12 + 32) = PeoplePickerActionBar.videoButton.getter();
  *(v12 + 40) = PeoplePickerActionBar.audioButton.getter();
  *(v12 + 48) = PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  *(v12 + 56) = PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  v13 = MEMORY[0x1E69E7D40];
  *(v12 + 64) = (*((*MEMORY[0x1E69E7D40] & *v11) + 0x300))();
  *(v12 + 72) = PeoplePickerActionBar.messagesButton.getter();
  *(v12 + 80) = PeoplePickerActionBar.cancelButton.getter();
  *(v12 + 88) = PeoplePickerActionBar.audioVideoDropdownButton.getter();
  *(v11 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = v12;

  PeoplePickerActionBar.configureButtons()();
  OUTLINED_FUNCTION_13_2();
  (*((*v13 & v14) + 0x3C0))();
  v18[3] = type metadata accessor for _GlassGroup();
  v18[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v18);
  v15 = v11;
  _GlassGroup.init(foreground:)();
  UIView._background.setter();

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v15 selector:sel_rttEnablementDidChange name:*MEMORY[0x1E69C6B30] object:0];

  return v15;
}

uint64_t outlined init with take of DropdownViewModel.MenuItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DropdownViewModel.MenuItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PeoplePickerActionBar()
{
  result = type metadata singleton initialization cache for PeoplePickerActionBar;
  if (!type metadata singleton initialization cache for PeoplePickerActionBar)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PeoplePickerActionBar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PeoplePickerActionBar.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled) = 1;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  *(v1 + 4) = 0;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton) = 0;
  v2 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_0_11(v2);
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___faceTimeAddPersonButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___sharePlayAddPersonButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioCallDisambiguationMenu) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDownViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessageDropDown) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButton) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoDropdownButton) = 0;
  v3 = type metadata accessor for DropdownViewModel.MenuItem(0);
  OUTLINED_FUNCTION_0_11(v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void PeoplePickerActionBar.configureButtons()()
{
  type metadata accessor for UITraitOverrides();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  PeoplePickerActionBar.configureButtonActions()();
  PeoplePickerActionBar.configureViewHierarchy()();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAC30;

  *(inited + 32) = PeoplePickerActionBar.createLinkButton.getter();
  specialized Array.append<A>(contentsOf:)(inited);
  v4 = v2;
  v5 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v6 = specialized Array.count.getter(v4);
  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1BFB22010](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v18;
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  v10 = specialized Array.count.getter(v5);
  for (i = 0; v10 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v12 = *(v5 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      goto LABEL_28;
    }

    v14 = [v12 titleLabel];
    if (v14)
    {
      v15 = v14;
      UIView.traitOverrides.getter();
      OUTLINED_FUNCTION_31_40();
      UIView.traitOverrides.setter();
    }

    v16 = [v13 imageView];
    if (v16)
    {
      v17 = v16;
      UIView.traitOverrides.getter();
      OUTLINED_FUNCTION_31_40();
      UIView.traitOverrides.setter();
    }
  }
}

void PeoplePickerActionBar.configureButtonActions()()
{
  v0 = PeoplePickerActionBar.cancelButton.getter();
  OUTLINED_FUNCTION_6_124(v0, v1, v2, sel_cancelButtonTapped_);

  v3 = PeoplePickerActionBar.audioButton.getter();
  OUTLINED_FUNCTION_6_124(v3, v4, v5, sel_audioButtonTapped_);

  v6 = PeoplePickerActionBar.createLinkButton.getter();
  OUTLINED_FUNCTION_6_124(v6, v7, v8, sel_createLinkButtonTapped_);

  v9 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_6_124(v9, v10, v11, sel_videoButtonTapped);

  v12 = PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  OUTLINED_FUNCTION_30_37(v12);

  v13 = PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  OUTLINED_FUNCTION_30_37(v13);

  OUTLINED_FUNCTION_13_2();
  v15 = (*((*MEMORY[0x1E69E7D40] & v14) + 0x300))();
  OUTLINED_FUNCTION_6_124(v15, v16, v17, sel_inviteWithMessagesButtonTapped_);

  v20 = PeoplePickerActionBar.messagesButton.getter();
  OUTLINED_FUNCTION_6_124(v20, v18, v19, sel_messagesButtonTapped_);
}

void PeoplePickerActionBar.configureViewHierarchy()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v1 == 2)
  {
    PeoplePickerActionBar.configureViewForInviteFlow()();
  }

  else if (v1 != 3)
  {
    if (v1 == 4)
    {

      PeoplePickerActionBar.configureViewForSharePlayFlow()();
      return;
    }

    PeoplePickerActionBar.configureViewForAddPersonFlow(avLess:)();
  }

  PeoplePickerActionBar.configureViewWithInviteWithMessagesButton()();
}

void PeoplePickerActionBar.configureViewForInviteFlow()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = v0;
  v2 = PeoplePickerActionBar.audioButton.getter();
  OUTLINED_FUNCTION_19_54(v2, sel_addSubview_);

  v3 = PeoplePickerActionBar.createLinkButton.getter();
  OUTLINED_FUNCTION_19_54(v3, sel_addSubview_);

  v4 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_19_54(v4, sel_addSubview_);

  v79 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4EA6F0;
  v6 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton;
  v7 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton] trailingAnchor];
  v8 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton;
  v9 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton] leadingAnchor];
  v10 = OUTLINED_FUNCTION_79();
  v12 = [v10 v11];

  *(v5 + 32) = v12;
  v13 = [*&v1[v6] leadingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 leadingAnchor];

  v16 = OUTLINED_FUNCTION_26_54();
  v18 = [v16 v17];

  *(v5 + 40) = v18;
  v19 = [*&v1[v6] centerXAnchor];
  v20 = [v1 centerXAnchor];
  v21 = OUTLINED_FUNCTION_79();
  v23 = [v21 v22];

  *(v5 + 48) = v23;
  v24 = [*&v1[v6] topAnchor];
  v25 = [v1 topAnchor];
  v26 = OUTLINED_FUNCTION_79();
  v28 = [v26 v27];

  *(v5 + 56) = v28;
  v29 = [*&v1[v6] bottomAnchor];
  v30 = [v1 &off_1E7FE9D20 + 5];
  v31 = OUTLINED_FUNCTION_79();
  v33 = [v31 v32];

  *(v5 + 64) = v33;
  v34 = [*&v1[v8] heightAnchor];
  v35 = [*&v1[v6] heightAnchor];
  v36 = OUTLINED_FUNCTION_79();
  v38 = [v36 v37];

  *(v5 + 72) = v38;
  v39 = [*&v1[v8] trailingAnchor];
  v40 = [v1 layoutMarginsGuide];
  v41 = [v40 trailingAnchor];

  v42 = OUTLINED_FUNCTION_26_54();
  v44 = [v42 v43];

  *(v5 + 80) = v44;
  v45 = [*&v1[v8] widthAnchor];
  v46 = [*&v1[v8] heightAnchor];
  v47 = OUTLINED_FUNCTION_79();
  v49 = [v47 v48];

  *(v5 + 88) = v49;
  v50 = [*&v1[v8] bottomAnchor];
  v51 = [v1 bottomAnchor];
  v52 = OUTLINED_FUNCTION_79();
  v54 = [v52 v53];

  *(v5 + 96) = v54;
  v55 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton;
  v56 = [*&v1[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___createLinkButton] heightAnchor];
  v57 = [*&v1[v6] heightAnchor];
  v58 = OUTLINED_FUNCTION_79();
  v60 = [v58 v59];

  *(v5 + 104) = v60;
  v61 = [*&v1[v55] widthAnchor];
  v62 = [*&v1[v55] heightAnchor];
  v63 = OUTLINED_FUNCTION_79();
  v65 = [v63 v64];

  *(v5 + 112) = v65;
  v66 = [*&v1[v55] bottomAnchor];
  v67 = [v1 bottomAnchor];
  v68 = OUTLINED_FUNCTION_79();
  v70 = [v68 v69];

  *(v5 + 120) = v70;
  v71 = [*&v1[v55] leadingAnchor];
  v72 = [v1 layoutMarginsGuide];
  v73 = [v72 leadingAnchor];

  v74 = OUTLINED_FUNCTION_79();
  v76 = [v74 v75];

  *(v5 + 128) = v76;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 activateConstraints_];
  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewForAddPersonFlow(avLess:)()
{
  OUTLINED_FUNCTION_34_0();
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x238))();
  OUTLINED_FUNCTION_19_54(v2, sel_addSubview_);
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA920;
  v5 = [v2 leadingAnchor];
  v6 = [v1 layoutMarginsGuide];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintGreaterThanOrEqualToAnchor:v7 constant:10.0];
  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];

  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintLessThanOrEqualToAnchor:v11 constant:-10.0];
  *(v4 + 40) = v12;
  v13 = [v2 centerXAnchor];

  v14 = [v1 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v4 + 48) = v15;
  v16 = [v2 topAnchor];

  v17 = [v1 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];

  *(v4 + 56) = v18;
  v19 = [v2 bottomAnchor];

  v20 = [v1 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];

  *(v4 + 64) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];

  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewWithInviteWithMessagesButton()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = PeoplePickerActionBar.inviteWithMessagesButtonStackView.getter();
  OUTLINED_FUNCTION_19_54(v1, sel_addSubview_);

  v2 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView;
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x300);
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___inviteWithMessagesButtonStackView);
  v5 = v3();
  OUTLINED_FUNCTION_23_57(v5, sel_addArrangedSubview_);

  objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA920;
  v7 = [*(v0 + v2) centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = OUTLINED_FUNCTION_79();
  v11 = [v9 v10];

  *(v6 + 32) = v11;
  v12 = [*(v0 + v2) topAnchor];
  v13 = [v0 topAnchor];
  v14 = OUTLINED_FUNCTION_79();
  v16 = [v14 v15];

  *(v6 + 40) = v16;
  v17 = [*(v0 + v2) bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = OUTLINED_FUNCTION_79();
  v21 = [v19 v20];

  *(v6 + 48) = v21;
  v22 = v3();
  v23 = [v22 leadingAnchor];

  v24 = OUTLINED_FUNCTION_35_32();
  v25 = [v24 leadingAnchor];

  v26 = OUTLINED_FUNCTION_26_54();
  v28 = [v26 v27];

  *(v6 + 56) = v28;
  v29 = v3();
  v30 = [v29 trailingAnchor];

  v31 = OUTLINED_FUNCTION_35_32();
  v32 = [v31 trailingAnchor];

  v33 = [v30 constraintLessThanOrEqualToAnchor_];
  *(v6 + 64) = v33;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  OUTLINED_FUNCTION_23_57(v35, sel_activateConstraints_);

  v39 = v3();
  LODWORD(v36) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v36];
  OUTLINED_FUNCTION_1_3();
}

void PeoplePickerActionBar.configureViewForSharePlayFlow()()
{
  OUTLINED_FUNCTION_34_0();
  v1 = PeoplePickerActionBar.messageAndFaceTimeStackView.getter();
  OUTLINED_FUNCTION_19_54(v1, sel_addSubview_);

  v2 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messageAndFaceTimeStackView];
  v4 = PeoplePickerActionBar.messagesButton.getter();
  OUTLINED_FUNCTION_23_57(v4, sel_addArrangedSubview_);

  OUTLINED_FUNCTION_13_2();
  if (((*((*MEMORY[0x1E69E7D40] & v5) + 0x170))() & 0x100) != 0)
  {
    v6 = PeoplePickerActionBar.videoButton.getter();
    [v6 removeTarget:v0 action:0 forControlEvents:64];

    v7 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton;
    v8 = *&v0[OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___videoButton];
    v9 = PeoplePickerActionBar.audioVideoCallMenu.getter();
    OUTLINED_FUNCTION_23_57(v9, sel_setMenu_);

    [*&v0[v7] setShowsMenuAsPrimaryAction_];
  }

  v10 = *&v0[v2];
  v11 = PeoplePickerActionBar.videoButton.getter();
  OUTLINED_FUNCTION_23_57(v11, sel_addArrangedSubview_);

  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BA920;
  v14 = [*&v0[v2] centerXAnchor];
  v15 = [v0 centerXAnchor];
  v16 = OUTLINED_FUNCTION_79();
  v18 = [v16 v17];

  *(v13 + 32) = v18;
  v19 = [*&v0[v2] topAnchor];
  v20 = [v0 topAnchor];
  v21 = OUTLINED_FUNCTION_79();
  v23 = [v21 v22];

  *(v13 + 40) = v23;
  v24 = [*&v0[v2] bottomAnchor];
  v25 = [v0 bottomAnchor];
  v26 = OUTLINED_FUNCTION_79();
  v28 = [v26 v27];

  *(v13 + 48) = v28;
  v29 = [*&v0[v2] leadingAnchor];
  v30 = OUTLINED_FUNCTION_35_32();
  v31 = [v30 leadingAnchor];

  v32 = OUTLINED_FUNCTION_26_54();
  v34 = [v32 v33];

  *(v13 + 56) = v34;
  v35 = [*&v0[v2] trailingAnchor];
  v36 = OUTLINED_FUNCTION_35_32();
  v37 = [v36 trailingAnchor];

  v38 = OUTLINED_FUNCTION_79();
  v40 = [v38 v39];

  *(v13 + 64) = v40;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints_];
  OUTLINED_FUNCTION_1_3();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateButtonsState()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  switch(v1)
  {
    case 2:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v5 + 968);

      goto LABEL_12;
    case 3:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v4 + 976);

      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_1_190();
      v3 = *(v2 + 992);

LABEL_12:
      v3();
      return;
  }

  OUTLINED_FUNCTION_1_190();
  v7 = *(v6 + 984);
  v9 = v8 & 1;

  v7(v9);
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForAudioVideoButtons()()
{
  v1 = PeoplePickerActionBar.audioButton.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, (v3 | HIBYTE(v3)) & 1);

  v4 = PeoplePickerActionBar.videoButton.getter();
  v5 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v4, BYTE2(v5) & 1);

  PeoplePickerActionBar.updateAudioButtonAction()();

  PeoplePickerActionBar.showAudioAndVideoButtons()();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForInviteWithButton()()
{
  v1 = PeoplePickerActionBar.audioButton.getter();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v4 = v3();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, (v4 | HIBYTE(v4)) & 1);

  OUTLINED_FUNCTION_13_2();
  v6 = (*((*v2 & v5) + 0x300))();
  v7 = v3();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v6, BYTE2(v7) & 1);

  PeoplePickerActionBar.updateAudioButtonAction()();

  PeoplePickerActionBar.showInviteWithMessagesButton()();
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForAddPersonButton(avLess:)(Swift::Bool avLess)
{
  v2 = avLess;
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_49();
  v5 = (*(v4 + 368))();
  v6 = 0x1000000;
  if (v2)
  {
    v6 = 0x100000000;
  }

  v7 = (v5 & v6) != 0;
  v8 = (*((*v3 & *v1) + 0x238))(v2);
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v8, v7);

  PeoplePickerActionBar.showAddPersonButton(avLess:)(v2);
}

Swift::Void __swiftcall PeoplePickerActionBar.updateStateForSharePlayButtons()()
{
  v1 = PeoplePickerActionBar.messagesButton.getter();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v1, BYTE4(v3) & 1);

  v4 = PeoplePickerActionBar.videoButton.getter();
  v5 = v2();
  PeoplePickerActionBar.updateButton(_:isEnabled:)(v4, BYTE2(v5) & 1);

  PeoplePickerActionBar.showMessagesAndVideoButtons()();
}

id PeoplePickerActionBar.updateButton(_:isEnabled:)(void *a1, char a2)
{
  v3 = a2 & 1;
  result = [a1 isEnabled];
  if (result != v3)
  {

    return [a1 setEnabled_];
  }

  return result;
}

id PeoplePickerActionBar.updateAudioButtonAction()()
{
  v1 = PeoplePickerActionBar.audioCallsRequireDisambiguation()();
  if (v1)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v2 = PeoplePickerActionBar.audioButton.getter();
    [v2 removeTarget:v0 action:0 forControlEvents:64];

    v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    v5 = PeoplePickerActionBar.audioCallDisambiguationMenu.getter();
    [v4 setMenu_];
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v6 = PeoplePickerActionBar.audioButton.getter();
    [v6 addTarget:v0 action:sel_audioButtonTapped_ forControlEvents:64];

    v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton);
    [*(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioButton) setMenu_];
  }

  v7 = *v3;

  return [v7 setShowsMenuAsPrimaryAction_];
}

unint64_t PeoplePickerActionBar.audioCallsRequireDisambiguation()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  if (v1())
  {
    return (v1() >> 8) & 1;
  }

  else
  {
    return 0;
  }
}

void PeoplePickerActionBar.hideAllButtons()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  v2 = specialized Array.count.getter(v1);

  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_45_1();
      v4 = MEMORY[0x1BFB22010](v6);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v4 setHidden_];
  }
}

void PeoplePickerActionBar.showInviteWithMessagesButton()()
{
  PeoplePickerActionBar.hideAllButtons()();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_49();
  v4 = (*(v3 + 768))();
  OUTLINED_FUNCTION_32_32(v4);

  OUTLINED_FUNCTION_13_2();
  v6 = (*((*v2 & v5) + 0x170))();
  v8 = 1;
  if (v6 & 0x100) != 0 || (v6)
  {
    OUTLINED_FUNCTION_15_49();
    if (((*(v7 + 296))() - 2) < 3u)
    {
      v8 = 0;
    }
  }

  v9 = PeoplePickerActionBar.audioButton.getter();
  [v9 (v1 + 1656)];
}

void PeoplePickerActionBar.showAddPersonButton(avLess:)(uint64_t a1)
{
  PeoplePickerActionBar.hideAllButtons()();
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x238))(a1);
  [v3 setHidden_];
}

void PeoplePickerActionBar.showAudioAndVideoButtons()(uint64_t (*a1)(void))
{
  PeoplePickerActionBar.hideAllButtons()();
  v3 = a1();
  OUTLINED_FUNCTION_32_32(v3);

  v4 = PeoplePickerActionBar.videoButton.getter();
  [v4 (v1 + 1656)];
}

uint64_t PeoplePickerActionBar.updateLinkButtonsEnabled()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v14 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PeoplePickerActionBar.updateLinkButtonsEnabled();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_122;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v13, v6, v16);
  _Block_release(v16);

  (*(v2 + 8))(v6, v0);
  return (*(v9 + 8))(v13, v7);
}

void closure #1 in PeoplePickerActionBar.updateLinkButtonsEnabled()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    v3 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x300))();
    [v3 setEnabled_];
  }
}

id PeoplePickerActionBar.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id PeoplePickerActionBar.layoutSubviews()(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PeoplePickerActionBar();
  return objc_msgSendSuper2(&v4, *a1);
}

void PeoplePickerActionBar.audioButtonTapped(_:)()
{
  v1 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))() & 1) != 0 && (v2 = (*((*v1 & *v0) + 0x140))()) != 0)
  {
    v12 = v2;
    if ((*((*v1 & *v0) + 0x110))())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      v11 = v12;
      v6(v0, v12, 0, ObjectType, v4);
      swift_unknownObjectRelease();

      v7 = v11;
    }

    else
    {
      v7 = v12;
    }
  }

  else if ((*((*v1 & *v0) + 0x110))())
  {
    v9 = v8;
    v10 = swift_getObjectType();
    (*(v9 + 8))(v0, 0, 128, v10, v9);

    swift_unknownObjectRelease();
  }
}

uint64_t PeoplePickerActionBar.createLinkButtonTapped(_:)(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, 64, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.videoButtonTapped()()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, 1, 128, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PeoplePickerActionBar.cancelButtonTapped(_:)(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, 128, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static PeoplePickerActionBar.createButtonBaseConfiguration(title:symbolName:titleLineBreakMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = a6;
  v25 = a5;
  v26 = a1;
  v27 = a3;
  v28 = a4;
  v6 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UIButton.Configuration.Size();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB21AA0](v16);
  (*(v15 + 104))(v18, *MEMORY[0x1E69DC508], v14);
  UIButton.Configuration.cornerStyle.setter();
  (*(v11 + 104))(v13, *MEMORY[0x1E69DC568], v10);
  UIButton.Configuration.buttonSize.setter();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v19 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v19);
  UIButton.Configuration.attributedTitle.setter();
  v20 = UIButton.Configuration.attributedTitle.modify();
  if (!__swift_getEnumTagSinglePayload(v21, 1, v19))
  {
    v30 = [objc_opt_self() preferredFontForTextStyle_];
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
    AttributedString.subscript.setter();
  }

  v20(v31, 0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);

  @nonobjc UIImage.__allocating_init(systemName:)();
  UIButton.Configuration.image.setter();
  v22 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  if (one-time initialization token for activeButtonBackgroundColor != -1)
  {
    swift_once();
  }

  v23 = static Colors.PeoplePickerViewController.activeButtonBackgroundColor;
  result = UIButton.Configuration.baseBackgroundColor.setter();
  if ((v29 & 1) == 0)
  {
    return UIButton.Configuration.titleLineBreakMode.setter();
  }

  return result;
}

Swift::Void __swiftcall PeoplePickerActionBar.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PeoplePickerActionBar();
  objc_msgSendSuper2(&v11, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!isa)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    PeoplePickerActionBar.updateFonts()();
  }
}

void PeoplePickerActionBar.updateFonts()()
{
  v1 = &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd;
  v2 = &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_allButtons);
  v9 = specialized Array.count.getter(v8);
  v10 = v8 & 0xC000000000000001;
  v28 = v8 & 0xFFFFFFFFFFFFFF8;
  v25 = *MEMORY[0x1E69DDD40];

  v11 = 0;
  v26 = v8 & 0xC000000000000001;
  while (1)
  {
    if (v9 == v11)
    {

      return;
    }

    if (v10)
    {
      v12 = MEMORY[0x1BFB22010](v11, v8);
    }

    else
    {
      if (v11 >= *(v28 + 16))
      {
        goto LABEL_19;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      UIButton.configuration.getter();
      v16 = type metadata accessor for UIButton.Configuration();
      if (__swift_getEnumTagSinglePayload(v7, 1, v16))
      {
        outlined init with copy of Participant?(v7, v27, v1);
        UIButton.configuration.setter();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, v1);
      }

      else
      {
        v17 = v2;
        v18 = v1;
        v19 = UIButton.Configuration.attributedTitle.modify();
        v21 = v20;
        v22 = type metadata accessor for AttributedString();
        if (__swift_getEnumTagSinglePayload(v21, 1, v22))
        {
          v19(v30, 0);
          v1 = v18;
          v23 = v18;
          v2 = v17;
          outlined init with copy of Participant?(v7, v27, v23);
          UIButton.configuration.setter();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, v1);
        }

        else
        {
          v29 = [objc_opt_self() preferredFontForTextStyle_];
          lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
          AttributedString.subscript.setter();
          v19(v30, 0);
          UIButton.configuration.setter();
          v1 = v18;
          v2 = v17;
        }

        v10 = v26;
      }

      [v15 setNeedsUpdateConfiguration];
    }

    ++v11;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type RTTType and conformance RTTType()
{
  result = lazy protocol witness table cache variable for type RTTType and conformance RTTType;
  if (!lazy protocol witness table cache variable for type RTTType and conformance RTTType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RTTType and conformance RTTType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RTTType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_15ConversationKit18PeoplePickerActionO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for PeoplePickerAction(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 9))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x3C | (*(a1 + 8) >> 6)) ^ 0x3F;
      if (v2 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PeoplePickerAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PeoplePickerAction(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    v2 = 0x80;
  }

  *(result + 8) = v2;
  return result;
}

unsigned __int8 *getEnumTagSinglePayload for ActionBarButtonsStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_17:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = (v6 + 2147483646) & 0x7FFFFFFF;
      result = (v7 - 2);
      if (v7 > 2)
      {
        return result;
      }
    }

    return 0;
  }

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
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = ((*result | (v5 << 8)) - 4);
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionBarButtonsStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for PeoplePickerActionBar()
{
  _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598]);
  if (v0 <= 0x3F)
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(319, &lazy cache variable for type metadata for DropdownViewModel.MenuItem?, type metadata accessor for DropdownViewModel.MenuItem);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t InCallBannerViewConstraintManager.__allocating_init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

id (*InCallBannerViewConstraintManager.visibleTranslation.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 56);
  a1[1] = v3;
  [v3 constant];
  *a1 = v4;
  return InCallBannerViewConstraintManager.visibleTranslation.modify;
}

uint64_t InCallBannerViewConstraintManager.init(layoutIdiom:containingGuide:containingView:visibleGuide:bannerView:bannerDodgingGuide:)(char *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
  lazy protocol witness table accessor for type InCallBannerState and conformance InCallBannerState();
  *(v7 + 64) = Dictionary.init(dictionaryLiteral:)();
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [a3 addLayoutGuide_];
  *(v7 + 16) = v13;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 72) = v14;
  *(v7 + 80) = a4;
  *(v7 + 40) = a5;
  *(v7 + 48) = a6;
  v15 = a2;
  v16 = a3;
  v17 = v14;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = [v19 topAnchor];
  v22 = [v18 topAnchor];
  Layout.MultiwayFaceTime.init()(v30);
  v23 = [v21 constraintEqualToAnchor:v22 constant:v30[32]];

  *(v7 + 56) = v23;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    if (v25 == 1)
    {
      v26 = *(v7 + 56);
      [v16 safeAreaInsets];
      [v26 setConstant_];
    }
  }

  v27 = objc_opt_self();
  InCallBannerViewConstraintManager.layoutGuideConstraints()();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints_];

  return v7;
}

unint64_t lazy protocol witness table accessor for type InCallBannerState and conformance InCallBannerState()
{
  result = lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState;
  if (!lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState;
  if (!lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallBannerState and conformance InCallBannerState);
  }

  return result;
}

uint64_t InCallBannerViewConstraintManager.layoutGuideConstraints()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA920;
  v3 = *(v1 + 48);
  v4 = [v3 leadingAnchor];
  v5 = *(v1 + 32);
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor_];

  *(v2 + 32) = v7;
  v8 = [v3 trailingAnchor];
  v9 = [v5 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = *(v1 + 72);
  v12 = [v11 leadingAnchor];
  v13 = *(v1 + 80);
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor_];

  *(v2 + 48) = v15;
  v16 = [v11 trailingAnchor];
  v17 = v1;
  v18 = [v13 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor_];

  *(v2 + 56) = v19;
  v20 = [v11 heightAnchor];
  v21 = [v13 heightAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v2 + 64) = v22;
  v71 = v2;
  if ((*(v1 + 16) & 1) == 0)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BC4BAC30;
    v27 = [v11 topAnchor];
    v28 = &off_1E7FE9000;
    v29 = [v5 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v72);
    v30 = [v27 constraintEqualToAnchor:v29 constant:v73];

    *(v26 + 32) = v30;
    specialized Array.append<A>(contentsOf:)(v26);
    if (static Platform.current.getter() == 2)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1BC4BAC30;
        v32 = [v13 trailingAnchor];
        v33 = *(v1 + 24);
        v34 = [v33 trailingAnchor];
        Layout.MultiwayFaceTime.init()(v76);
        v35 = [v32 &selRef_uniqueProxyIdentifier + 6];

        *(v31 + 32) = v35;
        v28 = &off_1E7FE9000;
        goto LABEL_21;
      }
    }

    v36 = [v13 leadingAnchor];
    v33 = *(v1 + 24);
    v37 = [v33 leadingAnchor];
    Layout.MultiwayFaceTime.init()(v74);
    v38 = [v36 constraintEqualToAnchor:v37 constant:v75];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v39 = objc_opt_self();
      v40 = [v39 currentDevice];
      v41 = [v40 0x1FAB4ADF8];

      if (v41 == 1)
      {
        v42 = [v13 leadingAnchor];
        v43 = [v5 leadingAnchor];
        Layout.MultiwayFaceTime.init()(v76);
        v44 = [v42 constraintEqualToAnchor:v43 constant:v78];

        v38 = v44;
      }

      else
      {
        v54 = [v39 currentDevice];
        v55 = [v54 0x1FAB4ADF8];

        if (!v55)
        {
          swift_beginAccess();
          v28 = &off_1E7FE9000;
          if (static AmbientState.isPresented == 1 && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
          {
            v67 = [v13 leadingAnchor];
            v68 = [v5 safeAreaLayoutGuide];
            v69 = [v68 leadingAnchor];

            v70 = [v67 constraintEqualToAnchor_];
            v28 = &off_1E7FE9000;

            v38 = v70;
          }

          goto LABEL_20;
        }
      }

      v28 = &off_1E7FE9000;
    }

LABEL_20:
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BC4BAC30;
    *(v31 + 32) = v38;
LABEL_21:
    specialized Array.append<A>(contentsOf:)(v31);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      if (static Platform.current.getter() == 2)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BC4BAC30;
        v57 = [v13 v28[480]];
        v58 = [v5 v28[480]];
        Layout.MultiwayFaceTime.init()(v79);
        v59 = [v57 constraintEqualToAnchor:v58 constant:-v81];
      }

      else
      {
        v60 = objc_opt_self();
        v61 = [v60 currentDevice];
        v62 = [v61 0x1FAB4ADF8];

        if (v62 != 1)
        {
          v65 = [v60 currentDevice];
          v66 = [v65 0x1FAB4ADF8];

          if (v66)
          {
            return v71;
          }

          swift_beginAccess();
          if (static AmbientState.isPresented != 1 || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
          {
            return v71;
          }
        }

        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BC4BAC30;
        v57 = [v13 topAnchor];
        v58 = [v33 topAnchor];
        Layout.MultiwayFaceTime.init()(v79);
        v59 = [v57 constraintEqualToAnchor:v58 constant:v81];
      }
    }

    else
    {
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1BC4BAC30;
      v57 = [v13 v28[480]];
      v58 = [v33 v28[480]];
      Layout.MultiwayFaceTime.init()(v79);
      v59 = [v57 constraintEqualToAnchor:v58 constant:-v81];
    }

    v63 = v59;

    *(v56 + 32) = v63;
    specialized Array.append<A>(contentsOf:)(v56);
    return v71;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v23 = [v13 leadingAnchor];
    v24 = [v5 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:20.0];
  }

  else
  {
    v23 = [v13 centerXAnchor];
    v24 = [*(v1 + 24) centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];
  }

  v45 = v25;

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1BC4BC370;
  *(v46 + 32) = v45;
  v47 = v45;
  v48 = [v13 topAnchor];
  v49 = [*(v17 + 24) topAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v46 + 40) = v50;
  v51 = [v11 bottomAnchor];
  v52 = [v5 topAnchor];
  Layout.MultiwayFaceTime.init()(v79);
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v80];

  *(v46 + 48) = v53;
  specialized Array.append<A>(contentsOf:)(v46);

  return v71;
}

id *InCallBannerViewConstraintManager.deinit()
{

  return v0;
}

uint64_t InCallBannerViewConstraintManager.__deallocating_deinit()
{
  InCallBannerViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t InCallBannerViewConstraintManager.constraints(forState:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (*(v4 + 16))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      return v7;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySo18NSLayoutConstraintCGGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = InCallBannerViewConstraintManager.horizontalConstraints(forState:)();
  v9 = inited + 32;
  *(inited + 40) = InCallBannerViewConstraintManager.verticalConstraints(forState:)();
  v36[0] = v3;
  v31 = v2;
  v10 = 0;
  *(inited + 48) = InCallBannerViewConstraintManager.layoutGuideConstraints(forState:)(v36);
  v7 = MEMORY[0x1E69E7CC0];
  v32 = v9;
  while (1)
  {
    if (v10 == 3)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v31 + 64);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *(v31 + 64) = v35;
      swift_endAccess();
      return v7;
    }

    v11 = *(v9 + 8 * v10);
    v12 = v11 >> 62 ? __CocoaSet.count.getter() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v7 >> 62;
    result = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = result + v12;
    if (__OFADD__(result, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v13)
      {
LABEL_16:
        __CocoaSet.count.getter();
      }

LABEL_17:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = result;
      v16 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_18;
    }

    if (v13)
    {
      goto LABEL_16;
    }

    v16 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v15 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

LABEL_18:
    v34 = v10 + 1;
    v17 = *(v16 + 16);
    v18 = (*(v16 + 24) >> 1) - v17;
    v19 = v16 + 8 * v17;
    if (v11 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (v21)
      {
        v22 = v21;
        result = __CocoaSet.count.getter();
        if (v18 < result)
        {
          goto LABEL_42;
        }

        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v33 = result;
        v23 = v19 + 32;
        lazy protocol witness table accessor for type [NSLayoutConstraint] and conformance [A]();
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18NSLayoutConstraintCGMd);
          v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v11);
          v27 = *v26;
          v25(v36, 0);
          *(v23 + 8 * i) = v27;
        }

        v9 = v32;
        v20 = v33;
        goto LABEL_28;
      }

LABEL_32:

      v10 = v34;
      if (v12 > 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_32;
      }

      if (v18 < v20)
      {
        goto LABEL_41;
      }

      type metadata accessor for NSLayoutConstraint();
      swift_arrayInitWithCopy();
LABEL_28:

      v10 = v34;
      if (v20 < v12)
      {
        goto LABEL_39;
      }

      if (v20 > 0)
      {
        v28 = *(v16 + 16);
        v29 = __OFADD__(v28, v20);
        v30 = v28 + v20;
        if (v29)
        {
          goto LABEL_40;
        }

        *(v16 + 16) = v30;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t InCallBannerViewConstraintManager.horizontalConstraints(forState:)()
{
  v1 = *(v0 + 40);
  v2 = [v1 centerXAnchor];
  v3 = *(v0 + 80);
  v4 = [v3 centerXAnchor];
  v5 = [v2 constraintEqualToAnchor_];

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v6 = [v1 leadingAnchor];
    v7 = [v3 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor_];

    v5 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA930;
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = [v1 widthAnchor];
  v12 = [v3 widthAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v9 + 40) = v13;
  return v9;
}

uint64_t InCallBannerViewConstraintManager.verticalConstraints(forState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BC4BA930;
  v2 = *(v0 + 56);
  *(v1 + 32) = v2;
  v3 = *(v0 + 40);
  v4 = v2;
  v5 = [v3 heightAnchor];
  v6 = [*(v0 + 80) heightAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v1 + 40) = v7;
  return v1;
}

uint64_t InCallBannerViewConstraintManager.layoutGuideConstraints(forState:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (one-time initialization token for bottomInsetAfterPadding != -1)
  {
    swift_once();
  }

  v4 = *&static Layout.MediaPip.bottomInsetAfterPadding;
  v5 = static Layout.MediaPip.padding.getter();
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA930;
    v7 = *(v2 + 48);
    v8 = [v7 topAnchor];
    if (v3)
    {
      if (v3 == 1)
      {
        v9 = [*(v2 + 80) bottomAnchor];
        v10 = [v8 constraintEqualToAnchor:v9 constant:v4];
      }

      else
      {
        v9 = [*(v2 + 80) bottomAnchor];
        v10 = [v8 constraintEqualToAnchor:v9 constant:58.0];
      }

      *(v6 + 32) = v10;
      v11 = [v7 bottomAnchor];
      v12 = [*(v2 + 24) bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:v5];
    }

    else
    {
      v27 = *(v2 + 24);
      v28 = [v27 topAnchor];
      v29 = [v8 constraintEqualToAnchor:v28 constant:-v5];

      *(v6 + 32) = v29;
      v11 = [v7 bottomAnchor];
      v12 = [v27 bottomAnchor];
      v13 = [v11 constraintEqualToAnchor:v12 constant:v5];
    }

    v30 = v13;

    *(v6 + 40) = v30;
  }

  else
  {
    v14 = *(v1 + 48);
    v15 = [v14 bottomAnchor];
    v16 = [*(v2 + 80) topAnchor];
    v17 = -v4;
    v18 = [v15 constraintEqualToAnchor:v16 constant:v17];

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v19 = [objc_opt_self() currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if (v20 == 1)
      {
        v21 = [v14 bottomAnchor];
        v22 = [*(v2 + 24) bottomAnchor];
        v23 = [v21 constraintEqualToAnchor:v22 constant:v17];

        v18 = v23;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA930;
    v24 = [v14 topAnchor];
    v25 = [*(v2 + 24) topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:-v5];

    *(v6 + 32) = v26;
    *(v6 + 40) = v18;
  }

  return v6;
}

BOOL static CallScreeningAnsweringState.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];

  return _s15ConversationKit23CKStateMachineContainerC2eeoiySbACyxG_AEtFZAA13CallScreeningO5StateO_Tt1g5(v5, v6);
}

uint64_t CallScreeningAnsweringState.init(prevState:callUUID:onEnterState:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, void *a5@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v10 = swift_allocObject();
  result = swift_weakInit();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v10;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

uint64_t CallScreeningAnsweringState.init(prevState:onEnterState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit23CKStateMachineContainerCyAA13CallScreeningO5StateOGMd);
  v8 = swift_allocObject();
  swift_weakInit();
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);

  *a4 = v10;
  a4[1] = v9;
  a4[2] = v8;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t CallScreeningAnsweringState.callUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CallScreeningAnsweringState.onEnterState.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CallScreeningAnsweringState.willExit(to:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v5 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[1];
  v30[0] = *v2;
  v30[1] = v11;
  v31 = *(v2 + 4);
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  result = CallScreeningState.stateMachine.getter(a2, WitnessTable);
  if (result)
  {
    v27 = v7;
    v28 = v5;
    v29 = v3;
    OUTLINED_FUNCTION_19_55();
    v14();
    v32 = *v2;
    outlined init with copy of String(&v32, v30);

    v15 = v33;
    outlined init with copy of CallScreening.State(v33, v30);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    outlined destroy of CallScreening.State(v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v30[0] = v26;
      *v18 = 136446466;
      v19 = CallScreeningAnsweringState.description.getter();
      v21 = v20;
      outlined destroy of String(&v32);

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = CallScreening.State.description.getter();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v30);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1BBC58000, v16, v17, "%{public}s Exiting to %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      outlined destroy of String(&v32);
    }

    return (*(v27 + 8))(v10, v28);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CallScreeningAnsweringState.enteredState()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 1);
  v33[0] = *v1;
  v33[1] = v12;
  v34 = v1[4];
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  if (CallScreeningState.stateMachine.getter(v5, WitnessTable))
  {
    v31 = v8;
    OUTLINED_FUNCTION_19_55();
    v14();
    v16 = *v1;
    v15 = v1[1];
    v29 = v1[3];
    v30 = v16;
    v17 = v1[4];
    v35 = v15;

    v32 = v17;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_13_10();
      swift_slowAlloc();
      v28 = v3;
      OUTLINED_FUNCTION_6_125();
      v20 = swift_slowAlloc();
      v27 = v6;
      v21 = v20;
      *&v33[0] = v20;
      *v3 = 136446210;
      v26 = CallScreeningAnsweringState.description.getter();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v23, v33);

      *(v3 + 4) = v24;
      _os_log_impl(&dword_1BBC58000, v18, v19, "EnteredState %{public}s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      (*(v31 + 8))(v11, v27);
    }

    else
    {

      (*(v31 + 8))(v11, v6);
    }

    v29(v4, v30, v35);
    swift_unknownObjectRelease();
  }
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v3[23] = type metadata accessor for AnsweringMachineCallStatus();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v4 = type metadata accessor for CallScreeningStatus();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMd);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static CKStateMachineActor.shared;
  v3[40] = static CKStateMachineActor.shared;

  return MEMORY[0x1EEE6DFA0](CallScreeningAnsweringState.update(with:), v6, 0);
}

uint64_t CallScreeningAnsweringState.update(with:)()
{
  v179 = v0;
  v1 = v0;
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v177 = 0;
  v178 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  MEMORY[0x1BFB20B10](0x617473206C6C6163, 0xED0000203A737574);
  v6 = *(v5 + 32);
  v7 = CallStatus.description.getter(*(v5 + 32));
  MEMORY[0x1BFB20B10](v7);

  MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC524C20);
  LODWORD(v181) = *(v5 + v2[9]);
  if (v181)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v181)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v8, v9);

  MEMORY[0x1BFB20B10](0xD000000000000013, 0x80000001BC4FA7B0);
  v10 = v2[7];
  lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
  v174 = v10;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v11);

  MEMORY[0x1BFB20B10](0xD000000000000012, 0x80000001BC524C40);
  v170 = *(v5 + v2[10]);
  *(v0 + 152) = v170;
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v12);

  v13 = v177;
  v14 = v178;
  v15 = *v3;
  v16 = v3[1];
  *(v0 + 48) = *(v3 + 4);
  *(v0 + 32) = v16;
  *(v0 + 16) = v15;
  OUTLINED_FUNCTION_1_191();
  WitnessTable = swift_getWitnessTable();
  v18 = CallScreeningState.stateMachine.getter(v4, WitnessTable);
  *(v0 + 328) = v18;
  if (v18)
  {
    v19 = *(v0 + 160);
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    *(v0 + 56) = **(v0 + 176);
    v22 = v21 == *(v0 + 56) && v20 == *(v0 + 64);
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v169 = v0 + 56;
      v173 = v6;
      v159 = v20;
      v160 = v21;
      OUTLINED_FUNCTION_19_55();
      v175 = v24;
      v176 = v23;
      v25();

      v26 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_25_56();
      v27 = OUTLINED_FUNCTION_112_2();
      v171 = *(v0 + 312);
      v29 = *(v0 + 256);
      v28 = *(v0 + 264);
      v164 = v13;
      if (v27)
      {
        OUTLINED_FUNCTION_13_10();
        swift_slowAlloc();
        OUTLINED_FUNCTION_6_125();
        v30 = swift_slowAlloc();
        v177 = v30;
        *v13 = 136446210;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v177);
        OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v31, v32, "Answering machine state updating with %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      v165 = *(v28 + 8);
      v165(v171, v29);
      v33 = *(v0 + 240);
      v34 = *(v0 + 248);
      v35 = *(v0 + 224);
      v168 = *(v0 + 232);
      v36 = *(v0 + 216);
      v166 = *(v0 + 208);
      v37 = *(v0 + 176);
      v172 = *(v168 + 80);
      *v34 = v173;
      v34[1] = v181;
      (*(v36 + 104))(v35, *MEMORY[0x1E6995E98]);
      v38 = CallScreeningStatus.isBaseCase(_:)();
      v39 = *(v36 + 8);
      *(v0 + 336) = v39;
      *(v0 + 344) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v161 = v39;
      v162 = v36 + 8;
      v39(v35, v166);
      HIDWORD(v163) = v38;
      v167 = (v38 & 1) == 0;
      v34[2] = v167;
      v40 = *(v36 + 16);
      v40(&v34[v172], v5 + v174, v166);
      v41 = swift_allocObject();
      *(v0 + 352) = v41;
      *(v41 + 16) = v176;
      *(v41 + 24) = v175;
      v43 = *v37;
      v42 = v37[1];
      *(v41 + 64) = *(v37 + 4);
      *(v41 + 32) = v43;
      *(v41 + 48) = v42;
      v44 = *(v168 + 80);
      *(v0 + 408) = v44;
      *v33 = v173;
      v33[1] = v181;
      v33[2] = v167;
      v45 = v33;
      v40(&v33[v44], &v34[v172], v166);
      if (v173 != 1)
      {
        v46 = v0 + 56;
        v47 = &stru_1BC4BA000;
        if (v173 == 4 && v181)
        {
          v48 = *(v0 + 248);
          v49 = v1[26];
          outlined init with copy of String(v169, (v1 + 17));

          outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v48);

          swift_unknownObjectRelease();

          v161(&v45[v44], v49);
          goto LABEL_39;
        }

        goto LABEL_25;
      }

      v46 = v0 + 56;
      v47 = &stru_1BC4BA000;
      if (v38)
      {
LABEL_25:
        outlined init with copy of String(v46, v0 + 72);

        v61 = OUTLINED_FUNCTION_14_76();
        v62(v61);

        v63 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v64 = swift_slowAlloc();
          v177 = v64;
          v72 = OUTLINED_FUNCTION_11_108(COERCE_FLOAT(v47[196].super.isa), v64, v65, v66, v67, v68, v69, v70, v71, v158, v159, v160, v161, v162, v163, v164);

          *(v46 + 4) = v72;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v73, v74, "Transitioning to ending state, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v64);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v90 = OUTLINED_FUNCTION_8_109();
        v91(v90);
        OUTLINED_FUNCTION_2_174();
        v181 = v92 + *v92;
        v93 = swift_task_alloc();
        *(v0 + 392) = v93;
        *v93 = v0;
        OUTLINED_FUNCTION_0_224(v93);
        goto LABEL_31;
      }

      if ((*(*(v0 + 216) + 88))(&v45[v44], *(v0 + 208)) != *MEMORY[0x1E6995EA0])
      {
        outlined init with copy of String(v169, v0 + 88);

        v111 = OUTLINED_FUNCTION_14_76();
        v112(v111);

        v113 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v114 = swift_slowAlloc();
          v177 = v114;
          v122 = OUTLINED_FUNCTION_11_108(4.8751e-34, v114, v115, v116, v117, v118, v119, v120, v121, v158, v159, v160, v161, v162, v163, v164);

          *(v0 + 60) = v122;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v123, v124, "Transitioning to screening state, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v114);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v125 = OUTLINED_FUNCTION_8_109();
        v126(v125);
        OUTLINED_FUNCTION_2_174();
        v181 = v127 + *v127;
        v128 = swift_task_alloc();
        *(v0 + 376) = v128;
        *v128 = v0;
        v129 = OUTLINED_FUNCTION_0_224(v128);
        OUTLINED_FUNCTION_12_99(v129, v130, v131, v132, v133, v134, v135, v136, v158, v159, v160);
LABEL_31:
        v94 = v181;

        __asm { BRAA            X8, X16 }
      }

      if (v170)
      {
        outlined init with copy of String(v169, v0 + 104);

        v95 = OUTLINED_FUNCTION_17_72();
        v96(v95);

        v97 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_25_56();
        if (OUTLINED_FUNCTION_112_2())
        {
          OUTLINED_FUNCTION_13_10();
          swift_slowAlloc();
          OUTLINED_FUNCTION_6_125();
          v98 = swift_slowAlloc();
          v177 = v98;
          v106 = OUTLINED_FUNCTION_11_108(4.8751e-34, v98, v99, v100, v101, v102, v103, v104, v105, v158, v159, v160, v161, v162, v163, v164);

          *(v0 + 60) = v106;
          OUTLINED_FUNCTION_7_111(&dword_1BBC58000, v107, v108, "Transitioning to screening state, not waiting for streaming token because this is not LiveVoicemail, recieved %{public}s");
          __swift_destroy_boxed_opaque_existential_1(v98);
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
          OUTLINED_FUNCTION_3_4();
          MEMORY[0x1BFB23DF0]();
        }

        else
        {
        }

        v146 = OUTLINED_FUNCTION_8_109();
        v147(v146);
        OUTLINED_FUNCTION_2_174();
        v181 = v148 + *v148;
        v149 = swift_task_alloc();
        *(v0 + 360) = v149;
        *v149 = v0;
        v150 = OUTLINED_FUNCTION_0_224(v149);
        OUTLINED_FUNCTION_12_99(v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
        goto LABEL_31;
      }

      outlined init with copy of String(v169, v0 + 120);

      v137 = OUTLINED_FUNCTION_17_72();
      v138(v137);
      v139 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();
      v141 = os_log_type_enabled(v139, v140);
      v142 = *(v0 + 304);
      v143 = *(v0 + 256);
      v144 = *(v0 + 248);
      if (v141)
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_1BBC58000, v139, v140, "Call is answered but the streaming token is 0, waiting for updates.", v145, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      swift_unknownObjectRelease();

      v165(v142, v143);
      outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v144);
    }

    else
    {
      v75 = *(v0 + 200);
      v76 = *(v0 + 160);

      OUTLINED_FUNCTION_19_55();
      v77();
      outlined init with copy of AnsweringMachineCallStatus(v76, v75);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v80 = os_log_type_enabled(v78, v79);
      v82 = v1[33];
      v81 = v1[34];
      v83 = v1[32];
      v84 = v1[25];
      if (v80)
      {
        OUTLINED_FUNCTION_13_10();
        v181 = v81;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v177 = v86;
        *v85 = 136446210;
        v87 = *(v84 + 16);
        v88 = *(v84 + 24);

        outlined destroy of AnsweringMachineCallStatus(v84);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v177);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_1BBC58000, v78, v79, "Answering machine state ignoreing stateupdate for call with nonmathcing uuid %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        swift_unknownObjectRelease();

        (*(v82 + 8))(v181, v83);
      }

      else
      {
        swift_unknownObjectRelease();

        outlined destroy of AnsweringMachineCallStatus(v84);
        (*(v82 + 8))(v81, v83);
      }
    }
  }

  else
  {

    if (one-time initialization token for answeringMachine != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 192);
    v51 = *(v0 + 160);
    __swift_project_value_buffer(v1[32], static Logger.answeringMachine);
    outlined init with copy of AnsweringMachineCallStatus(v51, v50);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v1[24];
    if (v54)
    {
      OUTLINED_FUNCTION_13_10();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v177 = v57;
      *v56 = 136446210;
      v58 = *(v55 + 16);
      v59 = *(v55 + 24);

      outlined destroy of AnsweringMachineCallStatus(v55);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v177);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_1BBC58000, v52, v53, "Answering machine state ignoring stateupdate uuid %{public}s because our statemachine is nill", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v55);
    }
  }

LABEL_39:
  v181 = v1[24];

  v109 = v1[1];

  return v109();
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 368) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 384) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_1_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 400) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  else
  {
    v6 = CallScreeningAnsweringState.update(with:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_64();
  v13 = *(v12 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v13);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_15_65();
  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v12);
  v15(v16 + v14, v13);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_64();
  v14 = *(v12 + 240);
  v13 = *(v12 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v13);
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v14);
  OUTLINED_FUNCTION_3_171();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t CallScreeningAnsweringState.update(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_18_64();
  v15 = *(v14 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v15);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_15_65();
  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v14);
  v17(v18 + v16, v15);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

{
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_18_64();
  v16 = *(v14 + 240);
  v15 = *(v14 + 248);

  swift_unknownObjectRelease();
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v15);
  outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(v16);
  OUTLINED_FUNCTION_4_152();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_13_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

void closure #1 in CallScreeningAnsweringState.update(with:)(void *a1, void *a2)
{
  if (a1[6] >> 61 == 3)
  {
    if (*a1 == *a2 && a1[1] == a2[1])
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  lazy protocol witness table accessor for type CKStateMachineError and conformance CKStateMachineError();
  v4 = swift_allocError();
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>;

  return CallScreeningAnsweringState.update(with:)(a1, a2);
}

uint64_t protocol witness for UpdatesWithCallStatus.update(with:) in conformance CallScreeningAnsweringState<A>()
{

  OUTLINED_FUNCTION_13();

  return v0();
}

unint64_t CallScreeningAnsweringState.description.getter()
{
  _StringGuts.grow(_:)(28);

  MEMORY[0x1BFB20B10](*v0, v0[1]);
  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t outlined destroy of (status: CallStatus, isEligibleForScreening: Bool, isScreening: Bool, CallScreeningStatus)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10CallStatusO6status_Sb22isEligibleForScreeningSb0fI020CommunicationsUICore0ciD0OtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for CallScreeningAnsweringState<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for CallScreeningAnsweringState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t CallScreeningActor.ActorType.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t CallScreeningActor.ActorType.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static CallScreeningActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for CallScreeningActor(_BYTE *result, int a2, int a3)
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

uint64_t AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)()
{
  OUTLINED_FUNCTION_2_175();
  v7 = OUTLINED_FUNCTION_0_225();

  return specialized AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)(v0, v1, v2, v3, v7, v4, v5, v6);
}

uint64_t AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)()
{
  OUTLINED_FUNCTION_2_175();
  v7 = OUTLINED_FUNCTION_0_225();

  return specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(v0, v1, v7, v2, v3, v4, v5, v6);
}

Swift::Void __swiftcall AlternatingLabelController.start()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_1_192();
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v9 = v8(v7);
  if (v4)
  {
    (*(*v2 + 264))(v9);
    v10 = objc_opt_self();
    v11 = v2[5];
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in AlternatingLabelController.start();
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_123;
    v13 = _Block_copy(aBlock);

    v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:v11];
    _Block_release(v13);
    v15 = *(v2 + 2);
    *(v2 + 2) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in AlternatingLabelController.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5();
}

uint64_t closure #1 in closure #1 in AlternatingLabelController.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AlternatingLabelController.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in AlternatingLabelController.start()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AlternatingLabelController.start(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  AlternatingLabelController.updateLabel()();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DurationLabelController.start(), 0, 0);
}

Swift::Void __swiftcall AlternatingLabelController.stop()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_1_192();
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_23_6();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if (v4)
  {
    [*(v2 + 16) invalidate];
    v9 = *(v2 + 16);
    *(v2 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void AlternatingLabelController.updateLabel()()
{
  v2 = *(v0 + 56);
  v3 = specialized Array.count.getter(*(v0 + 48));
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 >= v3 - 1)
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 56);
  v2 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_6:
    v2 = 0;
  }

  *(v0 + 56) = v2;
  v1 = *(v0 + 48);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_11:

    v5 = MEMORY[0x1BFB22010](v2, v1);

    goto LABEL_9;
  }

  v5 = *(v1 + 8 * v2 + 32);
LABEL_9:
  v6 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  swift_weakInit();
  v17 = partial apply for closure #1 in AlternatingLabelController.updateLabel();
  v18 = v7;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> ();
  v16 = &block_descriptor_20_3;
  v8 = _Block_copy(&v13);

  OUTLINED_FUNCTION_20();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v5;
  v17 = partial apply for closure #2 in AlternatingLabelController.updateLabel();
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v16 = &block_descriptor_27_0;
  v11 = _Block_copy(&v13);
  v12 = v5;

  [v6 animateWithDuration:v8 animations:v11 completion:0.2];
  _Block_release(v11);
  _Block_release(v8);
}

void closure #2 in AlternatingLabelController.updateLabel()(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = *(v6 + 32);

    if (v7)
    {
      if ((a1 & 1) == 0)
      {
        [v7 setAlpha_];
      }

      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = a3;
      v10(a3, ObjectType, v8);
      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v14 = swift_unknownObjectWeakLoadStrong();
        v15 = *(v13 + 72);

        if (v14)
        {
          v16 = swift_getObjectType();
          (*(v15 + 8))(v16, v15);
          swift_unknownObjectRelease();
        }
      }

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      aBlock[4] = partial apply for closure #1 in closure #2 in AlternatingLabelController.updateLabel();
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_31_2;
      v19 = _Block_copy(aBlock);

      [v17 animateWithDuration:v19 animations:0.2];
      _Block_release(v19);
    }
  }
}

void closure #1 in AlternatingLabelController.updateLabel()(double a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setAlpha_];
    }
  }
}

uint64_t AlternatingLabelController.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 24);

  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 64);
  return v0;
}

uint64_t AlternatingLabelController.__deallocating_deinit()
{
  AlternatingLabelController.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized AlternatingLabelController.__allocating_init(label:timeInterval:alternatingBetween:observer:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for AlternatingLabelController();
  v15 = swift_allocObject();

  return specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(a1, a2, a5, a3, a4, v15, a7, a8);
}

uint64_t specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 56) = 0;
  *(a6 + 72) = 0;
  swift_unknownObjectWeakInit();
  v15 = specialized Array.count.getter(a2);
  if (v15)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1BFB22010](0, a2);
    }

    else
    {
      v15 = *(a2 + 32);
    }
  }

  (*(a8 + 16))(v15, a7, a8);
  *(a6 + 32) = a8;
  swift_unknownObjectWeakAssign();

  *(a6 + 48) = a2;
  *(a6 + 40) = a3;
  *(a6 + 72) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a6;
}

uint64_t partial apply for closure #1 in closure #1 in AlternatingLabelController.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in AlternatingLabelController.start()(a1, v4, v5, v6);
}

Swift::Void __swiftcall UIVisualEffectView.applyEffect(_:)(ConversationKit::PlatformEffectViewStyle a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  [v1 setEffect_];
}

id static ClarityUIContactAvatar.requiredDescriptor(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() settingsWithContactStore_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  v3 = [v2 descriptorForRequiredKeys];
  return v3;
}

ConversationKit::ClarityUIContactAvatar __swiftcall ClarityUIContactAvatar.init(cnContact:contactStore:)(CNContact cnContact, CNContactStore contactStore)
{
  *v2 = cnContact;
  *(v2 + 8) = contactStore;
  result.contactStore = contactStore;
  result.cnContact = cnContact;
  return result;
}

id ClarityUIContactAvatar.makeUIViewController(context:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 settingsWithContactStore_];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BAC30;
  *(v7 + 32) = v4;
  type metadata accessor for CNContact();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setContacts_];

  return v6;
}

void ClarityUIContactAvatar.updateUIViewController(_:context:)(void *a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BAC30;
    *(v6 + 32) = v3;
    type metadata accessor for CNContact();
    v7 = a1;
    v8 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setContacts_];
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ClarityUIContactAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ClarityUIContactAvatar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ClarityUIContactAvatar()
{
  lazy protocol witness table accessor for type ClarityUIContactAvatar and conformance ClarityUIContactAvatar();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return TupleView.init(_:)();
}

uint64_t ClarityUIShadowedContent.init(shape:isPressed:invertsInnerShadows:includesDropShadow:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for ClarityUIShadowedContent();
  v15 = v14[17];
  *(a7 + v15) = static Color.white.getter();
  *(a7 + v14[18]) = 1050253722;
  v16 = v14[19];
  *(a7 + v16) = static Color.black.getter();
  *(a7 + v14[20]) = 1050253722;
  *(a7 + v14[21]) = 0x4000000000000000;
  *(a7 + v14[22]) = 0x3FF0000000000000;
  *(a7 + v14[23]) = 0xBFF0000000000000;
  v17 = *(a6 - 8);
  v18 = (*(v17 + 16))(a7, a1, a6);
  *(a7 + v14[13]) = a2;
  *(a7 + v14[14]) = a3;
  *(a7 + v14[15]) = a4;
  a5(v18);
  return (*(v17 + 8))(a1, a6);
}

uint64_t ClarityUIShadowedContent.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = a1[3];
  v49 = a1[5];
  v45 = *(v49 + 8);
  v5 = type metadata accessor for _ShadowView();
  OUTLINED_FUNCTION_2_7();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v41 - v8;
  v42 = a1[2];
  OUTLINED_FUNCTION_4_153();
  WitnessTable = swift_getWitnessTable();
  v70 = v5;
  v71 = WitnessTable;
  v51 = v5;
  v52 = WitnessTable;
  OUTLINED_FUNCTION_3_172();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_10_91();
  type metadata accessor for TupleView();
  v43 = OUTLINED_FUNCTION_7_112();
  v44 = type metadata accessor for _OverlayModifier();
  v10 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v50 = type metadata accessor for _ClipEffect();
  v48 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v55 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v41 - v17;
  v54 = type metadata accessor for _BackgroundModifier();
  v18 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_7();
  v56 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v53 = &v41 - v23;
  v24 = a1[4];
  *&v25 = v24;
  *(&v25 + 1) = v49;
  *&v26 = v42;
  *(&v26 + 1) = v4;
  v61 = v26;
  v62 = v25;
  v63 = v2;
  static Alignment.center.getter();
  View.overlay<A>(alignment:content:)();
  OUTLINED_FUNCTION_2_176();
  v27 = swift_getWitnessTable();
  v68 = v24;
  v69 = v27;
  v28 = swift_getWitnessTable();
  View.clipShape<A>(_:style:)();
  (*(v47 + 8))(v14, v10);
  static Color.clarityUIButtonShadowColor.getter();
  ClarityUIShadowedContent.shadowRadius.getter(a1);
  ClarityUIShadowedContent.shadowXOffset.getter(a1);
  ClarityUIShadowedContent.shadowYOffset.getter(a1);
  v29 = v57;
  Shape.fillShadow(color:radius:x:y:)();

  OUTLINED_FUNCTION_5_142();
  v30 = swift_getWitnessTable();
  v66 = v28;
  v67 = v30;
  v31 = v48;
  v32 = swift_getWitnessTable();
  static Alignment.center.getter();
  v33 = v46;
  v34 = v51;
  v35 = v60;
  View.background<A>(_:alignment:)();
  (*(v58 + 8))(v29, v34);
  (*(v55 + 8))(v35, v31);
  OUTLINED_FUNCTION_1_193();
  v36 = swift_getWitnessTable();
  v64 = v32;
  v65 = v36;
  v37 = swift_getWitnessTable();
  v38 = v53;
  static ViewBuilder.buildExpression<A>(_:)(v33, v18, v37);
  v39 = *(v56 + 8);
  v39(v33, v18);
  static ViewBuilder.buildExpression<A>(_:)(v38, v18, v37);
  return (v39)(v38, v18);
}

uint64_t closure #1 in ClarityUIShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a4;
  v62 = a2;
  v71 = a6;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v74 = *(v14 + 8);
  v15 = type metadata accessor for _ShadowView();
  v72 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v55 - v18;
  WitnessTable = swift_getWitnessTable();
  v83 = v15;
  v84 = WitnessTable;
  OpaqueTypeConformance2 = MEMORY[0x1E69811F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v69 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v55 - v28;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v75 = &v55 - v32;
  v33 = *(v9 + 16);
  v59 = v9 + 16;
  v60 = v33;
  (v33)(v13, a1, a3, v31);
  v83 = v62;
  v84 = a3;
  v85 = v63;
  v86 = a5;
  v34 = type metadata accessor for ClarityUIShadowedContent();
  v35 = 68;
  if (!*(a1 + v34[14]))
  {
    v35 = 76;
  }

  v63 = v35;

  v36 = v61;
  v56 = a3;
  Shape.fillShadow(color:radius:x:y:)();

  v37 = *(v9 + 8);
  v58 = v9 + 8;
  v62 = v37;
  v37(v13, a3);
  ClarityUIShadowedContent.innerShadowMatrix(opacity:)(v82, *(a1 + v34[18]));
  v38 = v72;
  v39 = WitnessTable;
  View._colorMatrix(_:)();
  v40 = *(v77 + 8);
  v77 += 8;
  v57 = v40;
  v40(v36, v38);
  v83 = v38;
  v84 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v76 + 8);
  v41(v29, OpaqueTypeMetadata2);
  v42 = v70;
  v43 = v56;
  v60(v70, a1, v56);

  v44 = v68;
  Shape.fillShadow(color:radius:x:y:)();

  v62(v42, v43);
  ClarityUIShadowedContent.innerShadowMatrix(opacity:)(&v83, *(a1 + v34[20]));
  v45 = v65;
  v46 = v72;
  View._colorMatrix(_:)();
  v57(v44, v46);
  v47 = v66;
  v48 = OpaqueTypeConformance2;
  static ViewBuilder.buildExpression<A>(_:)(v45, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41(v45, OpaqueTypeMetadata2);
  v49 = *(v76 + 16);
  v50 = v67;
  v51 = v75;
  v49(v67, v75, OpaqueTypeMetadata2);
  v81[0] = v50;
  v52 = v50;
  v53 = v69;
  v49(v69, v47, OpaqueTypeMetadata2);
  v81[1] = v53;
  v80[0] = OpaqueTypeMetadata2;
  v80[1] = OpaqueTypeMetadata2;
  v78 = v48;
  v79 = v48;
  static ViewBuilder.buildBlock<each A>(_:)(v81, 2, v80);
  v41(v47, OpaqueTypeMetadata2);
  v41(v51, OpaqueTypeMetadata2);
  v41(v53, OpaqueTypeMetadata2);
  return (v41)(v52, OpaqueTypeMetadata2);
}

void *ClarityUIShadowedContent.innerShadowMatrix(opacity:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  MEMORY[0x1BFB1E170](__src);
  memcpy(__dst, __src, sizeof(__dst));
  result = memcpy(a1, __dst, 0x48uLL);
  a1[18] = -a2;
  a1[19] = a2;
  return result;
}

uint64_t ClarityUIShadowedContent.shadowRadius.getter(uint64_t result)
{
  if (*(v1 + *(result + 60)) == 1 && (*(v1 + *(result + 52)) & 1) == 0)
  {
    return MEMORY[0x1EEDDA068]();
  }

  return result;
}

uint64_t ClarityUIShadowedContent.shadowXOffset.getter(uint64_t result)
{
  if (*(v1 + *(result + 60)) == 1 && (*(v1 + *(result + 52)) & 1) == 0)
  {
    return static ClarityUIMetrics.buttonShadowOffset.getter();
  }

  return result;
}

double ClarityUIShadowedContent.shadowYOffset.getter(uint64_t a1)
{
  result = 0.0;
  if (*(v1 + *(a1 + 60)) == 1 && (*(v1 + *(a1 + 52)) & 1) == 0)
  {
    static ClarityUIMetrics.buttonShadowOffset.getter();
    return v3;
  }

  return result;
}

uint64_t type metadata completion function for ClarityUIShadowedContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClarityUIShadowedContent(uint64_t result, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v4 = *(a3 + 16);
  v5 = *(v6 + 8);
  v7 = *(*(v5 - 8) + 84);
  v8 = *(v4 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(*(v5 - 8) + 84);
  }

  v11 = *(*(v5 - 8) + 64);
  v12 = *(v8 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v4 - 8) + 64) + 7;
  if (v13 >= a2)
  {
LABEL_28:
    if (v7 == v13)
    {
      v9 = *(*(v5 - 8) + 84);
      v4 = v5;
    }

    else
    {
      result = (result + v11 + v12 + 3) & ~v12;
      if (v9 != v13)
      {
        v24 = *((v14 + result) & 0xFFFFFFFFFFFFFFF8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }

    return __swift_getEnumTagSinglePayload(result, v9, v4);
  }

  v15 = ((((((((((((((v14 + ((v11 + v12 + 3) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v13;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 2:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *(result + v15);
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_25:
      v22 = v21 - 1;
      if (v17)
      {
        v22 = 0;
        v23 = *result;
      }

      else
      {
        v23 = 0;
      }

      result = v13 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void storeEnumTagSinglePayload for ClarityUIShadowedContent(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 24);
  v8 = *(a4 + 16);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(*(v7 - 8) + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = *(*(v7 - 8) + 64);
  v14 = *(v10 + 80);
  v15 = *(*(v8 - 8) + 64) + 7;
  v16 = ((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v20)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_48:
        __break(1u);
        return;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if (v9 == v12)
        {
          v11 = v9;
        }

        else
        {
          a1 = (&a1[v13 + 3 + v14] & ~v14);
          if (v11 != v12)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v23 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v23 = (a2 - 1);
            }

            *(&a1[v15] & 0xFFFFFFFFFFFFFFF8) = v23;
            return;
          }

          v7 = v8;
        }

        __swift_storeEnumTagSinglePayload(a1, a2, v11, v7);
        break;
    }
  }

  else
  {
    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v12;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v12 + a2;
      bzero(a1, ((((((((((((((v15 + ((v13 + v14 + 3) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *v6 = v22;
    }

    switch(v20)
    {
      case 1:
        *(v6 + v16) = v21;
        break;
      case 2:
        *(v6 + v16) = v21;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(v6 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t PlayerParticipantInfo.init(handle:contacts:isUnknownCaller:location:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

void *specialized VideoMessagePlayerManager.init(videoMessageViewModel:)(uint64_t a1)
{
  v1[2] = 0;
  v1[4] = MEMORY[0x1E69E7CD0];
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[3] = a1;
  return v1;
}

uint64_t specialized VideoMessagePlayerManager.setupVideo(with:)(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;

  v4 = [a1 currentItem];
  if (v4)
  {
    v5 = v4;

    v6 = v5;
    specialized VideoMessagePlayerManager.fetchDuration(from:)(v6);
  }

  return specialized VideoMessagePlayerManager.setUpNotifications()();
}

void *specialized VideoMessagePlayerManager.fetchDuration(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  result = (*((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x120))(&v15, v5);
  if ((v15 & 1) == 0)
  {
    v9 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = a1;
    v12 = a1;
    v13 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v11);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sScPSgMd);
    *(v2 + 40) = v13;
  }

  return result;
}

uint64_t specialized VideoMessagePlayerManager.setUpNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for NSNotificationCenter.Publisher();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  swift_beginAccess();
  v15 = *(v0 + 16);
  if (v15)
  {
    v15 = [v15 currentItem];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() defaultCenter];
      v30 = v2;
      v18 = v17;
      v19 = MEMORY[0x1BFB209B0](0xD000000000000028, 0x80000001BC5130D0);
      v29 = v12;
      v20 = v19;
      v21 = v16;
      v28 = v11;
      v22 = v21;
      NSNotificationCenter.publisher(for:object:)();

      v23 = [objc_opt_self() mainRunLoop];
      v33 = v23;
      v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v24);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
      _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
      Publisher.receive<A>(on:options:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

      v2 = v30;
      (*(v31 + 8))(v10, v8);
      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd);
      v25 = v28;
      Publisher<>.sink(receiveValue:)();

      (*(v29 + 8))(v14, v25);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  (*((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x108))(v15);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageControlsView.PlayState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd);
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v4, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

id specialized VideoMessagePlayerManager.setupVideo(with:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVAsset);
  (*(v3 + 16))(v5, a1, v2);
  v7 = @nonobjc AVAsset.__allocating_init(url:)(v5, v6);
  v8 = objc_allocWithZone(MEMORY[0x1E69880B0]);
  v9 = @nonobjc AVPlayerItem.init(asset:automaticallyLoadedAssetKeys:)(v7, &outlined read-only object #0 of specialized VideoMessagePlayerManager.setupVideo(with:));
  v10 = [objc_allocWithZone(MEMORY[0x1E6988098]) initWithPlayerItem_];
  specialized VideoMessagePlayerManager.setupVideo(with:)(v10);

  return v10;
}

void specialized closure #1 in VideoMessagePlayerManager.setUpNotifications()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong && (v2 = *(Strong + 24), v3 = , v4 = (*((*v1 & *v2) + 0xF0))(v3), v2, !v4) || (swift_beginAccess(), (v5 = swift_weakLoadStrong()) != 0) && (v6 = *(v5 + 24), v7 = , v8 = (*((*v1 & *v6) + 0xF0))(v7), v6, v8 == 1))
  {
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 24);

      (*((*v1 & *v10) + 0xF8))(3);
    }

    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      swift_beginAccess();
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = v13;

        v15 = *(MEMORY[0x1E6960CC0] + 16);
        v16[0] = *MEMORY[0x1E6960CC0];
        v16[1] = *(MEMORY[0x1E6960CC0] + 8);
        v16[2] = v15;
        [v14 seekToTime_];
      }

      else
      {
      }
    }
  }
}

uint64_t specialized closure #2 in VideoMessagePlayerManager.setUpNotifications()(char a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    specialized VideoMessagePlayerManager.updatePlayer(with:)(a1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized VideoMessagePlayerManager.updateHostController(using:)(a1);
  }

  return result;
}

uint64_t specialized VideoMessagePlayerManager.updatePlayer(with:)(unsigned __int8 a1)
{
  if (a1 >= 2u)
  {
    swift_beginAccess();
    v4 = *(v1 + 16);
    if (v4)
    {
      [v4 setRate_];
    }
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      LODWORD(v2) = 1.0;
      [v3 setRate_];
    }
  }

  return swift_endAccess();
}

void specialized VideoMessagePlayerManager.updateHostController(using:)(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v6[4] = partial apply for specialized closure #1 in VideoMessagePlayerManager.updateHostController(using:);
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed () -> ();
  v6[3] = &block_descriptor_124;
  v5 = _Block_copy(v6);

  [v3 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

uint64_t specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), 0, 0);
}

uint64_t specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v0[8] = type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v3, v2);
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 48);

  *(v0 + 80) = [v1 asset];
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSo6CMTimeaGMd);
  *(v0 + 88) = static AVPartialAsyncProperty<A>.duration.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:);
  OUTLINED_FUNCTION_3_0();

  return MEMORY[0x1EEE68140]();
}

{
  v2 = *v1;

  v3 = *(v2 + 80);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[16];
  v0[19] = v0[17];
  v2 = v0[18];
  v0[13] = v1;
  v0[14] = v2;
  v0[15] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v4, v3);
}

{

  CMTime.seconds.getter();
  if (v0 <= 0.0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for timeFormatter != -1)
  {
    OUTLINED_FUNCTION_3_173();
  }

  v1 = static NSDateComponentsFormatter.timeFormatter;
  CMTime.seconds.getter();
  v2 = [v1 stringFromTimeInterval_];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_17_73();
    v3 = static String.localizedStringWithFormat(_:_:)();
    v5 = v6;
  }

  OUTLINED_FUNCTION_5_18();
  (*(v7 + 344))(v3, v5);
  OUTLINED_FUNCTION_5_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

Swift::String __swiftcall TimeFormattable.durationString()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 8);
  if (v4() <= 0.0)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for timeFormatter != -1)
  {
    OUTLINED_FUNCTION_3_173();
  }

  v5 = static NSDateComponentsFormatter.timeFormatter;
  (v4)(v3, v2);
  v6 = [v5 stringFromTimeInterval_];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
LABEL_6:
    OUTLINED_FUNCTION_17_73();

    v10 = static String.localizedStringWithFormat(_:_:)();
  }

  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void specialized closure #1 in VideoMessagePlayerManager.updateHostController(using:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      v6 = [v5 navigationBar];

      v7 = 1.0;
      if (!a2)
      {
        v7 = 0.0;
      }

      [v6 setAlpha_];
    }
  }
}

uint64_t VideoMessagePlayerViewModel.showsSaveInMenu.getter()
{
  OUTLINED_FUNCTION_5_18();
  if ((*(v0 + 528))())
  {
    return [objc_opt_self() isCommunicationSafetyEnabled] ^ 1;
  }

  else
  {
    return 0;
  }
}

id VideoMessagePlayerViewController.controls.getter()
{
  v1 = v0;
  v2 = type metadata accessor for VideoMessageControlsView(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls;
  v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
    v11 = VideoMessagePlayerViewController.playerStateManager.getter();
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v12 = v11[2];
    v13 = v12;

    *(v6 + v2[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd);
    swift_storeEnumTagMultiPayload();
    *(v6 + v2[6]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *v6 = swift_getKeyPath();
    *(v6 + 8) = 0;
    v14 = (v6 + v2[7]);
    type metadata accessor for VideoMessagePlayerViewModel(0);
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type VideoMessagePlayerViewModel and conformance VideoMessagePlayerViewModel, type metadata accessor for VideoMessagePlayerViewModel);
    *v14 = ObservedObject.init(wrappedValue:)();
    v14[1] = v15;
    v16 = v6 + v2[8];
    State.init(wrappedValue:)();
    *v16 = v21;
    *(v16 + 8) = v22;
    *(v6 + v2[9]) = v12;
    *(v6 + v2[10]) = 0x3FC51EB851EB851FLL;
    *(v6 + v2[11]) = 0x4077C00000000000;
    _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type VideoMessageControlsView and conformance VideoMessageControlsView, type metadata accessor for VideoMessageControlsView);
    v17 = View.inLockScreenHostingController()();
    outlined destroy of VideoMessageControlsView(v6);
    v18 = *(v1 + v7);
    *(v1 + v7) = v17;
    v9 = v17;

    v8 = 0;
  }

  v19 = v8;
  return v9;
}

void *VideoMessagePlayerViewController.playerStateManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25VideoMessagePlayerManagerCySo8AVPlayerCGMd);
    swift_allocObject();
    v2 = specialized VideoMessagePlayerManager.init(videoMessageViewModel:)(v4);
    *(v3 + v1) = v2;
    v5 = v4;
  }

  return v2;
}

id VideoMessagePlayerViewController.init(viewModel:participantInfo:)(uint64_t a1, _OWORD *a2)
{
  v5 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x1E69880E0]) init];
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel) = a1;
  v6 = (v2 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo);
  v7 = a2[1];
  *v6 = *a2;
  v6[1] = v7;
  v8 = a2[3];
  v6[2] = a2[2];
  v6[3] = v8;
  v12 = type metadata accessor for VideoMessagePlayerViewController();
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v9, v10, v2, v12);
}

id VideoMessagePlayerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void VideoMessagePlayerViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69880E0]) init];
  *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___playerStateManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidLoad()()
{
  v1 = v0;
  v30[3] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for VideoMessagePlayerViewController();
  v29.receiver = v0;
  v29.super_class = v10;
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v13 = [objc_opt_self() blackColor];
  [v12 setBackgroundColor_];

  v14 = objc_opt_self();
  v15 = [v14 sharedInstance];
  v16 = *MEMORY[0x1E6958068];
  v17 = *MEMORY[0x1E6958148];
  v30[0] = 0;
  v18 = [v15 setCategory:v16 mode:v17 options:14 error:v30];

  if (v18)
  {
    v19 = v30[0];
  }

  else
  {
    v20 = v30[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v22 = [v14 sharedInstance];
  v30[0] = 0;
  v23 = [v22 setActive:1 error:v30];

  if (v23)
  {
    v24 = v30[0];
  }

  else
  {
    v25 = v30[0];
    v26 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  VideoMessagePlayerViewController.configureNavigationBar()();
  VideoMessagePlayerViewController.configureNavigationTitleView()();
  outlined init with copy of Notice?(*&v1[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel] + OBJC_IVAR____TtC15ConversationKit27VideoMessagePlayerViewModel_videoMessageURL, v9, &_s10Foundation3URLVSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v9, v2);
    v27 = v1;
    VideoMessagePlayerViewController.setupVideo(with:)(v6);
    (*(v3 + 8))(v6, v2);
  }

  VideoMessagePlayerViewController.addControls()();
  VideoMessagePlayerViewController.playerStateManager.getter();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for VideoMessagePlayerViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void VideoMessagePlayerViewController.configureNavigationBar()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel);
  OUTLINED_FUNCTION_2_177();
  if ((*(v2 + 624))() & 1) != 0 || (OUTLINED_FUNCTION_2_177(), ((*(v3 + 672))()))
  {
    OUTLINED_FUNCTION_2_177();
    (*(v4 + 480))(v78);
    v5 = v78[0];
    v75 = v78[1];
    v6 = v78[2];
    v7 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8UIActionCSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BB980;
    v9 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
    v10 = objc_opt_self();
    v11 = [v10 conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_1_194(0xD000000000000015, 0x80000001BC516500, 0x61737265766E6F43);

    OUTLINED_FUNCTION_109();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v75;
    v12[4] = v6;
    v12[5] = v7;

    v72 = partial apply for closure #1 in VideoMessagePlayerViewController.configureNavigationBar();
    v73 = v12;
    OUTLINED_FUNCTION_0_226();
    *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = v1;
    v14 = VideoMessagePlayerViewModel.showsSaveInMenu.getter();
    v15 = 0;
    v16 = v77;
    if (v14)
    {
      v17 = [v10 conversationKit];
      OUTLINED_FUNCTION_5_64();
      OUTLINED_FUNCTION_1_194(0xD000000000000012, 0x80000001BC516270, 0x61737265766E6F43);

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = partial apply for closure #2 in VideoMessagePlayerViewController.configureNavigationBar();
      v73 = v18;
      OUTLINED_FUNCTION_0_226();
      v13 = v9;
      v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    *(inited + 40) = v15;
    v19 = [v10 conversationKit];
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_1_194(0xD00000000000001ALL, 0x80000001BC516520, 0x61737265766E6F43);

    OUTLINED_FUNCTION_109();
    v20 = swift_allocObject();
    v20[2] = v5;
    v20[3] = v75;
    v20[4] = v6;
    v20[5] = v7;

    OUTLINED_FUNCTION_0_226();
    v21 = 0;
    *(inited + 48) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v22 = MEMORY[0x1E69E7CC0];
    v78[0] = MEMORY[0x1E69E7CC0];
    while (v21 != 3)
    {
      if (v21 > 2)
      {
        __break(1u);
        goto LABEL_30;
      }

      v23 = *(inited + 8 * v21++ + 32);
      if (v23)
      {
        v24 = v23;
        MEMORY[0x1BFB20CC0](v24, v25, v26, v27, v28);
        if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v22 = v78[0];
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (!(v22 >> 62))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
      preferredElementSize = v22;
      goto LABEL_14;
    }

LABEL_30:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();

LABEL_14:

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    OUTLINED_FUNCTION_0_226();
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, v31, v81, v32, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2).super.super.isa;
    v34 = [v77 navigationItem];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v35 = @nonobjc UIImage.__allocating_init(systemName:)();
    v36 = isa;
    v80.value.super.isa = v35;
    v80.is_nil = 0;
    v82.value.super.super.isa = isa;
    v37.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v80, v82, v83).super.super.isa;
    [v34 setRightBarButtonItem_];
  }

  else
  {
    OUTLINED_FUNCTION_2_177();
    v16 = v77;
    if (((*(v68 + 528))() & 1) == 0)
    {
      goto LABEL_16;
    }

    v69 = [v77 navigationItem];
    v79 = type metadata accessor for VideoMessagePlayerViewController();
    v78[0] = v77;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v70 = v77;
    @nonobjc UIBarButtonItem.init(barButtonSystemItem:target:action:)();
    v37.super.super.isa = v71;
    [v69 setRightBarButtonItem_];
  }

LABEL_16:
  v38 = [v16 navigationItem];
  [v38 setLargeTitleDisplayMode_];

  v39 = [v16 navigationController];
  if (!v39 || (v40 = v39, v41 = [v39 navigationBar], v40, v42 = objc_msgSend(v41, sel_standardAppearance), v41, !v42))
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  v43 = swift_initStackObject();
  v44 = MEMORY[0x1E69DB650];
  *(v43 + 16) = xmmword_1BC4BA940;
  v45 = *v44;
  *(v43 + 32) = *v44;
  v46 = objc_opt_self();
  v74 = v45;
  v47 = [v46 systemWhiteColor];
  v48 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  *(v43 + 64) = v48;
  *(v43 + 40) = v47;
  type metadata accessor for NSAttributedStringKey(0);
  _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  OUTLINED_FUNCTION_18_65();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_18_65();
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v42 setTitleTextAttributes_];

  v76 = [objc_allocWithZone(MEMORY[0x1E69DC710]) initWithStyle_];
  v50 = [v76 normal];
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1BC4BA940;
  *(v51 + 32) = v74;
  v52 = v46;
  v53 = [v46 systemWhiteColor];
  *(v51 + 64) = v48;
  *(v51 + 40) = v53;
  OUTLINED_FUNCTION_18_65();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_18_65();
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v50 setTitleTextAttributes_];

  v55 = [v42 backButtonAppearance];
  v56 = [v55 normal];
  v57 = [v55 normal];
  v58 = [v57 backgroundImage];

  if (v58)
  {
    v59 = [v52 systemWhiteColor];
    v60 = [v58 imageWithTintColor_];
  }

  else
  {
    v60 = 0;
  }

  [v56 setBackgroundImage_];

  [v42 setButtonAppearance_];
  [v42 setBackButtonAppearance_];
  v61 = [v77 navigationController];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 navigationBar];

    [v63 setStandardAppearance_];
  }

  v64 = [v77 navigationController];
  if (v64)
  {
    v65 = v64;
    v66 = [v64 navigationBar];

    v67 = [v52 systemWhiteColor];
    [v66 setTintColor_];
  }
}

void closure #2 in VideoMessagePlayerViewController.configureNavigationBar()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    VideoMessagePlayerViewController.save()();
  }
}

void VideoMessagePlayerViewController.configureNavigationTitleView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v33 - v3;
  v5 = type metadata accessor for VoicemailDetailNavigationTitleView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_8();
  v6 = &v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo];
  v7 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 16];
  v36 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo];
  v37 = v7;
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 48];
  v38 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_participantInfo + 32];
  v39 = v8;
  v9 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v34 = v4;
    v35 = v1;
    v10 = v38;
    v11 = v37;
    v12 = v36;
    v13 = BYTE8(v37);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v9;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    *(v14 + 41) = *(v6 + 25);
    *(v14 + 44) = *(v6 + 7);
    *(v14 + 48) = v10;
    *(v14 + 64) = *(v6 + 3);
    type metadata accessor for VoicemailDetailNavigationTitleViewModel();
    v33[1] = swift_allocObject();
    OUTLINED_FUNCTION_19_56();
    OUTLINED_FUNCTION_19_56();

    v15 = v35;
    VoicemailDetailNavigationTitleViewModel.init(messageSenderHandleString:contacts:isUnknownCaller:location:avatarAction:)();
    v16 = type metadata accessor for Date();
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v16);

    OUTLINED_FUNCTION_5_6();
    VoicemailDetailNavigationTitleView.init(viewModel:contactLabel:date:)();
    v17 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy014CommunicationsB0030VoicemailDetailNavigationTitleD0VGMd));
    v18 = _UIHostingView.init(rootView:)();
    v19 = objc_allocWithZone(type metadata accessor for VoicemailNavigationBarTitleViewWrapper());
    v20 = v18;
    v21 = VoicemailNavigationBarTitleViewWrapper.init(titleView:)();
    v22 = [v15 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 == 2)
    {
      v24 = [objc_opt_self() currentDevice];
      v25 = [v24 userInterfaceIdiom];

      if (v25 != 6)
      {
        v26 = [v15 navigationItem];
        v27 = [v26 titleView];

        [v27 removeFromSuperview];
        v28 = [v15 navigationItem];
        [v28 setTitleView_];
      }
    }

    v29 = [v15 navigationItem];
    [v29 setTitleView_];

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v36, &_s15ConversationKit21PlayerParticipantInfoVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_5_18();
    v31 = (*(v30 + 384))();

    outlined bridged method (mbnn) of @objc UIViewController.title.setter(v31, v32, v1);
  }
}

uint64_t VideoMessagePlayerViewController.save()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];

  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_videoMessageViewModel];
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_5_18();
  v5 = (*(v4 + 584))(1);
  (*((*v3 & *v2) + 0x1B0))(v9, v5);
  v6 = v9[6];

  v7 = outlined destroy of VideoMessagePlayerViewActions(v9);
  v6(v7);
}

void VideoMessagePlayerViewController.setupVideo(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 layer];

    v7 = *&v2[OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController_avPlayerLayer];
    [v6 insertSublayer:v7 atIndex:0];

    VideoMessagePlayerViewController.playerStateManager.getter();
    v8 = specialized VideoMessagePlayerManager.setupVideo(with:)(a1);

    [v7 setPlayer_];

    OUTLINED_FUNCTION_5_18();
    (*(v9 + 288))(&v12);
    v10 = MEMORY[0x1E69874E8];
    if (!v12)
    {
      v10 = MEMORY[0x1E69874F0];
    }

    v11 = *v10;
    [v7 setVideoGravity_];
  }

  else
  {
    __break(1u);
  }
}

void VideoMessagePlayerViewController.addControls()()
{
  v1 = VideoMessagePlayerViewController.controls.getter();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = OBJC_IVAR____TtC15ConversationKit32VideoMessagePlayerViewController____lazy_storage___controls;
  v4 = OUTLINED_FUNCTION_11_110();
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = OUTLINED_FUNCTION_12_101();
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_11_110();
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  [v8 addSubview_];

  [v0 addChildViewController_];
  [*&v0[v3] didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC4BA7F0;
  v12 = OUTLINED_FUNCTION_11_110();
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = OUTLINED_FUNCTION_12_101();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = OUTLINED_FUNCTION_83();
  *(v11 + 32) = v18;
  v19 = OUTLINED_FUNCTION_11_110();
  if (!v19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = OUTLINED_FUNCTION_12_101();
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = OUTLINED_FUNCTION_83();
  *(v11 + 40) = v25;
  v26 = OUTLINED_FUNCTION_11_110();
  if (!v26)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = OUTLINED_FUNCTION_12_101();
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = OUTLINED_FUNCTION_83();
  *(v11 + 48) = v32;
  v33 = OUTLINED_FUNCTION_11_110();
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = OUTLINED_FUNCTION_12_101();
  if (!v36)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = objc_opt_self();
  v39 = [v37 bottomAnchor];

  v40 = [v35 constraintEqualToAnchor_];
  *(v11 + 56) = v40;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints_];
}

Swift::Void __swiftcall VideoMessagePlayerViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for VideoMessagePlayerViewController();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1);
  v3 = [objc_opt_self() sharedInstance];
  v9 = 0;
  v4 = [v3 setActive:0 error:&v9];

  v5 = v9;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v9;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

id VideoMessagePlayerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id VideoMessagePlayerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessagePlayerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id one-time initialization function for timeFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setAllowedUnits_];
  static NSDateComponentsFormatter.timeFormatter = v0;
  return result;
}

uint64_t _s15ConversationKit27VideoMessagePlayerViewModelCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of VideoMessageControlsView(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessageControlsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of PlayerParticipantInfo?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in closure #1 in variable initialization expression of static CallScreeningViewModelComposer.viewModel;

  return specialized closure #1 in VideoMessagePlayerManager.fetchDuration(from:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{

  OUTLINED_FUNCTION_109();

  return swift_deallocObject();
}

uint64_t ConversationControlsJoinCountdownActionController.__allocating_init()()
{
  v0 = swift_allocObject();
  ConversationControlsJoinCountdownActionController.init()();
  return v0;
}

uint64_t key path getter for CountdownVoucher.countdownObject : CountdownVoucher@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CountdownVoucher(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  result = outlined destroy of CountdownVoucher(v6);
  *a2 = Strong;
  a2[1] = v8;
  return result;
}

uint64_t CountdownVoucher.countdownObject.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CountdownVoucher.countdownObject.modify(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return DefaultParticipantCaptionsProviderCreator.participantCaptionsProviderDelegate.modify;
}

uint64_t CountdownVoucher.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CountdownVoucher(0) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t CountdownVoucher.hash(into:)()
{
  type metadata accessor for CountdownVoucher(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_178();
  _s10Foundation4UUIDVACSHAAWlTm_9(v0, v1);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t static CountdownVoucher.== infix(_:_:)()
{
  type metadata accessor for CountdownVoucher(0);

  return static UUID.== infix(_:_:)();
}

Swift::Int CountdownVoucher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CountdownVoucher(0);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_178();
  _s10Foundation4UUIDVACSHAAWlTm_9(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CountdownVoucher.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for CountdownVoucher(0);
  return UUID.init()();
}

uint64_t CountdownVoucher.init(countdownObject:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  type metadata accessor for CountdownVoucher(0);
  return UUID.init()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountdownVoucher()
{
  Hasher.init(_seed:)();
  CountdownVoucher.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path setter for ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart : ConversationControlsJoinCountdownActionController.CountdownInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 104))(v6);
}

uint64_t key path setter for ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownEnded : ConversationControlsJoinCountdownActionController.CountdownInfo(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Date?(a1, &v8 - v5);
  return (*(**a2 + 128))(v6);
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v2 + v4, a2);
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.lastCountdownStart.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.deinit()
{
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownStart);
  OUTLINED_FUNCTION_10_92(OBJC_IVAR____TtCC15ConversationKit49ConversationControlsJoinCountdownActionController13CountdownInfo_lastCountdownEnded);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.CountdownInfo.init()()
{
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  return v0;
}

uint64_t ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CountdownVoucher(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &aBlock[-v11];
  *&aBlock[-v11 + 8] = a2;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v13 = *(v3 + 16);
  outlined init with copy of CountdownVoucher(v12, v9);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  outlined init with take of CountdownVoucher(v9, v15 + v14);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:);
  *(v17 + 24) = v15;
  v34 = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v35 = v17;
  OUTLINED_FUNCTION_5_73();
  v31 = 1107296256;
  OUTLINED_FUNCTION_3_174();
  v32 = v18;
  v33 = &block_descriptor_125;
  v19 = _Block_copy(aBlock);
  v20 = v13;

  swift_unknownObjectRetain();

  [v20 performWhileLocked_];

  _Block_release(v19);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else if (one-time initialization token for conversationControls == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_0_0();
LABEL_3:
  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v25, v26, "Generating countdown voucher");
    MEMORY[0x1BFB23DF0](v24, -1, -1);
  }

  v27 = OUTLINED_FUNCTION_45_1();
  outlined init with take of CountdownVoucher(v27, v28);
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Date();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v34 - v13;
  v14 = type metadata accessor for CountdownVoucher(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v20 = (*static Defaults.shared + 1088);
  v21 = *v20;
  v22 = (*v20)();
  outlined init with copy of CountdownVoucher(v38, v16);
  swift_beginAccess();
  specialized Set._Variant.insert(_:)();
  outlined destroy of CountdownVoucher(v19);
  swift_endAccess();
  if (ConversationControlsJoinCountdownActionController.isInCountdown(_:)(a1))
  {
    (*(*a1 + 96))();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v23 = v37;
      v24 = v35;
      v25 = (*(v37 + 32))(v35, v9, v10);
      v26 = (v21)(v25);
      v27 = v36;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v29 = v28;
      v30 = *(v23 + 8);
      v30(v27, v10);
      v30(v24, v10);
      v22 = v26 - v29;
    }
  }

  else
  {
    (*(*a2 + 272))();
  }

  ObjectType = swift_getObjectType();
  v32 = v21();
  return (*(v40 + 8))(ObjectType, v22, v32);
}

uint64_t partial apply for closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(uint64_t a1)
{
  v3 = *(type metadata accessor for CountdownVoucher(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return closure #1 in ConversationControlsJoinCountdownActionController.startCountdownIfNecessary(for:)(a1, v5, v1 + v4, v7, v8);
}

uint64_t ConversationControlsJoinCountdownActionController.invalidate(voucher:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit16CountdownVoucherVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    OUTLINED_FUNCTION_120(&dword_1BBC58000, v7, v8, "Invalidating countdown voucher");
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit16CountdownVoucherVSgMd);
  return swift_endAccess();
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.storeCountdownEndedDate()()
{
  [*(v0 + 32) invalidate];
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  v2 = *(v0 + 16);
  v10 = specialized thunk for @callee_guaranteed (@guaranteed ConversationControlsJoinCountdownActionController.CountdownInfo) -> ();
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  OUTLINED_FUNCTION_3_174();
  v8 = v3;
  v9 = &block_descriptor_7_1;
  v4 = _Block_copy(&v6);
  v5 = v2;

  [v5 performWhileLocked_];

  _Block_release(v4);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.storeCountdownEndedDate()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  Date.init()();
  v5 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return (*(*a1 + 128))(v4);
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()()
{
  v1 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  v6 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  if ((*(v1 + 48) & 1) == 0)
  {
    *(v1 + 48) = 1;
    type metadata accessor for OS_dispatch_queue();
    (*(v15 + 104))(v19, *MEMORY[0x1E69E7F88], v13);
    v24 = static OS_dispatch_queue.global(qos:)();
    (*(v15 + 8))(v19, v13);
    v20 = swift_allocObject();
    swift_weakInit();
    v29 = partial apply for closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown();
    v30 = v20;
    OUTLINED_FUNCTION_5_73();
    v26 = 1107296256;
    v27 = thunk for @escaping @callee_guaranteed () -> ();
    v28 = &block_descriptor_13_5;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v12, v5, v21);
    _Block_release(v21);

    v22 = OUTLINED_FUNCTION_309();
    v23(v22);
    (*(v8 + 8))(v12, v6);
  }
}

uint64_t closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()()
{
  aBlock[10] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v52 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v49 = v1;
    v17 = [objc_opt_self() conversationKit];
    v18 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0x776F64746E756F63, 0xEE00746165622D6ELL, 6709603, 0xE300000000000000, v17);

    if (v18)
    {
      v48 = v0;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = v6;
      (*(v6 + 32))(v14, v11, v5);
      v19 = objc_opt_self();
      v20 = [v19 sharedInstance];
      v21 = *MEMORY[0x1E6958068];
      v22 = *MEMORY[0x1E6958130];
      aBlock[0] = 0;
      v23 = [v20 setCategory:v21 mode:v22 options:2 error:aBlock];

      if (v23)
      {
        v24 = aBlock[0];
        v25 = [v19 sharedInstance];
        aBlock[0] = 0;
        v26 = [v25 setActive:1 error:aBlock];

        v27 = aBlock[0];
        if (v26)
        {
          v28 = v50;
          (*(v50 + 16))(v8, v14, v5);
          objc_allocWithZone(MEMORY[0x1E6958448]);
          v29 = v27;
          v30 = @nonobjc AVAudioPlayer.init(contentsOf:)(v8);
          v39 = *(v16 + 40);
          *(v16 + 40) = v30;
          v40 = v30;

          if (v40)
          {
            LODWORD(v41) = 1.0;
            [v40 setVolume_];
          }

          type metadata accessor for OS_dispatch_queue();
          v47 = static OS_dispatch_queue.main.getter();
          v42 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = partial apply for closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown();
          aBlock[5] = v42;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_60_0;
          v43 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v44 = v52;
          v45 = v48;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v46 = v47;
          MEMORY[0x1BFB215C0](0, v4, v44, v43);
          _Block_release(v43);

          (*(v49 + 8))(v44, v45);
          (*(v51 + 8))(v4, v53);
          return (*(v28 + 8))(v14, v5);
        }

        v33 = aBlock[0];
        v32 = _convertNSErrorToError(_:)();
      }

      else
      {
        v31 = aBlock[0];
        v32 = _convertNSErrorToError(_:)();
      }

      swift_willThrow();
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BC4BA940;
      aBlock[0] = v32;
      v35 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      v36 = String.init<A>(reflecting:)();
      v38 = v37;
      *(v34 + 56) = MEMORY[0x1E69E6158];
      *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v34 + 32) = v36;
      *(v34 + 40) = v38;
      os_log(_:dso:log:type:_:)();

      return (*(v50 + 8))(v14, v5);
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

  return result;
}

uint64_t closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    (*(*result + 280))(result);
    v2 = *(v1 + 16);
    aBlock[4] = specialized thunk for @callee_guaranteed (@guaranteed ConversationControlsJoinCountdownActionController.CountdownInfo) -> ();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentLinkCallItems) -> ();
    aBlock[3] = &block_descriptor_63_2;
    v3 = _Block_copy(aBlock);
    v4 = v2;

    [v4 performWhileLocked_];

    _Block_release(v3);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConversationControlsJoinCountdownActionController.setupPlayerAndStartCountdown()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  Date.init()();
  v5 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  return (*(*a1 + 104))(v4);
}

Swift::Void __swiftcall ConversationControlsJoinCountdownActionController.startCountingDown()()
{
  v1 = v0;
  v2 = type metadata accessor for CountdownVoucher(0);
  v39 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v5 = v4 - v3;
  [*(v0 + 32) invalidate];
  v6 = *(v0 + 32);
  *(v0 + 32) = 0;

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v37 = [objc_allocWithZone(MEMORY[0x1E69DCAE8]) initWithStyle_];
  [v37 impactOccurred];
  swift_beginAccess();
  v7 = *(v0 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    outlined init with copy of CountdownVoucher(*(v7 + 48) + *(v39 + 72) * (v15 | (v12 << 6)), v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = *(v5 + 8);
    outlined destroy of CountdownVoucher(v5);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v21;
      }

      v18 = v13[2];
      v19 = v18 + 1;
      if (v18 >= v13[3] >> 1)
      {
        v36 = v18 + 1;
        v22 = v13[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v18 = v22;
        v19 = v36;
        v13 = v23;
      }

      v13[2] = v19;
      v20 = &v13[2 * v18];
      v20[4] = Strong;
      v20[5] = v17;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 56 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v24 = 0;
  v25 = v13[2];
  v26 = v13 + 5;
  while (v25 != v24)
  {
    if (v24 >= v13[2])
    {
      goto LABEL_22;
    }

    ++v24;
    v27 = *v26;
    ObjectType = swift_getObjectType();
    v29 = *(v27 + 16);
    swift_unknownObjectRetain();
    v29(ObjectType, v27);
    swift_unknownObjectRelease();
    v26 += 2;
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v38;
  aBlock[4] = partial apply for closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown();
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_23_0;
  v33 = _Block_copy(aBlock);

  v34 = [v30 scheduledTimerWithTimeInterval:1 repeats:v33 block:1.0];
  _Block_release(v33);
  v35 = *(v1 + 32);
  *(v1 + 32) = v34;

  if (one-time initialization token for conversationKit != -1)
  {
LABEL_23:
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CountdownVoucher(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  ObjectType = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    v10 = *(a3 + 16);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v12;
      v3 = v9[2];
      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown();
      *(v13 + 24) = v9;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed RecentsLinkControllerModel) -> ();
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RecentLinkCallItems) -> ();
      aBlock[3] = &block_descriptor_56_2;
      v14 = _Block_copy(aBlock);
      v15 = v3;

      [v15 performWhileLocked_];

      _Block_release(v14);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if ((v14 & 1) == 0)
      {
        swift_beginAccess();
        v3 = *(a3 + 16);
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_5;
        }

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_5:
    v16 = (*(*static Defaults.shared + 1088))();
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        if (v3 < v16)
        {
        }

        (*(*v9 + 264))();
        swift_beginAccess();
        v17 = v9[3];
        v18 = 1 << *(v17 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v17 + 56);
        v21 = (v18 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v22 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        while (v20)
        {
LABEL_17:
          v25 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
          outlined init with copy of CountdownVoucher(*(v17 + 48) + *(v39 + 72) * (v25 | (v22 << 6)), ObjectType);
          Strong = swift_unknownObjectWeakLoadStrong();
          v3 = *(ObjectType + 1);
          outlined destroy of CountdownVoucher(ObjectType);
          if (Strong)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v23 = v30;
            }

            v27 = *(v23 + 16);
            v28 = v27 + 1;
            if (v27 >= *(v23 + 24) >> 1)
            {
              v38 = v27 + 1;
              v31 = v27;
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v27 = v31;
              v28 = v38;
              v23 = v32;
            }

            *(v23 + 16) = v28;
            v29 = v23 + 16 * v27;
            *(v29 + 32) = Strong;
            *(v29 + 40) = v3;
          }
        }

        while (1)
        {
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (v24 >= v21)
          {
            break;
          }

          v20 = *(v17 + 56 + 8 * v24);
          ++v22;
          if (v20)
          {
            v22 = v24;
            goto LABEL_17;
          }
        }

        v33 = 0;
        v34 = *(v23 + 16);
        v35 = (v23 + 40);
        while (v34 != v33)
        {
          if (v33 >= *(v23 + 16))
          {
            goto LABEL_32;
          }

          ++v33;
          v3 = *v35;
          ObjectType = swift_getObjectType();
          v36 = v3[4];
          swift_unknownObjectRetain();
          v36(ObjectType, v3);
          swift_unknownObjectRelease();
          v35 += 2;
        }

        if (one-time initialization token for conversationKit != -1)
        {
          goto LABEL_39;
        }

LABEL_28:
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_38;
  }

  return result;
}

void closure #1 in closure #3 in ConversationControlsJoinCountdownActionController.startCountingDown()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CountdownVoucher(0);
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a2 + 40) play];
  swift_beginAccess();
  v8 = *(a2 + 24);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    outlined init with copy of CountdownVoucher(*(v8 + 48) + *(v4 + 72) * (v16 | (v13 << 6)), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v7 + 1);
    outlined destroy of CountdownVoucher(v7);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v22;
      }

      v19 = v14[2];
      v20 = v19 + 1;
      if (v19 >= v14[3] >> 1)
      {
        v31 = v19 + 1;
        v23 = v19;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v19 = v23;
        v20 = v31;
        v14 = v24;
      }

      v14[2] = v20;
      v21 = &v14[2 * v19];
      v21[4] = Strong;
      v21[5] = v18;
    }
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

      v25 = 0;
      v26 = v14[2];
      v27 = v14 + 5;
      while (v26 != v25)
      {
        if (v25 >= v14[2])
        {
          goto LABEL_21;
        }

        ++v25;
        v28 = *v27;
        ObjectType = swift_getObjectType();
        v30 = *(v28 + 24);
        swift_unknownObjectRetain();
        v30(ObjectType, v28);
        swift_unknownObjectRelease();
        v27 += 2;
      }

      return;
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t ConversationControlsJoinCountdownActionController.isInCountdown(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v59 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  (*(*a1 + 96))(v25);
  if (OUTLINED_FUNCTION_20_7(v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s10Foundation4DateVSgMd);
LABEL_12:
    v44 = 0;
    return v44 & 1;
  }

  v63 = v4;
  v28 = *(v18 + 32);
  v28(v27, v15, v16);
  Date.init()();
  if (static Date.> infix(_:_:)())
  {
LABEL_11:
    v41 = *(v18 + 8);
    v42 = OUTLINED_FUNCTION_309();
    v41(v42);
    v43 = OUTLINED_FUNCTION_45_1();
    v41(v43);
    goto LABEL_12;
  }

  v60 = v28;
  Date.timeIntervalSince(_:)();
  v30 = v29;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v31 = *(*static Defaults.shared + 1088);
  v61 = *static Defaults.shared + 1088;
  v62 = v31;
  v32 = v31();
  v33 = *(*a1 + 120);
  if (v30 <= v32 + 0.01)
  {
    v33();
    if (OUTLINED_FUNCTION_20_7(v12) == 1)
    {
      v45 = *(v18 + 8);
      v46 = OUTLINED_FUNCTION_309();
      v45(v46);
      v47 = OUTLINED_FUNCTION_45_1();
      v45(v47);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v48 = v65;
      v60(v65, v12, v16);
      _s10Foundation4UUIDVACSHAAWlTm_9(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        v52 = v64;
        static Date.+ infix(_:_:)();
        v53 = dispatch thunk of static Comparable.< infix(_:_:)();
        v54 = *(v18 + 8);
        v54(v52, v16);
        v54(v48, v16);
        v55 = OUTLINED_FUNCTION_309();
        (v54)(v55);
        v56 = OUTLINED_FUNCTION_45_1();
        (v54)(v56);
        v44 = v53 ^ 1;
        return v44 & 1;
      }

      v49 = *(v18 + 8);
      v49(v48, v16);
      v50 = OUTLINED_FUNCTION_309();
      (v49)(v50);
      v51 = OUTLINED_FUNCTION_45_1();
      (v49)(v51);
    }

    v44 = 1;
    return v44 & 1;
  }

  v65 = *(*a1 + 120);
  v33();
  v34 = OUTLINED_FUNCTION_20_7(v9);
  v35 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s10Foundation4DateVSgMd);
  if (v34 == 1)
  {
LABEL_10:
    (v62)(v35);
    v40 = v63;
    static Date.+ infix(_:_:)();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v16);
    (*(*a1 + 128))(v40);
    goto LABEL_11;
  }

  v36 = v66;
  (v65)(v35);
  result = OUTLINED_FUNCTION_20_7(v36);
  if (result != 1)
  {
    v38 = static Date.< infix(_:_:)();
    v39 = *(v18 + 8);
    v35 = v39(v36, v16);
    if ((v38 & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_309();
      (v39)(v57);
      v58 = OUTLINED_FUNCTION_45_1();
      (v39)(v58);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_9(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for CountdownVoucher()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for ConversationControlsJoinCountdownActionController.CountdownInfo()
{
  type metadata accessor for Date?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t key path getter for LinkDetailViewModel.canRevokeLink : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t LinkDetailViewModel.$canRevokeLink.setter(uint64_t a1)
{
  return LinkDetailViewModel.$canRevokeLink.setter(a1);
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_21();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t key path getter for LinkDetailViewModel.canShareLink : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.$canRevokeLink : LinkDetailViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t key path getter for LinkDetailViewModel.invitedMemberHandles : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.invitedMemberHandles : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t LinkDetailViewModel.invitedMemberHandles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailViewModel.invitedMemberHandles.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LinkDetailViewModel.invitedMemberHandles.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return LinkDetailHeaderView.invitedMemberHandles.modify;
}

uint64_t key path setter for LinkDetailViewModel.$invitedMemberHandles : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 272))(v7);
}

uint64_t LinkDetailViewModel.$invitedMemberHandles.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

void (*LinkDetailViewModel.$invitedMemberHandles.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailViewModel.$invitedMemberHandles.modify;
}

uint64_t key path getter for LinkDetailViewModel.linkTitle : LinkDetailViewModel@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.linkTitle : LinkDetailViewModel(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 296);

  return v4(v2, v3);
}

uint64_t LinkDetailViewModel.linkTitle.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t LinkDetailViewModel.linkTitle.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LinkDetailViewModel.linkTitle.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_47(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_42_2(KeyPath);
  return AudioPowerSpectrumViewModel.remotePowerSpectrum.modify;
}

uint64_t key path setter for LinkDetailViewModel.$linkTitle : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1, v5);
  return (*(**a2 + 320))(v7);
}

uint64_t LinkDetailViewModel.$linkTitle.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

void (*LinkDetailViewModel.$linkTitle.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  OUTLINED_FUNCTION_46_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  Published.projectedValue.getter();
  swift_endAccess();
  return LinkDetailViewModel.$linkTitle.modify;
}

void LinkDetailViewModel.$invitedMemberHandles.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

double key path getter for LinkDetailViewModel.conversationLink : LinkDetailViewModel@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 336))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.conversationLink : LinkDetailViewModel(id *a1)
{
  v1 = *a1;

  return LinkDetailViewModel.conversationLink.setter();
}

uint64_t LinkDetailViewModel.conversationLink.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_14();
  static Published.subscript.getter();
}

uint64_t LinkDetailViewModel.conversationLink.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LinkDetailViewModel.$conversationLink.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D4LinkV_GMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_25_0(v1, v7);
  v3(v2);
  OUTLINED_FUNCTION_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C4LinkVGMd);
  OUTLINED_FUNCTION_67();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_61();
  return v5(v4);
}

uint64_t LinkDetailViewModel.wantsCustomContactDetailsPresentation.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t LinkDetailViewModel.wantsCustomContactDetailsPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for LinkDetailViewModel.delegate : LinkDetailViewModel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 416);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t LinkDetailViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_15_14();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LinkDetailViewModel.delegate.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  v3 = OUTLINED_FUNCTION_47(v2);
  v4 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  *(v3 + 40) = v0;
  *(v3 + 48) = v4;
  v5 = v0 + v4;
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  *(v1 + 24) = Strong;
  *(v1 + 32) = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for LinkDetailViewModel.recentsCallItem : LinkDetailViewModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for RecentsCallItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of RecentsCallItem(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem;
  swift_beginAccess();
  outlined assign with take of RecentsCallItem(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t LinkDetailViewModel.recentsCallItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem;
  swift_beginAccess();
  return outlined init with copy of RecentsCallItem(v1 + v3, a1);
}

uint64_t LinkDetailViewModel.init(recentsCallItem:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_1();
  v42 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canRevokeLink;
  LOBYTE(v46) = 0;
  Published.init(initialValue:)();
  v35 = v18;
  v36 = v14;
  v19 = *(v14 + 32);
  v19(v2 + v18, v17, v12);
  v20 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canShareLink;
  LOBYTE(v46) = 0;
  Published.init(initialValue:)();
  v34 = v20;
  v19(v2 + v20, v17, v12);
  v21 = v39;
  v22 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__invitedMemberHandles;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8TUHandleCGSgMd);
  Published.init(initialValue:)();
  v37 = v8;
  v38 = v6;
  (*(v8 + 32))(v2 + v22, v11, v6);
  v23 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__linkTitle;
  v46 = 0;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v24 = v40;
  Published.init(initialValue:)();
  (*(v42 + 32))(v2 + v23, v24, v21);
  *(v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_wantsCustomContactDetailsPresentation) = 0;
  v25 = v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate;
  *(v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v26 = v41;
  RecentsCallItem.conversationLink.getter();
  v27 = v46;
  if (v46)
  {
    v29 = v47;
    v28 = v48;
    OUTLINED_FUNCTION_30_2();
    v43 = v27;
    v44 = v29;
    v45 = v28;
    v30 = v27;

    Published.init(initialValue:)();
    swift_endAccess();
    outlined init with copy of RecentsCallItem(v26, v2 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem);
    RecentsCallItem.tuHandles.getter();
    LinkDetailViewModel.invitedMemberHandles.setter();
    type metadata accessor for RecentsCallItem(0);

    LinkDetailViewModel.linkTitle.setter();
    LinkDetailViewModel.validateEditingPermissions()();
    outlined consume of ConversationLink?(v27);
    outlined destroy of RecentsCallItem(v26);
  }

  else
  {
    outlined destroy of RecentsCallItem(v26);
    v31 = *(v36 + 8);
    v31(v2 + v35, v12);
    v31(v2 + v34, v12);
    (*(v37 + 8))(v2 + v22, v38);
    (*(v42 + 8))(v2 + v23, v21);
    outlined destroy of weak InCallControlsBaseCellDelegate?(v25);
    type metadata accessor for LinkDetailViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for LinkDetailViewModel()
{
  result = type metadata singleton initialization cache for LinkDetailViewModel;
  if (!type metadata singleton initialization cache for LinkDetailViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkDetailViewModel.validateEditingPermissions()()
{
  (*(*v0 + 336))(&v3);
  v1 = v3;

  [v1 isLocallyCreated];

  LinkDetailViewModel.canRevokeLink.setter();

  return LinkDetailViewModel.canShareLink.setter();
}

Swift::Void __swiftcall LinkDetailViewModel.joinCall()()
{
  if ((*(*v0 + 408))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);

    swift_unknownObjectRelease();
  }
}

uint64_t LinkDetailViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canRevokeLink;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__canShareLink, v2);
  v5 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__invitedMemberHandles;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo8TUHandleCGSgGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__linkTitle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 8))(v0 + v7);
  v9 = OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel__conversationLink;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit0C4LinkVGMd);
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 8))(v0 + v9);
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_delegate);
  outlined destroy of RecentsCallItem(v0 + OBJC_IVAR____TtC15ConversationKit19LinkDetailViewModel_recentsCallItem);
  return v0;
}

uint64_t LinkDetailViewModel.__deallocating_deinit()
{
  LinkDetailViewModel.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for LinkDetailViewModel()
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<Set<TUHandle>?>, &_sShySo8TUHandleCGSgMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<String?>, &_sSSSgMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<ConversationLink>);
        if (v3 <= 0x3F)
        {
          type metadata accessor for RecentsCallItem(319);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t outlined assign with take of RecentsCallItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsCallItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static InCallControlsMode.== infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1 >> 5)
  {
    case 1:
      if ((a2 & 0xE0) != 0x20)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    case 2:
      if ((a2 & 0xE0) != 0x40)
      {
        goto LABEL_23;
      }

LABEL_13:
      v2 = a2 ^ a1 ^ 1;
      return v2 & 1;
    case 3:
      if (a1 == 96)
      {
        if (a2 == 96)
        {
          goto LABEL_21;
        }
      }

      else if (a2 == 97)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 4:
      if (a1 == 128)
      {
        if (a2 == 128)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      if (a2 != 129)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 5:
      if (a1 == 160)
      {
        if (a2 == 160)
        {
          goto LABEL_21;
        }
      }

      else if (a2 == 161)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 6:
      if (a1 != 192)
      {
        if (a2 != 193)
        {
          goto LABEL_23;
        }

LABEL_21:
        v2 = 1;
        return v2 & 1;
      }

      if (a2 == 192)
      {
        goto LABEL_21;
      }

LABEL_23:
      v2 = 0;
      return v2 & 1;
    default:
      if (a2 >= 0x20u)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
  }
}

unint64_t InCallControlsMode.debugDescription.getter(unsigned __int8 a1)
{
  v2 = a1 >> 5;
  result = 0x6C6C61436E692ELL;
  switch(v2)
  {
    case 1:
      _StringGuts.grow(_:)(20);

      v4 = 0xD000000000000011;
      goto LABEL_7;
    case 2:
      _StringGuts.grow(_:)(29);

      v4 = 0xD00000000000001ALL;
LABEL_7:
      v15 = v4;
      if (a1)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (a1)
      {
        v10 = 0xE400000000000000;
      }

      else
      {
        v10 = 0xE500000000000000;
      }

      MEMORY[0x1BFB20B10](v9, v10);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);
      result = v15;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      OUTLINED_FUNCTION_1_195();
      v7 = v6 | 3;
      if (v8 == 128)
      {
        result = v5;
      }

      else
      {
        result = v7;
      }

      break;
    case 5:
      if (a1 == 160)
      {
        result = 0xD000000000000014;
      }

      else
      {
        result = 0xD000000000000015;
      }

      break;
    case 6:
      OUTLINED_FUNCTION_1_195();
      v13 = v12 | 1;
      if (v14 == 192)
      {
        result = v13;
      }

      else
      {
        result = v11;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t InCallControlsMode.allowsHiding.getter(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (a1 >> 5)
  {
    if (v1 == 6)
    {
      if (a1 != 192)
      {
        return 0;
      }
    }

    else if (v1 != 4 || a1 != 129)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t InCallControlsMode.wantsStagingBehavior.getter(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      if (a1)
      {
        return 0;
      }
    }

    else if (v1 != 3 || a1 != 96)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t InCallControlsMode.supportsShareMenuButton.getter(unsigned __int8 a1)
{
  v1 = 1;
  switch(a1 >> 5)
  {
    case 1:
      v1 = a1 ^ 1;
      break;
    case 2:
    case 4:
    case 5:
    case 6:
      v1 = 0;
      break;
    case 3:
      v1 = a1 == 96;
      break;
    default:
      return v1 & 1;
  }

  return v1 & 1;
}

uint64_t getEnumTagSinglePayload for InCallControlsMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7A)
  {
    if (a2 + 134 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 134) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 135;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v5 >= 0x79)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 134 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 134) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7A)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x79)
  {
    v6 = ((a2 - 122) >> 8) + 1;
    *result = a2 - 122;
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
          *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for InCallControlsMode(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1 | (2 * (v1 >> 5))) - 3;
  }
}

_BYTE *destructiveInjectEnumTag for InCallControlsMode(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    LOBYTE(v2) = *result & 1 | (32 * a2);
  }

  else
  {
    v2 = ((a2 - 3) & 1 | (32 * ((a2 - 3) >> 1))) + 96;
  }

  *result = v2;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__allocating_init()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69D42A0]);
  v1 = @nonobjc SBSRemoteAlertDefinition.init(serviceName:viewControllerClassName:)(0xD000000000000017, 0x80000001BC506380, 0xD000000000000030, 0x80000001BC525320);
  v2 = [objc_opt_self() newHandleWithDefinition:v1 configurationContext:0];

  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__allocating_init(handle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t ConversationControlsShareCardHandle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(void *a1, void *a2)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x1E69E7D40];
  if (v8)
  {
    v10 = a2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v166[0] = v12;
    *v11 = 136315138;
    (*((*v9 & *v5) + 0x928))();
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v166);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[HUDAssets] defaultHUD: mode=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_27();
    a2 = v10;
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_74_11();
  v17 = (*(v16 + 2344))();
  v18 = v17;
  v19 = v17 >> 5;
  if (v19 != 1)
  {
    if (v19 == 2)
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_33();
        *v39 = 0;
        _os_log_impl(&dword_1BBC58000, v37, v38, "[HUDAssets] defaultHUD: notApproved", v39, 2u);
        OUTLINED_FUNCTION_27();
      }

      v40 = [objc_opt_self() conversationKit];
      if (v18)
      {
        v41 = 0xD000000000000014;
        v42 = 0x80000001BC5111A0;
      }

      else
      {
        OUTLINED_FUNCTION_29_3();
        v41 = OUTLINED_FUNCTION_69_11();
        v42 = 0xE700000000000000;
      }

      v77.super.isa = v40;
      OUTLINED_FUNCTION_17_0(v41, v42, 0x61737265766E6F43, 0xEF74694B6E6F6974, v77);

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v35 = OUTLINED_FUNCTION_46();
      goto LABEL_34;
    }

    if (v19 == 3 && v17 == 96)
    {
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v21))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v22, v23, v24, v25, v26, 2u);
        OUTLINED_FUNCTION_27();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v27 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_69_11();
      OUTLINED_FUNCTION_5_5();
      v28.super.isa = v27;
      v32 = OUTLINED_FUNCTION_17_0(v29, 0xE700000000000000, v30, v31, v28);
      v34 = v33;

      v35 = v32;
      v36 = v34;
LABEL_34:
      NSAttributedString.__allocating_init(string:)(*&v35);
LABEL_81:
      OUTLINED_FUNCTION_77_13();
LABEL_82:
      OUTLINED_FUNCTION_44_0();
      return;
    }

LABEL_18:
    v165 = a2;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v44))
    {
      v45 = OUTLINED_FUNCTION_33();
      *v45 = 0;
      _os_log_impl(&dword_1BBC58000, v43, v44, "[HUDAssets] defaultHUD: default case", v45, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_74_11();
    v47 = (*(v46 + 672))();
    v49 = v48;
    swift_getObjectType();
    (*(v49 + 48))(v166);
    v50 = ConversationControlsHelper.badge(forCall:)(v166);
    __swift_destroy_boxed_opaque_existential_1(v166);
    if (ConversationControlsHelper.activityNameAndImage(controlsManager:)(v5))
    {
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_25(v52))
      {
        *OUTLINED_FUNCTION_33() = 0;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v53, v54, v55, v56, v57, 2u);
        OUTLINED_FUNCTION_27();
      }

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_77_13();
      goto LABEL_82;
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v59))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_54_21();
      _os_log_impl(v60, v61, v62, v63, v64, 2u);
      OUTLINED_FUNCTION_27();
    }

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v66))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_54_21();
      _os_log_impl(v67, v68, v69, v70, v71, 2u);
      OUTLINED_FUNCTION_27();
    }

    v72 = *(v49 + 208);
    v73 = OUTLINED_FUNCTION_16_72();
    v163 = v72;
    if (v72(v73) == 1)
    {
      if ([v165 state] == 3 && (v74 = OUTLINED_FUNCTION_16_72(), (v75(v74) & 1) != 0))
      {
        OUTLINED_FUNCTION_74_11();
        v164 = (*(v76 + 2360))() ^ 1;
      }

      else
      {
        LOBYTE(v164) = 0;
      }
    }

    else
    {
      LOBYTE(v164) = 0;
    }

    v78 = OUTLINED_FUNCTION_16_72();
    v162 = v72(v78) != 5 && (v79 = OUTLINED_FUNCTION_16_72(), v72(v79) != 6) && [v165 state] != 4;
    if ([v165 isOneToOneModeEnabled] & 1) == 0 && (v102 = OUTLINED_FUNCTION_16_72(), (v103(v102)) && (objc_msgSend(v165, sel_state) == 2 || objc_msgSend(v165, sel_state) == 3) && (v104 = OUTLINED_FUNCTION_16_72(), v72(v104) != 1) && (v105 = OUTLINED_FUNCTION_16_72(), (v106(v105)))
    {
      v107 = [v165 activeRemoteParticipants];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
      v108 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v109 = specialized Set.count.getter(v108);

      v110 = v109 != 0;
    }

    else
    {
      v110 = 1;
    }

    v161 = v110;
    if ([v165 isOneToOneModeEnabled])
    {
      v111 = OUTLINED_FUNCTION_16_72();
      v113 = v112(v111);
    }

    else
    {
      v113 = 0;
    }

    v114 = OUTLINED_FUNCTION_16_72();
    if ((v115(v114) & 1) == 0 && (OUTLINED_FUNCTION_74_11(), ((*(v116 + 2360))() & 1) == 0) && ([v165 state] != 2) | v113 & 1 && ((v117 = OUTLINED_FUNCTION_16_72(), v163(v117) != 3) || (objc_msgSend(v165, sel_isOneToOneModeEnabled) & 1) != 0 || objc_msgSend(v165, sel_letMeInRequestState)) && objc_msgSend(v165, sel_state))
    {
      if (!((static Platform.current.getter() != 2) | v164 & 1))
      {
LABEL_69:
        v118 = v162 & v161;
LABEL_72:
        v119 = v165;
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_18_0(v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 67109376;
          *(v122 + 4) = v164 & 1;
          *(v122 + 8) = 1024;
          *(v122 + 10) = v118;
          OUTLINED_FUNCTION_54_21();
          _os_log_impl(v123, v124, v125, v126, v127, 0xEu);
          v119 = v165;
          OUTLINED_FUNCTION_27();
        }

        v128 = ConversationControlsManager.isOneToOneConversation.getter();
        v129 = Logger.logObject.getter();
        v130 = static os_log_type_t.default.getter();
        v131 = OUTLINED_FUNCTION_18_0(v130);
        if (v128)
        {
          if (v131)
          {
            v132 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v132);
            OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v133, v130, "[HUDAssets] defaultHUD: oneToOne");
            OUTLINED_FUNCTION_27();
          }

          ConversationControlsStringProvider.individualCallSubtitle(conversation:call:isConnecting:)(v119, v47, v49, v118);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_77_13();
          goto LABEL_82;
        }

        if (v131)
        {
          v134 = OUTLINED_FUNCTION_33();
          OUTLINED_FUNCTION_39_2(v134);
          OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v135, v130, "[HUDAssets] defaultHUD: group call");
          OUTLINED_FUNCTION_27();
        }

        ConversationControlsStringProvider.groupCallSubtitle(conversation:isConnecting:)(v119, v118);
        swift_unknownObjectRelease();

        goto LABEL_81;
      }
    }

    else if ((v164 & 1) == 0)
    {
      goto LABEL_69;
    }

    v118 = 0;
    goto LABEL_72;
  }

  if ((v17 & 1) == 0 || [a2 letMeInRequestState] == 3)
  {
    goto LABEL_18;
  }

  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v81))
  {
    v82 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v82);
    OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v83, v81, "[HUDAssets] defaultHUD: staging mode");
    OUTLINED_FUNCTION_27();
  }

  v84 = [a2 pendingMembers];
  OUTLINED_FUNCTION_41();
  v87 = type metadata accessor for NSObject(v85, v86);
  OUTLINED_FUNCTION_41();
  lazy protocol witness table accessor for type TUHandle and conformance NSObject(v88, v89);
  v90 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v91 = specialized Set.count.getter(v90);

  v92 = [a2 localParticipantAssociation];
  if (!v92 || (v92, [a2 state] != 1))
  {
    v136 = [a2 activeRemoteParticipants];
    v95 = 0x1E69D8B90;
    OUTLINED_FUNCTION_41();
    v139 = type metadata accessor for NSObject(v137, v138);
    OUTLINED_FUNCTION_41();
    lazy protocol witness table accessor for type TUHandle and conformance NSObject(v140, v141);
    v142 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v143 = specialized Set.count.getter(v142);

    if (v143 || v91 < 1)
    {
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_10_42();
      v91 = static Features.shared;
      v147 = Features.isICUIRedesignEnabled.getter();
      v148 = [objc_opt_self() conversationKit];
      v149 = "STAGING_AREA_FACETIME";
      if (v147)
      {
        v150 = 0xD00000000000001ALL;
      }

      else
      {
        v149 = "ionControlsShareCardHandle";
        v150 = 0xD000000000000015;
      }

      v95 = 0xE000000000000000;
      v151.super.isa = v148;
      OUTLINED_FUNCTION_17_0(v150, v149 | 0x8000000000000000, v139, v142, v151);

      if (Features.isICUIRedesignEnabled.getter())
      {
        v91 = 0;
      }

      else
      {
        v152 = [objc_opt_self() conversationKit];
        v153.super.isa = v152;
        OUTLINED_FUNCTION_17_0(0xD000000000000015, 0x80000001BC5253A0, 0x61737265766E6F43, v142, v153);
        OUTLINED_FUNCTION_175_0();
      }
    }

    else
    {
      String.localizedConversationControls.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v144 = swift_allocObject();
      v145 = MEMORY[0x1E69E6530];
      *(v144 + 16) = xmmword_1BC4BA940;
      v146 = MEMORY[0x1E69E65A8];
      *(v144 + 56) = v145;
      *(v144 + 64) = v146;
      *(v144 + 32) = v91;
      OUTLINED_FUNCTION_44_0();
      static String.localizedStringWithFormat(_:_:)();
      OUTLINED_FUNCTION_175_0();

      OUTLINED_FUNCTION_77_13();
    }

    goto LABEL_96;
  }

  v93 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC501510);
  v94 = TUStringKeyForProduct();

  if (v94)
  {
    v95 = 0xEF74694B6E6F6974;
    OUTLINED_FUNCTION_10_42();
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;

    v99 = objc_opt_self();
    v100 = [v99 conversationKit];
    OUTLINED_FUNCTION_29_3();
    v101.super.isa = v100;
    OUTLINED_FUNCTION_17_0(v96, v98, v87, 0xEF74694B6E6F6974, v101);

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v91 = 0;
      v95 = 0xE000000000000000;
LABEL_96:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v160._countAndFlagsBits = v91;
      v160._object = v95;
      NSAttributedString.__allocating_init(string:)(v160);
      goto LABEL_82;
    }

    v154 = MEMORY[0x1BFB209B0](0xD000000000000011, 0x80000001BC501510);
    v91 = TUStringKeyForProduct();

    if (v91)
    {
      v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v157 = v156;

      v158 = [v99 conversationKit];
      OUTLINED_FUNCTION_29_3();
      v159.super.isa = v158;
      OUTLINED_FUNCTION_17_0(v155, v157, v87, 0xEF74694B6E6F6974, v159);
      OUTLINED_FUNCTION_175_0();

      goto LABEL_96;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t ConversationControlsHelper.buttonShelfActions(controlsManager:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  v17 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x380))(v14);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    swift_beginAccess();
    if (static ConversationControlsManager.shouldShowAVLessLeaveConfirmation)
    {
      if (one-time initialization token for avLessLeaveConfirmationActions != -1)
      {
        swift_once();
      }

      v19 = static ConversationControlsAction.avLessLeaveConfirmationActions;

      result = static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter(v66);
      v22 = v66[0];
      v21 = v66[1];
      v23 = v67 | 0x80;
      goto LABEL_42;
    }

    v62 = v12;
    *&v66[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
    v29 = *(v5 + 72);
    v30 = *(v5 + 80);
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_76_8(v28, xmmword_1BC4BAA20);
    swift_storeEnumTagMultiPayload();
    *(((v30 + 32) & ~v30) + v29) = 1;
    swift_storeEnumTagMultiPayload();
    v63 = v30;
  }

  else
  {
    v62 = v12;
    *&v66[0] = MEMORY[0x1E69E7CC0];
    v24 = [objc_opt_self() currentDevice];
    v25 = [v24 userInterfaceIdiom];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
    v26 = *(v5 + 72);
    v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v63 = *(v5 + 80);
    v28 = swift_allocObject();
    if (v25 == 5)
    {
      *(v28 + 16) = xmmword_1BC4BAA20;
      *(v28 + v27) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_76_8(v28, xmmword_1BC4BB980);
      swift_storeEnumTagMultiPayload();
      *(v27 + v26) = 0;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  specialized Array.append<A>(contentsOf:)(v28);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = v9;
  if (v17 & 1 | ((Features.isMoreMenuEnabled.getter() & 1) == 0))
  {
    v32 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x928))();
    switch(v32 >> 5)
    {
      case 1:
        if ((v32 & 1) == 0)
        {
          goto LABEL_23;
        }

        break;
      case 2:
      case 4:
      case 5:
      case 6:
        break;
      case 3:
        if (v32 == 96)
        {
          goto LABEL_23;
        }

        break;
      default:
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v33 = *&v66[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_38_40();
          v33 = v59;
        }

        v38 = *(v33 + 16);
        if (v38 >= *(v33 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v33 = v60;
        }

        *(v33 + 16) = v38 + 1;
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_14_77();
        v37 = v62;
        goto LABEL_28;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v33 = *&v66[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_40();
      v33 = v57;
    }

    v34 = *(v33 + 16);
    if (v34 >= *(v33 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v58;
    }

    *(v33 + 16) = v34 + 1;
    OUTLINED_FUNCTION_40_3();
    OUTLINED_FUNCTION_14_77();
    v37 = v16;
LABEL_28:
    outlined init with take of ConversationControlsAction(v37, v35, v36);
    *&v66[0] = v33;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, &static Logger.conversationControls);
  v40 = a1;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v65 = v44;
    *v43 = 136315138;
    v45 = (*((*MEMORY[0x1E69E7D40] & *v40) + 0x2C0))();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 state];

      v64 = v47;
      type metadata accessor for TUConversationState(0);
      v48 = String.init<A>(reflecting:)();
      v50 = v49;
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v65);

    *(v43 + 4) = v51;
    _os_log_impl(&dword_1BBC58000, v41, v42, "ConversationControlsRecipeGenerator: buttonShelfActions conversationState:%s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {
  }

  static ConversationControlsAction.primaryCallAction(controlsManager:location:)();
  v19 = *&v66[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_38_40();
    v19 = v55;
  }

  v52 = *(v19 + 16);
  if (v52 >= *(v19 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v19 = v56;
  }

  *(v19 + 16) = v52 + 1;
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_14_77();
  result = outlined init with take of ConversationControlsAction(v31, v53, v54);
  v21 = xmmword_1BC4B6480;
  v22 = 0uLL;
  v23 = -127;
LABEL_42:
  *a2 = v19;
  *(a2 + 8) = v22;
  *(a2 + 24) = v21;
  *(a2 + 40) = v23;
  return result;
}

id ConversationControlsHelper.badge(forCall:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if (!OUTLINED_FUNCTION_83_9())
  {
    return 0;
  }

  v1 = [v7 isRecording];

  if (!v1)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v2 = @nonobjc UIImage.__allocating_init(systemName:)();
  if (v2)
  {
    v3 = [objc_opt_self() systemWhiteColor];
    v4 = [v2 imageWithTintColor:v3 renderingMode:1];

    v2 = UIImage.withPadding(_:)(3.0);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  return v5;
}

uint64_t ConversationControlsHelper.assetsForCallHUD(controlsManager:)(void *a1)
{
  if (ConversationControlsHelper.activityNameAndImage(controlsManager:)(a1))
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.conversationKit);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v3))
    {
      v4 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v4);
      OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v5, v3, "[HUDAssets] callHUD: found activity");
LABEL_10:
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v7))
    {
      v8 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v8);
      OUTLINED_FUNCTION_44_21(&dword_1BBC58000, v9, v7, "[HUDAssets] callHUD: no activity");
      goto LABEL_10;
    }
  }

  return OUTLINED_FUNCTION_44_0();
}

id ConversationControlsHelper.badgeBackgroundColor(forCall:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_44_0();
  dispatch thunk of BasicCall.underlyingObject.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  if (OUTLINED_FUNCTION_83_9() && (v1 = [v5 isRecording], v5, (v1 & 1) != 0))
  {
    v2 = &selRef_systemRedColor;
  }

  else
  {
    v2 = &selRef_clearColor;
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

NSAttributedString ConversationControlsHelper.unauthorizedParticipantAssets(controlsMode:conversation:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_28_4();
    if (v3 & 0xE0) == 0x40 && (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1BC4BAC30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v5 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_29_3();
      v6.super.isa = v5;
      v7 = OUTLINED_FUNCTION_17_0(0xD000000000000014, 0x80000001BC5111A0, 0x61737265766E6F43, v2, v6);
      v9 = v8;

      v10._countAndFlagsBits = v7;
      v10._object = v9;
      *(v4 + 32) = NSAttributedString.__allocating_init(string:)(v10);
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v11 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v12.super.isa = v11;
    v13 = OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xE800000000000000, 0x61737265766E6F43, v2, v12);
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    return NSAttributedString.__allocating_init(string:)(v16);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, &static Logger.conversationControls);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v20))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }
}

id ConversationControlsHelper.handoffBadgeImage(conversation:)(void *a1)
{
  result = [a1 resolvedAudioVideoMode];
  if (result)
  {
    if (result == 2 || result == 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = static UIImageView.appIcon(for:)(v3, v4);

      return v5;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, &static Logger.conversationControls);
      v7 = a1;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        [v7 resolvedAudioVideoMode];
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

        *(v10 + 4) = v14;
        OUTLINED_FUNCTION_132();
        _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      return 0;
    }
  }

  return result;
}

Class ConversationControlsHelper.activityNameAndImage(controlsManager:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit13CollaborationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v160 = v145 - v3;
  v163 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v152 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v156 = v8;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v157 = v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v145 - v12;
  v151 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v162 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v161 = v16 - v17;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v148 = v19;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v145 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  OUTLINED_FUNCTION_17();
  v149 = v24 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v147 = v27;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v150 = v29;
  OUTLINED_FUNCTION_33_1();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v153 = v145 - v32;
  v33 = MEMORY[0x1E69E7D40];
  v34 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0);
  v35 = (v34)(v31);
  v37 = v36;
  ObjectType = swift_getObjectType();
  (*(v37 + 48))(v165, ObjectType, v37);
  v39 = ConversationControlsHelper.badge(forCall:)(v165);
  v40 = __swift_destroy_boxed_opaque_existential_1(v165);
  (*((*v33 & *a1) + 0x980))(v165, v40);
  if (!*(&v165[1] + 1))
  {
    swift_unknownObjectRelease();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
    return 0;
  }

  v154 = v35;
  v155 = v39;
  outlined init with take of TapInteractionHandler(v165, v167);
  v41 = v168;
  v42 = v169;
  __swift_project_boxed_opaque_existential_1(v167, v168);
  v43 = (*(v42 + 104))(v41, v42);
  if (!v43 || (v44 = v43, v45 = [v43 activity], v46 = objc_msgSend(v45, sel_isScreenSharingActivity), v44, v45, !v46))
  {
    OUTLINED_FUNCTION_68_11();
    v55 = OUTLINED_FUNCTION_2_14();
    v57 = v56(v55);
    if (v57)
    {

LABEL_8:
      OUTLINED_FUNCTION_68_11();
      v58 = OUTLINED_FUNCTION_2_14();
      v59(v58);
      OUTLINED_FUNCTION_187();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImageView);
      v60 = v168;
      v61 = v169;
      __swift_project_boxed_opaque_existential_1(v167, v168);
      v62 = (*(v61 + 32))(v60, v61);
      v54 = static UIImageView.appIcon(for:)(v62, v63);

      goto LABEL_63;
    }

    OUTLINED_FUNCTION_68_11();
    v64 = v160;
    v65 = OUTLINED_FUNCTION_2_14();
    v66(v65);
    v67 = type metadata accessor for Collaboration(0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v67) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v64, &_s15ConversationKit13CollaborationVSgMd);
    }

    else
    {
      v92 = *(v64 + 16);
      _s15ConversationKit13CollaborationVWOhTm_0(v64, type metadata accessor for Collaboration);
      if (v92 == 2)
      {
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v167);
    return 0;
  }

  (v34)();
  v48 = v47;
  v49 = swift_getObjectType();
  LOBYTE(v48) = (*(v48 + 352))(v49, v48);
  swift_unknownObjectRelease();
  if (v48)
  {
    v34 = "STAGING_AREA_FACETIME_JOIN";
    v50 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    v51.super.isa = v50;
    OUTLINED_FUNCTION_17_0(0xD000000000000011, 0x80000001BC5253E0, v52, v53, v51);
    OUTLINED_FUNCTION_187();

    v54 = 0;
    goto LABEL_63;
  }

  v145[1] = *(a1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationController);
  v145[2] = a1;
  v68 = ConversationController.visibleParticipants.getter();
  v159 = *(v68 + 16);
  v160 = v68;
  if (v159)
  {
    v69 = 0;
    OUTLINED_FUNCTION_40_3();
    v158 = &v160[v70];
    v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
    while (1)
    {
      if (v69 >= *(v160 + 2))
      {
        __break(1u);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_36_40(*(v162 + 72));
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v13, v72);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        break;
      }

      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v74 = *(v73 + 48);
      OUTLINED_FUNCTION_37(&v13[*(v73 + 64)]);
      memcpy(v165, &v13[v74], sizeof(v165));
      v75 = type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      v34 = *(v76 + 8);
      (v34)(v13, v75);
      v77 = OUTLINED_FUNCTION_79_17();
      outlined init with copy of Notice?(v77, v166, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      outlined destroy of Participant.MediaInfo(v165);
      if (v166[3] == 1)
      {
        goto LABEL_22;
      }

      v78 = OUTLINED_FUNCTION_72_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, v79);
      OUTLINED_FUNCTION_4_53();
      v80 = v157;
      _s15ConversationKit11ParticipantVWOcTm_4(v22, v157, v81);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        OUTLINED_FUNCTION_3_175();
        _s15ConversationKit13CollaborationVWOhTm_0(v80, v88);
        OUTLINED_FUNCTION_59_16();
        v83 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
LABEL_27:
        v86 = v164;
LABEL_23:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, v83);
        goto LABEL_24;
      }

      v146 = *(v73 + 48);
      OUTLINED_FUNCTION_37((v80 + *(v73 + 64)));
      memcpy(v165, (v80 + v146), sizeof(v165));
      (v34)(v80, v75);
      v82 = OUTLINED_FUNCTION_79_17();
      outlined init with copy of Notice?(v82, v164, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      outlined destroy of Participant.MediaInfo(v165);
      v83 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      if (v164[3] == 1)
      {
        goto LABEL_27;
      }

      memcpy(v166, v164, 0xD1uLL);
      v84 = v166[5];
      outlined destroy of Participant.ScreenInfo(v166);
      if (v84)
      {

        OUTLINED_FUNCTION_35_33();
        v34 = v153;
        outlined init with take of ConversationControlsAction(v22, v153, v131);
        v132 = 0;
        goto LABEL_29;
      }

LABEL_24:
      ++v69;
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v22, v87);
      v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      if (v159 == v69)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_3_175();
    _s15ConversationKit13CollaborationVWOhTm_0(v13, v85);
    OUTLINED_FUNCTION_47_19();
LABEL_22:
    v86 = OUTLINED_FUNCTION_72_15();
    goto LABEL_23;
  }

LABEL_28:

  v132 = 1;
  v34 = v153;
LABEL_29:
  v22 = v151;
  __swift_storeEnumTagSinglePayload(v34, v132, 1, v151);
  if (ConversationControlsManager.isOneToOneConversation.getter())
  {
    v89 = v150;
    outlined init with copy of Notice?(v34, v150, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(v89, 1, v22) == 1)
    {
      v90 = &_s15ConversationKit11ParticipantVSgMd;
      v91 = v89;
    }

    else
    {
      Participant.screenInfo.getter();
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v89, v116);
      if (*(&v165[1] + 1) != 1)
      {
        OUTLINED_FUNCTION_42_33();
        goto LABEL_58;
      }

      v90 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
      v91 = v165;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, v90);
    OUTLINED_FUNCTION_65_16();
LABEL_58:
    v118 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v89, v34 & 1, 0x20676E6972616853, 0xEE006E6565726353);
    v120 = v119;
    v121 = [objc_opt_self() conversationKit];
LABEL_61:
    v123 = v121;
    OUTLINED_FUNCTION_5_5();
    v124.super.isa = v123;
    OUTLINED_FUNCTION_17_0(v118, v120, v125, v126, v124);
    OUTLINED_FUNCTION_187();

    goto LABEL_62;
  }

  v160 = ConversationController.visibleParticipants.getter();
  v94 = *(v160 + 2);
  v34 = v156;
  if (!v94)
  {
LABEL_50:

    v115 = v149;
    outlined init with copy of Notice?(v153, v149, &_s15ConversationKit11ParticipantVSgMd);
    if (__swift_getEnumTagSinglePayload(v115, 1, v151) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s15ConversationKit11ParticipantVSgMd);
      OUTLINED_FUNCTION_65_16();
    }

    else
    {
      Participant.screenInfo.getter();
      OUTLINED_FUNCTION_0_227();
      _s15ConversationKit13CollaborationVWOhTm_0(v115, v117);
      if (*(&v165[1] + 1) == 1)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
        OUTLINED_FUNCTION_65_16();
      }

      else
      {
        OUTLINED_FUNCTION_42_33();
      }
    }

    v118 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v115, v34 & 1, 0x535F4E4545524353, 0xEE00474E49524148);
    v120 = v122;
    v121 = [objc_opt_self() conversationKit];
    goto LABEL_61;
  }

  v95 = 0;
  OUTLINED_FUNCTION_40_3();
  v158 = v94;
  v159 = &v160[v96];
  v71 = &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd;
  while (1)
  {
    if (v95 >= *(v160 + 2))
    {
      __break(1u);
      goto LABEL_73;
    }

    v22 = v161;
    OUTLINED_FUNCTION_36_40(*(v162 + 72));
    OUTLINED_FUNCTION_4_53();
    _s15ConversationKit11ParticipantVWOcTm_4(v22, v34, v97);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_3_175();
      _s15ConversationKit13CollaborationVWOhTm_0(v34, v110);
      OUTLINED_FUNCTION_47_19();
LABEL_45:
      v111 = OUTLINED_FUNCTION_72_15();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, v112);
      goto LABEL_46;
    }

    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
    v99 = *(v98 + 48);
    OUTLINED_FUNCTION_37((v34 + *(v98 + 64)));
    memcpy(v165, (v34 + v99), sizeof(v165));
    v100 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    v22 = *(v101 + 8);
    (v22)(v34, v100);
    v102 = OUTLINED_FUNCTION_79_17();
    outlined init with copy of Notice?(v102, v166, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    outlined destroy of Participant.MediaInfo(v165);
    if (v166[3] == 1)
    {
      goto LABEL_45;
    }

    v103 = OUTLINED_FUNCTION_72_15();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v103, v104);
    OUTLINED_FUNCTION_4_53();
    v105 = v152;
    _s15ConversationKit11ParticipantVWOcTm_4(v161, v152, v106);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      OUTLINED_FUNCTION_3_175();
      _s15ConversationKit13CollaborationVWOhTm_0(v105, v114);
      OUTLINED_FUNCTION_59_16();
LABEL_49:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v164, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
      v34 = v156;
      goto LABEL_46;
    }

    v107 = *(v98 + 48);
    OUTLINED_FUNCTION_37((v105 + *(v98 + 64)));
    v108 = (v105 + v107);
    v94 = v158;
    memcpy(v165, v108, sizeof(v165));
    (v22)(v105, v100);
    v109 = OUTLINED_FUNCTION_79_17();
    outlined init with copy of Notice?(v109, v164, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    outlined destroy of Participant.MediaInfo(v165);
    if (v164[3] == 1)
    {
      goto LABEL_49;
    }

    memcpy(v166, v164, 0xD1uLL);
    v22 = LOBYTE(v166[5]);
    outlined destroy of Participant.ScreenInfo(v166);
    v34 = v156;
    if (v22)
    {
      break;
    }

LABEL_46:
    ++v95;
    OUTLINED_FUNCTION_0_227();
    _s15ConversationKit13CollaborationVWOhTm_0(v161, v113);
    if (v94 == v95)
    {
      goto LABEL_50;
    }
  }

  OUTLINED_FUNCTION_35_33();
  outlined init with take of ConversationControlsAction(v161, v148, v133);
  v71 = v147;
  outlined init with copy of Notice?(v153, v147, &_s15ConversationKit11ParticipantVSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v151);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit11ParticipantVSgMd);
    OUTLINED_FUNCTION_65_16();
    goto LABEL_74;
  }

LABEL_70:
  Participant.screenInfo.getter();
  OUTLINED_FUNCTION_0_227();
  _s15ConversationKit13CollaborationVWOhTm_0(v71, v135);
  if (*(&v165[1] + 1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    OUTLINED_FUNCTION_65_16();
  }

  else
  {
LABEL_73:
    OUTLINED_FUNCTION_42_33();
  }

LABEL_74:
  String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v71, v34 & 1, 0xD000000000000011, 0x80000001BC4FE920);
  OUTLINED_FUNCTION_175_0();
  v136 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v137.super.isa = v136;
  v34 = OUTLINED_FUNCTION_17_0(v71, v22, v138, v139, v137);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BC4BA940;
  v140 = v148;
  Participant.contactDetails.getter();
  v141 = *&v165[0];
  v142 = *(&v165[1] + 1);
  v143 = *&v165[2];

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v22 + 32) = v142;
  *(v22 + 40) = v143;
  String.init(format:_:)();
  OUTLINED_FUNCTION_187();

  OUTLINED_FUNCTION_0_227();
  _s15ConversationKit13CollaborationVWOhTm_0(v140, v144);
LABEL_62:
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit11ParticipantVSgMd);
  v54 = 0;
LABEL_63:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v127 = v168;
  v128 = v169;
  __swift_project_boxed_opaque_existential_1(v167, v168);
  v129 = (*(v128 + 72))(v127, v128);
  memset(v165, 0, 32);
  LOBYTE(v165[2]) = 1;
  v93 = static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(v22, v34, v129, v165);
  swift_unknownObjectRelease();

  if (v155)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v167);
  return v93;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = OUTLINED_FUNCTION_49_24();
  _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_22_54();
  v3[2] = v2;
  v3[3] = v4;
  return v3;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GGMd);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit14NoticePriorityO_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit14NoticePriorityOGMd);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * v4 - 64;
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14TUConversationC_Tt1g5Tm()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = OUTLINED_FUNCTION_49_24();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = (2 * ((v4 - 32) / 8)) | 1;
  return v3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15ConversationKit11ApplicationV_Tt1g5()
{
  OUTLINED_FUNCTION_63_14();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit11ApplicationVGMd);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  v3[2] = v2;
  v3[3] = 2 * ((v4 - 32) / 40);
  return v3;
}

uint64_t _s15ConversationKit13CollaborationVWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of ConversationControlsAction(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

BOOL specialized MostActiveParticipantsController.mostActiveParticipantProminenceChangeReason.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = *(*v0 + 112);
  swift_beginAccess();
  outlined init with copy of Participant?(v0 + v4, v3, &_s10Foundation4UUIDVSgMd);
  v5 = type metadata accessor for UUID();
  v6 = __swift_getEnumTagSinglePayload(v3, 1, v5) != 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation4UUIDVSgMd);
  return v6;
}

uint64_t specialized MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter()
{
  v13 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_0_1();
  v2 = *(v0 + *(v1 + 152));
  OUTLINED_FUNCTION_24();
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v0;
  OUTLINED_FUNCTION_24();
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for specialized closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_50_0;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  v7 = OUTLINED_FUNCTION_48_0();
  dispatch_sync(v7, v8);

  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t specialized closure #1 in MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v22 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*a2 + 128);
  swift_beginAccess();
  v12 = *(a2 + v11);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v23 = a1;
    v26 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = v26;
    v15 = *(v5 + 80);
    v22 = v12;
    v16 = v12 + ((v15 + 32) & ~v15);
    v24 = *(v5 + 72);
    v17 = (v8 + 32);
    do
    {
      v18 = v25;
      outlined init with copy of Participant?(v16, v25, &_s15ConversationKit32MostActiveParticipantsControllerC15ActivityDetailsVy10Foundation4UUIDV_GMd);
      v19 = *v17;
      (*v17)(v10, v18, v7);
      v26 = v14;
      v20 = *(v14 + 16);
      if (v20 >= *(v14 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v26;
      }

      *(v14 + 16) = v20 + 1;
      v19((v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20), v10, v7);
      v16 += v24;
      --v13;
    }

    while (v13);

    a1 = v23;
  }

  *a1 = v14;
}

void specialized MostActiveParticipantsController.init(participantIdentifiers:configuration:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v37 = v3;
  v38 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40();
  v41 = v6;
  OUTLINED_FUNCTION_4_24();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  OUTLINED_FUNCTION_1();
  v35 = v8;
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v39 = v14;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  OUTLINED_FUNCTION_13_38();
  v19 = *(v18 + 112);
  v20 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  OUTLINED_FUNCTION_13_38();
  v22 = MEMORY[0x1E69E7CC0];
  *(v0 + *(v21 + 128)) = MEMORY[0x1E69E7CC0];
  v23 = v22;
  OUTLINED_FUNCTION_13_38();
  *(v0 + *(v24 + 136)) = 0;
  OUTLINED_FUNCTION_13_38();
  static Date.distantPast.getter();
  OUTLINED_FUNCTION_13_38();
  v34 = *(v25 + 152);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  v44[0] = v23;
  _s10Foundation4UUIDVACSHAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  OUTLINED_FUNCTION_3_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v26, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v35 + 104))(v11, *MEMORY[0x1E69E8090], v36);
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + v34) = v27;
  OUTLINED_FUNCTION_13_38();
  *(v1 + *(v28 + 120)) = v37;
  OUTLINED_FUNCTION_24();
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = v38;
  v44[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.init(participantIdentifiers:configuration:);
  v44[5] = v29;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 1107296256;
  v44[2] = thunk for @escaping @callee_guaranteed () -> ();
  v44[3] = &block_descriptor_102;
  v30 = _Block_copy(v44);
  v31 = v27;

  static DispatchQoS.unspecified.getter();
  OUTLINED_FUNCTION_0_228();
  _s10Foundation4UUIDVACSHAAWlTm_10(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v17, v41, v30);
  _Block_release(v30);

  (*(v43 + 8))(v41, v42);
  (*(v39 + 8))(v17, v40);

  OUTLINED_FUNCTION_30_0();
}