void closure #2 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:)(char a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a1)
    {
      v20 = a9;
      v19 = a10;
      v21 = &OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel;
      v22 = MEMORY[0x1E69E7D40];
      if (a3)
      {
        v23 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
        v24 = *(Strong + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView);
        v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x98);
        v26 = a4;
        v27 = v24;
        v25(a4);
        v20 = a9;

        v28 = *&v18[v23];
        v29 = *((*MEMORY[0x1E69E7D40] & *v28) + 0xB0);
        v30 = v28;
        v29(a5, a6 & 1);
        v22 = MEMORY[0x1E69E7D40];

        v31 = *&v18[v23];
        v19 = a10;
        v32 = (*((*v22 & *v31) + 0x90))();
        v21 = &OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel;
        if (v32)
        {
          v33 = v32;
          [v32 setAlpha_];

          v21 = &OBJC_IVAR____TtC15ConversationKit20LinkDetailHeaderView____lazy_storage___linkLabel;
        }
      }

      v34 = v22;
      v35 = v21[467];
      v36 = (*((*v34 & **&v18[v35]) + 0xC0))();
      outlined bridged method (mbgnn) of @objc UILabel.text.setter(a7, a8, v36);

      v37 = *(*&v18[v35] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton);
      v38 = *((*v34 & *v37) + 0x78);
      v39 = v37;

      v38(v20, v19);

      v40 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v41 = (*(*static Defaults.shared + 1056))();
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in closure #2 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:);
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_41;
      v43 = _Block_copy(aBlock);

      [v40 animateWithDuration:v43 animations:v41];
      _Block_release(v43);
    }
  }
}

void closure #1 in closure #2 in PushToTalkView.updatePTTSessionDetails(avatar:avatarViewHash:title:subtitle:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView;
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & **(Strong + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView)) + 0x90))();
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha_];
    }

    v6 = (*((*v3 & **&v1[v2]) + 0xC0))();
    [v6 setAlpha_];

    [*(*&v1[v2] + OBJC_IVAR____TtC15ConversationKit28PushToTalkSessionDetailsView_disclosureButton) setAlpha_];
  }
}

void PushToTalkView.updateUIForTalkButtonState(state:)(unsigned __int8 a1)
{
  v3 = a1;
  v4 = PushToTalkView.talkLabelButtonView.getter();
  v5 = *&v4[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label];

  if (v3 == 3)
  {
    if (one-time initialization token for buttonLabelDisabled != -1)
    {
      OUTLINED_FUNCTION_6_52();
    }

    v6 = &static Colors.PTT.buttonLabelDisabled;
  }

  else
  {
    if (one-time initialization token for buttonLabel != -1)
    {
      OUTLINED_FUNCTION_5_50();
    }

    v6 = &static Colors.PTT.buttonLabel;
  }

  [v5 setTextColor_];

  v7 = objc_opt_self();
  v8 = [v7 conversationKit];
  v9.super.isa = v8;
  v10 = OUTLINED_FUNCTION_17_0(1802264916, 0xE400000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974, v9);
  v12 = v11;

  if ((a1 & 0xFE) == 2)
  {
    v13 = PushToTalkView.leaveLabelButtonView.getter();
    v14 = *&v13[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_button];

    [v14 setEnabled_];
    v15 = one-time initialization token for buttonLabel;
    v16 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView) + OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label);
    if (v15 != -1)
    {
      OUTLINED_FUNCTION_5_50();
    }

    [v16 setTextColor_];
    goto LABEL_16;
  }

  v17 = PushToTalkView.leaveLabelButtonView.getter();
  v18 = *&v17[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_button];

  [v18 setEnabled_];
  v19 = one-time initialization token for buttonLabelDisabled;
  v20 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView) + OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label);
  if (v19 != -1)
  {
    OUTLINED_FUNCTION_6_52();
  }

  [v20 setTextColor_];

  if (a1)
  {

    v16 = [v7 conversationKit];
    OUTLINED_FUNCTION_5_5();
    v21.super.isa = v16;
    v10 = OUTLINED_FUNCTION_17_0(v22, v23, v24, v25, v21);
    v12 = v26;
LABEL_16:
  }

  v27 = PushToTalkView.talkLabelButtonView.getter();
  v28 = *&v27[OBJC_IVAR____TtC15ConversationKit25PushToTalkLabelButtonView_label];

  outlined bridged method (mbnn) of @objc UILabel.text.setter(v10, v12, v28);
}

void PushToTalkView.setupLayoutGuides()()
{
  v2 = v0;
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1 || (v6 = [v3 currentDevice], v7 = objc_msgSend(v6, sel_userInterfaceIdiom), v6, v7 == 5))
  {
    PushToTalkView.iPadLayoutConstraints()();
    v9 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v9 = OUTLINED_FUNCTION_3_2();
    *(v9 + 16) = xmmword_1BC4BAC30;
    v10 = [*&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leftMarginLayoutGuide] widthAnchor];
    v11 = [v10 constraintEqualToConstant_];

    *(v9 + 32) = v11;
  }

  v62[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BC370;
  v13 = *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leftMarginLayoutGuide];
  v14 = [v13 topAnchor];
  v15 = OUTLINED_FUNCTION_13_37();
  v16 = [v15 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];

  v17 = [v9 constraintEqualToAnchor_];
  *(inited + 32) = v17;
  v18 = [v13 bottomAnchor];
  v19 = OUTLINED_FUNCTION_7_48();
  v20 = [v19 &off_1E7FE9D20 + 5];

  v21 = OUTLINED_FUNCTION_9_36();
  *(inited + 40) = v21;
  v22 = [v13 leadingAnchor];
  v23 = OUTLINED_FUNCTION_7_48();
  v24 = [v23 leadingAnchor];

  v25 = OUTLINED_FUNCTION_9_36();
  *(inited + 48) = v25;
  specialized Array.append<A>(contentsOf:)(inited);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1BC4BA7F0;
  v27 = *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_centerContentLayoutGuide];
  v28 = [v27 topAnchor];
  v29 = [v2 (v1 + 681)];
  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:*&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_topDetailContainerMarginConstant]];
  *(v26 + 32) = v31;
  v32 = [v27 leadingAnchor];
  v33 = [v13 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v26 + 40) = v34;
  v35 = [v27 trailingAnchor];
  v36 = *&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_rightMarginLayoutGuide];
  v37 = [v36 leadingAnchor];
  v38 = [v35 constraintEqualToAnchor_];

  *(v26 + 48) = v38;
  v39 = [v27 bottomAnchor];
  v40 = OUTLINED_FUNCTION_13_37();
  v41 = [v40 bottomAnchor];

  v42 = [v27 constraintEqualToAnchor:v41 constant:-*&v2[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_bottomButtonContainerMarginConstant]];
  *(v26 + 56) = v42;
  specialized Array.append<A>(contentsOf:)(v26);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1BC4BA7F0;
  v44 = [v36 topAnchor];
  v45 = OUTLINED_FUNCTION_7_48();
  v46 = [v45 topAnchor];

  v47 = OUTLINED_FUNCTION_9_36();
  *(v43 + 32) = v47;
  v48 = [v36 bottomAnchor];
  v49 = OUTLINED_FUNCTION_7_48();
  v50 = [v49 bottomAnchor];

  v51 = OUTLINED_FUNCTION_9_36();
  *(v43 + 40) = v51;
  v52 = [v36 trailingAnchor];
  v53 = OUTLINED_FUNCTION_7_48();
  v54 = [v53 trailingAnchor];

  v55 = [v62 constraintEqualToAnchor_];
  *(v43 + 48) = v55;
  v56 = [v36 widthAnchor];
  v57 = [v13 widthAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v43 + 56) = v58;
  specialized Array.append<A>(contentsOf:)(v43);
  objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = OUTLINED_FUNCTION_253();
  [v60 v61];
}

double PushToTalkView.iPadLayoutConstraints()()
{
  v1 = [*&v0[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_leftMarginLayoutGuide] widthAnchor];
  v2 = [v1 constraintGreaterThanOrEqualToConstant_];

  LODWORD(v3) = 1148829696;
  [v2 setPriority_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit14PushToTalkView_centerContentLayoutGuide];
  v5 = [v4 widthAnchor];
  v6 = [v5 constraintLessThanOrEqualToConstant_];

  LODWORD(v7) = 1148846080;
  [v6 setPriority_];
  v8 = [v4 widthAnchor];
  v9 = [v0 widthAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:-40.0];

  LODWORD(v11) = 1144750080;
  [v10 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v12 = swift_allocObject();
  *&result = 3;
  *(v12 + 16) = xmmword_1BC4BC370;
  *(v12 + 32) = v2;
  *(v12 + 40) = v6;
  *(v12 + 48) = v10;
  return result;
}

void PushToTalkView.setupConstraints()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_pttSessionDetailsView);
  v2 = PushToTalkView.leaveLabelButtonView.getter();
  v3 = PushToTalkView.talkLabelButtonView.getter();

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BC370;
  v5 = [v1 topAnchor];
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView_centerContentLayoutGuide);
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v1 leadingAnchor];
  v10 = [v6 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v4 + 40) = v11;
  v12 = [v1 trailingAnchor];
  v13 = [v6 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v4 + 48) = v14;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA7F0;
  v16 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView;
  v17 = [*(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___leaveLabelButtonView) leadingAnchor];
  v18 = [v6 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:15.0];

  *(inited + 32) = v19;
  v20 = [*(v0 + v16) bottomAnchor];
  v21 = [v6 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(inited + 40) = v22;
  v23 = OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___talkLabelButtonView;
  v24 = [*(v0 + OBJC_IVAR____TtC15ConversationKit14PushToTalkView____lazy_storage___talkLabelButtonView) trailingAnchor];
  v25 = [v6 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-15.0];

  *(inited + 48) = v26;
  v27 = [*(v0 + v23) bottomAnchor];
  v28 = [v6 bottomAnchor];
  v29 = OUTLINED_FUNCTION_253();
  v31 = [v29 v30];

  *(inited + 56) = v31;
  specialized Array.append<A>(contentsOf:)(inited);
  objc_opt_self();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = OUTLINED_FUNCTION_253();
  [v33 v34];
}

id PushToTalkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PushToTalkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0]();

  [a3 setAccessibilityLabel_];
}

void _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall10badgeImageACSg20CommunicationsUICore05BasicI0_p_So7UIImageCSgtcfCTf4enn_nAA0i6CenterI0V_Tt1g5(void *a1, id a2)
{
  v5 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v75 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  if (([a1 isPTT] & 1) == 0)
  {

    goto LABEL_24;
  }

  v69 = v2;
  v70 = v5;
  v18 = a2;
  v76 = a1;
  v19 = [v76 channelDisplayName];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v77 = v20;
  v78 = v22;
  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v23 = StringProtocol.components(separatedBy:)();
  (*(v13 + 8))(v17, v11);
  v24 = specialized Collection.prefix(_:)(2, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  v32 = (v30 >> 1) - v28;
  if (!__OFSUB__(v30 >> 1, v28))
  {
    v33 = v31;
    v73 = v22;
    v74 = v20;
    if (v32 < 1)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    else
    {
      if (v28 > 0 || v30 < 2)
      {
        goto LABEL_26;
      }

      v35 = *v26;
      v36 = v26[1];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.firstName.setter(v35, v36, v33);
    v72 = v24;
    v68 = v10;
    if (v32 <= 1)
    {
      v39 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      if (v28 > 1 || v30 < 4)
      {
        goto LABEL_27;
      }

      v39 = v26[2];
      v38 = v26[3];
    }

    outlined bridged method (mbnn) of @objc CNMutableContact.lastName.setter(v39, v38, v33);
    v40 = objc_opt_self();
    v41 = v76;
    v42 = [v40 tu:v76 contactStoreConfigurationForCall:?];

    v43 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v44 = OUTLINED_FUNCTION_3_2();
    v71 = xmmword_1BC4BAC30;
    *(v44 + 16) = xmmword_1BC4BAC30;
    *(v44 + 32) = v33;
    v45 = objc_opt_self();
    a2 = v18;
    v46 = v33;
    v47 = v43;
    v48 = [v45 clearColor];
    v49 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v50 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v47, v44, v18, v48);
    v51 = [v41 imageURL];
    if (v51)
    {
      v52 = v51;
      v67 = v47;
      v53 = v69;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = v75;
      v55 = v68;
      v56 = v53;
      v57 = v70;
      (*(v75 + 32))(v68, v56, v70);
      v58 = Data.init(contentsOf:options:)();
      v60 = v59;
      (*(v54 + 8))(v55, v57);
      v47 = v67;
    }

    else
    {
      v58 = 0;
      v60 = 0xF000000000000000;
    }

    v61 = OUTLINED_FUNCTION_3_2();
    *(v61 + 16) = v71;
    *(v61 + 32) = v46;
    v62 = objc_allocWithZone(MEMORY[0x1E695D158]);
    outlined copy of Data?(v58, v60);
    v63 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v74, v73, v58, v60);
    v64 = [v50 avatarViewController];

    v65 = OUTLINED_FUNCTION_253();
    [v65 v66];
    outlined consume of Data?(v58, v60);

    swift_unknownObjectRelease();
LABEL_24:

    return;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id _s15ConversationKit0A35ControlsBadgingAvatarViewControllerC7pttCall23activeRemoteParticipant10badgeImageACSg20CommunicationsUICore05BasicI0_p_So13TUParticipantCSo7UIImageCSgtcfCTf4ennn_nAA0i6CenterI0V_Tt2g5(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v43 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_1();
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v41 - v12;
  if ([a1 isPTT])
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
    v15 = [a2 name];
    if (!v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = MEMORY[0x1BFB209B0](v16);
    }

    [v14 setNickname_];

    v17 = [objc_opt_self() tu:a1 contactStoreConfigurationForCall:?];
    v18 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v19 = OUTLINED_FUNCTION_3_2();
    *(v19 + 16) = xmmword_1BC4BAC30;
    *(v19 + 32) = v14;
    v20 = objc_opt_self();
    v42 = a3;
    v21 = v18;
    v22 = v14;
    v23 = [v20 clearColor];
    v24 = objc_allocWithZone(type metadata accessor for ConversationControlsBadgingAvatarViewController());
    v25 = ConversationControlsBadgingAvatarViewController.init(contactStore:contacts:badgeImage:badgeBackgroundColor:)(v21, v19, a3, v23);
    v26 = [a2 imageURL];
    if (v26)
    {
      v27 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v43;
      (*(v43 + 32))(v13, v3, v7);
      v29 = Data.init(contentsOf:options:)();
      v31 = v30;
      (*(v28 + 8))(v13, v7);
    }

    else
    {
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    v32 = [a2 name];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    outlined copy of Data?(v29, v31);
    v36 = [v25 contacts];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = objc_allocWithZone(MEMORY[0x1E695D158]);
    v38 = @nonobjc CNGroupIdentity.init(groupWithName:photo:contacts:)(v33, v35, v29, v31);
    v39 = [v25 avatarViewController];

    [v39 updateViewWithGroupIdentity_];
    outlined consume of Data?(v29, v31);
  }

  else
  {

    v25 = 0;
  }

  return v25;
}

void DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)()
{
  DurationLabelController.__allocating_init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)();
}

{
  OUTLINED_FUNCTION_29();
  v8 = v0;
  OUTLINED_FUNCTION_14_25();
  v2 = v1;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v5 - v4);
  OUTLINED_FUNCTION_10_31();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_30_0();
}

id DurationLabelController.CallDurationFormatter.attributedString(from:)(double a1)
{
  v2 = DurationLabelController.CallDurationFormatter.string(from:)(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = *(v1 + 40);
  objc_allocWithZone(MEMORY[0x1E696AAB0]);

  return @nonobjc NSAttributedString.init(string:attributes:)(v4, v5, v6);
}

id DurationLabelController.CallDurationFormatter.string(from:)(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if (*(v1 + 8) <= a1)
  {
    if (*(v1 + 24) <= a1)
    {
      v5 = [*(v1 + 32) stringFromTimeInterval_];
    }

    else
    {
      v5 = [*(v1 + 16) stringFromTimeInterval_];
    }

    v6 = v5;
    if (v6)
    {
      v7 = v6;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v2;
    }

    return 0;
  }

  v2 = [*v1 stringFromTimeInterval_];
  if (v2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.remove(at:)();

    return v4;
  }

  return v2;
}

void DurationLabelController.CallDurationFormatter.makeWidestLabelSize(using:fitting:)(void *a1, double a2, double a3)
{
  v6 = [a1 attributedText];
  v7 = outlined bridged method (pb) of @objc RTTUtterance.text.getter(a1);
  v9 = v8;
  v10 = DurationLabelController.CallDurationFormatter.templateStrings()();
  v11 = specialized Array.count.getter(v10);
  if (v11)
  {
    v12 = v11;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v27 = v7;
    v28 = v9;
    v29 = v6;
    v13 = 0;
    v14 = v30;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1BFB22010](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      [a1 setAttributedText_];
      [a1 sizeThatFits_];
      v18 = v17;
      v20 = v19;

      v21 = *(v30 + 16);
      if (v21 >= *(v30 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v13;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v20;
    }

    while (v12 != v13);

    v9 = v28;
    v6 = v29;
    v7 = v27;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v14 + 16);
  if (v23)
  {
    v24 = v23 - 1;
    if (v24)
    {
      v25 = v14 + 56;
      v26 = *(v14 + 32);
      do
      {
        if (v26 < *(v25 - 8))
        {
          v26 = *(v25 - 8);
        }

        v25 += 16;
        --v24;
      }

      while (v24);
    }
  }

  $defer #1 () in DurationLabelController.CallDurationFormatter.makeWidestLabelSize(using:fitting:)(v6, a1, v7, v9);
}

void $defer #1 () in DurationLabelController.CallDurationFormatter.makeWidestLabelSize(using:fitting:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    [a2 setAttributedText_];
  }

  else
  {
    if (a4)
    {
      v5 = MEMORY[0x1BFB209B0](a3, a4);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    [a2 setText_];
  }
}

uint64_t DurationLabelController.CallDurationFormatter.templateStrings()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSAttributedStringCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = DurationLabelController.CallDurationFormatter.attributedString(from:)(284.0);
  *(inited + 40) = DurationLabelController.CallDurationFormatter.attributedString(from:)(3420.0);
  result = DurationLabelController.CallDurationFormatter.attributedString(from:)(61.0);
  v2 = 0;
  *(inited + 48) = result;
  v3 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == 3)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      return v3;
    }

    if (v2 > 2)
    {
      break;
    }

    v4 = *(inited + 8 * v2++ + 32);
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1BFB20CC0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v3 = v6;
    }
  }

  __break(1u);
  return result;
}

void DurationLabelController.duration.didset(double a1)
{
  if (*(v1 + 72) != a1)
  {
    DurationLabelController.updateDurationLabel()();
  }
}

void DurationLabelController.duration.setter(double a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  DurationLabelController.duration.didset(v2);
}

uint64_t key path getter for DurationLabelController.voiceOverUpdateHandler : DurationLabelController@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 192))();
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

uint64_t key path setter for DurationLabelController.voiceOverUpdateHandler : DurationLabelController(uint64_t *a1, uint64_t a2)
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

  v7 = *(**a2 + 200);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t DurationLabelController.voiceOverUpdateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  return v1;
}

uint64_t DurationLabelController.voiceOverUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t DurationLabelController.deinit()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 120);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 144));
  return v0;
}

uint64_t DurationLabelController.__deallocating_deinit()
{
  DurationLabelController.deinit();

  return swift_deallocClassInstance();
}

CGSize __swiftcall DurationLabelController.makeWidestLabelSize(fitting:)(CGSize fitting)
{
  v3 = v1;
  height = fitting.height;
  width = fitting.width;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v2 = static OS_dispatch_queue.main.getter();
  v8 = OUTLINED_FUNCTION_4_52();
  v9(v8);
  _dispatchPreconditionTest(_:)();
  v10 = OUTLINED_FUNCTION_3_7();
  v11(v10);
  if (v7)
  {
    DurationLabelController.CallDurationFormatter.makeWidestLabelSize(using:fitting:)(*(v3 + 16), width, height);
  }

  else
  {
    __break(1u);
  }

  result.height = v13;
  result.width = v12;
  return result;
}

Swift::Void __swiftcall DurationLabelController.updateTimer()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_4_52();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if ((v4 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = *(v2 + 16);
  if (([v9 isHidden] & 1) != 0 || (objc_msgSend(v9, sel_alpha), v10 <= 0.1) || (v11 = objc_msgSend(v9, sel_window)) == 0)
  {
    v12 = *(v2 + 80);
    if (!v12)
    {
      return;
    }

    v13 = 0;
  }

  else
  {

    v12 = *(v2 + 80);
    if (!v12)
    {
LABEL_11:
      OUTLINED_FUNCTION_13_38();
      (*(v14 + 248))();
      return;
    }

    v13 = 1;
  }

  if (v13 != [v12 isValid])
  {
    if (v13)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_13_38();
    (*(v15 + 256))();
  }
}

id DurationLabelController.isRunning.getter()
{
  result = *(v0 + 80);
  if (result)
  {
    return [result isValid];
  }

  return result;
}

Swift::Void __swiftcall DurationLabelController.start()()
{
  OUTLINED_FUNCTION_5_51();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = (v3 - v2);
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v4 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_9_37();
  v9(v8);
  if (v5)
  {
    OUTLINED_FUNCTION_13_38();
    (*(v10 + 256))();
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_38_3();
    aBlock[0] = v14;
    *v4 = 136446210;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v4 + 4) = v17;
    OUTLINED_FUNCTION_8_7(&dword_1BBC58000, v18, v13, "[%{public}s] startDurationTimer");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v19 = objc_opt_self();
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DurationLabelController.start();
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_26;
  v21 = _Block_copy(aBlock);

  v22 = [v19 scheduledTimerWithTimeInterval:1 repeats:v21 block:1.0];
  _Block_release(v21);
  v23 = *(v0 + 80);
  *(v0 + 80) = v22;
}

uint64_t closure #1 in DurationLabelController.start()()
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

uint64_t closure #1 in closure #1 in DurationLabelController.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DurationLabelController.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in DurationLabelController.start()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DurationLabelController.start(), v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  DurationLabelController.updateDuration()();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in DurationLabelController.start(), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

Swift::Void __swiftcall DurationLabelController.stop()()
{
  OUTLINED_FUNCTION_5_51();
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = (v3 - v2);
  v5 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v4 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_12_3();
  v7(v6);
  _dispatchPreconditionTest(_:)();
  v8 = OUTLINED_FUNCTION_9_37();
  v9(v8);
  if (v5)
  {
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_38_3();
    v19 = v13;
    *v4 = 136446210;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v4 + 4) = v16;
    OUTLINED_FUNCTION_8_7(&dword_1BBC58000, v17, v12, "[%{public}s] endDurationTimer");
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  [*(v0 + 80) invalidate];
  v18 = *(v0 + 80);
  *(v0 + 80) = 0;
}

void DurationLabelController.updateDuration()()
{
  v2 = v0;
  type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  v4 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v5 = OUTLINED_FUNCTION_4_52();
  v6(v5);
  _dispatchPreconditionTest(_:)();
  v7 = OUTLINED_FUNCTION_3_7();
  v8(v7);
  if (v4)
  {
    v9 = v2[7];
    v10 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v9);
    v11 = (*(v10 + 8))(v9, v10);
    DurationLabelController.duration.setter(v11);
  }

  else
  {
    __break(1u);
  }
}

void DurationLabelController.updateDurationLabel()()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_5_51();
  v2 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_140_0();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  v6 = OUTLINED_FUNCTION_4_52();
  v7(v6);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v1, v2);
  if (v8)
  {
    v9 = DurationLabelController.CallDurationFormatter.attributedString(from:)(*(v0 + 72));
    if (!v9)
    {
LABEL_28:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
    v12 = v11;
    v13 = *(v0 + 136);
    if (v13)
    {
      [v11 appendAttributedString_];
    }

    [v12 appendAttributedString_];
    v14 = *(v0 + 16);
    [v14 setAttributedText_];
    v15 = *(v0 + 24);
    if (!v15)
    {
LABEL_12:
      if (v13)
      {
        v22 = [v13 string];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = *(v0 + 56);
      v27 = *(v0 + 64);
      __swift_project_boxed_opaque_existential_1((v0 + 32), v26);
      v28 = (*(v27 + 8))(v26, v27);
      v29 = static DurationLabelController.axVoiceOverDurationString(from:)(v28);
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      MEMORY[0x1BFB20B10](v31, v32);

      outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v23, v25, v14);
      if ((UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled()) && (OUTLINED_FUNCTION_13_38(), (v34 = (*(v33 + 192))()) != 0))
      {
        v35 = v34;
        v34();

        outlined consume of (@escaping @callee_guaranteed () -> ())?(v35);
        v12 = v10;
      }

      else
      {
      }

      goto LABEL_28;
    }

    v16 = v15;
    v17 = [v14 textColor];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      v19 = v16;
      v20 = static NSObject.== infix(_:_:)();

      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = v16;
    }

    [v14 setTextColor_];
LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static DurationLabelController.axVoiceOverDurationString(from:)(double a1)
{
  if (one-time initialization token for axVoiceOverFormatter != -1)
  {
    swift_once();
  }

  v2 = [static DurationLabelController.axVoiceOverFormatter stringFromTimeInterval_];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1BBC58000, v6, v7, "Unable to format call duration: %f", v8, 0xCu);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    return 0;
  }

  return v4;
}

id one-time initialization function for axVoiceOverFormatter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  result = [v0 setZeroFormattingBehavior_];
  static DurationLabelController.axVoiceOverFormatter = v0;
  return result;
}

void specialized DurationLabelController.init(durationProvider:label:textColor:voiceOverUpdateHandler:prefixAttributedString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_29();
  v22 = v21;
  v24 = v23;
  v62 = v25;
  v63 = v26;
  v64 = v27;
  v60 = v28;
  v61 = v29;
  v31 = v30;
  v65 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v37 = (v36 - v35);
  v67[3] = v22;
  v67[4] = a21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  (*(*(v22 - 8) + 32))(boxed_opaque_existential_1, v31, v22);
  v24[9] = 0;
  v24[10] = 0;
  v39 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v39 setZeroFormattingBehavior_];
  [v39 setAllowedUnits_];
  [v39 setUnitsStyle_];
  v40 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v40 setAllowedUnits_];
  [v40 setUnitsStyle_];
  v41 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v41 setAllowedUnits_];
  [v41 setUnitsStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  v43 = *MEMORY[0x1E69DB748];
  *(inited + 64) = MEMORY[0x1E69E63B0];
  *(inited + 32) = v43;
  *(inited + 40) = 0xBFE0000000000000;
  type metadata accessor for NSAttributedStringKey(0);
  v45 = v44;
  v46 = lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v47 = v43;
  v48 = Dictionary.init(dictionaryLiteral:)();
  v24[11] = v39;
  v24[12] = 0x4082C00000000000;
  v24[13] = v40;
  v24[14] = 0x40AC200000000000;
  v24[15] = v41;
  v24[16] = v48;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v24[18] = 0;
  v24[19] = 0;
  *v37 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v37, *MEMORY[0x1E69E8020], v65);
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v50 = *(v33 + 8);
  v49 = (v33 + 8);
  v50(v37, v65);
  if (v39)
  {
    outlined init with copy of IDSLookupManager(v67, (v24 + 4));
    v24[2] = v61;
    v24[3] = v60;
    swift_beginAccess();
    v51 = v24[18];
    v46 = v63;
    v24[18] = v63;
    v24[19] = v64;
    v49 = v60;
    v40 = v61;
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v63);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v51);
    v24[17] = v62;
    v45 = v62;
    DurationLabelController.updateDuration()();
    DurationLabelController.updateDurationLabel()();
    if (one-time initialization token for conversationControls == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_0();
LABEL_3:
  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, &static Logger.conversationControls);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    swift_slowAlloc();
    v55 = OUTLINED_FUNCTION_38_3();
    v66 = v55;
    *v40 = 136446210;
    v56 = _typeName(_:qualified:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v66);

    *(v40 + 1) = v58;
    OUTLINED_FUNCTION_8_7(&dword_1BBC58000, v59, v54, "[%{public}s] created");
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v46);
  }

  else
  {

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v46);
  }

  __swift_destroy_boxed_opaque_existential_1(v67);
  OUTLINED_FUNCTION_30_0();
}

uint64_t getEnumTagSinglePayload for DurationLabelController.CallDurationFormatter(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DurationLabelController.CallDurationFormatter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in DurationLabelController.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in DurationLabelController.start()(a1, v4, v5, v6);
}

Swift::Int SensitiveContentController.ShieldState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SensitiveContentController.ShieldState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SensitiveContentController.ShieldState.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for static SensitiveContentController.shieldState : SensitiveContentController.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SensitiveContentController.shieldState;
  return result;
}

uint64_t key path setter for static SensitiveContentController.shieldState : SensitiveContentController.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SensitiveContentController.shieldState = v1;
  return result;
}

id SensitiveContentController.shield.getter()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[7];
  }

  else
  {
    v3 = closure #1 in SensitiveContentController.shield.getter(v0, *v0);
    v4 = v0[7];
    v0[7] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void SensitiveContentController.shield.setter(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

id closure #1 in SensitiveContentController.shield.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69CA918]) initWithOptions_];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a2;
  v18 = partial apply for closure #1 in closure #1 in SensitiveContentController.shield.getter;
  v19 = v5;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> ();
  v17 = &block_descriptor_42_0;
  v6 = _Block_copy(&v14);

  [v3 setOnShieldUp_];
  _Block_release(v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  v18 = partial apply for closure #2 in closure #1 in SensitiveContentController.shield.getter;
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> ();
  v17 = &block_descriptor_49_0;
  v9 = _Block_copy(&v14);

  [v3 setOnShowContent_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  v18 = partial apply for closure #3 in closure #1 in SensitiveContentController.shield.getter;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = thunk for @escaping @callee_guaranteed () -> ();
  v17 = &block_descriptor_56;
  v12 = _Block_copy(&v14);

  [v3 setOnEndCall_];
  _Block_release(v12);
  return v3;
}

void closure #1 in closure #1 in SensitiveContentController.shield.getter()
{
  swift_beginAccess();
  static SensitiveContentController.shieldState = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    SensitiveContentController.overrideStreamSettings()();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      MultiwayViewController.dismissControls()();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = swift_unknownObjectWeakLoadStrong();

    if (v1)
    {
      v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mutedBannerViewController;
      swift_beginAccess();
      v3 = *&v1[v2];

      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x178))();
    }
  }

  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sensitiveContentController);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BBC58000, v5, v6, "Shield Up", v7, 2u);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }
}

uint64_t SensitiveContentController.overrideStreamSettings()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So21SCSensitivityAnalysisC5valuetSgMd);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - v13;
  swift_beginAccess();
  v15 = *(v0 + 48);
  v16 = *(v15 + 64);
  v71 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v69 = v0;
  v70 = (v17 + 63) >> 6;
  v73 = (v2 + 32);
  v74 = (v2 + 16);
  v63 = v2;
  v64 = v15;
  v68 = v2 + 8;

  v21 = 0;
  *&v22 = 136315394;
  v61 = v22;
  v75 = v14;
  v76 = v8;
  v60 = v5;
  while (v19)
  {
    v23 = v21;
LABEL_11:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v23 << 6);
    v28 = v63;
    v27 = v64;
    v29 = v62;
    (*(v63 + 16))(v62, *(v64 + 48) + *(v63 + 72) * v26, v1);
    v30 = *(*(v27 + 56) + 8 * v26);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So21SCSensitivityAnalysisC5valuetMd);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v72;
    v33(v72, v29, v1);
    *(v34 + v32) = v30;
    v35 = v31;
    v24 = v34;
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
    v36 = v30;
    v14 = v75;
    v8 = v76;
LABEL_12:
    outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v24, v14, &_s10Foundation4UUIDV3key_So21SCSensitivityAnalysisC5valuetSgMd);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So21SCSensitivityAnalysisC5valuetMd);
    if (__swift_getEnumTagSinglePayload(v14, 1, v37) == 1)
    {
    }

    v38 = *&v14[*(v37 + 48)];
    (*v73)(v8, v14, v1);
    if (one-time initialization token for sensitiveContentController != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.sensitiveContentController);
    (*v74)(v5, v8, v1);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = v5;
    v43 = static os_log_type_t.debug.getter();
    v44 = os_log_type_enabled(v41, v43);
    v45 = v68;
    v46 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v44)
    {
      v47 = swift_slowAlloc();
      v67 = v46;
      v48 = v47;
      v66 = swift_slowAlloc();
      v77 = v66;
      *v48 = v61;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v42;
      v51 = v1;
      v53 = v52;
      v65 = v43;
      v54 = *v45;
      (*v45)(v50, v51);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v53, &v77);
      v1 = v51;

      *(v48 + 4) = v55;
      *(v48 + 12) = 1024;
      LODWORD(v55) = [v40 shouldIndicateSensitivity];

      *(v48 + 14) = v55;
      _os_log_impl(&dword_1BBC58000, v41, v65, "Overriding stream setting for  %s with %{BOOL}d", v48, 0x12u);
      v56 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1BFB23DF0](v56, -1, -1);
      MEMORY[0x1BFB23DF0](v48, -1, -1);

      v5 = v60;
    }

    else
    {

      v54 = *v45;
      (*v45)(v42, v1);
      v5 = v42;
    }

    v57 = v40;
    v8 = v76;
    SensitiveContentController.overrideParticipantStreamSettings(for:analysis:)(v76, v40);

    result = (v54)(v8, v1);
    v14 = v75;
  }

  v24 = v72;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v70)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So21SCSensitivityAnalysisC5valuetMd);
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v58);
      v19 = 0;
      goto LABEL_12;
    }

    v19 = *(v71 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void closure #2 in closure #1 in SensitiveContentController.shield.getter()
{
  swift_beginAccess();
  static SensitiveContentController.shieldState = 1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    SensitiveContentController.restoreStreamSettings()();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      v7 = 7;
      MultiwayViewController.updateInCallConversationControls(type:showControlsIfHidden:forceUpdate:)();

      outlined destroy of ConversationControlsType(v5);
    }
  }

  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sensitiveContentController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BBC58000, v2, v3, "Shield Down (onShowContent)", v4, 2u);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }
}

void SensitiveContentController.restoreStreamSettings()()
{
  v54 = type metadata accessor for UUID();
  v1 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  swift_beginAccess();
  v49 = v0;
  v9 = *(v0 + 40);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v50 = (v11 + 63) >> 6;
  v43 = v1 + 16;
  v52 = (v1 + 32);
  v45 = v1;
  v46 = v9;
  v47 = (v1 + 8);

  v14 = 0;
  v44 = v8;
  for (i = v10; ; v10 = i)
  {
    if (!v13)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v50)
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLV5valuetMd);
          __swift_storeEnumTagSinglePayload(v5, 1, 1, v35);
          v13 = 0;
          goto LABEL_11;
        }

        v13 = *(v10 + 8 * v15);
        ++v14;
        if (v13)
        {
          v14 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = v16 | (v15 << 6);
    v19 = v45;
    v18 = v46;
    v21 = v53;
    v20 = v54;
    (*(v45 + 16))(v53, *(v46 + 48) + *(v45 + 72) * v17, v54);
    v22 = (*(v18 + 56) + 3 * v17);
    v51 = *v22;
    v23 = v22[1];
    v24 = v22[2];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLV5valuetMd);
    v26 = v5;
    v27 = &v5[*(v25 + 48)];
    (*(v19 + 32))(v26, v21, v20);
    *v27 = v51;
    v27[1] = v23;
    v27[2] = v24;
    v5 = v26;
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
    v8 = v44;
LABEL_11:
    outlined init with take of (offset: Int, element: CaptionSectioner.Caption)(v5, v8, &_s10Foundation4UUIDV3key_15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLV5valuetSgMd);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15ConversationKit26SensitiveContentControllerC14StreamSettings33_063DB4DC5BD342763B5D5395B1DD5E15LLV5valuetMd);
    if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
    {
      break;
    }

    v29 = &v8[*(v28 + 48)];
    v30 = *v29;
    v31 = v29[1];
    v32 = v53;
    v33 = v54;
    (*v52)(v53, v8, v54);
    if (v31)
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }

    ConversationController.setStreamSettings(_:for:)(v34 | v30);
    (*v47)(v32, v33);
  }

  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v36 = Dictionary.init(dictionaryLiteral:)();
  v37 = v49;
  *(v49 + 40) = v36;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis);
  v38 = Dictionary.init(dictionaryLiteral:)();
  swift_beginAccess();
  *(v37 + 48) = v38;

  if (one-time initialization token for sensitiveContentController == -1)
  {
    goto LABEL_18;
  }

LABEL_22:
  swift_once();
LABEL_18:
  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.sensitiveContentController);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1BBC58000, v40, v41, "Stream settings restored", v42, 2u);
    MEMORY[0x1BFB23DF0](v42, -1, -1);
  }
}

void closure #3 in closure #1 in SensitiveContentController.shield.getter()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    ConversationController.leaveConversation(reason:)();
  }

  swift_beginAccess();
  static SensitiveContentController.shieldState = 1;
  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sensitiveContentController);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Shield Down (onEndCall)", v5, 2u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }
}

void (*SensitiveContentController.shield.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = SensitiveContentController.shield.getter();
  return SensitiveContentController.shield.modify;
}

void SensitiveContentController.shield.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
}

uint64_t SensitiveContentController.__allocating_init(multiwayViewController:conversationController:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  SensitiveContentController.init(multiwayViewController:conversationController:)(a1, a2);
  return v4;
}

void *SensitiveContentController.init(multiwayViewController:conversationController:)(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x1E69E7CC8];
  v3[4] = MEMORY[0x1E69E7CC8];
  v3[5] = v6;
  v3[6] = v6;
  v3[7] = 0;
  v3[2] = a2;
  swift_unknownObjectWeakAssign();
  v7 = one-time initialization token for sensitiveContentController;
  v8 = a2;
  if (v7 != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.sensitiveContentController);
  v10 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_28_1();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BBC58000, v10, v7, "Initialized SensitiveContentController", v12, 2u);
    OUTLINED_FUNCTION_27();
  }

  return v3;
}

uint64_t SensitiveContentController.deinit()
{
  v1 = v0;
  swift_beginAccess();
  static SensitiveContentController.shieldState = 1;
  if (one-time initialization token for sensitiveContentController != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sensitiveContentController);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Deinitialized SensitiveContentController", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  MEMORY[0x1BFB23F10](v1 + 24);

  return v1;
}

uint64_t SensitiveContentController.__deallocating_deinit()
{
  SensitiveContentController.deinit();

  return swift_deallocClassInstance();
}

void SensitiveContentController.configureShield(for:analysis:)()
{
  OUTLINED_FUNCTION_29();
  v210 = v0;
  v213 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16(v192 - v6);
  v203 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v223 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16(v10 - v9);
  v200 = type metadata accessor for SCUISensitiveContentOverlayView.Kind();
  OUTLINED_FUNCTION_1();
  v199 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = OUTLINED_FUNCTION_16(v14 - v13);
  v16 = type metadata accessor for Participant(v15);
  OUTLINED_FUNCTION_1();
  v201 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_30_12();
  v218 = v19;
  v197 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v192 - v22;
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v192 - v28;
  v30 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v192 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v196 = v192 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v192 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v207 = v41;
  v42 = *(v41 + 16);
  v211 = v192 - v43;
  v205 = v41 + 16;
  v204 = v42;
  v42(v40);
  v209 = v3;
  v206 = Participant.scaParticipant.getter();
  v44 = &static SensitiveContentController.shieldState;
  OUTLINED_FUNCTION_16_33();
  if (static SensitiveContentController.shieldState)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_20_21();
  swift_beginAccess();
  v44 = specialized Dictionary.subscript.getter(v211, OBJC_CLASS____TtC15ConversationKit26RecentsLinkControllerModel.superclass);
  swift_endAccess();
  if (v44)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_53();
    _s15ConversationKit11ParticipantVWOcTm_4(v209, v29, v45);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v44 = *(v46 + 48);
      OUTLINED_FUNCTION_37(&v29[*(v46 + 64)]);
      outlined destroy of Participant.MediaInfo(&v29[v44]);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v47 + 8))(v29);
      OUTLINED_FUNCTION_20_21();
      SensitiveContentController.overrideParticipantStreamSettings(for:analysis:)(v48, v49);
    }

    else
    {
      OUTLINED_FUNCTION_3_71();
      _s15ConversationKit11ParticipantVWOhTm_6(v29, v50);
    }
  }

  if (static SensitiveContentController.shieldState == 1)
  {
LABEL_61:
    if (!v213 || [v213 shouldInterruptVideo])
    {
      OUTLINED_FUNCTION_11_37();
      v51();
      v52 = v210;
      OUTLINED_FUNCTION_30_2();
      if (v213)
      {
        v53 = v213;
        swift_isUniquelyReferenced_nonNull_native();
        v229 = *(v52 + 48);
        v44 = &v229;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        *(v52 + 48) = v229;
      }

      else
      {
        v44 = v52 + 48;
      }

      (*(v207 + 8))(v38, v30);
      swift_endAccess();
    }
  }

  v54 = v209;
  if (*(v209 + v16[7]))
  {
    OUTLINED_FUNCTION_23_23();
    if (v55)
    {
      OUTLINED_FUNCTION_4_53();
      _s15ConversationKit11ParticipantVWOcTm_4(v54, v26, v56);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v223 = v33;
        v193 = v30;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
        v58 = *(v57 + 48);
        v59 = &v26[*(v57 + 64)];
        v60 = *v59;
        v61 = v59[1];
        v62 = v59[3];
        OUTLINED_FUNCTION_23_23();
        v222 = v63;
        outlined consume of Participant.CopresenceInfo?(v60, v61);
        outlined destroy of Participant.MediaInfo(&v26[v58]);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v64 + 8))(v26);
        OUTLINED_FUNCTION_20_21();
        v65 = SensitiveContentController.shield.getter();
        OUTLINED_FUNCTION_20();
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_7_5();
        v67 = v218;
        _s15ConversationKit11ParticipantVWOcTm_4(v209, v218, v68);
        OUTLINED_FUNCTION_29_15();
        v71 = v70 & ~v69;
        v72 = swift_allocObject();
        *(v72 + 16) = v66;
        outlined init with take of Participant(v67, v72 + v71);
        v73 = v198;
        v74 = v222;
        v75 = v213;
        *v198 = v222;
        v73[1] = v75;
        v73[2] = partial apply for closure #2 in SensitiveContentController.configureShield(for:analysis:);
        v73[3] = v72;
        v76 = OUTLINED_FUNCTION_12_36();
        v77(v76);
        v78 = v75;
        v79 = v74;

        SCUISensitiveContentOverlayView.configure(_:)();

        v81 = *(v62 + 8);
        v80 = v62 + 8;
        v81(v73, v72);

        if (one-time initialization token for sensitiveContentController != -1)
        {
          OUTLINED_FUNCTION_0_82();
        }

        v82 = type metadata accessor for Logger();
        __swift_project_value_buffer(v82, static Logger.sensitiveContentController);
        v83 = v223;
        v84 = v211;
        v85 = v193;
        OUTLINED_FUNCTION_11_37();
        v86();
        v87 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        OUTLINED_FUNCTION_28_1();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = OUTLINED_FUNCTION_42();
          v90 = OUTLINED_FUNCTION_23();
          v224 = v90;
          *v89 = 136315138;
          OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;
          v94 = *(v207 + 8);
          v94(v83, v85);
          v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v224);

          *(v89 + 4) = v95;
          _os_log_impl(&dword_1BBC58000, v87, v80, "Shield Configured for %s with duringVideoCall kind", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

          v94(v211, v85);
        }

        else
        {

          v191 = *(v207 + 8);
          v191(v83, v85);
          v191(v84, v85);
        }
      }

      else
      {
        v185 = OUTLINED_FUNCTION_17_30();
        v186(v185);
        OUTLINED_FUNCTION_23_23();

        OUTLINED_FUNCTION_3_71();
        _s15ConversationKit11ParticipantVWOhTm_6(v26, v188);
      }
    }

    else
    {
      v154 = OUTLINED_FUNCTION_17_30();
      v155(v154);
    }

    goto LABEL_58;
  }

  v193 = v30;
  OUTLINED_FUNCTION_20_21();
  v96 = *(v44 + 16);
  v97 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_4_0();
  v98 = *(v96 + v97);
  v99 = MEMORY[0x1E69E7CC0];
  v228 = MEMORY[0x1E69E7CC0];
  v215 = *(v98 + 16);
  if (!v215)
  {
    goto LABEL_51;
  }

  v192[2] = v96;
  v222 = (v98 + ((*(v201 + 80) + 32) & ~*(v201 + 80)));
  v100 = v16[7];
  v221 = *(v201 + 72);
  v214 = v23 + 8;
  v194 = (v223 + 8);
  v208 = "voiceOverUpdateHandler";
  v192[1] = v98;

  v101 = 0;
  v212 = MEMORY[0x1E69E7CC0];
  v220 = xmmword_1BC4BA940;
  v102 = v215;
  v195 = v16;
  v217 = v100;
  do
  {
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v103, v23, v104);
    v105 = *&v23[v100];
    if (!v105)
    {
      OUTLINED_FUNCTION_9_38();
      goto LABEL_48;
    }

    v106 = [v105 value];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = v108;

    v109 = *&v23[v100];
    if (!v109)
    {
      goto LABEL_33;
    }

    v110 = v109;
    v111 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v110);
    if (!v112)
    {

LABEL_33:
      _s15ConversationKit11ParticipantVWOcTm_4(v23, v218, type metadata accessor for Participant);

      ParticipantContactDetailsCache.contactDetails(for:)();

      v125 = OUTLINED_FUNCTION_309();
      _s15ConversationKit11ParticipantVWOhTm_6(v125, v126);
      v123 = v224;
      v113 = v226;
      v124 = v227;
      goto LABEL_34;
    }

    v113 = v111;
    v114 = v112;
    if (([v110 shouldHideContact] & 1) == 0)
    {

      goto LABEL_33;
    }

    countAndFlagsBits = v107;
    v115 = v202;
    PersonNameComponents.init()();
    PersonNameComponents.givenName.setter();
    PersonNameComponents.familyName.setter();
    if (one-time initialization token for initials != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_0();
    v116 = static NSPersonNameComponentsFormatter.initials;
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v118 = v115;
    v119 = [v116 stringFromPersonNameComponents_];

    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    (*v194)(v118, v203);
    v224 = v120;
    v225 = v122;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedUppercase.getter();

    v123 = 0;
    v124 = v114;
    v16 = v195;
    v102 = v215;
    v107 = countAndFlagsBits;
LABEL_34:

    v127 = 0;
    v128 = *&v23[v16[11]];
    v129 = 1 << *(v128 + 32);
    v130 = (v129 + 63) >> 6;
    v131 = 56;
    if (!v130)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v132 = *(v128 + v131);
      if (v132)
      {
        break;
      }

      v127 -= 64;
      --v130;
      v131 += 8;
      if (!v130)
      {
        goto LABEL_39;
      }
    }

    v133 = __clz(__rbit64(v132));
    if (v133 - v129 != v127)
    {
      specialized Set.subscript.getter(v133 - v127);
      v135 = 0;
      v134 = 1;
    }

    else
    {
LABEL_39:
      v134 = 0;
      v135 = 1;
    }

    v136 = v219;
    __swift_storeEnumTagSinglePayload(v219, v135, 1, v16);
    outlined destroy of Participant?(v136);
    if ((v134 & 1) == 0 && *&v214[v16[9]])
    {
      v137 = [objc_opt_self() conversationKit];
      v230._object = 0xE000000000000000;
      v138._object = (v208 | 0x8000000000000000);
      v138._countAndFlagsBits = 0xD000000000000020;
      v139.value._countAndFlagsBits = 0x61737265766E6F43;
      v139.value._object = 0xEF74694B6E6F6974;
      v140._countAndFlagsBits = 0;
      v140._object = 0xE000000000000000;
      v230._countAndFlagsBits = 0;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v138, v139, v137, v140, v230)._countAndFlagsBits;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v141 = swift_allocObject();
      *(v141 + 16) = v220;
      v224 = v113;
      v225 = v124;

      v142 = v23;
      v143 = v16;
      v144 = v107;
      v145 = MEMORY[0x1E69E6158];
      v146 = String.init<A>(_:)();
      v148 = v147;
      *(v141 + 56) = v145;
      v107 = v144;
      v16 = v143;
      v23 = v142;
      *(v141 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v141 + 32) = v146;
      *(v141 + 40) = v148;
      v102 = v215;
      String.init(format:_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    inited = swift_initStackObject();
    *(inited + 16) = v220;
    v150 = v223;
    *(inited + 32) = v107;
    *(inited + 40) = v150;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
    v151 = objc_allocWithZone(MEMORY[0x1E697B648]);
    v152 = @nonobjc SCAParticipant.init(displayName:handles:)();
    v153 = OUTLINED_FUNCTION_9_38();
    v100 = v217;
    if (v152)
    {
      MEMORY[0x1BFB20CC0](v153);
      if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_309();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v212 = v228;
    }

LABEL_48:
    ++v101;
  }

  while (v101 != v102);

  OUTLINED_FUNCTION_20_21();
  v99 = v212;
LABEL_51:
  v156 = SensitiveContentController.shield.getter();
  OUTLINED_FUNCTION_20();
  v157 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_7_5();
  v158 = v218;
  _s15ConversationKit11ParticipantVWOcTm_4(v209, v218, v159);
  OUTLINED_FUNCTION_29_15();
  v162 = v161 & ~v160;
  v163 = swift_allocObject();
  *(v163 + 16) = v157;
  outlined init with take of Participant(v158, v163 + v162);
  v164 = v213;
  v165 = v198;
  *v198 = v213;
  v165[1] = v99;
  v165[2] = partial apply for closure #1 in SensitiveContentController.configureShield(for:analysis:);
  v165[3] = v163;
  v166 = OUTLINED_FUNCTION_12_36();
  v167(v166);
  v168 = v164;

  SCUISensitiveContentOverlayView.configure(_:)();

  (*(v158 + 8))(v165, v163);

  v169 = v211;
  if (one-time initialization token for sensitiveContentController != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  v170 = type metadata accessor for Logger();
  __swift_project_value_buffer(v170, static Logger.sensitiveContentController);
  v171 = v196;
  v172 = v193;
  OUTLINED_FUNCTION_11_37();
  v173();
  v174 = Logger.logObject.getter();
  v175 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = OUTLINED_FUNCTION_42();
    v177 = OUTLINED_FUNCTION_23();
    v224 = v177;
    *v176 = 136315138;
    OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v178 = dispatch thunk of CustomStringConvertible.description.getter();
    v179 = v171;
    v181 = v180;
    v182 = *(v207 + 8);
    v182(v179, v172);
    v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v181, &v224);

    *(v176 + 4) = v183;
    _os_log_impl(&dword_1BBC58000, v174, v175, "Shield Configured for %s with userSharedDuringVideoCall kind", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v177);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    OUTLINED_FUNCTION_23_23();
    v182(v169, v172);
  }

  else
  {

    OUTLINED_FUNCTION_23_23();
    v190 = *(v207 + 8);
    v190(v171, v172);
    v190(v169, v172);
  }

LABEL_58:
  OUTLINED_FUNCTION_30_0();
}

id Participant.scaParticipant.getter()
{
  result = *(v0 + *(type metadata accessor for Participant(0) + 28));
  if (result)
  {
    v2 = [result value];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    Participant.contactDetails.getter();

    Participant.name(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BA940;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
    v7 = objc_allocWithZone(MEMORY[0x1E697B648]);
    return @nonobjc SCAParticipant.init(displayName:handles:)();
  }

  return result;
}

void SensitiveContentController.overrideParticipantStreamSettings(for:analysis:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = [v2 shouldInterruptVideo];
    v4 = [v2 shouldMuteAudio];

    if (v4)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 | v3;
  }

  else
  {
    v6 = 0;
  }

  ConversationController.setStreamSettings(_:for:)(v6);
}

void closure #1 in SensitiveContentController.configureShield(for:analysis:)()
{
  OUTLINED_FUNCTION_4_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_46();
    ConversationController.updateParticipant(for:withAnalysis:)();
  }
}

void SensitiveContentController.configureShieldForJoiningParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v80 - v6;
  v89 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30_12();
  v86 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80 - v19;
  v82 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v80 - v23;
  v25 = *(type metadata accessor for Participant(0) + 20);
  v91 = v13;
  v28 = *(v13 + 16);
  v26 = v13 + 16;
  v27 = v28;
  v28(v24, (v3 + v25), v11);
  if (one-time initialization token for sensitiveContentController != -1)
  {
    OUTLINED_FUNCTION_0_82();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.sensitiveContentController);
  v87 = v27;
  v88 = v26;
  v27(v20, v24, v11);
  v85 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_42();
    v81 = v24;
    v90 = v11;
    v34 = v33;
    v35 = OUTLINED_FUNCTION_23();
    v80 = v1;
    v36 = v35;
    v93[0] = v35;
    *v34 = 136315138;
    OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v10;
    v39 = v3;
    v41 = v40;
    v42 = *(v91 + 8);
    v42(v20, v90);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v41, v93);
    v3 = v39;
    v10 = v38;

    *(v34 + 4) = v43;
    _os_log_impl(&dword_1BBC58000, v31, v32, "Shield Configuring for %s with videoCallWasJoined kind", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    v1 = v80;
    OUTLINED_FUNCTION_27();
    v11 = v90;
    v24 = v81;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v42 = *(v91 + 8);
    v42(v20, v11);
  }

  OUTLINED_FUNCTION_4_53();
  _s15ConversationKit11ParticipantVWOcTm_4(v3, v10, v44);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    OUTLINED_FUNCTION_3_71();
    _s15ConversationKit11ParticipantVWOhTm_6(v10, v56);
LABEL_14:
    v57 = v86;
    v87(v86, v24, v11);
    v58 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_28_1();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = OUTLINED_FUNCTION_42();
      v61 = OUTLINED_FUNCTION_23();
      v93[0] = v61;
      *v60 = 136315138;
      OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v57;
      v64 = v42;
      v65 = v24;
      v67 = v66;
      v64(v63, v11);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v67, v93);

      *(v60 + 4) = v68;
      _os_log_impl(&dword_1BBC58000, v58, v1, "Shield not configured for %s due to non join state", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();

      v64(v65, v11);
    }

    else
    {

      v42(v57, v11);
      v69 = OUTLINED_FUNCTION_21_20();
      (v42)(v69);
    }

    goto LABEL_19;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
  v46 = *(v45 + 48);
  OUTLINED_FUNCTION_37((v10 + *(v45 + 64)));
  outlined destroy of Participant.MediaInfo(v10 + v46);
  type metadata accessor for Date();
  OUTLINED_FUNCTION_15_1();
  (*(v47 + 8))(v10);
  v48 = Participant.scaParticipant.getter();
  if (!v48)
  {
    goto LABEL_14;
  }

  v49 = v48;
  OUTLINED_FUNCTION_16_33();
  if ((static SensitiveContentController.shieldState & 1) == 0)
  {
    ConversationController.setStreamSettings(_:for:)(257);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAnalysisHistory);
  if ([swift_getObjCClassFromMetadata() respondsToSelector_])
  {
    swift_beginAccess();
    v50 = specialized Dictionary.subscript.getter(v24, *(v1 + 32));
    v52 = v51;
    v53 = v1;
    v54 = ~v51;
    swift_endAccess();
    if (v54)
    {

      outlined consume of SensitiveContentController.HistoryCheckStatus?(v50, v52);
      v55 = OUTLINED_FUNCTION_21_20();
      (v42)(v55);
    }

    else
    {
      OUTLINED_FUNCTION_30_2();
      swift_isUniquelyReferenced_nonNull_native();
      v92 = *(v53 + 32);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *(v53 + 32) = v92;
      swift_endAccess();
      v71 = type metadata accessor for TaskPriority();
      v90 = v42;
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v71);
      v72 = v83;
      v87(v83, v24, v11);
      type metadata accessor for MainActor();
      v73 = v49;

      v74 = static MainActor.shared.getter();
      v75 = v91;
      v76 = (*(v91 + 80) + 48) & ~*(v91 + 80);
      v77 = swift_allocObject();
      v78 = MEMORY[0x1E69E85E0];
      *(v77 + 2) = v74;
      *(v77 + 3) = v78;
      *(v77 + 4) = v73;
      *(v77 + 5) = v53;
      (*(v75 + 32))(&v77[v76], v72, v11);
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

      v79 = OUTLINED_FUNCTION_21_20();
      v90(v79);
    }
  }

  else
  {
    v70 = OUTLINED_FUNCTION_21_20();
    (v42)(v70);
  }

LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void ConversationController.setStreamSettings(_:for:)(__int16 a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  v8 = type metadata accessor for Participant(0);
  (*(v4 + 16))(v6, v7 + *(v8 + 20), v3);
  v9 = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    if (a1)
    {
      ConversationController.stopLocalVideo()();
    }

    else
    {
      ConversationController.startLocalVideo(allowVideoUpgrade:)(1);
    }

    ConversationController.setLocalAudio(muted:bluetoothAudioFormat:)();
  }

  else
  {
    ConversationController.setDownlinkMuted(_:)(a1 & 0x100);
  }
}

uint64_t closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v7 = type metadata accessor for UUID();
  v6[31] = v7;
  v8 = *(v7 - 8);
  v6[32] = v8;
  v6[33] = *(v8 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v9 = type metadata accessor for SCUISensitiveContentOverlayView.Kind();
  v6[36] = v9;
  v6[37] = *(v9 - 8);
  v6[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[39] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[40] = v11;
  v6[41] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:), v11, v10);
}

uint64_t closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)()
{
  v1 = v0[28];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC4BAC30;
  *(v3 + 32) = v1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCAParticipant);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[42] = isa;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14SCAParticipantCSo21SCSensitivityAnalysisCGs5Error_pGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned NSDictionary?, @unowned NSError?) -> () with result type [SCAParticipant : SCSensitivityAnalysis];
  v0[13] = &block_descriptor_27;
  v0[14] = v6;
  [v2 analysesForInterventionOnOutgoingCallToParticipants:isa callType:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 344) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  }

  else
  {
    v5 = closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v41 = v0;
  v1 = v0[42];

  v2 = specialized Collection.first.getter(v0[27]);

  if (v2)
  {
    v3 = v0[38];
    v37 = v0[36];
    v32 = v0[35];
    v4 = v0[32];
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[29];
    v34 = v0[28];
    v35 = v0[37];
    OUTLINED_FUNCTION_30_2();
    v36 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v7 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v7 + 32) = v40;
    swift_endAccess();
    v33 = SensitiveContentController.shield.getter();
    OUTLINED_FUNCTION_20();
    v8 = swift_allocObject();
    swift_weakInit();
    v38 = *(v4 + 16);
    v38(v32, v6, v5);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    (*(v4 + 32))(v10 + v9, v32, v5);
    *v3 = v34;
    v3[1] = v2;
    v3[2] = partial apply for closure #1 in closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:);
    v3[3] = v10;
    (*(v35 + 104))(v3, *MEMORY[0x1E69CA8C0], v37);
    v11 = v34;
    v12 = v36;

    SCUISensitiveContentOverlayView.configure(_:)();

    (*(v35 + 8))(v3, v37);

    if (one-time initialization token for sensitiveContentController != -1)
    {
      OUTLINED_FUNCTION_0_82();
    }

    v13 = v0[34];
    v15 = v0[30];
    v14 = v0[31];
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sensitiveContentController);
    v38(v13, v15, v14);
    v17 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_28_1();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[34];
    v22 = v0[31];
    v21 = v0[32];
    if (v19)
    {
      v23 = OUTLINED_FUNCTION_42();
      v39 = v12;
      v40 = OUTLINED_FUNCTION_23();
      v24 = v40;
      *v23 = 136315138;
      OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v22);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v40);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BBC58000, v17, v15, "Shield Configured for %s with videoCallWasJoined kind", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }
  }

  else
  {
    v29 = v0[29];
    OUTLINED_FUNCTION_30_2();
    swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v29 + 32);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *(v29 + 32) = v40;
    swift_endAccess();
  }

  v30 = v0[1];

  return v30();
}

{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[29];

  swift_willThrow();

  OUTLINED_FUNCTION_30_2();
  v4 = v1;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 32);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *(v3 + 32) = v7;
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

void SensitiveContentController.configureShieldforLeavingParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v71 = v0;
  v2 = v1;
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v12 = type metadata accessor for SCUISensitiveContentOverlayView.Kind();
  OUTLINED_FUNCTION_1();
  v70 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = (v16 - v15);
  type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_4_53();
  _s15ConversationKit11ParticipantVWOcTm_4(v2, v21, v22);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v3;
    v69 = v5;
    type metadata accessor for Date();
    OUTLINED_FUNCTION_15_1();
    (*(v23 + 8))(v21);
    v24 = type metadata accessor for Participant(0);
    v25 = *(v2 + *(v24 + 28));
    if (v25)
    {
      v26 = [v25 value];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v28;
      v66 = v27;

      Participant.contactDetails.getter();
      v29 = v72;

      Participant.name(_:)();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BA940;
      v31 = v65;
      *(inited + 32) = v66;
      *(inited + 40) = v31;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
      v32 = objc_allocWithZone(MEMORY[0x1E697B648]);
      OUTLINED_FUNCTION_46();
      v33 = @nonobjc SCAParticipant.init(displayName:handles:)();
      if (v33)
      {
        v34 = v33;
        v63 = v12;
        v35 = v11;
        v62 = v11;
        v36 = *(v24 + 20);
        v64 = SensitiveContentController.shield.getter();
        OUTLINED_FUNCTION_20();
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v69;
        v39 = v35;
        v40 = v68;
        v65 = *(v69 + 16);
        v66 = v69 + 16;
        v65(v39, v2 + v36, v68);
        v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v37;
        (*(v38 + 32))(v42 + v41, v62, v40);
        *v17 = v34;
        v17[1] = 0;
        v17[2] = partial apply for closure #1 in SensitiveContentController.configureShieldforLeavingParticipant(_:);
        v17[3] = v42;
        (*(v70 + 104))(v17, *MEMORY[0x1E69CA8C0], v63);
        v43 = v34;

        v44 = v64;
        SCUISensitiveContentOverlayView.configure(_:)();

        v45 = OUTLINED_FUNCTION_21_20();
        v46(v45);

        OUTLINED_FUNCTION_30_2();
        v47 = specialized Dictionary._Variant.removeValue(forKey:)(v2 + v36, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo21SCSensitivityAnalysisCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo21SCSensitivityAnalysisCGMR, &lazy cache variable for type metadata for SCSensitivityAnalysis);
        swift_endAccess();

        if (one-time initialization token for sensitiveContentController != -1)
        {
          OUTLINED_FUNCTION_0_82();
        }

        v48 = type metadata accessor for Logger();
        __swift_project_value_buffer(v48, static Logger.sensitiveContentController);
        v65(v67, v2 + v36, v40);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = OUTLINED_FUNCTION_42();
          v52 = OUTLINED_FUNCTION_23();
          v72 = v52;
          *v51 = 136315138;
          OUTLINED_FUNCTION_1_76(&lazy protocol witness table cache variable for type UUID and conformance UUID);
          dispatch thunk of CustomStringConvertible.description.getter();
          v53 = OUTLINED_FUNCTION_33_18();
          v54(v53);
          v55 = OUTLINED_FUNCTION_46();
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v57);

          *(v51 + 4) = v58;
          _os_log_impl(&dword_1BBC58000, v49, v50, "Shield Configured for %s with videoCallWasJoined left", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();
        }

        else
        {

          v60 = OUTLINED_FUNCTION_33_18();
          v61(v60);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_71();
    _s15ConversationKit11ParticipantVWOhTm_6(v21, v59);
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t closure #1 in closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(void *a1)
{
  if (!a1 || (result = [a1 shouldInterruptVideo], (result & 1) == 0))
  {
    OUTLINED_FUNCTION_4_0();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = result;
      OUTLINED_FUNCTION_30_2();
      swift_isUniquelyReferenced_nonNull_native();
      v3 = *(v2 + 32);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
      *(v2 + 32) = v3;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t SensitiveContentController.StreamSettings.Reason.init(rawValue:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SensitiveContentController.StreamSettings.Reason@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SensitiveContentController.StreamSettings.Reason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SensitiveContentController.StreamSettings.Reason@<X0>(uint64_t *a1@<X8>)
{
  result = SensitiveContentController.StreamSettings.Reason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SensitiveContentController.StreamSettings(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static SensitiveContentController.StreamSettings.== infix(_:_:)(v3 | *a1 | v2, v5 | *a2 | v4);
}

Swift::Void __swiftcall SensitiveContentController.setLocalStreamSettingsBeforeBackgroundedPause()()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_16_33();
  if (static SensitiveContentController.shieldState == 1)
  {
    v8 = *(v0 + 16) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
    OUTLINED_FUNCTION_4_0();
    v9 = type metadata accessor for Participant(0);
    (*(v3 + 16))(v7, v8 + *(v9 + 20), v1);
    v10 = ConversationController.streamSettings(for:reason:)(v7, 1);
    SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(v7, v10 & 0x10101);
    if (one-time initialization token for sensitiveContentController != -1)
    {
      OUTLINED_FUNCTION_0_82();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.sensitiveContentController);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1BBC58000, v12, v13, "Saved stream settings before background video pause", v14, 2u);
      OUTLINED_FUNCTION_27();
    }

    (*(v3 + 8))(v7, v1);
  }
}

uint64_t ConversationController.streamSettings(for:reason:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
  swift_beginAccess();
  v9 = type metadata accessor for Participant(0);
  (*(v5 + 16))(v7, v8 + *(v9 + 20), v4);
  v10 = static UUID.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    v11 = v2 + OBJC_IVAR____TtC15ConversationKit22ConversationController_broadcastingState;
    swift_beginAccess();
    v12 = (*(v11 + 16) >> 7) ^ 1;
    v13 = (*v11 & 1) << 8;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v13 & 0xFFFEFFFF | ((a2 & 1) << 16) | v12;
}

void SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(uint64_t a1, int a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 40);
  if (!*(v9 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(), (v11 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  v12 = (*(v9 + 56) + 3 * v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  swift_endAccess();
  if (v13 == (a2 & 1) && ((v14 ^ ((a2 & 0x100) >> 8)) & 1) == 0 && v15 == (a2 & 0x10000u) >> 16)
  {
    return;
  }

  if ((((a2 & 0x10000) == 0) & v15) == 0)
  {
LABEL_12:
    SensitiveContentController.setStreamSetting(for:streamSettings:)(a1, a2 & 0x101);
    return;
  }

  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.sensitiveContentController);
  (*(v6 + 16))(v8, a1, v5);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26[0] = v20;
    *v19 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v6 + 8))(v8, v5);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v26);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_1BBC58000, v17, v18, "Not overwriting stream settings due to lower priority settings for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v19, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t SensitiveContentController.setStreamSetting(for:streamSettings:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sensitiveContentController != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sensitiveContentController);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a1;
    v14 = v13;
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v14 = 136315650;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = a2 & 0x100;
    v16 = v3;
    v17 = a2;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v19, v28);
    LOBYTE(v19) = v17;
    v3 = v16;
    LODWORD(v16) = v25;

    *(v14 + 4) = v20;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v19 & 1;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v16 >> 8;
    _os_log_impl(&dword_1BBC58000, v11, v12, "Setting new stream settings for %s with stopView = %{BOOL}d and stopAudio = %{BOOL}d", v14, 0x18u);
    v21 = v24;
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1BFB23DF0](v21, -1, -1);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v3 + 40);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *(v3 + 40) = v27;
  return swift_endAccess();
}

uint64_t SensitiveContentController.saveStreamSettingsForRestore(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = *(type metadata accessor for Participant(0) + 20);
  (*(v5 + 16))(v9, a1 + v10, v3);
  OUTLINED_FUNCTION_16_33();
  if (static SensitiveContentController.shieldState == 1)
  {
    v11 = ConversationController.streamSettings(for:reason:)(v9, 0);
    v12 = a1 + v10;
    v13 = v11 & 0x10101;
LABEL_7:
    SensitiveContentController.setStreamSettingsToRestore(for:streamSettings:)(v12, v13);
    return (*(v5 + 8))(v9, v3);
  }

  swift_beginAccess();
  if (!*(*(v1 + 40) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(), (v14 & 1) == 0))
  {
    swift_endAccess();
    v12 = a1 + v10;
    v13 = 0;
    goto LABEL_7;
  }

  swift_endAccess();
  return (*(v5 + 8))(v9, v3);
}

id static SCSensitivityAnalysis.decoded(from:)()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SCSensitivityAnalysis);
  v1 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v0)
  {
    return v1;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E697B670]);
  v3 = OUTLINED_FUNCTION_309();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_309();
  v7 = @nonobjc SCSensitivityAnalysis.init(dataRepresentation:)(v5, v6);

  return v7;
}

id @nonobjc SCAParticipant.init(displayName:handles:)()
{
  v1 = MEMORY[0x1BFB209B0]();

  isa = Set._bridgeToObjectiveC()().super.isa;

  v3 = [v0 initWithDisplayName:v1 handles:isa];

  return v3;
}

id @nonobjc SCSensitivityAnalysis.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[0] = 0;
  v7 = [v3 initWithDataRepresentation:isa error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  outlined consume of Data._Representation(a1, a2);
  return v7;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_27_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAC4DateVGMd);
    OUTLINED_FUNCTION_130_0();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, v3);
    v8 = *(v18 + 48);
    v9 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    (*(v10 + 8))(v8 + *(v10 + 72) * v7, v9);
    v11 = *(v18 + 56);
    v12 = type metadata accessor for Date();
    OUTLINED_FUNCTION_7_0();
    (*(v13 + 32))(a1, v11 + *(v13 + 72) * v7, v12);
    OUTLINED_FUNCTION_10_32(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    _NativeDictionary._delete(at:)();
    *v1 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = type metadata accessor for Date();
    v14 = a1;
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

unint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v6 = v5;
  if (v5)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySO15ConversationKit25ScreenSharingStateMonitorC11Observation33_3DE9C92AAB88BC071CEF3912BB1939D3LLVGMd);
    OUTLINED_FUNCTION_130_0();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
    outlined init with take of ScreenSharingStateMonitor.Observation(*(v10 + 56) + 8 * v7, a2);
    result = _NativeDictionary._delete(at:)();
    *v2 = v10;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 8) = (v6 & 1) == 0;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSo32CEKCinematicSubjectIndicatorViewCGMR, &lazy cache variable for type metadata for CEKCinematicSubjectIndicatorView);
}

{
  v4 = v1;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15ConversationKit14LayoutPosition33_CB5716349B733E4BD07C5ACF0D02830DLLOSo6CGSizeVGMd);
  OUTLINED_FUNCTION_130_0();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, v3);
  v8 = *(*(v10 + 56) + 16 * v7);
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition();
  _NativeDictionary._delete(at:)();
  *v4 = v10;
  return v8;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v7 = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v12 = *(*v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_130_0();
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
  v13 = *(v18 + 48);
  v14 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v15 + 8))(v13 + *(v15 + 72) * v10, v14);
  v16 = *(*(v18 + 56) + 8 * v10);
  type metadata accessor for NSObject(0, a4);
  OUTLINED_FUNCTION_10_32(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  _NativeDictionary._delete(at:)();
  *v7 = v18;
  return v16;
}

uint64_t partial apply for closure #1 in SensitiveContentController.configureShield(for:analysis:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void, unint64_t))
{
  v6 = a2(0);
  OUTLINED_FUNCTION_22(v6);
  return a3(a1, *(v3 + 16), v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80)));
}

uint64_t partial apply for closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(uint64_t a1)
{
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in SensitiveContentController.configureShieldForJoiningParticipant(_:)(a1, v7, v8, v9, v10, v1 + v6);
}

void outlined consume of SensitiveContentController.HistoryCheckStatus?(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    outlined consume of SensitiveContentController.HistoryCheckStatus(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState()
{
  result = lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState;
  if (!lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensitiveContentController.ShieldState and conformance SensitiveContentController.ShieldState);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentController.StreamSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SensitiveContentController.StreamSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit26SensitiveContentControllerC18HistoryCheckStatus33_063DB4DC5BD342763B5D5395B1DD5E15LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t lazy protocol witness table accessor for type LayoutPosition and conformance LayoutPosition()
{
  result = lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition;
  if (!lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition;
  if (!lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutPosition and conformance LayoutPosition);
  }

  return result;
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type SCAParticipant and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject;
  if (!lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for SCAParticipant);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SCAParticipant and conformance NSObject);
  }

  return result;
}

uint64_t block_copy_helper_40_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for SensitiveContentController.ShieldState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason()
{
  result = lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason;
  if (!lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SensitiveContentController.StreamSettings.Reason and conformance SensitiveContentController.StreamSettings.Reason);
  }

  return result;
}

uint64_t AnsweringConditionTimer.shouldAnswer@Sendable (_:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *v0;
  v1[4] = *v0;
  v4 = *(v3 + 80);
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[12] = v6;
  v1[13] = v5;

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.shouldAnswer@Sendable (_:), v6, v5);
}

{
  v48 = v0;
  if ((*(v0[3] + 16))(v0[2]))
  {
    v1 = v0[10];
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[2];
    (*(v0[3] + 32))(v4);
    v0[14] = direct field offset for AnsweringConditionTimer.logger;
    v5 = *(v3 + 16);
    v0[15] = v5;
    v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v1, v4, v2);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[10];
    if (v8)
    {
      v10 = v0[9];
      v45 = v7;
      v12 = v0[5];
      v11 = v0[6];
      v13 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v13 = 136446466;
      v14 = Duration.description.getter();
      log = v6;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v5(v10, v9, v12);
      v17 = *(v11 + 8);
      v17(v9, v12);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v17(v10, v12);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v47);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1BBC58000, log, v45, "Should Answer timer started with timeToWait %{public}s for: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v17 = *(v0[6] + 8);
      v17(v0[10], v0[5]);
    }

    v0[17] = v17;
    v41 = swift_task_alloc();
    v0[18] = v41;
    *v41 = v0;
    v41[1] = AnsweringConditionTimer.shouldAnswer@Sendable (_:);

    return AsyncCancellableTimer.wait(with:)();
  }

  else
  {
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    v25 = v0[2];

    v28 = *(v23 + 16);
    v26 = v23 + 16;
    v27 = v28;
    (v28)(v22, v25, v24);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[6];
      v32 = v0[7];
      v33 = v0[5];
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      v35 = OUTLINED_FUNCTION_2_74(4.8751e-34);
      v27(v35);
      v36 = *(v31 + 8);
      v36(v32, v33);
      dispatch thunk of CustomStringConvertible.description.getter();
      v37 = OUTLINED_FUNCTION_3_72();
      (v36)(v37);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v26, &v47);

      *(v34 + 4) = v38;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v39, v40, "Should Answer timer returning early as NO for: %{public}s because we can no longer screen the call.");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
    }

    v43 = v0[1];

    return v43(0);
  }
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  else
  {
    v5 = AnsweringConditionTimer.shouldAnswer@Sendable (_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v20 = v0;

  if (static Task<>.isCancelled.getter())
  {
    (*(v0 + 120))(*(v0 + 64), *(v0 + 16), *(v0 + 40));
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 136);
    if (v3)
    {
      v5 = *(v0 + 64);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      v17 = *(v0 + 120);
      v8 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      v9 = OUTLINED_FUNCTION_2_74(4.8751e-34);
      v17(v9);
      v4(v5, v6);
      dispatch thunk of CustomStringConvertible.description.getter();
      v10 = OUTLINED_FUNCTION_3_72();
      (v4)(v10);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v19);

      *(v8 + 4) = v11;
      OUTLINED_FUNCTION_58_0(&dword_1BBC58000, v12, v13, "Should Answer timer canceled for: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
      v4(*(v0 + 64), *(v0 + 40));
    }

    v14 = 0;
  }

  else
  {
    v14 = (*(*(v0 + 24) + 16))(*(v0 + 16));
  }

  v15 = *(v0 + 8);

  return v15(v14 & 1);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AnsweringConditionTimer.__allocating_init(logger:timeToWaitForCall:callIsScreenable:)()
{
  OUTLINED_FUNCTION_3_1();
  v0 = swift_allocObject();
  AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)();
  return v0;
}

char *AnsweringConditionTimer.init(logger:timeToWaitForCall:callIsScreenable:)()
{
  OUTLINED_FUNCTION_3_1();
  v6 = direct field offset for AnsweringConditionTimer.timer;
  type metadata accessor for AsyncCancellableTimer();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  *&v1[v6] = v7;
  *(v1 + 4) = v4;
  *(v1 + 5) = v3;
  v8 = direct field offset for AnsweringConditionTimer.logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 32))(&v1[v8], v5, v9);
  *(v1 + 2) = v2;
  *(v1 + 3) = v0;
  return v1;
}

uint64_t AnsweringConditionTimer.cancel()()
{
  OUTLINED_FUNCTION_24_0();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v3, v2);
}

{
  v1 = *(*(v0 + 16) + direct field offset for AnsweringConditionTimer.timer);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v1, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  AsyncCancellableTimer.cancel()();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](AnsweringConditionTimer.cancel(), v1, v2);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnsweringConditionTimer.deinit()
{

  v1 = direct field offset for AnsweringConditionTimer.logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AnsweringConditionTimer.__deallocating_deinit()
{
  AnsweringConditionTimer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AnsweringConditionTimer()
{
  result = type metadata accessor for Logger();
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

void RecentsCollectionViewCell.configure(with:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {
    v4[3] = type metadata accessor for RecentsCallItem(0);
    v4[4] = lazy protocol witness table accessor for type RecentsCallItem and conformance RecentsCallItem();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
    _s15ConversationKit15RecentsCallItemVWOcTm_1(a1, boxed_opaque_existential_1, type metadata accessor for RecentsCallItem);

    dispatch thunk of RecentsListItemViewHelper.configure(with:)();

    __swift_destroy_boxed_opaque_existential_1(v4);
    RecentsCollectionViewCell.configureMultiselectEditAccessory(for:)(a1);
    RecentsCollectionViewCell.configureTrailingAccessory(for:)(a1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type RecentsCallItem and conformance RecentsCallItem()
{
  result = lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem;
  if (!lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem)
  {
    type metadata accessor for RecentsCallItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RecentsCallItem and conformance RecentsCallItem);
  }

  return result;
}

void RecentsCollectionViewCell.messageTapHandler.setter(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v3 = dispatch thunk of RecentsListItemViewHelper.messageIndicatorView.getter();

    if (v3)
    {
      dispatch thunk of MessageIndicatorView.tapHandler.setter();
    }

    else
    {

      outlined consume of (@escaping @callee_guaranteed () -> ())?(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.avatarViewController : RecentsCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.avatarViewController : RecentsCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = *a1;
  return v3(v2);
}

void RecentsCollectionViewCell.avatarViewController.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v1 = dispatch thunk of RecentsListItemViewHelper.avatarViewController.getter();

    if (v1)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t RecentsCollectionViewCell.avatarViewController.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {
    v2 = result;
    if (result)
    {
      lazy protocol witness table accessor for type CNAvatarViewController and conformance CNAvatarViewController();
    }

    v3 = v2;

    OUTLINED_FUNCTION_44_0();
    dispatch thunk of RecentsListItemViewHelper.avatarViewController.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*RecentsCollectionViewCell.avatarViewController.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  RecentsCollectionViewCell.avatarViewController.getter();
  *a1 = v3;
  return RecentsCollectionViewCell.avatarViewController.modify;
}

void RecentsCollectionViewCell.avatarViewController.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    RecentsCollectionViewCell.avatarViewController.setter(v2);
  }

  else
  {
    RecentsCollectionViewCell.avatarViewController.setter(*a1);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.joinButton : RecentsCollectionViewCell@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.joinButton : RecentsCollectionViewCell(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *RecentsCollectionViewCell.joinButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void RecentsCollectionViewCell.joinButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void RecentsCollectionViewCell.detailAccessoryButton.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    dispatch thunk of RecentsListItemViewHelper.detailAccessoryButton.getter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path getter for RecentsCollectionViewCell.doubleTapHandler : RecentsCollectionViewCell@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CNComposeRecipient) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for RecentsCollectionViewCell.doubleTapHandler : RecentsCollectionViewCell(uint64_t *a1, void **a2)
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

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v3);
  return v7(v6, v5);
}

uint64_t RecentsCollectionViewCell.doubleTapHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(*v1);
  return v2;
}

uint64_t RecentsCollectionViewCell.doubleTapHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id RecentsCollectionViewCell.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

char *RecentsCollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for RecentsListItemLocation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  v6 = type metadata accessor for RecentsCollectionViewCell();
  *v5 = 0;
  v5[1] = 0;
  v13[0] = v0;
  v13[1] = v6;
  v7 = OUTLINED_FUNCTION_18_1();
  v10 = objc_msgSendSuper2(v8, v9, v7);
  v11 = [v10 contentView];
  (*(v2 + 104))(v4, *MEMORY[0x1E69D8950], v1);
  type metadata accessor for RecentsListItemViewHelper();
  swift_allocObject();
  *&v10[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper] = RecentsListItemViewHelper.init(parentView:location:)();

  RecentsCollectionViewCell.configureRootView()();

  return v10;
}

void RecentsCollectionViewCell.configureRootView()()
{
  v1 = [objc_opt_self() secondarySystemFillColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  [v0 setOpaque_];
  RecentsCollectionViewCell.configureSelectedBackgroundView()();
}

id RecentsCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RecentsCollectionViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_joinButton) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_doubleTapHandler);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall RecentsCollectionViewCell.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsCollectionViewCell();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  if (*&v0[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    [v0 isEditing];
    v1 = [v0 trailingAccessoryView];
    dispatch thunk of RecentsListItemViewHelper.layout(shouldHideTrailingAccessoryView:trailingAccessoryView:)();
  }

  else
  {
    __break(1u);
  }
}

CGSize __swiftcall RecentsCollectionViewCell.sizeThatFits(_:)(CGSize result)
{
  if (*&v1[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    [v1 isEditing];
    v2 = [v1 trailingAccessoryView];
    dispatch thunk of RecentsListItemViewHelper.sizeThatFits(_:shouldHideTrailingAccessoryView:trailingAccessoryView:)();
    v4 = v3;
    v6 = v5;

    result.width = v4;
    result.height = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall RecentsCollectionViewCell.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RecentsCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  if (*&v1[OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper])
  {

    dispatch thunk of RecentsListItemViewHelper.updateForParentTraitCollectionDidChange()();
  }

  else
  {
    __break(1u);
  }
}

id RecentsCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecentsCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RecentsCollectionViewCell.configureMultiselectEditAccessory(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit15UICellAccessoryV15LayoutDimensionOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit15RecentsCallItemVWOcTm_1(a1, v15, type metadata accessor for RecentsCallItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    UICollectionViewListCell.accessories.setter();
    return outlined destroy of RecentOngoingConversationMetadata(v15, type metadata accessor for RecentsCallItemType);
  }

  else
  {
    outlined destroy of RecentOngoingConversationMetadata(v15, type metadata accessor for RecentsCallItemType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit15UICellAccessoryVGMd);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1BC4BA940;
    (*(v10 + 104))(v12, *MEMORY[0x1E69DBF18], v9);
    v17 = type metadata accessor for UICellAccessory.LayoutDimension();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
    return UICollectionViewListCell.accessories.setter();
  }
}

void RecentsCollectionViewCell.configureTrailingAccessory(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit013RecentOngoingA8MetadataVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for RecentOngoingConversationMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecentsCallItemType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit15RecentsCallItemVWOcTm_1(a1, v12, type metadata accessor for RecentsCallItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of RecentOngoingConversationMetadata(v12, v9);
    v13 = *&v9[*(v7 + 24)];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v14 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *static RestrictedConversationChecker.shared) + 0x80))(v13))
    {
      RecentsCollectionViewCell.configureDetailAccessory()();
    }

    else
    {
      v15 = (*((*v14 & *v2) + 0x98))();
      if (!v15)
      {
        v15 = [objc_allocWithZone(type metadata accessor for RecentsJoinButton()) init];
      }

      v16 = v15;
      _s15ConversationKit15RecentsCallItemVWOcTm_1(v9, v6, type metadata accessor for RecentOngoingConversationMetadata);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      (*((*v14 & *v16) + 0x60))(v6);
      [v2 _setPopupMenuButton_];
      [v2 addSubview_];
      v17 = *((*v14 & *v2) + 0xA0);
      v18 = v16;
      v19 = v17(v16);
      v20 = (*((*v14 & *v2) + 0xB0))(v19);
      [v20 removeFromSuperview];
    }

    outlined destroy of RecentOngoingConversationMetadata(v9, type metadata accessor for RecentOngoingConversationMetadata);
  }

  else
  {
    outlined destroy of RecentOngoingConversationMetadata(v12, type metadata accessor for RecentsCallItemType);
    RecentsCollectionViewCell.configureDetailAccessory()();
  }
}

unint64_t lazy protocol witness table accessor for type CNAvatarViewController and conformance CNAvatarViewController()
{
  result = lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController;
  if (!lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for CNAvatarViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CNAvatarViewController and conformance CNAvatarViewController);
  }

  return result;
}

void RecentsCollectionViewCell.messageTapHandler.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit25RecentsCollectionViewCell_listItemViewHelper))
  {

    v1 = dispatch thunk of RecentsListItemViewHelper.messageIndicatorView.getter();

    if (v1)
    {
      dispatch thunk of MessageIndicatorView.tapHandler.getter();
    }

    OUTLINED_FUNCTION_44_0();
  }

  else
  {
    __break(1u);
  }
}

void key path getter for RecentsCollectionViewCell.messageTapHandler : RecentsCollectionViewCell(uint64_t (**a1)()@<X8>)
{
  RecentsCollectionViewCell.messageTapHandler.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v2 = swift_allocObject();
    *(v2 + 16) = v4;
    *(v2 + 24) = v5;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = v2;
}

void key path setter for RecentsCollectionViewCell.messageTapHandler : RecentsCollectionViewCell(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> (@out ());
  }

  else
  {
    v4 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v1);
  RecentsCollectionViewCell.messageTapHandler.setter(v4);
}

void (*RecentsCollectionViewCell.messageTapHandler.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  RecentsCollectionViewCell.messageTapHandler.getter();
  *a1 = v3;
  a1[1] = v4;
  return RecentsCollectionViewCell.messageTapHandler.modify;
}

void RecentsCollectionViewCell.messageTapHandler.modify(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_44_0();
    outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
    v3 = OUTLINED_FUNCTION_44_0();
    RecentsCollectionViewCell.messageTapHandler.setter(v3);
    v4 = OUTLINED_FUNCTION_44_0();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_44_0();
    RecentsCollectionViewCell.messageTapHandler.setter(v5);
  }
}

void (*RecentsCollectionViewCell.didDoubleTap(gesture:)(uint64_t a1))(uint64_t)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))();
  if (result)
  {
    v4 = result;
    result(a1);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4);
  }

  return result;
}

Swift::Void __swiftcall RecentsCollectionViewCell.configureSelectedBackgroundView()()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.607843137 green:0.607843137 blue:0.607843137 alpha:0.72];
  [v11 setBackgroundColor_];

  [v11 _setDrawsAsBackdropOverlayWithBlendMode_];
  [v0 setSelectedBackgroundView_];
}

Swift::Void __swiftcall RecentsCollectionViewCell.configureDetailAccessory()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  [v0 addSubview_];

  v3 = (*((*v1 & *v0) + 0x98))([v0 _setPopupMenuButton_]);
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }
}

uint64_t RecentsCollectionViewCell.trailingAccessoryView.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 superview];
    if (v4)
    {

      return v3;
    }
  }

  v6 = *((*v1 & *v0) + 0xB0);

  return v6();
}

uint64_t @nonobjc CNAvatarViewController.contacts.getter()
{
  v1 = [v0 contacts];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t outlined init with take of RecentOngoingConversationMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentOngoingConversationMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentOngoingConversationMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double CGPoint.rounded(_:toScaleOf:)()
{
  OUTLINED_FUNCTION_0_83();
  v3 = [v2 traitCollection];
  [v3 displayScale];
  CGFloat.rounded(_:toScale:)(v0, v4, v1);
  OUTLINED_FUNCTION_1_77();

  return v1;
}

{
  OUTLINED_FUNCTION_0_83();
  [v2 displayScale];
  CGFloat.rounded(_:toScale:)(v0, v3, v1);
  OUTLINED_FUNCTION_1_77();
  return v1;
}

double CGPoint.rounded(_:toScale:)(uint64_t a1, double a2, double a3, double a4)
{
  v7 = CGFloat.rounded(_:toScale:)(a1, a2, a3);
  CGFloat.rounded(_:toScale:)(a1, a2, a4);
  return v7;
}

double CGPoint.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return specialized CGPoint.rounded(_:toScaleOf:)(a1, a2, a3, a4);
}

double specialized CGPoint.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  [v7 displayScale];
  v9 = v8;
  v10 = CGFloat.rounded(_:toScale:)(a1, v8, a3);
  CGFloat.rounded(_:toScale:)(a1, v9, a4);

  return v10;
}

uint64_t IDSCapabilitiesChecker.Capabilities.init(faceTimeAudio:faceTimeVideo:faceTimeMultiway:videoMessaging:)(char a1, char a2, char a3, char a4)
{
  v4 = 256;
  if ((a1 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 0x1000000;
  if ((a3 & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000000000;
  if ((a4 & 1) == 0)
  {
    v8 = 0;
  }

  return v6 | v7 | v8;
}

uint64_t IDSCapabilitiesChecker.Capabilities.faceTimeAudio.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 8) & 1;
  }
}

uint64_t IDSCapabilitiesChecker.Capabilities.faceTimeVideo.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 16) & 1;
  }
}

uint64_t IDSCapabilitiesChecker.Capabilities.faceTimeMultiway.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 24) & 1;
  }
}

uint64_t IDSCapabilitiesChecker.Capabilities.videoMessaging.getter(unint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return (a1 >> 40) & 1;
  }
}

BOOL static IDSCapabilitiesChecker.Capabilities.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = vdupq_n_s64(a1);
  v4 = vdupq_n_s64(a2);
  *v3.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v3, xmmword_1BC4C74D0)), vceqzq_s64(vandq_s8(v3, xmmword_1BC4C74E0))), vuzp1q_s32(vceqzq_s64(vandq_s8(v4, xmmword_1BC4C74D0)), vceqzq_s64(vandq_s8(v4, xmmword_1BC4C74E0)))))), 0xFuLL));
  v3.i16[0] = vminv_u16(*v3.i8);
  return v3.i32[0] & ~(a2 ^ a1) & ((a1 >> 40) & 1 ^ ((a2 & 0x10000000000) == 0));
}

uint64_t key path setter for IDSCapabilitiesChecker.participantCapabilities : IDSCapabilitiesChecker(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t key path setter for IDSCapabilitiesChecker.delegate : IDSCapabilitiesChecker(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 176);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*IDSCapabilitiesChecker.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return IDSCapabilitiesChecker.delegate.modify;
}

void IDSCapabilitiesChecker.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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
  }

  free(v3);
}

void *IDSCapabilitiesChecker.__allocating_init(participants:lookupManager:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_29_6();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_23_24();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v7 = OUTLINED_FUNCTION_21_21(v6);
  v8(v7);
  v9 = OUTLINED_FUNCTION_26_19();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void *IDSCapabilitiesChecker.init(participants:lookupManager:)(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  OUTLINED_FUNCTION_23_24();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_21_21(v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_26_19();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v7;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_5_52(a1, a7 + 8 * (a1 >> 6));
  v9 = v8[6] + 32 * result;
  *v9 = v10;
  *(v9 + 8) = v11;
  *(v9 + 16) = v12;
  *(v9 + 24) = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  outlined init with take of ScreenSharingStateMonitor.Observation(v8, *(v6 + 56) + 8 * v5);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  OUTLINED_FUNCTION_29_16(v4, v5, v6, v7);
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v8, v9);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  outlined init with take of Any(v10, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_8_51();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  outlined init with take of TapInteractionHandler(v8, *(v6 + 56) + 40 * v5);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + 4 * v4) = v6;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v4 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(v5[6] + v4) = v6 & 1;
  *(v5[7] + 8 * v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_38(v5, v10);
  }
}

{
  v5 = OUTLINED_FUNCTION_0_84(a1, a2, a3, a4);
  *(*(v6 + 48) + 8 * v5) = v7;
  memcpy((*(v6 + 56) + 72 * v5), v8, 0x41uLL);
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  v8 = v7 + 6 * v5;
  *(v8 + 4) = v9;
  *v8 = v10;
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

{
  v6 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  outlined init with take of Any(v8, (v7 + 32 * v6));
  OUTLINED_FUNCTION_8_51();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

{
  v5 = OUTLINED_FUNCTION_5_52(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v11);
  }
}

{
  v5 = OUTLINED_FUNCTION_2_75(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_39(v6, v13);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_5_52(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 22) = v11;
  *(v8 + 20) = v12;
  *(v8 + 16) = v13;
  *(v7[7] + 8 * result) = v14;
  v15 = v7[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v17;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5_52(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(a3 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  outlined init with take of Any(a2, (*(a3 + 56) + 32 * a1));
  OUTLINED_FUNCTION_8_51();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v4;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_52(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_20_3();
  (*(v12 + 32))(v11 + *(v12 + 72) * a1, a2);
  v13 = *(a5 + 56) + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4;
  OUTLINED_FUNCTION_8_51();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v14;
  }
}

void specialized _NativeDictionary._insert(at:key:value:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_0_84(v7, v8, v9, v10);
  OUTLINED_FUNCTION_25_24();
  OUTLINED_FUNCTION_20_3();
  v11 = OUTLINED_FUNCTION_17_31();
  v12(v11);
  v13 = (*(a4 + 56) + 3 * v4);
  *v13 = a3 & 1;
  v13[1] = BYTE1(a3) & 1;
  v13[2] = BYTE2(a3) & 1;
  OUTLINED_FUNCTION_8_51();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_5_52(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + result) = v5;
  v6 = (v4[7] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  v9 = v4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v11;
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_5_52(a1, a3 + 8 * (a1 >> 6));
  *(v4[6] + 8 * result) = v5;
  v6 = (v4[7] + 32 * result);
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v4[2] = v13;
  }

  return result;
}

void *specialized IDSCapabilitiesChecker.init(participants:lookupManager:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 32))();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID();
  v8 = MEMORY[0x1E69E7CC0];
  a3[2] = Dictionary.init(dictionaryLiteral:)();
  a3[3] = Dictionary.init(dictionaryLiteral:)();
  a3[5] = 0;
  swift_unknownObjectWeakInit();
  a3[6] = v8;
  outlined init with copy of IDSLookupManager(v12, (a3 + 7));
  if (a1)
  {
    (*(*a3 + 232))(a1);
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x1E69D8FA0];

  [v9 addObserver:a3 selector:sel_handleLookupManagerDidChangeNotification_ name:v10 object:_bridgeAnythingToObjectiveC<A>(_:)()];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a3;
}

uint64_t outlined destroy of IDSCapabilitiesChecker.ParticipantDestination?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22IDSCapabilitiesCheckerC22ParticipantDestination33_CDCD3D0B33FE10A11E29AF4D631CB8CALLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destructiveInjectEnumTag for IDSCapabilitiesChecker.Capabilities(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t outlined init with take of (key: UUID, value: IDSCapabilitiesChecker.Capabilities)?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_20_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

id ConversationControlsLagunaMenuButtonProvider.activity.getter()
{
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = [v1 activity];
    if (v2)
    {
      return v2;
    }
  }

  v4 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 160)) + 0x988))();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v3 = [v4 activity];

  if (v3)
  {
    v6 = [v3 metadata];
    if (!v6 || (v7 = v6, v8 = [v6 supportsContinuationOnTV], v7, (v8 & 1) == 0))
    {

      return 0;
    }
  }

  return v3;
}

id ConversationControlsLagunaMenuButtonProvider.init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char a6)
{
  *(v6 + 184) = 0;
  *(v6 + 193) = 0;
  *(v6 + 200) = 0;
  *(v6 + 208) = MEMORY[0x1BFB209B0](0xD00000000000001BLL, 0x80000001BC4FDE00);
  *(v6 + 216) = MEMORY[0x1BFB209B0](0xD00000000000001ALL, 0x80000001BC4FDE20);
  v11 = *(v6 + 184);
  *(v6 + 184) = a5;
  v12 = a5;

  *(v6 + 192) = a6;
  v13 = a3;
  v14 = a1;
  v15 = ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
  v16 = *(v15 + 192);
  v17 = objc_opt_self();
  v18 = v17;
  if (v16 != 1)
  {

    ControlsButtonProvider.backgroundStyle.setter([v18 systemGreenColor], 0, 0x40u);
    v20 = ControlsButtonProvider.prominentTitleFont.getter();
    ControlsButtonProvider.titleFont.setter(v20);
    goto LABEL_5;
  }

  ControlsButtonProvider.backgroundStyle.setter([v17 whiteColor], 0, 0x40u);
  ControlsButtonProvider.foregroundColor.setter([v18 systemBlackColor]);
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (result)
  {
    ControlsButtonProvider.titleFont.setter(result);

LABEL_5:
    v21 = objc_opt_self();

    v22 = [v21 conversationKit];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_14_2();
    v23.super.isa = v22;
    v26 = OUTLINED_FUNCTION_17_0(1163284301, 0xE400000000000000, v24, v25, v23);
    v28 = v27;

    swift_beginAccess();
    *(v15 + 120) = v26;
    *(v15 + 128) = v28;

    ControlsButtonProvider.title.didset(v29);

    return v15;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ConversationControlsLagunaMenuButtonProvider.buttonChanged()()
{
  ControlsButtonProvider.buttonChanged()();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
    outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(0xD000000000000013, 0x80000001BC4FDE40, v2);
    [v2 addTarget:v0 action:sel_lagunaHandoffButtonTapped forControlEvents:0x2000];
  }
}

void ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 193);
    v4 = [Strong titleLabel];
    if (v4)
    {
      v5 = v4;
      v6 = 1.0;
      if (v3)
      {
        v6 = 0.0;
      }

      [v4 setAlpha_];
    }
  }
}

uint64_t ConversationControlsLagunaMenuButtonProvider.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ConversationControlsMenuButtonProvider.buttonConfiguration.getter(a1);
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC568], v2);
  return UIButton.Configuration.buttonSize.setter();
}

Swift::Bool __swiftcall ConversationControlsLagunaMenuButtonProvider.shouldEnableMenu()()
{
  v1 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v1)
  {

    v2 = *(v0 + 193) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id ConversationControlsLagunaMenuButtonProvider.spinnerView.getter()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityIndicatorView);
    UIActivityIndicatorView.init(style:size:)(v4, ConversationKit_PlatformActivityIndicatorStyle_spinner, ConversationKit_PlatformActivityIndicatorSize_medium);
    v5 = *(v0 + 200);
    *(v3 + 200) = v6;
    v2 = v6;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

Swift::Void __swiftcall ConversationControlsLagunaMenuButtonProvider.lagunaHandoffButtonTapped()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if ((*(v0 + 193) & 1) == 0 && !ConversationControlsLagunaMenuButtonProvider.shouldEnableMenu()())
    {
      v2 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
      ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(0, v2);
    }
  }
}

void ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if ((*(v2 + 193) & 1) == 0)
    {
      *(v2 + 193) = 1;
      ConversationControlsLagunaMenuButtonProvider.showLoading()();
      ConversationControlsMenuButtonProvider.disableMenuContainerViewInteraction()();
      v6 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 160)) + 0x578))();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        swift_weakInit();

        ConduitLagunaNoticeManager.pushSession(lightweightHandoff:selectedActivity:completion:)(a1 & 1, a2, partial apply for closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:), v8);
      }
    }
  }
}

void ConversationControlsLagunaMenuButtonProvider.showLoading()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = ConversationControlsLagunaMenuButtonProvider.spinnerView.getter();
    v4 = [v3 superview];

    if (v4)
    {

      v2 = v4;
    }

    else
    {
      [v2 intrinsicContentSize];
      v6 = v5;
      v8 = v7;
      ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
      v9 = *(v0 + 200);
      v10 = *(v0 + 192);
      v11 = objc_opt_self();
      v12 = v9;
      v13 = &selRef_systemGrayColor;
      if (!v10)
      {
        v13 = &selRef_whiteColor;
      }

      v14 = [v11 *v13];
      [v12 setColor_];

      [*(v0 + 200) setTranslatesAutoresizingMaskIntoConstraints_];
      [v2 addSubview_];
      v15 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1BC4BA7F0;
      v17 = [*(v0 + 200) centerYAnchor];
      v18 = [v2 centerYAnchor];
      v19 = [v17 constraintEqualToAnchor_];

      *(v16 + 32) = v19;
      v20 = [*(v0 + 200) centerXAnchor];
      v21 = [v2 centerXAnchor];
      v22 = [v20 constraintEqualToAnchor_];

      *(v16 + 40) = v22;
      v23 = [*(v0 + 200) widthAnchor];
      v24 = [v23 constraintEqualToConstant_];

      *(v16 + 48) = v24;
      v25 = [*(v0 + 200) heightAnchor];
      v26 = [v25 constraintEqualToConstant_];

      *(v16 + 56) = v26;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 activateConstraints_];

      [*(v0 + 200) startAnimating];
    }
  }
}

uint64_t closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v10 = static OS_dispatch_queue.main.getter();
    v13 = v4;
    v11 = v10;
    aBlock[4] = partial apply for closure #1 in closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:);
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_28;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v7, v3, v12);
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v13);
  }

  return result;
}

void closure #1 in closure #1 in ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(uint64_t a1)
{
  *(a1 + 193) = 0;
  ConversationControlsLagunaMenuButtonProvider.hideLoading()();
  v1._countAndFlagsBits = 0x6D6F432068737550;
  v1._object = 0xED00006574656C70;
  ConversationControlsMenuButtonProvider.dismissMenu(context:)(v1);
}

void ConversationControlsLagunaMenuButtonProvider.hideLoading()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = ConversationControlsLagunaMenuButtonProvider.spinnerView.getter();
    [v2 stopAnimating];

    [*(v0 + 200) removeFromSuperview];
    ConversationControlsLagunaMenuButtonProvider.updateButtonLabelVisibility()();
  }
}

Class ConversationControlsLagunaMenuButtonProvider.menu(for:)()
{
  v2 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (((*(*static Defaults.shared + 616))() & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, &static Logger.conversationControls);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, v4, v5, "Displaying Laguna menu", v6, 2u);
    MEMORY[0x1BFB23DF0](v6, -1, -1);
  }

  OUTLINED_FUNCTION_306();

  v7 = v2[20];
  v66 = MEMORY[0x1E69E7CC0];
  v8 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v11.super.isa = v10;
    OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xEF40255F444E415FLL, v1, 0xEF74694B6E6F6974, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BC4BA940;
    v13 = [v9 concatenatedDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    static String.localizedStringWithFormat(_:_:)();
    OUTLINED_FUNCTION_306();
  }

  else
  {
    v9 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_29_3();
    v18.super.isa = v9;
    OUTLINED_FUNCTION_17_0(0x454D495445434146, 0xE800000000000000, v1, 0xEF74694B6E6F6974, v18);
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v7) + 0x380))())
  {

    preferredElementSize = MEMORY[0x1E69E7CC0];
    v20 = &off_1E7FE9000;
    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v22 = @nonobjc UIImage.__allocating_init(systemName:)();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
    v23 = v2[27];
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v7;
    v26 = v22;
    v27 = v23;
    v28 = v7;
    v59._rawValue = 0;
    OUTLINED_FUNCTION_3_0();
    v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x1BFB20CC0](v29);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    preferredElementSize = v66;

    v21 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_306();
    v20 = &off_1E7FE9000;
  }

  v30 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
  if (v30)
  {
    v31 = v30;
    v32 = _sSo7UIImageC15ConversationKitE5image5namedAbC9ImageName_p_tFZTf4en_nAC0F5NamesV0B8ControlsO_Tt0g5();
    v33 = v21;
    v34 = [objc_opt_self() labelColor];
    v35 = [v32 imageWithTintColor_];

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
    v36 = [objc_opt_self() v20[465]];
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_14_2();
    v37.super.isa = v36;
    OUTLINED_FUNCTION_17_0(v38, v39, v40, v41, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1BC4BA940;
    v43 = [v31 concatenatedDescription];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    *(v42 + 56) = v33;
    *(v42 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v42 + 32) = v44;
    *(v42 + 40) = v46;
    static String.localizedStringWithFormat(_:_:)();

    v47 = v2[26];
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v31;
    v50 = v35;
    v51 = v47;
    v52 = v31;
    v59._rawValue = 0;
    OUTLINED_FUNCTION_3_0();
    v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    MEMORY[0x1BFB20CC0](v53);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    preferredElementSize = v66;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v54 = *MEMORY[0x1E69DDDC8];
  v60[64] = 0;
  v67[0] = 0xD000000000000017;
  v67[1] = 0x80000001BC4FDE60;
  v67[2] = 2;
  v67[3] = v54;
  v68 = 0;
  v69 = 4;
  v70 = 0;
  v71 = 0;
  v61[0] = 0xD000000000000017;
  v61[1] = 0x80000001BC4FDE60;
  v61[2] = 2;
  v61[3] = v54;
  v62 = 0;
  v63 = 4;
  v64 = 0;
  v65 = 0;
  v55 = v54;
  outlined init with copy of SymbolImageDescription(v67, v60);
  outlined destroy of SymbolImageDescription(v61);
  v56 = static UIImage.symbolImage(for:)(v67);
  outlined destroy of SymbolImageDescription(v67);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  OUTLINED_FUNCTION_3_0();
  v72.value.super.isa = v56;
  v72.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v57, v58, v72, 33, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v59).super.super.isa;
}

void closure #1 in ConversationControlsLagunaMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6 && (v6, (*(v5 + 193) & 1) == 0))
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, &static Logger.conversationControls);
      v8 = a3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136315138;
        if ((*((*MEMORY[0x1E69E7D40] & *v8) + 0x2C0))())
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
          v13 = String.init<A>(reflecting:)();
          v15 = v14;
        }

        else
        {
          v15 = 0xE300000000000000;
          v13 = 7104878;
        }

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

        *(v11 + 4) = v16;
        _os_log_impl(&dword_1BBC58000, v9, v10, "Laguna start handoff of facetime: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x1BFB23DF0](v12, -1, -1);
        MEMORY[0x1BFB23DF0](v11, -1, -1);
      }

      v17 = ConversationControlsLagunaMenuButtonProvider.activity.getter();
      ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(0, v17);
    }

    else
    {
    }
  }
}

uint64_t closure #2 in ConversationControlsLagunaMenuButtonProvider.menu(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      if ((*(v5 + 193) & 1) == 0)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        __swift_project_value_buffer(v7, &static Logger.conversationControls);
        v8 = a3;
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v17 = v12;
          *v11 = 136315138;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationActivity);
          v13 = v8;
          v14 = String.init<A>(reflecting:)();
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v17);

          *(v11 + 4) = v16;
          _os_log_impl(&dword_1BBC58000, v9, v10, "Laguna start handoff of activity: %s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1BFB23DF0](v12, -1, -1);
          MEMORY[0x1BFB23DF0](v11, -1, -1);
        }

        ConversationControlsLagunaMenuButtonProvider.pushSelected(lightweightHandoff:selectedActivity:)(1, v8);
      }
    }
  }

  return result;
}

void ConversationControlsLagunaMenuButtonProvider.__ivar_destroyer()
{
  v1 = *(v0 + 216);
}

id *ConversationControlsLagunaMenuButtonProvider.deinit()
{
  v0 = ConversationControlsMenuButtonProvider.deinit();

  return v0;
}

uint64_t ConversationControlsLagunaMenuButtonProvider.__deallocating_deinit()
{
  ConversationControlsLagunaMenuButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnsweringMachineStatusService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnsweringMachineStatusService() + 20);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnsweringMachineStatusService.isInSupportedEnvirement.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnsweringMachineStatusService() + 24));

  return v1;
}

uint64_t AnsweringMachineStatusService.init(logger:isInSupportedEnvirement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v8 = type metadata accessor for AnsweringMachineStatusService();
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Logger();
  result = (*(*(v10 - 8) + 32))(&a4[v9], a1, v10);
  v12 = &a4[*(v8 + 24)];
  *v12 = a2;
  *(v12 + 1) = a3;
  return result;
}

unint64_t type metadata completion function for AnsweringMachineStatusService()
{
  result = type metadata accessor for TUFeatureFlags();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for TUFeatureFlags()
{
  result = lazy cache variable for type metadata for TUFeatureFlags;
  if (!lazy cache variable for type metadata for TUFeatureFlags)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUFeatureFlags);
  }

  return result;
}

BOOL specialized Set.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

Swift::Int ShareActivitiesMoreMenuViewModel.MenuType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t ShareActivitiesMoreMenuViewModel.__allocating_init(call:controlsManager:menuType:callCenter:)(void *a1, void *a2, char *a3, void *a4)
{
  v8 = swift_allocObject();
  ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)(a1, a2, a3, a4);
  return v8;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ShareActivitiesMoreMenuViewModel.stopAction()();
  }

  return result;
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopAction()()
{
  if (*(v0 + 40))
  {
    ShareActivitiesMoreMenuViewModel.stopSharePlay()();
  }

  else
  {
    ShareActivitiesMoreMenuViewModel.stopScreenShare()();
  }
}

uint64_t closure #2 in ShareActivitiesMoreMenuViewModel.init(call:controlsManager:menuType:callCenter:)()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v0 = ShareActivitiesMoreMenuViewModel.secondaryView()();

  return v0;
}

uint64_t ShareActivitiesMoreMenuViewModel.secondaryView()()
{
  if (*(v0 + 40))
  {
    return ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()();
  }

  ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()();
  return 0;
}

uint64_t ShareActivitiesMoreMenuViewModel.createMenuItem()()
{
  if (!ShareActivitiesMoreMenuViewModel.canShowSharePlay()())
  {
    return 0;
  }

  v1 = *(v0 + 56);
  dispatch thunk of FTMenuItem.dismissOnTap.setter();
  if (*(v0 + 40))
  {
    v2 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
    if (v2)
    {
    }

    dispatch thunk of FTMenuItem.isSessionActive.setter();
    closure #2 in ShareActivitiesMoreMenuViewModel.createMenuItem()();
  }

  else
  {
    ShareActivitiesMoreMenuViewModel.isScreenShareActive()();
    dispatch thunk of FTMenuItem.isSessionActive.setter();
    closure #1 in ShareActivitiesMoreMenuViewModel.createMenuItem()(v0);
  }

  dispatch thunk of FTMenuItem.subtitle.setter();

  return v1;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.canShowSharePlay()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    v3 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v6))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v7, v8, "canShowSharePlay - call is nil or not connected");
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_19;
  }

  v3 = Strong;
  if (![Strong isConnected])
  {

    goto LABEL_7;
  }

  if (([v3 isEmergency]& 1) != 0)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v5))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v9 = [*(v0 + 32) conversationManager];
  v10 = [v9 isSharePlayAvailable];

  if (!v10)
  {
    v4 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v22))
    {
LABEL_17:
      v23 = OUTLINED_FUNCTION_33();
      OUTLINED_FUNCTION_39_2(v23);
      OUTLINED_FUNCTION_219();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_18();
    }

LABEL_18:

LABEL_19:
    return 0;
  }

  if (![*(v1 + 48) sharePlayInCallsEnabled])
  {
    v30 = [v3 provider];
    v31 = [v30 isFaceTimeProvider];

    if (!v31 || ([v3 isConversation]& 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  if (![v3 isSharePlayCapable])
  {
    v4 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_163(v32))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = [v3 provider];
  v12 = [v11 isFaceTimeProvider];

  if (!v12)
  {
    v33 = [v3 provider];
    v34 = [v33 isTelephonyProvider];

    if (!v34)
    {
      v4 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_163(v46))
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (!ShareActivitiesMoreMenuViewModel.isScreenShareActive()())
    {
      v35 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
      if (!v35)
      {
        v36 = 0;
        goto LABEL_30;
      }
    }

    v36 = 1;
LABEL_30:
    v37 = v3;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 67109376;
      *(v40 + 4) = v36;
      *(v40 + 8) = 1024;
      *(v40 + 10) = [v37 isConferenced];

      OUTLINED_FUNCTION_219();
      _os_log_impl(v41, v42, v43, v44, v45, 0xEu);
      OUTLINED_FUNCTION_18();
    }

    else
    {

      v38 = v37;
    }

    if (v36)
    {

      return 1;
    }

    else
    {
      v47 = [v37 isConferenced];

      return v47 ^ 1;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v52 = v16;
    *v15 = 136315138;
    v17 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (v17)
    {
      v18 = v17;
      [v17 state];

      type metadata accessor for TUConversationState(0);
      v19 = String.init<A>(reflecting:)();
      v21 = v20;
    }

    else
    {
      v21 = 0xE300000000000000;
      v19 = 7104878;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v52);

    *(v15 + 4) = v48;
    _os_log_impl(&dword_1BBC58000, v13, v14, "canShowSharePlay - conversation state is %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

LABEL_41:
  v49 = ShareActivitiesMoreMenuViewModel.conversation.getter();
  if (!v49)
  {
    goto LABEL_19;
  }

  v50 = v49;
  v51 = [v49 state];

  return v51 == 3;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.isScreenShareActive()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong isSharingScreen];

  return v2;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.createMenuItem()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v55 = String.init(_localized:table:comment:)();
  v56 = v10;
  lazy protocol witness table accessor for type String and conformance String();
  v11 = Text.init<A>(_:)();
  v53 = v12;
  v52 = v13;
  v15 = v14;
  if (!ShareActivitiesMoreMenuViewModel.isScreenShareActive()())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return v11;
    }

    v20 = Strong;
    v21 = v11;
    v22 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x980))(&v55);

    v23 = v57;
    if (v57)
    {
      v24 = v58;
      __swift_project_boxed_opaque_existential_1(&v55, v57);
      v25 = (*(v24 + 104))(v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      if (v25)
      {
        v26 = [v25 activity];
        v27 = [v26 originator];

        if (v27)
        {
          v28 = [v25 activity];
          v29 = [v28 isScreenSharingActivity];

          if (v29)
          {
            if ((*((*v22 & **(a1 + 64)) + 0x128))() == 3 || (v40 = outlined bridged method (ob) of @objc CNContact.displayName.getter([objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_]), !v41))
            {
              String.LocalizationValue.init(stringLiteral:)();
              v55 = String.init(_localized:table:comment:)();
              v56 = v48;
            }

            else
            {
              v42 = v40;
              v43 = v41;
              String.LocalizationValue.init(stringLiteral:)();
              String.init(_localized:table:comment:)();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1BC4BA940;
              *(v44 + 56) = MEMORY[0x1E69E6158];
              *(v44 + 64) = lazy protocol witness table accessor for type String and conformance String();
              *(v44 + 32) = v42;
              *(v44 + 40) = v43;
              v45 = String.init(format:_:)();
              v47 = v46;

              v55 = v45;
              v56 = v47;
            }

            v11 = Text.init<A>(_:)();
            outlined consume of Text.Storage(v21, v53, v52 & 1);

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of CallControlsService?(&v55, &_s15ConversationKit8Activity_pSgMd);
    }

    return v21;
  }

  v50 = v11;
  v51 = v15;
  v16 = *(a1 + 64);
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x178))(&v55);
  v18 = v55;
  v54 = v55;
  RemoteControlState.associatedParticipant.getter(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of CallControlsService?(v4, &_s15GroupActivities11ParticipantVSgMd);
    outlined consume of RemoteControlState(v18);
LABEL_15:
    String.LocalizationValue.init(stringLiteral:)();
    v55 = String.init(_localized:table:comment:)();
    v56 = v38;
    v11 = Text.init<A>(_:)();
    outlined consume of Text.Storage(v50, v53, v52 & 1);

    return v11;
  }

  (*(v6 + 32))(v8, v4, v5);
  v30 = outlined consume of RemoteControlState(v18);
  if ((*((*v17 & *v16) + 0x128))(v30) != 2)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  String.LocalizationValue.init(stringLiteral:)();
  String.init(_localized:table:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  v32 = Participant.displayName.getter();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = String.init(format:_:)();
  v37 = v36;

  v55 = v35;
  v56 = v37;
  v11 = Text.init<A>(_:)();
  outlined consume of Text.Storage(v50, v53, v52 & 1);

  (*(v6 + 8))(v8, v5);
  return v11;
}

Swift::Bool __swiftcall ShareActivitiesMoreMenuViewModel.isSharePlayActive()()
{
  v0 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t closure #2 in ShareActivitiesMoreMenuViewModel.createMenuItem()()
{
  v0 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x1EEE9AC00](v0 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_localized:table:comment:)();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  v6 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
  if (v6)
  {
    v7 = v6;
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_localized:table:comment:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BC4BA940;
    v9 = TUConversationActivitySession.concatenatedDescription.getter();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    String.init(format:_:)();

    v12 = Text.init<A>(_:)();
    outlined consume of Text.Storage(v1, v3, v5 & 1);

    return v12;
  }

  return v1;
}

void *ShareActivitiesMoreMenuViewModel.sharePlayActivity()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x998))();

  if (v2)
  {
    v3 = [v2 activity];
    v4 = [v3 isScreenSharingActivity];

    if (v4)
    {

      return 0;
    }
  }

  return v2;
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopScreenShare()()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v2);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    ConversationControlsManager.stopScreenShare()();
  }
}

Swift::Void __swiftcall ShareActivitiesMoreMenuViewModel.stopSharePlay()()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    v4 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v4);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_18();
  }

  v10 = ShareActivitiesMoreMenuViewModel.conversation.getter();
  if (v10)
  {
    v11 = v10;
    v12 = ShareActivitiesMoreMenuViewModel.sharePlayActivity()();
    if (v12)
    {
      v13 = v12;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        v18 = TUConversationActivitySession.uniqueIdentifier.getter();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v24);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_1BBC58000, v14, v15, "End share play session: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      oslog = [*(v1 + 32) conversationManager];
      [oslog presentDismissalAlertForActivitySession:v13 onConversation:v11];

      goto LABEL_11;
    }
  }

  oslog = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = OUTLINED_FUNCTION_33();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v21, "Not able to find session", v22, 2u);
    OUTLINED_FUNCTION_27();
  }

LABEL_11:
}

uint64_t ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()()
{
  v1 = v0;
  v164 = type metadata accessor for FTMenuContextMenuView();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8();
  v163 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  v187 = &v156 - v7;
  v169 = type metadata accessor for PersonNameComponents();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v183 = v12 - v11;
  v179 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = v15 - v14;
  v189 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v188 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v156 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v178 = &v156 - v26;
  v182 = v27;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v156 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  v186 = &v156 - v32;
  v165 = type metadata accessor for FTMenuContextMenuView.ContextMenuItem();
  OUTLINED_FUNCTION_1();
  v167 = v33;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v161 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v184 = &v156 - v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_33();
    *v40 = 0;
    _os_log_impl(&dword_1BBC58000, v38, v39, "Open context menu for Screen Share", v40, 2u);
    OUTLINED_FUNCTION_27();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v175 = v9;
    v41 = type metadata accessor for FTMenuItem();
    v172 = objc_opt_self();
    v42 = [v172 conversationKit];
    v43.super.isa = v42;
    OUTLINED_FUNCTION_17_0(0x794D206572616853, 0xEF6E656572635320, 0x61737265766E6F43, 0xEF74694B6E6F6974, v43);

    type metadata accessor for FTMenuItem.IconType();
    v44 = OUTLINED_FUNCTION_16_34();
    v180 = v45;
    __swift_storeEnumTagSinglePayload(v44, v46, v47, v45);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_weakInit();

    v181 = v41;
    static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

    outlined destroy of CallControlsService?(0x61737265766E6F43, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);

    v48 = v184;
    FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v50 = v49;
    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    v53 = v52 + 1;
    v185 = v1;
    if (v52 >= v51 >> 1)
    {
LABEL_65:
      OUTLINED_FUNCTION_59_3(v51);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v50 = v154;
    }

    v54 = Strong;
    *(v50 + 16) = v53;
    v55 = *(v167 + 32);
    v56 = (*(v167 + 80) + 32) & ~*(v167 + 80);
    v162 = v50;
    v158 = v56;
    v157 = *(v167 + 72);
    v167 += 32;
    v159 = v55;
    v57 = (v55)(v50 + v56 + v157 * v52, v48, v165);
    v52 = (*((*MEMORY[0x1E69E7D40] & *v54) + 0x9D8))(v57);
    v58 = 0;
    v48 = *(v52 + 16);
    v184 = MEMORY[0x1E69E7CC0];
    while (v48 != v58)
    {
      v51 = *(v52 + 16);
      if (v58 >= v51)
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v59 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v53 = *(v18 + 72);
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_6(v60, v29, v61);
      _s15ConversationKit11ParticipantVWOcTm_6(v29, v16, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v64 = *(v63 + 48);
          outlined consume of Participant.CopresenceInfo?(*(v16 + *(v63 + 64)), *(v16 + *(v63 + 64) + 8));
          outlined destroy of Participant.MediaInfo(v16 + v64);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v65 + 8))(v16);
          outlined init with take of Participant(v29, v178);
          v66 = v184;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v190 = v66;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v66 = v190;
          }

          v69 = *(v66 + 2);
          v68 = *(v66 + 3);
          v70 = (v69 + 1);
          if (v69 >= v68 >> 1)
          {
            OUTLINED_FUNCTION_59_3(v68);
            v184 = v71;
            v177 = v72;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v70 = v184;
            v69 = v177;
            v66 = v190;
          }

          ++v58;
          *(v66 + 2) = v70;
          v184 = v66;
          outlined init with take of Participant(v178, &v66[v59 + v69 * v53]);
          break;
        case 6u:
          outlined destroy of Participant(v29);
          goto LABEL_10;
        default:
          outlined destroy of Participant(v29);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_15_1();
          (*(v62 + 8))(v16);
LABEL_10:
          ++v58;
          break;
      }
    }

    v53 = Strong;
    v74 = MEMORY[0x1E69E7D40];
    v75 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x2A0);
    v75(v73);
    v77 = v76;
    ObjectType = swift_getObjectType();
    v79 = (*(v77 + 192))(ObjectType, v77);
    v80 = swift_unknownObjectRelease();
    v75(v80);
    v82 = v81;
    v83 = swift_getObjectType();
    LOBYTE(v82) = (*(v82 + 160))(v83, v82);
    v84 = swift_unknownObjectRelease();
    if (v82)
    {
      v160 = (*((*v74 & *v53) + 0x380))(v84) ^ 1;
    }

    else
    {
      v160 = 0;
    }

    v29 = v184;
    v16 = v185;
    v52 = MEMORY[0x1E69E7CC0];
    v179 = *(v184 + 2);
    if (v179 >= 2)
    {
      v156 = v79;
      v48 = 0;
      v173 = &v24[v189[9]];
      v89 = *(v18 + 80);
      v177 = &v184[(v89 + 32) & ~v89];
      v194 = MEMORY[0x1E69E7CC0];
      v176 = v189[7];
      v166 = (v175 + 8);
      v171 = "voiceOverUpdateHandler";
      v175 = v189[11];
      v178 = v89;
      v174 = (v89 + 24) & ~v89;
      v170 = xmmword_1BC4BA940;
      v90 = v183;
      while (1)
      {
        v51 = *(v29 + 2);
        if (v48 >= v51)
        {
          goto LABEL_64;
        }

        OUTLINED_FUNCTION_7_5();
        _s15ConversationKit11ParticipantVWOcTm_6(v91, v24, v92);
        v93 = *&v24[v176];
        if (!v93)
        {
          goto LABEL_34;
        }

        v94 = v93;
        v95 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v94);
        if (!v96)
        {
          break;
        }

        v97 = v95;
        v98 = v96;
        if (([v94 shouldHideContact] & 1) == 0)
        {

          goto LABEL_34;
        }

        PersonNameComponents.init()();
        PersonNameComponents.givenName.setter();
        PersonNameComponents.familyName.setter();
        if (one-time initialization token for initials != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v99 = static NSPersonNameComponentsFormatter.initials;
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v101 = [v99 stringFromPersonNameComponents_];

        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        (*v166)(v90, v169);
        v190 = v102;
        v191 = v104;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol.localizedUppercase.getter();

        v53 = 0;
        v16 = v98;
LABEL_35:
        ++v48;

        v107 = 0;
        v108 = *&v24[v175];
        v109 = 1 << *(v108 + 32);
        v110 = (v109 + 63) >> 6;
        v111 = 56;
        if (!v110)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v112 = *(v108 + v111);
          if (v112)
          {
            break;
          }

          v107 -= 64;
          --v110;
          v111 += 8;
          if (!v110)
          {
            goto LABEL_40;
          }
        }

        v113 = __clz(__rbit64(v112));
        if (v113 - v109 != v107)
        {
          specialized Set.subscript.getter(v113 - v107);
          v115 = 0;
          v114 = 1;
        }

        else
        {
LABEL_40:
          v114 = 0;
          v115 = 1;
        }

        v116 = v187;
        __swift_storeEnumTagSinglePayload(v187, v115, 1, v189);
        outlined destroy of CallControlsService?(v116, &_s15ConversationKit11ParticipantVSgMd);
        if ((v114 & 1) == 0 && *(v173 + 1))
        {
          v117 = [v172 conversationKit];
          OUTLINED_FUNCTION_5_5();
          v118.super.isa = v117;
          OUTLINED_FUNCTION_17_0(v119, v120, v121, v122, v118);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v123 = swift_allocObject();
          *(v123 + 16) = v170;
          v190 = v97;
          v191 = v16;
          v53 = MEMORY[0x1E69E6158];
          v124 = String.init<A>(_:)();
          v126 = v125;
          *(v123 + 56) = v53;
          *(v123 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v123 + 32) = v124;
          *(v123 + 40) = v126;
          String.init(format:_:)();
          v16 = v127;
        }

        v128 = OUTLINED_FUNCTION_16_34();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v180);
        OUTLINED_FUNCTION_7_5();
        v131 = v188;
        _s15ConversationKit11ParticipantVWOcTm_6(v24, v188, v132);
        v133 = v174;
        v134 = swift_allocObject();
        *(v134 + 16) = v185;
        outlined init with take of Participant(v131, v134 + v133);

        v52 = static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

        outlined destroy of CallControlsService?(v53, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);
        v135 = outlined destroy of Participant(v24);
        MEMORY[0x1BFB20CC0](v135);
        v136 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v136 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v136);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v90 = v183;
        v29 = v184;
        if (v48 == v179)
        {
          v53 = Strong;
          v79 = v156;
          goto LABEL_49;
        }
      }

LABEL_34:
      OUTLINED_FUNCTION_7_5();
      v105 = v188;
      _s15ConversationKit11ParticipantVWOcTm_6(v24, v188, v106);
      ParticipantContactDetailsCache.contactDetails(for:)();
      outlined destroy of Participant(v105);
      v53 = v190;
      v97 = v192;
      v16 = v193;
      goto LABEL_35;
    }

LABEL_49:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((*(*static Defaults.shared + 168))() & 1) != 0 && (v160)
    {
      v137 = *(v29 + 2);

      if (v137)
      {

LABEL_58:
        v139 = [v172 conversationKit];
        OUTLINED_FUNCTION_5_5();
        v140.super.isa = v139;
        OUTLINED_FUNCTION_17_0(v141, v142, v143, v144, v140);

        v145 = v186;
        __swift_storeEnumTagSinglePayload(v186, 1, 1, v180);
        OUTLINED_FUNCTION_20();
        v146 = swift_allocObject();
        swift_weakInit();
        v147 = swift_allocObject();
        *(v147 + 16) = v146;
        *(v147 + 24) = v53;

        v148 = v53;
        static FTMenuItem.genericContextMenuRow(title:icon:dismissOnTap:rowAction:)();

        outlined destroy of CallControlsService?(v145, &_s20CommunicationsUICore10FTMenuItemC8IconTypeOSgMd);

        v149 = v161;
        FTMenuContextMenuView.ContextMenuItem.init(primary:nested:)();
        v150 = v162;
        v152 = *(v162 + 16);
        v151 = *(v162 + 24);
        if (v152 >= v151 >> 1)
        {
          OUTLINED_FUNCTION_59_3(v151);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v150 = v155;
        }

        *(v150 + 16) = v152 + 1;
        v162 = v150;
        v159(v150 + v158 + v152 * v157, v149, v165);
        goto LABEL_61;
      }

      v138 = specialized Set.isEmpty.getter(v79);

      if (!v138)
      {
        goto LABEL_58;
      }
    }

    else
    {
    }

LABEL_61:
    FTMenuContextMenuView.init(menuItems:)();
    lazy protocol witness table accessor for type FTMenuContextMenuView and conformance FTMenuContextMenuView();
    AnyView.init<A>(_:)();

    return 0;
  }

  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v85, v86))
  {
    *OUTLINED_FUNCTION_33() = 0;
    OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v87, v88, "Not able to find controls manager");
    OUTLINED_FUNCTION_27();
  }

  dispatch thunk of FTMenuItem.dismiss()();
  return 0;
}

uint64_t ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_163(v1))
  {
    v2 = OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_39_2(v2);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = (*((*MEMORY[0x1E69E7D40] & *static SharePlayDiscoverabilityAppsController.shared) + 0x98))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong provider];

    LOBYTE(v10) = [v11 isTelephonyProvider];
    v12 = v10 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  swift_weakInit();

  static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(v8, v12, partial apply for closure #1 in ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView(), v13);

  v14 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v15.super.isa = v14;
  v19 = OUTLINED_FUNCTION_17_0(v16, 0xE900000000000059, v17, v18, v15);

  return v19;
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v20 - v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Platform.current.getter() == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = ShareActivitiesMoreMenuViewModel.conversation.getter();

      if (v7)
      {

        goto LABEL_15;
      }
    }

    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_15;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      goto LABEL_15;
    }

    v17 = [Strong callUUID];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init(uuidString:)();

    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      outlined destroy of CallControlsService?(v2, &_s10Foundation4UUIDVSgMd);
LABEL_15:
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_19;
      }

      v9 = swift_unknownObjectWeakLoadStrong();

      if (!v9)
      {
        goto LABEL_19;
      }

      ConversationControlsManager.requestScreenSharingPicker(with:)();
      goto LABEL_18;
    }

    (*(v4 + 32))(v6, v2, v3);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v19 = swift_unknownObjectWeakLoadStrong();

      if (v19)
      {
        ConversationControlsManager.requestScreenSharingPicker(forCall:with:)();
      }
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = swift_unknownObjectWeakLoadStrong();

      if (v8)
      {
        ConversationControlsManager.showHUD()();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        ConversationControlsManager.startScreenShareWithCountdown(completion:)(TPNumberPadCharacter.rawValue.getter, 0, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9]);
LABEL_18:
      }
    }
  }

LABEL_19:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of FTMenuItem.dismiss()();
  }

  return result;
}

id ShareActivitiesMoreMenuViewModel.conversation.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = [*(v0 + 32) activeConversationForCall_];

  return v3;
}

void closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for Participant(0) + 28));
  v4 = v2;
  if (v2)
  {
    v3 = v2;
    v2 = v4;
  }

  ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v2);
}

void ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v65 = a1;
    v8 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (!v8 || (v8, (v9 = ShareActivitiesMoreMenuViewModel.conversation.getter()) != 0) && (v10 = v9, v11 = [v9 provider], v10, LODWORD(v10) = objc_msgSend(v11, sel_isTelephonyWithSharePlayProvider), v11, v10))
    {
      dispatch thunk of FTMenuItem.dismiss()();
      if ([*(v2 + 48) sharePlayInCallsEnabled])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          if ([Strong isSharePlayCapable])
          {
            v14 = [objc_opt_self() remoteMembersForCall_];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
            lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
            static Set._unconditionallyBridgeFromObjectiveC(_:)();

            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUJoinConversationRequest);
            v15 = TUJoinConversationRequest.__allocating_init(remoteMembers:)();
            v16 = [v13 uniqueProxyIdentifierUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*(v5 + 8))(v7, v4);
            [v15 setUUID_];

            [v15 setRequestToShareScreen_];
            v18 = [objc_opt_self() telephonyWithSharePlayProvider];
            [v15 setProvider_];

            v19 = [*(v2 + 32) conversationManager];
            [v19 joinConversationWithRequest_];

LABEL_39:
            return;
          }
        }
      }

      goto LABEL_41;
    }

    v23 = ShareActivitiesMoreMenuViewModel.conversation.getter();
    if (v23)
    {
      v24 = v23;
      v25 = [v23 mergedActiveRemoteParticipants];

      v26 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationParticipant);
      lazy protocol witness table accessor for type TUHandle and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationParticipant and conformance NSObject, &lazy cache variable for type metadata for TUConversationParticipant);
      v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = specialized Set.count.getter(v27);

      if (!v28)
      {
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1BBC58000, v38, v39, "Cannot request to screen share with no participants", v40, 2u);
          MEMORY[0x1BFB23DF0](v40, -1, -1);
        }

        dispatch thunk of FTMenuItem.dismiss()();
LABEL_41:
        v56 = v65;

        return;
      }

      v29 = ShareActivitiesMoreMenuViewModel.conversation.getter();
      if (!v29)
      {
        goto LABEL_48;
      }

      v30 = v29;
      v63 = v2;
      v31 = [v29 mergedActiveRemoteParticipants];

      v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v26;
      v62 = v32;
      if ((v32 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v34 = v68;
        v33 = v69;
        v35 = v70;
        v36 = v71;
        v37 = v72;
      }

      else
      {
        v41 = -1 << *(v32 + 32);
        v33 = v32 + 56;
        v35 = ~v41;
        v42 = -v41;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        else
        {
          v43 = -1;
        }

        v37 = v43 & *(v32 + 56);

        v36 = 0;
        v34 = v32;
      }

      v61 = v35;
      v44 = (v35 + 64) >> 6;
      if (v34 < 0)
      {
        goto LABEL_31;
      }

LABEL_25:
      v45 = v36;
      v46 = v37;
      v47 = v36;
      if (v37)
      {
LABEL_29:
        v48 = (v46 - 1) & v46;
        v49 = *(*(v34 + 48) + ((v47 << 9) | (8 * __clz(__rbit64(v46)))));
        if (!v49)
        {
LABEL_36:
          outlined consume of Set<TUHandle>.Iterator._Variant();

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_1BBC58000, v53, v54, "Couldn't find participant for request to screen share", v55, 2u);
            MEMORY[0x1BFB23DF0](v55, -1, -1);
          }

          dispatch thunk of FTMenuItem.dismiss()();
          goto LABEL_39;
        }

        while (1)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
          v51 = [v49 handle];
          v52 = static NSObject.== infix(_:_:)();

          if (v52)
          {
            break;
          }

          v36 = v47;
          v37 = v48;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

LABEL_31:
          v50 = __CocoaSet.Iterator.next()();
          if (v50)
          {
            v66 = v50;
            swift_dynamicCast();
            v49 = v67;
            v47 = v36;
            v48 = v37;
            if (v67)
            {
              continue;
            }
          }

          goto LABEL_36;
        }

        outlined consume of Set<TUHandle>.Iterator._Variant();

        v57 = v63;
        dispatch thunk of FTMenuItem.dismiss()();
        v58 = [*(v57 + 32) conversationManager];
        v59 = ShareActivitiesMoreMenuViewModel.conversation.getter();
        if (v59)
        {
          v60 = v59;
          [v58 requestParticipantToShareScreen:v49 forConversation:v59];

          return;
        }

        goto LABEL_49;
      }

      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          break;
        }

        if (v47 >= v44)
        {
          goto LABEL_36;
        }

        v46 = *(v33 + 8 * v47);
        ++v45;
        if (v46)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1BBC58000, v20, v21, "Cannot request to screen share without a handle", v22, 2u);
    MEMORY[0x1BFB23DF0](v22, -1, -1);
  }

  dispatch thunk of FTMenuItem.dismiss()();
}

void closure #4 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Participant(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51 = v5;
    v52 = v9;
    v54 = Strong;
    v50 = v13;
    v19 = a2;
    v20 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x9D8))();
    v21 = 0;
    v22 = *(v20 + 16);
    v55 = MEMORY[0x1E69E7CC0];
    while (v22 != v21)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        return;
      }

      v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v24 = *(v10 + 72);
      _s15ConversationKit11ParticipantVWOcTm_6(v20 + v23 + v24 * v21, v17, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOcTm_6(v17, v8, type metadata accessor for Participant.State);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 4u:
          v49 = v19;
          v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v27 = *(v26 + 48);
          outlined consume of Participant.CopresenceInfo?(*&v8[*(v26 + 64)], *&v8[*(v26 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v8[v27]);
          v28 = type metadata accessor for Date();
          (*(*(v28 - 8) + 8))(v8, v28);
          outlined init with take of Participant(v17, v53);
          v29 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v29 = v56;
          }

          v32 = *(v29 + 16);
          v31 = *(v29 + 24);
          v33 = v32 + 1;
          v34 = v29;
          v19 = v49;
          if (v32 >= v31 >> 1)
          {
            v55 = v32 + 1;
            v48 = v32;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v33 = v55;
            v34 = v56;
            v32 = v48;
            v19 = v49;
          }

          ++v21;
          *(v34 + 16) = v33;
          v55 = v34;
          outlined init with take of Participant(v53, v34 + v23 + v32 * v24);
          break;
        case 6u:
          goto LABEL_7;
        default:
          v25 = type metadata accessor for Date();
          (*(*(v25 - 8) + 8))(v8, v25);
LABEL_7:
          outlined destroy of Participant(v17);
          ++v21;
          break;
      }
    }

    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x2A0))(v35);
    v37 = v36;
    ObjectType = swift_getObjectType();
    v39 = (*(v37 + 192))(ObjectType, v37);
    swift_unknownObjectRelease();
    v40 = v55;
    if (*(v55 + 16))
    {

      v41 = v51;
      specialized Collection.first.getter(v40, v51);
      v42 = v52;
      if (__swift_getEnumTagSinglePayload(v41, 1, v52) == 1)
      {

        outlined destroy of CallControlsService?(v41, &_s15ConversationKit11ParticipantVSgMd);
      }

      else
      {
        v44 = v50;
        outlined init with take of Participant(v41, v50);
        v45 = *(v40 + 16);

        if (v45 == 1)
        {
          if ((Participant.isRequestToScreenShareAvailable.getter() & 1) != 0 && (Participant.screenState.getter() == 2 || (Participant.isReceivingScreenFrames.getter() & 1) == 0) && Participant.screenState.getter() == 2)
          {
            v46 = *(v44 + *(v42 + 28));
            if (v46)
            {
              v47 = v46;
            }

            ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v46);
          }

          outlined destroy of Participant(v44);
        }

        else
        {
          outlined destroy of Participant(v44);
        }
      }
    }

    else
    {

      v43 = specialized Collection.first.getter(v39);

      ShareActivitiesMoreMenuViewModel.didTapAskToScreenShare(for:)(v43);
    }
  }
}

uint64_t closure #1 in ShareActivitiesMoreMenuViewModel.sharePlaySecondaryView()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of FTMenuItem.dismiss()();
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CNContact.displayName.getter(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type FTMenuContextMenuView and conformance FTMenuContextMenuView()
{
  result = lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView;
  if (!lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView)
  {
    type metadata accessor for FTMenuContextMenuView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FTMenuContextMenuView and conformance FTMenuContextMenuView);
  }

  return result;
}

void partial apply for closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()()
{
  v1 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  closure #1 in closure #3 in ShareActivitiesMoreMenuViewModel.screenShareSecondaryView()(v3, v4);
}

unint64_t lazy protocol witness table accessor for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType()
{
  result = lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType;
  if (!lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareActivitiesMoreMenuViewModel.MenuType and conformance ShareActivitiesMoreMenuViewModel.MenuType);
  }

  return result;
}

uint64_t type metadata completion function for ShareActivitiesMoreMenuViewModel()
{
  result = type metadata accessor for Logger();
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

_BYTE *storeEnumTagSinglePayload for ShareActivitiesMoreMenuViewModel.MenuType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ReactionsViewConstraintManager.__allocating_init(localParticipantView:reactionsView:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(a1, a2);
  return v4;
}

void *ReactionsViewConstraintManager.init(localParticipantView:reactionsView:)(void *a1, id a2)
{
  v2[6] = MEMORY[0x1E69E7CC0];
  v5 = [a2 topAnchor];
  v6 = [a1 bottomAnchor];
  v7 = OUTLINED_FUNCTION_0_85(v6, sel_constraintGreaterThanOrEqualToAnchor_constant_);

  v2[2] = v7;
  v8 = [a2 bottomAnchor];
  v9 = [a1 topAnchor];
  v10 = OUTLINED_FUNCTION_0_85(v9, sel_constraintGreaterThanOrEqualToAnchor_constant_);

  v2[3] = v10;
  v11 = [a2 leadingAnchor];
  v12 = [a1 leadingAnchor];
  v13 = OUTLINED_FUNCTION_0_85(v12, sel_constraintEqualToAnchor_constant_);

  v2[4] = v13;
  v14 = [a2 trailingAnchor];
  v15 = [a1 trailingAnchor];
  v16 = OUTLINED_FUNCTION_0_85(v15, sel_constraintEqualToAnchor_constant_);

  v2[5] = v16;
  return v2;
}

uint64_t ReactionsViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 17);
  swift_beginAccess();
  v2[6] = MEMORY[0x1E69E7CC0];

  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
    }

    v3 &= 0x3Fu;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  switch(v3)
  {
    case 1u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[2];
      goto LABEL_10;
    case 2u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[3];
      goto LABEL_7;
    case 3u:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[3];
LABEL_10:
      *(inited + 32) = v6;
      v7 = v2[5];
      goto LABEL_11;
    default:
      inited = swift_initStackObject();
      v5 = inited;
      *(inited + 16) = xmmword_1BC4BA930;
      v6 = v2[2];
LABEL_7:
      *(inited + 32) = v6;
      v7 = v2[4];
LABEL_11:
      *(inited + 40) = v7;
      swift_beginAccess();
      v8 = v6;
      v9 = v7;
      specialized Array.append<A>(contentsOf:)(v5);
      swift_endAccess();
      break;
  }
}

uint64_t ReactionsViewConstraintManager.__deallocating_deinit()
{
  ReactionsViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

id BrandedIconView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_247()) initWithCoder_];

  return v1;
}

id BrandedIconView.init(coder:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v6 = [v5 layer];
  [v6 setMasksToBounds_];

  [v5 setContentMode_];
  [v5 setAutoresizingMask_];
  v7 = [v5 layer];

  [v7 setCornerRadius_];
  *&v2[v4] = v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, &static Logger.conversationControls);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BBC58000, v9, v10, "Unavailable initializer used.", v11, 2u);
    OUTLINED_FUNCTION_27();
  }

  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, v0);

  if (v12)
  {
  }

  return v12;
}

char *BrandedIconView.__allocating_init(telephonyCall:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 184))(ObjectType, a2);
  v15 = [v14 isTelephonyProvider];

  if (v15)
  {
    (*(a2 + 88))(ObjectType, a2);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      outlined destroy of URL?(v5);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      type metadata accessor for UIImage();
      v26._countAndFlagsBits = URL.path.getter();
      if (UIImage.__allocating_init(contentsOfFile:)(v26))
      {
        v27 = objc_allocWithZone(v48);
        v24 = BrandedIconView.init(image:)();
        swift_unknownObjectRelease();
        v28 = OUTLINED_FUNCTION_1_5();
        v29(v28);
        return v24;
      }

      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, &static Logger.conversationControls);
      (*(v7 + 16))(v9, v12, v6);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v33 = 136446466;
        v34 = _typeName(_:qualified:)();
        v48 = v31;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v49);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2080;
        lazy protocol witness table accessor for type URL and conformance URL();
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        v40 = *(v7 + 8);
        v40(v9, v6);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

        *(v33 + 14) = v41;
        v42 = v48;
        _os_log_impl(&dword_1BBC58000, v48, v32, "[%{public}s] Failed to load branded call image from file %s. ", v33, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
        swift_unknownObjectRelease();

        v43 = OUTLINED_FUNCTION_1_5();
        (v40)(v43);
      }

      else
      {
        swift_unknownObjectRelease();

        v44 = *(v7 + 8);
        v44(v9, v6);
        v45 = OUTLINED_FUNCTION_1_5();
        (v44)(v45);
      }
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, &static Logger.conversationControls);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 136446210;
      v21 = _typeName(_:qualified:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v49);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1BBC58000, v17, v18, "[%{public}s] Non-telephony call passed into telephony initalizer", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

UIImage_optional __swiftcall UIImage.__allocating_init(contentsOfFile:)(Swift::String contentsOfFile)
{
  object = contentsOfFile._object;
  countAndFlagsBits = contentsOfFile._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1BFB209B0](countAndFlagsBits, object);

  v5 = [v3 initWithContentsOfFile_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

char *BrandedIconView.init(image:)()
{
  OUTLINED_FUNCTION_247();
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v5 = [v4 layer];
  [v5 setMasksToBounds_];

  [v4 setContentMode_];
  [v4 setAutoresizingMask_];
  v6 = [v4 layer];

  [v6 setCornerRadius_];
  *(v1 + v3) = v4;
  v7 = OUTLINED_FUNCTION_1_78();
  v10 = objc_msgSendSuper2(v8, v9, v7, v1, ObjectType);
  v11 = OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon;
  v12 = *&v10[OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon];
  v13 = v10;
  [v12 setImage_];
  [v13 addSubview_];

  return v13;
}

Swift::Void __swiftcall BrandedIconView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon];
  [v0 bounds];
  [v1 setFrame_];
}

CGSize __swiftcall BrandedIconView.sizeThatFits(_:)(CGSize a1)
{
  [*(v1 + OBJC_IVAR____TtC15ConversationKit15BrandedIconView_icon) sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

objc_super *IncomingCallCombinedSubtitleBadgeView.init(brandedIcon:multiSimBadge:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing) = 0x4010000000000000;
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_brandedIcon) = a1;
  *(v3 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge) = a2;
  v14 = v3;
  v15 = ObjectType;
  v7 = a1;
  v8 = a2;
  v9 = OUTLINED_FUNCTION_1_78();
  v11 = [(objc_super *)v10 initWithFrame:v9, v14, v15];
  [(objc_super *)v11 addSubview:v7];
  if (a2)
  {
    [(objc_super *)v11 addSubview:v8];

    v12 = v11;
  }

  else
  {
    v12 = v7;
    v7 = v11;
  }

  return v11;
}

void IncomingCallCombinedSubtitleBadgeView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing) = 0x4010000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGSize __swiftcall IncomingCallCombinedSubtitleBadgeView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)();
  v6 = v5;
  if (v4 <= 2.22507386e-308)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing);
  }

  if (v6 < 14.0)
  {
    v6 = 14.0;
  }

  v8 = v4 + v7 + 14.0;
  if (v8 > width || v6 > height)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v13 = 136446466;
      type metadata accessor for CGSize(0);
      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v23);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2082;
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_1BBC58000, v11, v12, "Returning a size %{public}s that is larger than the fitting size %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  v20 = v8;
  v21 = v6;
  result.height = v21;
  result.width = v20;
  return result;
}

double IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge);
  if (!v1)
  {
    return 0.0;
  }

  [v1 systemLayoutSizeFittingSize_];
  return result;
}

Swift::Void __swiftcall IncomingCallCombinedSubtitleBadgeView.layoutSubviews()()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_brandedIcon];
  [v2 setBounds_];
  [v0 bounds];
  [v2 setCenter_];
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_multiSimBadge];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    v5 = IncomingCallCombinedSubtitleBadgeView.badgeSizeFitting(_:)();
    v7 = v6;
    v8 = v4;
    [v8 setBounds_];
    [v2 frame];
    v9 = CGRectGetMaxX(v31) + *&v1[OBJC_IVAR____TtC15ConversationKit37IncomingCallCombinedSubtitleBadgeView_horizontalSpacing];
    [v8 frame];
    v11 = v9 + v10 * 0.5;
    [v1 bounds];
    [v8 setCenter_];
  }

  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BAA20;
    *(inited + 32) = v2;
    *(inited + 40) = v3;
    v13 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];
    v14 = v3;
    v15 = v2;
    for (i = 0; i != 2; ++i)
    {
      v17 = *(inited + 8 * i + 32);
      if (v17)
      {
        v18 = v17;
        MEMORY[0x1BFB20CC0]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_1_5();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = v28;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v19 = specialized Array.count.getter(v13);
    for (j = 0; ; ++j)
    {
      if (v19 == j)
      {

        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFB22010](j, v13);
      }

      else
      {
        if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v21 = *(v13 + 8 * j + 32);
      }

      v22 = v21;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v1 bounds];
      Width = CGRectGetWidth(v33);
      OUTLINED_FUNCTION_5_53();
      v25 = Width - v24;
      OUTLINED_FUNCTION_5_53();
      v26 = v25 - CGRectGetMinX(v34);
      OUTLINED_FUNCTION_5_53();
      MinY = CGRectGetMinY(v35);
      OUTLINED_FUNCTION_5_53();
      [v22 setFrame_];
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }
}

id BrandedIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t key path getter for GradientView.colors : GradientView@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id GradientView.colors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return GradientView.updateGradient()();
}

id GradientView.updateGradient()()
{
  v1 = v0;
  v2 = GradientView.gradientLayer.getter();
  v3 = OBJC_IVAR____TtC15ConversationKit12GradientView_colors;
  swift_beginAccess();
  v4 = *&v1[v3];
  v5 = specialized Array.count.getter(v4);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
LABEL_11:
    outlined bridged method (mbnn) of @objc CAGradientLayer.colors.setter(v6, v2);

    return [v1 setNeedsDisplay];
  }

  v7 = v5;
  v19 = MEMORY[0x1E69E7CC0];
  v8 = v5 & ~(v5 >> 63);

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v6 = v19;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v10, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 CGColor];
      type metadata accessor for CGColorRef(0);
      v18 = v14;

      *&v17 = v13;
      v19 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v6 = v19;
      }

      ++v10;
      *(v6 + 16) = v16 + 1;
      outlined init with take of Any(&v17, (v6 + 32 * v16 + 32));
    }

    while (v7 != v10);

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id (*GradientView.colors.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return GradientView.colors.modify;
}

id GradientView.colors.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return GradientView.updateGradient()();
  }

  return result;
}

uint64_t GradientView.interpolations.getter()
{
  v0 = GradientView.gradientLayer.getter();

  return outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(v0);
}

void GradientView.interpolations.setter(uint64_t a1)
{
  v2 = GradientView.gradientLayer.getter();
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 setInterpolations_];
}

uint64_t GradientView.gradientLayer.getter()
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

void (*GradientView.interpolations.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = GradientView.gradientLayer.getter();
  *a1 = outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(v3);
  return GradientView.interpolations.modify;
}

void GradientView.interpolations.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    GradientView.interpolations.setter(v2);
  }

  else
  {
    GradientView.interpolations.setter(*a1);
  }
}

void (*GradientView.startPoint.modify(void *a1))(double *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = GradientView.gradientLayer.getter();
  [v3 startPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return GradientView.startPoint.modify;
}

double GradientView.startPoint.getter(SEL *a1)
{
  v2 = GradientView.gradientLayer.getter();
  [v2 *a1];
  v4 = v3;

  return v4;
}

void GradientView.startPoint.setter(SEL *a1, double a2, double a3)
{
  v6 = GradientView.gradientLayer.getter();
  [v6 *a1];
}

void (*GradientView.endPoint.modify(void *a1))(double *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = GradientView.gradientLayer.getter();
  [v3 endPoint];
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return GradientView.endPoint.modify;
}

void GradientView.startPoint.modify(double *a1, uint64_t a2, SEL *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = GradientView.gradientLayer.getter();
  [v6 *a3];
}

id GradientView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id GradientView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC15ConversationKit12GradientView_colors) = MEMORY[0x1E69E7CC0];
  v7 = ObjectType;
  v2 = OUTLINED_FUNCTION_18_1();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  GradientView.updateGradient()();

  return v5;
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit12GradientView_colors) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined bridged method (ob) of @objc CAGradientLayer.interpolations.getter(void *a1)
{
  v2 = [a1 interpolations];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CAMediaTimingFunction);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t ConversationLocalParticipantStateProvider.localParticipantPublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v5, v6);
  Publisher.removeDuplicates(by:)();

  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Participant, Never>> and conformance Publishers.RemoveDuplicates<A>);
  v7 = OUTLINED_FUNCTION_7_15();
  (*(v3 + 8))(v1, v0);
  return v7;
}

uint64_t *ConversationLocalParticipantStateProvider.cameraEffectsStatePublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2);
  lazy protocol witness table accessor for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState();
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<LocalParticipantCameraEffectsState, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v3 = OUTLINED_FUNCTION_5_54();
  v4(v3);
  return &_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd;
}

unint64_t lazy protocol witness table accessor for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState()
{
  result = lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState;
  if (!lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalParticipantCameraEffectsState and conformance LocalParticipantCameraEffectsState);
  }

  return result;
}

void *ConversationLocalParticipantStateProvider.mutedTalkingPublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v3 = OUTLINED_FUNCTION_5_54();
  v4(v3);
  return &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd;
}

void *ConversationLocalParticipantStateProvider.reactingStatePublisher.getter()
{
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_2_12();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  OUTLINED_FUNCTION_0_86();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v1, v2);
  OUTLINED_FUNCTION_8_2();
  Publisher<>.removeDuplicates()();
  OUTLINED_FUNCTION_1_15(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>);
  OUTLINED_FUNCTION_7_15();
  v3 = OUTLINED_FUNCTION_5_54();
  v4(v3);
  return &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd;
}

uint64_t key path getter for ConversationLocalParticipantStateProvider.stateManager : ConversationLocalParticipantStateProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ConversationLocalParticipantStateProvider.stateManager : ConversationLocalParticipantStateProvider(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ConversationLocalParticipantStateProvider.stateManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationLocalParticipantStateProvider.stateManager.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 56);
  v3[3] = Strong;
  v3[4] = v5;
  return ConversationLocalParticipantStateProvider.stateManager.modify;
}

void ConversationLocalParticipantStateProvider.stateManager.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
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
  }

  free(v3);
}

uint64_t ConversationLocalParticipantStateProvider.__allocating_init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(uint64_t a1, int *a2, char a3, char a4)
{
  v8 = swift_allocObject();
  ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(a1, a2, a3, a4);
  return v8;
}

void *ConversationLocalParticipantStateProvider.init(localParticipant:localParticipantCameraEffectsState:isMutedTalking:isReacting:)(uint64_t a1, int *a2, char a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5[7] = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of Participant(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit11ParticipantVs5NeverOGMd);
  swift_allocObject();
  v5[2] = CurrentValueSubject.init(_:)();
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit34LocalParticipantCameraEffectsStateVs5NeverOGMd);
  swift_allocObject();
  v5[3] = CurrentValueSubject.init(_:)();
  v15[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  v5[4] = CurrentValueSubject.init(_:)();
  v15[10] = a4;
  swift_allocObject();
  v13 = CurrentValueSubject.init(_:)();
  outlined destroy of Participant(a1);
  v5[5] = v13;
  return v5;
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleCinematicFramingEffectState()()
{
  OUTLINED_FUNCTION_4_55();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleCameraBlurEffectState()()
{
  OUTLINED_FUNCTION_4_55();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleStudioLightEffectState()()
{
  OUTLINED_FUNCTION_4_55();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall ConversationLocalParticipantStateProvider.toggleReactionsEffectState()()
{
  OUTLINED_FUNCTION_4_55();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_11_39();
    v0();
    swift_unknownObjectRelease();
  }
}