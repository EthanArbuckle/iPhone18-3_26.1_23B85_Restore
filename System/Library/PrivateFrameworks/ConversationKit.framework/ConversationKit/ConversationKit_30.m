uint64_t outlined init with copy of ConversationControlsSecondaryPillButtonType(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of PushToTalkNotice(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

id OUTLINED_FUNCTION_67_5(void *a1)
{

  return [a1 init];
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return String.init<A>(reflecting:)();
}

uint64_t *OUTLINED_FUNCTION_70_2@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  a1[3] = *(a2 - 256);
  a1[4] = v2;

  return __swift_allocate_boxed_opaque_existential_1(a1);
}

id ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a1, a3, ObjectType, a2);
}

id specialized Conversation.avModeForSystemAperture.getter()
{
  v1 = &selRef_resolvedAudioVideoMode;
  if ([v0 state] == 4)
  {
    v2 = [v0 remoteMembers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
    lazy protocol witness table accessor for type TUConversationMember and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = specialized Set.count.getter(v3);

    if (v4 == 1)
    {
      v1 = &selRef_avMode;
    }
  }

  v5 = *v1;

  return [v0 v5];
}

void ConversationControlsApertureHelper.makeActiveFaceTimeCallSystemApertureElement(for:alertingStyle:)(void *a1@<X0>, int a2@<W1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemApertureIconVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for SystemApertureIcon(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v77 = a3;
  SystemApertureIconFactory.makeStatusIcon(with:for:)(0, 0, a1);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v76 = a2;
    v75 = v22;
    v36 = outlined init with take of SystemApertureIcon(v13, v22);
    v37 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2C0);
    v38 = (v37)(v36);
    v74 = v16;
    if (v38 && (v39 = v38, v40 = specialized Conversation.avModeForSystemAperture.getter(), v39, v40 == 1))
    {
      v41 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x380))() ^ 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = v37();
    v43 = [v42 joinedActivitySession];

    v44 = v43 == 0;
    if (v43)
    {

      if (v41)
      {
        goto LABEL_14;
      }
    }

    else if (v41)
    {
LABEL_14:
      SystemApertureIconFactory.makeActivityIcon(for:)(a1);
      if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
      {
        outlined destroy of TapInteractionHandler?(v10, &_s15ConversationKit18SystemApertureIconVSgMd);
        if ((v41 & 1) == 0 || (ConversationControlsManager.isOneToOneConversation.getter() & 1) == 0)
        {
          type metadata accessor for SystemApertureEmptyTrailingView();
          v47 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v77 = &protocol witness table for SystemApertureEmptyTrailingView;
          v46 = v74;
          goto LABEL_25;
        }

        (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (!v45)
        {
          swift_unknownObjectRelease();
        }

        v46 = v74;
        type metadata accessor for SystemApertureInCallWaveformTrailingView();
        static WaveformConfigurations.inCallNumberOfBands.getter();
        v47 = SystemApertureInCallWaveformTrailingView.__allocating_init(call:numBands:)(v45);
        v48 = &protocol witness table for SystemApertureInCallWaveformTrailingView;
      }

      else
      {
        outlined init with take of SystemApertureIcon(v10, v19);
        v46 = v74;
        outlined init with copy of SystemApertureIcon(v19, v74);
        v49 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        OUTLINED_FUNCTION_4_73();
        v47 = v50;
        outlined destroy of SystemApertureIcon(v19);
        v48 = &protocol witness table for SystemApertureIconView;
      }

      v77 = v48;
LABEL_25:
      v29 = v47;
      if (v44)
      {
        v51 = type metadata accessor for SystemApertureInCallLeadingView();
        v52 = v75;
        v53 = OUTLINED_FUNCTION_7_8();
        v55 = outlined init with copy of SystemApertureIcon(v53, v54);
        v56 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))(v55);
        v58 = v57;
        ObjectType = swift_getObjectType();
        v78 = v56;
        v27 = specialized SystemApertureInCallLeadingView.__allocating_init(icon:callDurationProvider:)(v46, &v78, v51, ObjectType, *(v58 + 8));
        v28 = &protocol witness table for SystemApertureInCallLeadingView;
      }

      else
      {
        v52 = v75;
        v60 = OUTLINED_FUNCTION_7_8();
        outlined init with copy of SystemApertureIcon(v60, v61);
        v62 = objc_allocWithZone(type metadata accessor for SystemApertureIconView(0));
        OUTLINED_FUNCTION_4_73();
        v27 = v63;
        v28 = &protocol witness table for SystemApertureIconView;
      }

      v35 = ConversationControlsManager.maximumLayoutMode.getter();
      v64 = OUTLINED_FUNCTION_7_8();
      outlined init with copy of SystemApertureIcon(v64, v65);
      v66 = type metadata accessor for SystemApertureIconView(0);
      v67 = objc_allocWithZone(v66);
      OUTLINED_FUNCTION_4_73();
      v31 = v68;
      v69 = OUTLINED_FUNCTION_7_8();
      outlined init with copy of SystemApertureIcon(v69, v70);
      v71 = objc_allocWithZone(v66);
      SystemApertureIconView.init(icon:isDetached:)();
      v33 = v72;

      outlined destroy of SystemApertureIcon(v52);
      v32 = &protocol witness table for SystemApertureIconView;
      v34 = v76;
      v30 = v77;
      goto LABEL_29;
    }

    v44 = 0;
    goto LABEL_14;
  }

  outlined destroy of TapInteractionHandler?(v13, &_s15ConversationKit18SystemApertureIconVSgMd);
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, &static Logger.conversationControls);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BBC58000, v24, v25, "[SystemAperture] missing status icon for activeCall", v26, 2u);
    MEMORY[0x1BFB23DF0](v26, -1, -1);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = -2;
  v35 = 4;
LABEL_29:
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v29;
  *(a4 + 24) = v30;
  *(a4 + 32) = v31;
  *(a4 + 40) = v32;
  *(a4 + 48) = v33;
  *(a4 + 56) = v32;
  *(a4 + 64) = v35;
  *(a4 + 72) = v34;
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(a1, a3, a4, a5, ObjectType, a2);
}

void ConversationControlsApertureHelper.makeLeadingViewType(using:avatarViewController:)(void *a1, void *a2)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v26 = v5;
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v20 = v19;
  ObjectType = swift_getObjectType();
  (*(v20 + 88))(ObjectType, v20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of TapInteractionHandler?(v11, &_s10Foundation3URLVSgMd);
LABEL_5:
    v24 = [a2 view];
    v25 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A8))(v24);
    (*((*v25 & *a2) + 0x58))(v8);
    swift_unknownObjectRelease();
    (*(v26 + 8))(v8, v27);
    goto LABEL_6;
  }

  (*(v14 + 32))(v18, v11, v12);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v22._countAndFlagsBits = URL.relativePath.getter();
  v23 = UIImage.__allocating_init(contentsOfFile:)(v22);
  (*(v14 + 8))(v18, v12);
  if (!v23)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
LABEL_6:
  OUTLINED_FUNCTION_30_0();
}

id outlined bridged method (mbgnnn) of @objc static UIImage._applicationIconImage(forBundleIdentifier:format:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x1BFB209B0]();
  v7 = [a4 _applicationIconImageForBundleIdentifier_format_];

  return v7;
}

void specialized ConversationControlsApertureHelper.makeAvatarUsingCall(_:with:isThirdParty:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v16 - v15;
  if (a3)
  {
    lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    Defaults.init()();
    CallScreeningService.init(overrides:)();
    v18 = type metadata accessor for Features();
    v19 = [objc_allocWithZone(v18) init];
    type metadata accessor for SystemApertureIconFactory(0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E6995EE0];
    v22 = (v20 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_callScreeningService);
    v22[3] = v11;
    v22[4] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v13 + 16))(boxed_opaque_existential_1, v17, v11);
    v24 = (v20 + OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_features);
    v24[3] = v18;
    v24[4] = &protocol witness table for Features;
    *v24 = v19;
    v25 = OBJC_IVAR____TtC15ConversationKit25SystemApertureIconFactory_cachedIconSet;
    v26 = type metadata accessor for SystemApertureIconFactory.SystemApertureIconSet(0);
    __swift_storeEnumTagSinglePayload(v20 + v25, 1, 1, v26);
    v27 = OUTLINED_FUNCTION_7_8();
    v28(v27);
    v29 = specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(a1, v20, a5, a6);
    swift_setDeallocating();
    SystemApertureIconFactory.deinit();
    swift_deallocClassInstance();
    if (v29)
    {
    }

    v30 = type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v31 = [objc_opt_self() clearColor];
    v32 = swift_unknownObjectRetain();
    specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v32, 0, v29, v31, v30, a5, a6);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    type metadata accessor for ConversationControlsBadgingAvatarViewController();
    v33 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2C0);
    v34 = swift_unknownObjectRetain();
    v33(v34);
    v35 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_30_0();

    specialized ConversationControlsBadgingAvatarViewController.__allocating_init(call:conversation:badgeImage:badgeBackgroundColor:)(v36, v37, v38, v39, v40, v41, v42);
  }
}

id specialized ConversationControlsApertureHelper.makeVoipBadgeIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 184);
  v7 = v6(a3, a4);
  v8 = [v7 isSystemProvider];

  if (v8)
  {
    return 0;
  }

  v9 = v6(a3, a4);
  v10 = outlined bridged method (ob) of @objc TUCallProvider.bundleIdentifier.getter(v9);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  v14 = objc_opt_self();
  v15 = outlined bridged method (mbgnnn) of @objc static UIImage._applicationIconImage(forBundleIdentifier:format:)(v12, v13, 5, v14);
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v18 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v12, v13, 1);

    v19 = [v18 localizedName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v15;
}

uint64_t outlined init with take of SystemApertureIcon(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemApertureIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for ConversationHUDControlsView.recipe : ConversationHUDControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0xA0))(v6);
}

void ConversationHUDControlsView.recipe.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  v6 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v6, v4);
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xA0))(v4);
  specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()();
}

uint64_t ConversationHUDControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t ConversationHUDControlsView.recipe.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe;
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v3);
  swift_endAccess();
  ConversationHUDControlsView.recipe.didset();
  return outlined destroy of ConversationControlsRecipe(a1);
}

uint64_t ConversationHUDControlsView.recipe.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ConversationHUDControlsView.context : ConversationHUDControlsView@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t ConversationHUDControlsView.context.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ConversationHUDControlsView.context.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlertTimer : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDControlsView.ephemeralAlertTimer : ConversationHUDControlsView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDControlsView.ephemeralAlertTimer.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDControlsView.ephemeralAlertTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlert : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for ConversationHUDControlsView.ephemeralAlert : ConversationHUDControlsView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);
  v5 = *(a1 + 16);
  outlined copy of ConversationControlsRecipe.View?(*a1, v3);
  return v4(v2, v3, v5);
}

void ConversationHUDControlsView.ephemeralAlert.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    specialized FaceTimeControlsView.displayEphemeralAlert()();
  }

  else
  {
    specialized FaceTimeControlsView.cleanUpEphemeralAlert()();
  }
}

void ConversationHUDControlsView.ephemeralAlert.getter()
{
  swift_beginAccess();
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v0, v1);
  OUTLINED_FUNCTION_9_51();
}

void ConversationHUDControlsView.ephemeralAlert.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  OUTLINED_FUNCTION_9_51();
  outlined copy of ConversationControlsRecipe.View?(v10, v11);
  outlined consume of ConversationControlsRecipe.View?(v8, v9);
  ConversationHUDControlsView.ephemeralAlert.didset();
  OUTLINED_FUNCTION_9_51();
  outlined consume of ConversationControlsRecipe.View?(v12, v13);
}

uint64_t ConversationHUDControlsView.ephemeralAlert.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void ConversationHUDControlsView.cnkContentAlpha.didset()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    v6 = swift_beginAccess();
    (*((*v2 & *v4) + 0x68))(v6, *(v1 + v5));
  }

  v7 = (*((*v2 & *v1) + 0xE0))();
  if (v7)
  {
    outlined consume of ConversationControlsRecipe.View?(v7, v8);
    v9 = (*((*v2 & *v1) + 0x130))();
    v10 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    swift_beginAccess();
    [v9 setAlpha_];
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
    v12 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
    swift_beginAccess();
    [v11 setAlpha_];
  }
}

double ConversationHUDControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ConversationHUDControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  ConversationHUDControlsView.cnkContentAlpha.didset();
}

uint64_t ConversationHUDControlsView.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDControlsView.recipe.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t ConversationHUDControlsView.showCallDetailsButton.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView)) + 0xE0))();
  v3 = (*((*v1 & *v2) + 0xD8))();

  return v3;
}

uint64_t key path getter for ConversationHUDControlsView.buttonShelfView : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

void key path setter for ConversationHUDControlsView.buttonShelfView : ConversationHUDControlsView(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  ConversationHUDControlsView.buttonShelfView.setter(v1);
}

void *ConversationHUDControlsView.buttonShelfView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDControlsView.buttonShelfView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for ConversationHUDControlsView.ephemeralAlertNotice : ConversationHUDControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id ConversationHUDControlsView.ephemeralAlertNotice.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager);
    v6 = objc_allocWithZone(type metadata accessor for ConversationHUDEphemeralNotice());
    v7 = ConversationHUDEphemeralNotice.init(controlsManager:)(v5);
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void ConversationHUDControlsView.ephemeralAlertNotice.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = a1;
}

void (*ConversationHUDControlsView.ephemeralAlertNotice.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDControlsView.ephemeralAlertNotice.getter();
  return ConversationHUDControlsView.ephemeralAlertNotice.modify;
}

void ConversationHUDControlsView.ephemeralAlertNotice.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice);
  *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = v2;
}

id ConversationHUDControlsView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a6;
  v13 = type metadata accessor for ConversationControlsRecipe();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer] = 0;
  v17 = &v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha] = 0x3FF0000000000000;
  v35 = OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView] = 0;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice] = 0;
  outlined init with copy of ConversationControlsRecipe(a1, &v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_recipe]);
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager] = a2;
  v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_context] = a3;
  outlined init with copy of ConversationControlsRecipe(a1, v16);
  v39[0] = 0;
  v18 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsStatusView());
  v19 = a4;
  v20 = a2;
  v36 = a4;
  v37 = a5;
  *&v6[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView] = ConversationHUDControlsStatusView.init(recipe:controlsManager:menuHostViewController:context:presentationStyle:)(v16, v20, a4, a5, a3, v39);
  v21 = a1 + *(v14 + 68);
  if (*(v21 + 40) <= -3)
  {
    v22 = *v21;
    outlined copy of ConversationControlsRecipe.Actions(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32));
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  v24 = v38;
  if (v23)
  {
    outlined init with copy of ConversationControlsRecipe(a1, v16);
    outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(v24, v39);
    v25 = objc_allocWithZone(type metadata accessor for ConversationHUDControlsButtonShelfView());
    v26 = v20;
    v27 = v19;
    v28 = ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(v16, v26, a3, v36, v37, v39);
    v29 = v35;
    swift_beginAccess();
    v30 = *&v7[v29];
    *&v7[v29] = v28;
  }

  v31 = type metadata accessor for ConversationHUDControlsView();
  v40.receiver = v7;
  v40.super_class = v31;
  v32 = objc_msgSendSuper2(&v40, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ConversationHUDControlsView.setupRootView()();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24);
  outlined destroy of ConversationControlsRecipe(a1);
  return v32;
}

void ConversationHUDControlsView.setupRootView()()
{
  v1 = [v0 layer];
  [v1 setAllowsGroupOpacity_];

  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v4();
  [v2 setAlpha_];
  v5 = (*((*v3 & *v0) + 0x130))([v0 addSubview_]);
  [v0 insertSubview:v5 below:v2];

  specialized FaceTimeControlsView.handleUpdateDuringEphemeralAlert()();
  v6 = (*((*v3 & *v0) + 0x118))();
  if (v6)
  {
    v7 = v6;
    v4();
    [v7 setAlpha_];
    [v0 addSubview_];
    if (_UISolariumEnabled())
    {
      v8[3] = type metadata accessor for _GlassGroup();
      v8[4] = MEMORY[0x1E69DBEA8];
      __swift_allocate_boxed_opaque_existential_1(v8);
      _GlassGroup.init(foreground:)();
      UIView._background.setter();
    }
  }

  ConversationHUDControlsView.setupLayoutConstraints()();
}

id ConversationHUDControlsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDControlsView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlertTimer) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_ephemeralAlert;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_buttonShelfView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView____lazy_storage___ephemeralAlertNotice) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDControlsView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsView();
  v1 = objc_msgSendSuper2(&v2, sel_layoutSubviews);
  (*((*MEMORY[0x1E69E7D40] & **&v0[OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_controlsManager]) + 0xA58))(v1);
}

id ConversationHUDControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for FaceTimeControlsView.ephemeralAlert.modify in conformance ConversationHUDControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for FaceTimeControlsView.ephemeralAlertTimer.modify in conformance ConversationHUDControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance ConversationHUDControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance ConversationHUDControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

Swift::Void __swiftcall ConversationHUDControlsView.setupLayoutConstraints()()
{
  v1 = v0;
  v111 = MEMORY[0x1E69E7CC0];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  if (v2() == 2)
  {
    v3 = static Layout.ConversationControls.values.getter(v112);
    v4 = &v114;
  }

  else
  {
    v3 = static Layout.ConversationControls.values.getter(v112);
    v4 = &v113;
  }

  v5 = *v4;
  if ((v2)(v3) == 2)
  {
    static Layout.ConversationControls.values.getter(v115);
    v6 = &v117;
  }

  else
  {
    static Layout.ConversationControls.values.getter(v115);
    v6 = &v116;
  }

  v7 = *v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  [v0 addLayoutGuide_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = [v8 topAnchor];
  v11 = [v1 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v12 = OUTLINED_FUNCTION_2_89();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [v8 bottomAnchor];
  v16 = [v1 &off_1E7FE9D20 + 5];
  v17 = OUTLINED_FUNCTION_2_89();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [v8 leadingAnchor];
  v21 = [v1 leadingAnchor];
  v22 = OUTLINED_FUNCTION_2_89();
  v24 = [v22 v23];

  *(v9 + 48) = v24;
  v25 = [v8 trailingAnchor];
  v26 = [v1 trailingAnchor];
  v27 = OUTLINED_FUNCTION_2_89();
  v29 = [v27 v28];

  *(v9 + 56) = v29;
  specialized Array.append<A>(contentsOf:)(v9);
  v30 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BC4BA7F0;
  v32 = [v30 heightAnchor];
  static Layout.ConversationControls.values.getter(v118);
  v33 = [v32 constraintGreaterThanOrEqualToConstant_];

  *(v31 + 32) = v33;
  v34 = [v30 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v35 = [v8 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
  v36 = [v34 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v38, v37, sel_setPriority_);
  *(v31 + 40) = v36;
  v39 = [v30 leadingAnchor];
  v40 = [v8 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v43, v42, sel_setPriority_);
  *(v31 + 48) = v41;
  v44 = [v30 trailingAnchor];
  v45 = [v8 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  OUTLINED_FUNCTION_7_59(v48, v47, sel_setPriority_);
  *(v31 + 56) = v46;
  v49 = OUTLINED_FUNCTION_10_44();
  v50 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x130);
  v51 = (v50)(v49);
  [v51 setTranslatesAutoresizingMaskIntoConstraints_];

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BC370;
  v53 = v50();
  v54 = [v53 heightAnchor];

  static Layout.ConversationControls.values.getter(v119);
  v55 = [v54 constraintGreaterThanOrEqualToConstant_];

  *(v52 + 32) = v55;
  v56 = v50();
  v57 = [v56 topAnchor];

  v58 = [v8 topAnchor];
  v59 = OUTLINED_FUNCTION_8_12();
  v61 = [v59 v60];

  v64 = OUTLINED_FUNCTION_7_59(v63, v62, sel_setPriority_);
  *(v52 + 40) = v61;
  v65 = (v50)(v64);
  v66 = [v65 bottomAnchor];

  v67 = [v30 bottomAnchor];
  static Layout.ConversationControls.values.getter(v120);
  v68 = OUTLINED_FUNCTION_8_12();
  v70 = [v68 v69];

  *(v52 + 48) = v70;
  OUTLINED_FUNCTION_10_44();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1BC4BA930;
  v72 = v50();
  v73 = [v72 leadingAnchor];

  v74 = [v8 leadingAnchor];
  v75 = OUTLINED_FUNCTION_8_12();
  v77 = [v75 v76];

  v80 = OUTLINED_FUNCTION_7_59(v79, v78, sel_setPriority_);
  *(v71 + 32) = v77;
  v81 = (v50)(v80);
  v82 = [v81 trailingAnchor];

  v83 = [v8 trailingAnchor];
  v84 = OUTLINED_FUNCTION_8_12();
  v86 = [v84 v85];

  OUTLINED_FUNCTION_7_59(v88, v87, sel_setPriority_);
  *(v71 + 40) = v86;
  v89 = OUTLINED_FUNCTION_10_44();
  v90 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x118))(v89);
  if (v90)
  {
    v91 = v90;
    [v91 setTranslatesAutoresizingMaskIntoConstraints_];
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1BC4BA930;
    v93 = [v91 topAnchor];
    v94 = [v30 bottomAnchor];
    static Layout.ConversationControls.values.getter(v121);
    v95 = [v93 constraintEqualToAnchor:v94 constant:v121[16]];

    *(v92 + 32) = v95;
    v96 = [v91 bottomAnchor];
    v97 = [v8 bottomAnchor];
    v98 = OUTLINED_FUNCTION_6_60();

    *(v92 + 40) = v98;
    OUTLINED_FUNCTION_10_44();
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1BC4BA930;
    v100 = [v91 leadingAnchor];
    v101 = [v8 leadingAnchor];
    v102 = OUTLINED_FUNCTION_6_60();

    *(v99 + 32) = v102;
    v103 = [v91 trailingAnchor];

    v104 = [v8 trailingAnchor];
    v105 = OUTLINED_FUNCTION_6_60();

    *(v99 + 40) = v105;
    specialized Array.append<A>(contentsOf:)(v99);
  }

  else
  {
    v106 = [v30 bottomAnchor];
    v107 = [v8 bottomAnchor];
    v108 = [v106 constraintEqualToAnchor_];

    MEMORY[0x1BFB20CC0]();
    if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v109 = objc_opt_self();
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v109 activateConstraints_];
}

uint64_t type metadata accessor for ConversationHUDControlsView()
{
  result = type metadata singleton initialization cache for ConversationHUDControlsView;
  if (!type metadata singleton initialization cache for ConversationHUDControlsView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ConversationHUDControlsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
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

void *static ConversationHUDControlsButtonShelfView.Configuration.fillEqually.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = static UIContentSizeCategory.>= infix(_:_:)();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  result = static Layout.ConversationControls.values.getter(v8);
  v7 = v8[30];
  *a1 = v4 & 1;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  return result;
}

id ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha] = 0x3FF0000000000000;
  v27.receiver = v6;
  v27.super_class = type metadata accessor for ConversationHUDControlsButtonShelfView();
  v13 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = a1 + *(type metadata accessor for ConversationControlsRecipe() + 60);
  v15 = *(v14 + 40);
  if (v15 < 0xFE && (v15 & 0x80) != 0)
  {
    v17 = *(v14 + 8);
    v26 = *v14;
    v18 = *(v14 + 16);
    v19 = *(v14 + 24);
    v20 = *(v14 + 32);
    [v13 setAxis_];
    [v13 setAlignment_];
    v21 = [v13 setDistribution_];
    if ((v15 & 1) == 0)
    {
      v21 = [v13 setSpacing_];
    }

    MEMORY[0x1EEE9AC00](v21);
    v22[2] = a2;
    v22[3] = a4;
    v22[4] = a5;
    v23 = a3;
    v24 = a6;
    v25 = v13;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:), v22, v26);
  }

  else
  {
  }

  outlined destroy of ConversationControlsRecipe(a1);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a6);
  return v13;
}

void closure #1 in ConversationHUDControlsButtonShelfView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v10 = v9;
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = v10;
  static Layout.ConversationControls.values.getter(v29);
  [v14 _setTouchInsets_];

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    [v15 setPreferredBehavioralStyle_];
  }

  if (a5 == 2 && (type metadata accessor for ConversationControlsButton(), (v16 = swift_dynamicCastClass()) != 0))
  {
    v17 = v16;
    v18 = *MEMORY[0x1E69DDC50];
    v19 = v14;
    [v17 setMaximumContentSizeCategory_];
    v20 = &v17[OBJC_IVAR___CNKConversationControlsButton_localizedName];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];
    objc_allocWithZone(type metadata accessor for LabeledButtonView());

    v28 = v19;
    v23 = LabeledButtonView.init(control:text:)(v17, v22, v21);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      [a7 addArrangedSubview_];
    }
  }

  else
  {
    [a7 addArrangedSubview_];
  }

  if ((*(v12 + 32))(ObjectType, v12) == 1)
  {
    v24 = [v14 widthAnchor];
    v25 = [v14 heightAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    v30 = 1148846080;
    lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v27) = v31;
    [v26 setPriority_];
    [v26 setActive_];
  }
}

uint64_t ConversationHUDControlsButtonShelfView.cnkContentAlpha.didset(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  result = swift_beginAccess();
  if (*&v1[v4] != a1)
  {
    v6 = [v1 arrangedSubviews];
    type metadata accessor for UIView();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    result = specialized Array.count.getter(v7);
    if (result)
    {
      v8 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1BFB22010](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v11))
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          (*(v13 + 16))(ObjectType, v13, *&v2[v4]);
        }

        else
        {
          [v11 setAlpha_];
        }
      }
    }
  }

  return result;
}

double ConversationHUDControlsButtonShelfView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ConversationHUDControlsButtonShelfView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return ConversationHUDControlsButtonShelfView.cnkContentAlpha.didset(v4);
}

void (*ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha;
  swift_beginAccess();
  v3[3] = *(v1 + v4);
  return ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify;
}

void ConversationHUDControlsButtonShelfView.cnkContentAlpha.modify(uint64_t a1)
{
  v1 = *a1;
  ConversationHUDControlsButtonShelfView.cnkContentAlpha.setter(*(*a1 + 24));

  free(v1);
}

id ConversationHUDControlsButtonShelfView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDControlsButtonShelfView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit38ConversationHUDControlsButtonShelfView_cnkContentAlpha) = 0x3FF0000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ConversationHUDControlsButtonShelfView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ConversationHUDControlsButtonShelfView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDControlsButtonShelfView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ConversationHUDControlsButtonShelfView.Configuration.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t static ConversationHUDControlsButtonShelfView.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ConversationHUDControlsButtonShelfView.Configuration.init(axis:alignment:distribution:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

double static ConversationHUDControlsButtonShelfView.Configuration.default.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 3;
  *(a1 + 16) = xmmword_1BC4B6480;
  *(a1 + 32) = 1;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ConversationHUDControlsButtonShelfView.Configuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConversationHUDControlsButtonShelfView.Configuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

BOOL ConversationControlsType.isPendingAuthorizationRequest.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11;
  if (v11)
  {
    outlined destroy of ConversationControlsType(v10);
  }

  return v8 == 0;
}

uint64_t ConversationControlsType.isShareNameAndPhoto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v22[0]);
  if (v24 == 7)
  {
    v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v22[2], v23);
    OUTLINED_FUNCTION_11_49(v16, v17);
    if (v19 == 12 && v18 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v22);
  return 0;
}

uint64_t ForegroundApp.AutomaticShareState.shortTitle.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = [objc_opt_self() conversationKit];
  if (v1 == 1)
  {
    v3 = 0x7478654E206B7341;
    v4 = 0x656D695420;
  }

  else
  {
    v3 = 0x6974616D6F747541;
    v4 = 0x796C6C6163;
  }

  OUTLINED_FUNCTION_68(v3, v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000, 0x61737265766E6F43, 0xEF74694B6E6F6974);

  return OUTLINED_FUNCTION_15_14();
}

uint64_t ForegroundApp.AutomaticShareState.title.getter()
{
  v0 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_68(v2, v1 | 0x8000000000000000, v3, v4);

  return OUTLINED_FUNCTION_15_14();
}

Class static NSAttributedString.localizedString(_:prefixImage:imageBounds:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);

  v6._countAndFlagsBits = OUTLINED_FUNCTION_38_2();
  v7.super.isa = NSAttributedString.__allocating_init(string:)(v6).super.isa;
  if (a3)
  {
    v8 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v9 = a3;
    v10 = [v8 init];
    v11 = [objc_opt_self() textAttachmentWithImage_];
    v12 = v11;
    if ((*(a4 + 32) & 1) == 0)
    {
      [v11 setBounds_];
    }

    type metadata accessor for AppUtilities();
    if (static AppUtilities.isRTL.getter())
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      isa = NSAttributedString.__allocating_init(string:)(v13).super.isa;
      v15 = OUTLINED_FUNCTION_52_11();
      [v15 v16];

      v17 = [objc_opt_self() attributedStringWithAttachment_];
      v18 = OUTLINED_FUNCTION_52_11();
      [v18 v19];

      v20 = [(objc_class *)v7.super.isa length];
    }

    else
    {
      v21 = [objc_opt_self() attributedStringWithAttachment_];
      [v10 appendAttributedString_];

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      v23 = NSAttributedString.__allocating_init(string:)(v22).super.isa;
      v24 = OUTLINED_FUNCTION_52_11();
      [v24 v25];

      v20 = 0;
    }

    [(objc_class *)v7.super.isa insertAttributedString:v10 atIndex:v20];
  }

  return v7.super.isa;
}

Swift::Bool __swiftcall LSPropertyList.contains(entitlement:)(Swift::String entitlement)
{
  v2 = MEMORY[0x1BFB209B0](entitlement._countAndFlagsBits, entitlement._object);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  v3 = [v1 objectForKey:v2 ofClass:swift_getObjCClassFromMetadata()];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    outlined destroy of CallControlsService?(v9, &_sypSgMd);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v6 BOOLValue];

  return v4;
}

uint64_t String.localizedConversationControls.getter()
{
  OUTLINED_FUNCTION_6_7();
  v0 = [objc_opt_self() conversationKit];
  v1 = OUTLINED_FUNCTION_38_2();
  v2 = MEMORY[0x1BFB209B0](v1);
  v3 = MEMORY[0x1BFB209B0](0, 0xE000000000000000);
  v4 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC4FEB70);
  v5 = [v0 localizedStringForKey:v2 value:v3 table:v4];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return OUTLINED_FUNCTION_46();
}

uint64_t static ConversationControlsSecondaryPillButtonType.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeO_ACtMd);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v16 - v2);
  v5 = *(v4 + 56);
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_46();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_25_25();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v3 + v5, v7);
        v8 = OUTLINED_FUNCTION_46();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v8, v9);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_25_25();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v3, v14);
      v12 = OUTLINED_FUNCTION_22_28();
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 3u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 4u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 5u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    case 6u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 7u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 8u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 9u:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xAu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xBu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    case 0xCu:
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

LABEL_21:
      v10 = 1;
      break;
    default:
      v6 = *v3;
      OUTLINED_FUNCTION_22_28();
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_23:
        OUTLINED_FUNCTION_26_23();
        v12 = v3 + v5;
LABEL_24:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v12, v11);
        v10 = 0;
      }

      else
      {
        v15 = *(v3 + v5);
        v10 = [v6 isEqual_];
      }

      break;
  }

  return v10;
}

BOOL ConversationControlsSecondaryPillButtonType.isSNaP.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = swift_getEnumCaseMultiPayload() - 9;
  if (v2 >= 3)
  {
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  }

  return v2 < 3;
}

uint64_t ConversationControlsSecondaryPillButtonType.isScreenSharing.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = 1;
  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_4;
  }

  if (EnumCaseMultiPayload != 12)
  {
    v3 = 0;
LABEL_4:
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, type metadata accessor for ConversationControlsSecondaryPillButtonType);
  }

  return v3;
}

uint64_t ConversationControlsContext.debugDescription.getter(char a1)
{
  if (!a1)
  {
    return 0x70416D6574737973;
  }

  if (a1 == 1)
  {
    return 0x72656E6E6162;
  }

  return 0x6C6C61436E69;
}

uint64_t ConversationControlsSizeClass.description.getter(uint64_t a1)
{
  result = 4478280;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 0x656369746F6ELL;
      break;
    case 3:
      result = 0x676F6C616964;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t ConversationControlsSizeClass.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ConversationControlsSizeClass@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ConversationControlsSizeClass.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int RejectedRemoteControlRequesetContext.Reason.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

unint64_t HUDInfoButtonType.debugDescription.getter()
{
  v1 = 1701736302;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

Swift::Int HUDInfoButtonType.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

Swift::Double __swiftcall ConversationControlsType.dismissTimerDuration(inCallControls:)(Swift::Bool inCallControls)
{
  outlined init with copy of ConversationControlsType(v1, &v23);
  switch(v27)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v23, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v15 = OUTLINED_FUNCTION_44_0();
      v13 = v16(v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v13;
    case 2:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_34;
    case 3:
    case 6:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_3;
    case 4:
      outlined destroy of ConversationControlsType(&v23);
      goto LABEL_7;
    case 5:
      goto LABEL_7;
    case 7:
      if (!(v25 | v26 | v23 | v24 | *(&v23 + 1)))
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_49_12();
      if (v3 && v8 == 0)
      {
        goto LABEL_3;
      }

      if (v7 == 2 && v8 == 0)
      {
        goto LABEL_7;
      }

      if (v7 == 3 && !v8)
      {
        goto LABEL_3;
      }

      if (v7 == 4 && !v8 || (v7 - 5) <= 3 && !v8)
      {
        goto LABEL_7;
      }

      if (v7 == 9 && !v8)
      {
        goto LABEL_3;
      }

      if (v7 == 10 && !v8)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9();
        }

        OUTLINED_FUNCTION_0_1();
        (*(v11 + 1008))();
        return v5;
      }

      if (v7 == 11 && !v8)
      {
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_63_7();
      if (v3 && !v18)
      {
        goto LABEL_45;
      }

      v21 = v19 == 16 || v19 == 14;
      if (v21 && !v18 || v17 == 18 && !v18)
      {
        goto LABEL_7;
      }

      if (v17 == 19 && !v18)
      {
LABEL_45:
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9();
        }

        OUTLINED_FUNCTION_0_1();
        (*(v20 + 984))();
        return v5;
      }

      if (v19 == 20 && !v18)
      {
        goto LABEL_7;
      }

      if (v17 == 22 && !v18)
      {
        goto LABEL_62;
      }

      if ((v17 - 23) <= 1 && !v18)
      {
        goto LABEL_7;
      }

      if ((v17 - 25) > 1 || v18)
      {
        if (v17 == 27 && !v18 || v17 != 28 || v18)
        {
LABEL_7:
          v3 = one-time initialization token for shared == -1;
          goto LABEL_8;
        }

LABEL_62:
        if (one-time initialization token for shared != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_5;
      }

LABEL_3:
      v3 = one-time initialization token for shared == -1;
      if (inCallControls)
      {
        if (one-time initialization token for shared != -1)
        {
LABEL_63:
          OUTLINED_FUNCTION_0_9();
        }

LABEL_5:
        OUTLINED_FUNCTION_0_1();
        (*(v4 + 960))();
        return v5;
      }

LABEL_8:
      if (!v3)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      (*(v6 + 952))();
      return v5;
    default:
LABEL_34:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_0_9();
      }

      OUTLINED_FUNCTION_0_1();
      return (*(v12 + 968))();
  }
}

uint64_t ConversationControlsType.isInterruptable.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v36);
  v1 = v41;
  outlined destroy of ConversationControlsType(&v36);
  if (v1 == 6 || (OUTLINED_FUNCTION_14_3(), v10 = OUTLINED_FUNCTION_38_15(v2, v3, v4, v5, v6, v7, v8, v9, v36, v37, v38, v39, v40, v41), OUTLINED_FUNCTION_56_8(v10, v11, v12, v13, v14, v15, v16, v17, v36), (v1 & 1) != 0))
  {
    v18 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_3();
    v27 = OUTLINED_FUNCTION_38_15(v19, v20, v21, v22, v23, v24, v25, v26, v36, v37, v38, v39, v40, v41);
    OUTLINED_FUNCTION_56_8(v27, v28, v29, v30, v31, v32, v33, v34, v36);
    v18 = v1 ^ 1;
  }

  return v18 & 1;
}

uint64_t ConversationControlsType.exclusiveSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v18[0]);
  result = 0;
  switch(v19)
  {
    case 1:
    case 2:
    case 3:
      outlined destroy of ConversationControlsType(v18);
      return 0;
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v18);
      return 0;
    case 5:
      return result;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (!v9)
      {
        return 0;
      }

      OUTLINED_FUNCTION_49_12();
      v12 = v12 && v11 == 0;
      if (v12)
      {
        return 0;
      }

      v13 = v10 == 2 && v11 == 0;
      if (v13 || v10 == 3 && !v11 || v10 == 4 && !v11)
      {
        return 0;
      }

      if ((v10 - 5) <= 4 && !v11)
      {
        return 0;
      }

      v14 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 0xA && !v11)
      {
        return 3;
      }

      if (v14 == 12 && !v11)
      {
        return 0;
      }

      v16 = v10 == 18 || v14 == 16 || v14 == 14;
      if (v16 && !v11)
      {
        return 0;
      }

      if (v10 == 19 && !v11)
      {
        return 0;
      }

      v17 = v10 == 24 || (v10 & 0xFFFFFFFFFFFFFFFCLL) == 20;
      if (v17 && !v11 || (v10 - 25) > 1 || v11)
      {
        return 0;
      }

      else
      {
        return 3;
      }

    default:
      return 0;
  }
}

void ConversationControlsType.canShowOverICS.getter()
{
  OUTLINED_FUNCTION_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-v5];
  updated = type metadata accessor for SystemUpdateNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_79_0();
  type metadata accessor for AccountUpdateNotice(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  outlined init with copy of ConversationControlsType(v1, &v25);
  switch(v28)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v25, v24);
      outlined init with copy of IDSLookupManager(v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        v14 = OUTLINED_FUNCTION_23_29();
LABEL_15:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v14, v15);
        goto LABEL_44;
      }

      outlined init with copy of IDSLookupManager(v24, v23);
      OUTLINED_FUNCTION_52_11();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_28_24();
        v14 = v2;
        goto LABEL_15;
      }

      outlined init with copy of IDSLookupManager(v24, v23);
      if (OUTLINED_FUNCTION_57_7())
      {
        OUTLINED_FUNCTION_12();
        __swift_storeEnumTagSinglePayload(v19, v20, v21, updated);
        OUTLINED_FUNCTION_27_22();
        outlined init with take of SystemUpdateNotice();
        if (!*(v0 + 16))
        {
          OUTLINED_FUNCTION_30_16();
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_31_19();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v24);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, updated);
        outlined destroy of CallControlsService?(v6, &_s15ConversationKit18SystemUpdateNoticeVSgMd);
      }

LABEL_44:
      OUTLINED_FUNCTION_30_0();
      return;
    case 3:
    case 4:
      outlined destroy of ConversationControlsType(&v25);
      goto LABEL_44;
    case 5:
      goto LABEL_44;
    case 6:
      outlined destroy of ConversationControlsType(&v25);
      Features.callManagerEnabled.getter();
      goto LABEL_44;
    case 7:
      OUTLINED_FUNCTION_11_49(v27, v26);
      if (v12 == 4 && !v13)
      {
        goto LABEL_44;
      }

      if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 5 && !v13)
      {
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_63_7();
      if (v22 && !v17)
      {
        goto LABEL_20;
      }

      v22 = v18 == 16 || v16 == 18;
      if (!v22 || v17)
      {
        if (v16 == 19 && !v17)
        {
LABEL_20:
          Features.isNameAndPhotoC3Enabled.getter();
        }

        else if (v16 == 21 && !v17)
        {
LABEL_9:
          Features.shouldShowFullScreenCallWaiting.getter();
        }

        else if (((v16 - 23) > 1 || v17) && ((v16 - 25) > 1 || v17) && (v16 != 27 || v17) && (v16 != 31 || v17))
        {
          goto LABEL_43;
        }
      }

      goto LABEL_44;
    default:
LABEL_43:
      outlined destroy of ConversationControlsType(&v25);
      goto LABEL_44;
  }
}

uint64_t ConversationControlsType.canShowOverICSAndInCallControls.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18SystemUpdateNoticeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  updated = type metadata accessor for SystemUpdateNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_10();
  type metadata accessor for SessionActionNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v10 = OUTLINED_FUNCTION_79_0();
  type metadata accessor for AccountUpdateNotice(v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  outlined init with copy of ConversationControlsType(v1, v22);
  if (v23 == 1)
  {
    outlined init with take of TapInteractionHandler(v22, v21);
    outlined init with copy of IDSLookupManager(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      v12 = OUTLINED_FUNCTION_23_29();
LABEL_7:
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v12, v13);
      v15 = 0;
      return v15 & 1;
    }

    outlined init with copy of IDSLookupManager(v21, v20);
    OUTLINED_FUNCTION_52_11();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_28_24();
      v12 = v2;
      goto LABEL_7;
    }

    outlined init with copy of IDSLookupManager(v21, v20);
    if (OUTLINED_FUNCTION_57_7())
    {
      v15 = 1;
      OUTLINED_FUNCTION_12();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, updated);
      OUTLINED_FUNCTION_27_22();
      outlined init with take of SystemUpdateNotice();
      if (!*(v0 + 16))
      {
        OUTLINED_FUNCTION_30_16();
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_31_19();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      v15 = 1;
      __swift_storeEnumTagSinglePayload(v6, 1, 1, updated);
      outlined destroy of CallControlsService?(v6, &_s15ConversationKit18SystemUpdateNoticeVSgMd);
    }
  }

  else
  {
    ConversationControlsType.canShowOverICS.getter();
    v15 = v14;
    outlined destroy of ConversationControlsType(v22);
  }

  return v15 & 1;
}

uint64_t ConversationControlsType.wantsBannerAndJindo.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v25[0]);
  v16 = 1;
  if (v27 == 4)
  {
    goto LABEL_12;
  }

  if (v27 != 5)
  {
    if (v27 != 7 || ((v18 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v26), v17 != 31) ? (v20 = v17 == 26) : (v20 = 1), (v21 = vorrq_s8(v19, v18), v22 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), v20) ? (v23 = *&v22 == 0) : (v23 = 0), !v23))
    {
      v16 = 0;
LABEL_12:
      outlined destroy of ConversationControlsType(v25);
    }
  }

  return v16;
}

uint64_t ConversationControlsType.wantsLockScreenPresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v24[0]);
  if (v26 == 5)
  {
    return 1;
  }

  if (v26 == 7)
  {
    v17 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v24[0], v24[1], v24[2], v25);
    v19 = v16 == 31 || v16 == 26;
    v20 = vorrq_s8(v18, v17);
    v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    if (v19 && *&v21 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v24);
  return 0;
}

uint64_t ConversationControlsType.canShowWhileHomedOut.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 7)
  {
    v16 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
    OUTLINED_FUNCTION_11_49(v16, v17);
    OUTLINED_FUNCTION_63_7();
    v20 = v20 || v18 == 19;
    if (v20 && v19 == 0)
    {
      return 0;
    }
  }

  outlined destroy of ConversationControlsType(v23);
  return 1;
}

uint64_t ConversationControlsType.isSNaP.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 7)
  {
    v16 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
    OUTLINED_FUNCTION_11_49(v16, v17);
    OUTLINED_FUNCTION_63_7();
    v20 = v20 || v18 == 19;
    if (v20 && v19 == 0)
    {
      return 1;
    }
  }

  outlined destroy of ConversationControlsType(v23);
  return 0;
}

BOOL ConversationControlsType.isNotice.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11 == 1;
  outlined destroy of ConversationControlsType(v10);
  return v8;
}

uint64_t ConversationControlsType.accountUpdateNotice.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, v8);
  if (v9 == 1)
  {
    outlined init with take of TapInteractionHandler(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
    updated = type metadata accessor for AccountUpdateNotice(0);
    v4 = OUTLINED_FUNCTION_57_7();
    return __swift_storeEnumTagSinglePayload(a1, v4 ^ 1u, 1, updated);
  }

  else
  {
    v6 = type metadata accessor for AccountUpdateNotice(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
    return outlined destroy of ConversationControlsType(v8);
  }
}

uint64_t ConversationControlsType.isLaguna.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 3)
  {
    v21 = 1;
  }

  else
  {
    if (v25 == 7)
    {
      v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
      OUTLINED_FUNCTION_11_49(v16, v17);
      if (v19 == 4 && v18 == 0)
      {
        return 1;
      }
    }

    v21 = 0;
  }

  outlined destroy of ConversationControlsType(v23);
  return v21;
}

uint64_t ConversationControlsType.wantsSessionSizeClass.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v21[0]);
  v16 = 1;
  if (v23)
  {
    if (v23 == 2)
    {
LABEL_7:
      outlined destroy of ConversationControlsType(v21);
      return v16;
    }

    if (v23 != 7 || v21[0] != 4 || (v17 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, 4, v21[1], v21[2], v22), OUTLINED_FUNCTION_61_7(v17, v18), v19))
    {
      v16 = 0;
      goto LABEL_7;
    }
  }

  return v16;
}

BOOL ConversationControlsType.requiresHandedOffCall.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v10[0]);
  v8 = v11 == 2;
  outlined destroy of ConversationControlsType(v10);
  return v8;
}

uint64_t ConversationControlsType.supportsWaitingConversations.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v25[0]);
  if (v27 == 2)
  {
    v23 = 1;
  }

  else
  {
    if (v27 == 7)
    {
      v17 = OUTLINED_FUNCTION_21_27(v8, v9, v10, v11, v12, v13, v14, v15, v25[0], v25[1], v25[2], v26);
      v19 = v16 == 31 || v16 == 3;
      v20 = vorrq_s8(v18, v17);
      v21 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      if (v19 && *&v21 == 0)
      {
        return 1;
      }
    }

    v23 = 0;
  }

  outlined destroy of ConversationControlsType(v25);
  return v23;
}

uint64_t ConversationControlsType.associatedNotice.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, v4);
  if (v5 == 1)
  {
    return outlined init with take of TapInteractionHandler(v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return outlined destroy of ConversationControlsType(v4);
}

uint64_t ConversationControlsType.wantsUpdateAnimationAfter.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v19[0]);
  result = 0;
  switch(v20)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v19);
      goto LABEL_3;
    case 5:
      goto LABEL_18;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (v13 && ((v14 = v12 | v10 | v11, (v9 - 1) <= 3) ? (v15 = v14 == 0) : (v15 = 0), !v15 && (v9 == 5 ? (v16 = v14 == 0) : (v16 = 0), v16 || (v9 != 6 || v14) && (v9 == 7 && !v14 || (v9 != 20 ? (v17 = (v9 & 0xFFFFFFFFFFFFFFFCLL) == 16) : (v17 = 1), !v17 ? (v18 = (v9 & 0xFFFFFFFFFFFFFFF8) == 8) : (v18 = 1), (!v18 || v14) && ((v9 - 21) <= 3 && !v14 || (v9 != 25 || v14) && (v9 == 26 && !v14 || (v9 - 27) > 2 || v14)))))))
      {
LABEL_18:
        result = 1;
      }

      else
      {
LABEL_3:
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

void ConversationControlsType.wantsUpdateAnimationBefore.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v9[0]);
  switch(v10)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
      outlined destroy of ConversationControlsType(v9);
      break;
    case 7:
      OUTLINED_FUNCTION_17_38();
      if (v8)
      {
        OUTLINED_FUNCTION_49_12();
      }

      break;
    default:
      return;
  }
}

uint64_t ConversationControlsType.shouldUndimScreen.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_40_14(a1, a2, a3, a4, a5, a6, a7, a8, v23[0]);
  if (v25 == 4)
  {
    v21 = 1;
  }

  else
  {
    if (v25 == 7)
    {
      v16 = OUTLINED_FUNCTION_33_21(v8, v9, v10, v11, v12, v13, v14, v15, v23[0], v23[1], v23[2], v24);
      OUTLINED_FUNCTION_11_49(v16, v17);
      if (v19 == 26 && v18 == 0)
      {
        return 1;
      }
    }

    v21 = 0;
  }

  outlined destroy of ConversationControlsType(v23);
  return v21;
}

void ConversationControlsType.hash(into:)()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  outlined init with copy of ConversationControlsType(v0, &v22);
  v8 = v22;
  switch(v23)
  {
    case 1:
      outlined init with take of TapInteractionHandler(&v22, v19);
      String.hash(into:)();
      v14 = v20;
      v15 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      (*(v15 + 8))(v14, v15);
      _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v3 + 8))(v7, v1);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return;
    case 2:
      OUTLINED_FUNCTION_10_45();
      String.hash(into:)();
      if (*(&v8 + 1))
      {
        Hasher._combine(_:)(1u);
        goto LABEL_6;
      }

      Hasher._combine(_:)(0);
      return;
    case 3:
      OUTLINED_FUNCTION_10_45();
      String.hash(into:)();
      NSObject.hash(into:)();

      return;
    case 4:
      OUTLINED_FUNCTION_54_9();
      String.hash(into:)();
LABEL_6:
      OUTLINED_FUNCTION_44_0();
      String.hash(into:)();
      goto LABEL_15;
    case 5:
      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_19_24();
      v19[0] = v17;
      v19[1] = v16;
      MEMORY[0x1BFB20B10](v17 + 36, 0x80000001BC5021A0);
      String.hash(into:)();
LABEL_15:

      return;
    case 6:
      String.hash(into:)();
      ObjectType = swift_getObjectType();
      (*(*(&v8 + 1) + 56))(ObjectType, *(&v8 + 1));
      String.hash(into:)();

      swift_unknownObjectRelease();
      return;
    case 7:
      OUTLINED_FUNCTION_47_11();
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = v9 | *(&v8 + 1) | v10 | v11;
      if (v8 == 1 && !v13)
      {
        goto LABEL_11;
      }

      if (v8 == 2 && !v13 || v8 == 3 && !v13)
      {
        goto LABEL_21;
      }

      if (v8 == 4 && !v13)
      {
        goto LABEL_27;
      }

      if (v8 == 5 && !v13)
      {
        goto LABEL_21;
      }

      if (v8 == 6 && !v13)
      {
        goto LABEL_27;
      }

      if (v8 == 7 && !v13)
      {
LABEL_11:
        OUTLINED_FUNCTION_10_45();
        goto LABEL_21;
      }

      if (v8 == 8 && !v13 || v8 == 9 && !v13 || v8 == 10 && !v13 || v8 == 11 && !v13 || v8 == 12 && !v13)
      {
        goto LABEL_27;
      }

      if (v8 == 13 && !v13)
      {
        goto LABEL_21;
      }

      if (v8 == 14 && !v13 || v8 == 15 && !v13 || v8 == 16 && !v13 || v8 == 17 && !v13 || v8 == 18 && !v13 || v8 == 19 && !v13 || v8 == 20 && !v13 || v8 == 21 && !v13 || v8 == 22 && !v13 || v8 == 23 && !v13 || v8 == 24 && !v13)
      {
        goto LABEL_27;
      }

      if ((v8 != 25 || v13) && (v8 != 26 || v13))
      {
        if (v8 == 27 && !v13)
        {
LABEL_27:
          OUTLINED_FUNCTION_10_45();
        }
      }

      else
      {
        OUTLINED_FUNCTION_54_9();
      }

LABEL_21:
      String.hash(into:)();
      return;
    default:
      goto LABEL_27;
  }
}

void static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)()
{
  OUTLINED_FUNCTION_6_7();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v0 + 184))(ObjectType, v0);
  static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)(v4, v2);
}

double static ConversationControlsType.firstOrThirdPartyIncomingCall(for:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 supportsDynamicSystemUI] && (v4 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69D8BE8]), sel_init), v5 = objc_msgSend(v4, sel_groupConversations), v4, v5) && (TUDeviceHasChinaSKU() & 1) != 0)
  {
    v6 = 23;
  }

  else
  {
    v7 = [a1 isSystemProvider];
    v6 = 7;
    if (v7)
    {
      v6 = 5;
    }
  }

  *a2 = v6;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 7;
  return result;
}

void static ConversationControlsType.screenOrScreenedCall(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v64 = v2;
  v62 = type metadata accessor for CallScreeningService();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  v9 = type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v63 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v61 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = [objc_allocWithZone(type metadata accessor for Features()) init];
  v24 = Features.receptionistEnabled.getter();

  if (v24)
  {
    v66[3] = &type metadata for ScreeningStatusOverride;
    v66[4] = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
    type metadata accessor for Defaults();
    swift_allocObject();
    v66[0] = Defaults.init()();
    CallScreeningService.init(overrides:)();
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(v66, ObjectType, v1);
    CallScreeningService.screeningStatusForCall(_:)();
    __swift_destroy_boxed_opaque_existential_1(v66);
    (*(v4 + 8))(v8, v62);
    v26 = MEMORY[0x1E6995EA0];
    v27 = MEMORY[0x1E6995E98];
  }

  else
  {
    v28 = swift_getObjectType();
    v29 = (*(v1 + 144))(v28, v1);
    v27 = MEMORY[0x1E6995E98];
    v26 = MEMORY[0x1E6995EA0];
    if (v29)
    {
      v30 = MEMORY[0x1E6995EA0];
    }

    else
    {
      v30 = MEMORY[0x1E6995E98];
    }

    (*(v11 + 104))(v19, *v30, v9);
    (*(v11 + 32))(v22, v19, v9);
  }

  v31 = *(v11 + 16);
  v31(v65, v22, v9);
  v32 = OUTLINED_FUNCTION_2_40();
  v34 = v33(v32);
  v35 = v63;
  if (v34 == *MEMORY[0x1E6995EA8])
  {
    v36 = *(v11 + 8);
    v36(v22, v9);
    v37 = OUTLINED_FUNCTION_2_40();
    (v36)(v37);
    v38 = 21;
LABEL_9:
    OUTLINED_FUNCTION_53_9(v38);
LABEL_12:
    *(v39 + 40) = 7;
    goto LABEL_13;
  }

  if (v34 == *v27)
  {
    v40 = OUTLINED_FUNCTION_48_11();
    v41(v40);
    v39 = v64;
    *(v64 + 32) = 0;
    *v39 = 0u;
    *(v39 + 16) = 0u;
    goto LABEL_12;
  }

  if (v34 == *v26)
  {
    v42 = OUTLINED_FUNCTION_48_11();
    v43(v42);
    v38 = 20;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x1E6995EB0])
  {
    v44 = OUTLINED_FUNCTION_48_11();
    v45(v44);
    v38 = 22;
    goto LABEL_9;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, &static Logger.conversationControls);
  v31(v35, v22, v9);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = v22;
    v50 = v49;
    v51 = swift_slowAlloc();
    v66[0] = v51;
    *v50 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type CallScreeningStatus and conformance CallScreeningStatus, MEMORY[0x1E6995EB8]);
    dispatch thunk of CustomStringConvertible.description.getter();
    v52 = OUTLINED_FUNCTION_51_9();
    (v31)(v52);
    v53 = OUTLINED_FUNCTION_46();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, v55);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_1BBC58000, v47, v48, "ConversationControlsManager found unknown screening status: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    v57 = v62;
  }

  else
  {

    v58 = OUTLINED_FUNCTION_51_9();
    (v31)(v58);
    v57 = v22;
  }

  (v31)(v57, v9);
  OUTLINED_FUNCTION_53_9(22);
  *(v59 + 40) = 7;
  v60 = OUTLINED_FUNCTION_2_40();
  (v31)(v60);
LABEL_13:
  OUTLINED_FUNCTION_30_0();
}

Swift::Int ConversationControlsType.hashValue.getter()
{
  OUTLINED_FUNCTION_29_1();
  ConversationControlsType.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsType()
{
  Hasher.init(_seed:)();
  ConversationControlsType.hash(into:)();
  return Hasher._finalize()();
}

ConversationKit::SharePlayAppType_optional __swiftcall SharePlayAppType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SharePlayAppType@<X0>(uint64_t *a1@<X8>)
{
  result = SharePlayAppType.rawValue.getter();
  *a1 = result;
  return result;
}

void ConversationControlsSecondaryPillButtonType.description.getter()
{
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_13_41();
  OUTLINED_FUNCTION_46();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_15_14();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_26_23();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v3, v9);
      break;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
      return;
    case 7u:
    case 8u:
    case 9u:
    case 0xBu:
    case 0xCu:
      OUTLINED_FUNCTION_27_4();
      break;
    default:
      v4 = *v3;
      _StringGuts.grow(_:)(24);

      OUTLINED_FUNCTION_65_5();
      v5 = [v4 description];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      MEMORY[0x1BFB20B10](v6, v8);

      MEMORY[0x1BFB20B10](41, 0xE100000000000000);

      break;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsContext(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t ForegroundApp.__allocating_init(bundleIdentifier:type:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {

    return 0;
  }

  else
  {
    v5 = a3;
    return (*(v3 + 96))(a1, a2, &v5);
  }
}

id ForegroundApp.init(bundleIdentifier:type:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = &v3[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier];
  *v5 = a1;
  v5[1] = a2;
  v3[OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type] = v4;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ForegroundApp();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ForegroundApp.appName.getter()
{
  v0 = ForegroundApp.applicationRecord.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 localizedName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v2 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_68(0xD000000000000010, 0x80000001BC501010, v3, v4);
  }

  return OUTLINED_FUNCTION_15_14();
}

id ForegroundApp.isGameCenterApplication.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  if (((*(v0 + 328))() & 1) == 0)
  {
    return 0;
  }

  v1 = ForegroundApp.applicationRecord.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 entitlements];
  v4 = LSPropertyList.containsAnyGameCenterEntitlements()();

  if (v4)
  {
    v5 = [v2 compatibilityObject];
    v6 = [v5 isGameCenterEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Swift::Bool __swiftcall LSPropertyList.containsAnyGameCenterEntitlements()()
{
  v1._object = 0x80000001BC4F7B60;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  if (LSPropertyList.contains(entitlement:)(v1))
  {
    return 1;
  }

  v3 = MEMORY[0x1BFB209B0](0xD00000000000001FLL, 0x80000001BC4F7B60);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSArray);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
  v5 = [v0 objectForKey:v3 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      v6 = *(v7 + 16);

      return v6 != 0;
    }
  }

  else
  {
    outlined destroy of CallControlsService?(v10, &_sypSgMd);
  }

  return 0;
}

uint64_t ForegroundApp.automaticShareState.getter()
{
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_type) == 2)
  {
    return 0;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 conversationManager];

  v3 = [v2 activityAuthorizedBundleIdentifiers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Dictionary.subscript.getter(*(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8), v4);

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 BOOLValue];

  if (v6)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id ForegroundApp.applicationRecord.getter()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69635F8]);

  v2 = OUTLINED_FUNCTION_29_6();
  result = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v2, v3, 1);
  if (!result)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, &static Logger.conversationControls);
    v6 = v0;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v9 = 136315138;
      v10 = OUTLINED_FUNCTION_29_6();
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v12);
      _os_log_impl(&dword_1BBC58000, v7, v8, "Unable to get app record for bundleIdentifier:%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall ForegroundApp.setAutomaticShareState(_:)(Swift::Bool a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 conversationManager];

  v5 = MEMORY[0x1BFB209B0](*(v1 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(v1 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8));
  [v4 setActivityAuthorization:a1 forBundleIdentifier:v5];
}

uint64_t ForegroundApp.debugDescription.getter()
{
  _StringGuts.grow(_:)(28);

  OUTLINED_FUNCTION_65_5();
  v4 = v1;
  MEMORY[0x1BFB20B10](*(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier), *(v0 + OBJC_IVAR____TtC15ConversationKit13ForegroundApp_bundleIdentifier + 8));
  MEMORY[0x1BFB20B10](0x3A65707974202CLL, 0xE700000000000000);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v2);

  return v4;
}

id ForegroundApp.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ForegroundApp.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForegroundApp();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static ForegroundCollaborationState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v64 = v0;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  v60 = v2;
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v57 - v6;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_1();
  v62 = v7;
  v63 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v57 - v13;
  v14 = type metadata accessor for StagedCollaboration(0);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v18 = v17 - v16;
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit28ForegroundCollaborationStateO_ACtMd);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v34 = &v57 + *(v33 + 56) - v31;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_107();
      OUTLINED_FUNCTION_29_6();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd) + 48);
      if (OUTLINED_FUNCTION_60_7() != 1)
      {
        (*(v60 + 8))(&v25[v39], v61);
        (*(v63 + 8))(v25, v62);
        goto LABEL_16;
      }

      v40 = v62;
      v41 = v57;
      (*(v63 + 32))(v57, v34, v62);
      v42 = v60;
      v43 = *(v60 + 32);
      v44 = v61;
      v43(v59, &v25[v39], v61);
      v45 = &v34[v39];
      v46 = v58;
      v43(v58, v45, v44);
      v47 = v41;
      v48 = v63;
      v49 = static URL.== infix(_:_:)();
      v50 = *(v48 + 8);
      v50(v25, v40);
      if (v49)
      {
        v51 = v59;
        static Date.== infix(_:_:)();
        v52 = *(v42 + 8);
        v52(v46, v44);
        v52(v51, v44);
      }

      else
      {
        v55 = *(v42 + 8);
        v55(v46, v44);
        v55(v59, v44);
      }

      v50(v47, v62);
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_0_107();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      if (OUTLINED_FUNCTION_60_7() == 2)
      {
        v36 = v62;
        v37 = v63;
        (*(v63 + 32))(v11, v34, v62);
        static URL.== infix(_:_:)();
        v38 = *(v37 + 8);
        v38(v11, v36);
        v38(v22, v36);
        goto LABEL_20;
      }

      (*(v63 + 8))(v22, v62);
      goto LABEL_16;
    case 3u:
      if (OUTLINED_FUNCTION_60_7() == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    case 4u:
      if (OUTLINED_FUNCTION_60_7() != 4)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_0_107();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd);
      if (OUTLINED_FUNCTION_60_7())
      {
        OUTLINED_FUNCTION_5_67();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v28, v35);
LABEL_16:
        outlined destroy of CallControlsService?(v32, &_s15ConversationKit28ForegroundCollaborationStateO_ACtMd);
      }

      else
      {
        OUTLINED_FUNCTION_6_61();
        OUTLINED_FUNCTION_15_14();
        outlined init with take of SystemUpdateNotice();
        v53 = OUTLINED_FUNCTION_2_40();
        static StagedCollaboration.== infix(_:_:)(v53, v54);
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v18, type metadata accessor for StagedCollaboration);
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v28, type metadata accessor for StagedCollaboration);
LABEL_20:
        OUTLINED_FUNCTION_1_94();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v32, v56);
      }

      OUTLINED_FUNCTION_30_0();
      return;
  }
}

uint64_t ForegroundCollaborationState.isBannerSuppressed.getter()
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_44_0();
  v2 = 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v6 + 8))(v0 + v5);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v7 + 8))(v0);
      v2 = 1;
      break;
    case 2u:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v4 + 8))(v0);
      break;
    case 3u:
    case 4u:
      return v2;
    default:
      v2 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd) + 48));
      OUTLINED_FUNCTION_5_67();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v0, v3);
      break;
  }

  return v2;
}

uint64_t ForegroundCollaborationState.isBannerSuppressed.setter(char a1)
{
  type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_0_107();
  OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  OUTLINED_FUNCTION_29_6();
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v9 + 8))(v1 + v8);
      goto LABEL_4;
    case 2:
LABEL_4:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      result = (*(v10 + 8))(v1);
      break;
    case 3:
    case 4:
      return result;
    default:
      OUTLINED_FUNCTION_1_94();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v2, v6);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd) + 48);
      OUTLINED_FUNCTION_6_61();
      OUTLINED_FUNCTION_46();
      outlined init with take of SystemUpdateNotice();
      *(v2 + v7) = a1 & 1;
      result = swift_storeEnumTagMultiPayload();
      break;
  }

  return result;
}

void (*ForegroundCollaborationState.isBannerSuppressed.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  *v4 = v2;
  v4[1] = type metadata accessor for ForegroundCollaborationState(0);
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 64);
  v4[2] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v4[3] = v7;
  OUTLINED_FUNCTION_0_107();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
  v8 = 1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd) + 48);
      type metadata accessor for Date();
      OUTLINED_FUNCTION_15_1();
      (*(v12 + 8))(&v7[v11]);
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v13 + 8))(v7);
      v8 = 1;
      break;
    case 2u:
      type metadata accessor for URL();
      OUTLINED_FUNCTION_15_1();
      (*(v10 + 8))(v7);
      break;
    case 3u:
    case 4u:
      break;
    default:
      v8 = v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd) + 48)];
      OUTLINED_FUNCTION_5_67();
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v7, v9);
      break;
  }

  *(v4 + 32) = v8;
  return ForegroundCollaborationState.isBannerSuppressed.modify;
}

void ForegroundCollaborationState.isBannerSuppressed.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    ForegroundCollaborationState.isBannerSuppressed.setter(*(*a1 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_0_107();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v9 = v2[2];
        v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV09highlightB0_AA4DateV7startedtMd) + 48);
        type metadata accessor for Date();
        OUTLINED_FUNCTION_15_1();
        (*(v11 + 8))(v9 + v10);
        goto LABEL_7;
      case 2u:
        v9 = v2[2];
LABEL_7:
        type metadata accessor for URL();
        OUTLINED_FUNCTION_15_1();
        (*(v12 + 8))(v9);
        break;
      case 3u:
      case 4u:
        break;
      default:
        v6 = *v2;
        OUTLINED_FUNCTION_1_94();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(v6, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit19StagedCollaborationV13collaboration_Sb18isBannerSuppressedtMd) + 48);
        OUTLINED_FUNCTION_6_61();
        outlined init with take of SystemUpdateNotice();
        *(v6 + v8) = v3;
        swift_storeEnumTagMultiPayload();
        break;
    }

    v5 = v2[2];
    v4 = v2[3];
  }

  free(v4);
  free(v5);

  free(v2);
}

void ConversationControlsViewController.updateBackgroundBlur()(uint64_t a1, uint64_t a2, const char *a3)
{
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, &static Logger.conversationControls);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v5, a3, v6, 2u);
    OUTLINED_FUNCTION_27();
  }
}

uint64_t CaptureGroup.name.getter()
{
  OUTLINED_FUNCTION_6_7();

  return OUTLINED_FUNCTION_38_2();
}

uint64_t CaptureGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void UIVisualEffectView.setCaptureGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
  }

  [v3 _setCaptureView_];
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v3 _setGroupName_];
}

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOhTm_0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_0()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

uint64_t outlined init with take of SystemUpdateNotice()
{
  OUTLINED_FUNCTION_6_7();
  v1(0);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  return v0;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsContext and conformance ConversationControlsContext()
{
  result = lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext;
  if (!lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsContext and conformance ConversationControlsContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass()
{
  result = lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass;
  if (!lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsSizeClass and conformance ConversationControlsSizeClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason()
{
  result = lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason;
  if (!lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RejectedRemoteControlRequesetContext.Reason and conformance RejectedRemoteControlRequesetContext.Reason);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HUDInfoButtonType and conformance HUDInfoButtonType()
{
  result = lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType;
  if (!lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HUDInfoButtonType and conformance HUDInfoButtonType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsType and conformance ConversationControlsType()
{
  result = lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType;
  if (!lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType;
  if (!lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsType and conformance ConversationControlsType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharePlayAppType and conformance SharePlayAppType()
{
  result = lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType;
  if (!lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharePlayAppType and conformance SharePlayAppType);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RejectedRemoteControlRequesetContext(_BYTE *result, int a2, int a3)
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

uint64_t destructiveInjectEnumTag for ConversationControlsType(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t type metadata completion function for ConversationControlsSecondaryPillButtonType()
{
  result = type metadata accessor for NSObject(319, &lazy cache variable for type metadata for TUNearbySuggestion);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Participant(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationControlsContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

void type metadata completion function for ForegroundCollaborationState()
{
  type metadata accessor for (collaboration: StagedCollaboration, isBannerSuppressed: Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (highlightURL: URL, started: Date)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (highlightURL: URL)();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (collaboration: StagedCollaboration, isBannerSuppressed: Bool)()
{
  if (!lazy cache variable for type metadata for (collaboration: StagedCollaboration, isBannerSuppressed: Bool))
  {
    type metadata accessor for StagedCollaboration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (collaboration: StagedCollaboration, isBannerSuppressed: Bool));
    }
  }
}

void type metadata accessor for (highlightURL: URL, started: Date)()
{
  if (!lazy cache variable for type metadata for (highlightURL: URL, started: Date))
  {
    type metadata accessor for URL();
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (highlightURL: URL, started: Date));
    }
  }
}

void type metadata accessor for (highlightURL: URL)()
{
  if (!lazy cache variable for type metadata for (highlightURL: URL))
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (highlightURL: URL));
    }
  }
}

void *ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:accessibilityLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v10 = v9;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  v11 = v10;
  outlined bridged method (mbgnn) of @objc NSObject.accessibilityLabel.setter(a6, a7, v11);

  return v10;
}

uint64_t static ConversationControlsAction.rejectCall(controlsManager:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  return static ConversationControlsAction.rejectCall(controlsManager:)(a1, a2);
}

{
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  if ((*((*v4 & *a1) + 0x2C0))(v5))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversation);
  }

  v6 = OUTLINED_FUNCTION_40_2();
  *a2 = ConversationControlsAction.CallButtonStyle.init(_:conversation:)(v6, v7, v8);
  type metadata accessor for ConversationControlsAction();

  return swift_storeEnumTagMultiPayload();
}

void static ConversationControlsAction.primaryCallAction(controlsManager:location:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v57 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v56 = v55 - v7;
  v8 = type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v55 - v18;
  *(v55 - v18) = ConversationControlsManager.isOneToOneConversation.getter() & 1;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_82_4();
  v21 = *MEMORY[0x1E69E7D40] & v20;
  v55[0] = *(v21 + 0x928);
  v55[1] = v21 + 2344;
  v22 = (v55[0])();
  v23 = v22;
  switch(v22 >> 5)
  {
    case 1:
      OUTLINED_FUNCTION_58_7();
      v25 = (*(v24 + 704))();
      if (v25)
      {
        v26 = v25;
        v27 = [v25 localParticipantAssociation];
        if (v27)
        {

          v28 = [v26 state];
          if (v28 == 1)
          {
            if ((v23 & 1) == 0)
            {
              goto LABEL_2;
            }

            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_22;
    case 2:
      swift_storeEnumTagMultiPayload();
      v29 = v15;
      goto LABEL_19;
    case 3:
      if (v22 != 96)
      {
        goto LABEL_22;
      }

      if (v2)
      {
        OUTLINED_FUNCTION_0_108();
        v30 = OUTLINED_FUNCTION_40_2();
        _s15ConversationKit0A14ControlsActionOWOcTm_0(v30, v31);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
      }

      v29 = v12;
LABEL_19:
      outlined init with take of ConversationControlsAction(v29, v0);
      break;
    case 4:
      if (v22 != 128)
      {
        goto LABEL_22;
      }

      static ConversationControlsAction.acceptCall(controlsManager:)(v4, v0);
      break;
    case 6:
      if (v22 != 192)
      {
        goto LABEL_2;
      }

LABEL_22:
      OUTLINED_FUNCTION_211();
      swift_storeEnumTagMultiPayload();
      break;
    default:
LABEL_2:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v19, v0);
      break;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, &static Logger.conversationControls);
  v33 = v4;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v59[0] = v37;
    *v36 = 136315650;
    v38 = (*((*MEMORY[0x1E69E7D40] & *v33) + 0x2C0))();
    if (v38)
    {
      v39 = v38;
      v40 = [v38 state];

      v58 = v40;
      type metadata accessor for TUConversationState(0);
      v41 = String.init<A>(reflecting:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE300000000000000;
      v41 = 7104878;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v59);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    LOBYTE(v58) = (v55[0])(v45);
    v46 = String.init<A>(reflecting:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v59);

    *(v36 + 14) = v48;
    *(v36 + 22) = 2080;
    swift_beginAccess();
    v49 = v56;
    _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v56);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v8);
    specialized >> prefix<A>(_:)();
    v51 = v50;
    v53 = v52;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v49, &_s15ConversationKit0A14ControlsActionOSgMd);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v59);

    *(v36 + 24) = v54;
    _os_log_impl(&dword_1BBC58000, v34, v35, "ConversationControlsAction: conversationState:%s, controlsMode:%s, primaryCallAction:%s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v37, -1, -1);
    MEMORY[0x1BFB23DF0](v36, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_1_95();
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  swift_beginAccess();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v57);
  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  OUTLINED_FUNCTION_30_0();
}

void ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v592 = v3;
  v596 = v5;
  v597 = v4;
  v600 = v6;
  v598 = v7;
  v603 = v8;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v594 = v10;
  v595 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v593 = &v591 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v591 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  OUTLINED_FUNCTION_1();
  v591 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v591 - v19;
  v21 = type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v591 - v24;
  v611 = ConversationControlsAction.displayStrings()();
  countAndFlagsBits = v611._0.value._countAndFlagsBits;
  object = v611._0.value._object;
  v601 = v611._1._countAndFlagsBits;
  v602 = v611._1._object;
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:

      v293 = *v25;
      type metadata accessor for ConversationControlsVideoMenuButtonProvider();
      *(swift_allocObject() + 184) = v293;
      v294 = v597;
      v295 = v603;
      OUTLINED_FUNCTION_48_12();
      ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v296 = *MEMORY[0x1E69DDCF8];
      v604 = 0;
      v297 = 5.30586074e199;
      v298 = -3.91910665e202;
      goto LABEL_69;
    case 2u:

      v187 = OUTLINED_FUNCTION_50_11();
      v188(v187);
      type metadata accessor for InCallControlButton();
      *(&v606 + 1) = &type metadata for SymbolImageDescribers.ConversationControls;
      v607 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v605) = 14;
      v189 = static Layout.ConversationControls.values.getter(v608);
      v197 = OUTLINED_FUNCTION_10_46(v189, v190, v191, v192, v193, v194, v195, v196, v591, SBYTE1(v591));
      OUTLINED_FUNCTION_27_23(v197);
      if (one-time initialization token for joinButton != -1)
      {
        OUTLINED_FUNCTION_43_11();
      }

      OUTLINED_FUNCTION_58_7();
      v199 = *(v198 + 464);

      v199(v200);
      v201 = OUTLINED_FUNCTION_67_6();
      v202(v201);
      v203 = swift_allocObject();
      v204 = OUTLINED_FUNCTION_60_8(v203);
      v205(v204);
      OUTLINED_FUNCTION_24();
      v206 = swift_allocObject();
      v207 = v15;
      *(v206 + 16) = partial apply for closure #4 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v206 + 24) = v199;
      v208 = v12;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v210 = *((*MEMORY[0x1E69E7D40] & v209) + 0x168);

      v211 = OUTLINED_FUNCTION_206();
      v210(v211);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      OUTLINED_FUNCTION_69_5();
      goto LABEL_55;
    case 3u:

      v236 = OUTLINED_FUNCTION_50_11();
      v237(v236);
      type metadata accessor for InCallControlButton();
      v238 = OUTLINED_FUNCTION_111_2(&type metadata for SymbolImageDescribers.ConversationControls);
      v246 = OUTLINED_FUNCTION_10_46(v238, v239, v240, v241, v242, v243, v244, v245, v591, SBYTE1(v591));
      OUTLINED_FUNCTION_27_23(v246);
      if (one-time initialization token for leaveButton != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v248 = *(v247 + 464);

      v248(v249);
      v250 = OUTLINED_FUNCTION_67_6();
      v251(v250);
      v252 = swift_allocObject();
      v253 = OUTLINED_FUNCTION_60_8(v252);
      v254(v253);
      OUTLINED_FUNCTION_24();
      v255 = swift_allocObject();
      v207 = v15;
      *(v255 + 16) = partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v255 + 24) = v248;
      v256 = v12;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v258 = *((*MEMORY[0x1E69E7D40] & v257) + 0x168);

      v259 = OUTLINED_FUNCTION_206();
      v258(v259);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      OUTLINED_FUNCTION_41_13();
LABEL_55:
      GameControllerManager.addControl(_:event:when:)();

      (*(v20 + 1))(v207, v25);
      goto LABEL_164;
    case 4u:

      v165 = *v25;
      v166 = [objc_opt_self() sharedInstance];
      v167 = [v166 neighborhoodActivityConduit];

      v168 = [v167 suggestion];
      type metadata accessor for ConversationControlsLagunaMenuButtonProvider();
      swift_allocObject();
      v169 = v597;
      v170 = v597;
      v171 = v603;
      ConversationControlsLagunaMenuButtonProvider.init(controlsManager:context:menuHostViewController:suggestion:isInSecondaryBanner:)(v171, v600, v169, v598, v168, v165);
      goto LABEL_32;
    case 5u:
      v350 = v602;

      v351 = *(v25 + 2);
      if ((*&v351 - 1) < 2 || (v352 = *(v25 + 1), , , v351 == 0.0))
      {
        OUTLINED_FUNCTION_39_12();
      }

      else
      {
        v609 = &type metadata for SymbolImageDescribers.GameController;
        v610 = &protocol witness table for SymbolImageDescribers.GameController;
        v608[0] = v352;
        v608[1] = v351;
      }

      v554 = v603;
      type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39();
      v1 = v554;
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v555, v556, v557, v558, v559, 0, 0, v560, v588, v589[0], v589[1], v589[2], 0, 0);
      v561 = objc_opt_self();
      ControlsButtonProvider.foregroundColor.setter([v561 blackColor]);
      v562 = [v561 whiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v563, v564, v565);
      OUTLINED_FUNCTION_28();
      v21 = ControlsButtonProvider.makeButton(frame:)();
      v42 = sel_controllerFocusCallButtonTapped;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v350, v21);
      goto LABEL_132;
    case 6u:
    case 7u:

      v28 = *v25;
      if (*v25)
      {
        v29 = v603;
        if (v28 == 1)
        {
          v30 = 29;
        }

        else
        {
          v30 = 30;
        }
      }

      else
      {
        LODWORD(countAndFlagsBits) = *v25;
        v29 = v603;
        v12 = *((*MEMORY[0x1E69E7D40] & *v603) + 0x2A0);
        object = v603;
        (v12)(v27);
        OUTLINED_FUNCTION_87();
        ObjectType = swift_getObjectType();
        v567 = v15[21](ObjectType, v15);
        v568 = swift_unknownObjectRelease();
        if (v567)
        {
          v30 = 28;
        }

        else
        {
          object = v29;
          (v12)(v568);
          OUTLINED_FUNCTION_87();
          v569 = swift_getObjectType();
          v570 = (*(v567 + 176))(v569, v567);
          swift_unknownObjectRelease();
          if (v570)
          {
            v30 = 28;
          }

          else
          {
            v30 = 27;
          }
        }

        v28 = countAndFlagsBits;
      }

      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v2, v1);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        OUTLINED_FUNCTION_1_95();
        _s15ConversationKit0A14ControlsActionOWOhTm_1();
        goto LABEL_156;
      }

      LODWORD(v596) = v30;
      LODWORD(countAndFlagsBits) = v28;
      object = [*(v29 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter) currentCalls];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
      OUTLINED_FUNCTION_170();
      v571 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v608[0] = MEMORY[0x1E69E7CC0];
      v572 = specialized Array.count.getter(v571);
      for (i = 0; ; ++i)
      {
        if (v572 == i)
        {

          v29 = v603;
          v28 = countAndFlagsBits;
          LOBYTE(v30) = v596;
LABEL_156:
          specialized _arrayForceCast<A, B>(_:)();
          OUTLINED_FUNCTION_6_4();

          OUTLINED_FUNCTION_20();
          v576 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v609 = &type metadata for SymbolImageDescribers.ConversationControls;
          v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
          LOBYTE(v608[0]) = v30;
          type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
          OUTLINED_FUNCTION_17_39();
          v12 = v597;
          v577 = v597;
          v29;
          v590 = v598;
          OUTLINED_FUNCTION_44_11();
          ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v578, v600, object, partial apply for closure #9 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:), v576, 0, 0, v608, v588, v589[0], v589[1], v589[2], v12, v590);
          OUTLINED_FUNCTION_59_6();
          v579 = objc_opt_self();
          v580 = &selRef_systemBlueColor;
          if (v28 != 2)
          {
            v580 = &selRef_systemGreenColor;
          }

          v581 = [v579 *v580];
          OUTLINED_FUNCTION_30_17();
          ControlsButtonProvider.backgroundStyle.setter(v582, v583, v584);
          OUTLINED_FUNCTION_28();
          v585 = ControlsButtonProvider.makeButton(frame:)();
          OUTLINED_FUNCTION_15_31(v585);
LABEL_159:
          v586 = OUTLINED_FUNCTION_96_5();
          [v586 v587];
          if (one-time initialization token for shared != -1)
          {
LABEL_171:
            OUTLINED_FUNCTION_2_4();
          }

LABEL_160:
          v2 = v12;
          goto LABEL_161;
        }

        if ((v571 & 0xC000000000000001) != 0)
        {
          v575 = OUTLINED_FUNCTION_206();
          v574 = MEMORY[0x1BFB22010](v575);
        }

        else
        {
          if (i >= *((v571 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_166;
          }

          v574 = *(v571 + 8 * i + 32);
        }

        v12 = v574;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ([v574 status] == 2 || objc_msgSend(v12, sel_status) == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          object = v608;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      OUTLINED_FUNCTION_2_4();
LABEL_124:
      v476 = v12;
LABEL_125:
      v2 = v476;
LABEL_161:
      GameControllerManager.addControl(_:event:when:)();
LABEL_162:

LABEL_163:

LABEL_164:
      OUTLINED_FUNCTION_30_0();
      return;
    case 8u:

      if (*v25)
      {
        v386 = 9;
      }

      else
      {
        v386 = 31;
      }

      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = v386;
      type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      OUTLINED_FUNCTION_44_11();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v387, v388, v389, v390, v391, 0, 0, v392, v591, v592, SBYTE1(v592), BYTE2(v592), v593, v594);
      OUTLINED_FUNCTION_59_6();
      v393 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v394, v395, v396);
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      v397 = sel_rejectCallButtonTapped;
      goto LABEL_113;
    case 9u:
      v181 = v602;

      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = 35;
      if (one-time initialization token for greenTea3PAcceptButtonBanner != -1)
      {
        swift_once();
      }

      objc_allocWithZone(type metadata accessor for PillButton());

      v182 = OUTLINED_FUNCTION_42_17();
      v186 = PillButton.init(title:symbol:stateConfiguration:context:)(v182, v183, v184, v185, 1);
      [v186 addTarget:v603 action:sel_acceptCallButtonTappedWithIgnoresSmartHoldingSession_ forControlEvents:64];
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v181, v186);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_172;
    case 0xAu:
      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      OUTLINED_FUNCTION_110_2(8);
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v592) = v1;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v373, v374, v375, v376, v377, countAndFlagsBits, v15, v378, v591, v592, SBYTE1(v592), BYTE2(v592), v593, v594);
      OUTLINED_FUNCTION_59_6();
      v379 = [objc_opt_self() systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v380, v381, v382);
      OUTLINED_FUNCTION_28();
      v383 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v383);
      v384 = OUTLINED_FUNCTION_96_5();
      [v384 v385];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_171;
    case 0xBu:

      type metadata accessor for ConversationControlsCountdownJoinButtonProvider();
      swift_allocObject();
      v148 = OUTLINED_FUNCTION_51_10();
      ConversationControlsCountdownJoinButtonProvider.init(controlsManager:context:shape:)(v148, v600, 1);
LABEL_32:
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      goto LABEL_163;
    case 0xCu:
      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      OUTLINED_FUNCTION_110_2(9);
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v592) = v1;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v172, v173, v174, v175, v176, countAndFlagsBits, v15, v177, v591, v592, SBYTE1(v592), BYTE2(v592), v593, v594);
      OUTLINED_FUNCTION_59_6();
      OUTLINED_FUNCTION_28();
      v178 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v178);
      v179 = OUTLINED_FUNCTION_96_5();
      [v179 v180];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_171;
    case 0xDu:

      type metadata accessor for ConversationControlsOpenMessagesButtonProvider();
      v339 = OUTLINED_FUNCTION_55_10();
      v340 = v603;
      *(v339 + 160) = v603;
      ControlsButtonProvider.init(context:shape:)(v600, 1);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v341 = *MEMORY[0x1E69DDCF8];
      v604 = 0;
      strcpy(v608, "message.fill");
      BYTE5(v608[1]) = 0;
      HIWORD(v608[1]) = -5120;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v342;
      *(&v605 + 1) = v343;
      OUTLINED_FUNCTION_13_42();
      v344 = v340;

      v345 = v341;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v346 = OUTLINED_FUNCTION_46_13();
      v347(v346);

      OUTLINED_FUNCTION_57_8();
      v348 = OUTLINED_FUNCTION_28();
      v349(v348);
      goto LABEL_72;
    case 0xEu:
    case 0x3Cu:

      type metadata accessor for ConversationControlsAudioRouteMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v149 = v603;
      ConversationControlsMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v150 = *MEMORY[0x1E69DDCF8];
      OUTLINED_FUNCTION_25_26();
      v608[0] = v152;
      v608[1] = v151;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v154;
      *(&v605 + 1) = v153;
      OUTLINED_FUNCTION_13_42();

      v155 = v150;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v156 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v156);

      OUTLINED_FUNCTION_28();
      ConversationControlsAudioRouteMenuButtonProvider.makeButton(frame:)();
      goto LABEL_72;
    case 0xFu:
    case 0x3Du:

      type metadata accessor for ConversationControlsMicMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v320 = v603;
      ConversationControlsMicMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v296 = *MEMORY[0x1E69DDCF8];
      v604 = 0;
      v297 = 6.09123215e247;
      v298 = -7.42084413e221;
LABEL_69:
      v608[0] = v297;
      v608[1] = v298;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v321;
      *(&v605 + 1) = v322;
      goto LABEL_70;
    case 0x10u:

      type metadata accessor for ConversationControlsMoreMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v99 = v603;
      OUTLINED_FUNCTION_48_12();
      v100 = ConversationControlsMoreMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v101 = *MEMORY[0x1E69DDCF8];
      v604 = 0;
      strcpy(v608, "ellipsis");
      BYTE1(v608[1]) = 0;
      WORD1(v608[1]) = 0;
      HIDWORD(v608[1]) = -402653184;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v102;
      *(&v605 + 1) = v103;
      OUTLINED_FUNCTION_13_42();

      v104 = v101;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v105 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v105);

      swift_beginAccess();
      outlined assign with copy of ConversationControlsMoreMenuButtonDelegate?(v592, v100 + 192);
      swift_endAccess();
      goto LABEL_71;
    case 0x11u:

      type metadata accessor for ConversationControlsShareMenuButtonProvider();
      swift_allocObject();
      OUTLINED_FUNCTION_94_2();
      v311 = v603;
      OUTLINED_FUNCTION_48_12();
      ConversationControlsShareMenuButtonProvider.init(controlsManager:context:shape:menuHostViewController:)(v312, v313, v314, v315);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v296 = *MEMORY[0x1E69DDCF8];
      OUTLINED_FUNCTION_25_26();
      *&v608[0] = v317 + 21;
      v608[1] = v316;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v319;
      *(&v605 + 1) = v318;
LABEL_70:
      OUTLINED_FUNCTION_13_42();

      v323 = v296;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v324 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v324);

LABEL_71:
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
LABEL_72:
      OUTLINED_FUNCTION_84_3();
      goto LABEL_163;
    case 0x12u:
    case 0x13u:
      type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0();
      v31 = OUTLINED_FUNCTION_24_24();
      ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v31, v600, 0);
      OUTLINED_FUNCTION_14_32();
      *(object + 15) = countAndFlagsBits;
      *(object + 16) = v15;

      ControlsButtonProvider.title.didset(v32);

      OUTLINED_FUNCTION_28();
      v33 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_31_20(v33);
      goto LABEL_162;
    case 0x14u:
      type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v299, v300, 0);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v301);
      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_84_3();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v602, v2);
      (*((*MEMORY[0x1E69E7D40] & *v21) + 0x5D8))();
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher();
      Publisher<>.sink(receiveValue:)();
      OUTLINED_FUNCTION_6_4();

      (*(v591 + 8))(v20, v16);
      OUTLINED_FUNCTION_3_5();
      v1[6] = v20;

      goto LABEL_163;
    case 0x15u:

      type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      OUTLINED_FUNCTION_113_0();
      v302 = OUTLINED_FUNCTION_51_10();
      ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v302, v600, 0);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v303 = *MEMORY[0x1E69DDDC8];
      OUTLINED_FUNCTION_25_26();
      *&v608[0] = v305 | 4;
      v608[1] = v304;
      OUTLINED_FUNCTION_5_68();
      *&v605 = v307;
      *(&v605 + 1) = v306;
      OUTLINED_FUNCTION_13_42();

      v308 = v303;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v309 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v309);

      OUTLINED_FUNCTION_28();
      v310 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_31_20(v310);
      goto LABEL_162;
    case 0x16u:
      type metadata accessor for InCallControlButton();
      v607 = 0;
      v605 = 0u;
      v606 = 0u;
      static Layout.ConversationControls.values.getter(v608);
      OUTLINED_FUNCTION_75_6();
      OUTLINED_FUNCTION_16_39();
      v410 = InCallControlButton.__allocating_init(style:imageName:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:)(v402, v403, v404, v405, v406, v407, v408, v409, v591);
      OUTLINED_FUNCTION_27_23(v410);
      v411 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v411)
      {
        v412 = objc_opt_self();
        v413 = *MEMORY[0x1E69DDD80];
        v414 = v411;
        v415 = [v412 preferredFontForTextStyle_];
        isa = UIFont.withTraits(_:)(0x8002u).super.isa;

        v417 = UIFont.caseSensitive()().super.isa;
        [v414 setFont_];
      }

      v418 = v603;
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v419 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_58_7();
      v421 = *(v420 + 464);

      v421(v422);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && v600 == 2)
      {
        v423 = [objc_opt_self() conversationKit];
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_5_5();
        v424.super.isa = v423;
        v427 = OUTLINED_FUNCTION_17_0(2003134806, 0xE400000000000000, v425, v426, v424);
        v429 = v428;

        OUTLINED_FUNCTION_82_4();
        (*((*v419 & v430) + 0x1B8))(v427, v429);
        if (one-time initialization token for viewLMIRequestsButton != -1)
        {
          swift_once();
        }

        v421(v431);
      }

      OUTLINED_FUNCTION_20();
      v432 = swift_allocObject();
      *(v432 + 16) = v418;
      OUTLINED_FUNCTION_24();
      v433 = swift_allocObject();
      *(v433 + 16) = partial apply for closure #2 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      *(v433 + 24) = v432;
      v434 = v418;

      OUTLINED_FUNCTION_63_8();

      OUTLINED_FUNCTION_82_4();
      v436 = *((*v419 & v435) + 0x168);

      v437 = OUTLINED_FUNCTION_206();
      v436(v437);

      goto LABEL_164;
    case 0x17u:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      v490 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v493 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v491, v492);
      objc_opt_self();
      OUTLINED_FUNCTION_6_4();

      v494 = [object systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v495, v496, v497);
      static Platform.current.getter();
      v478 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v498 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v498);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_101_1();
      v493[15] = v499;
      v493[16] = v490;

      ControlsButtonProvider.title.didset(v500);

      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_87();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v602, v478);
      v489 = sel_lagunaPullButtonTapped;
      goto LABEL_119;
    case 0x18u:

      v162 = v603;
      (*((*MEMORY[0x1E69E7D40] & *v603) + 0x7C8))(v161);
      OUTLINED_FUNCTION_24_1();
      v163 = objc_allocWithZone(type metadata accessor for PushToTalkLeavePillButton());
      v164 = OUTLINED_FUNCTION_170();
      v69 = PushToTalkLeavePillButton.init(viewModel:)(v164);
      [v69 addTarget:v162 action:sel_pttLeaveButtonTappedWithButton_ forControlEvents:64];
      v70 = v601;
      v71 = v602;
      goto LABEL_29;
    case 0x19u:

      (*((*MEMORY[0x1E69E7D40] & *v603) + 0x7C8))(v157);
      OUTLINED_FUNCTION_24_1();
      v158 = objc_allocWithZone(type metadata accessor for PushToTalkTalkPillButton());
      v159 = OUTLINED_FUNCTION_170();
      v160 = PushToTalkTalkPillButton.init(viewModel:)(v159);
      OUTLINED_FUNCTION_31_20(v160);
      goto LABEL_164;
    case 0x1Au:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v522, v523);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v524);

      OUTLINED_FUNCTION_28();
      v525 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v525);
      v42 = sel_avLessContinueButtonTappedWithButton_;
      goto LABEL_132;
    case 0x1Bu:
    case 0x26u:
    case 0x29u:
    case 0x31u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v526, v527);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v528);

      OUTLINED_FUNCTION_28();
      v529 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v529);
      goto LABEL_123;
    case 0x1Cu:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      v501 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v504 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v502, v503);
      objc_opt_self();
      OUTLINED_FUNCTION_6_4();

      v505 = [object systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v506, v507, v508);
      static Platform.current.getter();
      v478 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      SymbolImageDescribers.ConversationControls.symbolImageDescription.getter();
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      v509 = OUTLINED_FUNCTION_46_13();
      ControlsButtonProvider.image.setter(v509);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_101_1();
      v504[15] = v510;
      v504[16] = v501;

      ControlsButtonProvider.title.didset(v511);

      OUTLINED_FUNCTION_28();
      ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_87();
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v602, v478);
      v489 = sel_continueHandoffButtonTapped;
      goto LABEL_119;
    case 0x1Du:
      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = 31;
      type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v592) = 0;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v512, v513, v514, v515, v516, countAndFlagsBits, object, v517, v591, v592, SBYTE1(v592), BYTE2(v592), v593, v594);
      OUTLINED_FUNCTION_59_6();
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      static UIColor.close.getter();
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v518, v519, v520);
      OUTLINED_FUNCTION_28();
      v521 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v521);
      goto LABEL_123;
    case 0x1Eu:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v355 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v353, v354);
      v21 = objc_opt_self();

      v356 = [v21 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v357, v358, v359);
      ControlsButtonProvider.foregroundColor.setter([v21 systemBlackColor]);
      OUTLINED_FUNCTION_23_30();
      v355[15] = countAndFlagsBits;
      v355[16] = v15;

      ControlsButtonProvider.title.didset(v360);

      OUTLINED_FUNCTION_28();
      v361 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v361);
      v42 = sel_shareNameAndPhotoTappedWithButton_;
      goto LABEL_132;
    case 0x1Fu:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      v229 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v227, v228);
      v21 = objc_opt_self();

      v230 = [v21 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v231, v232, v233);
      ControlsButtonProvider.foregroundColor.setter([v21 systemBlackColor]);
      OUTLINED_FUNCTION_23_30();
      v229[15] = countAndFlagsBits;
      v229[16] = v15;

      ControlsButtonProvider.title.didset(v234);

      OUTLINED_FUNCTION_28();
      v235 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v235);
      v42 = sel_shareNameTappedWithButton_;
      goto LABEL_132;
    case 0x20u:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      v12 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v364 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v362, v363);
      v365 = objc_opt_self();

      v366 = [v365 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v367, v368, v369);
      ControlsButtonProvider.foregroundColor.setter([v365 systemBlackColor]);
      OUTLINED_FUNCTION_23_30();
      OUTLINED_FUNCTION_101_1();
      v364[15] = v370;
      v364[16] = object;

      ControlsButtonProvider.title.didset(v371);

      OUTLINED_FUNCTION_28();
      v372 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v372);
      goto LABEL_159;
    case 0x21u:
      v110 = [objc_opt_self() systemIndigoColor];
      OUTLINED_FUNCTION_24_1();
      type metadata accessor for ConversationControlsSecondaryPillButtonProvider();
      v21 = OUTLINED_FUNCTION_113_0();
      v111 = v603;
      OUTLINED_FUNCTION_37_20();
      ConversationControlsSecondaryPillButtonProvider.init(controlsManager:context:buttonTextColor:)(v112, v113, object);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v114);

      OUTLINED_FUNCTION_28();
      v115 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v115);
      v42 = sel_stopLocalScreenSharingTappedWithButton_;
      goto LABEL_132;
    case 0x22u:
      type metadata accessor for ConversationControlsTrailingActionButtonProvider();
      OUTLINED_FUNCTION_55_10();
      v12 = object;
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_29_19();
      v90 = ConversationControlsTrailingActionButtonProvider.init(controlsManager:context:)(v88, v89);
      v91 = objc_opt_self();

      v92 = [v91 systemWhiteColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v93, v94, v95);
      ControlsButtonProvider.foregroundColor.setter([v91 systemBlackColor]);
      OUTLINED_FUNCTION_23_30();
      OUTLINED_FUNCTION_101_1();
      v90[15] = v96;
      v90[16] = object;

      ControlsButtonProvider.title.didset(v97);

      OUTLINED_FUNCTION_28();
      v98 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v98);
      goto LABEL_123;
    case 0x23u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v72, v73);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v74);
      v75 = objc_opt_self();
      ControlsButtonProvider.foregroundColor.setter([v75 whiteColor]);
      v76 = [v75 systemIndigoColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v77, v78, v79);

      OUTLINED_FUNCTION_28();
      v80 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v80);
      goto LABEL_159;
    case 0x24u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v81, v82);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v83);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      static UIColor.denyScreenShareBackground.getter();
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v84, v85, v86);

      OUTLINED_FUNCTION_28();
      v87 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v87);
      goto LABEL_123;
    case 0x25u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v43, v44);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v45);
      v46 = [objc_opt_self() systemRedColor];
      ControlsButtonProvider.foregroundColor.setter(v46);

      OUTLINED_FUNCTION_28();
      v47 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v47);
      goto LABEL_159;
    case 0x27u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      v440 = ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v438, v439);
      OUTLINED_FUNCTION_3_5();
      v441 = countAndFlagsBits;
      *(v440 + 120) = countAndFlagsBits;
      *(v440 + 128) = v15;

      ControlsButtonProvider.title.didset(v442);

      if (v15)
      {
        v443 = v441;
      }

      else
      {
        v443 = 0;
      }

      v603 = v443;
      if (!v15)
      {
        v15 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_39_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd);
      v444 = swift_allocObject();
      *(v444 + 16) = xmmword_1BC4BA940;
      *(v444 + 32) = 0;
      v445 = objc_opt_self();
      v446 = [v445 systemDarkGrayColor];
      v447 = [v445 whiteColor];
      v448 = [v445 systemDarkGrayColor];
      v449 = [v445 whiteColor];
      *(v444 + 40) = v446;
      *(v444 + 48) = 0;
      *(v444 + 56) = 64;
      *(v444 + 64) = v447;
      *(v444 + 72) = v448;
      *(v444 + 80) = 0;
      *(v444 + 88) = 64;
      *(v444 + 96) = v449;
      type metadata accessor for UIControlState(0);
      v451 = v450;
      OUTLINED_FUNCTION_36_17();
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(v452, v453);
      v454 = Dictionary.init(dictionaryLiteral:)();
      v455 = objc_allocWithZone(type metadata accessor for PillButton());
      v456 = PillButton.init(title:symbol:stateConfiguration:context:)(v603, v15, v608, v454, 0);
      OUTLINED_FUNCTION_31_20(v456);
      [v451 addTarget:v21 action:sel_cancelRemoteControlRequestTappedWithButton_ forControlEvents:64];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      OUTLINED_FUNCTION_41_13();
      GameControllerManager.addControl(_:event:when:)();

      goto LABEL_164;
    case 0x28u:
    case 0x32u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v34, v35);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v36);

      OUTLINED_FUNCTION_28();
      v37 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v37);
      goto LABEL_159;
    case 0x2Au:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_29_19();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v457, v458);
      OUTLINED_FUNCTION_9_52();
      OUTLINED_FUNCTION_20_27();

      ControlsButtonProvider.title.didset(v459);
      v460 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v461, v462, v463);

      OUTLINED_FUNCTION_28();
      v464 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v464);
LABEL_123:
      v530 = OUTLINED_FUNCTION_96_5();
      [v530 v531];
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_124;
      }

      goto LABEL_167;
    case 0x2Bu:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v38, v39);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v40);

      OUTLINED_FUNCTION_28();
      v41 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v41);
      v42 = sel_learnMoreNotTrustedContactTappedWithButton_;
      goto LABEL_132;
    case 0x2Cu:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v106, v107);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v108);

      OUTLINED_FUNCTION_28();
      v109 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v109);
      v42 = sel_previewEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Du:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v398, v399);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v400);

      OUTLINED_FUNCTION_28();
      v401 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v401);
      v42 = sel_choosePhotoEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Eu:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v546, v547);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v548);

      OUTLINED_FUNCTION_28();
      v549 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v549);
      v42 = sel_dismissEnhancedEmergencyRequestTappedWithButton_;
      goto LABEL_132;
    case 0x2Fu:
      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = 8;
      type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39();
      OUTLINED_FUNCTION_51_10();
      OUTLINED_FUNCTION_33_22();
      BYTE2(v592) = 0;
      OUTLINED_FUNCTION_26_24();
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v48, v49, v50, v51, v52, countAndFlagsBits, object, v53, v591, v592, SBYTE1(v592), BYTE2(v592), v593, v594);
      OUTLINED_FUNCTION_59_6();
      v54 = [objc_opt_self() systemGreenColor];
      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v55, v56, v57);
      OUTLINED_FUNCTION_28();
      v58 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v58);
      goto LABEL_159;
    case 0x30u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v116, v117);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v118);

      OUTLINED_FUNCTION_28();
      v119 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v119);
      v42 = sel_collaborateButtonTapped;
      goto LABEL_132;
    case 0x33u:
      type metadata accessor for ConversationControlsDialogButtonProvider();
      OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_24_24();
      OUTLINED_FUNCTION_37_20();
      ConversationControlsDialogButtonProvider.init(controlsManager:context:)(v550, v551);
      OUTLINED_FUNCTION_14_32();
      OUTLINED_FUNCTION_22_29();

      ControlsButtonProvider.title.didset(v552);

      OUTLINED_FUNCTION_28();
      v553 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_21_28(v553);
      v42 = sel_acceptScreenShare;
LABEL_132:
      v2 = v21;
      [v2 addTarget:v1 action:v42 forControlEvents:64];
      goto LABEL_162;
    case 0x37u:
      OUTLINED_FUNCTION_39_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14UIControlStateV_15ConversationKit11ButtonStyleVtGMd);
      v532 = swift_allocObject();
      *(v532 + 16) = xmmword_1BC4BA940;
      *(v532 + 32) = 0;
      v533 = objc_opt_self();
      v534 = [v533 systemDarkGrayColor];
      v535 = [v533 whiteColor];
      v536 = [v533 systemDarkGrayColor];
      v537 = [v533 whiteColor];
      *(v532 + 40) = v534;
      *(v532 + 48) = 0;
      *(v532 + 56) = 64;
      *(v532 + 64) = v535;
      *(v532 + 72) = v536;
      *(v532 + 80) = 0;
      *(v532 + 88) = 64;
      *(v532 + 96) = v537;
      type metadata accessor for UIControlState(0);
      OUTLINED_FUNCTION_36_17();
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(v538, v539);
      OUTLINED_FUNCTION_40_2();
      Dictionary.init(dictionaryLiteral:)();
      v540 = objc_allocWithZone(type metadata accessor for PillButton());
      v541 = OUTLINED_FUNCTION_42_17();
      v545 = PillButton.init(title:symbol:stateConfiguration:context:)(v541, v542, v543, v544, 0);
      OUTLINED_FUNCTION_31_20(v545);
      [v535 addTarget:v603 action:sel_swapButtonTappedWithButton_ forControlEvents:0x2000];
      goto LABEL_164;
    case 0x38u:
      v59 = v602;

      v60 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v61.super.isa = v60;
      OUTLINED_FUNCTION_17_0(v62, 0xE700000000000000, v63, v64, v61);

      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = 36;
      if (one-time initialization token for greenTea3PDeclineButtonBanner != -1)
      {
        swift_once();
      }

      objc_allocWithZone(type metadata accessor for PillButton());

      v65 = OUTLINED_FUNCTION_42_17();
      v69 = PillButton.init(title:symbol:stateConfiguration:context:)(v65, v66, v67, v68, 1);
      [v69 addTarget:v603 action:sel_rejectCallButtonTapped forControlEvents:64];
      v70 = v601;
      v71 = v59;
LABEL_29:
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v70, v71, v69);
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_169;
    case 0x39u:

      type metadata accessor for ConversationControlsButtonProvider();
      v465 = OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_74_4(v465);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v466 = *MEMORY[0x1E69DDD40];
      v604 = 0;
      *&v608[0] = 0x6B72616D78;
      v608[1] = -3.24180904e178;
      OUTLINED_FUNCTION_64_7();
      *&v605 = v467;
      *(&v605 + 1) = v468;
      v21 = OUTLINED_FUNCTION_90_4();

      v469 = v466;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v470 = OUTLINED_FUNCTION_46_13();
      v471(v470);
      v472 = [objc_opt_self() systemRedColor];
      OUTLINED_FUNCTION_57_8();
      OUTLINED_FUNCTION_30_17();
      v473();

      OUTLINED_FUNCTION_57_8();
      v474 = OUTLINED_FUNCTION_28();
      v475(v474);
      OUTLINED_FUNCTION_84_3();
      v397 = sel_endGreenTea3PCallButtonTappedWithButton_;
LABEL_113:
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v602, v2);
      [v2 addTarget:v21 action:v397 forControlEvents:64];
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      v476 = v2;
      goto LABEL_125;
    case 0x3Au:

      type metadata accessor for InCallControlButton();
      v607 = 0;
      v605 = 0u;
      v606 = 0u;
      v120 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v121.super.isa = v120;
      OUTLINED_FUNCTION_17_0(v122, 0x80000001BC502910, v123, v124, v121);

      static Layout.ConversationControls.values.getter(v608);
      OUTLINED_FUNCTION_75_6();
      OUTLINED_FUNCTION_16_39();
      v133 = InCallControlButton.__allocating_init(style:imageName:text:discSize:imageSpacing:visualEffectGroupName:wantsPointerInteraction:)(v125, v126, v127, v128, v129, v130, v131, v132, v593);
      OUTLINED_FUNCTION_27_23(v133);
      v134 = *(v2 + OBJC_IVAR____TtC15ConversationKit19InCallControlButton_label);
      if (v134)
      {
        v135 = objc_opt_self();
        v136 = *MEMORY[0x1E69DDD80];
        v137 = v134;
        v138 = [v135 preferredFontForTextStyle_];
        v139 = UIFont.withTraits(_:)(0x8002u).super.isa;

        v140 = UIFont.caseSensitive()().super.isa;
        [v137 setFont_];
      }

      v141 = v603;
      if (one-time initialization token for greenTea3PResumeButton != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v143 = *(v142 + 464);

      v143(v144);
      OUTLINED_FUNCTION_20();
      v145 = swift_allocObject();
      *(v145 + 16) = v141;
      v146 = v141;
      v147 = partial apply for closure #10 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
      goto LABEL_76;
    case 0x3Bu:

      type metadata accessor for ConversationControlsButtonProvider();
      v477 = OUTLINED_FUNCTION_55_10();
      OUTLINED_FUNCTION_74_4(v477);
      v478 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v479 = *MEMORY[0x1E69DDD40];
      OUTLINED_FUNCTION_25_26();
      v608[0] = v481;
      v608[1] = v480;
      OUTLINED_FUNCTION_64_7();
      *&v605 = v483;
      *(&v605 + 1) = v482;
      v21 = OUTLINED_FUNCTION_90_4();

      v484 = v479;
      OUTLINED_FUNCTION_89_2();
      outlined destroy of SymbolImageDescription(&v605);
      static UIImage.symbolImage(for:)(v608);
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_57_8();
      v485 = OUTLINED_FUNCTION_46_13();
      v486(v485);

      OUTLINED_FUNCTION_57_8();
      v487 = OUTLINED_FUNCTION_28();
      v488(v487);
      OUTLINED_FUNCTION_87();
      v489 = sel_swapButtonTappedWithButton_;
      outlined bridged method (mbnn) of @objc NSObject.accessibilityIdentifier.setter(v601, v602, v478);
LABEL_119:
      v2 = v478;
      [v2 addTarget:v21 action:v489 forControlEvents:64];
      goto LABEL_162;
    case 0x3Eu:

      type metadata accessor for InCallControlButton();
      *(&v606 + 1) = &type metadata for SymbolImageDescribers.ConversationControls;
      v607 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v605) = 29;
      v325 = static Layout.ConversationControls.values.getter(v608);
      v333 = OUTLINED_FUNCTION_10_46(v325, v326, v327, v328, v329, v330, v331, v332, v591, SBYTE1(v591));
      OUTLINED_FUNCTION_27_23(v333);
      if (one-time initialization token for joinButton != -1)
      {
        OUTLINED_FUNCTION_43_11();
      }

      OUTLINED_FUNCTION_58_7();
      v335 = *(v334 + 464);

      v335(v336);
      OUTLINED_FUNCTION_20();
      v145 = swift_allocObject();
      v337 = v603;
      *(v145 + 16) = v603;
      v338 = v337;
      v147 = partial apply for closure #11 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:);
LABEL_76:
      UIControl.addAction(for:handler:)(64, v147, v145);

      if (one-time initialization token for shared != -1)
      {
LABEL_172:
        OUTLINED_FUNCTION_2_4();
      }

LABEL_38:
      OUTLINED_FUNCTION_69_5();
      goto LABEL_39;
    case 0x3Fu:

      type metadata accessor for InCallControlButton();
      v212 = OUTLINED_FUNCTION_111_2(&type metadata for SymbolImageDescribers.ConversationControls);
      v220 = OUTLINED_FUNCTION_10_46(v212, v213, v214, v215, v216, v217, v218, v219, v591, SBYTE1(v591));
      OUTLINED_FUNCTION_27_23(v220);
      if (one-time initialization token for button != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_58_7();
      v222 = *(v221 + 464);

      v222(v223);
      OUTLINED_FUNCTION_20();
      v224 = swift_allocObject();
      v225 = v603;
      *(v224 + 16) = v603;
      v226 = v225;
      UIControl.addAction(for:handler:)(64, partial apply for closure #12 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:), v224);

      if (one-time initialization token for shared != -1)
      {
LABEL_169:
        OUTLINED_FUNCTION_2_4();
      }

LABEL_30:
      OUTLINED_FUNCTION_41_13();
LABEL_39:
      GameControllerManager.addControl(_:event:when:)();
      goto LABEL_164;
    default:
      v260 = v603;
      (*((*MEMORY[0x1E69E7D40] & *v603) + 0x2A0))();
      v262 = v261;
      v263 = swift_getObjectType();
      LOBYTE(v262) = (*(v262 + 136))(v263, v262);
      swift_unknownObjectRelease();
      if (v262)
      {
        v264 = 10;
      }

      else
      {
        v264 = 9;
      }

      v609 = &type metadata for SymbolImageDescribers.ConversationControls;
      v610 = &protocol witness table for SymbolImageDescribers.ConversationControls;
      LOBYTE(v608[0]) = v264;
      v265 = v596;
      v266 = (v596 >> 1) & 1;
      type metadata accessor for ConversationControlsPrimaryActionButtonProvider();
      OUTLINED_FUNCTION_17_39();
      v267 = v260;
      OUTLINED_FUNCTION_11_50();
      ConversationControlsPrimaryActionButtonProvider.init(controlsManager:context:calls:selectedCallAction:title:symbol:accessory:prefersPill:showsSymbolInPill:prefersMediumSize:menuHostViewController:)(v268, v269, v270, v271, v272, countAndFlagsBits, object, v273, &v605, v265 & 1, 0, v266, 0, 0);
      OUTLINED_FUNCTION_59_6();
      v274 = [objc_opt_self() systemRedColor];

      OUTLINED_FUNCTION_30_17();
      ControlsButtonProvider.backgroundStyle.setter(v275, v276, v277);

      OUTLINED_FUNCTION_28();
      v278 = ControlsButtonProvider.makeButton(frame:)();
      OUTLINED_FUNCTION_15_31(v278);
      [v265 addTarget:v267 action:sel_leaveButtonTappedWithButton_ forControlEvents:0x2000];
      type metadata accessor for ConversationControlsButton();
      v279 = swift_dynamicCastClass();
      if (v279)
      {
        v280 = v279;
        v281 = objc_opt_self();
        v282 = v265;
        v283 = [v281 conversationKit];
        OUTLINED_FUNCTION_5_5();
        v285.super.isa = v283;
        v288 = OUTLINED_FUNCTION_17_0(v284 + 7, 0x80000001BC502930, v286, v287, v285);
        v290 = v289;

        v291 = (v280 + OBJC_IVAR___CNKConversationControlsButton_localizedName);
        OUTLINED_FUNCTION_3_5();
        *v291 = v288;
        v291[1] = v290;

        ConversationControlsButton.localizedName.didset();
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_4();
      }

      v292 = v265;
      GameControllerManager.addControl(_:event:when:)();

      goto LABEL_164;
  }
}

float ConversationControlsAction.ccrPriority.getter()
{
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_108();
  v1 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v4 = EnumCaseMultiPayload == 10;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 850.0;
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  return 750.0;
}

void *specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_78_3();
  if (v2)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  v4 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, v6);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v3 = v15;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_112_5();
      }

      v10 = v9;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v8;
      v13 = lazy protocol witness table accessor for type TUCall and conformance TUCall();
      *(v15 + 16) = v12 + 1;
      v14 = v15 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v13;
    }

    while (v1 != v8);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for TUHandle);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for CNContact);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &lazy cache variable for type metadata for NSLayoutConstraint);
}

uint64_t specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_78_3();
  if (v4)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v14;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        OUTLINED_FUNCTION_112_5();
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSExtensionItem);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_97_4();
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v2, 1);
        v5 = v14;
      }

      ++v10;
      *(v5 + 16) = v2;
      outlined init with take of Any(&v13, (v5 + 32 * v3 + 32));
    }

    while (v1 != v10);
    return v5;
  }

  __break(1u);
  return result;
}

{
  OUTLINED_FUNCTION_78_3();
  if (v4)
  {
    v1 = OUTLINED_FUNCTION_54_10();
  }

  else
  {
    OUTLINED_FUNCTION_83_5();
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v5;
  }

  v14 = MEMORY[0x1E69E7CC0];
  v6 = OUTLINED_FUNCTION_81_1();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6, v7, v8);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v14;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_95_2();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_97_4();
      if (v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1, v2, 1);
        v5 = v14;
      }

      ++v10;
      *(v5 + 16) = v2;
      outlined init with take of Any(&v13, (v5 + 32 * v3 + 32));
    }

    while (v1 != v10);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB22010](v6, a1);
        }

        else
        {
          v7 = *(a1 + 8 * v6 + 32);
        }

        ++v6;
        type metadata accessor for NSObject(0, a2);
        v8 = OUTLINED_FUNCTION_6_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v8);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);
      return v9;
    }
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

ConversationKit::ControlsActionState __swiftcall ControlsActionState.init(buttonEnabled:stateEnabled:)(Swift::Bool buttonEnabled, Swift::Bool stateEnabled)
{
  if (stateEnabled)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (v2 & 0xFFFE | buttonEnabled);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ControlsActionState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return static ControlsActionState.== infix(_:_:)(v2 | *a1, v3 | *a2);
}

uint64_t ShareMenuActionState.screenSharingCountdownTime.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ShareMenuActionState.description.getter(__int16 a1, uint64_t a2, __int16 a3)
{
  _StringGuts.grow(_:)(76);
  MEMORY[0x1BFB20B10](0x3A64656C62616E65, 0xE800000000000000);
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v5, v6);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC502950);
  if ((a1 & 0x100) != 0)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v7, v8);

  MEMORY[0x1BFB20B10](0x506572616873202CLL, 0xEF3A676E6979616CLL);
  if ((a3 & 0x100) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1BFB20B10](v9, v10);

  MEMORY[0x1BFB20B10](0xD00000000000001DLL, 0x80000001BC502970);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v11);

  return 0;
}

uint64_t static ShareMenuActionState.== infix(_:_:)(__int16 a1, uint64_t a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if ((v8 & 0x100) == 0 && (v8 & 1) == 0)
  {
    if (a3)
    {
      if ((a6 & 1) == 0)
      {
        return 0;
      }

      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }

    result = 0;
    if ((a6 & 1) == 0 && a2 == a5)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

ConversationKit::ShareMenuActionState __swiftcall ShareMenuActionState.init()()
{
  v0 = 0;
  v1 = 0;
  v2 = 1;
  result.screenSharingCountdownTime.value = v1;
  result.buttonEnabled = v0;
  result.screenSharingEnabled = BYTE1(v0);
  *result.gap2 = *(&v0 + 2);
  *&result.gap2[4] = HIWORD(v0);
  *&result.screenSharingCountdownTime.is_nil = v2;
  return result;
}

ConversationKit::ShareMenuActionState __swiftcall ShareMenuActionState.init(buttonEnabled:screenSharingEnabled:screenSharingCountdownTime:joinedSharePlayActivity:)(Swift::Bool buttonEnabled, Swift::Bool screenSharingEnabled, Swift::Int_optional screenSharingCountdownTime, Swift::Bool joinedSharePlayActivity)
{
  value = screenSharingCountdownTime.value;
  if (screenSharingEnabled)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFE | buttonEnabled;
  if (joinedSharePlayActivity)
  {
    LOWORD(screenSharingCountdownTime.value) = 256;
  }

  else
  {
    LOWORD(screenSharingCountdownTime.value) = 0;
  }

  v7 = screenSharingCountdownTime.value & 0xFFFE | screenSharingCountdownTime.is_nil;
  v8 = v6;
  v9 = value;
  result.screenSharingCountdownTime.value = v9;
  result.buttonEnabled = v8;
  result.screenSharingEnabled = BYTE1(v8);
  *result.gap2 = *(&v8 + 2);
  *&result.gap2[4] = HIWORD(v8);
  *&result.screenSharingCountdownTime.is_nil = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ShareMenuActionState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a1[17])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (a2[17])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return static ShareMenuActionState.== infix(_:_:)(v2 | *a1, *(a1 + 1), v3 | a1[16], v4 | *a2, *(a2 + 1), v5 | a2[16]);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ShareMenuActionState()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (v0[17])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return ShareMenuActionState.description.getter(v1 | *v0, *(v0 + 1), v2 | v0[16]);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance ConversationControlsAction.ButtonOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance ConversationControlsAction.ButtonOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.symmetricDifference(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t ConversationControlsAction.CallButtonStyle.init(_:conversation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v5 = *(a2 + 184);
  v6 = v5();
  v7 = [v6 isFaceTimeProvider];

  if (v7)
  {
    outlined init with copy of Conversation?(a3, &v21);
    if (v22)
    {
      outlined init with take of TapInteractionHandler(&v21, v23);
      v8 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v9 = OUTLINED_FUNCTION_40_2();
      v10(v9);
      OUTLINED_FUNCTION_6_4();
      swift_unknownObjectRelease();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd);
      v11 = v8 == 2;
      __swift_destroy_boxed_opaque_existential_1(v23);
      return v11;
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v21, &_s15ConversationKit0A0_pSgMd);
  }

  v12 = OUTLINED_FUNCTION_72_6();
  v13 = (v5)(v12);
  v14 = [v13 isFaceTimeProvider];

  if (v14 && (v15 = OUTLINED_FUNCTION_72_6(), (v16(v15) & 1) != 0))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd);
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_72_6();
    v18 = (v5)(v17);
    v19 = [v18 isSystemProvider];
    swift_unknownObjectRelease();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a3, &_s15ConversationKit0A0_pSgMd);
    if (v19)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int ConversationControlsAction.CallButtonStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction.CallButtonStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationControlsAction.CallButtonStyle.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int ConversationControlsAction.Location.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction.Location()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ConversationControlsAction.Location.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for avLessLeaveConfirmationActions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd);
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsAction();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BC4BAA20;
  swift_storeEnumTagMultiPayload();
  result = swift_storeEnumTagMultiPayload();
  static ConversationControlsAction.avLessLeaveConfirmationActions = v0;
  return result;
}

uint64_t *ConversationControlsAction.avLessLeaveConfirmationActions.unsafeMutableAddressor()
{
  if (one-time initialization token for avLessLeaveConfirmationActions != -1)
  {
    OUTLINED_FUNCTION_47_12();
  }

  return &static ConversationControlsAction.avLessLeaveConfirmationActions;
}

uint64_t static ConversationControlsAction.avLessLeaveConfirmationActions.getter()
{
  if (one-time initialization token for avLessLeaveConfirmationActions != -1)
  {
    OUTLINED_FUNCTION_47_12();
  }
}

Swift::tuple_String_optional_String __swiftcall ConversationControlsAction.displayStrings()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v0, v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x3Cu:
    case 0x3Du:
      break;
    case 2u:
    case 3u:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      break;
    case 4u:
    case 0x12u:
    case 0x13u:
      OUTLINED_FUNCTION_40_15();
      goto LABEL_20;
    case 5u:
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      goto LABEL_13;
    case 6u:
    case 7u:
    case 8u:
    case 0x15u:
    case 0x18u:
    case 0x19u:
    case 0x38u:
    case 0x39u:
    case 0x3Bu:
      OUTLINED_FUNCTION_34_19();
      break;
    case 9u:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      OUTLINED_FUNCTION_34_19();
      break;
    case 0x14u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x27u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Du:
    case 0x30u:
      OUTLINED_FUNCTION_7_60();
      goto LABEL_20;
    case 0x1Au:
      OUTLINED_FUNCTION_32_14();
      goto LABEL_20;
    case 0x1Du:
    case 0x1Fu:
    case 0x21u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_28_25();
      goto LABEL_20;
    case 0x1Eu:
    case 0x20u:
    case 0x22u:
    case 0x23u:
    case 0x32u:
    case 0x33u:
    case 0x35u:
      OUTLINED_FUNCTION_12_44();
      goto LABEL_20;
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x29u:
    case 0x34u:
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_32_14();
      goto LABEL_20;
    case 0x2Cu:
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_80_2();
      goto LABEL_20;
    case 0x2Eu:
      OUTLINED_FUNCTION_100_1();
      OUTLINED_FUNCTION_32_14();
      OUTLINED_FUNCTION_80_2();
      goto LABEL_20;
    case 0x31u:
      OUTLINED_FUNCTION_100_1();
      goto LABEL_20;
    case 0x3Au:
      OUTLINED_FUNCTION_34_19();
      break;
    case 0x3Eu:
      OUTLINED_FUNCTION_34_19();
LABEL_13:
      OUTLINED_FUNCTION_28_25();
      break;
    case 0x3Fu:
      OUTLINED_FUNCTION_34_19();
      OUTLINED_FUNCTION_28_25();
      break;
    default:
LABEL_20:
      v5 = one-time initialization token for conversationKit;

      if (v5 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_40_0();
      v6 = OUTLINED_FUNCTION_38_2();
      OUTLINED_FUNCTION_17_0(v6, v7, v8, v9, v14);
      swift_bridgeObjectRelease_n();
      break;
  }

  OUTLINED_FUNCTION_30_0();
  result._1._object = v13;
  result._1._countAndFlagsBits = v12;
  result._0.value._object = v11;
  result._0.value._countAndFlagsBits = v10;
  return result;
}

void closure #1 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setEnabled_];
    }
  }
}

void *closure #9 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    (*((*MEMORY[0x1E69E7D40] & *result) + 0x2A0))();

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = *(a2 + 208);
      if (v8(ObjectType, a2) != 2)
      {
        if (v8(ObjectType, a2) != 1)
        {
          return swift_unknownObjectRelease();
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return swift_unknownObjectRelease();
        }

        v10 = Strong;
        v11 = &selRef_endActiveAndAnswerCall_;
        goto LABEL_9;
      }

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = &selRef_endHeldAndAnswerCall_;
LABEL_9:
        v13 = *&v10[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_callCenter];

        [v13 *v11];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall ConversationControlsAction.isInCallControls()()
{
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_108();
  v1 = OUTLINED_FUNCTION_38_2();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 0x12 && ((0x3DC03u >> EnumCaseMultiPayload) & 1) != 0)
  {
    return 1;
  }

  _s15ConversationKit0A14ControlsActionOWOhTm_1();
  return 0;
}

void static ConversationControlsAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29();
  v105 = v1;
  v106 = v2;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v103 = v4;
  v104 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v98 = v5 - v6;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v96 - v8;
  v9 = type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v100 = v11 - v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v96 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v96 - v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v96 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v96 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionO_ACtMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v96 - v36;
  v39 = (&v96 + *(v38 + 56) - v36);
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v105, &v96 - v36);
  v40 = v106;
  v106 = v39;
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v40, v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v31);
      if (OUTLINED_FUNCTION_35_11() != 1)
      {
        goto LABEL_141;
      }

      goto LABEL_70;
    case 2u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v28);
      if (OUTLINED_FUNCTION_35_11() == 2)
      {
        v49 = v103;
        v48 = v104;
        v50 = v97;
        (*(v103 + 32))(v97, v9, v104);
        static UUID.== infix(_:_:)();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v28, v48);
        goto LABEL_70;
      }

      (*(v103 + 8))(v28, v104);
      goto LABEL_141;
    case 3u:
      OUTLINED_FUNCTION_0_108();
      v52 = v99;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v99);
      if (OUTLINED_FUNCTION_35_11() != 3)
      {
        (*(v103 + 8))(v52, v104);
        goto LABEL_141;
      }

      v54 = v103;
      v53 = v104;
      (*(v103 + 32))(v98, v9, v104);
      static UUID.== infix(_:_:)();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_206();
      v55(v56);
      (v55)(v52, v53);
LABEL_70:
      OUTLINED_FUNCTION_1_95();
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
      goto LABEL_145;
    case 4u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v23);
      if (OUTLINED_FUNCTION_35_11() == 4)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 5u:
      OUTLINED_FUNCTION_0_108();
      v105 = v37;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v20);
      v58 = *v20;
      v57 = v20[1];
      v60 = v20[2];
      v59 = v20[3];
      v62 = v20[4];
      v61 = v20[5];
      v63 = v20[6];
      v64 = v106;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v75 = OUTLINED_FUNCTION_4_74();
        outlined consume of GameControllerContext?(v75, v76, v77);
        v37 = v105;
LABEL_141:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit0A14ControlsActionO_ACtMd);
        goto LABEL_145;
      }

      v65 = *v64;
      v66 = v64[1];
      v68 = v64[2];
      v67 = v64[3];
      v69 = v64[4];
      v70 = v64[5];
      v71 = v64[6];
      if (v60 == 2)
      {
        if (v68 == 2)
        {
LABEL_84:
          v72 = OUTLINED_FUNCTION_4_74();
          outlined consume of GameControllerContext?(v72, v73, v74);
          OUTLINED_FUNCTION_1_95();
          goto LABEL_144;
        }

        goto LABEL_147;
      }

      if (v68 == 2)
      {
LABEL_147:
        v78 = v65;
        v79 = v58;
        v80 = v66;
        outlined consume of GameControllerContext?(v79, v57, v60);
        v81 = v78;
        v82 = v80;
        v83 = v68;
        goto LABEL_156;
      }

      if (v58 != v65)
      {
        outlined consume of GameControllerContext?(v65, v66, v68);
        goto LABEL_155;
      }

      if (v60 == 1)
      {
        if (v68 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_154;
      }

      if (v68 == 1)
      {
LABEL_154:
        v106 = v66;
        v103 = v69;
        v104 = v67;
        outlined copy of GameControllerSymbolDescribers?(v57, v60);
        outlined consume of GameControllerSymbolDescribers?(v57, v60);
        outlined consume of GameControllerSymbolDescribers?(v106, v68);
        goto LABEL_155;
      }

      v108[0] = v66;
      v108[1] = v68;
      v108[2] = v67;
      v108[3] = v69;
      v108[4] = v70;
      v108[5] = v71;
      v107[0] = v57;
      v107[1] = v60;
      v107[2] = v59;
      v107[3] = v62;
      v107[4] = v61;
      v107[5] = v63;
      v101 = v70;
      v102 = v65;
      v106 = v66;
      v103 = v69;
      v104 = v67;
      LODWORD(v100) = static GameControllerSymbolDescribers.== infix(_:_:)(v107, v108);
      v84 = OUTLINED_FUNCTION_4_74();
      outlined copy of GameControllerContext?(v84, v85, v86);
      outlined copy of GameControllerContext?(v102, v106, v68);
      outlined copy of GameControllerContext?(v102, v106, v68);
      v87 = OUTLINED_FUNCTION_4_74();
      outlined copy of GameControllerContext?(v87, v88, v89);

      v90 = OUTLINED_FUNCTION_4_74();
      outlined consume of GameControllerContext?(v90, v91, v92);
      OUTLINED_FUNCTION_92_2(v102);
      OUTLINED_FUNCTION_92_2(v102);
      v93 = OUTLINED_FUNCTION_4_74();
      outlined consume of GameControllerContext?(v93, v94, v95);
      if (v100)
      {
        goto LABEL_84;
      }

LABEL_155:
      v81 = OUTLINED_FUNCTION_4_74();
LABEL_156:
      outlined consume of GameControllerContext?(v81, v82, v83);
      OUTLINED_FUNCTION_1_95();
LABEL_144:
      _s15ConversationKit0A14ControlsActionOWOhTm_1();
LABEL_145:
      OUTLINED_FUNCTION_30_0();
      return;
    case 6u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v0);
      if (OUTLINED_FUNCTION_35_11() == 6)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 7u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v101);
      if (OUTLINED_FUNCTION_35_11() == 7)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 8u:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v102);
      if (OUTLINED_FUNCTION_35_11() == 8)
      {
        goto LABEL_70;
      }

      goto LABEL_141;
    case 9u:
      OUTLINED_FUNCTION_0_108();
      v41 = v100;
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v100);
      v43 = *v41;
      v42 = v41[1];
      v44 = v106;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

        goto LABEL_141;
      }

      v45 = *v44;
      v46 = v44[1];
      if (v43 != v45 || v42 != v46)
      {
        OUTLINED_FUNCTION_38_2();
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_143:
      OUTLINED_FUNCTION_1_95();
      goto LABEL_144;
    case 0xAu:
      if (OUTLINED_FUNCTION_49_13() == 10)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xBu:
      if (OUTLINED_FUNCTION_49_13() == 11)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xCu:
      if (OUTLINED_FUNCTION_49_13() == 12)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xDu:
      if (OUTLINED_FUNCTION_49_13() == 13)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xEu:
      if (OUTLINED_FUNCTION_49_13() == 14)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0xFu:
      if (OUTLINED_FUNCTION_49_13() == 15)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x10u:
      if (OUTLINED_FUNCTION_49_13() == 16)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x11u:
      if (OUTLINED_FUNCTION_49_13() == 17)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x12u:
      if (OUTLINED_FUNCTION_49_13() == 18)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x13u:
      if (OUTLINED_FUNCTION_49_13() == 19)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x14u:
      if (OUTLINED_FUNCTION_49_13() == 20)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x15u:
      if (OUTLINED_FUNCTION_49_13() == 21)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x16u:
      if (OUTLINED_FUNCTION_49_13() == 22)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x17u:
      if (OUTLINED_FUNCTION_49_13() == 23)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x18u:
      if (OUTLINED_FUNCTION_49_13() == 24)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x19u:
      if (OUTLINED_FUNCTION_49_13() == 25)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Au:
      if (OUTLINED_FUNCTION_49_13() == 26)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Bu:
      if (OUTLINED_FUNCTION_49_13() == 27)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Cu:
      if (OUTLINED_FUNCTION_49_13() == 28)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Du:
      if (OUTLINED_FUNCTION_49_13() == 29)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Eu:
      if (OUTLINED_FUNCTION_49_13() == 30)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x1Fu:
      if (OUTLINED_FUNCTION_49_13() == 31)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x20u:
      if (OUTLINED_FUNCTION_49_13() == 32)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x21u:
      if (OUTLINED_FUNCTION_49_13() == 33)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x22u:
      if (OUTLINED_FUNCTION_49_13() == 34)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x23u:
      if (OUTLINED_FUNCTION_49_13() == 35)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x24u:
      if (OUTLINED_FUNCTION_49_13() == 36)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x25u:
      if (OUTLINED_FUNCTION_49_13() == 37)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x26u:
      if (OUTLINED_FUNCTION_49_13() == 38)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x27u:
      if (OUTLINED_FUNCTION_49_13() == 39)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x28u:
      if (OUTLINED_FUNCTION_49_13() == 40)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x29u:
      if (OUTLINED_FUNCTION_49_13() == 41)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Au:
      if (OUTLINED_FUNCTION_49_13() == 42)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Bu:
      if (OUTLINED_FUNCTION_49_13() == 43)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Cu:
      if (OUTLINED_FUNCTION_49_13() == 44)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Du:
      if (OUTLINED_FUNCTION_49_13() == 45)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Eu:
      if (OUTLINED_FUNCTION_49_13() == 46)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x2Fu:
      if (OUTLINED_FUNCTION_49_13() == 47)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x30u:
      if (OUTLINED_FUNCTION_49_13() == 48)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x31u:
      if (OUTLINED_FUNCTION_49_13() == 49)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x32u:
      if (OUTLINED_FUNCTION_49_13() == 50)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x33u:
      if (OUTLINED_FUNCTION_49_13() == 51)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x34u:
      if (OUTLINED_FUNCTION_49_13() == 52)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x35u:
      if (OUTLINED_FUNCTION_49_13() == 53)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x36u:
      if (OUTLINED_FUNCTION_49_13() == 54)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x37u:
      if (OUTLINED_FUNCTION_49_13() == 55)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x38u:
      if (OUTLINED_FUNCTION_49_13() == 56)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x39u:
      if (OUTLINED_FUNCTION_49_13() == 57)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Au:
      if (OUTLINED_FUNCTION_49_13() == 58)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Bu:
      if (OUTLINED_FUNCTION_49_13() == 59)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Cu:
      if (OUTLINED_FUNCTION_49_13() == 60)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Du:
      if (OUTLINED_FUNCTION_49_13() == 61)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Eu:
      if (OUTLINED_FUNCTION_49_13() == 62)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    case 0x3Fu:
      if (OUTLINED_FUNCTION_49_13() == 63)
      {
        goto LABEL_143;
      }

      goto LABEL_141;
    default:
      OUTLINED_FUNCTION_0_108();
      _s15ConversationKit0A14ControlsActionOWOcTm_0(v37, v34);
      if (!OUTLINED_FUNCTION_35_11())
      {
        goto LABEL_70;
      }

      goto LABEL_141;
  }
}

void ConversationControlsAction.hash(into:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = (v11 - v10);
  OUTLINED_FUNCTION_0_108();
  _s15ConversationKit0A14ControlsActionOWOcTm_0(v1, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v13 = *v12;
      v14 = 7;
      goto LABEL_35;
    case 2u:
      v16 = OUTLINED_FUNCTION_88();
      v17(v16);
      v18 = 15;
      goto LABEL_32;
    case 3u:
      v19 = OUTLINED_FUNCTION_88();
      v20(v19);
      v18 = 16;
LABEL_32:
      MEMORY[0x1BFB22640](v18);
      lazy protocol witness table accessor for type UIControlState and conformance UIControlState(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v4 + 8))(v8, v2);
      goto LABEL_72;
    case 4u:
      v13 = *v12;
      v14 = 17;
      goto LABEL_35;
    case 5u:
      v25 = *v12;
      v24 = *(v12 + 1);
      v26 = *(v12 + 2);
      MEMORY[0x1BFB22640](42);
      if (v26 == 2)
      {
        v23 = 0;
LABEL_36:
        Hasher._combine(_:)(v23);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v25);
        if (v26 == 1)
        {
          Hasher._combine(_:)(0);
          v27 = v25;
          v28 = v24;
          v29 = 1;
        }

        else
        {
          Hasher._combine(_:)(1u);
          GameControllerSymbolDescribers.hash(into:)();
          v27 = v25;
          v28 = v24;
          v29 = v26;
        }

        outlined consume of GameControllerContext?(v27, v28, v29);
      }

LABEL_72:
      OUTLINED_FUNCTION_30_0();
      return;
    case 6u:
      v21 = *v12;
      v22 = 43;
      goto LABEL_51;
    case 7u:
      v21 = *v12;
      v22 = 44;
      goto LABEL_51;
    case 8u:
      v21 = *v12;
      v22 = 45;
LABEL_51:
      MEMORY[0x1BFB22640](v22);
      v15 = v21;
      goto LABEL_71;
    case 9u:
      MEMORY[0x1BFB22640](55);
      String.hash(into:)();

      goto LABEL_72;
    case 0xAu:
      v15 = 0;
      goto LABEL_71;
    case 0xBu:
      v15 = 1;
      goto LABEL_71;
    case 0xCu:
      v15 = 2;
      goto LABEL_71;
    case 0xDu:
      v15 = 4;
      goto LABEL_71;
    case 0xEu:
      v15 = 5;
      goto LABEL_71;
    case 0xFu:
      v15 = 6;
      goto LABEL_71;
    case 0x10u:
      v15 = 8;
      goto LABEL_71;
    case 0x11u:
      v15 = 9;
      goto LABEL_71;
    case 0x12u:
      v15 = 10;
      goto LABEL_71;
    case 0x13u:
      v15 = 11;
      goto LABEL_71;
    case 0x14u:
      v15 = 12;
      goto LABEL_71;
    case 0x15u:
      v15 = 13;
      goto LABEL_71;
    case 0x16u:
      v15 = 14;
      goto LABEL_71;
    case 0x17u:
      v15 = 18;
      goto LABEL_71;
    case 0x18u:
      v15 = 19;
      goto LABEL_71;
    case 0x19u:
      v15 = 20;
      goto LABEL_71;
    case 0x1Au:
      v15 = 21;
      goto LABEL_71;
    case 0x1Bu:
      v15 = 22;
      goto LABEL_71;
    case 0x1Cu:
      v15 = 23;
      goto LABEL_71;
    case 0x1Du:
      v15 = 24;
      goto LABEL_71;
    case 0x1Eu:
      v15 = 25;
      goto LABEL_71;
    case 0x1Fu:
      v15 = 26;
      goto LABEL_71;
    case 0x20u:
      v15 = 27;
      goto LABEL_71;
    case 0x21u:
      v15 = 28;
      goto LABEL_71;
    case 0x22u:
      v15 = 29;
      goto LABEL_71;
    case 0x23u:
      v15 = 30;
      goto LABEL_71;
    case 0x24u:
      v15 = 31;
      goto LABEL_71;
    case 0x25u:
      v15 = 32;
      goto LABEL_71;
    case 0x26u:
      v15 = 33;
      goto LABEL_71;
    case 0x27u:
      v15 = 34;
      goto LABEL_71;
    case 0x28u:
      v15 = 35;
      goto LABEL_71;
    case 0x29u:
      v15 = 36;
      goto LABEL_71;
    case 0x2Au:
      v15 = 37;
      goto LABEL_71;
    case 0x2Bu:
      v15 = 38;
      goto LABEL_71;
    case 0x2Cu:
      v15 = 39;
      goto LABEL_71;
    case 0x2Du:
      v15 = 40;
      goto LABEL_71;
    case 0x2Eu:
      v15 = 41;
      goto LABEL_71;
    case 0x2Fu:
      v15 = 46;
      goto LABEL_71;
    case 0x30u:
      v15 = 47;
      goto LABEL_71;
    case 0x31u:
      v15 = 48;
      goto LABEL_71;
    case 0x32u:
      v15 = 49;
      goto LABEL_71;
    case 0x33u:
      v15 = 50;
      goto LABEL_71;
    case 0x34u:
      v15 = 51;
      goto LABEL_71;
    case 0x35u:
      v15 = 52;
      goto LABEL_71;
    case 0x36u:
      v15 = 53;
      goto LABEL_71;
    case 0x37u:
      v15 = 54;
      goto LABEL_71;
    case 0x38u:
      v15 = 56;
      goto LABEL_71;
    case 0x39u:
      v15 = 57;
      goto LABEL_71;
    case 0x3Au:
      v15 = 58;
      goto LABEL_71;
    case 0x3Bu:
      v15 = 59;
      goto LABEL_71;
    case 0x3Cu:
      v15 = 60;
      goto LABEL_71;
    case 0x3Du:
      v15 = 61;
      goto LABEL_71;
    case 0x3Eu:
      v15 = 62;
      goto LABEL_71;
    case 0x3Fu:
      v15 = 63;
LABEL_71:
      MEMORY[0x1BFB22640](v15);
      goto LABEL_72;
    default:
      v13 = *v12;
      v14 = 3;
LABEL_35:
      MEMORY[0x1BFB22640](v14);
      v23 = v13;
      goto LABEL_36;
  }
}

Swift::Int ConversationControlsAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  ConversationControlsAction.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConversationControlsAction()
{
  Hasher.init(_seed:)();
  ConversationControlsAction.hash(into:)();
  return Hasher._finalize()();
}

uint64_t type metadata accessor for ConversationControlsAction()
{
  result = type metadata singleton initialization cache for ConversationControlsAction;
  if (!type metadata singleton initialization cache for ConversationControlsAction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of ConversationControlsAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationControlsAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)()
{
  return partial apply for closure #6 in ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
}

{
  OUTLINED_FUNCTION_17_1();
  v2 = *(type metadata accessor for UUID() - 8);
  return v0(v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t outlined assign with copy of ConversationControlsMoreMenuButtonDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Conversation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A0_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined consume of GameControllerContext?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    outlined consume of GameControllerSymbolDescribers?(a2, a3);
  }
}

uint64_t outlined consume of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of GameControllerSymbolDescribers?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of GameControllerContext?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 2)
  {
    return outlined copy of GameControllerSymbolDescribers?(a2, a3);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIControlState and conformance UIControlState(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_170();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

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

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.ButtonOptions and conformance ConversationControlsAction.ButtonOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.CallButtonStyle and conformance ConversationControlsAction.CallButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction.Location and conformance ConversationControlsAction.Location);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ControlsActionState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ShareMenuActionState(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
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

uint64_t storeEnumTagSinglePayload for ShareMenuActionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void type metadata completion function for ConversationControlsAction()
{
  type metadata accessor for (oneToOne: Bool)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (avLess: Bool)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (isInSecondaryBanner: Bool)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for GameControllerContext?();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (title: String)();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for (oneToOne: Bool)()
{
  result = lazy cache variable for type metadata for (oneToOne: Bool);
  if (!lazy cache variable for type metadata for (oneToOne: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (oneToOne: Bool));
  }

  return result;
}

uint64_t type metadata accessor for (avLess: Bool)()
{
  result = lazy cache variable for type metadata for (avLess: Bool);
  if (!lazy cache variable for type metadata for (avLess: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (avLess: Bool));
  }

  return result;
}

uint64_t type metadata accessor for (isInSecondaryBanner: Bool)()
{
  result = lazy cache variable for type metadata for (isInSecondaryBanner: Bool);
  if (!lazy cache variable for type metadata for (isInSecondaryBanner: Bool))
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &lazy cache variable for type metadata for (isInSecondaryBanner: Bool));
  }

  return result;
}

void type metadata accessor for GameControllerContext?()
{
  if (!lazy cache variable for type metadata for GameControllerContext?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GameControllerContext?);
    }
  }
}

uint64_t type metadata accessor for (title: String)()
{
  result = lazy cache variable for type metadata for (title: String);
  if (!lazy cache variable for type metadata for (title: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (title: String));
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationControlsAction.CallButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ConversationControlsAction.Location(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with take of Handle?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LiveCommunicationKit6HandleVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MomentsIndicatorViewModel.__allocating_init(type:remoteParticipantName:)(char a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 32) = a3;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

id one-time initialization function for numberFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static MomentsIndicatorViewModel.numberFormatter = result;
  return result;
}

uint64_t *MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  return &static MomentsIndicatorViewModel.numberFormatter;
}

id static MomentsIndicatorViewModel.numberFormatter.getter()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  swift_beginAccess();
  v0 = static MomentsIndicatorViewModel.numberFormatter;

  return v0;
}

void static MomentsIndicatorViewModel.numberFormatter.setter(uint64_t a1)
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  static MomentsIndicatorViewModel.numberFormatter = a1;
}

uint64_t (*static MomentsIndicatorViewModel.numberFormatter.modify())()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

id key path getter for static MomentsIndicatorViewModel.numberFormatter : MomentsIndicatorViewModel.Type@<X0>(void *a1@<X8>)
{
  MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  *a1 = static MomentsIndicatorViewModel.numberFormatter;

  return v2;
}

void key path setter for static MomentsIndicatorViewModel.numberFormatter : MomentsIndicatorViewModel.Type(id *a1)
{
  v1 = *a1;
  MomentsIndicatorViewModel.numberFormatter.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = static MomentsIndicatorViewModel.numberFormatter;
  static MomentsIndicatorViewModel.numberFormatter = v1;
}

uint64_t MomentsIndicatorViewModel.text.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v27 = *(v0 + 40);
      v28 = type metadata accessor for Locale();
      if (!v27)
      {
        __swift_storeEnumTagSinglePayload(v4, 1, 1, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BC4BA940;
        v42 = *(v0 + 24);
        v41 = *(v0 + 32);
        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v40 + 32) = v42;
        *(v40 + 40) = v41;
        v43 = one-time initialization token for conversationKit;

        if (v43 != -1)
        {
          OUTLINED_FUNCTION_7_12();
        }

        OUTLINED_FUNCTION_2_90();
        OUTLINED_FUNCTION_17_0(0x5F4B4F4F545F4025, 0xED00004F544F4850, v44, v45, v52);
        OUTLINED_FUNCTION_3_86();
        if (*(v40 + 16))
        {
          OUTLINED_FUNCTION_209();
          String.init(format:locale:arguments:)();
        }

        v46 = v4;
        goto LABEL_34;
      }

      __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_1BC4BAA20;
      v30 = *(v0 + 24);
      v29 = *(v0 + 32);
      v1 = MEMORY[0x1E69E6158];
      *(v4 + 7) = MEMORY[0x1E69E6158];
      v10 = lazy protocol witness table accessor for type String and conformance String();
      *(v4 + 8) = v10;
      *(v4 + 4) = v30;
      *(v4 + 5) = v29;
      v31 = one-time initialization token for numberFormatter;

      if (v31 == -1)
      {
LABEL_13:
        swift_beginAccess();
        v32 = *(v0 + 40);
        v16 = v32 + 1;
        if (v32 == -1)
        {
          __break(1u);
          goto LABEL_39;
        }

        v33 = static MomentsIndicatorViewModel.numberFormatter;
        isa = UInt._bridgeToObjectiveC()().super.super.isa;
        v35 = [v33 stringFromNumber_];

        if (v35)
        {
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v39 = (v4 + 72);
          *(v4 + 12) = v1;
          *(v4 + 13) = v10;
          if (v38)
          {
            *v39 = v36;
LABEL_28:
            *(v4 + 10) = v38;
            if (one-time initialization token for conversationKit != -1)
            {
              OUTLINED_FUNCTION_7_12();
            }

            OUTLINED_FUNCTION_2_90();
            OUTLINED_FUNCTION_17_0(0xD000000000000018, 0x80000001BC502DD0, v47, v48, v53);
            OUTLINED_FUNCTION_3_86();
            if (*(v4 + 2))
            {
              OUTLINED_FUNCTION_209();
              String.init(format:locale:arguments:)();
            }

            v46 = v7;
            goto LABEL_34;
          }
        }

        else
        {
          v39 = (v4 + 72);
          *(v4 + 12) = v1;
          *(v4 + 13) = v10;
        }

        *v39 = 0;
        v38 = 0xE000000000000000;
        goto LABEL_28;
      }

LABEL_37:
      OUTLINED_FUNCTION_0_109();
      goto LABEL_13;
    }

    if (*(v0 + 40))
    {
      v11 = type metadata accessor for Locale();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1BC4BA940;
      v13 = *(v0 + 40);
      v14 = __CFADD__(v13, 1);
      v15 = v13 + 1;
      if (!v14)
      {
        v7 = v12;
        v16 = "%@_TOOK_PHOTO_COUNT_(%@)";
        v17 = MEMORY[0x1E69E6870];
        *(v12 + 56) = MEMORY[0x1E69E6810];
        *(v12 + 64) = v17;
        *(v12 + 32) = v15;
        if (one-time initialization token for conversationKit == -1)
        {
LABEL_6:
          OUTLINED_FUNCTION_4_75();
          OUTLINED_FUNCTION_17_0(v18 | 2, v16 | 0x8000000000000000, v19, v20, v51);
          OUTLINED_FUNCTION_3_86();
          if (*(v7 + 2))
          {
            OUTLINED_FUNCTION_209();
            String.init(format:locale:arguments:)();
          }

          v46 = v10;
LABEL_34:
          outlined destroy of Locale?(v46);
          return OUTLINED_FUNCTION_209();
        }

LABEL_39:
        OUTLINED_FUNCTION_7_12();
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_37;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_7_12();
    }

    OUTLINED_FUNCTION_2_90();
    v25 = 0x4B4F4F545F554F59;
    v26 = 0xEE004F544F48505FLL;
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_7_12();
    }

    OUTLINED_FUNCTION_4_75();
    v25 = v24 | 1;
    v26 = 0x80000001BC502E10;
  }

  OUTLINED_FUNCTION_17_0(v25, v26, v21, v22, v23);
  OUTLINED_FUNCTION_3_86();
  return OUTLINED_FUNCTION_209();
}

uint64_t MomentsIndicatorViewModel.captureCount.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
  }

  return result;
}

uint64_t MomentsIndicatorViewModel.init(type:remoteParticipantName:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

Swift::Void __swiftcall MomentsIndicatorViewModel.refresh()()
{
  v1 = *(v0 + 40);
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 40) = v3;
  }
}

uint64_t MomentsIndicatorViewModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::String __swiftcall PersonNameComponents.formattedName(style:)(NSPersonNameComponentsFormatterStyle style)
{
  v2 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v4 = [v2 localizedStringFromPersonNameComponents:isa style:style options:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t PersonNameComponents.init(formattedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PersonNameComponents();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v10 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init], v11 = MEMORY[0x1BFB209B0](a1, a2), , v12 = objc_msgSend(v10, sel_personNameComponentsFromString_, v11), v10, v11, v12))
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(a3, v9, v6);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

id one-time initialization function for initials()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  result = [v0 setStyle_];
  static NSPersonNameComponentsFormatter.initials = v0;
  return result;
}

id static NSPersonNameComponentsFormatter.initials.getter()
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  swift_beginAccess();
  v0 = static NSPersonNameComponentsFormatter.initials;

  return v0;
}

void static NSPersonNameComponentsFormatter.initials.setter(uint64_t a1)
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  swift_beginAccess();
  v2 = static NSPersonNameComponentsFormatter.initials;
  static NSPersonNameComponentsFormatter.initials = a1;
}

uint64_t (*static NSPersonNameComponentsFormatter.initials.modify())()
{
  if (one-time initialization token for initials != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

void FlashView.flash(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 bounds];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v10 setUserInteractionEnabled_];
  [v10 setAutoresizingMask_];
  v11 = [objc_opt_self() whiteColor];
  [v10 setBackgroundColor_];

  [v3 addSubview_];
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v23 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
  v24 = v13;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_38;
  v14 = _Block_copy(&v19);
  v15 = v10;

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a2;
  v23 = partial apply for closure #2 in FlashView.flash(completion:);
  v24 = v16;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v22 = &block_descriptor_6_0;
  v17 = _Block_copy(&v19);
  v18 = v15;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);

  [v12 animateWithDuration:327680 delay:v14 options:v17 animations:0.25 completion:0.075];
  _Block_release(v17);
  _Block_release(v14);
}

id FlashView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id FlashView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = type metadata accessor for FlashView();
  v1 = OUTLINED_FUNCTION_18_1();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id FlashView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FlashView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FlashView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FlashView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FlashView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id partial apply for closure #2 in FlashView.flash(completion:)()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) removeFromSuperview];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t InCallScreenShareCallControlsService.__allocating_init(controlsManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InCallScreenShareCallControlsService.shareMenuActionStates.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x740))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t InCallScreenShareCallControlsService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UIView.addConstraintsToFill(_:insets:)(UIView *_, NSDirectionalEdgeInsets insets)
{
  v3 = v2;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA7F0;
  v10 = [v3 leadingAnchor];
  v11 = [(UIView *)_ leadingAnchor];
  v12 = OUTLINED_FUNCTION_0_42();
  v14 = [v12 v13];

  *(v9 + 32) = v14;
  v15 = [v3 topAnchor];
  v16 = [(UIView *)_ topAnchor];
  v17 = OUTLINED_FUNCTION_0_42();
  v19 = [v17 v18];

  *(v9 + 40) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [(UIView *)_ trailingAnchor];
  v22 = OUTLINED_FUNCTION_0_42();
  v24 = [v22 v23];

  *(v9 + 48) = v24;
  v25 = [v3 bottomAnchor];
  v26 = [(UIView *)_ bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-bottom];

  *(v9 + 56) = v27;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];
}

void UIView.withLayer(_:)(void (*a1)(void))
{
  v3 = [v1 layer];
  a1();
}

double @objc UIView.safeAreaInsetFrame.getter(void *a1)
{
  v1 = a1;
  v2 = UIView.safeAreaInsetFrame.getter();

  return v2;
}

double UIView.safeAreaInsetFrame.getter()
{
  v1 = [v0 window];
  if (v1 && (v1, v2 = [v0 safeAreaLayoutGuide], v3 = objc_msgSend(v2, sel_hasAmbiguousLayout), v2, (v3 & 1) == 0) && (v4 = objc_msgSend(v0, sel_safeAreaLayoutGuide), objc_msgSend(v4, sel_layoutFrame), v4, CGRect.isValid.getter()))
  {
    v5 = [v0 safeAreaLayoutGuide];
    [v5 layoutFrame];
    v7 = v6;
  }

  else
  {
    [v0 bounds];
    return 0.0;
  }

  return v7;
}

double @objc UIView.displayScale.getter(void *a1)
{
  v1 = a1;
  v2 = UIView.displayScale.getter();

  return v2;
}

double UIView.displayScale.getter()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  return v3;
}

double static UIView.screenScale.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t *ClarityUIOutgoingCallActionProvider.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_96();
  }

  return &static ClarityUIOutgoingCallActionProvider.shared;
}

uint64_t static ClarityUIOutgoingCallActionProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_1_96();
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.().init()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager;
  *(v0 + v1) = [objc_opt_self() sharedManager];
  v2 = *MEMORY[0x1E69D8FA0];

  return ObservableNotificationHandler.init(name:)(v2);
}

uint64_t ClarityUIOutgoingCallActionProvider.areEmailAddressesRelevant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    return 1;
  }

  else
  {
    return [v0 isDirectFaceTimeAudioCallingCurrentlyAvailable];
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.arePhoneNumbersRelevant.getter()
{
  v0 = objc_opt_self();
  if ([v0 isDirectFaceTimeVideoCallingCurrentlyAvailable] & 1) != 0 || (objc_msgSend(v0, sel_isDirectFaceTimeAudioCallingCurrentlyAvailable))
  {
    return 1;
  }

  else
  {
    return [v0 isDirectTelephonyCallingCurrentlyAvailable];
  }
}

uint64_t ClarityUIOutgoingCallActionProvider.outgoingCallActions(for:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getKeyPath();
  lazy protocol witness table accessor for type ObservableNotificationHandler and conformance ObservableNotificationHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(v3, v4, v5, v6, v1);
  v9 = v8;
  if (*(v8 + 16))
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Log.clarityUI);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = *(v9 + 16);

      _os_log_impl(&dword_1BBC58000, v11, v12, "Looking up %ld IDS destinations.", v13, 0xCu);
      MEMORY[0x1BFB23DF0](v13, -1, -1);
    }

    else
    {
    }

    v14 = *(v2 + OBJC_IVAR____TtC15ConversationKit35ClarityUIOutgoingCallActionProvider_lookupManager);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v14 beginQueryWithDestinations:isa services:7];
  }

  else
  {
  }

  return v7;
}

uint64_t specialized ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v4 = MEMORY[0x1E69E7CD0];
  v63 = MEMORY[0x1E69E7CD0];
  v5 = objc_opt_self();
  v56 = v1;
  v58 = a1;
  if (![v5 isDirectFaceTimeAudioCallingCurrentlyAvailable])
  {
    v10 = 0;
    v9 = 0;
    v60 = 0;
    v14 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;

  v8 = [v3 faceTimeProvider];

  _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(a1, 0, v3, v8, 1, closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)specialized partial apply, v7, v64);
  v10 = v64[0];
  v9 = v64[1];
  v11 = v64[3];
  v60 = v64[2];
  v12 = v64[4];

  if (!v9)
  {

    v13 = v12;
    goto LABEL_7;
  }

  if (v11)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v11, v12);
    v13 = v12;

    v61[0] = v10;
    v61[1] = v9;
    outlined destroy of String(v61);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);

LABEL_7:
    v14 = v11;
    goto LABEL_9;
  }

  swift_beginAccess();
  outlined init with copy of ClarityUIOutgoingCallAction?(v64, &v65);

  specialized Set.formUnion<A>(_:)(v15);

  v69[0] = v10;
  v69[1] = v9;
  outlined destroy of String(v69);

  v14 = 0;
  v13 = v12;
LABEL_9:
  if ([v5 isDirectTelephonyCallingCurrentlyAvailable])
  {
    if (v9)
    {

      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v14, v13);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v14);
      if (v14)
      {
        goto LABEL_19;
      }
    }

    v16 = [v3 telephonyProvider];
    v17 = v58[3];
    v18 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v17);
    v19 = (*(v18 + 24))(v17, v18);
    result = specialized Array.count.getter(v19);
    if (result)
    {
      v54 = v10;
      v51 = v5;
      v52 = v14;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = v16;
        v22 = MEMORY[0x1BFB22010](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = v16;
        v22 = *(v19 + 32);
      }

      v23 = v22;

      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = 0;
      *(v24 + 40) = v3;
      v65 = 0x2D746361746E6F43;
      *&v66 = 0xE800000000000000;
      v26 = v58[3];
      v25 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v26);
      v27 = *(v25 + 8);
      v50 = v23;
      v28 = v21;
      v29 = v3;

      v30 = v27(v26, v25);
      MEMORY[0x1BFB20B10](v30);

      MEMORY[0x1BFB20B10](45, 0xE100000000000000);
      v62[0] = 0;
      v31 = String.init<A>(describing:)();
      MEMORY[0x1BFB20B10](v31);

      outlined consume of ClarityUIOutgoingCallAction?(v54, v9, v60, v52);
      v10 = v65;
      v9 = v66;

      v60 = 0;
      v32 = 0;
      v14 = closure #1 in ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)partial apply;
      v13 = v24;
      v5 = v51;
      goto LABEL_20;
    }
  }

  if (v9)
  {
LABEL_19:

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v14, v13);
    v32 = v60;
LABEL_20:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v34 = v33;
    v35 = *(v33 + 16);
    if (v35 >= *(v33 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v34 = v47;
    }

    *(v34 + 16) = v35 + 1;
    v36 = v34 + 40 * v35;
    *(v36 + 32) = v10;
    *(v36 + 40) = v9;
    *(v36 + 48) = v32 & 1;
    *(v36 + 56) = v14;
    *(v36 + 64) = v13;
    goto LABEL_24;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if ([v5 isDirectFaceTimeVideoCallingCurrentlyAvailable])
  {
    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x1E69E7CD0];
    v38 = swift_allocObject();
    *(v38 + 16) = v56;
    *(v38 + 24) = v37;

    v39 = [v3 faceTimeProvider];

    _s15ConversationKit43ClarityUIOutgoingCallActionProviderProtocolPAAE6action33_6FDC148922D24E7C1746D02CF781D8527contact8callType0rG7Manager0rG027shouldIncludeEmailAddresses19availabilityHandlerAA0cdeF0VSgAA0c9UIContactH0_p_AA0c6UICallS0OSo06TUCallgT0CSo06TUCallG0CSbSo16FZHandleIDStatusVSo8TUHandleCcSgtFAA0cdefG0C_Tt5g5(v58, 1, v3, v39, 1, closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)specialized partial apply, v38, &v65);

    if (v66)
    {
      v59 = v66;
      v53 = v14;
      v57 = v3;
      v40 = v65;
      v42 = v67;
      v41 = v68;
      v70[0] = v65;
      v70[1] = v66;
      outlined init with copy of String(v70, v62);
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v42, v41);
      v55 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v34 = v48;
      }

      v43 = *(v34 + 16);
      v44 = v59;
      if (v43 >= *(v34 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v44 = v59;
        v34 = v49;
      }

      *(v34 + 16) = v43 + 1;
      v45 = v34 + 40 * v43;
      *(v45 + 32) = v40;
      *(v45 + 40) = v44;
      *(v45 + 56) = v42;
      *(v45 + 64) = v41;
      if (v42)
      {
        outlined consume of ClarityUIOutgoingCallAction?(v55, v9, v60, v53);

        outlined destroy of String(v70);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v42);
      }

      else
      {
        swift_beginAccess();

        specialized Set.formUnion<A>(_:)(v46);
        outlined consume of ClarityUIOutgoingCallAction?(v55, v9, v60, v53);

        outlined destroy of String(v70);
      }
    }

    else
    {
      outlined consume of ClarityUIOutgoingCallAction?(v10, v9, v60, v14);
    }
  }

  else
  {
    outlined consume of ClarityUIOutgoingCallAction?(v10, v9, v60, v14);
  }

  return v34;
}

uint64_t ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v11 = MEMORY[0x1E69E7CD0];
  v93 = MEMORY[0x1E69E7CD0];
  v12 = *(a3 + 16);
  *&v90 = v3;
  v13 = v12(a2, a3);
  v87 = v10;
  v86 = v9;
  v83 = a1;
  v84 = v7;
  v82 = v8;
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v81 = v14 + 16;
    v15 = OUTLINED_FUNCTION_2_91();
    v16(v15);
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = swift_allocObject();
    v19 = v7;
    v20 = v18;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    (*(v19 + 32))(v18 + v17, v9, a2);
    *(v20 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v21 = [v10 faceTimeProvider];

    ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(a1, 0, v10, v21, 1, partial apply for closure #1 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v20, v94);
    v22 = v94[1];
    v89 = v94[0];
    v23 = v94[3];
    v88 = v94[2];
    v85 = v94[4];

    if (v22)
    {
      if (v23)
      {

        v24 = v85;
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v85);

        v91[0] = v89;
        v91[1] = v22;
        outlined destroy of String(v91);
        outlined consume of (@escaping @callee_guaranteed () -> ())?(v23);
LABEL_9:
        v9 = v86;

        goto LABEL_10;
      }

      swift_beginAccess();
      outlined init with copy of ClarityUIOutgoingCallAction?(v94, &v96);

      specialized Set.formUnion<A>(_:)(v25);

      v100[0] = v89;
      v100[1] = v22;
      outlined destroy of String(v100);
    }

    else
    {
    }

    v24 = v85;
    goto LABEL_9;
  }

  v89 = 0;
  v22 = 0;
  v88 = 0;
  v23 = 0;
  v24 = 0;
LABEL_10:
  v26 = OUTLINED_FUNCTION_4_76();
  if ((v27(v26) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v22)
  {

    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v24);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v23);
    if (v23)
    {
LABEL_16:

      v38 = v24;
      outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v23, v24);
      v31 = v22;
      goto LABEL_17;
    }
  }

  v28 = v87;
  v29 = v24;
  v30 = [v87 telephonyProvider];
  ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(v83, 0, v28, v30, 0, 0, 0, v95);
  v32 = v95[0];
  v31 = v95[1];
  v33 = v95[3];
  v85 = v95[2];
  v34 = v95[4];

  v24 = v29;
  v9 = v86;
  if (!v31)
  {
LABEL_15:
    if (!v22)
    {
      v40 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v35 = OUTLINED_FUNCTION_0_110();
  outlined consume of ClarityUIOutgoingCallAction?(v35, v36, v37, v23);

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v33, v34);
  v89 = v32;
  v88 = v85;
  v23 = v33;
  v38 = v34;
LABEL_17:
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v40 = v39;
  v41 = *(v39 + 16);
  if (v41 >= *(v39 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v40 = v77;
  }

  *(v40 + 16) = v41 + 1;
  v42 = v40 + 40 * v41;
  *(v42 + 32) = v89;
  *(v42 + 40) = v31;
  *(v42 + 48) = v88 & 1;
  *(v42 + 56) = v23;
  *(v42 + 64) = v38;
  v24 = v38;
  v9 = v86;
LABEL_21:
  v43 = OUTLINED_FUNCTION_4_76();
  v45 = v44(v43);
  v46 = v84;
  if ((v45 & 1) == 0)
  {
    v66 = OUTLINED_FUNCTION_0_110();
    outlined consume of ClarityUIOutgoingCallAction?(v66, v67, v68, v23);
LABEL_33:

    return v40;
  }

  v86 = v23;
  v85 = v24;
  v47 = swift_allocObject();
  *(v47 + 16) = MEMORY[0x1E69E7CD0];
  v81 = v47 + 16;
  v48 = OUTLINED_FUNCTION_2_91();
  v49(v48);
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = (v82 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v53 = v9;
  v54 = v52;
  *(v52 + 16) = a2;
  *(v52 + 24) = a3;
  (*(v46 + 32))(v52 + v50, v53, a2);
  *(v54 + v51) = v47;
  v55 = v87;
  v56 = [v87 faceTimeProvider];

  ClarityUIOutgoingCallActionProviderProtocol.action(contact:callType:callProviderManager:callProvider:shouldIncludeEmailAddresses:availabilityHandler:)(v83, 1, v55, v56, 1, partial apply for closure #2 in ClarityUIOutgoingCallActionProviderProtocol.outgoingCallActionsAndDestinationsToQuery(contact:), v54, &v96);

  if (v97)
  {
    v90 = v97;
    v57 = v96;
    v58 = v98;
    v59 = v99;
    v101[0] = v96;
    v101[1] = v97;
    outlined init with copy of String(v101, v92);
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v58, v59);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = v78;
    }

    v60 = *(v40 + 16);
    v61 = v90;
    if (v60 >= *(v40 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v61 = v90;
      v40 = v79;
    }

    *(v40 + 16) = v60 + 1;
    v62 = v40 + 40 * v60;
    *(v62 + 32) = v57;
    *(v62 + 40) = v61;
    *(v62 + 56) = v58;
    *(v62 + 64) = v59;
    if (v58)
    {
      v63 = OUTLINED_FUNCTION_0_110();
      OUTLINED_FUNCTION_3_87(v63, v64, v65);

      outlined destroy of String(v101);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v58);
    }

    else
    {
      swift_beginAccess();

      specialized Set.formUnion<A>(_:)(v72);
      v73 = OUTLINED_FUNCTION_0_110();
      OUTLINED_FUNCTION_3_87(v73, v74, v75);

      outlined destroy of String(v101);
    }

    goto LABEL_33;
  }

  v69 = OUTLINED_FUNCTION_0_110();
  OUTLINED_FUNCTION_3_87(v69, v70, v71);

  return v40;
}