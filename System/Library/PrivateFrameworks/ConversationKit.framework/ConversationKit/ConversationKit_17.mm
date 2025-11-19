id closure #1 in SharedContentViewController.animateOutPreviousScreenContent()(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot);
  if (v2)
  {
    [v2 setAlpha_];
  }

  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_sharedContentView);

  return [v3 setAlpha_];
}

void closure #2 in SharedContentViewController.animateOutPreviousScreenContent()(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot;
  [*(a2 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_previousScreenSnapshot) removeFromSuperview];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

id SharedContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id SharedContentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SharedContentViewController.scrollViewDidZoom(_:)(UIScrollView *a1)
{
  SharedContentViewController.centerSharedContentView(in:)(a1);

  SharedContentViewController.updateCornerRadius()();
}

id SharedContentViewController.scrollViewDidEndZooming(_:with:atScale:)(void *a1)
{
  SharedContentViewController.centerSharedContentView(in:)(a1);

  return SharedContentViewController.updateCornerRadius()();
}

CGSize __swiftcall SharedContentViewController.preferredPiPContentAspectRatio()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v48 = v4;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v49 = v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v22 = v21;
  v23 = v0 + v21;
  v24 = v2;
  outlined init with copy of Participant?(v23, v20, &_s15ConversationKit11ParticipantVSgMd);
  if (!__swift_getEnumTagSinglePayload(v20, 1, v2))
  {
    v46 = v1;
    v47 = v17;
    v25 = v48;
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v20, v10, v26);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
    v27 = Participant.deviceOrientation.getter();
    v29 = v28;
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v10, v30);
    if (v29)
    {
      goto LABEL_4;
    }

    v40 = v0 + v22;
    if ((v27 | 2) == 3)
    {
      v20 = v47;
      outlined init with copy of Participant?(v40, v47, &_s15ConversationKit11ParticipantVSgMd);
      if (!__swift_getEnumTagSinglePayload(v20, 1, v24))
      {
        OUTLINED_FUNCTION_1_55();
        _s15ConversationKit11ParticipantVWOcTm_2(v20, v7, v41);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
        Participant.aspectRatio.getter(v50);
        OUTLINED_FUNCTION_0_55();
        _s15ConversationKit11ParticipantVWOhTm_2(v7, v42);
        if ((v51 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v20 = v46;
      outlined init with copy of Participant?(v40, v46, &_s15ConversationKit11ParticipantVSgMd);
      if (!__swift_getEnumTagSinglePayload(v20, 1, v24))
      {
        OUTLINED_FUNCTION_1_55();
        _s15ConversationKit11ParticipantVWOcTm_2(v20, v25, v43);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
        Participant.aspectRatio.getter(v50);
        OUTLINED_FUNCTION_0_55();
        _s15ConversationKit11ParticipantVWOhTm_2(v25, v44);
        if ((v51 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }
    }
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit11ParticipantVSgMd);
LABEL_4:
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA940;
  v32 = v0 + v22;
  v33 = v49;
  outlined init with copy of Participant?(v32, v49, &_s15ConversationKit11ParticipantVSgMd);
  specialized >> prefix<A>(_:)();
  v35 = v34;
  v37 = v36;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v33, &_s15ConversationKit11ParticipantVSgMd);
  *(v31 + 56) = MEMORY[0x1E69E6158];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v35;
  *(v31 + 40) = v37;
  os_log(_:dso:log:type:_:)();

LABEL_7:
  OUTLINED_FUNCTION_30_0();
  result.height = v39;
  result.width = v38;
  return result;
}

__C::CGRect __swiftcall SharedContentViewController.frameForRestoreAnimation()()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 _referenceBounds];
  OUTLINED_FUNCTION_40_1();

  v1 = OUTLINED_FUNCTION_35();
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

Swift::String_optional __swiftcall SharedContentViewController.sharedContentSourceName()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_32_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v10 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_23_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v15 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v0 + v15, v1, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    outlined init with take of Participant(v1, v14);
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v14, v2, v16);
    SharedContentViewModel.ParticipantDetails.init(participant:)(v2);
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v14, v17);

    _s15ConversationKit11ParticipantVWOhTm_2(v6, type metadata accessor for SharedContentViewModel.ParticipantDetails);
  }

  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_30_0();
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

void specialized SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(uint64_t a1, const void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v63 = swift_allocObject();
  *(v63 + 16) = a2;
  v23 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  swift_beginAccess();
  v24 = a1;
  outlined init with copy of Participant?(a1 + v23, v22, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v22, 1, v7))
  {
    _Block_copy(a2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    _s15ConversationKit11ParticipantVWOcTm_2(v22, v11, type metadata accessor for Participant);
    _Block_copy(a2);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v22, &_s15ConversationKit11ParticipantVSgMd);
    Participant.contactDetails.getter();
    _s15ConversationKit11ParticipantVWOhTm_2(v11, type metadata accessor for Participant);
    v43 = aBlock;

    if (v43)
    {
      goto LABEL_18;
    }
  }

  outlined init with copy of Participant?(a1 + v23, v19, &_s15ConversationKit11ParticipantVSgMd);
  if (!__swift_getEnumTagSinglePayload(v19, 1, v7))
  {
    v44 = v55;
    _s15ConversationKit11ParticipantVWOcTm_2(v19, v55, type metadata accessor for Participant);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd);
    v45 = *(v44 + *(v7 + 28));
    if (!v45)
    {
      _s15ConversationKit11ParticipantVWOhTm_2(v44, type metadata accessor for Participant);
      goto LABEL_5;
    }

    v46 = v45;
    _s15ConversationKit11ParticipantVWOhTm_2(v44, type metadata accessor for Participant);
    v43 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_18:
    v47 = v43;
    v62 = *(a1 + OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_avatarImageQueue);
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned UIImage?) -> ();
    v48[4] = v63;
    v68 = closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)partial apply;
    v69 = v48;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed () -> ();
    v67 = &block_descriptor_38_0;
    v49 = _Block_copy(&aBlock);
    v50 = v47;

    v51 = v56;
    static DispatchQoS.unspecified.getter();
    v70 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v52 = v58;
    v53 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v51, v52, v49);
    _Block_release(v49);

    (*(v60 + 8))(v52, v53);
    (*(v57 + 8))(v51, v59);

    v42 = a2;
    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit11ParticipantVSgMd);
LABEL_5:
  v61 = a2;
  outlined init with copy of Participant?(a1 + v23, v16, &_s15ConversationKit11ParticipantVSgMd);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v7);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit11ParticipantVSgMd);
  v26 = EnumTagSinglePayload == 1;
  if (EnumTagSinglePayload == 1)
  {
    v27 = 1819047278;
  }

  else
  {
    v27 = 0x6C6C756E6E6F6ELL;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE700000000000000;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BC4BAA20;
  aBlock = v27;
  v65 = v28;
  v30 = MEMORY[0x1E69E6158];
  v31 = String.init<A>(reflecting:)();
  v33 = v32;
  *(v29 + 56) = v30;
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 64) = v34;
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v35 = v24 + v23;
  v36 = v62;
  outlined init with copy of Participant?(v35, v62, &_s15ConversationKit11ParticipantVSgMd);
  specialized >> prefix<A>(_:)();
  v38 = v37;
  v40 = v39;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v36, &_s15ConversationKit11ParticipantVSgMd);
  *(v29 + 96) = v30;
  *(v29 + 104) = v34;
  *(v29 + 72) = v38;
  *(v29 + 80) = v40;
  os_log(_:dso:log:type:_:)();

  v41 = v61;
  (*(v61 + 2))(v61, 0);

  v42 = v41;
LABEL_19:
  _Block_release(v42);
}

void SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)()
{
  OUTLINED_FUNCTION_29();
  v72 = v3;
  v73 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v69 = v6;
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v67 = v8 - v7;
  v68 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v65 = v12 - v11;
  v13 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v64 = v15;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4();
  v71 = v21;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_38_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_7();
  v27 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v28 = v0;
  outlined init with copy of Participant?(v0 + v27, v1, &_s15ConversationKit11ParticipantVSgMd);
  if (__swift_getEnumTagSinglePayload(v1, 1, v13))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    _s15ConversationKit11ParticipantVWOcTm_2(v1, v18, v46);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
    Participant.contactDetails.getter();
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v18, v47);
    v48 = v74;

    if (v48)
    {
      goto LABEL_18;
    }
  }

  outlined init with copy of Participant?(v28 + v27, v2, &_s15ConversationKit11ParticipantVSgMd);
  if (!__swift_getEnumTagSinglePayload(v2, 1, v13))
  {
    OUTLINED_FUNCTION_1_55();
    v49 = v64;
    _s15ConversationKit11ParticipantVWOcTm_2(v2, v64, v50);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
    v51 = *(v49 + *(v13 + 28));
    if (!v51)
    {
      OUTLINED_FUNCTION_0_55();
      _s15ConversationKit11ParticipantVWOhTm_2(v49, v63);
      goto LABEL_5;
    }

    v52 = v51;
    OUTLINED_FUNCTION_0_55();
    _s15ConversationKit11ParticipantVWOhTm_2(v49, v53);
    v48 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];

LABEL_18:
    v54 = v48;
    v55 = swift_allocObject();
    v56 = v72;
    v57 = v73;
    v55[2] = v54;
    v55[3] = v56;
    v55[4] = v57;
    v78 = partial apply for closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:);
    v79 = v55;
    v74 = MEMORY[0x1E69E9820];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed () -> ();
    v77 = &block_descriptor_9;
    v58 = _Block_copy(&v74);
    v59 = v54;

    v60 = v65;
    static DispatchQoS.unspecified.getter();
    v80 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v61 = v67;
    v62 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1BFB215C0](0, v60, v61, v58);
    _Block_release(v58);

    (*(v69 + 8))(v61, v62);
    (*(v66 + 8))(v60, v68);

    goto LABEL_19;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
LABEL_5:
  outlined init with copy of Participant?(v28 + v27, v24, &_s15ConversationKit11ParticipantVSgMd);
  v29 = v28;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);
  OUTLINED_FUNCTION_33_3(v24);
  v31 = EnumTagSinglePayload == 1;
  if (EnumTagSinglePayload == 1)
  {
    v32 = 1819047278;
  }

  else
  {
    v32 = 0x6C6C756E6E6F6ELL;
  }

  if (v31)
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BC4BAA20;
  v74 = v32;
  v75 = v33;
  v35 = MEMORY[0x1E69E6158];
  v36 = String.init<A>(reflecting:)();
  v38 = v37;
  *(v34 + 56) = v35;
  v39 = lazy protocol witness table accessor for type String and conformance String();
  *(v34 + 64) = v39;
  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  v40 = v29 + v27;
  v41 = v71;
  outlined init with copy of Participant?(v40, v71, &_s15ConversationKit11ParticipantVSgMd);
  specialized >> prefix<A>(_:)();
  v43 = v42;
  v45 = v44;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v41, &_s15ConversationKit11ParticipantVSgMd);
  *(v34 + 96) = v35;
  *(v34 + 104) = v39;
  *(v34 + 72) = v43;
  *(v34 + 80) = v45;
  os_log(_:dso:log:type:_:)();

  v72(0);
LABEL_19:
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in SharedContentViewController.getSharedContentSourceAvatarWithImageHandler(_:)(void *a1, void (*a2)(id))
{
  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 layoutDirection];

  v6 = v5 == 1;
  v7 = objc_opt_self();
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [v7 scopeWithPointSize:v6 scale:0 rightToLeft:28.0 style:{28.0, v10}];
  v12 = [objc_allocWithZone(MEMORY[0x1E695D098]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BC4BAC30;
  *(v13 + 32) = a1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);
  v14 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 avatarImageForContacts:isa scope:v11];

  v17 = v16;
  a2(v16);
  swift_unknownObjectRelease();
}

void SharedContentViewController.screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_7();
  type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for ScreenSharingStateMonitor();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = MEMORY[0x1E69E7D40];
    v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x108);
    v15 = swift_unknownObjectRetain();
    v14(v15);
    OUTLINED_FUNCTION_22_5(v1);
    if (v16)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit11ParticipantVSgMd);
      static os_log_type_t.error.getter();
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BC4BA940;
      v18 = OBJC_IVAR____TtC15ConversationKit27SharedContentViewController_participant;
      OUTLINED_FUNCTION_3_0();
      swift_beginAccess();
      outlined init with copy of Participant?(v0 + v18, v6, &_s15ConversationKit11ParticipantVSgMd);
      specialized >> prefix<A>(_:)();
      v20 = v19;
      v22 = v21;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v17 + 32) = v20;
      *(v17 + 40) = v22;
      os_log(_:dso:log:_:_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = OUTLINED_FUNCTION_32_2();
      outlined init with take of Participant(v30, v31);
      (*((*v13 & *v0) + 0x178))(v11);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_0_55();
      _s15ConversationKit11ParticipantVWOhTm_2(v11, v32);
    }

    goto LABEL_11;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.conversationKit);
  swift_unknownObjectRetain();
  v35 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v35, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    swift_getObjectType();
    v27 = _typeName(_:qualified:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v36);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1BBC58000, v35, v24, "screenSharingStateMonitorDidUpdateScreenInfoForParticipant(_:) was unexpectedly passed a %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

LABEL_11:
    OUTLINED_FUNCTION_30_0();
    return;
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t type metadata accessor for SharedContentViewController()
{
  result = type metadata singleton initialization cache for SharedContentViewController;
  if (!type metadata singleton initialization cache for SharedContentViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double _sSo13CATransform3DVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t _sSo13CATransform3DVSgWOg(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void type metadata completion function for SharedContentViewController()
{
  type metadata accessor for Participant?(319, &lazy cache variable for type metadata for Participant?, type metadata accessor for Participant);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Participant?(319, &lazy cache variable for type metadata for SharedContentViewModel?, type metadata accessor for SharedContentViewModel);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Participant?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_5Tm_0()
{

  return swift_deallocObject();
}

uint64_t AsyncCancellableTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AsyncCancellableTimer.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t AsyncCancellableTimer.wait(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AsyncCancellableTimer.wait(with:), v0, 0);
}

{
  AsyncCancellableTimer.cancel()();
  static Duration.zero.getter();
  if ((static Duration.== infix(_:_:)() & 1) == 0)
  {
    v1 = v0[4];
    v2 = v0[5];
    v4 = v0[2];
    v3 = v0[3];
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v3;
    *(v1 + 112) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();

    v7 = *(v1 + 112);
    v0[6] = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      v0[7] = v8;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      *v8 = v0;
      v8[1] = AsyncCancellableTimer.wait(with:);
      v10 = MEMORY[0x1E69E7288];
      v11 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA10](v9, v7, v11, v9, v10);
    }

    *(v0[4] + 112) = 0;
  }

  OUTLINED_FUNCTION_13();

  return v12();
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *(v2 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);

    v5 = AsyncCancellableTimer.wait(with:);
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = AsyncCancellableTimer.wait(with:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  *(*(v0 + 32) + 112) = 0;

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

Swift::Void __swiftcall AsyncCancellableTimer.cancel()()
{
  v1 = *(v0 + 112);
  if (v1)
  {

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v1, MEMORY[0x1E69E7CA8] + 8, v2, MEMORY[0x1E69E7288]);
  }
}

uint64_t closure #1 in AsyncCancellableTimer.wait(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock.Instant();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AsyncCancellableTimer.wait(with:), 0, 0);
}

uint64_t closure #1 in AsyncCancellableTimer.wait(with:)()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  ContinuousClock.init()();
  static ContinuousClock.Instant.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v4 = *(v3 + 8);
  v0[11] = v4;
  v0[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = closure #1 in AsyncCancellableTimer.wait(with:);
  v6 = v0[7];

  return MEMORY[0x1EEE6DC10](v6, 0, 0, 1);
}

{
  v12 = *v1;
  v2 = *(*v1 + 88);
  v11 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v8 = v7;
  *(v12 + 112) = v0;

  v2(v5, v6);
  (*(v3 + 8))(v11, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AsyncCancellableTimer.wait(with:), 0, 0);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9();
  }
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t partial apply for closure #1 in AsyncCancellableTimer.wait(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AsyncCancellableTimer.wait(with:);

  return closure #1 in AsyncCancellableTimer.wait(with:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in AsyncCancellableTimer.wait(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t AsyncCancellableTimer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncCancellableTimer.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t one-time initialization function for secondaryPillTriggeredPreferringHUDDismissal()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000002CLL, 0x80000001BC4F7D40);
  static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal = result;
  return result;
}

uint64_t *Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal.unsafeMutableAddressor()
{
  if (one-time initialization token for secondaryPillTriggeredPreferringHUDDismissal != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.secondaryPillTriggeredPreferringHUDDismissal;
}

uint64_t one-time initialization function for localPreviewDidFinishRotationAnimation()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000026, 0x80000001BC4F7D10);
  static Strings.Notifications.localPreviewDidFinishRotationAnimation = result;
  return result;
}

uint64_t *Strings.Notifications.localPreviewDidFinishRotationAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.localPreviewDidFinishRotationAnimation;
}

uint64_t one-time initialization function for enhancedEmergencyRequestWannaDismissNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003DLL, 0x80000001BC4F7CD0);
  static Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyRequestWannaDismissNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyRequestWannaDismissNotification;
}

uint64_t one-time initialization function for enhancedEmergencyRequestToChoosePhotoNotification()
{
  result = MEMORY[0x1BFB209B0](0xD00000000000003ELL, 0x80000001BC4F7C90);
  static Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyRequestToChoosePhotoNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyRequestToChoosePhotoNotification;
}

uint64_t one-time initialization function for enhancedEmergencyPreviewRequestNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000038, 0x80000001BC4F7C50);
  static Strings.Notifications.enhancedEmergencyPreviewRequestNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyPreviewRequestNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyPreviewRequestNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyPreviewRequestNotification;
}

uint64_t one-time initialization function for enhancedEmergencyUploadDismissDuringStreamingNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000046, 0x80000001BC4F7C00);
  static Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyUploadDismissDuringStreamingNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyUploadDismissDuringStreamingNotification;
}

uint64_t one-time initialization function for enhancedEmergencyUploadPickerDuringStreamingNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000045, 0x80000001BC4F7BB0);
  static Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification = result;
  return result;
}

uint64_t *Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for enhancedEmergencyUploadPickerDuringStreamingNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.enhancedEmergencyUploadPickerDuringStreamingNotification;
}

uint64_t one-time initialization function for didEndWindowLiveResizeNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000024, 0x80000001BC4F7B80);
  static Strings.Notifications.didEndWindowLiveResizeNotification = result;
  return result;
}

uint64_t *Strings.Notifications.didEndWindowLiveResizeNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for didEndWindowLiveResizeNotification != -1)
  {
    swift_once();
  }

  return &static Strings.Notifications.didEndWindowLiveResizeNotification;
}

id makeConversationHUDDetailsNavigationController(for:delegate:shouldSetControlsManagerInCallDetailsDelegate:)(void *a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsNavigationController());
  v6 = a1;
  v7 = ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(v6, 0);
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_52();
  v10 = *(v9 + 120);
  v11 = swift_unknownObjectRetain();
  v10(v11);
  if (a3)
  {
    v12 = *((*v8 & *v6) + 0x508);
    v13 = v7;
    v12(v7, &protocol witness table for ConversationHUDDetailsNavigationController);
  }

  return v7;
}

id makeConversationDetailsController(for:delegate:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v3 = a1;
  OUTLINED_FUNCTION_0_57();
  v4 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_3_52();
  v7 = *(v6 + 160);
  v8 = swift_unknownObjectRetain();
  v7(v8);
  v9 = *((*v5 & *v3) + 0x508);
  v10 = v4;
  v9(v4, &protocol witness table for ConversationHUDDetailsViewController);
  return v10;
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.detailsDelegate : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDDetailsNavigationController.detailsDelegate : ConversationHUDDetailsNavigationController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void ConversationHUDDetailsNavigationController.detailsDelegate.willset()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (v2)
  {
    v3 = *((*v1 & *v2) + 0xA0);
    v5 = v2;
    v4 = swift_unknownObjectRetain();
    v3(v4);
  }
}

uint64_t ConversationHUDDetailsNavigationController.detailsDelegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationHUDDetailsNavigationController.detailsDelegate.setter()
{
  ConversationHUDDetailsNavigationController.detailsDelegate.willset();
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationHUDDetailsNavigationController.detailsDelegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return ConversationHUDDetailsNavigationController.detailsDelegate.modify;
}

void ConversationHUDDetailsNavigationController.detailsDelegate.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    ConversationHUDDetailsNavigationController.detailsDelegate.setter();
    swift_unknownObjectRelease();
  }

  else
  {
    ConversationHUDDetailsNavigationController.detailsDelegate.setter();
  }

  free(v2);
}

uint64_t ConversationHUDDetailsNavigationController.isOnScreen.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_3_52();
    v4 = (*(v3 + 176))();

    return v4 & 1;
  }

  return result;
}

void ConversationHUDDetailsNavigationController.isOnScreen.setter(char a1)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))())
  {
    OUTLINED_FUNCTION_3_52();
    v5 = v4;
    (*(v3 + 184))(a1 & 1);
  }
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.isOnScreen : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

void (*ConversationHUDDetailsNavigationController.isOnScreen.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ConversationHUDDetailsNavigationController.isOnScreen.getter() & 1;
  return ConversationHUDDetailsNavigationController.isOnScreen.modify;
}

uint64_t key path getter for ConversationHUDDetailsNavigationController.detailsViewController : ConversationHUDDetailsNavigationController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDDetailsNavigationController.detailsViewController : ConversationHUDDetailsNavigationController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDDetailsNavigationController.detailsViewController.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDDetailsNavigationController.detailsViewController.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ConversationHUDDetailsNavigationController.init(controlsManager:shouldHaveBackgroundMaterial:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController) = 0;
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_controlsManager) = a1;
  *(v2 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_shouldHaveBackgroundMaterial) = a2;
  v8 = type metadata accessor for ConversationHUDDetailsNavigationController();
  OUTLINED_FUNCTION_3_0();
  return objc_msgSendSuper2(v5, v6, v2, v8);
}

id ConversationHUDDetailsNavigationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDDetailsNavigationController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_detailsViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationHUDDetailsNavigationController();
  v37.receiver = v0;
  v37.super_class = v2;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_controlsManager);
  v4 = objc_allocWithZone(type metadata accessor for ConversationHUDDetailsViewController());
  v3;
  OUTLINED_FUNCTION_0_57();
  v5 = ConversationHUDDetailsViewController.init(controlsManager:closeSideBarAction:)();
  v6 = [v5 setOverrideUserInterfaceStyle_];
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(v6);
  (*((*v7 & *v5) + 0xA0))(v8);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v9 = @nonobjc UIImage.__allocating_init(systemName:)();
  v46 = v2;
  v45[0] = v1;
  v10 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v11 = v1;
  v12 = @nonobjc UIBarButtonItem.init(image:style:target:action:)(v9, 0, v45, sel_tapDoneButton);
  v13 = objc_opt_self();
  v14 = [v13 labelColor];
  [v12 setTintColor_];

  v15 = [v5 navigationItem];
  [v15 setLeftBarButtonItem_];

  v16 = *MEMORY[0x1E69DDCF8];
  v36 = 0;
  strcpy(v38, "message.fill");
  HIBYTE(v38[6]) = 0;
  v38[7] = -5120;
  v39 = 3;
  v40 = v16;
  v41 = 0;
  v42 = 4;
  v43 = 0;
  v44 = 0;
  strcpy(v45, "message.fill");
  BYTE5(v45[1]) = 0;
  HIWORD(v45[1]) = -5120;
  v45[2] = 3;
  v46 = v16;
  v47 = 0;
  v48 = 4;
  v49 = 0;
  v50 = 0;
  v17 = v16;
  outlined init with copy of SymbolImageDescription(v38, v35);
  outlined destroy of SymbolImageDescription(v45);
  v18 = static UIImage.symbolImage(for:)(v38);
  outlined destroy of SymbolImageDescription(v38);
  v35[3] = v2;
  v35[0] = v11;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v19 = v18;
  v20 = v11;
  v21 = @nonobjc UIBarButtonItem.init(image:style:target:action:)(v18, 0, v35, sel_tapMessageButton);
  v22 = [v13 labelColor];
  [v21 setTintColor_];

  v23 = [v5 navigationItem];
  [v23 setRightBarButtonItem_];

  v24 = [v5 navigationItem];
  v25 = [v24 rightBarButtonItem];

  if (v25)
  {
    OUTLINED_FUNCTION_1_57();
    [v25 setHidden_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BC4BAC30;
  *(v27 + 32) = v5;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setViewControllers_];

  OUTLINED_FUNCTION_1_57();
  v30 = *(v29 + 168);
  v31 = v5;
  v30(v5);
  v32 = [v20 navigationBar];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  [v32 setShadowImage_];

  if (*(v20 + OBJC_IVAR____TtC15ConversationKit42ConversationHUDDetailsNavigationController_shouldHaveBackgroundMaterial) == 1)
  {
    OUTLINED_FUNCTION_1_57();
    (*(v34 + 232))();
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.tapDoneButton()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (v1)
  {
    [v1 wantsDismissal];

    swift_unknownObjectRelease();
  }

  else
  {

    [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.setUpBackgroundMaterialView()()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  [v3 setAutoresizingMask_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 insertSubview:v3 atIndex:0];
}

void ConversationHUDDetailsNavigationController.updated(_:)()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0xA0))();
  if (v2)
  {
    v3 = v2;
    ConversationHUDDetailsViewController.updated(_:)(v0);
  }
}

void ConversationHUDDetailsNavigationController.update(participant:broadcastingState:)()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (v1)
  {
    v2 = v1;
    ConversationHUDDetailsViewController.update(participant:broadcastingState:)();
  }
}

Swift::Void __swiftcall ConversationHUDDetailsNavigationController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(Swift::OpaquePointer a1, Swift::Bool isLocalMemberAuthorizedToChangeGroupMembership)
{
  v3 = v2;
  OUTLINED_FUNCTION_4_36();
  v4 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0xA0);
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationItem];

    v10 = [v9 rightBarButtonItem];
    if (v10)
    {
      [v10 setHidden_];
    }
  }

  if (v6())
  {
    v11 = OUTLINED_FUNCTION_2_54();
    ConversationHUDDetailsViewController.updateLocalViews(for:isLocalMemberAuthorizedToChangeGroupMembership:)(v11, v12);
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }
}

void ConversationHUDDetailsNavigationController.update(participant:isKickingAvailable:)()
{
  OUTLINED_FUNCTION_4_36();
  if ((*((*MEMORY[0x1E69E7D40] & v0) + 0xA0))())
  {
    OUTLINED_FUNCTION_2_54();
    ConversationHUDDetailsViewController.update(participant:isKickingAvailable:)();
  }
}

void ConversationHUDDetailsNavigationController.update(with:updateReason:)()
{
  OUTLINED_FUNCTION_1_57();
  v1 = *(v0 + 160);
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationItem];

    v5 = [v4 rightBarButtonItem];
    if (v5)
    {
      OUTLINED_FUNCTION_1_57();
      [v5 setHidden_];
    }
  }

  v7 = v1();
  if (v7)
  {
    v8 = v7;
    ConversationHUDDetailsViewController.update(with:updateReason:)();
  }

  OUTLINED_FUNCTION_1_3();
}

void ConversationHUDDetailsNavigationController.resetScroll(animated:)(char a1, void (*a2)(void))
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))();
  if (v5)
  {
    v6 = v5;
    a2(a1 & 1);
  }
}

void ConversationHUDDetailsNavigationController.refreshTitleCell()()
{
  OUTLINED_FUNCTION_4_36();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0xA0))();
  if (v2)
  {
    v3 = v2;
    v0();
  }
}

id ConversationHUDDetailsNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id ConversationHUDDetailsNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id ConversationHUDDetailsNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id ConversationHUDDetailsNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDDetailsNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc UIBarButtonItem.init(image:style:target:action:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = a3[3];
  if (v9)
  {
    v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v12 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(a3);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 initWithImage:a1 style:a2 target:v15 action:a4];

  swift_unknownObjectRelease();
  return v16;
}

uint64_t key path getter for ParticipantListLayout.delegate : ParticipantListLayout@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for ParticipantListLayout.delegate : ParticipantListLayout(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t ParticipantListLayout.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ParticipantListLayout.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate;
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

id ParticipantListLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantListLayout.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  type metadata accessor for IndexPath();
  type metadata accessor for UICollectionViewLayoutAttributes();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  *&v0[v2] = Dictionary.init(dictionaryLiteral:)();
  v3 = &v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 setItemSize_];
  static Layout.Roster.iOS.getter(v8);
  [v5 setMinimumInteritemSpacing_];

  return v5;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath()
{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

id ParticipantListLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantListLayout.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  type metadata accessor for IndexPath();
  type metadata accessor for UICollectionViewLayoutAttributes();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath();
  *(v0 + v1) = Dictionary.init(dictionaryLiteral:)();
  v2 = v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ParticipantListLayout.prepare()()
{
  v3 = v0;
  ObjectType = swift_getObjectType();
  isUniquelyReferenced_nonNull_native = type metadata accessor for IndexPath();
  OUTLINED_FUNCTION_1();
  v170 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v162[-v9];
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v162[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v162[-v16];
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v180 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v173 = v22;
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v174 = &v162[-v25];
  v182.receiver = v3;
  v182.super_class = ObjectType;
  objc_msgSendSuper2(&v182, sel_prepareLayout, v24);
  v26 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD8_VariantVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesC_GMd);
  v178 = v26;
  Dictionary._Variant.removeAll(keepingCapacity:)(1);
  swift_endAccess();
  v27 = [v3 collectionView];
  if (!v27)
  {
    return;
  }

  v28 = v27;
  swift_beginAccess();
  [v3 setScrollDirection_];
  ParticipantListLayout.updateItemSize()();
  v29 = [v28 numberOfSections];
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v30 = v29;
  v166 = v10;
  v165 = v17;
  v164 = v14;
  v10 = &selRef_isRecordingAllowed;
  if (v29)
  {
    v17 = 0;
    OUTLINED_FUNCTION_4_37();
    v179 = v31;
    v2 = 0.0;
    v172 = v32 + 8;
    v171 = ((v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v14 = v174;
    v169 = v28;
    v168 = v30;
    while (1)
    {
      v33 = [v28 numberOfItemsInSection_];
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      v1 = v33;
      if (v33)
      {
        v34 = type metadata accessor for UICollectionViewLayoutAttributes();
        v176 = v17;
        v177 = v34;
        v35 = 0;
        v175 = v1;
        do
        {
          MEMORY[0x1BFB1A660](v35, v17);
          v36 = *v179;
          v37 = v173;
          (*v179)(v173, v14, isUniquelyReferenced_nonNull_native);
          v38 = @nonobjc UICollectionViewLayoutAttributes.__allocating_init(forCellWith:)(v37);
          OUTLINED_FUNCTION_19_12();
          OUTLINED_FUNCTION_12_24();
          v39 = OUTLINED_FUNCTION_18_24();
          [v39 v40];
          v41 = [v3 scrollDirection];
          OUTLINED_FUNCTION_12_24();
          if (v41 == 1)
          {
            [v38 setFrame_];
            OUTLINED_FUNCTION_12_24();
            v42 = OUTLINED_FUNCTION_18_24();
            [v42 v43];
          }

          else
          {
            [v38 setFrame_];
            OUTLINED_FUNCTION_12_24();
            v44 = OUTLINED_FUNCTION_18_24();
            [v44 v45];
          }

          IndexPath.item.getter();
          OUTLINED_FUNCTION_19_12();
          [v3 minimumInteritemSpacing];
          OUTLINED_FUNCTION_12_24();
          v46 = OUTLINED_FUNCTION_18_24();
          [v46 v47];
          [v38 setZIndex_];
          v10 = isUniquelyReferenced_nonNull_native;
          v48 = v36;
          v36(v180, v14, isUniquelyReferenced_nonNull_native);
          v14 = v178;
          OUTLINED_FUNCTION_10_22();
          v1 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v14 + v3);
          v17 = v3;
          *(v14 + v3) = -0.0;
          specialized __RawDictionaryStorage.find<A>(_:)();
          OUTLINED_FUNCTION_6_35();
          v3 = v51 + v52;
          if (__OFADD__(v51, v52))
          {
            __break(1u);
            goto LABEL_52;
          }

          v53 = v49;
          v54 = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd);
          v55 = OUTLINED_FUNCTION_5_33();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v3))
          {
            v56 = specialized __RawDictionaryStorage.find<A>(_:)();
            isUniquelyReferenced_nonNull_native = v10;
            if ((v54 & 1) != (v57 & 1))
            {
              goto LABEL_83;
            }

            v53 = v56;
            v3 = v17;
          }

          else
          {
            v3 = v17;
            isUniquelyReferenced_nonNull_native = v10;
          }

          v10 = &selRef_isRecordingAllowed;
          v58 = v181;
          if (v54)
          {
            v59 = v181[7];
            v60 = *(v59 + 8 * v53);
            *(v59 + 8 * v53) = v1;

            OUTLINED_FUNCTION_17_21();
            v62 = *v61;
            (*v61)(v180, isUniquelyReferenced_nonNull_native);
          }

          else
          {
            v17 = v3;
            v3 = 0x1E7FEA000;
            v181[(v53 >> 6) + 8] |= 1 << v53;
            v63 = v170;
            v10 = v180;
            v48((v58[6] + *(v170 + 72) * v53), v180, isUniquelyReferenced_nonNull_native);
            *(v58[7] + 8 * v53) = v1;
            v62 = *(v63 + 8);
            v14 = isUniquelyReferenced_nonNull_native;
            OUTLINED_FUNCTION_17_21();
            v62();
            v64 = v58[2];
            v65 = __OFADD__(v64, 1);
            v66 = v64 + 1;
            if (v65)
            {
              __break(1u);
              goto LABEL_74;
            }

            v58[2] = v66;
            v10 = &selRef_isRecordingAllowed;
            v3 = v17;
          }

          v35 = (v35 + 1);
          OUTLINED_FUNCTION_8_42();
          *(v3 + v67) = v58;

          swift_endAccess();

          v14 = v174;
          (v62)(v174, isUniquelyReferenced_nonNull_native);
          v1 = v175;
          v17 = v176;
        }

        while (v175 != v35);
      }

      v17 = (v17 + 1);
      OUTLINED_FUNCTION_19_12();
      v69 = v68;
      [v3 minimumInteritemSpacing];
      v2 = v2 + (v69 + v70) * v1;
      v28 = v169;
      if (v17 == v168)
      {
        goto LABEL_24;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    swift_once();
    goto LABEL_27;
  }

  v2 = 0.0;
LABEL_24:
  if ([v3 scrollDirection] != 1)
  {
    v75 = v28;
    [v75 bounds];
    v77 = v76;
    [v3 minimumInteritemSpacing];
    v79 = v3 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize;
    *v79 = v77;
    *(v79 + 8) = v2 + v78;
    [v75 bounds];
    v2 = v80;

    if (*(v79 + 8) >= v2)
    {
    }

    else
    {
      v172 = v79;
      v173 = v75;
      v17 = (OUTLINED_FUNCTION_8_42() + 64);
      OUTLINED_FUNCTION_2_55();
      v83 = v82 & v81;
      v85 = (v84 + 63) >> 6;
      OUTLINED_FUNCTION_4_37();
      v179 = v86;
      v180 = v87;
      v175 = v88 + 8;
      v176 = (v88 + 32);

      v14 = 0;
      OUTLINED_FUNCTION_13_30();
      while (v83)
      {
LABEL_36:
        v83 &= v83 - 1;
        OUTLINED_FUNCTION_1_58();
        v90 = OUTLINED_FUNCTION_9_25(&v184);
        v91(v90);
        v92 = v166;
        (*(v75 + 4))(v166, v1, isUniquelyReferenced_nonNull_native);
        OUTLINED_FUNCTION_11_26();
        v75 = *(v75 + v3);
        if (*(v75 + 2) && (v93 = specialized __RawDictionaryStorage.find<A>(_:)(), (v94 & 1) != 0))
        {
          v95 = *(*(v75 + 7) + 8 * v93);
          swift_endAccess();
          v96 = v95;
          [v96 v10[61]];
          [v96 setFrame_];
          v1 = v167;
          v177(v167, v92, isUniquelyReferenced_nonNull_native);
          OUTLINED_FUNCTION_10_22();
          v97 = v96;
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_7_40();
          OUTLINED_FUNCTION_6_35();
          v10 = (v100 + v101);
          if (__OFADD__(v100, v101))
          {
            goto LABEL_78;
          }

          v3 = v98;
          v102 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd);
          v103 = OUTLINED_FUNCTION_5_33();
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v103, v10))
          {
            v104 = specialized __RawDictionaryStorage.find<A>(_:)();
            v106 = v175;
            if ((v102 & 1) != (v105 & 1))
            {
              goto LABEL_83;
            }

            v3 = v104;
          }

          else
          {
            v106 = v175;
          }

          v107 = v181;
          v75 = (v106 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          if (v102)
          {
            v108 = v181[7];
            v109 = *(v108 + 8 * v3);
            *(v108 + 8 * v3) = v97;

            v110 = *v106;
            v1 = v97;
            v111 = v163;
            v110(v167, v163);
            OUTLINED_FUNCTION_14_18();
          }

          else
          {
            v171 = (v106 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v112 = OUTLINED_FUNCTION_0_58();
            v1 = v97;
            v113 = v167;
            v177(v112, v167, v163);
            *(v107[7] + 8 * v3) = v1;
            v110 = *v106;
            v110(v113, v163);
            v114 = v107[2];
            v65 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v65)
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              while (1)
              {
LABEL_83:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
              }
            }

            v107[2] = v115;
            OUTLINED_FUNCTION_14_18();
            v111 = v163;
            v75 = v171;
          }

          OUTLINED_FUNCTION_8_42();
          *(v3 + v116) = v107;

          swift_endAccess();

          v110(v166, v111);
          isUniquelyReferenced_nonNull_native = v111;
          v10 = &selRef_isRecordingAllowed;
        }

        else
        {
          swift_endAccess();
          (*v175)(v92, isUniquelyReferenced_nonNull_native);
        }
      }

      while (1)
      {
        v89 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_75;
        }

        if (v89 >= v85)
        {
          break;
        }

        v83 = *&v17[v89];
        v14 = (v14 + 1);
        if (v83)
        {
          v14 = v89;
          goto LABEL_36;
        }
      }

      OUTLINED_FUNCTION_17_21();
      *(v117 + 8) = v2;
    }

    return;
  }

  [v3 minimumInteritemSpacing];
  v72 = v2 + v71;
  v14 = v28;
  [v14 bounds];
  v17 = (v3 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_calculatedContentSize);
  *v17 = v72;
  *(v17 + 1) = v73;
  [v14 bounds];
  v2 = v74;

  if (*v17 >= v2)
  {
LABEL_28:

    return;
  }

  if (one-time initialization token for shared != -1)
  {
    goto LABEL_79;
  }

LABEL_27:
  if (Features.isICUIRedesignEnabled.getter())
  {
    goto LABEL_28;
  }

LABEL_52:
  v171 = v14;
  v169 = v17;
  v118 = v2 - *v17;
  v119 = OUTLINED_FUNCTION_8_42() + 64;
  OUTLINED_FUNCTION_2_55();
  v122 = v121 & v120;
  v17 = ((v123 + 63) >> 6);
  OUTLINED_FUNCTION_4_37();
  v179 = v124;
  v180 = v125;
  v176 = (v126 + 32);
  v127 = v126 + 8;

  v128 = 0;
  OUTLINED_FUNCTION_13_30();
  v175 = v127;
  while (v122)
  {
LABEL_58:
    v122 &= v122 - 1;
    OUTLINED_FUNCTION_1_58();
    v130 = OUTLINED_FUNCTION_9_25(&v183);
    v131(v130);
    v14 = v165;
    (*(v127 + 32))(v165, v1, isUniquelyReferenced_nonNull_native);
    OUTLINED_FUNCTION_11_26();
    v132 = *(v3 + v127);
    if (*(v132 + 16) && (v133 = specialized __RawDictionaryStorage.find<A>(_:)(), (v134 & 1) != 0))
    {
      v135 = *(*(v132 + 56) + 8 * v133);
      swift_endAccess();
      v136 = v135;
      [v136 v10[61]];
      [v136 setFrame_];
      v138 = v14;
      v139 = v177;
      v177(v164, v138, isUniquelyReferenced_nonNull_native);
      OUTLINED_FUNCTION_10_22();
      v173 = v136;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_40();
      OUTLINED_FUNCTION_6_35();
      v144 = v142 + v143;
      if (__OFADD__(v142, v143))
      {
        __break(1u);
        goto LABEL_81;
      }

      v3 = v140;
      v145 = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation9IndexPathVSo32UICollectionViewLayoutAttributesCGMd);
      v146 = OUTLINED_FUNCTION_5_33();
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v146, v144))
      {
        v147 = v164;
        v148 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v145 & 1) != (v149 & 1))
        {
          goto LABEL_83;
        }

        v3 = v148;
      }

      else
      {
        v147 = v164;
      }

      v150 = v181;
      v127 = v175;
      v172 = v175 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v145)
      {
        v151 = v181[7];
        v152 = *(v151 + 8 * v3);
        v1 = v173;
        *(v151 + 8 * v3) = v173;

        v14 = *v127;
        v153 = v147;
        v154 = v163;
        (*v127)(v153, v163);
        OUTLINED_FUNCTION_14_18();
      }

      else
      {
        v155 = OUTLINED_FUNCTION_0_58();
        v156 = v147;
        v157 = v147;
        v158 = v163;
        v139(v155, v156, v163);
        *(v150[7] + 8 * v3) = v173;
        v14 = *v127;
        (*v127)(v157, v158);
        v159 = v150[2];
        v65 = __OFADD__(v159, 1);
        v160 = v159 + 1;
        if (v65)
        {
          goto LABEL_82;
        }

        v150[2] = v160;
        OUTLINED_FUNCTION_14_18();
        v154 = v163;
        v1 = v173;
      }

      OUTLINED_FUNCTION_8_42();
      *(v3 + v161) = v150;

      swift_endAccess();

      OUTLINED_FUNCTION_17_21();
      (v14)();
      isUniquelyReferenced_nonNull_native = v154;
      v10 = &selRef_isRecordingAllowed;
    }

    else
    {
      swift_endAccess();
      v127 = v175;
      (*v175)(v14, isUniquelyReferenced_nonNull_native);
    }
  }

  while (1)
  {
    v129 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      goto LABEL_76;
    }

    if (v129 >= v17)
    {
      break;
    }

    v122 = *(v119 + 8 * v129);
    ++v128;
    if (v122)
    {
      v128 = v129;
      goto LABEL_58;
    }
  }

  *v169 = v2;
}

void ParticipantListLayout.updateItemSize()()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 scrollDirection];
    [v3 bounds];
    if (v4 == 1)
    {
      Width = CGRectGetWidth(*&v5);
    }

    else
    {
      Width = CGRectGetHeight(*&v5);
    }

    v10 = Width;
    static Layout.Roster.iOS.getter(v20);
    [v3 displayScale];
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 1);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 8))(ObjectType, v14);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 1;
    }

    v19 = static ParticipantListLayout.itemWidth(for:remoteCellCount:displayScale:includeLocalParticipant:configurableRosterCellWidth:)(0, v16, v18 & 1, v10 - v21, v22[0], v12);
    [v1 setItemSize_];
  }
}

id @nonobjc UICollectionViewLayoutAttributes.__allocating_init(forCellWith:)(uint64_t a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath_];

  v4 = type metadata accessor for IndexPath();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

Swift::Bool __swiftcall ParticipantListLayout.shouldInvalidateLayout(forBoundsChange:)(__C::CGRect forBoundsChange)
{
  v2 = v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize;
  if ((*(v1 + OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_lastInvalidatedSize + 16) & 1) == 0 && *v2 == forBoundsChange.size.width && *(v2 + 8) == forBoundsChange.size.height)
  {
    return 0;
  }

  *v2 = forBoundsChange.size.width;
  *(v2 + 8) = forBoundsChange.size.height;
  result = 1;
  *(v2 + 16) = 0;
  return result;
}

void *ParticipantListLayout.layoutAttributesForItem(at:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21ParticipantListLayout_indexPathLayoutAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    v6 = v5;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  return v5;
}

void ParticipantListLayout._layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();

  v9 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo32UICollectionViewLayoutAttributesC_SD6ValuesVy10Foundation9IndexPathVAE_GTt0g5(v8);
  v18 = MEMORY[0x1E69E7CC0];
  v10 = specialized Array.count.getter(v9);
  v11 = 0;
  while (1)
  {
    if (v10 == v11)
    {

      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1BFB22010](v11, v9);
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    [v12 frame];
    v20.origin.x = v14;
    v20.origin.y = v15;
    v20.size.width = v16;
    v20.size.height = v17;
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    if (CGRectIntersectsRect(v19, v20))
    {
      MEMORY[0x1BFB20CC0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v11;
    }

    else
    {

      ++v11;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

double static ParticipantListLayout.itemWidth(for:remoteCellCount:displayScale:includeLocalParticipant:configurableRosterCellWidth:)(char a1, uint64_t a2, char a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for FloatingPointRoundingRule();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {
    return *&a2;
  }

  v18 = a5 + 1.0;
  static Layout.Roster.iOS.getter(v23);
  v19 = 0.0;
  if ((a1 & 1) == 0)
  {
    v19 = 1.0;
  }

  v20 = (a4 - v18 * v24) / (v18 - v19);
  (*(v14 + 104))(v17, *MEMORY[0x1E69E7040], v12);
  v21 = CGFloat.rounded(_:toScale:)(v17, a6, v20);
  (*(v14 + 8))(v17, v12);
  return v21;
}

id ParticipantListLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance CaptionsViewController(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

uint64_t (*ParticipantsViewController.participantsViewControllerDelegate.modify(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return ParticipantsViewController.participantsViewControllerDelegate.modify;
}

unsigned __int16 *getEnumTagSinglePayload for ParticipantsViewControllerUpdateReason(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *(result + 1);
    if (v6 >= 3)
    {
      return ((v6 ^ 0xFF) + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65282;
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
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
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
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
        result = ((*result | (v5 << 16)) - 65282);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ParticipantsViewControllerUpdateReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTag for ParticipantsViewControllerUpdateReason(unsigned __int8 *a1)
{
  result = a1[1];
  if (result >= 2)
  {
    return (*a1 | (result << 8)) - 510;
  }

  return result;
}

_BYTE *destructiveInjectEnumTag for ParticipantsViewControllerUpdateReason(_BYTE *result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    a2 = ((a2 - 2) >> 8) + 2;
    *result = v2;
  }

  result[1] = a2;
  return result;
}

uint64_t (*protocol witness for ParticipantsViewController.participantsViewControllerDelegate.modify in conformance InCallBannerHostViewController(void *a1))()
{
  *a1 = 0;
  a1[1] = 0;
  return ParticipantsViewController.participantsViewControllerDelegate.modify;
}

uint64_t DestinationQueryController.delegate.setter()
{
  OUTLINED_FUNCTION_3_12();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for DestinationQueryController.delegate : DestinationQueryController@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void (*DestinationQueryController.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CNKDestinationQueryControllerInternal_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return DestinationQueryController.delegate.modify;
}

void DestinationQueryController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

id DestinationQueryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DestinationQueryController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() sharedManager];
  v2 = objc_allocWithZone(ObjectType);
  v3 = OUTLINED_FUNCTION_6_4();
  v4 = DestinationQueryController.init(idsLookupManager:)(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *DestinationQueryController.init(idsLookupManager:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v52 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v60 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v59 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQuerySubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&v1[v15] = PassthroughSubject.init()();
  v16 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupSubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v16] = PassthroughSubject.init()();
  v17 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQuerySubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v17] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryDebouncer] = 0;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupDebouncer] = 0;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQueryDebouncer] = 0;
  v18 = OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationSubject;
  OUTLINED_FUNCTION_10_23();
  *&v1[v18] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationDebouncer] = 0;
  v19 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsGroupDestinations] = v19;
  *&v1[OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager] = a1;
  v63.receiver = v1;
  v63.super_class = ObjectType;
  v48 = a1;
  v20 = objc_msgSendSuper2(&v63, sel_init);
  v62 = *&v20[OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQuerySubject];
  v21 = v20;

  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v49 = objc_opt_self();
  v22 = [v49 mainRunLoop];
  v61 = v22;
  v58 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v58);
  v57 = type metadata accessor for NSRunLoop();
  v56 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  v55 = lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v6, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v50 = *(v60 + 8);
  v60 += 8;
  v50(v10, v52);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_6_36();
  OUTLINED_FUNCTION_24();
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in DestinationQueryController.init(idsLookupManager:);
  *(v23 + 24) = &v62;
  v54 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<PassthroughSubject<(), Never>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA18PassthroughSubjectCyyts5NeverOGSo9NSRunLoopCGMd);
  v24 = v51;
  v25 = v14;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_6_4();

  v26 = *(v59 + 8);
  v59 += 8;
  v53 = v26;
  v26(v14, v24);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupSubject);
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v27 = v49;
  v28 = [v49 mainRunLoop];
  v61 = v28;
  v47 = v6;
  OUTLINED_FUNCTION_2_56(v6);
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of TapInteractionHandler?(v6, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v29 = v52;
  v50(v10, v52);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_6_36();
  OUTLINED_FUNCTION_24();
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for closure #2 in DestinationQueryController.init(idsLookupManager:);
  *(v30 + 24) = v25;
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_6_4();

  v31 = OUTLINED_FUNCTION_3_53();
  v32(v31);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSQueryGroupDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQuerySubject);
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v33 = [v27 mainRunLoop];
  v61 = v33;
  v34 = v47;
  OUTLINED_FUNCTION_2_56(v47);
  OUTLINED_FUNCTION_11_27();
  outlined destroy of TapInteractionHandler?(v34, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v35 = v29;
  v36 = v50;
  v50(v10, v35);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_6_36();
  OUTLINED_FUNCTION_24();
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #3 in DestinationQueryController.init(idsLookupManager:);
  *(v37 + 24) = v25;
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_6_4();

  v38 = OUTLINED_FUNCTION_3_53();
  v39(v38);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleIDSCachedQueryDebouncer);
  OUTLINED_FUNCTION_9_26(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationSubject);
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v40 = [v49 mainRunLoop];
  v61 = v40;
  OUTLINED_FUNCTION_2_56(v34);
  OUTLINED_FUNCTION_11_27();
  outlined destroy of TapInteractionHandler?(v34, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v36(v10, v52);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_6_36();
  OUTLINED_FUNCTION_24();
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #4 in DestinationQueryController.init(idsLookupManager:);
  *(v41 + 24) = v25;
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_6_4();

  v42 = OUTLINED_FUNCTION_3_53();
  v43(v42);
  OUTLINED_FUNCTION_15_17(OBJC_IVAR___CNKDestinationQueryControllerInternal_scheduleNotificationDebouncer);
  v44 = [objc_opt_self() defaultCenter];
  [v44 addObserver:v21 selector:sel_handleIDSStatusChanged name:*MEMORY[0x1E69D8FA0] object:0];

  return v21;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop()
{
  result = lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop;
  if (!lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop)
  {
    type metadata accessor for NSRunLoop();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop);
  }

  return result;
}

void DestinationQueryController.scheduleIDSQuery()()
{
  v1 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  swift_beginAccess();

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 beginBatchQueryWithDestinations_];
}

void DestinationQueryController.scheduleIDSQueryForGroups()()
{
  v1 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
  swift_beginAccess();
  v2 = *(v0 + v1);

  specialized Set.union<A>(_:)(v3, v2);
  *(v0 + v1) = v4;

  v5 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v5 beginBatchQueryWithDestinations_];
}

void closure #1 in DestinationQueryController.init(idsLookupManager:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void DestinationQueryController.scheduleIDSCachedQuery()()
{
  v1 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
  v2 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
  swift_beginAccess();
  v3 = *(v0 + v2);

  specialized Set.union<A>(_:)(v4, v3);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 beginCachedQueryWithDestinations_];
}

void closure #4 in DestinationQueryController.init(idsLookupManager:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 queryControllerUpdated];
      swift_unknownObjectRelease();
    }
  }
}

id DestinationQueryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DestinationQueryController.handleIDSStatusChanged()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  return Subject<>.send()();
}

uint64_t DestinationQueryController.addRecipient(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.conversationKit);
  OUTLINED_FUNCTION_6_4();
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CNKDestinationVendingProtocol_pMd);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1BBC58000, v5, v6, "[DestinationQueryController] Adding recipient: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1BFB23DF0](v8, -1, -1);
    MEMORY[0x1BFB23DF0](v7, -1, -1);
  }

  if ([a1 isGroup])
  {
    v12 = (v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsGroupDestinations);
  }

  else
  {
    v12 = (v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations);
    swift_beginAccess();
  }

  v13 = *v12;

  v14 = [a1 idsDestinations];
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Set.union<A>(_:)(v15, v13);
  *v12 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  Subject<>.send()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  return Subject<>.send()();
}

uint64_t DestinationQueryController.removeRecipient(_:)(void *a1)
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BA940;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CNKDestinationVendingProtocol_pMd);
  v3 = String.init<A>(reflecting:)();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:type:_:)();

  v6 = [a1 idsDestinations];
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  specialized Set._subtract<A>(_:)(v7);
  swift_endAccess();
}

void @objc DestinationQueryController.addRecipient(_:)()
{
  OUTLINED_FUNCTION_14_19();
  v3 = v1;
  v0(v2);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall DestinationQueryController.reset()()
{
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v1 = *(v0 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);

  [v1 cancelQueries];
}

void DestinationQueryController.queryAddresses(_:)(uint64_t a1)
{
  v3 = a1 + 56;
  OUTLINED_FUNCTION_33_2();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_6:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];

    v16 = MEMORY[0x1BFB209B0](v14, v15);
    v17 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v22;
      }

      v20 = *(v10 + 16);
      if (v20 >= *(v10 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v23;
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v28;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v10);

      specialized Set.union<A>(_:)(v24, v24);
      v26 = v25;
      v27 = OBJC_IVAR___CNKDestinationQueryControllerInternal_idsDestinations;
      OUTLINED_FUNCTION_3_12();
      *(v1 + v27) = v26;

      DestinationQueryController.scheduleIDSQuery()();
      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t DestinationQueryController.isFaceTimeAllowed(for:)(void *a1)
{
  result = DestinationQueryController.isAudioAllowed(for:)(a1);
  if (result != 1)
  {
    return DestinationQueryController.isVideoAllowed(for:)(a1) == 1;
  }

  return result;
}

uint64_t DestinationQueryController.isAudioAllowed(for:)(void *a1, SEL *a2)
{
  v4 = [a1 idsDestinations];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5() + 16))
  {
    v5 = *(v2 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v7 = [v5 *a2];

    return v7;
  }

  else
  {

    return -1;
  }
}

uint64_t @objc DestinationQueryController.isFaceTimeAllowed(for:)()
{
  OUTLINED_FUNCTION_14_19();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_6_4();
  v4 = v0(v3);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t DestinationQueryController.isWebCapable(for:)(void *a1)
{
  v2 = [a1 idsDestinations];
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Collection.first.getter(v3);
  if (v5 && (v6 = v4, v7 = v5, v8 = *(v3 + 16), , v8 == 1))
  {
    v9 = *(v1 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    v10 = MEMORY[0x1BFB209B0](v6, v7);

    v11 = [v9 isWebCapableFaceTimeAvailableForDestination_];

    return v11;
  }

  else
  {

    return -1;
  }
}

uint64_t DestinationQueryController.presentationStyle(for:)(void *a1)
{
  v3 = [a1 idsDestinations];
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Collection.first.getter(v4);
  if (v6 && (v7 = v5, v8 = v6, v9 = *(v4 + 16), , v9 == 1))
  {
    v10 = *(v1 + OBJC_IVAR___CNKDestinationQueryControllerInternal_idsLookupManager);
    v11 = MEMORY[0x1BFB209B0](v7, v8);

    v12 = [v10 faceTimeMultiwayAvailabilityForDestination_];

    if (v12 == 2)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }
  }

  else
  {

    v13 = 2;
  }

  if (([a1 isGroup] & 1) == 0)
  {
    v14 = [a1 idsDestinations];
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = specialized Collection.first.getter(v15);
    v18 = v17;

    if (v18)
    {
      v19 = MEMORY[0x1BFB209B0](v16, v18);

      v20 = [v19 destinationIdIsPhoneNumber];

      if (v20)
      {
        v13 = 4;
      }
    }
  }

  if (DestinationQueryController.isFaceTimeAllowed(for:)(a1))
  {
    return 5;
  }

  else
  {
    return v13;
  }
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    OUTLINED_FUNCTION_33_2();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    v21[0] = v8 + 8;
    v21[1] = v8 + 16;

    v18 = 0;
    if (!v15)
    {
      goto LABEL_4;
    }

    do
    {
      v19 = v18;
LABEL_8:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v20 | (v19 << 6)), v6);
      specialized Set._Variant.remove(_:)();
      (*(v8 + 8))(v12, v6);
      result = outlined destroy of TapInteractionHandler?(v5, &_s10Foundation4UUIDVSgMd);
    }

    while (v15);
LABEL_4:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
      }

      v15 = *(a1 + 56 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    OUTLINED_FUNCTION_33_2();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;

    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(v2 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      specialized Set._Variant.remove(_:)(v13, v14);
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t EnteredNumbersView.enteredNumbers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](v6, v4);
  return v6[0];
}

uint64_t key path getter for EnteredNumbersView.enteredNumbers : EnteredNumbersView@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = EnteredNumbersView.enteredNumbers.getter(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for EnteredNumbersView.enteredNumbers : EnteredNumbersView()
{

  return EnteredNumbersView.enteredNumbers.setter();
}

void (*EnteredNumbersView.enteredNumbers.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_2_57();
  v10 = __swift_coroFrameAllocStub(0x88uLL);
  *v8 = v10;
  v10[14] = v5;
  v10[15] = a5;
  v10[12] = v7;
  v10[13] = v6;
  *v10 = v7;
  v10[1] = v6;
  v10[2] = v5;
  v10[3] = a5;

  v10[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050]();
  return EnteredNumbersView.enteredNumbers.modify;
}

void EnteredNumbersView.enteredNumbers.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v2[4] = *(*a1 + 96);
  v2[10] = v2[8];
  v4 = v2[9];
  v5 = v2[15];
  v6 = v2[14];
  v2[5] = v3;
  v2[6] = v6;
  v2[7] = v5;
  v2[11] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t EnteredNumbersView.$enteredNumbers.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t EnteredNumbersView.body.getter()
{
  OUTLINED_FUNCTION_2_57();
  v1 = v0;
  *v0 = static VerticalAlignment.center.getter();
  v1[1] = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedJ0VyAKyAKyAA0F0VyAIyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGATyAR14TruncationModeOGG_AA6SpacerVtGGAA08_PaddingG0VGAA016_BackgroundStyleS0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitrS0VyAA0g13PriorityTraitQ0VGG_AKyAKyAKyAA0D0PAAE06buttonY0yQrqd__AA06ButtonY0Rd__lFQOyAA6ButtonVyAKyAA5ImageVA5_GG_AL012DeleteButtonY033_E44343144E29C1A4C0133F4F8C633823LLVQo_A5_GAA14_OpacityEffectVGAA06_FrameG0VGtGGMd);
  v2 = OUTLINED_FUNCTION_1_59();
  closure #1 in EnteredNumbersView.body.getter(v2, v3, v4, v5, v6);
  v7 = static Animation.default.getter();
  v8 = OUTLINED_FUNCTION_1_59();
  v12 = EnteredNumbersView.showsDeleteButton.getter(v8, v9, v10, v11);
  v13 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMd) + 36);
  *v13 = v7;
  v13[8] = v12;
  KeyPath = swift_getKeyPath();
  v15 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMd) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd) + 28);
  v17 = *MEMORY[0x1E697E6C0];
  type metadata accessor for DynamicTypeSize();
  OUTLINED_FUNCTION_7_0();
  result = (*(v18 + 104))(v15 + v16, v17);
  *v15 = KeyPath;
  return result;
}

uint64_t closure #1 in EnteredNumbersView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v77 = a5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v63 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMd) - 8;
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v63 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMd) - 8;
  MEMORY[0x1EEE9AC00](v73);
  v68 = &v63 - v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd) - 8;
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v63 - v15;
  v16 = type metadata accessor for RoundedRectangle();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  static ClarityUIMetrics.componentCornerRadius.getter();
  v27 = v26;
  v28 = *(v17 + 28);
  v29 = *MEMORY[0x1E697F468];
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(&v19[v28], v29, v30);
  *v19 = v27;
  *(v19 + 1) = v27;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ClarityUIShadowedContentVy7SwiftUI08ModifiedE0VyAFyAD6HStackVyAD9TupleViewVyAFyAFyAD4TextVAD30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AD6SpacerVtGGAD14_PaddingLayoutVGAD016_BackgroundStyleP0VyAD5ColorVGGAD16RoundedRectangleVGMd);
  v32 = v31[17];
  *&v25[v32] = static Color.white.getter();
  *&v25[v31[18]] = 1050253722;
  v33 = v31[19];
  *&v25[v33] = static Color.black.getter();
  *&v25[v31[20]] = 1050253722;
  *&v25[v31[21]] = 0x4000000000000000;
  *&v25[v31[22]] = 0x3FF0000000000000;
  *&v25[v31[23]] = 0xBFF0000000000000;
  outlined init with copy of RoundedRectangle(v19, v25);
  v25[v31[13]] = 0;
  v25[v31[14]] = 1;
  v25[v31[15]] = 0;
  v34 = &v25[v31[16]];
  *v34 = static VerticalAlignment.center.getter();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAM14TruncationModeOGG_AA6SpacerVtGGMd);
  v36 = v64;
  closure #1 in closure #1 in closure #1 in EnteredNumbersView.body.getter(a1, a2, a3, v64, &v34[*(v35 + 44)]);
  LOBYTE(v31) = static Edge.Set.all.getter();
  v37 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd) + 36)];
  *v37 = v31;
  *(v37 + 8) = xmmword_1BC4C2300;
  *(v37 + 24) = xmmword_1BC4C2300;
  v37[40] = 0;
  v38 = static Color.clarityUIButtonBackground.getter();
  LOBYTE(v33) = static Edge.Set.all.getter();
  v39 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAI14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleL0VyAA5ColorVGGMd) + 36)];
  *v39 = v38;
  v39[8] = v33;
  outlined destroy of RoundedRectangle(v19);
  *&v25[*(v21 + 44)] = 0x3FF0000000000000;
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = a2;
  v40[4] = a3;
  v40[5] = v36;
  v41 = a3;
  v42 = v36;

  v43 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v44 = v65;
  Button.init(action:label:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Image, _PaddingLayout>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGGMd);
  lazy protocol witness table accessor for type DeleteButtonStyle and conformance DeleteButtonStyle();
  v45 = v66;
  v46 = v70;
  View.buttonStyle<A>(_:)();
  (*(v72 + 8))(v44, v46);
  LOBYTE(v44) = static Edge.Set.leading.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  EdgeInsets.init(_all:)();
  v47 = v45 + *(v71 + 44);
  *v47 = v44;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  if (EnteredNumbersView.showsDeleteButton.getter(a1, v43, v41, v42))
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  v53 = v68;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v45, v68, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGMd);
  *(v53 + *(v73 + 44)) = v52;
  EnteredNumbersView.showsDeleteButton.getter(a1, v43, v41, v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v69;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v53, v69, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGMd);
  v55 = v74;
  v56 = (v54 + *(v75 + 44));
  v57 = v79;
  *v56 = v78;
  v56[1] = v57;
  v56[2] = v80;
  outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(v54, v55, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyAA5ImageVAA14_PaddingLayoutVGG_15ConversationKit06DeletehG033_E44343144E29C1A4C0133F4F8C633823LLVQo_AMGAA14_OpacityEffectVGAA06_FrameK0VGMd);
  v58 = v67;
  outlined init with copy of Participant?(v25, v67, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd);
  v59 = v76;
  sub_1BBCE078C(v55, v76);
  v60 = v77;
  outlined init with copy of Participant?(v58, v77, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0K0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AD012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtMd);
  sub_1BBCE078C(v59, v60 + *(v61 + 48));
  sub_1BBCE07F4(v55);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd);
  sub_1BBCE07F4(v59);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v58, &_s7SwiftUI15ModifiedContentVy15ConversationKit017ClarityUIShadowedD0VyACyACyAA6HStackVyAA9TupleViewVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGGMd);
}

uint64_t closure #1 in closure #1 in closure #1 in EnteredNumbersView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v55 - v14;
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](&v62);
  v17 = v62;
  v16 = v63;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v64 = a1;
    v65 = a2;
    v66 = a3;
    v67 = a4;
    MEMORY[0x1BFB20050](&v62, v15);
    countAndFlagsBits = v62;
    object = v63;
  }

  else
  {
    v21 = [objc_opt_self() conversationKit];
    v68._object = 0xE000000000000000;
    v22.value._countAndFlagsBits = 0x61737265766E6F43;
    v22.value._object = 0xEF74694B6E6F6974;
    v23._object = 0x80000001BC4F8260;
    v23._countAndFlagsBits = 0xD000000000000029;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v68._countAndFlagsBits = 0;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v68);
    countAndFlagsBits = v25._countAndFlagsBits;
    object = v25._object;
  }

  v64 = countAndFlagsBits;
  v65 = object;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = Text.init<A>(_:)();
  v28 = v27;
  v30 = v29;
  v57 = v31;
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  MEMORY[0x1BFB20050](&v62, v15);
  v33 = v62;
  v32 = v63;

  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    static Font.headline.getter();
  }

  else
  {
    static Font.body.getter();
  }

  v35 = Text.font(_:)();
  v56 = v36;
  v38 = v37;
  v40 = v39;

  outlined consume of Text.Storage(v26, v28, v30 & 1);

  KeyPath = swift_getKeyPath();
  v42 = &v12[*(v58 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV14TruncationModeOGMd) + 28);
  v44 = *MEMORY[0x1E6980FA0];
  v45 = type metadata accessor for Text.TruncationMode();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = swift_getKeyPath();
  v46 = v56;
  *v12 = v35;
  *(v12 + 1) = v46;
  v12[16] = v38 & 1;
  *(v12 + 3) = v40;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 1;
  v12[48] = 0;
  v47 = v12;
  v48 = v59;
  outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>(v47, v59);
  static ClarityUIMetrics.standardSpacing.getter();
  v50 = v49;
  v51 = v60;
  outlined init with copy of Participant?(v48, v60, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
  v52 = v61;
  outlined init with copy of Participant?(v51, v61, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
  v53 = v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGG_AA6SpacerVtMd) + 48);
  *v53 = v50;
  *(v53 + 8) = 0;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v51, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
}

uint64_t closure #2 in closure #1 in EnteredNumbersView.body.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](&v13);
  v10 = v13;
  v9 = v14;

  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v13, v8);
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v13, v8);

    String.index(before:)();

    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    MEMORY[0x1BFB20050](&v17, v8);
    String.remove(at:)();

    v13 = a1;
    v14 = a2;
    v15 = a3;
    v16 = a4;
    Binding.wrappedValue.setter();
  }
}

uint64_t closure #3 in closure #1 in EnteredNumbersView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.standardSpacing.getter();
  result = EdgeInsets.init(_all:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  return result;
}

BOOL EnteredNumbersView.showsDeleteButton.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSGMd);
  MEMORY[0x1BFB20050](v9, v4);
  v6 = v9[0];
  v5 = v9[1];

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t getEnumTagSinglePayload for EnteredNumbersView(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for EnteredNumbersView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGANyAA15DynamicTypeSizeOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DynamicTypeSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA15DynamicTypeSizeOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>>, _EnvironmentKeyWritingModifier<DynamicTypeSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACy15ConversationKit017ClarityUIShadowedD0VyACyACyAEyAGyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_ACyACyACyAA0G0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyACyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGAA010_AnimationP0VySbGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVy15ConversationKit017ClarityUIShadowedG0VyAGyAGyACyAEyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGANyAL14TruncationModeOGG_AA6SpacerVtGGAA14_PaddingLayoutVGAA016_BackgroundStyleP0VyAA5ColorVGGAA16RoundedRectangleVGAA06_TraitoP0VyAA0u13PriorityTraitN0VGG_AGyAGyAGyAA0E0PAAE06buttonW0yQrqd__AA06ButtonW0Rd__lFQOyAA6ButtonVyAGyAA5ImageVA_GG_AH012DeleteButtonW033_E44343144E29C1A4C0133F4F8C633823LLVQo_A_GAA14_OpacityEffectVGAA06_FrameU0VGtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ClarityUIShadowedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>, Spacer)>>, _PaddingLayout>, _BackgroundStyleModifier<Color>>, RoundedRectangle>, _TraitWritingModifier<LayoutPriorityTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>, _OpacityEffect>, _FrameLayout>)>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t DeleteButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11[1] = static Color.red.getter();
  static Color.white.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E697C450], v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

uint64_t outlined destroy of RoundedRectangle(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeleteButtonStyle and conformance DeleteButtonStyle()
{
  result = lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle;
  if (!lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeleteButtonStyle and conformance DeleteButtonStyle);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_1(a1, a2, a3);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Text.TruncationMode>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAE14TruncationModeOGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ScreeningCaptions.captionHistory.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Participant.CaptionInfo?(*v1);
  return v2;
}

uint64_t ScreeningCaptions.captionHistory.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  OUTLINED_FUNCTION_3_5();
  v8 = *v7;
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return outlined consume of Participant.CaptionInfo?(v8);
}

uint64_t outlined consume of Participant.CaptionInfo?(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ScreeningCaptions.isGibberish.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ScreeningCaptions.isGibberish.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  result = OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ScreeningCaptions.__allocating_init(logger:onUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ScreeningCaptions.init(logger:onUpdateCaptions:)(a1, a2, a3);
  return v6;
}

uint64_t ScreeningCaptions.init(logger:onUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  *(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_badCaptionCountThreshold;
  type metadata accessor for Defaults();
  swift_allocObject();
  v10 = *Defaults.init()();
  v11 = (*(v10 + 792))();

  *(v3 + v9) = v11;
  v12 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v13 + 32))(v4 + v12, a1);
  v14 = (v4 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
  *v14 = a2;
  v14[1] = a3;
  return v4;
}

uint64_t ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v65 - v5;
  v81 = type metadata accessor for Date();
  v7 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v65 - v10;
  v76 = type metadata accessor for Participant.Caption(0);
  v11 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v75 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = v65 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v82 = v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - v20;
  v22 = *(a3 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v66 = v6;
  if (!v22)
  {
LABEL_19:
    v83 = v23;

    specialized MutableCollection<>.sort(by:)(&v83);
    v52 = v67;

    v53 = *(v83 + 16);
    if (v53)
    {
      v54 = 0;
      v81 = *(v13 + 32);
      v55 = *(v65[1] + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_badCaptionCountThreshold);
      v56 = *(v75 + 80);
      v79 = v83;
      v80 = ((v56 + 32) & ~v56);
      v57 = &v80[v83];
      v58 = *(v75 + 72);
      v31 = MEMORY[0x1E69E7CC0];
      v59 = v82;
      do
      {
        outlined init with copy of Participant.Caption(v57, v59, type metadata accessor for TranscriptionViewModel.Caption);
        if (*(v59 + v81) == 1)
        {
          v40 = __OFADD__(v54++, 1);
          if (v40)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v54 = 0;
        }

        outlined init with take of TranscriptionViewModel.Caption(v82, v52);
        *(v52 + *(v13 + 32)) = v54 >= v55;
        if (v55 >= v54)
        {
          outlined init with take of TranscriptionViewModel.Caption(v52, v6);
          v60 = 0;
        }

        else
        {
          outlined destroy of Participant.Caption(v52, type metadata accessor for TranscriptionViewModel.Caption);
          v60 = 1;
        }

        __swift_storeEnumTagSinglePayload(v6, v60, 1, v13);
        if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
        {
          outlined destroy of TranscriptionViewModel.Caption?(v6);
        }

        else
        {
          outlined init with take of TranscriptionViewModel.Caption(v6, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v31 = v62;
          }

          v61 = *(v31 + 16);
          if (v61 >= *(v31 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v31 = v63;
          }

          *(v31 + 16) = v61 + 1;
          outlined init with take of TranscriptionViewModel.Caption(v74, &v80[v31 + v61 * v58]);
          v6 = v66;
          v52 = v67;
        }

        v57 += v58;
        --v53;
      }

      while (v53);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v31;
  }

  v83 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v24 = 0;
  v23 = v83;
  v72 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v68 = (v7 + 32);
  v69 = v22;
  v70 = *(v11 + 72);
  v71 = (v7 + 16);
  while (1)
  {
    v25 = v73;
    outlined init with copy of Participant.Caption(v72 + v70 * v24, v73, type metadata accessor for Participant.Caption);
    v26 = *v25;
    v27 = v76;
    v28 = *v71;
    v29 = v81;
    (*v71)(v79, &v25[*(v76 + 20)], v81);
    v30 = v29;
    v31 = v25;
    v28(v80, &v25[v27[6]], v30);
    v32 = &v25[v27[7]];
    v33 = *v32;
    v34 = v32[1];
    LODWORD(v28) = *(v31 + v27[8]);

    v78 = v28;
    v77 = v33;
    if (v28 == 1)
    {
      break;
    }

    v42 = v26;
    v43 = v23;
    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
LABEL_15:
    outlined destroy of Participant.Caption(v31, type metadata accessor for Participant.Caption);
    *v21 = v42;
    v46 = *(v13 + 20);
    v47 = v13;
    v48 = *v68;
    v49 = v81;
    (*v68)(&v21[v46], v79, v81);
    v48(&v21[v47[6]], v80, v49);
    v13 = v47;
    v50 = &v21[v47[7]];
    *v50 = v77;
    *(v50 + 1) = v34;
    v21[v47[8]] = v44;
    *&v21[v47[9]] = v45;
    v21[v47[10]] = v78;
    v23 = v43;
    v83 = v43;
    v51 = *(v43 + 16);
    if (v51 >= *(v43 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v23 = v83;
    }

    ++v24;
    *(v23 + 16) = v51 + 1;
    outlined init with take of TranscriptionViewModel.Caption(v21, v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v51);
    if (v24 == v69)
    {
      v6 = v66;
      goto LABEL_19;
    }
  }

  if (String.count.getter() < 1)
  {
    v42 = v26;
    v44 = 0;
LABEL_14:
    v43 = v23;
    v45 = *(v31 + *(v76 + 36));

    goto LABEL_15;
  }

  v35 = *(v31 + *(v76 + 36));
  v36 = *(v35 + 16);
  if (!v36)
  {
    v41 = 0.0;
LABEL_13:
    v42 = v26;
    v44 = (v41 / String.count.getter()) > 0.75;
    goto LABEL_14;
  }

  v37 = 0;
  v38 = (v35 + 40);
  while (1)
  {
    v39 = *v38;
    v38 += 2;
    v40 = __OFADD__(v37, v39);
    v37 += v39;
    if (v40)
    {
      break;
    }

    if (!--v36)
    {
      v41 = v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t ScreeningCaptions.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  outlined consume of Participant.CaptionInfo?(*(v0 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory));
  return v0;
}

uint64_t ScreeningCaptions.__deallocating_deinit()
{
  ScreeningCaptions.deinit();

  return swift_deallocClassInstance();
}

uint64_t ScreeningCaptions.participantCaptionsProvider(_:didUpdateCaptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = type metadata accessor for Participant.Caption(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v49 = v15;
    v50 = a3;
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52[0] = v47;
    v48 = v16;
    *v16 = 136315138;
    v17 = *(a5 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v45[0] = v14;
      v45[1] = a4;
      v46 = v5;
      v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v51;
      v19 = *(v11 + 80);
      v45[2] = a5;
      v20 = a5 + ((v19 + 32) & ~v19);
      v21 = *(v11 + 72);
      do
      {
        outlined init with copy of Participant.Caption(v20, v13, type metadata accessor for Participant.Caption);
        v22 = Participant.Caption.debugDescription.getter();
        v24 = v23;
        outlined destroy of Participant.Caption(v13, type metadata accessor for Participant.Caption);
        v51 = v18;
        v25 = *(v18 + 16);
        if (v25 >= *(v18 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v18 = v51;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v24;
        v20 += v21;
        --v17;
      }

      while (v17);
      v6 = v46;
      v14 = v45[0];
    }

    v51 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v52);

    v31 = v48;
    *(v48 + 1) = v30;
    _os_log_impl(&dword_1BBC58000, v14, v49, "Captions updated: %s", v31, 0xCu);
    v32 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1BFB23DF0](v32, -1, -1);
    MEMORY[0x1BFB23DF0](v31, -1, -1);
  }

  else
  {
  }

  v33 = (v6 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
  OUTLINED_FUNCTION_3_5();
  v34 = OUTLINED_FUNCTION_0_59();
  outlined copy of Participant.CaptionInfo?(v34);
  OUTLINED_FUNCTION_0_59();
  Participant.CaptionInfo.with(history:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = OUTLINED_FUNCTION_0_59();
  outlined consume of Participant.CaptionInfo?(v41);
  *v33 = v36;
  v33[1] = v38;
  v33[2] = v40;
  swift_unknownObjectRetain();

  v42 = OUTLINED_FUNCTION_0_59();
  outlined consume of Participant.CaptionInfo?(v42);
  v43 = *(v6 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
  ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(v36, v38, v40);
  v43();

  swift_unknownObjectRelease();
}

void ScreeningCaptions.participantCaptionsProvider(_:didEnableCaptions:)(uint64_t a1, uint64_t a2, char a3)
{
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a3 & 1;
    _os_log_impl(&dword_1BBC58000, oslog, v4, "Captions enabled: %{BOOL,public}d", v5, 8u);
    MEMORY[0x1BFB23DF0](v5, -1, -1);
  }
}

uint64_t ScreeningCaptions.participantCaptionsProvider(_:didDetectGibberish:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_isGibberish;
  result = OUTLINED_FUNCTION_3_5();
  if (a3)
  {
    if ((*(v3 + v5) & 1) == 0)
    {
      *(v3 + v5) = 1;
      return (*(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions))(0);
    }
  }

  else if (*(v3 + v5))
  {
    *(v3 + v5) = 0;
    v7 = (v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_captionHistory);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v11 = v7 + 1;
      v9 = v7[1];
      v10 = v11[1];
      v12 = *(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions);
      swift_unknownObjectRetain();

      ScreeningCaptions.gatherAndSortCaptions(captionInfo:)(v8, v9, v10);
      v12();

      swift_unknownObjectRelease();
    }

    else
    {
      return (*(v3 + OBJC_IVAR____TtC15ConversationKit17ScreeningCaptions_onUpdateCaptions))(MEMORY[0x1E69E7CC0]);
    }
  }

  return result;
}

uint64_t type metadata accessor for ScreeningCaptions()
{
  result = type metadata singleton initialization cache for ScreeningCaptions;
  if (!type metadata singleton initialization cache for ScreeningCaptions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ScreeningCaptions()
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

uint64_t getEnumTagSinglePayload for ScreeningCaptions.CaptionData(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScreeningCaptions.CaptionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ScreeningCaptions.CaptionData(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t outlined init with take of TranscriptionViewModel.Caption(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptionViewModel.Caption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Participant.Caption(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of TranscriptionViewModel.Caption?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22TranscriptionViewModelC7CaptionVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Participant.Caption(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v101 = a1;
  v9 = type metadata accessor for TranscriptionViewModel.Caption(0);
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v112 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v92 = v20 + 16;
      v93 = *(v20 + 2);
      for (i = v20; v93 >= 2; v20 = i)
      {
        if (!*v112)
        {
          goto LABEL_139;
        }

        v94 = &v20[16 * v93];
        v95 = *v94;
        v20 = &v92[2 * v93];
        v96 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v94, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v96, v5);
        if (v6)
        {
          break;
        }

        if (v96 < v95)
        {
          goto LABEL_127;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_128;
        }

        *v94 = v95;
        *(v94 + 1) = v96;
        v97 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_129;
        }

        v93 = *v92 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v97, v20);
        *v92 = v93;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_103;
  }

  v100 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v116 = v9;
  v106 = &v98 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v102 = v21;
    if (v19 < v18)
    {
      v22 = *v112;
      v5 = *(v110 + 72);
      v23 = v21;
      v24 = *v112 + v5 * v19;
      v109 = v18;
      outlined init with copy of Participant.Caption(v24, v17, type metadata accessor for TranscriptionViewModel.Caption);
      v25 = v22 + v5 * v23;
      v26 = v115;
      outlined init with copy of Participant.Caption(v25, v115, type metadata accessor for TranscriptionViewModel.Caption);
      LODWORD(v108) = static Date.< infix(_:_:)();
      outlined destroy of Participant.Caption(v26, type metadata accessor for TranscriptionViewModel.Caption);
      outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
      v27 = v109;
      v28 = v102 + 2;
      v111 = v5;
      v20 = (v22 + v5 * (v102 + 2));
      while (1)
      {
        v29 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        outlined init with copy of Participant.Caption(v20, v17, type metadata accessor for TranscriptionViewModel.Caption);
        v5 = v115;
        outlined init with copy of Participant.Caption(v24, v115, type metadata accessor for TranscriptionViewModel.Caption);
        v30 = static Date.< infix(_:_:)() & 1;
        outlined destroy of Participant.Caption(v5, type metadata accessor for TranscriptionViewModel.Caption);
        outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
        v20 += v111;
        v24 += v111;
        v28 = v29 + 1;
        v27 = v109;
        if ((v108 & 1) != v30)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v108)
      {
        v21 = v102;
        if (v19 < v102)
        {
          goto LABEL_133;
        }

        if (v102 >= v19)
        {
          v20 = i;
          goto LABEL_32;
        }

        v99 = v6;
        if (v27 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        v32 = v111 * (v31 - 1);
        v33 = v102;
        v34 = v111 * v31;
        v35 = v102 * v111;
        v36 = v19;
        v20 = i;
        do
        {
          if (v33 != --v36)
          {
            v5 = *v112;
            if (!*v112)
            {
              goto LABEL_140;
            }

            outlined init with take of TranscriptionViewModel.Caption(v5 + v35, v105);
            v37 = v35 < v32 || v5 + v35 >= v5 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of TranscriptionViewModel.Caption(v105, v5 + v32);
            v20 = i;
          }

          ++v33;
          v32 -= v111;
          v34 -= v111;
          v35 += v111;
        }

        while (v33 < v36);
        v6 = v99;
      }

      else
      {
        v20 = i;
      }

      v21 = v102;
    }

LABEL_32:
    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_132;
      }

      if (v19 - v21 < v100)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v90;
    }

    v48 = *(v20 + 2);
    v49 = v48 + 1;
    if (v48 >= *(v20 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v91;
    }

    *(v20 + 2) = v49;
    v50 = v20 + 32;
    v51 = &v20[16 * v48 + 32];
    *v51 = v102;
    *(v51 + 1) = v19;
    v111 = *v101;
    if (!v111)
    {
      goto LABEL_141;
    }

    v52 = v17;
    if (v48)
    {
      i = v20;
      while (1)
      {
        v53 = v49 - 1;
        v54 = &v50[16 * v49 - 16];
        v55 = &v20[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v56 = *(v20 + 4);
          v57 = *(v20 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_69:
          if (v59)
          {
            goto LABEL_118;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_121;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_126;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v49 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v49 < 2)
        {
          goto LABEL_120;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_84:
        if (v74)
        {
          goto LABEL_123;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_125;
        }

        if (v81 < v73)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v53 - 1 >= v49)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v112)
        {
          goto LABEL_138;
        }

        v85 = &v50[16 * v53 - 16];
        v86 = *v85;
        v87 = v50;
        v5 = v53;
        v20 = &v50[16 * v53];
        v88 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v85, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v88, v111);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v88 < v86)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v49 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v89 = v6 > 2;
        v6 = 0;
        v52 = v106;
        v50 = v87;
        if (!v89)
        {
          goto LABEL_98;
        }
      }

      v60 = &v50[16 * v49];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_116;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_117;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_119;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_122;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_130;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v18 = v112[1];
    v17 = v52;
    if (v19 >= v18)
    {
      goto LABEL_101;
    }
  }

  v39 = v21 + v100;
  if (__OFADD__(v21, v100))
  {
    goto LABEL_134;
  }

  if (v39 >= v38)
  {
    v39 = v112[1];
  }

  if (v39 < v21)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v19 == v39)
  {
    goto LABEL_48;
  }

  v99 = v6;
  v40 = *v112;
  v41 = *(v110 + 72);
  v5 = *v112 + v41 * (v19 - 1);
  v42 = -v41;
  v43 = v21 - v19;
  v103 = v41;
  v104 = v39;
  v44 = v40 + v19 * v41;
LABEL_41:
  v111 = v19;
  v107 = v44;
  v108 = v43;
  v109 = v5;
  while (1)
  {
    outlined init with copy of Participant.Caption(v44, v17, type metadata accessor for TranscriptionViewModel.Caption);
    v45 = v115;
    outlined init with copy of Participant.Caption(v5, v115, type metadata accessor for TranscriptionViewModel.Caption);
    v46 = static Date.< infix(_:_:)();
    outlined destroy of Participant.Caption(v45, type metadata accessor for TranscriptionViewModel.Caption);
    outlined destroy of Participant.Caption(v17, type metadata accessor for TranscriptionViewModel.Caption);
    if ((v46 & 1) == 0)
    {
LABEL_46:
      v19 = v111 + 1;
      v5 = v109 + v103;
      v43 = v108 - 1;
      v44 = v107 + v103;
      if (v111 + 1 == v104)
      {
        v19 = v104;
        v6 = v99;
        v20 = i;
        v21 = v102;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v47 = v114;
    outlined init with take of TranscriptionViewModel.Caption(v44, v114);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of TranscriptionViewModel.Caption(v47, v5);
    v5 += v42;
    v44 += v42;
    v37 = __CFADD__(v43++, 1);
    if (v37)
    {
      goto LABEL_46;
    }
  }

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
}

{
  v6 = v4;
  v101 = a1;
  v9 = type metadata accessor for Participant(0);
  v110 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v112 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v92 = v20 + 16;
      v93 = *(v20 + 2);
      for (i = v20; v93 >= 2; v20 = i)
      {
        if (!*v112)
        {
          goto LABEL_141;
        }

        v94 = &v20[16 * v93];
        v95 = *v94;
        v20 = &v92[2 * v93];
        v96 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v94, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v96, v5);
        if (v6)
        {
          break;
        }

        if (v96 < v95)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v94 = v95;
        *(v94 + 1) = v96;
        v97 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v97, v20);
        *v92 = v93;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
    goto LABEL_105;
  }

  v100 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v116 = v9;
  v106 = &v98 - v16;
  while (1)
  {
    v21 = v19++;
    i = v20;
    v102 = v21;
    if (v19 < v18)
    {
      v22 = *v112;
      v5 = *(v110 + 72);
      v23 = v21;
      v24 = *v112 + v5 * v19;
      v109 = v18;
      _s15ConversationKit11ParticipantVWOcTm_6(v24, v17, type metadata accessor for Participant);
      v25 = v22 + v5 * v23;
      v26 = v115;
      _s15ConversationKit11ParticipantVWOcTm_6(v25, v115, type metadata accessor for Participant);
      LODWORD(v108) = MEMORY[0x1BFB1A420](&v17[*(v9 + 20)], v26 + *(v9 + 20));
      _s15ConversationKit11ParticipantVWOhTm_16(v26, type metadata accessor for Participant);
      _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
      v27 = v109;
      v28 = v102 + 2;
      v111 = v5;
      v20 = (v22 + v5 * (v102 + 2));
      while (1)
      {
        v29 = v28;
        if (++v19 >= v27)
        {
          break;
        }

        _s15ConversationKit11ParticipantVWOcTm_6(v20, v17, type metadata accessor for Participant);
        v5 = v115;
        _s15ConversationKit11ParticipantVWOcTm_6(v24, v115, type metadata accessor for Participant);
        v30 = MEMORY[0x1BFB1A420](&v17[*(v116 + 20)], v5 + *(v116 + 20)) & 1;
        _s15ConversationKit11ParticipantVWOhTm_16(v5, type metadata accessor for Participant);
        _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
        v20 += v111;
        v24 += v111;
        v28 = v29 + 1;
        v27 = v109;
        if ((v108 & 1) != v30)
        {
          goto LABEL_9;
        }
      }

      v19 = v27;
LABEL_9:
      if (v108)
      {
        v21 = v102;
        if (v19 < v102)
        {
          goto LABEL_135;
        }

        if (v102 >= v19)
        {
          v20 = i;
          v9 = v116;
          goto LABEL_32;
        }

        v99 = v6;
        if (v27 >= v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = v27;
        }

        v32 = v111 * (v31 - 1);
        v33 = v102;
        v34 = v111 * v31;
        v35 = v102 * v111;
        v36 = v19;
        v20 = i;
        do
        {
          if (v33 != --v36)
          {
            v5 = *v112;
            if (!*v112)
            {
              goto LABEL_142;
            }

            outlined init with take of Participant(v5 + v35, v105);
            v37 = v35 < v32 || v5 + v35 >= v5 + v34;
            if (v37)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of Participant(v105, v5 + v32);
            v20 = i;
          }

          ++v33;
          v32 -= v111;
          v34 -= v111;
          v35 += v111;
        }

        while (v33 < v36);
        v6 = v99;
      }

      else
      {
        v20 = i;
      }

      v9 = v116;
      v21 = v102;
    }

LABEL_32:
    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_134;
      }

      if (v19 - v21 < v100)
      {
        break;
      }
    }

LABEL_50:
    if (v19 < v21)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v90;
    }

    v48 = *(v20 + 2);
    v49 = v48 + 1;
    if (v48 >= *(v20 + 3) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v20 = v91;
    }

    *(v20 + 2) = v49;
    v50 = v20 + 32;
    v51 = &v20[16 * v48 + 32];
    *v51 = v102;
    *(v51 + 1) = v19;
    v111 = *v101;
    if (!v111)
    {
      goto LABEL_143;
    }

    v52 = v17;
    if (v48)
    {
      i = v20;
      while (1)
      {
        v53 = v49 - 1;
        v54 = &v50[16 * v49 - 16];
        v55 = &v20[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v56 = *(v20 + 4);
          v57 = *(v20 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_71:
          if (v59)
          {
            goto LABEL_120;
          }

          v71 = *v55;
          v70 = *(v55 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_123;
          }

          v75 = *(v54 + 1);
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_128;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v49 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v49 < 2)
        {
          goto LABEL_122;
        }

        v78 = *v55;
        v77 = *(v55 + 1);
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_86:
        if (v74)
        {
          goto LABEL_125;
        }

        v80 = *v54;
        v79 = *(v54 + 1);
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_127;
        }

        if (v81 < v73)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v53 - 1 >= v49)
        {
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
          goto LABEL_137;
        }

        if (!*v112)
        {
          goto LABEL_140;
        }

        v85 = &v50[16 * v53 - 16];
        v86 = *v85;
        v87 = v50;
        v5 = v53;
        v20 = &v50[16 * v53];
        v88 = *(v20 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * *v85, *v112 + *(v110 + 72) * *v20, *v112 + *(v110 + 72) * v88, v111);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v88 < v86)
        {
          goto LABEL_115;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_116;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        if (v5 >= v6)
        {
          goto LABEL_117;
        }

        v49 = v6 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20 + 16, v6 - 1 - v5, v20);
        v20 = i;
        *(i + 2) = v6 - 1;
        v89 = v6 > 2;
        v6 = 0;
        v9 = v116;
        v52 = v106;
        v50 = v87;
        if (!v89)
        {
          goto LABEL_100;
        }
      }

      v60 = &v50[16 * v49];
      v61 = *(v60 - 8);
      v62 = *(v60 - 7);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_118;
      }

      v65 = *(v60 - 6);
      v64 = *(v60 - 5);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_119;
      }

      v67 = *(v55 + 1);
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_121;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_124;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = *(v54 + 1);
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_132;
        }

        if (v58 < v84)
        {
          v53 = v49 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v18 = v112[1];
    v17 = v52;
    if (v19 >= v18)
    {
      goto LABEL_103;
    }
  }

  v39 = v21 + v100;
  if (__OFADD__(v21, v100))
  {
    goto LABEL_136;
  }

  if (v39 >= v38)
  {
    v39 = v112[1];
  }

  if (v39 < v21)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v19 == v39)
  {
    goto LABEL_50;
  }

  v99 = v6;
  v40 = *v112;
  v41 = *(v110 + 72);
  v5 = *v112 + v41 * (v19 - 1);
  v42 = -v41;
  v43 = v21 - v19;
  v103 = v41;
  v104 = v39;
  v44 = v40 + v19 * v41;
LABEL_41:
  v111 = v19;
  v107 = v44;
  v108 = v43;
  v109 = v5;
  while (1)
  {
    _s15ConversationKit11ParticipantVWOcTm_6(v44, v17, type metadata accessor for Participant);
    v45 = v115;
    _s15ConversationKit11ParticipantVWOcTm_6(v5, v115, type metadata accessor for Participant);
    v46 = MEMORY[0x1BFB1A420](&v17[*(v9 + 20)], v45 + *(v9 + 20));
    _s15ConversationKit11ParticipantVWOhTm_16(v45, type metadata accessor for Participant);
    _s15ConversationKit11ParticipantVWOhTm_16(v17, type metadata accessor for Participant);
    if ((v46 & 1) == 0)
    {
      v9 = v116;
LABEL_48:
      v19 = v111 + 1;
      v5 = v109 + v103;
      v43 = v108 - 1;
      v44 = v107 + v103;
      if (v111 + 1 == v104)
      {
        v19 = v104;
        v6 = v99;
        v20 = i;
        v21 = v102;
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    if (!v40)
    {
      break;
    }

    v47 = v114;
    outlined init with take of Participant(v44, v114);
    v9 = v116;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Participant(v47, v5);
    v5 += v42;
    v44 += v42;
    v37 = __CFADD__(v43++, 1);
    if (v37)
    {
      goto LABEL_48;
    }
  }

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
}

uint64_t InCallMoreMenuControlsService.activeCall.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 672))();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t InCallMoreMenuControlsService.conversation.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 704))();
}

uint64_t InCallMoreMenuControlsService.foregroundApp.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 2144))();
}

uint64_t key path getter for InCallMoreMenuControlsService.podcastService : InCallMoreMenuControlsService@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t key path setter for InCallMoreMenuControlsService.podcastService : InCallMoreMenuControlsService(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t InCallMoreMenuControlsService.podcastService.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  (*(v0 + 272))();

  swift_beginAccess();
}

uint64_t InCallMoreMenuControlsService.podcastService.setter(uint64_t a1)
{
  swift_getKeyPath();
  v5 = v1;
  v6 = a1;
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 280))();
}

void (*InCallMoreMenuControlsService.podcastService.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v3[5] = OBJC_IVAR____TtC15ConversationKit29InCallMoreMenuControlsService___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v3[6] = lazy protocol witness table accessor for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3[7] = InCallMoreMenuControlsService._podcastService.modify();
  return InCallMoreMenuControlsService.podcastService.modify;
}

void InCallMoreMenuControlsService.podcastService.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t lazy protocol witness table accessor for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService()
{
  result = lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService;
  if (!lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService)
  {
    type metadata accessor for InCallMoreMenuControlsService();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallMoreMenuControlsService and conformance InCallMoreMenuControlsService);
  }

  return result;
}

uint64_t type metadata accessor for InCallMoreMenuControlsService()
{
  result = type metadata singleton initialization cache for InCallMoreMenuControlsService;
  if (!type metadata singleton initialization cache for InCallMoreMenuControlsService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InCallMoreMenuControlsService.shareMenuButtonStatePublisher.getter()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  return (*(v0 + 1856))();
}

Swift::Void __swiftcall InCallMoreMenuControlsService.stopScreenSharing()()
{
  ConversationControlsManager.stopScreenShare()();
  OUTLINED_FUNCTION_5_18();
  (*(v0 + 2632))();
}

Swift::Void __swiftcall InCallMoreMenuControlsService.startPodcastRecording()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 104))();
  if (v2)
  {
    v3 = v2;
    v4 = swift_beginAccess();
    if (!v0[2])
    {
      v5 = [objc_opt_self() sharedInstance];
      type metadata accessor for PodcastRecordingService();
      swift_allocObject();
      v6 = PodcastRecordingService.init(callCenter:)();
      v4 = (*(*v0 + 160))(v6);
    }

    if ((*(*v0 + 152))(v4))
    {
      dispatch thunk of PodcastRecordingService.startRecording(call:completion:)();
    }
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.stopPodcastRecording()()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 104))();
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_0_1();
    if ((*(v2 + 152))())
    {
      dispatch thunk of PodcastRecordingService.stopRecording(call:completion:)();
    }

    else
    {
    }
  }
}

void closure #1 in InCallMoreMenuControlsService.startPodcastRecording()(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BBC58000, v8, v9, a2, v10, 2u);
      MEMORY[0x1BFB23DF0](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.toggleLiveCaptions()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_5_34(v1);
    v2 = OUTLINED_FUNCTION_4_38();
    v4 = v3(v2);
    v4();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of CallControlsService?(v5, &_s15ConversationKit19CallControlsService_pSgMd);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.presentContactCard()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_5_34(v1);
    v2 = OUTLINED_FUNCTION_4_38();
    v4 = v3(v2);
    v4();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of CallControlsService?(v5, &_s15ConversationKit19CallControlsService_pSgMd);
  }
}

Swift::Void __swiftcall InCallMoreMenuControlsService.presentAddParticipantSheet()()
{
  OUTLINED_FUNCTION_2_58();
  OUTLINED_FUNCTION_5_18();
  v1 = (*(v0 + 1160))(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_5_34(v1);
    v2 = OUTLINED_FUNCTION_4_38();
    v4 = v3(v2);
    v4();

    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of CallControlsService?(v5, &_s15ConversationKit19CallControlsService_pSgMd);
  }
}

void InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v16 = (*(v6 + 104))();
  if (v16)
  {
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v7 = [v16 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = CallCenterFacade.call(with:)();

    if (v8)
    {

      static CallCenterFacade.shared.getter();
      v9 = type metadata accessor for FTMenuItemStateProvider();
      swift_allocObject();
      v10 = FTMenuItemStateProvider.init(call:callCenter:)();
      v17[3] = v9;
      v17[4] = MEMORY[0x1E6995F68];
      v17[0] = v10;
      v11 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41();
      v12 = a3;
      v13 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41();
      v14 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41();
      v15 = OUTLINED_FUNCTION_3_54();
      OUTLINED_FUNCTION_7_41();

      ConversationControlsManager.presentMoreMenu(isBannerView:source:arrowDirection:provider:alongsideTransition:presentContactCard:presentAddParticipantSheet:startCallRecording:stopCallRecording:)(0, a1, 15, v17, a2, v12, partial apply for closure #1 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v11, partial apply for closure #2 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v13, partial apply for closure #3 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v14, partial apply for closure #4 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:), v15);

      outlined destroy of CallControlsService?(v17, &_s20CommunicationsUICore24FTMenuItemStateProviding_pSgMd);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 240))(result);
  }

  return result;
}

uint64_t closure #2 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 248))(result);
  }

  return result;
}

uint64_t closure #3 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 200))(result);
  }

  return result;
}

uint64_t closure #4 in InCallMoreMenuControlsService.presentMoreMenu(_:alongsideTransition:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 208))(result);
  }

  return result;
}

uint64_t outlined destroy of CallControlsService?(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t InCallMoreMenuControlsService.__allocating_init(controlsManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  InCallMoreMenuControlsService.init(controlsManager:)(a1);
  return v2;
}

uint64_t InCallMoreMenuControlsService.init(controlsManager:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  ObservationRegistrar.init()();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t InCallMoreMenuControlsService.deinit()
{

  v1 = OBJC_IVAR____TtC15ConversationKit29InCallMoreMenuControlsService___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t InCallMoreMenuControlsService.__deallocating_deinit()
{
  InCallMoreMenuControlsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InCallMoreMenuControlsService()
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

uint64_t GridViewConstraintManager.__allocating_init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v15 = swift_allocObject();
  GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(a1, a2, a3, a4, a5, a6, v16, a8);
  return v15;
}

void *GridViewConstraintManager.init(containingGuide:containingView:gridView:rosterCellLayoutGuide:changeLayoutButton:topCornerButtonsStackView:captionsState:bannerLayoutGuide:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = v8;
  type metadata accessor for GridViewConstraintManager();
  v121 = a1;
  v123 = static GridViewConstraintManager.generateCornerButtonConstraints(containingGuide:containingView:gridView:changeLayoutButton:topCornerButtonsStackView:)(a1, a2, a3, a5, a6);
  v117 = v15;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = &off_1E7FE9000;
  v118 = a5;
  v119 = a6;
  if (v18)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_59();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = &off_1E7FE9000;
  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
LABEL_7:
    if (a6)
    {
      v22 = a6;
      v23 = OUTLINED_FUNCTION_6_37();
      v20 = [&off_1E7FE9000 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v124);
      v24 = [v23 constraintEqualToAnchor:v20 constant:v126];
    }

    else
    {
      if (!a5)
      {
        v20 = [a3 topAnchor];
        v19 = [v121 topAnchor];
        v21 = [v20 constraintEqualToAnchor_];
        goto LABEL_13;
      }

      v25 = a5;
      v23 = OUTLINED_FUNCTION_6_37();
      v20 = [&off_1E7FE9000 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v124);
      v24 = [v23 constraintEqualToAnchor:v20 constant:v125];
    }

    v26 = v24;

    goto LABEL_14;
  }

  v20 = [a3 topAnchor];
  v19 = [a2 topAnchor];
  Layout.MultiwayFaceTime.init()(v124);
  v21 = [v20 constraintEqualToAnchor:v19 constant:v127];
LABEL_13:
  v26 = v21;
LABEL_14:

  v9[7] = v26;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v27 = [v16 currentDevice];
    v28 = [v27 userInterfaceIdiom];

    if (v28 || (OUTLINED_FUNCTION_2_59(), static AmbientState.isPresented != 1) || (Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v29 = [a3 topAnchor];
      v30 = [a8 bottomAnchor];
      v31 = [v29 constraintEqualToAnchor:v30 constant:30.0];

      v32 = v9[7];
      v9[7] = v31;
    }
  }

  v33 = [v16 currentDevice];
  v34 = [v33 userInterfaceIdiom];

  if (!v34 && (OUTLINED_FUNCTION_2_59(), static AmbientState.isPresented == 1) && (Features.isICUIRedesignEnabled.getter() & 1) != 0)
  {
    v35 = [a3 trailingAnchor];
    v36 = [v121 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v128);
    v37 = [v35 constraintEqualToAnchor:v36 constant:-v130];

    v9[8] = v37;
    v38 = a4;
  }

  else
  {
    v39 = Features.isICUIRedesignEnabled.getter();
    v40 = [a3 trailingAnchor];
    v38 = a4;
    if (v39)
    {
      v41 = [a2 trailingAnchor];
      Layout.MultiwayFaceTime.init()(v128);
      v43 = OUTLINED_FUNCTION_5_35(v130);
    }

    else
    {
      v41 = [a4 leadingAnchor];
      Layout.MultiwayFaceTime.init()(v128);
      v43 = OUTLINED_FUNCTION_5_35(v129);
    }

    v44 = [v40 v42];

    v9[8] = v44;
  }

  v45 = Features.isICUIRedesignEnabled.getter();
  v46 = [v38 topAnchor];
  v47 = [a3 bottomAnchor];
  v48 = 16.0;
  if ((v45 & 1) == 0)
  {
    Layout.MultiwayFaceTime.init()(v131);
    v48 = v132;
  }

  v49 = [v46 constraintEqualToAnchor:v47 constant:v48];

  v9[9] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BC4BC370;
  v51 = v9[7];
  v52 = v9[8];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = v51;
  v54 = v52;
  v55 = [a3 leadingAnchor];
  v56 = [a2 safeAreaLayoutGuide];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v50 + 48) = v58;
  v139[0] = v50;

  specialized Array.append<A>(contentsOf:)(v59);
  v9[4] = v139[0];
  v60 = OUTLINED_FUNCTION_3_2();
  *(v60 + 16) = xmmword_1BC4BAC30;
  v61 = [a3 leadingAnchor];
  v62 = [a2 leadingAnchor];
  v63 = Features.isICUIRedesignEnabled.getter();
  v64 = 0.0;
  if (v63)
  {
    Layout.MultiwayFaceTime.init()(v133);
    v64 = v134;
  }

  v65 = [v61 constraintEqualToAnchor:v62 constant:v64];

  *(v60 + 32) = v65;
  v139[0] = v60;

  specialized Array.append<A>(contentsOf:)(v66);
  v9[2] = v139[0];
  v67 = [a3 bottomAnchor];
  v68 = [a2 bottomAnchor];
  Layout.MultiwayFaceTime.init()(v135);
  v69 = OUTLINED_FUNCTION_5_35(v136);
  v71 = [v67 v70];

  v9[10] = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1BC4BA7F0;
  v73 = [a3 topAnchor];
  v74 = [a2 topAnchor];
  v75 = [v73 constraintEqualToAnchor_];

  *(v72 + 32) = v75;
  v76 = [a3 leadingAnchor];
  v77 = OUTLINED_FUNCTION_1_60([a2 leadingAnchor]);

  *(v72 + 40) = v77;
  v78 = [a3 trailingAnchor];
  v79 = OUTLINED_FUNCTION_1_60([a2 trailingAnchor]);

  *(v72 + 48) = v79;
  v80 = [a3 &off_1E7FE9D20 + 5];
  v81 = OUTLINED_FUNCTION_1_60([a2 &off_1E7FE9D20 + 5]);

  *(v72 + 56) = v81;
  v139[0] = v72;

  specialized Array.append<A>(contentsOf:)(v82);
  v9[5] = v139[0];
  if (static Platform.current.getter() == 3)
  {
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1BC4BC370;
    v84 = [a3 topAnchor];
    v85 = OUTLINED_FUNCTION_1_60([a2 topAnchor]);

    *(v83 + 32) = v85;
    v86 = [a3 leadingAnchor];
    v87 = OUTLINED_FUNCTION_1_60([a2 leadingAnchor]);

    *(v83 + 40) = v87;
    v88 = [a3 bottomAnchor];
    v89 = OUTLINED_FUNCTION_1_60([a2 bottomAnchor]);

    *(v83 + 48) = v89;
    v139[0] = v83;
    specialized Array.append<A>(contentsOf:)(v117);
    v90 = v139[0];
    v91 = &selRef_isRecordingAllowed;
  }

  else
  {
    v92 = OUTLINED_FUNCTION_3_6();
    *(v92 + 16) = xmmword_1BC4BA930;
    v93 = [a3 topAnchor];
    v94 = OUTLINED_FUNCTION_1_60([v121 topAnchor]);

    *(v92 + 32) = v94;
    v95 = [a4 topAnchor];
    v96 = [a3 bottomAnchor];
    Layout.MultiwayFaceTime.init()(v137);
    v97 = [v95 constraintEqualToAnchor:v96 constant:v138];

    *(v92 + 40) = v97;
    v139[0] = v92;
    specialized Array.append<A>(contentsOf:)(v117);
    v90 = v139[0];
    v91 = &selRef_isRecordingAllowed;
  }

  v9[6] = v90;
  if (static Platform.current.getter() == 3)
  {
    v98 = OUTLINED_FUNCTION_3_6();
    *(v98 + 16) = xmmword_1BC4BA930;
    v99 = [a3 leadingAnchor];
    v100 = [v121 leadingAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    v102 = v9[9];
    *(v98 + 32) = v101;
    *(v98 + 40) = v102;
    v139[0] = v98;
    v103 = v102;
    specialized Array.append<A>(contentsOf:)(v123);
  }

  else
  {
    if (static Platform.current.getter() != 2)
    {
      v112 = OUTLINED_FUNCTION_3_2();
      *(v112 + 16) = xmmword_1BC4BAC30;
      v113 = [a4 topAnchor];
      v114 = [a3 bottomAnchor];
      Layout.MultiwayFaceTime.init()(v139);
      v115 = [v113 v91[96]];

      *(v112 + 32) = v115;
      specialized Array.append<A>(contentsOf:)(v123);

      v111 = v112;
      goto LABEL_45;
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v104 = &selRef_leadingAnchor;
    }

    else
    {
      v104 = &selRef_trailingAnchor;
    }

    v105 = [a3 *v104];
    v106 = [v121 *v104];
    v107 = [v105 constraintEqualToAnchor_];

    v108 = OUTLINED_FUNCTION_3_6();
    *(v108 + 16) = xmmword_1BC4BA930;
    v109 = v9[9];
    *(v108 + 32) = v107;
    *(v108 + 40) = v109;
    v139[0] = v108;
    v110 = v109;
    specialized Array.append<A>(contentsOf:)(v123);
  }

  v111 = v139[0];
LABEL_45:
  v9[3] = v111;
  return v9;
}

uint64_t static GridViewConstraintManager.generateCornerButtonConstraints(containingGuide:containingView:gridView:changeLayoutButton:topCornerButtonsStackView:)(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = MEMORY[0x1E69E7CC0];
  if (a5)
  {
    v7 = a5;
    v37 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = OUTLINED_FUNCTION_3_2();
    *(v8 + 16) = xmmword_1BC4BAC30;
    v9 = v7;
    v10 = [v9 topAnchor];
    v38 = a2;
    v11 = [a2 topAnchor];
    Layout.MultiwayFaceTime.init()(v40);
    v12 = [v10 constraintEqualToAnchor:v11 constant:v41];
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v37 = a3;
    v38 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = OUTLINED_FUNCTION_3_2();
    *(v8 + 16) = xmmword_1BC4BAC30;
    v9 = a4;
    v10 = [v9 topAnchor];
    v11 = [a1 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];
    v7 = a4;
  }

  v14 = v12;

  *(v8 + 32) = v14;
  specialized Array.append<A>(contentsOf:)(v8);
  if (static Platform.current.getter() == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v15 = OUTLINED_FUNCTION_3_2();
    *(v15 + 16) = xmmword_1BC4BAC30;

    v16 = [v9 trailingAnchor];
    v17 = [v37 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v42);
    v18 = [v16 &selRef_uniqueProxyIdentifier + 6];

    *(v15 + 32) = v18;
    specialized Array.append<A>(contentsOf:)(v15);
    v19 = [v9 heightAnchor];
    v20 = [v19 constraintEqualToConstant_];

    LODWORD(v21) = 1132068864;
    [v20 setPriority_];
    v22 = OUTLINED_FUNCTION_3_6();
    *(v22 + 16) = xmmword_1BC4BA930;
    v23 = [v9 trailingAnchor];
    v24 = [v38 trailingAnchor];
    Layout.MultiwayFaceTime.init()(v44);
    v25 = OUTLINED_FUNCTION_5_35(v46);
    v27 = [v23 v26];

    *(v22 + 32) = v27;
    *(v22 + 40) = v20;
    specialized Array.append<A>(contentsOf:)(v22);

    return v39;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if (Features.isICUIRedesignEnabled.getter())
    {
      v29 = &selRef_leadingAnchor;
    }

    else
    {
      v29 = &selRef_trailingAnchor;
    }

    v30 = [v9 *v29];
    v31 = [a1 *v29];
    v32 = [v30 constraintEqualToAnchor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v33 = OUTLINED_FUNCTION_3_6();
    *(v33 + 16) = xmmword_1BC4BA930;
    *(v33 + 32) = v32;
    v34 = v32;
    v35 = [v9 heightAnchor];
    static Layout.LocalParticipantViewCameraControls.iOS.getter(v44);
    v36 = [v35 constraintEqualToConstant_];

    *(v33 + 40) = v36;
    specialized Array.append<A>(contentsOf:)(v33);
  }
}

uint64_t GridViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(char *a1)
{
  v2 = v1;
  v3 = a1[19];
  if ((a1[18] & 1) == 0)
  {
    if (v3 == 2)
    {
      v4 = v1[6];
    }

    else
    {
      v4 = v1[5];
    }

LABEL_15:

    return v4;
  }

  if (v3 != 2)
  {
    v8 = *a1;
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10)
    {
      goto LABEL_16;
    }

    swift_beginAccess();
    if (static AmbientState.isPresented != 1)
    {
      goto LABEL_16;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
LABEL_16:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v13 = Features.isICUIRedesignEnabled.getter();
      v14 = v2[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      if (v13)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC4BA930;
        v15 = v2[7];
        *(inited + 32) = v15;
        v12 = v2[8];
        *(inited + 40) = v12;
        v23 = v14;

        v16 = v15;
      }

      else
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC4BC370;
        v17 = v2[7];
        *(inited + 32) = v17;
        v18 = v2[8];
        *(inited + 40) = v18;
        v12 = v2[9];
        *(inited + 48) = v12;
        v23 = v14;

        v19 = v17;
        v20 = v18;
      }

      goto LABEL_21;
    }

    v4 = v2[4];
    if ((v8 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BAC30;
      v12 = v2[10];
      *(inited + 32) = v12;
      v23 = v4;

LABEL_21:
      v21 = v12;
      specialized Array.append<A>(contentsOf:)(inited);
      return v23;
    }

    goto LABEL_15;
  }

  v4 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1BC4BAC30;
  v6 = v2[7];
  *(v5 + 32) = v6;

  v7 = v6;
  specialized Array.append<A>(contentsOf:)(v5);
  return v4;
}

id *GridViewConstraintManager.deinit()
{

  return v0;
}

uint64_t GridViewConstraintManager.__deallocating_deinit()
{
  GridViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SharedContentViewModel.init(participant:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_30();
  v5 = type metadata accessor for Participant(v4);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_6_1();
  Participant.screenInfo.getter();
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v2, type metadata accessor for Participant);
  if (v8 == 1)
  {
    SharedContentViewModel.init(nonScreenInfoParticipant:)(v2, v1);
    return OUTLINED_FUNCTION_5_36();
  }

  else
  {
    SharedContentViewModel.init(videoParticipant:)(v2, v1);
    OUTLINED_FUNCTION_5_36();
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
  }
}

uint64_t SharedContentViewModel.participantIdentifier.getter()
{
  v2 = v0;
  v3 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v3);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_1();
  v5 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v2, v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v14 = *(v13 + 64);
    v15 = *(v13 + 80);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v1, v8);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v1 + v15);
  }

  else
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd) + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v1, v8);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v1 + v14);
  outlined init with take of SharedContentViewModel.ParticipantDetails(v8, v11);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v16 = OUTLINED_FUNCTION_46();
  v17(v16);
  OUTLINED_FUNCTION_0_60();
  return _s15ConversationKit11ParticipantVWOhTm_3();
}

void *SharedContentViewModel.screenTransform.getter@<X0>(void *a1@<X8>)
{
  v3 = v1;
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v3, v2, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v8 = *(v7 + 80);
    memcpy(v12, (v2 + *(v7 + 64)), sizeof(v12));
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v2 + v8);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
    memcpy(v12, (v2 + *(v9 + 64)), sizeof(v12));
  }

  _s15ConversationKit11ParticipantVWOhTm_3();
  OUTLINED_FUNCTION_15_18(v11, v12);
  outlined destroy of SharedContentVideoView.ViewModel(v12);
  return memcpy(a1, v11, 0x80uLL);
}

uint64_t SharedContentViewModel.ParticipantDetails.init(participant:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_30();
  v4 = *(type metadata accessor for Participant(v3) + 20);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(v1, a1 + v4);
  Participant.screenInfo.getter();
  if (v26 == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v25, &_s15ConversationKit11ParticipantV10ScreenInfoVSgMd);
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v7 = v29;
    if (v29)
    {
      v6 = 0;
    }

    else
    {
      v6 = v28;
    }

    outlined destroy of Participant.ScreenInfo(v25);
  }

  v8 = String.deviceAdjustedLocalizedKey(forDeviceFamily:)(v6, v7 & 1, 0xD000000000000018, 0x80000001BC4F84F0);
  v10 = v9;
  v11 = [objc_opt_self() conversationKit];
  v30._object = 0xE000000000000000;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC4BA940;
  Participant.contactDetails.getter();
  v16 = v25[0];
  v17 = v26;
  v18 = v27;

  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  v19 = String.init(format:_:)();
  v21 = v20;

  OUTLINED_FUNCTION_5_36();
  result = OUTLINED_FUNCTION_11_28();
  v24 = (v1 + v23);
  *v24 = v19;
  v24[1] = v21;
  return result;
}

uint64_t SharedContentViewModel.ParticipantDetails.identifier.getter()
{
  OUTLINED_FUNCTION_30();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t SharedContentViewModel.ParticipantDetails.identifier.setter()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_38_2();

  return v1(v0);
}

uint64_t SharedContentViewModel.ParticipantDetails.screenShareDeviceName.getter()
{
  OUTLINED_FUNCTION_11_28();

  return OUTLINED_FUNCTION_46();
}

uint64_t SharedContentViewModel.ParticipantDetails.screenShareDeviceName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_28();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SharedContentViewModel.init(videoParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v9, type metadata accessor for Participant);
  SharedContentViewModel.ParticipantDetails.init(participant:)(v9);
  v13 = Participant.deviceOrientation.getter();
  v15 = v14;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  Participant.screenProvider.getter();
  if (*&v28[24])
  {
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v13;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    outlined init with take of TapInteractionHandler(v28, v29);
    outlined init with copy of IDSLookupManager(v29, &v30);
    Participant.screenTransform.getter(&v28[40]);
    _s15ConversationKit11ParticipantVWOhTm_3();
    __swift_destroy_boxed_opaque_existential_1(v29);
    *v28 = v30;
    *&v28[16] = v31;
    *&v28[32] = v32;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
    v18 = *(v17 + 48);
    v19 = *(v17 + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v12, a2);
    *(a2 + v18) = v16;
    memcpy((a2 + v19), v28, 0xA8uLL);
    type metadata accessor for SharedContentViewModel(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.conversationKit;
    v26[1] = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA940;
    _s15ConversationKit11ParticipantVWOcTm_3(a1, v6, type metadata accessor for Participant);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    specialized >> prefix<A>(_:)();
    v23 = v22;
    v25 = v24;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit11ParticipantVSgMd);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    os_log(_:dso:log:type:_:)();

    _s15ConversationKit11ParticipantVWOcTm_3(a1, v9, type metadata accessor for Participant);
    SharedContentViewModel.init(nonScreenInfoParticipant:)(v9, a2);
    _s15ConversationKit11ParticipantVWOhTm_3();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v30, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    return _s15ConversationKit11ParticipantVWOhTm_3();
  }
}

uint64_t SharedContentViewModel.init(nonScreenInfoParticipant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15ConversationKit11ParticipantVWOcTm_3(a1, v6, type metadata accessor for Participant);
  SharedContentViewModel.ParticipantDetails.init(participant:)(v6);
  v10 = Participant.deviceOrientation.getter();
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10;
  }

  _s15ConversationKit11ParticipantVWOhTm_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
  v14 = v13[12];
  v15 = a2 + v13[16];
  v16 = a2 + v13[20];
  outlined init with take of SharedContentViewModel.ParticipantDetails(v9, a2);
  *(a2 + v14) = v12;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  memcpy((v15 + 40), MEMORY[0x1E69792E8], 0x80uLL);
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0;
  *(v16 + 104) = 6;
  type metadata accessor for SharedContentViewModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SharedContentViewModel.participantDetails.getter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v1, v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v9 = *(v8 + 64);
    v10 = *(v8 + 80);
    v11 = OUTLINED_FUNCTION_38_2();
    outlined init with take of SharedContentViewModel.ParticipantDetails(v11, v12);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v6 + v10);
  }

  else
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd) + 64);
    v13 = OUTLINED_FUNCTION_38_2();
    outlined init with take of SharedContentViewModel.ParticipantDetails(v13, v14);
  }

  return outlined destroy of SharedContentVideoView.ViewModel(v6 + v9);
}

uint64_t outlined init with take of SharedContentViewModel.ParticipantDetails(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SharedContentViewModel.deviceOrientation.getter()
{
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_1_61();
  v4 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit11ParticipantVWOcTm_3(v4, v5, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v8 = *(v3 + v7[12]);
    v9 = v7[16];
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v3 + v7[20]);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
    v8 = *(v3 + *(v10 + 48));
    v9 = *(v10 + 64);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v3 + v9);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  return v8;
}

uint64_t SharedContentViewModel.compatibleWithRoster.getter()
{
  v2 = OUTLINED_FUNCTION_30();
  type metadata accessor for SharedContentViewModel(v2);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v0, v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v6 = *(v5 + 64);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v1 + *(v5 + 80));
  }

  else
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd) + 64);
  }

  outlined destroy of SharedContentVideoView.ViewModel(v1 + v6);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  OUTLINED_FUNCTION_1_61();
  v7 = OUTLINED_FUNCTION_38_2();
  return _s15ConversationKit11ParticipantVWOcTm_3(v7, v8, v9);
}

uint64_t static SharedContentViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v86 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v87 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO_ACtMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v86 - v18;
  v21 = &v86 + *(v20 + 56) - v18;
  _s15ConversationKit11ParticipantVWOcTm_3(a1, &v86 - v18, type metadata accessor for SharedContentViewModel);
  _s15ConversationKit11ParticipantVWOcTm_3(a2, v21, type metadata accessor for SharedContentViewModel);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_1_61();
    v40 = v19;
    _s15ConversationKit11ParticipantVWOcTm_3(v19, v16, v41);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
    v43 = *(v42 + 48);
    v44 = *&v16[v43];
    v45 = *(v42 + 64);
    v27 = &v16[v45];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v40;
      goto LABEL_16;
    }

    v46 = *&v21[v43];
    outlined init with take of SharedContentViewModel.ParticipantDetails(v21, v9);
    memcpy(v91, &v16[v45], sizeof(v91));
    memcpy(v89, &v21[v45], sizeof(v89));
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v47 = *(v86 + 20), v48 = *&v16[v47], v49 = *&v16[v47 + 8], v50 = (v9 + v47), v48 == *v50) ? (v51 = v49 == v50[1]) : (v51 = 0), !v51 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      outlined destroy of SharedContentVideoView.ViewModel(v89);
      outlined destroy of SharedContentVideoView.ViewModel(v91);
      OUTLINED_FUNCTION_8_43();
      _s15ConversationKit11ParticipantVWOhTm_3();
      _s15ConversationKit11ParticipantVWOhTm_3();
      OUTLINED_FUNCTION_4_39();
LABEL_47:
      _s15ConversationKit11ParticipantVWOhTm_3();
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_60();
    _s15ConversationKit11ParticipantVWOhTm_3();
    if (v44 != v46)
    {
      outlined destroy of SharedContentVideoView.ViewModel(v89);
      outlined destroy of SharedContentVideoView.ViewModel(v91);
      OUTLINED_FUNCTION_0_60();
      goto LABEL_46;
    }

    Hasher.init(_seed:)();
    outlined init with copy of ParticipantVideoProvider?(v91, v95);
    v52 = v96;
    if (v96)
    {
      v53 = v97;
      __swift_project_boxed_opaque_existential_1(v95, v96);
      v54 = OUTLINED_FUNCTION_10_24();
      v55(v54, v53);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v95);
      if ((v9 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v52);
        goto LABEL_38;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
LABEL_38:
    OUTLINED_FUNCTION_15_18(v95, v91);
    CATransform3D.hash(into:)();
    v65 = SharedContentVideoView.ViewModel.contentsRect.getter();
    CGRect.hash(into:)(v65, v66, v67, v68);
    v69 = Hasher._finalize()();
    Hasher.init(_seed:)();
    outlined init with copy of ParticipantVideoProvider?(v89, v92);
    v70 = v93;
    if (v93)
    {
      v71 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v72 = (*(v71 + 8))(v70, v71);
      v74 = v73;
      __swift_destroy_boxed_opaque_existential_1(v92);
      if ((v74 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v72);
LABEL_52:
        OUTLINED_FUNCTION_15_18(v92, v89);
        CATransform3D.hash(into:)();
        v81 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v81, v82, v83, v84);
        v85 = Hasher._finalize()();
        outlined destroy of SharedContentVideoView.ViewModel(v89);
        outlined destroy of SharedContentVideoView.ViewModel(v91);
        v79 = v69 == v85;
        goto LABEL_53;
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v19, v13, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
  v24 = v23[12];
  v25 = *(v13 + v24);
  v26 = v23[16];
  v27 = v13 + v26;
  v28 = v23[20];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *&v21[v24];
    v30 = v87;
    outlined init with take of SharedContentViewModel.ParticipantDetails(v21, v87);
    memcpy(v91, (v13 + v26), sizeof(v91));
    memcpy(v90, (v13 + v28), 0x69uLL);
    memcpy(v89, &v21[v26], sizeof(v89));
    memcpy(v88, &v21[v28], 0x69uLL);
    if (static UUID.== infix(_:_:)())
    {
      v31 = *(v86 + 20);
      v32 = *(v13 + v31);
      v33 = *(v13 + v31 + 8);
      v34 = (v30 + v31);
      v35 = v32 == *v34 && v33 == v34[1];
      if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        OUTLINED_FUNCTION_0_60();
        _s15ConversationKit11ParticipantVWOhTm_3();
        if (v25 != v29)
        {
LABEL_45:
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
          outlined destroy of SharedContentVideoView.ViewModel(v89);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
          outlined destroy of SharedContentVideoView.ViewModel(v91);
          OUTLINED_FUNCTION_0_60();
          goto LABEL_46;
        }

        Hasher.init(_seed:)();
        outlined init with copy of ParticipantVideoProvider?(v91, v95);
        v36 = v96;
        if (v96)
        {
          v37 = v97;
          __swift_project_boxed_opaque_existential_1(v95, v96);
          v38 = OUTLINED_FUNCTION_10_24();
          v39(v38, v37);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v95);
          if ((v25 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v36);
            goto LABEL_33;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        }

        Hasher._combine(_:)(0);
LABEL_33:
        OUTLINED_FUNCTION_15_18(v95, v91);
        CATransform3D.hash(into:)();
        v56 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v56, v57, v58, v59);
        v60 = Hasher._finalize()();
        Hasher.init(_seed:)();
        outlined init with copy of ParticipantVideoProvider?(v89, v92);
        v61 = v93;
        if (v93)
        {
          v62 = v94;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v63 = OUTLINED_FUNCTION_10_24();
          v64(v63, v62);
          OUTLINED_FUNCTION_96_1();
          __swift_destroy_boxed_opaque_existential_1(v92);
          if ((v92 & 1) == 0)
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1BFB22640](v61);
            goto LABEL_43;
          }
        }

        else
        {
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
        }

        Hasher._combine(_:)(0);
LABEL_43:
        OUTLINED_FUNCTION_15_18(v92, v89);
        CATransform3D.hash(into:)();
        v75 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v75, v76, v77, v78);
        if (v60 == Hasher._finalize()())
        {
          v79 = static ParticipantVideoOverlayView.ViewModel.== infix(_:_:)(v90, v88);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
          outlined destroy of SharedContentVideoView.ViewModel(v89);
          outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
          outlined destroy of SharedContentVideoView.ViewModel(v91);
          OUTLINED_FUNCTION_0_60();
LABEL_53:
          _s15ConversationKit11ParticipantVWOhTm_3();
          OUTLINED_FUNCTION_4_39();
          _s15ConversationKit11ParticipantVWOhTm_3();
          return v79 & 1;
        }

        goto LABEL_45;
      }
    }

    outlined destroy of ParticipantVideoOverlayView.ViewModel(v88);
    outlined destroy of SharedContentVideoView.ViewModel(v89);
    outlined destroy of ParticipantVideoOverlayView.ViewModel(v90);
    outlined destroy of SharedContentVideoView.ViewModel(v91);
    OUTLINED_FUNCTION_8_43();
    _s15ConversationKit11ParticipantVWOhTm_3();
LABEL_46:
    _s15ConversationKit11ParticipantVWOhTm_3();
    OUTLINED_FUNCTION_4_39();
    goto LABEL_47;
  }

  outlined destroy of ParticipantVideoOverlayView.ViewModel(v13 + v28);
LABEL_16:
  outlined destroy of SharedContentVideoView.ViewModel(v27);
  OUTLINED_FUNCTION_0_60();
  _s15ConversationKit11ParticipantVWOhTm_3();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s15ConversationKit22SharedContentViewModelO_ACtMd);
LABEL_48:
  v79 = 0;
  return v79 & 1;
}

uint64_t static SharedContentViewModel.ParticipantDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_28();
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SharedContentViewModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46[-v9 - 8];
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_1_61();
  _s15ConversationKit11ParticipantVWOcTm_3(v2, v14, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
    v28 = *(v14 + *(v27 + 48));
    v29 = *(v27 + 64);
    outlined init with take of SharedContentViewModel.ParticipantDetails(v14, v10);
    memcpy(v47, (v14 + v29), sizeof(v47));
    MEMORY[0x1BFB22640](0);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_2_60();
    _s10Foundation4UUIDVACSHAAWlTm_0(v30, v31);
    dispatch thunk of Hashable.hash(into:)();
    String.hash(into:)();
    MEMORY[0x1BFB22640](v28);
    outlined init with copy of ParticipantVideoProvider?(v47, v48);
    v32 = v49;
    if (v49)
    {
      v33 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v34 = OUTLINED_FUNCTION_10_24();
      v35(v34, v33);
      OUTLINED_FUNCTION_96_1();
      __swift_destroy_boxed_opaque_existential_1(v48);
      if ((a1 & 1) == 0)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1BFB22640](v32);
LABEL_13:
        OUTLINED_FUNCTION_15_18(v48, v47);
        CATransform3D.hash(into:)();
        v40 = SharedContentVideoView.ViewModel.contentsRect.getter();
        CGRect.hash(into:)(v40, v41, v42, v43);
        outlined destroy of SharedContentVideoView.ViewModel(v47);
        OUTLINED_FUNCTION_0_60();
        return _s15ConversationKit11ParticipantVWOhTm_3();
      }
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    }

    Hasher._combine(_:)(0);
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
  v17 = *(v14 + v16[12]);
  v18 = v16[16];
  v19 = v16[20];
  outlined init with take of SharedContentViewModel.ParticipantDetails(v14, v7);
  memcpy(v47, (v14 + v18), sizeof(v47));
  memcpy(v46, (v14 + v19), 0x69uLL);
  MEMORY[0x1BFB22640](1);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v20, v21);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1BFB22640](v17);
  outlined init with copy of ParticipantVideoProvider?(v47, v48);
  v22 = v49;
  if (!v49)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v48, &_s15ConversationKit24ParticipantVideoProvider_pSgMd);
    goto LABEL_9;
  }

  v23 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v24 = (*(v23 + 8))(v22, v23);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1(v48);
  if (v26)
  {
LABEL_9:
    Hasher._combine(_:)(0);
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1BFB22640](v24);
LABEL_10:
  OUTLINED_FUNCTION_15_18(v48, v47);
  CATransform3D.hash(into:)();
  v36 = SharedContentVideoView.ViewModel.contentsRect.getter();
  CGRect.hash(into:)(v36, v37, v38, v39);
  ParticipantVideoOverlayView.ViewModel.hash(into:)(a1);
  outlined destroy of ParticipantVideoOverlayView.ViewModel(v46);
  outlined destroy of SharedContentVideoView.ViewModel(v47);
  OUTLINED_FUNCTION_0_60();
  return _s15ConversationKit11ParticipantVWOhTm_3();
}

Swift::Int SharedContentViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  SharedContentViewModel.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SharedContentViewModel.ParticipantDetails.hash(into:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_11_28();

  return String.hash(into:)();
}

Swift::Int SharedContentViewModel.ParticipantDetails.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_2_60();
  _s10Foundation4UUIDVACSHAAWlTm_0(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  OUTLINED_FUNCTION_11_28();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedContentViewModel(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t outlined init with copy of ParticipantVideoProvider?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit24ParticipantVideoProvider_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CGRect.hash(into:)(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1BFB22680](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1BFB22680](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1BFB22680](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1BFB22680](*&v9);
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SharedContentViewModel()
{
  type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel)()
{
  if (!lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel))
  {
    type metadata accessor for SharedContentViewModel.ParticipantDetails(255);
    type metadata accessor for CNKDeviceOrientation(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel));
    }
  }
}

void type metadata accessor for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel)()
{
  if (!lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel))
  {
    type metadata accessor for SharedContentViewModel.ParticipantDetails(255);
    type metadata accessor for CNKDeviceOrientation(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (SharedContentViewModel.ParticipantDetails, CNKDeviceOrientation, SharedContentVideoView.ViewModel, ParticipantVideoOverlayView.ViewModel));
    }
  }
}

uint64_t type metadata completion function for SharedContentViewModel.ParticipantDetails()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LockScreenActivityViewModel.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LockScreenActivityViewModel.presentingForState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t key path getter for LockScreenActivityViewModel.presentingForState : LockScreenActivityViewModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  v5 = type metadata accessor for CallScreeningStatus();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for LockScreenActivityViewModel.presentingForState : LockScreenActivityViewModel(uint64_t a1)
{
  v2 = type metadata accessor for CallScreeningStatus();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return LockScreenActivityViewModel.presentingForState.setter(v5);
}

uint64_t LockScreenActivityViewModel.presentingForState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  OUTLINED_FUNCTION_30_2();
  v5 = type metadata accessor for CallScreeningStatus();
  v6 = *(v5 - 8);
  (*(v6 + 24))(v2 + v4, a1, v5);
  swift_endAccess();
  (*(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v2);
  return (*(v6 + 8))(a1, v5);
}

uint64_t (*LockScreenActivityViewModel.presentingForState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_30_2();
  return LockScreenActivityViewModel.presentingForState.modify;
}

uint64_t LockScreenActivityViewModel.presentingForState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(*(a1 + 24) + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))();
  }

  return result;
}

uint64_t LockScreenActivityViewModel.isLocked.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_4_0();
  return *(v0 + v1);
}

uint64_t key path getter for LockScreenActivityViewModel.isLocked : LockScreenActivityViewModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t LockScreenActivityViewModel.isLocked.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return LockScreenActivityViewModel.isLocked.didset(v4);
}

uint64_t LockScreenActivityViewModel.isLocked.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return (*(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v1);
  }

  return result;
}

void (*LockScreenActivityViewModel.isLocked.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
  OUTLINED_FUNCTION_4_0();
  *(v3 + 32) = *(v1 + v4);
  return LockScreenActivityViewModel.isLocked.modify;
}

void LockScreenActivityViewModel.isLocked.modify(uint64_t a1)
{
  v1 = *a1;
  LockScreenActivityViewModel.isLocked.setter(*(*a1 + 32));

  free(v1);
}

uint64_t LockScreenActivityViewModel.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t LockScreenActivityViewModel.callUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID);

  return v1;
}

uint64_t LockScreenActivityViewModel.callerDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callerDisplayName);
  *v3 = a1;
  v3[1] = a2;

  return (*(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate))(v2);
}

uint64_t LockScreenActivityViewModel.isValidState.getter()
{
  v1 = type metadata accessor for CallScreeningStatus();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 != *MEMORY[0x1E6995EA8])
  {
    if (v6 == *MEMORY[0x1E6995E98])
    {
      return 0;
    }

    if (v6 == *MEMORY[0x1E6995EA0] || v6 == *MEMORY[0x1E6995EB0])
    {
      return 1;
    }
  }

  (*(v2 + 8))(v4, v1);
  return 0;
}

uint64_t LockScreenActivityViewModel.__allocating_init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_11_29();
  LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(v7, v8, v9, v10, a5);
  return v6;
}

uint64_t LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
  OUTLINED_FUNCTION_1();
  v56 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - v14;
  *(v5 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables) = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults;
  type metadata accessor for Defaults();
  swift_allocObject();
  *(v5 + v15) = Defaults.init()();
  v16 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver;
  type metadata accessor for PhoneLockStateObserver();
  *(v5 + v16) = static PhoneLockStateObserver.shared.getter();
  v17 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  v18 = type metadata accessor for Logger();
  v55 = *(v18 - 8);
  v19 = *(v55 + 16);
  v61 = a1;
  v57 = v18;
  v19(v6 + v17, a1);
  *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_viewModel) = a2;

  v20 = TranscriptionViewModel.callUUID.getter();
  v21 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID);
  *v21 = v20;
  v21[1] = v22;
  v23 = TranscriptionViewModel.callerDisplayName.getter();
  v24 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callerDisplayName);
  *v24 = v23;
  v24[1] = v25;
  v26 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  v27 = type metadata accessor for CallScreeningStatus();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v60 = a3;
  v53 = v27;
  v29(v6 + v26, a3);
  v30 = (v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate);
  *v30 = a4;
  v30[1] = a5;
  v31 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver;
  v32 = *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_lockStateObserver);
  v59 = a5;

  v33 = v32;
  LOBYTE(a4) = PhoneLockStateObserver.fetchLockState()();

  *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked) = a4 & 1;
  v34 = *(v6 + v31);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();
  v35 = v34;

  v36 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

  v52 = type metadata accessor for AnyCancellable();
  v63 = v52;
  v62 = v36;
  v37 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_cancellables;
  OUTLINED_FUNCTION_4_40();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  OUTLINED_FUNCTION_12_26();
  v38 = *(v6 + v37);
  *(v38 + 16) = a5 + 1;
  OUTLINED_FUNCTION_5_37(v38 + 32 * a5);
  v39 = *(v6 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults);
  OUTLINED_FUNCTION_20();
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = *(*v39 + 1112);

  v42 = v41(partial apply for closure #2 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:), v40);

  if (v42)
  {
    v63 = type metadata accessor for Defaults.Observation();
    v62 = v42;
    OUTLINED_FUNCTION_4_40();
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    OUTLINED_FUNCTION_12_26();
    v44 = *(v6 + v37);
    *(v44 + 16) = v40 + 1;
    OUTLINED_FUNCTION_5_37(v44 + 32 * v40);
  }

  OUTLINED_FUNCTION_30_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd);
  v45 = v54;
  Published.projectedValue.getter();
  swift_endAccess();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type Published<String>.Publisher and conformance Published<A>.Publisher();
  v46 = v58;
  v47 = Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v45, v46);
  v63 = v52;
  v62 = v47;
  OUTLINED_FUNCTION_4_40();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v48 = *(*(v6 + v37) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
  v49 = *(v6 + v37);
  *(v49 + 16) = v48 + 1;
  OUTLINED_FUNCTION_5_37(v49 + 32 * v48);

  (*(v28 + 8))(v60, v53);
  (*(v55 + 8))(v61, v57);
  return v6;
}

uint64_t closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:), v7, v6);
}

uint64_t closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)()
{

  OUTLINED_FUNCTION_4_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (TranscriptionViewModel.callUUID.getter() == *(Strong + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v3 == *(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    LockScreenActivityViewModel.isLocked.setter(*(v0 + 56));
LABEL_10:
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #2 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (TranscriptionViewModel.callUUID.getter() == *(result + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v2 == *(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
      }
    }

    v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_onUpdate);

    v5(v1);
  }

  return result;
}

uint64_t closure #3 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (TranscriptionViewModel.callUUID.getter() == *(result + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v5 == *(v4 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
      }
    }

    LockScreenActivityViewModel.callerDisplayName.setter(v1, v2);
  }

  return result;
}

uint64_t LockScreenActivityViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t LockScreenActivityViewModel.__deallocating_deinit()
{
  LockScreenActivityViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t LockScreenActivityViewModel.isPresentable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (LockScreenActivityViewModel.isValidState.getter())
  {
    v23 = 2;
    v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_isLocked;
    OUTLINED_FUNCTION_4_0();
    if (*(v0 + v8) != 1 || (specialized getter of enabledOnLock #1 in LockScreenActivityViewModel.isPresentable.getter(&v23, v0) & 1) != 0)
    {
      return 1;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v20 = 136315906;
      *(v20 + 4) = OUTLINED_FUNCTION_9_27("ConversationKit/LockScreenActivityViewModel.swift");
      *(v20 + 12) = 2080;
      *(v20 + 14) = OUTLINED_FUNCTION_3_55();
      v21 = *(v1 + v8);
      *(v20 + 22) = 1024;
      *(v20 + 24) = v21;
      *(v20 + 28) = 1024;
      *(v20 + 30) = v23 & 1;

      _os_log_impl(&dword_1BBC58000, v18, v19, "%s:%s cannot present activity because we are locked (%{BOOL}d) and sensitive activities are not enabled on lock (%{BOOL}d)", v20, 0x22u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {
    }
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = OUTLINED_FUNCTION_9_27("ConversationKit/LockScreenActivityViewModel.swift");
      *(v12 + 12) = 2080;
      *(v12 + 14) = OUTLINED_FUNCTION_3_55();
      *(v12 + 22) = 2080;
      v13 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
      OUTLINED_FUNCTION_4_0();
      (*(v4 + 16))(v7, v1 + v13, v2);
      lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v4 + 8))(v7, v2);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v24);

      *(v12 + 24) = v17;
      _os_log_impl(&dword_1BBC58000, v10, v11, "%s:%s cannot present activity because state is invalid %s", v12, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }
  }

  return 0;
}

uint64_t specialized getter of enabledOnLock #1 in LockScreenActivityViewModel.isPresentable.getter(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == 2)
  {
    LOBYTE(v2) = (*(**(a2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_defaults) + 1104))();
    swift_beginAccess();
    *a1 = v2 & 1;
  }

  return v2 & 1;
}

uint64_t LockScreenActivityViewModel.attributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore18ActivityLabelStyleOSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v45 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v42 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v42 - v33;
  LockScreenActivityViewModel.title.getter(v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v16 = v19;
  }

  else
  {
    v43 = v6;
    v44 = a1;
    v35 = v22[4];
    v35(v34, v19, v20);
    LockScreenActivityViewModel.subtitle.getter(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v20) != 1)
    {
      v35(v31, v16, v20);
      v37 = v22[2];
      v37(v28, v34, v20);
      v37(v45, v31, v20);
      v38 = type metadata accessor for URL();
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v38);
      LockScreenActivityViewModel.titleStyle.getter(v47);
      LockScreenActivityViewModel.subtitleStyle.getter(v43);
      a1 = v44;
      IntelligenceActivityAttributes.init(title:subtitle:shouldHideCallerIDWhenLocked:showsViewButton:displaysAvatar:callImageURL:contactIdentifier:titleStyle:subtitleStyle:)();
      v39 = v22[1];
      v39(v31, v20);
      v39(v34, v20);
      v36 = 0;
      goto LABEL_7;
    }

    (v22[1])(v34, v20);
    a1 = v44;
  }

  outlined destroy of AttributedString?(v16);
  v36 = 1;
LABEL_7:
  v40 = type metadata accessor for IntelligenceActivityAttributes();
  return __swift_storeEnumTagSinglePayload(a1, v36, 1, v40);
}

uint64_t LockScreenActivityViewModel.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (v9 == *MEMORY[0x1E6995E98])
    {
      v14 = type metadata accessor for AttributedString();
      v15 = a1;
      v16 = 1;
      return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
    }

    if (v9 == *MEMORY[0x1E6995EA0])
    {

      AttributeContainer.init()();
      goto LABEL_4;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      v18 = type metadata accessor for AttributedString();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
      return (*(v5 + 8))(v7, v4);
    }
  }

  v10 = [objc_opt_self() conversationKit];
  v20._object = 0xE000000000000000;
  v11.value._countAndFlagsBits = 0x61737265766E6F43;
  v11.value._object = 0xEF74694B6E6F6974;
  v12._object = 0x80000001BC4F86A0;
  v12._countAndFlagsBits = 0xD000000000000019;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v11, v10, v13, v20);

  AttributeContainer.init()();
LABEL_4:
  AttributedString.init(_:attributes:)();
  v14 = type metadata accessor for AttributedString();
  v15 = a1;
  v16 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

uint64_t LockScreenActivityViewModel.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (v9 == *MEMORY[0x1E6995E98])
    {
      v10 = type metadata accessor for AttributedString();
      v11 = a1;
      v12 = 1;
      return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
    }

    if (v9 == *MEMORY[0x1E6995EA0])
    {
      v14 = [objc_opt_self() conversationKit];
      v20._object = 0xE000000000000000;
      v15.value._countAndFlagsBits = 0x61737265766E6F43;
      v15.value._object = 0xEF74694B6E6F6974;
      v16._object = 0x80000001BC4F8670;
      v16._countAndFlagsBits = 0xD000000000000021;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v20._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v20);

      AttributeContainer.init()();
      goto LABEL_4;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      v18 = type metadata accessor for AttributedString();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v18);
      return (*(v5 + 8))(v7, v4);
    }
  }

  AttributeContainer.init()();
LABEL_4:
  AttributedString.init(_:attributes:)();
  v10 = type metadata accessor for AttributedString();
  v11 = a1;
  v12 = 0;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t LockScreenActivityViewModel.titleStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (v8 == *MEMORY[0x1E6995E98] || v8 == *MEMORY[0x1E6995EA0])
    {
      v13 = type metadata accessor for ActivityLabelStyle();
      v11 = a1;
      v12 = 1;
      return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v15 = type metadata accessor for ActivityLabelStyle();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = *MEMORY[0x1E6995E78];
  v10 = type metadata accessor for ActivityLabelStyle();
  (*(*(v10 - 8) + 104))(a1, v9, v10);
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t LockScreenActivityViewModel.subtitleStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      v13 = *MEMORY[0x1E6995E80];
      v14 = type metadata accessor for ActivityLabelStyle();
      (*(*(v14 - 8) + 104))(a1, v13, v14);
      v10 = a1;
      v11 = 0;
      v9 = v14;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v15 = type metadata accessor for ActivityLabelStyle();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = type metadata accessor for ActivityLabelStyle();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t LockScreenActivityViewModel.content.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore14ActivitySymbolVSgMd);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  LockScreenActivityViewModel.message.getter(&v16 - v14);
  LockScreenActivityViewModel.title.getter(v12);
  LockScreenActivityViewModel.titleSymbol.getter(v7);
  LockScreenActivityViewModel.subtitleSymbol.getter(v4);
  OUTLINED_FUNCTION_11_29();
  return IntelligenceActivityAttributes.ContentState.init(message:title:titleSymbol:subTitleSymbol:shouldCenterAlignMessage:)();
}

uint64_t LockScreenActivityViewModel.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for CallScreeningStatus();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == *MEMORY[0x1E6995EA8])
  {
    (*(v5 + 96))(v7, v4);
    if (*(v7 + 1))
    {
      goto LABEL_5;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  if (v9 != *MEMORY[0x1E6995E98])
  {
    if (v9 == *MEMORY[0x1E6995EA0])
    {
      goto LABEL_10;
    }

    if (v9 != *MEMORY[0x1E6995EB0])
    {
      (*(v5 + 8))(v7, v4);
      goto LABEL_10;
    }

    v11 = [objc_opt_self() conversationKit];
    v18._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._object = 0x80000001BC4F8640;
    v13._countAndFlagsBits = 0xD000000000000020;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v18);
  }

LABEL_5:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v10 = 0;
LABEL_11:
  v15 = type metadata accessor for AttributedString();
  return __swift_storeEnumTagSinglePayload(a1, v10, 1, v15);
}

uint64_t LockScreenActivityViewModel.titleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      v9 = type metadata accessor for ActivitySymbol();
      v10 = a1;
      v11 = 1;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      static ActivitySymbol.callScreeningActive.getter();
      v13 = type metadata accessor for ActivitySymbol();
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
      return (*(v4 + 8))(v6, v3);
    }
  }

  static ActivitySymbol.callScreeningActive.getter();
  v9 = type metadata accessor for ActivitySymbol();
  v10 = a1;
  v11 = 0;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t LockScreenActivityViewModel.subtitleSymbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CallScreeningStatus();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v7, v3);
  v8 = (*(v4 + 88))(v6, v3);
  if (v8 == *MEMORY[0x1E6995EA8])
  {
    (*(v4 + 8))(v6, v3);
  }

  else if (v8 != *MEMORY[0x1E6995E98])
  {
    if (v8 == *MEMORY[0x1E6995EA0])
    {
      static ActivitySymbol.system(_:)();
      v9 = type metadata accessor for ActivitySymbol();
      v10 = a1;
      v11 = 0;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    if (v8 != *MEMORY[0x1E6995EB0])
    {
      v13 = type metadata accessor for ActivitySymbol();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v13);
      return (*(v4 + 8))(v6, v3);
    }
  }

  v9 = type metadata accessor for ActivitySymbol();
  v10 = a1;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

unint64_t lazy protocol witness table accessor for type Published<String>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySS_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<String>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined destroy of AttributedString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LockScreenActivityViewModel()
{
  result = type metadata singleton initialization cache for LockScreenActivityViewModel;
  if (!type metadata singleton initialization cache for LockScreenActivityViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LockScreenActivityViewModel()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CallScreeningStatus();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in SyncedScreeningAlphaGradientView.gradient(for:);

  return closure #1 in closure #1 in LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(a1, v4, v5, v6, v7);
}

double SystemRootLayerProxyView.preferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1 && (v2 = v1, v3 = [v1 windowScene], v2, v3))
  {
    v4 = [v3 screen];
    [v4 bounds];
    v6 = v5;
  }

  else
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v6 = v7;
  }

  return v6;
}

uint64_t SystemRootLayerProxyView.systemRootLayerTransform.didset()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 16];
  v22 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  v23 = v3;
  v24 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 32];
  result = static CGAffineTransform.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v5 = SystemRootLayerProxyView.displayCornerView.getter();
    v6 = *(v2 + 1);
    v15[6] = *v2;
    v15[7] = v6;
    v15[8] = *(v2 + 2);
    v16 = 0x3FF0000000000000;
    v17 = 0;
    v18 = 0;
    v19 = 0x3FF0000000000000;
    v20 = 0;
    v21 = 0;
    [v5 setHidden_];

    v7 = [v1 window];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 windowScene];

      if (v9)
      {
        v10 = *(v2 + 1);
        v15[3] = *v2;
        v15[4] = v10;
        v15[5] = *(v2 + 2);
        v11 = [objc_opt_self() mainScreen];
        [v11 _rotation];
        v13 = v12;

        CGAffineTransform.rotatingTranslationComponent(by:)(v15, -v13);
        v14[0] = v15[0];
        v14[1] = v15[1];
        v14[2] = v15[2];
        [v9 setSBSUI:v14 preferredSystemRootLayerTransform:?];
      }
    }

    return SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()();
  }

  return result;
}

uint64_t SystemRootLayerProxyView.systemRootLayerTransform.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
  v3 = a1[1];
  *v2 = *a1;
  v2[1] = v3;
  v2[2] = a1[2];
  return SystemRootLayerProxyView.systemRootLayerTransform.didset();
}

uint64_t SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(char a1)
{
  v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform] = a1;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  onNextMainRunLoop(do:)(partial apply for closure #1 in SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.didset, v2);
}

void *SystemRootLayerProxyView.displayCornerView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for ShapeView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = [objc_opt_self() blackColor];
    v7 = [v6 CGColor];

    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))(v7);
    (*((*v8 & *v5) + 0x78))(*MEMORY[0x1E69797F8]);
    v9 = v5;
    [v9 setHidden_];
    [v9 setUserInteractionEnabled_];
    v10 = [v9 layer];
    [v10 setAllowsHitTesting_];

    v11 = [v9 layer];
    [v11 setDisableUpdateMask_];

    v12 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v9;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id SystemRootLayerProxyView.init()()
{
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebounceDelay] = xmmword_1BC4C2970;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer] = 0;
  v1 = &v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform];
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform] = 0;
  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView] = 0;
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions] = v2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SystemRootLayerProxyView();
  v3 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = SystemRootLayerProxyView.displayCornerView.getter();
  [v3 addSubview_];

  return v3;
}

void SystemRootLayerProxyView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebounceDelay) = xmmword_1BC4C2970;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
  *v1 = 0x3FF0000000000000;
  v1[1] = 0;
  v1[2] = 0;
  v1[3] = 0x3FF0000000000000;
  v1[4] = 0;
  v1[5] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView) = 0;
  if (specialized Array.count.getter(MEMORY[0x1E69E7CC0]))
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions) = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>(a5, a3);

  Publisher<>.sink(receiveValue:)();

  (*(v9 + 8))(v12, v7);

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  }
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  }
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

{
  specialized closure #1 in SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)();
}

id SystemRootLayerProxyView.registerForGeometryChanges()()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_subscriptions;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x1E69E7CD0];

  KeyPath = swift_getKeyPath();
  specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(KeyPath, v0, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>);

  v3 = swift_getKeyPath();
  specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v3, v0, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>);

  v4 = [v0 superview];
  if (v4)
  {
    v5 = v4;
    v6 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v6, v5, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>);

    v7 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v7, v5, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>);
  }

  result = [v0 window];
  if (result)
  {
    v9 = result;
    v10 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v10, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo6CGRectVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGRect> and conformance NSObject.KeyValueObservingPublisher<A, B>);

    v11 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v11, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo7CGPointVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>);

    v12 = swift_getKeyPath();
    specialized SystemRootLayerProxyView.registerForPropertyChangesOf<A>(_:on:)(v12, v9, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo17CGAffineTransformVGMd, &_sSo8NSObjectC10FoundationE26KeyValueObservingPublisherVy_So6UIViewCSo17CGAffineTransformVGMR, &lazy protocol witness table cache variable for type NSObject.KeyValueObservingPublisher<UIView, CGAffineTransform> and conformance NSObject.KeyValueObservingPublisher<A, B>);
  }

  return result;
}

double key path getter for UIView.transform : UIView@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 transform];
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id key path setter for UIView.transform : UIView(_OWORD *a1, void **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return [v2 setTransform_];
}

id SystemRootLayerProxyView.didMoveToSuperview()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemRootLayerProxyView();
  objc_msgSendSuper2(&v2, sel_didMoveToSuperview);
  SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  return SystemRootLayerProxyView.registerForGeometryChanges()();
}

void SystemRootLayerProxyView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SystemRootLayerProxyView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = SystemRootLayerProxyView.displayCornerView.getter();
  v2 = SystemRootLayerProxyView.preferredContentSize.getter();
  [v1 setBounds_];

  v4 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView];
  [v0 bounds];
  MidX = CGRectGetMidX(v7);
  [v0 bounds];
  [v4 setCenter_];

  SystemRootLayerProxyView.updateDisplayCornerView()();
  SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(1);
  SystemRootLayerProxyView.updateSystemRootLayerTransformIfNeeded()();
}

void SystemRootLayerProxyView.updateDisplayCornerView()()
{
  v1 = v0;
  v2 = SystemRootLayerProxyView.displayCornerView.getter();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  [v11 displayCornerRadius];

  Mutable = CGPathCreateMutable();
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v20 = CGRectInset(v19, -200.0, -200.0);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.addRect(_:transform:)(v20, &transform);
  CGPathAddContinuousRoundedRect();
  v13 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView____lazy_storage___displayCornerView];
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x90);
  v16 = v13;
  v15 = Mutable;
  v14(Mutable);
}

void SystemRootLayerProxyView.updateSystemRootLayerTransformIfNeeded()()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_needsUpdateSystemRootLayerTransform) == 1)
  {
    SystemRootLayerProxyView.updateSystemRootLayerTransform()();

    SystemRootLayerProxyView.needsUpdateSystemRootLayerTransform.setter(0);
  }
}

void SystemRootLayerProxyView.updateSystemRootLayerTransform()()
{
  v1 = [v0 window];
  if (v1)
  {
    v27 = v1;
    [v0 bounds];
    v3 = v2;
    [v0 bounds];
    v5 = v3 / v4;
    v6 = [v27 screen];
    [v6 scale];
    v8 = v7;

    v9 = SystemRootLayerProxyView.preferredContentSize.getter();
    SystemRootLayerProxyView.preferredContentSize.getter();
    if (vabdd_f64(v5, v9 / v10) >= 0.01)
    {
    }

    else
    {
      v11 = [v27 screen];
      v12 = [v11 fixedCoordinateSpace];

      [v12 bounds];
      MidX = CGRectGetMidX(v32);
      [v12 bounds];
      MidY = CGRectGetMidY(v33);
      [v0 bounds];
      v15 = CGRectGetMidX(v34);
      [v0 bounds];
      [v0 convertPoint:v12 toCoordinateSpace:{v15, CGRectGetMidY(v35)}];
      v17 = v16;
      v19 = v18;
      [v0 bounds];
      v21 = v20 / SystemRootLayerProxyView.preferredContentSize.getter();
      [v0 bounds];
      v23 = v22;
      SystemRootLayerProxyView.preferredContentSize.getter();
      if (v21 > v23 / v24)
      {
        v25 = v21;
      }

      else
      {
        v25 = v23 / v24;
      }

      v30.a = 1.0;
      v30.b = 0.0;
      v30.c = 0.0;
      v30.d = 1.0;
      v30.tx = 0.0;
      v30.ty = 0.0;
      if (fabs(v25 + -1.0) >= 0.01)
      {
        CGAffineTransformTranslate(&v29, &v30, v8 * (v17 - MidX), v8 * (v19 - MidY));
        CGAffineTransformScale(&v30, &v29, v25, v25);
      }

      SystemRootLayerProxyView.systemRootLayerTransform.setter(&v30);
      v26 = SystemRootLayerProxyView.displayCornerView.getter();
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGAffineTransformScale(&v28, &v29, v25, v25);
      v29 = v28;
      [v26 setTransform_];

      swift_unknownObjectRelease();
    }
  }
}

void SystemRootLayerProxyView._updateSystemRootLayerTransformOnActiveCall()()
{
  v1 = v0;
  if (one-time initialization token for sharedMonitor != -1)
  {
    swift_once();
  }

  v2 = (*((*MEMORY[0x1E69E7D40] & *static ScreenSharingStateMonitor.sharedMonitor) + 0x128))();
  if (v2)
  {
    v19 = v2;
    v3 = [v2 screenShareAttributes];
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 32);
      v6 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 40);
      v17 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform + 16);
      v18 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_systemRootLayerTransform);
      v7 = objc_opt_self();
      v8 = v4;
      v20[0] = v18;
      v20[1] = v17;
      v21 = v5;
      v22 = v6;
      v9 = [v7 valueWithCGAffineTransform_];
      [v8 setSystemRootLayerTransform_];

      [v19 setScreenShareAttributes:v8];
      return;
    }

    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, &static Log.screenSharing);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1BBC58000, v14, v15, "Could not find current screen share attributes", v16, 2u);
      MEMORY[0x1BFB23DF0](v16, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for screenSharing != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Log.screenSharing);
    v19 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BBC58000, v19, v11, "Could not find active call to send updated screen share details", v12, 2u);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }
  }
}

uint64_t SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer;
  v6 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_F76A9C58291D108FF33107E36997693224SystemRootLayerProxyView_updateSystemRootLayerTransformOnActiveCallDebouncer];
  if (v6)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x1BFB21000](v6, MEMORY[0x1E69E7CA8] + 8, v7, MEMORY[0x1E69E7288]);
  }

  v8 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  *&v1[v5] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall(), v7, v6);
}

uint64_t closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall()()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();

  return specialized Clock.sleep(for:tolerance:)();
}

{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();
  }

  else
  {
    v8 = closure #1 in SystemRootLayerProxyView.updateSystemRootLayerTransformOnActiveCall();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{

  SystemRootLayerProxyView._updateSystemRootLayerTransformOnActiveCall()();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

id SystemRootLayerProxyViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}