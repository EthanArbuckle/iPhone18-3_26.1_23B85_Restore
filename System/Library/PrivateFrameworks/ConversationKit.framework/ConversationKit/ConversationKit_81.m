uint64_t LocalParticipantControlsView.generateIPadSupportedButtons()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x280);
  if ((v2() & 0x1000000) != 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if (v2())
  {
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x100) != 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x10000) != 0)
  {
    v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x1000000000000) != 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = v10;
  }

  if ((v2() & 0x10000000000) != 0)
  {
    v8 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
    MEMORY[0x1BFB20CC0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return v10;
  }

  return v1;
}

uint64_t LocalParticipantControlsView.layoutStagingButtons(topRightCornerFrame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v9 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 safeAreaInsets];
  v14 = v13;
  v52 = objc_opt_self();
  v15 = [v52 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v17 = &off_1E7FE9000;
  if (v16)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if (static AmbientState.isPresented != 1)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for shared != -1)
  {
LABEL_31:
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BC4BC370;
    v19 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
    v20 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    v21 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
    v51 = v18;
    *(v18 + 48) = v21;
    v14 = v14 + 20.0;
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
LABEL_6:
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x2C8))();
    v25 = *v12;
    outlined destroy of UIFontTextStyle(v12, type metadata accessor for LocalParticipantControlsView.ViewModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v26 = swift_allocObject();
    if (v25 == 1)
    {
      v27 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
      *(v26 + 16) = xmmword_1BC4BA930;
      v28 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      v51 = v26;
      v29 = v27;
    }

    else
    {
      *(v26 + 16) = xmmword_1BC4BAC30;
      v28 = *(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
      v51 = v26;
      *(v26 + 32) = v28;
    }

    v30 = v28;
    [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton) *(v17 + 3888)];
    [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton) *(v17 + 3888)];
  }

  [*(v5 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton) *(v17 + 3888)];
  v31 = v51;
  v32 = specialized Array.count.getter(v51);
  v17 = 0;
  v33 = v31 & 0xC000000000000001;
  v34 = v31 & 0xFFFFFFFFFFFFFF8;
  v49 = &v54;
  v50 = &v56;
  while (v32 != v17)
  {
    if (v33)
    {
      v35 = MEMORY[0x1BFB22010](v17, v51);
    }

    else
    {
      if (v17 >= *(v34 + 16))
      {
        goto LABEL_30;
      }

      v35 = *(v51 + 8 * v17 + 32);
    }

    v36 = v35;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v37 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x250);
    v12 = ((*MEMORY[0x1E69E7D40] & *v5) + 592);
    v38 = v37();
    if (v38 == 2)
    {
      v40 = &v53;
      v41 = v49;
    }

    else
    {
      v39 = 0.0;
      if (v38 != 3)
      {
        goto LABEL_21;
      }

      v40 = &v55;
      v41 = v50;
    }

    v42 = Layout.LocalParticipantViewCameraControls.init()(v40);
    v39 = *v41;
    v43 = [v52 currentDevice];
    [v43 userInterfaceIdiom];

LABEL_21:
    v44 = v37();
    if (v44 >= 2)
    {
      if (v44 == 2)
      {
        v45 = Layout.LocalParticipantViewCameraControls.init()(v57);
        v46 = v57[0];
      }

      else
      {
        v45 = Layout.LocalParticipantViewCameraControls.init()(v58);
        v46 = *&v58[7];
      }
    }

    else
    {
      v45 = Layout.LocalParticipantViewCameraControls.init()(v59);
      v46 = *&v59[3];
    }

    v47 = [v52 currentDevice];
    [v47 userInterfaceIdiom];

    [v36 setFrame_];
    ++v17;
  }
}

BOOL LocalParticipantControlsView.styleSupportsCinematicFramingButton.getter()
{
  if (static Platform.current.getter() != 1 && (LocalParticipantControlsView.styleSupportsSC.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250);
  return v1() == 3 || v1() == 2;
}

id LocalParticipantControlsView.styleSupportsSC.getter()
{
  if (static Platform.current.getter())
  {
    return 0;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_tuFeatures) scEnabled];
  }
}

BOOL LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter()
{
  OUTLINED_FUNCTION_5_18();
  v0 += 74;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_9_105();
  if (v3)
  {
    return 1;
  }

  v1();
  OUTLINED_FUNCTION_12_102();
  return v3 != 0;
}

uint64_t LocalParticipantControlsView.shouldShowEffectsButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 || (v5 = MEMORY[0x1E69E7D40], v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x250), v6() == 2) || ((*((*v5 & *v0) + 0x2C8))(), v7 = v4[2], v8 = outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel), v7 != 1) || !(v6)(v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = (*((*v5 & *v1) + 0x390))();
  }

  return v9 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCameraFlipButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = MEMORY[0x1E69E7D40];
  if (!v9)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v10 & *v1) + 0x2C8))();
        v11 = v7[9];
        outlined destroy of UIFontTextStyle(v7, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  (*((*v10 & *v1) + 0x2C8))();
  v12 = v4[3];
  v13 = outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v12 == 1 && (*((*v10 & *v1) + 0x250))(v13) && (((*((*v10 & *v1) + 0x390))() & 1) != 0 || ((*((*v10 & *v1) + 0x398))() & 1) != 0))
  {
    v14 = (*((*v10 & *v1) + 0x3A0))() ^ 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCameraBlurButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[1];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsCameraBlurButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowCinematicFramingButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = *v4;
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsCinematicFramingButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowReactionEffectGestureButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[5];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.shouldShowStudioLightButton.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))(v6) == 2)
  {
    goto LABEL_11;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (!v11)
  {
    swift_beginAccess();
    if (static AmbientState.isPresented == 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter())
      {
        (*((*v9 & *v1) + 0x2C8))();
        v12 = v8[9];
        outlined destroy of UIFontTextStyle(v8, type metadata accessor for LocalParticipantControlsView.ViewModel);
        if (v12)
        {
          goto LABEL_11;
        }
      }
    }
  }

  (*((*v9 & *v1) + 0x2C8))();
  v13 = v4[6];
  outlined destroy of UIFontTextStyle(v4, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (v13 != 1 || !LocalParticipantControlsView.styleSupportsReactionEffectGestureButton.getter())
  {
LABEL_11:
    v14 = 0;
  }

  else
  {
    v14 = (*((*v9 & *v1) + 0x390))();
  }

  return v14 & 1;
}

uint64_t LocalParticipantControlsView.buttonVisibilityMapping()()
{
  v1 = LocalParticipantControlsView.shouldShowEffectsButton.getter();
  v2 = LocalParticipantControlsView.shouldShowCameraFlipButton.getter();
  v3 = LocalParticipantControlsView.shouldShowCameraBlurButton.getter();
  v26 = LocalParticipantControlsView.shouldShowCinematicFramingButton.getter();
  v27 = LocalParticipantControlsView.shouldShowReactionEffectGestureButton.getter();
  v28 = LocalParticipantControlsView.shouldShowStudioLightButton.getter();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))() != 2;
  v6 = (*((*v4 & *v0) + 0x398))();
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9UIControlC_SbtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4D4E70;
  v10 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_effectsButton);
  *(inited + 32) = v10;
  *(inited + 40) = v1 & 1;
  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButton);
  *(inited + 48) = v11;
  *(inited + 56) = v2 & v5;
  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraFlipButtonWithText);
  *(inited + 64) = v12;
  if ((v2 & v5) == 1)
  {
    v13 = v6 & (v8 != 0);
  }

  else
  {
    v13 = v2;
  }

  *(inited + 72) = v13 & 1;
  v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cameraBlurButton);
  *(inited + 80) = v14;
  *(inited + 88) = v3 & 1;
  v15 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_cinematicFramingButton);
  *(inited + 96) = v15;
  *(inited + 104) = v26 & 1;
  v16 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_reactionEffectGestureButton);
  *(inited + 112) = v16;
  *(inited + 120) = v27 & 1;
  v17 = *(v0 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_studioLightButton);
  *(inited + 128) = v17;
  *(inited + 136) = v28 & 1;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIControl);
  lazy protocol witness table accessor for type UIControl and conformance NSObject();
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(char a1)
{
  v3 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_collapseButton);
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
  v10 = v9(v4);
  v11 = 0.0;
  if (v10 == 2)
  {
    v11 = 1.0;
  }

  [v7 setAlpha_];
  v12 = LocalParticipantControlsView.buttonVisibilityMapping()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  if (a1)
  {
    v15 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_127;
    v16 = _Block_copy(aBlock);

    [v15 animateWithDuration:v16 animations:0.25];
    _Block_release(v16);
  }

  else
  {

    closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(v13, v12);
  }

  v18 = *(v1 + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_videoPauseButton);
  (*((*v8 & *v1) + 0x2C8))(v17);
  v19 = v6[7];
  outlined destroy of UIFontTextStyle(v6, type metadata accessor for LocalParticipantControlsView.ViewModel);
  if (VideoMessageController.State.rawValue.getter(v19) == 0x676E696D726177 && v20 == 0xE700000000000000)
  {

    v24 = 1.0;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = 1.0;
    if ((v22 & 1) == 0)
    {
      v25 = (v9)(v23, 1.0);
      v24 = 1.0;
      if (v25 == 3)
      {
        v24 = 0.0;
      }
    }
  }

  [v18 setAlpha_];
}

void closure #1 in LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v7 &= v7 - 1;
      v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x438);
      v13 = *(*(a2 + 48) + 8 * v11);
      v12();
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(a2 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

Swift::Void __swiftcall LocalParticipantControlsView.updateControlsAlpha(animated:)(Swift::Bool animated)
{
  v2 = type metadata accessor for LocalParticipantControlsView.ViewModel(0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  LocalParticipantControlsView.updateControlsAlphaCommon(animated:)(0);
  OUTLINED_FUNCTION_13_2();
  v12 = *((*MEMORY[0x1E69E7D40] & v11) + 0x2C8);
  v12();
  v13 = v10[7];
  OUTLINED_FUNCTION_0_229();
  outlined destroy of UIFontTextStyle(v10, v14);
  v16 = VideoMessageController.State.rawValue.getter(v13) == 0x6552657669746361 && v15 == 0xEF676E6964726F63;
  if (!v16)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_13;
    }

    (v12)(v18);
    v19 = *(v1 + 7);
    OUTLINED_FUNCTION_0_229();
    outlined destroy of UIFontTextStyle(v1, v20);
    if (VideoMessageController.State.rawValue.getter(v19) != 0x7964616572 || v21 != 0xE500000000000000)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = 0;
      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_65();
  (*(v25 + 592))();
  OUTLINED_FUNCTION_9_105();
  v24 = v16;
LABEL_16:
  OUTLINED_FUNCTION_65();
  if (((*(v26 + 472))() & 1) != 0 || v24)
  {
    OUTLINED_FUNCTION_65();
    v28 = (*(v27 + 496))();
    v29 = v28;
    v30 = 0.0;
    if (v24)
    {
      v30 = 1.0;
    }

    [v28 setAlpha_];
  }

  OUTLINED_FUNCTION_65();
  v32 = (*(v31 + 352))();
  if (v32)
  {
    v33 = v32;
    v34 = [v32 view];

    if (v34)
    {
      v12();
      v35 = *(v6 + 7);
      OUTLINED_FUNCTION_0_229();
      outlined destroy of UIFontTextStyle(v6, v36);
      if (VideoMessageController.State.rawValue.getter(v35) == 0xD000000000000014 && 0x80000001BC4F1C50 == v37)
      {

        v40 = 0.0;
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = 1.0;
        if (v39)
        {
          v40 = 0.0;
        }
      }

      [v34 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

void closure #3 in LocalParticipantControlsView.changed(_:from:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x220))();
    v4 = v3;

    if (v2)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t outlined bridged method (pb) of @objc NSLayoutConstraint.identifier.getter(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of UIFontTextStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UIControl and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIControl and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIControl and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIControl);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIControl and conformance NSObject);
  }

  return result;
}

ConversationKit::ButtonVisibilityManager __swiftcall ButtonVisibilityManager.init(shouldShowEffectsButton:shouldShowCameraFlipButton:shouldShowCameraBlurButton:shouldShowCinematicFramingButton:shouldShowReactionEffectGestureButton:shouldShowStudioLightButton:styleSupportsButtonShelf:shouldShowOnlyCameraFlipPreRecording:isIPhone:)(Swift::Bool shouldShowEffectsButton, Swift::Bool shouldShowCameraFlipButton, Swift::Bool shouldShowCameraBlurButton, Swift::Bool shouldShowCinematicFramingButton, Swift::Bool shouldShowReactionEffectGestureButton, Swift::Bool shouldShowStudioLightButton, Swift::Bool styleSupportsButtonShelf, Swift::Bool shouldShowOnlyCameraFlipPreRecording, Swift::Bool isIPhone)
{
  v9 = 256;
  if (!shouldShowCameraFlipButton)
  {
    v9 = 0;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFFELL | shouldShowEffectsButton;
  v11 = 0x10000;
  if (!shouldShowCameraBlurButton)
  {
    v11 = 0;
  }

  v12 = 0x1000000;
  if (!shouldShowCinematicFramingButton)
  {
    v12 = 0;
  }

  v13 = v10 | v11 | v12;
  v14 = 0x100000000;
  if (!shouldShowReactionEffectGestureButton)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if (!shouldShowStudioLightButton)
  {
    v15 = 0;
  }

  v16 = 0x1000000000000;
  if (!styleSupportsButtonShelf)
  {
    v16 = 0;
  }

  v17 = v14 | v15;
  v18 = 0x100000000000000;
  if (!shouldShowOnlyCameraFlipPreRecording)
  {
    v18 = 0;
  }

  v19 = v13 | v17 | v16 | v18;
  v20 = isIPhone;
  result.shouldShowEffectsButton = v19;
  result.shouldShowCameraFlipButton = BYTE1(v19);
  result.shouldShowCameraBlurButton = BYTE2(v19);
  result.shouldShowCinematicFramingButton = BYTE3(v19);
  result.shouldShowReactionEffectGestureButton = BYTE4(v19);
  result.shouldShowStudioLightButton = BYTE5(v19);
  result.styleSupportsButtonShelf = BYTE6(v19);
  result.shouldShowOnlyCameraFlipPreRecording = HIBYTE(v19);
  result.isIPhone = v20;
  return result;
}

Swift::Bool __swiftcall ButtonVisibilityManager.shouldShowButton(_:)(ConversationKit::ButtonVisibilityManager::ButtonType a1)
{
  switch(a1)
  {
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraFlip:
      LOBYTE(v1) = (v1 & 0x1000000000100) == 256;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraFlipWithText:
      if ((v1 & 0x1000000000100) == 0x100)
      {
        LOBYTE(v1) = HIBYTE(v1) & 1 & (v2 ^ 1);
      }

      else
      {
        LOBYTE(v1) = BYTE1(v1) & 1;
      }

      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cameraBlur:
      v1 = (v1 >> 16) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_cinematicFraming:
      v1 = (v1 >> 24) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_reactionEffectGesture:
      v1 = HIDWORD(v1) & 1;
      break;
    case ConversationKit_ButtonVisibilityManager_ButtonType_studioLight:
      v1 = (v1 >> 40) & 1;
      break;
    default:
      return v1 & 1;
  }

  return v1 & 1;
}

Swift::Int ButtonVisibilityManager.ButtonType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ButtonVisibilityManager.ButtonType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ButtonVisibilityManager.ButtonType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType()
{
  result = lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType;
  if (!lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonVisibilityManager.ButtonType and conformance ButtonVisibilityManager.ButtonType);
  }

  return result;
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonVisibilityManager(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
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

uint64_t storeEnumTagSinglePayload for ButtonVisibilityManager(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonVisibilityManager.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void onNextMainRunLoop(do:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainRunLoop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13NSRunLoopModeaGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BC4BA940;
  v6 = *MEMORY[0x1E695DA28];
  *(v5 + 32) = *MEMORY[0x1E695DA28];
  type metadata accessor for NSRunLoopMode(0);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10[4] = a1;
  v10[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_128;
  v9 = _Block_copy(v10);

  [v4 performInModes:isa block:v9];
  _Block_release(v9);
}

void *ConversationHUDViewController.__allocating_init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_91();
  v12 = objc_allocWithZone(v6);
  OUTLINED_FUNCTION_3_109();
  return ConversationHUDViewController.init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(v13, a2, a3, a4, a5, a6);
}

id ConversationHUDViewController.presentShareCardViewController(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = a1;
  v3 = a1;

  v4 = &v3[OBJC_IVAR____TtC15ConversationKit43ConversationControlsShareCardViewController_delegate];
  OUTLINED_FUNCTION_3_5();
  *(v4 + 1) = &protocol witness table for ConversationHUDViewController;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x4C0))();
  v6 = OUTLINED_FUNCTION_101_6();
  return [v6 v7];
}

Swift::Void __swiftcall ConversationHUDViewController.presentMoreMenuViewController(_:)(UIViewController *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = a1;
  v3 = a1;

  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x4C0))();
  v5 = OUTLINED_FUNCTION_101_6();

  [v5 v6];
}

uint64_t HUDShadowProperties.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t key path getter for ConversationHUDViewController.controlsManager : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result;
  return result;
}

id ConversationHUDViewController.controlsManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void ConversationHUDViewController.controlsManager.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v6) + 0x4E0))();
}

uint64_t ConversationHUDViewController.controlsManager.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDViewController.controlsManager.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x4E0))(result);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.context : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result;
  return result;
}

uint64_t ConversationHUDViewController.context.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ConversationHUDViewController.context.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for ConversationHUDViewController.ephemeralAlertCancellable : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x160))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.ephemeralAlertCancellable : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x168);

  return v2(v3);
}

uint64_t key path getter for ConversationHUDViewController.secondaryButtonCancellable : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.secondaryButtonCancellable : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x180);

  return v2(v3);
}

double key path getter for ConversationHUDViewController.shadowProperties : ConversationHUDViewController@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & **a1) + 0x190))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.shadowProperties : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x198);
  v4 = *&v6[0];
  return v3(v6);
}

id ConversationHUDViewController.shadowProperties.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v5;

  return v3;
}

void ConversationHUDViewController.shadowProperties.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties);
  OUTLINED_FUNCTION_3_5();
  v3 = *v1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = *(a1 + 32);
}

uint64_t key path getter for ConversationHUDViewController.deferPillUpdates : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result & 1;
  return result;
}

void ConversationHUDViewController.deferPillUpdates.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  v5 = swift_beginAccess();
  if ((*(v0 + v4) & 1) == 0)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C0))(v5))
    {
      v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
      ConversationHUDViewController.showSecondaryPill(buttonType:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    }

    else
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(0);
    }
  }
}

uint64_t ConversationHUDViewController.deferPillUpdates.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ConversationHUDViewController.deferPillUpdates.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  ConversationHUDViewController.deferPillUpdates.didset();
}

uint64_t ConversationHUDViewController.deferPillUpdates.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t key path getter for ConversationHUDViewController.pillShouldBeShowing : ConversationHUDViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t ConversationHUDViewController.pillShouldBeShowing.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t ConversationHUDViewController.pillShouldBeShowing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

void ConversationHUDViewController.wantsSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v162 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v162 - v13;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v162 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v162 - v22;
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  swift_storeEnumTagMultiPayload();
  v25 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
  OUTLINED_FUNCTION_0_230();
  v27 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v26);
  if (v25)
  {
    goto LABEL_84;
  }

  v28 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x4B0))(v27))
  {
    goto LABEL_84;
  }

  v163 = v8;
  v164 = v11;
  v29 = v28;
  v30 = *((*v28 & *v3) + 0x130);
  v30();
  OUTLINED_FUNCTION_13_62();
  LODWORD(v29) = (*((*v29 & v31) + 0x928))();

  if (v29 >= 0x20)
  {
    v33 = (v30)();
    v34 = *&v33[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags];
    swift_unknownObjectRetain();

    LODWORD(v33) = [v34 sharePlayInCallsEnabled];
    v35 = swift_unknownObjectRelease();
    if (!v33)
    {
      goto LABEL_84;
    }

    v36 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x480);
    v36(v35);
    v162 = type metadata accessor for ConversationControlsRecipe();
    if (__swift_getEnumTagSinglePayload(v23, 1, v162))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_8_113();
    }

    else
    {
      outlined init with copy of ConversationControlsType(v23, v175);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v23, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    v173[0] = 6;
    memset(&v173[1], 0, 32);
    v174 = 7;
    OUTLINED_FUNCTION_25_58();
    OUTLINED_FUNCTION_289();
    outlined init with copy of Notice?(v95, v96, v97);
    OUTLINED_FUNCTION_71_14();
    if (v42)
    {
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v107, v108);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v109, v110);
      OUTLINED_FUNCTION_40_27();
      if (v42)
      {
        goto LABEL_72;
      }
    }

    else
    {
      OUTLINED_FUNCTION_88_10(v98, v99, &_s15ConversationKit0A12ControlsTypeOSgMd);
      OUTLINED_FUNCTION_40_27();
      if (!v42)
      {
        v166 = v171;
        v167 = *v172;
        OUTLINED_FUNCTION_49_26(*&v172[9]);
        OUTLINED_FUNCTION_84_10();
        v100 = OUTLINED_FUNCTION_72_16();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v100, v101);
        v102 = OUTLINED_FUNCTION_73_11();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v102, v103);
        outlined destroy of ConversationControlsType(v168);
        v104 = OUTLINED_FUNCTION_70_9();
        v106 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v104, v105);
        if (&_s15ConversationKit0A12ControlsTypeOSgMd)
        {
          goto LABEL_4;
        }

        goto LABEL_63;
      }

      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v133, v134);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v135, v136);
      outlined destroy of ConversationControlsType(v168);
    }

    v106 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
LABEL_63:
    v36(v106);
    if (__swift_getEnumTagSinglePayload(v20, 1, v162))
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      OUTLINED_FUNCTION_8_113();
    }

    else
    {
      outlined init with copy of ConversationControlsType(v20, v175);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    memset(v173, 0, sizeof(v173));
    v174 = 7;
    OUTLINED_FUNCTION_25_58();
    OUTLINED_FUNCTION_289();
    outlined init with copy of Notice?(v137, v138, v139);
    OUTLINED_FUNCTION_71_14();
    if (!v42)
    {
      OUTLINED_FUNCTION_88_10(v140, v141, &_s15ConversationKit0A12ControlsTypeOSgMd);
      OUTLINED_FUNCTION_40_27();
      if (!v42)
      {
        v166 = v171;
        v167 = *v172;
        OUTLINED_FUNCTION_49_26(*&v172[9]);
        OUTLINED_FUNCTION_84_10();
        v142 = OUTLINED_FUNCTION_72_16();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v142, v143);
        v144 = OUTLINED_FUNCTION_73_11();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v144, v145);
        outlined destroy of ConversationControlsType(v168);
        v146 = OUTLINED_FUNCTION_70_9();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v146, v147);
        if ((&_s15ConversationKit0A12ControlsTypeOSgMd & 1) == 0)
        {
          goto LABEL_84;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v158, v159);
      OUTLINED_FUNCTION_30_20();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v160, v161);
      outlined destroy of ConversationControlsType(v168);
LABEL_82:
      v132 = &_s15ConversationKit0A12ControlsTypeOSg_ADtMd;
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v148, v149);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v150, v151);
    OUTLINED_FUNCTION_40_27();
    if (!v42)
    {
      goto LABEL_82;
    }

LABEL_72:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSgMd);
  }

LABEL_4:
  v32 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x480);
  v32();
  type metadata accessor for ConversationControlsRecipe();
  if (OUTLINED_FUNCTION_74_0(v2))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v2, v175);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  OUTLINED_FUNCTION_15_68(10);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v37, v38, v39);
  OUTLINED_FUNCTION_71_14();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, v51);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, v53);
    OUTLINED_FUNCTION_40_27();
    if (v42)
    {
      goto LABEL_60;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_88_10(v40, v41, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_40_27();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v54, v55);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v56, v57);
    outlined destroy of ConversationControlsType(v168);
LABEL_18:
    v49 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
    goto LABEL_19;
  }

  v166 = v171;
  v167 = *v172;
  OUTLINED_FUNCTION_49_26(*&v172[9]);
  OUTLINED_FUNCTION_84_10();
  v43 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v43, v44);
  v45 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, v46);
  outlined destroy of ConversationControlsType(v168);
  v47 = OUTLINED_FUNCTION_70_9();
  v49 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, v48);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_19:
  (v32)(v49);
  if (OUTLINED_FUNCTION_74_0(v16))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v16, v175);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  OUTLINED_FUNCTION_15_68(11);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v58, v59, v60);
  OUTLINED_FUNCTION_71_14();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, v71);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v72, v73);
    OUTLINED_FUNCTION_40_27();
    if (v42)
    {
      goto LABEL_60;
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_88_10(v61, v62, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_40_27();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v74, v75);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, v77);
    outlined destroy of ConversationControlsType(v168);
LABEL_30:
    v69 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
    goto LABEL_31;
  }

  v166 = v171;
  v167 = *v172;
  OUTLINED_FUNCTION_49_26(*&v172[9]);
  OUTLINED_FUNCTION_84_10();
  v63 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, v64);
  v65 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v65, v66);
  outlined destroy of ConversationControlsType(v168);
  v67 = OUTLINED_FUNCTION_70_9();
  v69 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v67, v68);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_31:
  v78 = v165;
  (v32)(v69);
  if (OUTLINED_FUNCTION_74_0(v78))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v78, v175);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v78, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  OUTLINED_FUNCTION_15_68(25);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v79, v80, v81);
  OUTLINED_FUNCTION_71_14();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v91, v92);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v93, v94);
    OUTLINED_FUNCTION_40_27();
    if (!v42)
    {
      goto LABEL_50;
    }

LABEL_60:
    v132 = &_s15ConversationKit0A12ControlsTypeOSgMd;
LABEL_83:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, v132);
    goto LABEL_84;
  }

  OUTLINED_FUNCTION_88_10(v82, v83, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_40_27();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v111, v112);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v113, v114);
    outlined destroy of ConversationControlsType(v168);
LABEL_50:
    v90 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
    goto LABEL_51;
  }

  v166 = v171;
  v167 = *v172;
  OUTLINED_FUNCTION_49_26(*&v172[9]);
  OUTLINED_FUNCTION_84_10();
  v84 = OUTLINED_FUNCTION_72_16();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v84, v85);
  v86 = OUTLINED_FUNCTION_73_11();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v86, v87);
  outlined destroy of ConversationControlsType(v168);
  v88 = OUTLINED_FUNCTION_70_9();
  v90 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v88, v89);
  if (&_s15ConversationKit0A12ControlsTypeOSgMd)
  {
    goto LABEL_84;
  }

LABEL_51:
  v115 = v164;
  (v32)(v90);
  if (OUTLINED_FUNCTION_74_0(v115))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    OUTLINED_FUNCTION_8_113();
  }

  else
  {
    outlined init with copy of ConversationControlsType(v115, v175);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v115, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  OUTLINED_FUNCTION_15_68(27);
  OUTLINED_FUNCTION_25_58();
  OUTLINED_FUNCTION_289();
  outlined init with copy of Notice?(v116, v117, v118);
  OUTLINED_FUNCTION_71_14();
  if (v42)
  {
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v128, v129);
    OUTLINED_FUNCTION_30_20();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v130, v131);
    OUTLINED_FUNCTION_40_27();
    if (!v42)
    {
      goto LABEL_74;
    }

    goto LABEL_60;
  }

  OUTLINED_FUNCTION_88_10(v119, v120, &_s15ConversationKit0A12ControlsTypeOSgMd);
  OUTLINED_FUNCTION_40_27();
  if (!v42)
  {
    v166 = v171;
    v167 = *v172;
    OUTLINED_FUNCTION_49_26(*&v172[9]);
    OUTLINED_FUNCTION_84_10();
    v121 = OUTLINED_FUNCTION_72_16();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, v122);
    v123 = OUTLINED_FUNCTION_73_11();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v123, v124);
    outlined destroy of ConversationControlsType(v168);
    v125 = OUTLINED_FUNCTION_70_9();
    v127 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v125, v126);
    if (&_s15ConversationKit0A12ControlsTypeOSgMd)
    {
      goto LABEL_84;
    }

    goto LABEL_75;
  }

  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v152, v153);
  OUTLINED_FUNCTION_30_20();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, v155);
  outlined destroy of ConversationControlsType(v168);
LABEL_74:
  v127 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v169, &_s15ConversationKit0A12ControlsTypeOSg_ADtMd);
LABEL_75:
  v156 = v163;
  (v32)(v127);
  if (OUTLINED_FUNCTION_74_0(v156))
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v156, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  else
  {
    outlined init with copy of ConversationControlsType(v156, &v169);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v156, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    *&v175[25] = *&v170[9];
    *v175 = v169;
    *&v175[16] = *v170;
    if (v170[24] != 7 || *v175 != 4 || (v157 = vorrq_s8(*&v175[8], *&v175[24]), *&vorr_s8(*v157.i8, *&vextq_s8(v157, v157, 8uLL))))
    {
      outlined destroy of ConversationControlsType(v175);
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.cnkContentAlpha.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
    swift_beginAccess();
    [v2 setAlpha_];
  }

  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8))();
  v6 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  swift_beginAccess();
  [v5 setAlpha_];

  v7 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v1 + v6);
    v11 = *(v8 + 32);
    v12 = v7;
    v11(ObjectType, v8, v10);
  }

  v13 = (*((*v4 & *v1) + 0x210))();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 view];

    if (v15)
    {
      [v15 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

double ConversationHUDViewController.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void ConversationHUDViewController.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha;
  OUTLINED_FUNCTION_3_5();
  *(v1 + v3) = a1;
  ConversationHUDViewController.cnkContentAlpha.didset();
}

uint64_t ConversationHUDViewController.cnkContentAlpha.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t ConversationHUDViewController.deferPillUpdates.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.backgroundMaterialView : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result;
  return result;
}

id ConversationHUDViewController.backgroundMaterialView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  }

  else
  {
    v4 = closure #1 in ConversationHUDViewController.backgroundMaterialView.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in ConversationHUDViewController.backgroundMaterialView.getter(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1E0);
  v6 = v3;
  v5();
  [v6 setAlpha_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  static Layout.ConversationControls.values.getter(v23);
  [v6 _setContinuousCornerRadius_];

  v7 = *((*v4 & *a1) + 0x468);
  if (v7())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(ObjectType, v9);
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  [v6 _setCaptureView_];

  v14 = v7();
  if (v14)
  {
    v15 = v13;
    v16 = swift_getObjectType();
    v17 = (*(v15 + 40))(v16, v15);
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();

    v14 = MEMORY[0x1BFB209B0](v17, v19);
  }

  [v6 _setGroupName_];

  return v6;
}

void ConversationHUDViewController.backgroundMaterialView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = a1;
}

void (*ConversationHUDViewController.backgroundMaterialView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationHUDViewController.backgroundMaterialView.getter();
  return ConversationHUDViewController.backgroundMaterialView.modify;
}

void ConversationHUDViewController.backgroundMaterialView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView);
  *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = v2;
}

uint64_t key path getter for ConversationHUDViewController.findoView : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))();
  *a2 = result;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.findoView : ConversationHUDViewController(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x218);
  v4 = *a1;
  return v3(v2);
}

void *ConversationHUDViewController.findoView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ConversationHUDViewController.findoView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double ConversationHUDViewController.contentInsetForCornerRadius.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  result = 0.0;
  if (v1 != 2)
  {
    static Layout.ConversationControls.values.getter(v3);
    return v3[13];
  }

  return result;
}

BOOL ConversationHUDViewController.isUsingFindo.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_293();
  return (*(v0 + 328))() == 2;
}

uint64_t ConversationHUDViewController.shouldShowFindoView.getter()
{
  if (!ConversationHUDViewController.isUsingFindo.getter())
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_293();
  v2 = (*(v1 + 528))();
  v3 = v2;
  if (v2)
  {
  }

  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream))
  {
    SidebarStateStream.currentState.getter();
  }

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) ^ 1;
  }

  else
  {
LABEL_8:
    v4 = 0;
  }

  return v4 & 1;
}

void *ConversationHUDViewController.init(recipe:presentationSize:controlsManager:context:sidebarStateStream:shutterButtonDodging:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_91();
  v15 = v14;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_ephemeralAlertCancellable) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryButtonCancellable) = 0;
  v16 = v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties;
  v17 = [objc_opt_self() blackColor];
  static Layout.ConversationControls.values.getter(v42);
  v18 = v43;
  static Layout.ConversationControls.values.getter(v44);
  v19 = v44[12];
  static Layout.ConversationControls.values.getter(v45);
  *v16 = v17;
  *(v16 + 8) = v18;
  *(v16 + 16) = v19;
  *(v16 + 24) = v46;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha) = 0x3FF0000000000000;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) = 0;
  v20 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  *v20 = 0;
  v20[1] = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsHeightLayoutConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsWidthLayoutConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint) = 0;
  v21 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  *v21 = 0;
  v21[1] = 0;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of ConversationControlsRecipe?(v15, v6 + v22);
  swift_endAccess();
  v27 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  *v27 = v8;
  v27[1] = v7;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsManager) = a2;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_context) = a3;
  *(v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream) = a4;
  v28 = (v6 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shutterButtonDodging);
  *v28 = a5;
  v28[1] = a6;

  v29 = a2;
  v30 = OUTLINED_FUNCTION_33_0();
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v30, v31);
  type metadata accessor for ConversationHUDViewController();
  OUTLINED_FUNCTION_3_0();
  v34 = objc_msgSendSuper2(v32, v33);
  v35 = MEMORY[0x1E69E7D40];
  v36 = *((*MEMORY[0x1E69E7D40] & *v34) + 0x4C8);
  v37 = v34;
  v38 = OUTLINED_FUNCTION_3_109();
  v39 = v36(v38);
  (*((*v35 & *v37) + 0x4E0))(v39);
  ConversationHUDViewController.observeSidebarState()();

  v40 = OUTLINED_FUNCTION_33_0();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v40);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v15, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  return v37;
}

uint64_t type metadata accessor for ConversationHUDViewController()
{
  result = type metadata singleton initialization cache for ConversationHUDViewController;
  if (!type metadata singleton initialization cache for ConversationHUDViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ConversationHUDViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ConversationHUDViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_ephemeralAlertCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryButtonCancellable) = 0;
  v1 = v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shadowProperties;
  v2 = [objc_opt_self() blackColor];
  static Layout.ConversationControls.values.getter(v11);
  v3 = v12;
  static Layout.ConversationControls.values.getter(v13);
  v4 = v13[12];
  static Layout.ConversationControls.values.getter(v14);
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v15;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_deferPillUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_pillShouldBeShowing) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cnkContentAlpha) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController____lazy_storage___backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_isMacScreenLocked) = 0;
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsHeightLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_detailsWidthLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shareCardViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_moreMenuViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint) = 0;
  v6 = (v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ConversationHUDViewController.loadView()()
{
  v1 = [objc_allocWithZone(type metadata accessor for PassthroughView()) init];
  [v0 setView_];
}

Swift::Void __swiftcall ConversationHUDViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ConversationHUDViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  ConversationHUDViewController.setupRootView()();
  [v0 setOverrideUserInterfaceStyle_];
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for isTranslationStartedDidChangeNotification != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_289();
  [v2 v3];
}

Swift::Void __swiftcall ConversationHUDViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ConversationHUDViewController();
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (isa)
  {
    v5 = [(objc_class *)isa preferredContentSizeCategory];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      goto LABEL_13;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v12)
  {
    v12 = [v12 traitCollectionDidChange_];
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C0))(v12);
LABEL_13:
  OUTLINED_FUNCTION_194_0();
}

void ConversationHUDViewController.viewWillTransition(to:with:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_91();
  swift_getObjectType();
  v32 = v1;
  v33 = type metadata accessor for ConversationHUDViewController();
  v4 = OUTLINED_FUNCTION_3_109();
  objc_msgSendSuper2(v5, v6, a1, v4);
  [v1 preferredContentSize];
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_23();
    v26 = swift_slowAlloc();
    *v10 = 136446722;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    OUTLINED_FUNCTION_3_109();
    v14 = CGSize.debugDescription.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v26);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2082;
    v17 = CGSize.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1BBC58000, v8, v9, "[%{public}s] willTransition(to size: %{public}s, with coordinator:) , preffered contentSize %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_20();
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  v30 = partial apply for closure #1 in ConversationHUDViewController.viewWillTransition(to:with:);
  v31 = v20;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v29 = &block_descriptor_129;
  v21 = _Block_copy(&v26);
  v22 = v2;

  OUTLINED_FUNCTION_20();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v30 = partial apply for closure #2 in ConversationHUDViewController.viewWillTransition(to:with:);
  v31 = v23;
  v26 = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v29 = &block_descriptor_8_1;
  v24 = _Block_copy(&v26);
  v25 = v22;

  [a1 animateAlongsideTransition:v21 completion:v24];
  _Block_release(v24);
  _Block_release(v21);
}

id ConversationHUDViewController.setupRootView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [result layer];

    [v5 setAllowsGroupOpacity_];
    ConversationHUDViewController.setupMaterialView()();
    ConversationHUDViewController.setupControlsView(animated:)();
    v6 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
    ConversationHUDViewController.setupSecondaryPill(buttonType:)();
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v11);
    OUTLINED_FUNCTION_13_2();
    v12 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & v13) + 0x4C0))();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
    ConversationHUDViewController.showSecondaryPill(buttonType:)();
    OUTLINED_FUNCTION_158();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, v18);
    OUTLINED_FUNCTION_13_2();
    result = (*((*v12 & v19) + 0x148))();
    if (result == 1)
    {
      OUTLINED_FUNCTION_5_27();
      return (*(v20 + 432))(1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void ConversationHUDViewController.setupMaterialView()()
{
  OUTLINED_FUNCTION_137();
  (*(v1 + 1232))();
  v2 = OUTLINED_FUNCTION_12_101();
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  OUTLINED_FUNCTION_137();
  v4 += 63;
  v5 = *v4;
  v6 = (*v4)();
  [v3 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BC370;
  v8 = v5();
  v9 = [v8 leadingAnchor];

  v10 = OUTLINED_FUNCTION_12_101();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v13;
  v14 = v5();
  v15 = [v14 topAnchor];

  v16 = OUTLINED_FUNCTION_12_101();
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v7 + 40) = v19;
  v20 = v5();
  v21 = [v20 trailingAnchor];

  v22 = OUTLINED_FUNCTION_12_101();
  if (!v22)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 trailingAnchor];

  v26 = [v21 constraintEqualToAnchor_];
  *(v7 + 48) = v26;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];

  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v28) + 0x148))())
  {
    return;
  }

  v29 = v5();
  v30 = [v29 bottomAnchor];

  v31 = [v0 view];
  if (!v31)
  {
    goto LABEL_14;
  }

  v32 = v31;
  v33 = [v31 bottomAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  [v34 setActive_];
}

void ConversationHUDViewController.platterHostingViewController(_:)()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v4 = type metadata accessor for ConversationControlsRecipe();
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction];
  v8 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction];
  *v7 = partial apply for closure #1 in ConversationHUDViewController.platterHostingViewController(_:);
  v7[1] = v6;

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v8);
  OUTLINED_FUNCTION_1_197();
  v9 = OUTLINED_FUNCTION_40_2();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v9, v10);
  OUTLINED_FUNCTION_13_2();
  v11 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & v12) + 0x130))();
  OUTLINED_FUNCTION_13_2();
  v15 = (*((*v11 & v14) + 0x148))();
  type metadata accessor for FindoViewModel();
  swift_allocObject();

  v16 = v0;
  v32 = FindoViewModel.init(recipe:controlsManager:menuHostViewController:context:showDetailsView:)(v1, v13, v0, &protocol witness table for ConversationHUDViewController, v15, partial apply for closure #1 in ConversationHUDViewController.platterHostingViewController(_:), v6);
  State.init(wrappedValue:)();
  v17 = v28;
  v18 = v29;
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25UISecureHostingControllerCyAA9FindoViewVGMd));
  v28 = 0;
  v29 = v17;
  v30 = v18;
  UIHostingController.init(rootView:)();
  OUTLINED_FUNCTION_24_1();
  UIHostingController.safeAreaRegions.setter();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v20 = v19;
  v21 = [v20 view];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    v24 = [v20 view];
    if (v24)
    {
      v25 = v24;
      v31 = type metadata accessor for ConversationHUDViewController();
      v28 = v16;
      objc_allocWithZone(MEMORY[0x1E69DD060]);
      v26 = v16;
      v27 = @nonobjc UITapGestureRecognizer.init(target:action:)(&v28, sel_handleFindoTap);
      [v25 addGestureRecognizer_];

      OUTLINED_FUNCTION_30_0();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void closure #1 in ConversationHUDViewController.platterHostingViewController(_:)()
{
  v0 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x4B0))())
    {
LABEL_3:

      return;
    }

    (*((*v8 & *v7) + 0x480))();
    if (__swift_getEnumTagSinglePayload(v5, 1, v0))
    {

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    else
    {
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v5, v2);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if (Features.isICUIRedesignEnabled.getter() & 1) != 0 && (v18 = 0, memset(v17, 0, sizeof(v17)), v19 = 7, v9 = static ConversationControlsType.== infix(_:_:)(v2, v17), outlined destroy of ConversationControlsType(v17), (v9) || v2[*(v0 + 44)] != 2)
      {
        v11 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v2, type metadata accessor for ConversationControlsRecipe);
      }

      else
      {
        v10 = v2[*(v0 + 48)];
        v11 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v2, type metadata accessor for ConversationControlsRecipe);
        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v12 = (*((*v8 & *v7) + 0x468))(v11);
      if (!v12)
      {
        goto LABEL_3;
      }

      v13 = v12;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v13))
      {
        v15 = v14;
        ObjectType = swift_getObjectType();
        (*(v15 + 16))(ObjectType, v15);
        swift_unknownObjectRelease();
        goto LABEL_3;
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.handleFindoTap()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoTapAction);
  if (v1)
  {

    v1(v2);
    v3 = OUTLINED_FUNCTION_46();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }
}

void ConversationHUDViewController.setupFindoView()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_67();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    goto LABEL_18;
  }

  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  if (!(*(v8 + 528))())
  {
    OUTLINED_FUNCTION_293();
    (*(v11 + 1152))();
    OUTLINED_FUNCTION_22_56();
    if (v12)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_18:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    v13 = OUTLINED_FUNCTION_4_155();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v13, v1);
    ConversationHUDViewController.platterHostingViewController(_:)();
    v15 = v14;
    v16 = [v14 view];
    if (v16)
    {
      v17 = v16;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];
      [v0 addChildViewController_];
      v18 = OUTLINED_FUNCTION_53_2();
      if (v18)
      {
        v19 = v18;
        [v18 addSubview_];

        v20 = [v17 trailingAnchor];
        v21 = OUTLINED_FUNCTION_53_2();
        if (v21)
        {
          v22 = v21;
          v46 = v15;
          v23 = [v21 trailingAnchor];

          v24 = [v20 constraintLessThanOrEqualToAnchor:v23 constant:-24.0];
          v25 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint;
          v26 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint];
          *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint] = v24;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1BC4BC370;
          v28 = [v17 topAnchor];
          v29 = OUTLINED_FUNCTION_53_2();
          if (v29)
          {
            v30 = v29;
            v31 = [v29 topAnchor];

            v32 = [v28 constraintEqualToAnchor_];
            *(v27 + 32) = v32;
            v33 = [v17 leadingAnchor];
            v34 = [v0 view];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 leadingAnchor];

              v37 = [v33 constraintEqualToAnchor_];
              *(v27 + 40) = v37;
              v38 = *&v0[v25];
              if (v38)
              {
                v39 = objc_opt_self();
                *(v27 + 48) = v38;
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
                v40 = v38;
                OUTLINED_FUNCTION_32_2();
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v39 activateConstraints_];

                [v46 didMoveToParentViewController_];
                OUTLINED_FUNCTION_11_23();
                v43 = *((*v7 & v42) + 0x218);
                v44 = v46;
                v43(v46);

                OUTLINED_FUNCTION_0_195();
                _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v45);
                goto LABEL_18;
              }

LABEL_24:
              __break(1u);
              return;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.makeControlsView(recipe:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v98 = (v6 - v7);
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - v9;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v11, static Logger.conversationKit);
  OUTLINED_FUNCTION_1_197();
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v10);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23();
    v97 = v4;
    OUTLINED_FUNCTION_97_9();
    v100 = v15;
    *v14 = 136315138;
    outlined init with copy of ConversationControlsType(v10, v101);
    v16 = specialized >> prefix<A>(_:)(v101);
    v18 = v17;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v101, &_s15ConversationKit0A12ControlsTypeOSgMd);
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v19);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v100);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BBC58000, v12, v13, "[HUDController] makeControlsView: type=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_91_13();
    v4 = v97;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v21);
  }

  v22 = v1;
  ConversationHUDViewController.makeSystemApertureControlsView(for:)();
  if (v23)
  {
    v24 = v23;
    v98 = v1;
    v25 = v3;
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v27))
    {
      v28 = OUTLINED_FUNCTION_42();
      v29 = OUTLINED_FUNCTION_23();
      v101[0] = v29;
      *v28 = 136446210;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_103_6();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v26, v27, "[%{public}s] makeControlsView using makeSystemApertureControlsView", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_26();
    }

    v34 = *MEMORY[0x1E69DDC70];
    [v24 setMinimumContentSizeCategory_];
    [v24 setMaximumContentSizeCategory_];
    if (*(v25 + *(v4 + 64)) & 1) != 0 || (OUTLINED_FUNCTION_9_106(25), OUTLINED_FUNCTION_65_17(), OUTLINED_FUNCTION_75_14(), (v34))
    {
      v35 = v24;
      addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v35, v98);
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_9_106(6);
  v102 = 7;
  v36 = OUTLINED_FUNCTION_59_17();
  static ConversationControlsType.== infix(_:_:)(v36, v37);
  OUTLINED_FUNCTION_75_14();
  v38 = MEMORY[0x1E69E7D40];
  if ((v1 & 1) != 0 && (OUTLINED_FUNCTION_293(), v39 += 38, v40 = *v39, v41 = (*v39)(), v42 = *&v41[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags], swift_unknownObjectRetain(), v41, v22 = [v42 sharePlayInCallsEnabled], swift_unknownObjectRelease(), (v22 & 1) == 0))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v68))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_97_9();
      v69 = OUTLINED_FUNCTION_23();
      v101[0] = v69;
      v70 = OUTLINED_FUNCTION_85_9(4.8751e-34);
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v101);

      *(v3 + 4) = v72;
      OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v73, v74, "[%{public}s] makeControlsView using OngoingTelephonyControlsView");
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_91_13();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_1_197();
    v75 = v3;
    v76 = v98;
    v77 = _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v75, v98);
    (v40)(v77);
    OUTLINED_FUNCTION_24_1();
    objc_allocWithZone(type metadata accessor for OngoingTelephonyControlsView());
    v78 = v1;
    v79 = OngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)(v76, v1, v1, &protocol witness table for ConversationHUDViewController);
    addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v79, v78);
  }

  else
  {
    OUTLINED_FUNCTION_9_106(28);
    v102 = 7;
    v43 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v43, v44);
    OUTLINED_FUNCTION_75_14();
    if (v22)
    {
      if (one-time initialization token for conversationControls != -1)
      {
LABEL_30:
        OUTLINED_FUNCTION_0_0();
      }

LABEL_19:
      OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v52))
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_97_9();
        v53 = OUTLINED_FUNCTION_23();
        v101[0] = v53;
        v54 = OUTLINED_FUNCTION_85_9(4.8751e-34);
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v101);

        *(v3 + 4) = v56;
        OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v57, v58, "[%{public}s] makeControlsView using IntelligenceControlsViewContainer");
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_91_13();
        OUTLINED_FUNCTION_27();
      }

      OUTLINED_FUNCTION_293();
      v60 = (*(v59 + 304))();
      OUTLINED_FUNCTION_11_23();
      v62 = (*((*v38 & v61) + 0x148))();
      OUTLINED_FUNCTION_1_197();
      v63 = v3;
      v64 = v98;
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v63, v98);
      objc_allocWithZone(type metadata accessor for IntelligenceControlsViewContainer(0));
      v65 = v1;
      v66 = IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v65, v60, v62, v64, 1.0);
      addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v66, v65);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_9_106(29);
    v102 = 7;
    v45 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v45, v46);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(30);
    v102 = 7;
    v47 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v47, v48);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(21);
    v102 = 7;
    v49 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v49, v50);
    OUTLINED_FUNCTION_75_14();
    OUTLINED_FUNCTION_9_106(22);
    v102 = 7;
    v80 = OUTLINED_FUNCTION_59_17();
    static ConversationControlsType.== infix(_:_:)(v80, v81);
    OUTLINED_FUNCTION_75_14();
    if (v22)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_52(v11, &static Logger.conversationControls);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v83))
    {
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_97_9();
      v84 = OUTLINED_FUNCTION_23();
      v101[0] = v84;
      v85 = OUTLINED_FUNCTION_85_9(4.8751e-34);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, v101);

      *(v3 + 4) = v87;
      OUTLINED_FUNCTION_63_15(&dword_1BBC58000, v88, v89, "[%{public}s] makeControlsView using ConversationHUDControlsView");
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_91_13();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_1_197();
    v90 = v98;
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v98);
    OUTLINED_FUNCTION_11_23();
    v92 = (*((*v38 & v91) + 0x130))();
    OUTLINED_FUNCTION_11_23();
    v94 = (*((*v38 & v93) + 0x148))();
    v101[3] = type metadata accessor for ConversationHUDViewController();
    v101[4] = &protocol witness table for ConversationHUDViewController;
    v101[0] = v1;
    objc_allocWithZone(type metadata accessor for ConversationHUDControlsView());
    v95 = v1;
    v96 = *(ConversationHUDControlsView.init(recipe:controlsManager:context:menuHostViewController:moreMenuButtonDelegate:)(v90, v92, v94, v1, &protocol witness table for ConversationHUDViewController, v101) + OBJC_IVAR____TtC15ConversationKit27ConversationHUDControlsView_statusView);
    addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(v96, v95);
  }

LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void addStatusTapTo #1 (_:) in ConversationHUDViewController.makeControlsView(recipe:)(void *a1, void *a2)
{
  v6[3] = type metadata accessor for ConversationHUDViewController();
  v6[0] = a2;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v4 = a2;
  v5 = @nonobjc UITapGestureRecognizer.init(target:action:)(v6, sel_statusViewTapped);
  [v5 setDelegate_];
  [a1 addGestureRecognizer_];
}

void ConversationHUDViewController.makeSystemApertureControlsView(for:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ConversationControlsRecipe();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v148 - v11;
  OUTLINED_FUNCTION_13_2();
  v13 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x468);
  v16 = v15();
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v150 = ObjectType;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v17))
  {
    swift_unknownObjectRelease();
LABEL_14:
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v44, &static Logger.conversationControls);
    v45 = v0;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_30_1();
      v151[0] = swift_slowAlloc();
      *v48 = 136446466;
      v49 = _typeName(_:qualified:)();
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v151);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v53 = (v15)(v52);
      if (v53)
      {
        v153 = v53;
        v154.i64[0] = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A30ControlsViewControllerDelegate_pMd);
        v55 = String.init<A>(reflecting:)();
        v57 = v56;
      }

      else
      {
        v57 = 0xE300000000000000;
        v55 = 7104878;
      }

      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v151);

      *(v48 + 14) = v66;
      _os_log_impl(&dword_1BBC58000, v46, v47, "[%{public}s] makeSystemApertureControlsView returning nil for delegate: %s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_27;
  }

  v19 = v18;
  v20 = swift_getObjectType();
  if ((*(v19 + 56))(v20, v19))
  {
    v21 = OUTLINED_FUNCTION_59_17();
    outlined init with copy of ConversationControlsType(v21, v22);
    if (v156 == 7)
    {
      v23 = vorrq_s8(v154, v155);
      v24 = vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      if (v153 == 5 && !*&v24)
      {
LABEL_7:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v25 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v25, &static Logger.conversationControls);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_46_1(v27))
        {
          OUTLINED_FUNCTION_42();
          v28 = OUTLINED_FUNCTION_38_32();
          v153 = v28;
          v29 = OUTLINED_FUNCTION_54_22(4.8751e-34);
          v31 = v12;
          v32 = v3;
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v153);

          *(v9 + 4) = v33;
          v3 = v32;
          v12 = v31;
          v13 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v34, v35, "[%{public}s] makeSystemApertureControlsView using SystemApertureIncomingCallControlsView");
          __swift_destroy_boxed_opaque_existential_1(v28);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_3_26();
        }

        OUTLINED_FUNCTION_1_197();
        v36 = OUTLINED_FUNCTION_33_0();
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v36, v37);
        OUTLINED_FUNCTION_283();
        (*((*v13 & v38) + 0x130))();
        OUTLINED_FUNCTION_24_1();
        v9 = v3;
        objc_allocWithZone(type metadata accessor for SystemApertureIncomingCallControlsView());
        v39 = v1;
        OUTLINED_FUNCTION_30_20();
        if (SystemApertureIncomingCallControlsView.init(recipe:controlsManager:menuHostViewController:)(v40, v41, v42, v43))
        {
          OUTLINED_FUNCTION_28_0();
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        goto LABEL_53;
      }

      if (v153 == 6 && !*&v24)
      {
        goto LABEL_30;
      }

      if (v153 == 7 && !*&v24)
      {
        goto LABEL_7;
      }

      if (v153 == 8 && !*&v24)
      {
LABEL_30:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v67 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v67, &static Logger.conversationControls);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();
        v70 = OUTLINED_FUNCTION_46_1(v69);
        v149 = v3;
        if (v70)
        {
          OUTLINED_FUNCTION_42();
          v71 = OUTLINED_FUNCTION_38_32();
          v153 = v71;
          OUTLINED_FUNCTION_54_22(4.8751e-34);
          OUTLINED_FUNCTION_103_6();
          v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v74);

          *(v9 + 4) = v75;
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v76, v77, "[%{public}s] makeSystemApertureControlsView using SystemApertureOngoingTelephonyControlsView");
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_3_26();
        }

        OUTLINED_FUNCTION_17_76();
        v78 += 38;
        v79 = *v78;
        v80 = (*v78)();
        v81 = *&v80[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_featureFlags];
        swift_unknownObjectRetain();

        v82 = [v81 sharePlayInCallsEnabled];
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_197();
        v83 = _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v149, v12);
        (v79)(v83);
        if (v82)
        {
          OUTLINED_FUNCTION_176();
          v85 = (*(v84 + 328))();
          objc_allocWithZone(type metadata accessor for SystemApertureControlsView());
          v86 = v1;
          v87 = OUTLINED_FUNCTION_40_2();
          SystemApertureControlsView.init(recipe:controlsManager:context:menuHostViewController:)(v87, v88, v85, v1, v89);
          OUTLINED_FUNCTION_77_14(v90, v91);
          OUTLINED_FUNCTION_83_10(v92);
        }

        else
        {
          objc_allocWithZone(type metadata accessor for SystemApertureOngoingTelephonyControlsView());
          v100 = v1;
          OUTLINED_FUNCTION_40_2();
          SystemApertureOngoingTelephonyControlsView.init(recipe:controlsManager:menuHostViewController:)();
          OUTLINED_FUNCTION_28_0();
        }

        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      if (v153 == 21 && !*&v24 || v153 == 22 && !*&v24)
      {
        goto LABEL_45;
      }

      if (v153 == 28 && !*&v24)
      {
        v9 = v3;
LABEL_53:
        v149 = v9;
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v101 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v101, &static Logger.conversationControls);
        v94 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_46_1(v102))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_42();
        v153 = OUTLINED_FUNCTION_38_32();
        OUTLINED_FUNCTION_54_22(4.8751e-34);
        v98 = v13;
        OUTLINED_FUNCTION_103_6();
LABEL_57:
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v99);
        v13 = v98;

        *(v9 + 4) = v103;
        OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v104, v105, "[%{public}s] makeSystemApertureControlsView using IntelligenceControlsViewContainer");
        OUTLINED_FUNCTION_9_7();
        OUTLINED_FUNCTION_3_26();
LABEL_58:

        OUTLINED_FUNCTION_17_76();
        v107 = (*(v106 + 304))();
        OUTLINED_FUNCTION_283();
        v109 = (*((*v13 & v108) + 0x148))();
        OUTLINED_FUNCTION_1_197();
        v110 = v149;
LABEL_59:
        _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v110, v12);
        objc_allocWithZone(type metadata accessor for IntelligenceControlsViewContainer(0));
        IntelligenceControlsViewContainer.init(hostingVC:controlsManager:context:cnkContentAlpha:recipe:)(v1, v107, v109, v12, 1.0);
        OUTLINED_FUNCTION_28_0();
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      if (v153 == 29 && !*&v24)
      {
LABEL_45:
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v149 = v3;
        v93 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v93, &static Logger.conversationControls);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        if (!OUTLINED_FUNCTION_46_1(v95))
        {
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_42();
        v151[0] = OUTLINED_FUNCTION_38_32();
        v96 = OUTLINED_FUNCTION_54_22(4.8751e-34);
        v98 = v13;
        v99 = v151;
        goto LABEL_57;
      }

      if (v153 == 30 && !*&v24)
      {
        if (one-time initialization token for conversationControls != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v111 = v3;
        v112 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v112, &static Logger.conversationControls);
        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_46_1(v114))
        {
          OUTLINED_FUNCTION_42();
          v151[0] = OUTLINED_FUNCTION_38_32();
          v115 = OUTLINED_FUNCTION_54_22(4.8751e-34);
          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, v151);

          *(v9 + 4) = v117;
          OUTLINED_FUNCTION_44_24(&dword_1BBC58000, v118, v119, "[%{public}s] makeSystemApertureControlsView using IntelligenceControlsViewContainer");
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_3_26();
        }

        v120 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_176();
        v107 = (*(v121 + 304))();
        OUTLINED_FUNCTION_283();
        v109 = (*((*v120 & v122) + 0x148))();
        OUTLINED_FUNCTION_1_197();
        v110 = v111;
        goto LABEL_59;
      }
    }

    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v123 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v123, &static Logger.conversationControls);
    OUTLINED_FUNCTION_1_197();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v3, v9);
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v125))
    {
      v126 = OUTLINED_FUNCTION_30_1();
      v152 = swift_slowAlloc();
      *v126 = 136446466;
      v127 = _typeName(_:qualified:)();
      v149 = v3;
      v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, &v152);

      *(v126 + 4) = v129;
      *(v126 + 12) = 2082;
      outlined init with copy of ConversationControlsType(v9, v151);
      specialized >> prefix<A>(_:)(v151);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v151, &_s15ConversationKit0A12ControlsTypeOSgMd);
      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v130);
      v131 = OUTLINED_FUNCTION_32_2();
      v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, v132, v133);
      v13 = MEMORY[0x1E69E7D40];

      *(v126 + 14) = v134;
      _os_log_impl(&dword_1BBC58000, v124, v125, "[%{public}s] makeSystemApertureControlsView using SystemApertureControlsView for recipeType: %{public}s", v126, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    else
    {

      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v135);
    }

    OUTLINED_FUNCTION_1_197();
    v136 = OUTLINED_FUNCTION_33_0();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v136, v137);
    OUTLINED_FUNCTION_283();
    (*((*v13 & v138) + 0x130))();
    OUTLINED_FUNCTION_283();
    v140 = (*((*v13 & v139) + 0x148))();
    objc_allocWithZone(type metadata accessor for SystemApertureControlsView());
    v141 = v1;
    v142 = OUTLINED_FUNCTION_40_2();
    SystemApertureControlsView.init(recipe:controlsManager:context:menuHostViewController:)(v142, v143, v140, v1, v144);
    OUTLINED_FUNCTION_77_14(v145, v146);
    OUTLINED_FUNCTION_83_10(v147);
    swift_unknownObjectRelease();
    outlined destroy of ConversationControlsType(&v153);
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v58 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v58, &static Logger.conversationControls);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v60))
    {
      v61 = OUTLINED_FUNCTION_42();
      v153 = OUTLINED_FUNCTION_23();
      *v61 = 136446210;
      _typeName(_:qualified:)();
      OUTLINED_FUNCTION_103_6();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v64);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1BBC58000, v59, v60, "[%{public}s] makeSystemApertureControlsView returning nil since NOT in SystemAperture", v61, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_26();
    }

    swift_unknownObjectRelease();
  }

LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void ConversationHUDViewController.setupControlsView(animated:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_67();
  v7 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_13_2();
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v13) + 0x480))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_24:
    OUTLINED_FUNCTION_20_6();
    return;
  }

  v14 = OUTLINED_FUNCTION_4_155();
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v11);
  v15 = &v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  v16 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  if (v16)
  {
    [v16 removeFromSuperview];
  }

  v77 = v11;
  ConversationHUDViewController.makeControlsView(recipe:)();
  v18 = v17;
  v20 = v19;
  ObjectType = swift_getObjectType();
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v80 = 1144750080;
  v79 = 1120403456;
  lazy protocol witness table accessor for type UILayoutPriority and conformance UILayoutPriority();
  v22 = v18;
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v23) = v78[0];
  [v22 setContentCompressionResistancePriority:1 forAxis:v23];

  OUTLINED_FUNCTION_11_23();
  (*((*v12 & v24) + 0x1E0))();
  (*(v20 + 32))(ObjectType, v20);
  v25 = *v15;
  *v15 = v22;
  *(v15 + 1) = v20;
  v26 = v22;

  type metadata accessor for ConversationHUDControlsView();
  if (swift_dynamicCastClass())
  {
    ConversationHUDViewController.setupFindoView()();
  }

  OUTLINED_FUNCTION_293();
  v27 += 63;
  v28 = *v27;
  v29 = (*v27)();
  v30 = [v29 contentView];

  [v30 addSubview_];
  if ((v4 & 1) != 0 && ([v26 isHidden] & 1) == 0)
  {
    [v26 setAlpha_];
    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v31 + 1056))();
    OUTLINED_FUNCTION_24();
    v32 = swift_allocObject();
    *(v32 + 16) = v26;
    *(v32 + 24) = v20;
    v78[4] = partial apply for closure #1 in MultiwayViewController.fadeInView(view:duration:);
    v78[5] = v32;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v78[2] = v33;
    v78[3] = &block_descriptor_121_0;
    v34 = _Block_copy(v78);
    v35 = v26;

    v36 = OUTLINED_FUNCTION_99_5();
    [v37 v38];
    _Block_release(v34);
  }

  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v26))
  {
    v40 = v39;
    OUTLINED_FUNCTION_293();
    v42 = *(v41 + 328);
    v43 = v26;
    v44 = &selRef_statusViewTapped;
    if (v42() != 2)
    {
      v45 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_293();
      (*(v46 + 304))();
      OUTLINED_FUNCTION_13_62();
      LOBYTE(v45) = (*((*v45 & v47) + 0x380))();

      if ((v45 & 1) == 0)
      {
        v44 = &selRef_showCallDetailsButtonTapped;
      }
    }

    v48 = *v44;
    v49 = swift_getObjectType();
    v50 = (*(v40 + 80))(v49, v40);
    [v50 addTarget:v2 action:v48 forControlEvents:64];
  }

  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BC4BA930;
  v53 = [v26 leadingAnchor];
  v54 = v28();
  v55 = [v54 leadingAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v52 + 32) = v56;
  v57 = [v26 trailingAnchor];
  v58 = v28();
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintEqualToAnchor_];
  *(v52 + 40) = v60;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints_];

  OUTLINED_FUNCTION_11_23();
  v62 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v63) + 0x148))())
  {
    v64 = v28();
    v65 = [v64 bottomAnchor];

    v66 = [v2 view];
    if (!v66)
    {
      goto LABEL_26;
    }

    v67 = v66;
    v68 = [v66 bottomAnchor];

    v69 = [v65 constraintEqualToAnchor_];
    [v69 setActive_];

    v62 = MEMORY[0x1E69E7D40];
  }

  v70 = v28();
  [v70 setHidden_];

  OUTLINED_FUNCTION_11_23();
  v72 = (*((*v62 & v71) + 0x210))();
  if (!v72)
  {
LABEL_23:
    v75 = v26;
    ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v75, 0, 0.0);

    ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()();
    OUTLINED_FUNCTION_0_195();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v77, v76);
    goto LABEL_24;
  }

  v73 = v72;
  v74 = [v72 view];

  if (v74)
  {
    [v74 setHidden_];

    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t ConversationHUDViewController.updateControlsView()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_67();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x480))();
  OUTLINED_FUNCTION_22_56();
  if (v12)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  v14 = OUTLINED_FUNCTION_4_155();
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v10);
  v15 = v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView;
  v16 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v16)
  {
    v17 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_1_197();
    v19 = OUTLINED_FUNCTION_44_0();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v19, v20);
    v21 = *(v17 + 56);
    v22 = v16;
    v21(v7, ObjectType, v17);
  }

  OUTLINED_FUNCTION_0_195();
  return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v10, v23);
}

void ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(void *a1, void *a2, double a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSLayoutConstraintCSgGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  v8 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint;
  v9 = *(v3 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_topConstraint);
  *(inited + 32) = v9;
  v10 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint;
  v11 = *(v4 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_bottomConstraint);
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  v14 = v9;
  for (i = 0; i != 2; ++i)
  {
    v16 = *(inited + 8 * i + 32);
    if (v16)
    {
      v17 = v16;
      MEMORY[0x1BFB20CC0]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v18 = objc_opt_self();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v56 = v18;
  [v18 deactivateConstraints_];

  LOBYTE(isa) = ConversationHUDViewController.shouldShowFindoView.getter();
  v20 = [a1 topAnchor];
  if ((isa & 1) == 0)
  {
    v55 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1F8);
    v32 = v55();
    v33 = [v32 contentView];

    v34 = [v33 &_OBJC_LABEL_PROTOCOL___NSItemProviderReading];
    v35 = [v20 constraintEqualToAnchor_];

    v36 = *(v4 + v8);
    *(v4 + v8) = v35;

    if (a2)
    {
      v37 = a2;
    }

    else
    {
      v37 = a1;
    }

    v28 = [v37 0x1FBB20D25];
    v22 = a2;
    v38 = v55();
    v30 = [v38 contentView];

    v31 = [v30 0x1FBB20D25];
    goto LABEL_18;
  }

  v21 = [v4 view];
  v22 = a2;
  if (!v21)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v23 = v21;
  v24 = [v21 topAnchor];

  v25 = [v20 constraintEqualToAnchor_];
  v26 = *(v4 + v8);
  *(v4 + v8) = v25;

  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = a1;
  }

  v28 = [v27 bottomAnchor];
  v29 = [v4 view];
  if (!v29)
  {
    goto LABEL_28;
  }

  v30 = v29;
  v31 = [v29 bottomAnchor];
LABEL_18:
  v39 = v31;

  v40 = [v28 constraintEqualToAnchor_];
  v41 = *(v4 + v10);
  *(v4 + v10) = v40;

  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1BC4BAA20;
  v43 = *(v4 + v8);
  *(v42 + 32) = v43;
  v44 = *(v4 + v10);
  *(v42 + 40) = v44;
  v45 = v44;
  v46 = v43;
  for (j = 0; j != 2; ++j)
  {
    v48 = *(v42 + 8 * j + 32);
    if (v48)
    {
      v49 = v48;
      MEMORY[0x1BFB20CC0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      OUTLINED_FUNCTION_33_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v56 activateConstraints_];

  if (v22)
  {
    v51 = v22;
    v52 = [v51 topAnchor];
    v53 = [a1 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:a3];

    [v54 setActive_];
  }
}

void ConversationHUDViewController.isTranslationStartedDidChange(_:)()
{
  v1 = v0;
  ConversationHUDViewController.updateFindoTrailingConstraint()();
  OUTLINED_FUNCTION_137();
  (*(v2 + 1216))();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (CallTranslationHUDViewModel.isTranslationStarted.getter())
  {
    OUTLINED_FUNCTION_293();
    if ((*(v3 + 1128))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v7 + 1056))();
    OUTLINED_FUNCTION_20();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v19 = partial apply for closure #1 in ConversationHUDViewController.isTranslationStartedDidChange(_:);
    v20 = v8;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    OUTLINED_FUNCTION_6_5();
    v17 = v9;
    v18 = &block_descriptor_115_1;
    v10 = _Block_copy(&v15);
    v11 = v1;

    v12 = OUTLINED_FUNCTION_99_5();
    [v13 v14];
    _Block_release(v10);
  }
}

void ConversationHUDViewController.updateFindoTrailingConstraint()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
  if (!v2)
  {
    goto LABEL_27;
  }

  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd);
  if (swift_dynamicCastClass())
  {
    dispatch thunk of UIHostingController.rootView.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd);
    State.wrappedValue.getter();

    v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint;
    v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_findoViewTrailingConstraint);
    v5 = *(*v29 + 376);
    v6 = v4;
    v7 = v5();
    v8 = [v28 view];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = [v8 trailingAnchor];

      v11 = OUTLINED_FUNCTION_53_2();
      if (!v11)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v12 = v11;
      v13 = [v11 trailingAnchor];

      v14 = [v10 constraintEqualToAnchor:v13 constant:-24.0];
    }

    else
    {
      if (!v8)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 = [v8 trailingAnchor];

      v17 = OUTLINED_FUNCTION_53_2();
      if (!v17)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v18 = v17;
      v13 = [v17 trailingAnchor];

      Layout.MultiwayFaceTime.init()(v30);
      v14 = [v10 constraintLessThanOrEqualToAnchor:v13 constant:-24.0 - v31];
    }

    v19 = v14;

    if (v4)
    {
      if (v19)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
        v20 = v6;
        v21 = v19;
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

LABEL_26:

          goto LABEL_27;
        }
      }
    }

    else if (!v19)
    {

      goto LABEL_26;
    }

    v23 = *(v1 + v3);
    if (v23)
    {
      [v23 setActive_];
      v24 = *(v1 + v3);
    }

    else
    {
      v24 = 0;
    }

    *(v1 + v3) = v19;
    v25 = v19;

    if (v19)
    {
      [v25 setActive_];
    }

    v26 = OUTLINED_FUNCTION_53_2();
    if (v26)
    {
      v27 = v26;
      [v26 layoutIfNeeded];

LABEL_27:
      OUTLINED_FUNCTION_30_0();
      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_30_0();
}

void __swiftcall ConversationHUDViewController.setupMenuContainerView()(UIView_optional *__return_ptr retstr)
{
  v5 = v1;
  ConversationHUDViewController.menuContainerFrame.getter();
  OUTLINED_FUNCTION_0_137();
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v9 = *&v1[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView];
  *&v5[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView] = v8;
  v10 = v8;

  OUTLINED_FUNCTION_11_23();
  v11 = MEMORY[0x1E69E7D40];
  if (!(*((*MEMORY[0x1E69E7D40] & v12) + 0x468))())
  {
    v15 = v10;
LABEL_8:

    OUTLINED_FUNCTION_11_23();
    (*((*v11 & v16) + 0x4C0))();
    return;
  }

  v13 = OUTLINED_FUNCTION_111_10();
  if (((*(v2 + 32))(v13) & 1) == 0)
  {
    v15 = v10;
    goto LABEL_7;
  }

  v14 = [v5 view];
  if (v14)
  {
    v15 = v14;
    [v14 addSubview_];
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
}

Swift::Void __swiftcall ConversationHUDViewController.disableMenuContainerViewInteraction()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView);
  if (v1)
  {
    v2 = one-time initialization token for conversationControls;
    v8 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v3 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v3, &static Logger.conversationControls);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      *OUTLINED_FUNCTION_33() = 0;
      OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v6, v7, "disableMenuContainerViewInteraction");
      OUTLINED_FUNCTION_26();
    }

    [v8 setUserInteractionEnabled_];
  }
}

Swift::Void __swiftcall ConversationHUDViewController.teardownMenuContainerView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView;
  [*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_menuContainerView) removeFromSuperview];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  OUTLINED_FUNCTION_13_2();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x4C0);

  v4();
}

void ConversationHUDViewController.setupSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMd);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v150 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v155 = v9 - v10;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_68_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v150 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v150 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v150 - v19;
  type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_17();
  v156 = v22 - v23;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v150 - v25;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v26);
  v158 = &v150 - v27;
  OUTLINED_FUNCTION_13_2();
  if ((*((*MEMORY[0x1E69E7D40] & v28) + 0x1A8))())
  {
    goto LABEL_41;
  }

  v29 = OUTLINED_FUNCTION_32_2();
  outlined init with copy of Notice?(v29, v30, v31);
  OUTLINED_FUNCTION_22_5(v20);
  if (v58)
  {
    v32 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_176();
    (*(v33 + 304))();
    OUTLINED_FUNCTION_13_62();
    v35 = *v32 & v34;
    v36 = v158;
    (*(v35 + 2560))();

    OUTLINED_FUNCTION_22_5(v20);
    if (!v58)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_87();
    v36 = v158;
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v20, v158);
  }

  ConversationHUDViewController.wantsSecondaryPill(buttonType:)();
  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

  v38 = MEMORY[0x1E69E7D40];
  if (*&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView])
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_76();
  v40 = (*(v39 + 528))();
  if (!v40)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_230();
    v49 = v36;
    goto LABEL_40;
  }

LABEL_10:
  OUTLINED_FUNCTION_17_76();
  v42 = (*(v41 + 1128))();
  if (v42)
  {
    v43 = v42;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v43))
    {
      v45 = v44;
      ObjectType = swift_getObjectType();
      v47 = (*(v45 + 56))(ObjectType, v45);
      swift_unknownObjectRelease();
      v38 = MEMORY[0x1E69E7D40];
      if (v47)
      {
        OUTLINED_FUNCTION_0_230();
        v49 = v158;
LABEL_40:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v49, v48);
LABEL_41:
        OUTLINED_FUNCTION_30_0();
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_17_76();
  v153 = *(v50 + 304);
  v152 = v50 + 304;
  v153();
  OUTLINED_FUNCTION_13_62();
  (*((*v38 & v51) + 0x9D0))(v165);

  v154 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView;
  v52 = *&v2[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
  v53 = v158;
  if (v52)
  {
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v52 + OBJC_IVAR____TtC15ConversationKit32ConversationHUDSecondaryPillView_buttonType, v17);
    OUTLINED_FUNCTION_86_8(v17);
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v53, v14);
    OUTLINED_FUNCTION_86_8(v14);
    v54 = *(v3 + 48);
    outlined init with copy of Notice?(v17, v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    outlined init with copy of Notice?(v14, &v6[v54], &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    OUTLINED_FUNCTION_22_5(v6);
    if (v58)
    {
      v55 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v55, v56);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
      OUTLINED_FUNCTION_22_5(&v6[v54]);
      if (v58)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
        v53 = v158;
        v57 = v154;
        goto LABEL_43;
      }
    }

    else
    {
      outlined init with copy of Notice?(v6, v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
      OUTLINED_FUNCTION_22_5(&v6[v54]);
      if (!v58)
      {
        v102 = &v6[v54];
        v103 = v157;
        _s15ConversationKit0A14ControlsRecipeVWObTm_3(v102, v157);
        v104 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v103, type metadata accessor for ConversationControlsSecondaryPillButtonType);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, type metadata accessor for ConversationControlsSecondaryPillButtonType);
        v38 = MEMORY[0x1E69E7D40];
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
        v53 = v158;
        v57 = v154;
        if (v104)
        {
LABEL_43:
          outlined init with copy of Notice?(v165, &v160, &_s15ConversationKit8Activity_pSgMd);
          if (!v161)
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
            OUTLINED_FUNCTION_0_230();
            _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v53, v129);
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v160, &_s15ConversationKit8Activity_pSgMd);
            goto LABEL_41;
          }

          outlined init with take of TapInteractionHandler(&v160, v162);
          v105 = v164;
          __swift_project_boxed_opaque_existential_1(v162, v163);
          v106 = OUTLINED_FUNCTION_28_0();
          v108 = v107(v106, v105);
          v110 = v109;
          v111 = *&v2[v57];
          if (v111)
          {
            v112 = v108;
            v113 = *((*v38 & *v111) + 0xC8);
            v114 = v111;
            v113(&v160);

            v115 = v161;
            if (v161)
            {
              v116 = __swift_project_boxed_opaque_existential_1(&v160, v161);
              v117 = *(v115 - 8);
              MEMORY[0x1EEE9AC00](v116);
              OUTLINED_FUNCTION_8();
              v120 = v119 - v118;
              (*(v117 + 16))(v119 - v118);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v160, &_s15ConversationKit8Activity_pSgMd);
              v121 = OUTLINED_FUNCTION_32_2();
              v123 = v122(v121);
              v125 = v124;
              (*(v117 + 8))(v120, v115);
              if (v112 == v123 && v110 == v125)
              {

                v128 = v158;
LABEL_64:
                outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
                OUTLINED_FUNCTION_0_230();
                v149 = v128;
                goto LABEL_65;
              }

              v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v128 = v158;
              v38 = MEMORY[0x1E69E7D40];
              if (v127)
              {
                goto LABEL_64;
              }
            }

            else
            {
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v160, &_s15ConversationKit8Activity_pSgMd);

              v38 = MEMORY[0x1E69E7D40];
            }
          }

          else
          {
          }

          if (one-time initialization token for conversationControls != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v130 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v130, &static Logger.conversationControls);
          v131 = v2;
          v132 = Logger.logObject.getter();
          v133 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v132, v133))
          {
            v134 = OUTLINED_FUNCTION_42();
            v135 = OUTLINED_FUNCTION_23();
            *&v160 = v135;
            *v134 = 136315138;
            v159 = (*((*MEMORY[0x1E69E7D40] & *v131) + 0x148))();
            v136 = String.init<A>(reflecting:)();
            v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, &v160);

            *(v134 + 4) = v138;
            _os_log_impl(&dword_1BBC58000, v132, v133, "[%s] SecondaryButton needs update (activity doesn't match currentActivity)", v134, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v135);
            OUTLINED_FUNCTION_3_26();
            v38 = MEMORY[0x1E69E7D40];
            OUTLINED_FUNCTION_27();
          }

          v139 = *&v2[v57];
          if (v139)
          {
            outlined init with copy of IDSLookupManager(v162, &v160);
            OUTLINED_FUNCTION_5_27();
            v141 = *(v140 + 208);
            v142 = v139;
            v141(&v160);

            v143 = *&v2[v57];
            if (v143)
            {
              v161 = type metadata accessor for ConversationHUDViewController();
              *&v160 = v131;
              v144 = *((*v38 & *v143) + 0x1C8);
              v145 = v131;
              v146 = v143;
              v144(&v160, sel_secondaryButtonTapped_);

              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
              OUTLINED_FUNCTION_0_230();
              _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v158, v147);
              __swift_destroy_boxed_opaque_existential_1(&v160);
LABEL_66:
              __swift_destroy_boxed_opaque_existential_1(v162);
              goto LABEL_41;
            }
          }

          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
          OUTLINED_FUNCTION_0_230();
          v149 = v158;
LABEL_65:
          _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v149, v148);
          goto LABEL_66;
        }

        goto LABEL_26;
      }

      v59 = OUTLINED_FUNCTION_46();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v59, v60);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
      OUTLINED_FUNCTION_0_230();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v1, v61);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSg_ADtMd);
    v53 = v158;
    v57 = v154;
LABEL_26:
    v62 = *&v2[v57];
    if (v62)
    {
      [v62 removeFromSuperview];
    }
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v63 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v63, &static Logger.conversationControls);
  OUTLINED_FUNCTION_5_143();
  v64 = v156;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v53, v156);
  v65 = v2;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v154;
  if (v68)
  {
    v70 = OUTLINED_FUNCTION_30_1();
    v151 = swift_slowAlloc();
    v162[0] = v151;
    *v70 = 136315394;
    LOBYTE(v160) = (*((*v38 & *v65) + 0x148))();
    v71 = String.init<A>(reflecting:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v162);

    *(v70 + 4) = v73;
    *(v70 + 12) = 2080;
    OUTLINED_FUNCTION_5_143();
    v74 = v64;
    v75 = v64;
    v76 = v155;
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v74, v155);
    OUTLINED_FUNCTION_86_8(v76);
    specialized >> prefix<A>(_:)();
    v78 = v77;
    v80 = v79;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v76, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    OUTLINED_FUNCTION_0_230();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v75, v81);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, v162);
    v38 = MEMORY[0x1E69E7D40];

    *(v70 + 14) = v82;
    _os_log_impl(&dword_1BBC58000, v66, v67, "[%s] Setup SecondaryButton, type: %s", v70, 0x16u);
    swift_arrayDestroy();
    v53 = v158;
    OUTLINED_FUNCTION_27();
    v69 = v154;
    OUTLINED_FUNCTION_27();
  }

  else
  {

    OUTLINED_FUNCTION_0_230();
    v83 = _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v64, v84);
  }

  v85 = (v153)(v83);
  v86 = (*((*v38 & *v65) + 0x148))();
  OUTLINED_FUNCTION_5_143();
  v87 = v157;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v53, v157);
  outlined init with copy of Notice?(v165, v162, &_s15ConversationKit8Activity_pSgMd);
  v88 = objc_allocWithZone(type metadata accessor for ConversationHUDSecondaryPillView());
  v89 = v65;
  v90 = v86;
  v91 = v88;
  ConversationHUDSecondaryPillView.init(controlsManager:controlsContext:buttonType:menuHostViewController:activity:)(v85, v90, v87, v2, &protocol witness table for ConversationHUDViewController, v162);
  OUTLINED_FUNCTION_24_1();
  v163 = type metadata accessor for ConversationHUDViewController();
  v162[0] = v89;
  v92 = *((*v38 & *v88) + 0x1C8);
  v93 = v89;
  v92(v162, sel_secondaryButtonTapped_);
  __swift_destroy_boxed_opaque_existential_1(v162);
  v94 = v88;
  [v94 setTranslatesAutoresizingMaskIntoConstraints_];
  [v94 setAlpha_];

  v95 = *&v2[v69];
  *&v2[v69] = v91;
  v96 = v94;

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    v101 = (*(v100 + 504))();
    v99 = [v101 contentView];

    [v99 addSubview_];
    v98 = v158;
    goto LABEL_39;
  }

  v97 = [v93 view];
  v98 = v158;
  if (v97)
  {
    v99 = v97;
    [v97 addSubview_];
LABEL_39:

    ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s15ConversationKit8Activity_pSgMd);
    OUTLINED_FUNCTION_0_230();
    v49 = v98;
    goto LABEL_40;
  }

  __break(1u);
}

uint64_t ConversationHUDViewController.shouldConstrainSecondaryPillAboveControlsView.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))();
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v2))
  {
    swift_unknownObjectRelease();
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  (*(v4 + 24))(&v8, ObjectType, v4);
  swift_unknownObjectRelease();
  v6 = v8 ^ 1;
  return v6 & 1;
}

void ConversationHUDViewController.constrainSecondaryPillToControlsViewIfNeeded()()
{
  if (ConversationHUDViewController.shouldShowFindoView.getter())
  {
    v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
    v38 = [v1 view];
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (v2)
    {
      v38 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
      v3 = v2;
    }

    else
    {
      v38 = 0;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (!v38)
  {
    return;
  }

  v5 = v4;
  v38 = v38;
  v6 = (ConversationHUDViewController.shouldConstrainSecondaryPillAboveControlsView.getter() & 1) == 0;
  if (v6)
  {
    v7 = v38;
  }

  else
  {
    v7 = v5;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v38;
  }

  if ((ConversationHUDViewController.shouldShowFindoView.getter() & 1) == 0)
  {
    v23 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (!v23)
    {

      v34 = v7;
      goto LABEL_23;
    }

    v36 = v8;
    v37 = v7;
    v35 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BC4BA930;
    v25 = v5;
    v26 = v23;
    v27 = [v25 leadingAnchor];
    v28 = [v26 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    *(v24 + 32) = v29;
    v30 = [v25 trailingAnchor];

    v31 = [v26 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v24 + 40) = v32;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints_];

    goto LABEL_21;
  }

  v36 = v8;
  v37 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BA930;
  v10 = v5;
  v11 = [v10 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v10 trailingAnchor];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v18 trailingAnchor];

  v21 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  v22.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];
LABEL_21:

  v33 = ConversationHUDViewController.secondaryPillVerticalMargin.getter();
  ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v37, v36, v33);

LABEL_22:
  v34 = v38;
LABEL_23:
}

void ConversationHUDViewController.showSecondaryPill(buttonType:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_18_67();
  v8 = type metadata accessor for ConversationControlsSecondaryPillButtonType(v7);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79 - v16;
  OUTLINED_FUNCTION_13_2();
  v18 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v19) + 0x1C8))(1);
  OUTLINED_FUNCTION_13_2();
  if ((*((*v18 & v20) + 0x1A8))())
  {
    goto LABEL_35;
  }

  outlined init with copy of Notice?(v4, v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  OUTLINED_FUNCTION_22_56();
  if (v21)
  {
    OUTLINED_FUNCTION_176();
    (*(v22 + 304))();
    OUTLINED_FUNCTION_13_62();
    (*((*v18 & v23) + 0xA00))();

    OUTLINED_FUNCTION_22_56();
    if (!v21)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_87();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v1, v17);
  }

  ConversationHUDViewController.wantsSecondaryPill(buttonType:)();
  if ((v24 & 1) == 0)
  {
LABEL_34:
    OUTLINED_FUNCTION_0_230();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v78);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_176();
  v26 = (*(v25 + 1128))();
  if (!v26)
  {
LABEL_18:
    v41 = objc_opt_self();
    OUTLINED_FUNCTION_5_143();
    _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(v17, v14);
    v42 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v2;
    OUTLINED_FUNCTION_13_87();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v14, v44 + v42);
    OUTLINED_FUNCTION_24();
    v45 = swift_allocObject();
    *(v45 + 16) = partial apply for closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:);
    *(v45 + 24) = v43;
    v87 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v88 = v45;
    OUTLINED_FUNCTION_13_11();
    v84 = 1107296256;
    v85 = thunk for @escaping @callee_guaranteed () -> ();
    v86 = &block_descriptor_103;
    v46 = _Block_copy(&v83);
    v47 = v2;

    [v41 performWithoutAnimation_];
    _Block_release(v46);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if (v46)
    {
      __break(1u);
    }

    else
    {
      v48 = *&v47[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
      if (!v48)
      {
LABEL_27:
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, type metadata accessor for ConversationControlsSecondaryPillButtonType);

        goto LABEL_35;
      }

      v49 = v48;
      [v49 alpha];
      if (v50 != 0.0)
      {
        OUTLINED_FUNCTION_0_230();
        _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v69);

        goto LABEL_35;
      }

      v80 = v49;
      v81 = v41;
      if (one-time initialization token for conversationControls == -1)
      {
LABEL_22:
        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, &static Logger.conversationControls);
        v52 = v47;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = OUTLINED_FUNCTION_42();
          v83 = OUTLINED_FUNCTION_23();
          *v55 = 136315138;
          v82 = (*((*v18 & *v52) + 0x148))();
          v56 = String.init<A>(reflecting:)();
          v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v83);

          *(v55 + 4) = v58;
          _os_log_impl(&dword_1BBC58000, v53, v54, "[%s] Showing SecondaryButton", v55, 0xCu);
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_27();
        }

        v59 = v80;
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0_9();
        }

        OUTLINED_FUNCTION_0_1();
        (*(v60 + 1056))();
        OUTLINED_FUNCTION_24();
        v61 = swift_allocObject();
        *(v61 + 16) = v59;
        *(v61 + 24) = v52;
        v87 = partial apply for closure #2 in ConversationHUDViewController.showSecondaryPill(buttonType:);
        v88 = v61;
        OUTLINED_FUNCTION_13_11();
        v84 = 1107296256;
        OUTLINED_FUNCTION_6_5();
        v85 = v62;
        v86 = &block_descriptor_109_0;
        v63 = _Block_copy(&v83);
        v64 = v52;
        v65 = v59;

        v66 = OUTLINED_FUNCTION_99_5();
        [v67 v68];
        _Block_release(v63);

        goto LABEL_27;
      }
    }

    OUTLINED_FUNCTION_0_0();
    goto LABEL_22;
  }

  v27 = v26;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v27) || (v28 = OUTLINED_FUNCTION_111_10(), ((*(v8 + 56))(v28, v8) & 1) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v29 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView;
  v30 = *&v0[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
  if (!v30 || (swift_getObjectType(), !dynamic_cast_existential_1_conditional(v30)))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v70 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v70, &static Logger.conversationControls);
    v71 = v2;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_42();
      v75 = swift_slowAlloc();
      *v74 = 138543362;
      v76 = *&v2[v29];
      *(v74 + 4) = v76;
      *v75 = v76;
      v77 = v76;
      _os_log_impl(&dword_1BBC58000, v72, v73, "Unable to show app launch pill view in system aperture for controlsView: %{public}@", v74, 0xCu);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v75, &_sSo8NSObjectCSgMd);
      OUTLINED_FUNCTION_3_26();
      OUTLINED_FUNCTION_27();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    goto LABEL_34;
  }

  v32 = v31;
  v33 = one-time initialization token for conversationControls;
  v34 = v30;
  if (v33 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v35 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v35, &static Logger.conversationControls);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_46_1(v37))
  {
    v38 = OUTLINED_FUNCTION_33();
    *v38 = 0;
    _os_log_impl(&dword_1BBC58000, v36, v33, "[SystemAperture] Showing SecondaryButton", v38, 2u);
    OUTLINED_FUNCTION_27();
  }

  ObjectType = swift_getObjectType();
  v86 = type metadata accessor for ConversationHUDViewController();
  v83 = v2;
  (*(v32 + 24))(v17, v2, &protocol witness table for ConversationHUDViewController, &v83, sel_secondaryButtonTapped_, ObjectType, v32);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_230();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v17, v40);
  __swift_destroy_boxed_opaque_existential_1(&v83);
LABEL_35:
  OUTLINED_FUNCTION_20_6();
}

uint64_t closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(a2, &v10 - v5);
  v7 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  ConversationHUDViewController.setupSecondaryPill(buttonType:)();
  v8 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x4C0))(v8);
}

id closure #2 in ConversationHUDViewController.showSecondaryPill(buttonType:)(void *a1, void *a2)
{
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x1E0))();

  return [a1 setAlpha_];
}

void ConversationHUDViewController.hideSecondaryPill(remove:)(char a1)
{
  v4 = v1;
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(0);
  OUTLINED_FUNCTION_13_2();
  if ((*((*v6 & v7) + 0x1A8))())
  {
    return;
  }

  OUTLINED_FUNCTION_176();
  v9 = (*(v8 + 1128))();
  if (v9)
  {
    v10 = v9;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v10))
    {
      v11 = OUTLINED_FUNCTION_111_10();
      if ((*(v2 + 56))(v11, v2))
      {
        v12 = *&v1[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
        if (v12)
        {
          swift_getObjectType();
          if (dynamic_cast_existential_1_conditional(v12))
          {
            v14 = v13;
            v15 = one-time initialization token for conversationControls;
            v43 = v12;
            if (v15 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v16 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v16, &static Logger.conversationControls);
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              *OUTLINED_FUNCTION_33() = 0;
              OUTLINED_FUNCTION_7_4(&dword_1BBC58000, v19, v20, "[SystemAperture] Hiding SecondaryButton");
              OUTLINED_FUNCTION_26();
            }

            ObjectType = swift_getObjectType();
            (*(v14 + 32))(ObjectType, v14);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v22 = *&v4[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
  if (v22)
  {
    v23 = v22;
    [v23 alpha];
    if (v24 != 0.0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v25 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v25, &static Logger.conversationControls);
      v26 = v4;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        swift_slowAlloc();
        v29 = OUTLINED_FUNCTION_38_32();
        aBlock = v29;
        *v3 = 136315394;
        (*((*v6 & *v26) + 0x148))();
        v30 = String.init<A>(reflecting:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &aBlock);

        *(v3 + 4) = v32;
        *(v3 + 12) = 1024;
        *(v3 + 14) = a1 & 1;
        _os_log_impl(&dword_1BBC58000, v27, v28, "[%s] Hiding SecondaryButton, should remove: %{BOOL}d", v3, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_3_26();
      }
    }

    objc_opt_self();
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    (*(v33 + 1056))();
    OUTLINED_FUNCTION_20();
    v34 = swift_allocObject();
    *(v34 + 16) = v23;
    v48 = partial apply for closure #1 in MultiwayViewController.fadeOutView(view:duration:completion:);
    v49 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed () -> ();
    v47 = &block_descriptor_87;
    v35 = _Block_copy(&aBlock);
    v36 = v23;

    OUTLINED_FUNCTION_20();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = a1 & 1;
    v48 = partial apply for closure #2 in ConversationHUDViewController.hideSecondaryPill(remove:);
    v49 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v47 = &block_descriptor_94;
    v39 = _Block_copy(&aBlock);

    v40 = OUTLINED_FUNCTION_99_5();
    [v41 v42];
    _Block_release(v39);
    _Block_release(v35);
  }
}

void closure #2 in ConversationHUDViewController.hideSecondaryPill(remove:)(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1 & 1) != 0 && (a3)
    {
      v7 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView;
      v8 = *&Strong[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView];
      if (v8)
      {
        v9 = one-time initialization token for conversationControls;
        v10 = v8;
        if (v9 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, &static Logger.conversationControls);
        v12 = v6;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        v15 = os_log_type_enabled(v13, v14);
        v16 = MEMORY[0x1E69E7D40];
        if (v15)
        {
          v36 = v10;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v37 = v18;
          *v17 = 136315138;
          v19 = v16;
          (*((*v16 & *v12) + 0x148))();
          v20 = String.init<A>(reflecting:)();
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v37);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_1BBC58000, v13, v14, "[%s] Removing SecondaryButton", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x1BFB23DF0](v18, -1, -1);
          v23 = v17;
          v10 = v36;
          MEMORY[0x1BFB23DF0](v23, -1, -1);
        }

        else
        {
          v19 = MEMORY[0x1E69E7D40];
        }

        [v10 removeFromSuperview];
        v33 = *&v6[v7];
        *&v6[v7] = 0;

        v34 = *&v12[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
        if (v34)
        {
          v35 = v34;
          ConversationHUDViewController.verticallyConstrainView(_:above:spacing:)(v35, 0, 0.0);
        }

        (*((*v19 & *v12) + 0x4C0))();
      }

      else
      {
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, &static Logger.conversationControls);
        v25 = v6;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v37 = v29;
          *v28 = 136315138;
          (*((*MEMORY[0x1E69E7D40] & *v25) + 0x148))();
          v30 = String.init<A>(reflecting:)();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v37);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_1BBC58000, v26, v27, "[%s] Unexpectedly found nil secondaryPillView while attempting to remove it", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x1BFB23DF0](v29, -1, -1);
          MEMORY[0x1BFB23DF0](v28, -1, -1);
        }
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.statusViewTapped()()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_67();
  v5 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_13_2();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x480))();
  OUTLINED_FUNCTION_22_56();
  if (!v12)
  {
    v13 = OUTLINED_FUNCTION_4_155();
    _s15ConversationKit0A14ControlsRecipeVWObTm_3(v13, v9);
    OUTLINED_FUNCTION_283();
    v15 = *((*v10 & v14) + 0x130);
    v15();
    OUTLINED_FUNCTION_13_62();
    (*((*v10 & v16) + 0x2A0))();
    v18 = v17;

    ObjectType = swift_getObjectType();
    v20 = (*(v18 + 464))(ObjectType, v18);
    v21 = swift_unknownObjectRelease();
    if (v20)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v22 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v22, &static Logger.conversationControls);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_18_0(v24))
      {
        v25 = OUTLINED_FUNCTION_33();
        *v25 = 0;
        _os_log_impl(&dword_1BBC58000, v23, v24, "Deep linking to in-call scene to show call details card for PTT call", v25, 2u);
        OUTLINED_FUNCTION_4_4();
      }

      OUTLINED_FUNCTION_176();
      v27 = (*(v26 + 1128))();
      if (!v27)
      {
        goto LABEL_53;
      }

      v28 = v27;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v28))
      {
        v30 = v29;
        v31 = swift_getObjectType();
        (*(v30 + 40))(v31, v30);
      }

      goto LABEL_52;
    }

    v32 = (v15)(v21);
    v33 = ConversationControlsManager.isActiveCallGreenTea3P()();

    if (v33)
    {
      v34 = (v15)();
      ConversationControlsManager.openGreenTea3PApp(dismissBannerOnAppOpen:)(1);

LABEL_53:
      OUTLINED_FUNCTION_0_195();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v59);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_176();
    v35 += 141;
    v36 = *v35;
    v37 = (*v35)();
    if (v37)
    {
      v38 = v37;
      swift_getObjectType();
      v40 = dynamic_cast_existential_1_conditional(v38);
      if (v40)
      {
        v61 = v39;
LABEL_21:
        v15();
        OUTLINED_FUNCTION_13_62();
        v42 = (*((*v10 & v41) + 0x380))();

        if ((v42 & 1) == 0)
        {
          goto LABEL_34;
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        if (v43 = static Features.shared, (Features.isICUIRedesignEnabled.getter()) && (v64 = 0, v62 = 0u, v63 = 0u, OUTLINED_FUNCTION_65_17(), OUTLINED_FUNCTION_75_14(), (v43) || *(v9 + v5[11]) != 2 || *(v9 + v5[12]) == 1)
        {
          if (v40)
          {
            if (one-time initialization token for conversationControls != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v44 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_52(v44, &static Logger.conversationControls);
            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.info.getter();
            if (OUTLINED_FUNCTION_18_0(v46))
            {
              v47 = OUTLINED_FUNCTION_33();
              *v47 = 0;
              _os_log_impl(&dword_1BBC58000, v45, v46, "Deep linking to in-call scene to show an AV-less call details card", v47, 2u);
              OUTLINED_FUNCTION_4_4();
            }

            v48 = swift_getObjectType();
            v61[3](v48);
            goto LABEL_52;
          }
        }

        else
        {
LABEL_34:
          if (v40)
          {
            if (ConversationControlsRecipe.allowsDeepLinkToFullScreenCallUI.getter())
            {
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_9_106(25);
            v65 = 7;
            swift_unknownObjectRetain();
            static ConversationControlsType.== infix(_:_:)(v9, &v62);
            OUTLINED_FUNCTION_75_14();
            swift_unknownObjectRelease();
            if (v9)
            {
              v49 = swift_getObjectType();
              v61[4](v49);
LABEL_52:
              swift_unknownObjectRelease();
              goto LABEL_53;
            }
          }
        }

        OUTLINED_FUNCTION_176();
        if (((*(v50 + 1200))() & 1) == 0)
        {
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_0();
          }

          if (v51 = static Features.shared, v52 = Features.isICUIRedesignEnabled.getter(), (v52) && (v64 = 0, v62 = 0u, v63 = 0u, OUTLINED_FUNCTION_65_17(), v52 = OUTLINED_FUNCTION_75_14(), (v51) || *(v9 + v5[11]) != 2 || *(v9 + v5[12]) == 1)
          {
            v53 = (v36)(v52);
            if (v53)
            {
              v54 = v53;
              swift_getObjectType();
              if (dynamic_cast_existential_1_conditional(v54))
              {
                v56 = v55;
                v57 = swift_getObjectType();
                (*(v56 + 16))(v57, v56);
                swift_unknownObjectRelease();
                goto LABEL_52;
              }

              swift_unknownObjectRelease();
            }
          }
        }

        if (*(v9 + v5[16]) != 1)
        {
          OUTLINED_FUNCTION_0_195();
          _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v9, v60);
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

        if (!v40)
        {
          goto LABEL_53;
        }

LABEL_51:
        v58 = swift_getObjectType();
        v61[2](v58);
        goto LABEL_52;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0;
    }

    v61 = 0;
    goto LABEL_21;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_54:
  OUTLINED_FUNCTION_30_0();
}

Swift::Void __swiftcall ConversationHUDViewController.showCallDetailsButtonTapped()()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_137();
  v2 += 41;
  v3 = *v2;
  if ((*v2)() == 2)
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, &static Logger.conversationControls);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      v20 = OUTLINED_FUNCTION_23();
      *v7 = 136315138;
      v3();
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v20);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1BBC58000, oslog, v6, "%s Unable to handle call details button press", v7, 0xCu);
      OUTLINED_FUNCTION_9_7();
      OUTLINED_FUNCTION_26();
    }

    else
    {
    }
  }

  else
  {
    OUTLINED_FUNCTION_293();
    (*(v11 + 304))();
    OUTLINED_FUNCTION_13_62();
    (*((*v1 & v12) + 0x398))(1);

    OUTLINED_FUNCTION_11_23();
    v14 = (*((*v1 & v13) + 0x468))();
    if (v14)
    {
      v15 = v14;
      swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v15))
      {
        v17 = v16;
        ObjectType = swift_getObjectType();
        (*(v17 + 16))(ObjectType, v17);
      }

      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.secondaryButtonTapped(_:)(UITapGestureRecognizer *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(a1);
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  ConversationControlsManager.secondaryPillButtonTapped(completion:)(partial apply for closure #1 in ConversationHUDViewController.secondaryButtonTapped(_:), v3);
}

void closure #1 in ConversationHUDViewController.secondaryButtonTapped(_:)(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.conversationControls);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      (*((*MEMORY[0x1E69E7D40] & *v5) + 0x148))();
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = a1 & 1;
      _os_log_impl(&dword_1BBC58000, v6, v7, "[%s] secondaryButtonTapped completion, hideButton?:%{BOOL}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB23DF0](v9, -1, -1);
      MEMORY[0x1BFB23DF0](v8, -1, -1);
    }

    if (a1)
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(1);
    }
  }
}

void ConversationHUDViewController.hudControlsSize.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x210))();
  if (v2)
  {
    v3 = v2;
    if (ConversationHUDViewController.isUsingFindo.getter())
    {
      v4 = [v3 view];
      if (v4)
      {
        v5 = v4;
        v6 = (*((*v1 & *v0) + 0x498))();
        OUTLINED_FUNCTION_45_33(v7, v8, v9, v10, v6, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
        OUTLINED_FUNCTION_0_137();

LABEL_8:
        return;
      }

      __break(1u);
      return;
    }
  }

  v11 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v11)
  {
    v12 = *((*v1 & *v0) + 0x498);
    v5 = v11;
    v13 = v12();
    OUTLINED_FUNCTION_45_33(v14, v15, v16, v17, v13, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
    OUTLINED_FUNCTION_0_137();
    goto LABEL_8;
  }
}

double ConversationHUDViewController.defaultControlsSize.getter()
{
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x448))();
  OUTLINED_FUNCTION_0_137();
  if (v4 != 0.0 || v2 != 0.0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_secondaryPillView);
    if (v5)
    {
      v6 = *((*v3 & *v0) + 0x498);
      v7 = v5;
      v8 = v6();
      OUTLINED_FUNCTION_45_33(v9, v10, v11, v12, v8, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
      ConversationHUDViewController.secondaryPillVerticalMargin.getter();
    }
  }

  return v1;
}

double ConversationHUDViewController.secondaryPillVerticalMargin.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
  result = 0.0;
  if (v1 == 2)
  {
    Layout.MultiwayFaceTime.init()(v3);
    return v4;
  }

  return result;
}

id ConversationHUDViewController.menuContainerFrame.getter()
{
  static Layout.ConversationControls.values.getter(v3);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];

    return static Layout.ConversationControls.values.getter(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for ConversationHUDViewController.delegate : ConversationHUDViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ConversationHUDViewController.delegate : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x470);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ConversationHUDViewController.delegate.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t ConversationHUDViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_37(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate);
  OUTLINED_FUNCTION_3_5();
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ConversationHUDViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return InCallControlsBaseCell.delegate.modify;
}

uint64_t key path setter for ConversationHUDViewController.recipe : ConversationHUDViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Notice?(a1, &v8 - v5, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x488))(v6);
}

uint64_t ConversationHUDViewController.recipe.didset(uint64_t a1)
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v111 = &v94[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94[-v8];
  v10 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v94[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = __swift_project_value_buffer(v12, static Logger.conversationKit);
  v14 = v1;
  v109 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v108 = v12;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v117[0] = v18;
    *v17 = 136315138;
    v19 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
    swift_beginAccess();
    v20 = v6;
    if (__swift_getEnumTagSinglePayload(v14 + v19, 1, v10))
    {
      v121 = 0;
      v119 = 0u;
      v120 = 0u;
      v122 = -1;
    }

    else
    {
      outlined init with copy of ConversationControlsType(v14 + v19, &v119);
    }

    v21 = specialized >> prefix<A>(_:)(&v119);
    v23 = v22;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v119, &_s15ConversationKit0A12ControlsTypeOSgMd);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v117);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_1BBC58000, v15, v16, "[HUDController] recipe.didSet: type=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFB23DF0](v18, -1, -1);
    MEMORY[0x1BFB23DF0](v17, -1, -1);

    v12 = v108;
    v6 = v20;
  }

  else
  {
  }

  v25 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  swift_beginAccess();
  outlined init with copy of Notice?(v14 + v25, v9, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  v27 = v112;
  _s15ConversationKit0A14ControlsRecipeVWObTm_3(v9, v112);
  if ([v14 isViewLoaded])
  {
    v28 = *(v14 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
    if (!v28)
    {
      goto LABEL_28;
    }

    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v28))
    {
      v30 = v29;
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 8);
      v33 = v12;
      v34 = v28;
      LOBYTE(ObjectType) = v32(v27, ObjectType, v30);

      v12 = v33;
      if (ObjectType)
      {
        goto LABEL_34;
      }

LABEL_28:
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v12, &static Logger.conversationControls);
      v60 = v14;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      v63 = os_log_type_enabled(v61, v62);
      v64 = MEMORY[0x1E69E7D40];
      if (v63)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v114 = v66;
        *v65 = 136315138;
        LOBYTE(v113) = (*((*v64 & *v60) + 0x148))();
        v67 = String.init<A>(reflecting:)();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v114);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_1BBC58000, v61, v62, "[%s] ConversationHUDViewController: update recipe -> setupControlsView", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1BFB23DF0](v66, -1, -1);
        MEMORY[0x1BFB23DF0](v65, -1, -1);
      }

      v27 = v112;
      ConversationControlsRecipe.requiresAnimation(from:)(v110);
      ConversationHUDViewController.setupControlsView(animated:)();
LABEL_39:
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
      {
        goto LABEL_49;
      }

      v86 = (*((*v64 & *v14) + 0x210))();
      if (v86)
      {
        v87 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd);
        if (swift_dynamicCastClass())
        {
          dispatch thunk of UIHostingController.rootView.getter();

          v114 = v115;
          v115 = v116;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd);
          State.wrappedValue.getter();
          (*(*v113 + 560))(v27);

          ConversationHUDViewController.updateFindoTrailingConstraint()();

LABEL_49:
          v91 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
          v92 = v111;
          __swift_storeEnumTagSinglePayload(v111, 1, 1, v91);
          ConversationHUDViewController.setupSecondaryPill(buttonType:)();
          v93 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
          (*((*v64 & *v14) + 0x4C0))(v93);
          __swift_storeEnumTagSinglePayload(v92, 1, 1, v91);
          ConversationHUDViewController.showSecondaryPill(buttonType:)();
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v92, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
          return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v27, type metadata accessor for ConversationControlsRecipe);
        }
      }

      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_1BBC58000, v88, v89, "Unable to cast to FindoView", v90, 2u);
        MEMORY[0x1BFB23DF0](v90, -1, -1);
      }

      goto LABEL_49;
    }

    v35 = &v27[*(v10 + 60)];
    v36 = *v35;
    v37 = *(v35 + 1);
    v38 = *(v35 + 2);
    v108 = *(v35 + 3);
    v39 = *(v35 + 4);
    v107 = v35[40];
    outlined init with copy of Notice?(v110, v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v104 = v37;
    v106 = v36;
    if (EnumTagSinglePayload == 1)
    {
      v41 = v28;
      v42 = v36;
      v43 = v107;
      outlined copy of ConversationControlsRecipe.Actions?(v42, v37, v38, v108, v39, v107);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      if (v43 >= 0xFE)
      {

        goto LABEL_34;
      }

      v101 = v38;
      v49 = 0;
      v100 = 0;
      v58 = 0;
      v59 = 0;
      v105 = 0;
      v103 = 254;
      v56 = v104;
      v57 = v106;
    }

    else
    {
      v44 = &v6[*(v10 + 60)];
      v45 = *(v44 + 1);
      v99 = *v44;
      v46 = *(v44 + 3);
      v98 = *(v44 + 2);
      v102 = v46;
      v105 = *(v44 + 4);
      v103 = v44[40];
      v97 = v28;
      v47 = v36;
      v48 = v37;
      v49 = v99;
      v101 = v38;
      v50 = v38;
      v51 = v103;
      v52 = v107;
      outlined copy of ConversationControlsRecipe.Actions?(v47, v48, v50, v108, v39, v107);
      v100 = v45;
      v53 = v45;
      v54 = v98;
      outlined copy of ConversationControlsRecipe.Actions?(v49, v53, v98, v102, v105, v51);
      _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v6, type metadata accessor for ConversationControlsRecipe);
      if (v52 > 0xFD)
      {

        v55 = v51 > 0xFD;
        v56 = v104;
        v57 = v106;
        v58 = v54;
        v59 = v102;
        if (v55)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      if (v51 <= 0xFD)
      {
        v70 = v100;
        *&v119 = v49;
        *(&v119 + 1) = v100;
        v71 = v54;
        *&v120 = v54;
        *(&v120 + 1) = v102;
        v72 = v105;
        v121 = v105;
        v122 = v51;
        v96 = v39;
        v73 = v104;
        v117[0] = v106;
        v117[1] = v104;
        v74 = v108;
        v117[2] = v101;
        v117[3] = v108;
        v117[4] = v39;
        v75 = v107;
        v118 = v107;
        v95 = static ConversationControlsRecipe.Actions.== infix(_:_:)(v117, &v119);
        outlined consume of ConversationControlsRecipe.Actions?(v99, v70, v71, v102, v72, v51);

        outlined consume of ConversationControlsRecipe.Actions?(v106, v73, v101, v74, v96, v75);
        if ((v95 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_34:
        if (one-time initialization token for conversationControls != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v12, &static Logger.conversationControls);
        v76 = v14;
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        v79 = os_log_type_enabled(v77, v78);
        v64 = MEMORY[0x1E69E7D40];
        if (v79)
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v114 = v81;
          *v80 = 136315138;
          LOBYTE(v113) = (*((*v64 & *v76) + 0x148))();
          v82 = String.init<A>(reflecting:)();
          v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v114);

          *(v80 + 4) = v84;
          _os_log_impl(&dword_1BBC58000, v77, v78, "[%s] ConversationHUDViewController: update recipe -> updateControlsView", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          v85 = v81;
          v27 = v112;
          MEMORY[0x1BFB23DF0](v85, -1, -1);
          MEMORY[0x1BFB23DF0](v80, -1, -1);
        }

        ConversationHUDViewController.updateControlsView()();
        goto LABEL_39;
      }

      v56 = v104;
      v57 = v106;
      v58 = v54;
      v59 = v102;
    }

LABEL_27:
    outlined consume of ConversationControlsRecipe.Actions?(v57, v56, v101, v108, v39, v107);
    outlined consume of ConversationControlsRecipe.Actions?(v49, v100, v58, v59, v105, v103);
    goto LABEL_28;
  }

  return _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v27, type metadata accessor for ConversationControlsRecipe);
}

uint64_t ConversationHUDViewController.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of Notice?(v1 + v3, a1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
}

uint64_t ConversationHUDViewController.recipe.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_44_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_101();
  v7 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Notice?(v1 + v7, v2, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_30_2();
  outlined assign with copy of ConversationControlsRecipe?(a1, v1 + v7);
  swift_endAccess();
  ConversationHUDViewController.recipe.didset(v2);
  OUTLINED_FUNCTION_92_0();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, v9);
  OUTLINED_FUNCTION_92_0();
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, v11);
}

void (*ConversationHUDViewController.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OUTLINED_FUNCTION_40_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v3[4] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[5] = v8;
  v9 = OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Notice?(v1 + v9, v8, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  return ConversationHUDViewController.recipe.modify;
}

void ConversationHUDViewController.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of Notice?(*(*a1 + 40), v3, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    ConversationHUDViewController.recipe.setter(v3);
    v5 = OUTLINED_FUNCTION_40_2();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, v6);
  }

  else
  {
    ConversationHUDViewController.recipe.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

double ConversationHUDViewController.presentationSize.getter()
{
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *v0;
}

uint64_t ConversationHUDViewController.presentationSize.setter()
{
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  result = OUTLINED_FUNCTION_3_5();
  *v0 = v2;
  v0[1] = v1;
  return result;
}

double ConversationHUDViewController.systemApertureElement.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_13_2();
  (*((*MEMORY[0x1E69E7D40] & v5) + 0x480))();
  v6 = type metadata accessor for ConversationControlsRecipe();
  if (__swift_getEnumTagSinglePayload(v1, 1, v6))
  {
    v7 = 0;
    v8 = 0;
    v12 = 0u;
    v13 = xmmword_1BC4C9460;
    v11 = 0u;
    v10 = 0u;
  }

  else
  {
    memcpy(__dst, (v1 + *(v6 + 72)), 0x49uLL);
    outlined init with copy of Notice?(__dst, v14, &_s15ConversationKit21SystemApertureElementVSgMd);
    v12 = __dst[1];
    v13 = __dst[0];
    v10 = __dst[3];
    v11 = __dst[2];
    v7 = *&__dst[4];
    v8 = BYTE8(__dst[4]);
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  *a1 = v13;
  *(a1 + 16) = v12;
  result = *&v11;
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  return result;
}

Swift::Void __swiftcall ConversationHUDViewController.updatePreferredContentSize()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v9))
  {
    v10 = OUTLINED_FUNCTION_33();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "ConversationHUDViewController: updatePreferredContentSize", v10, 2u);
    OUTLINED_FUNCTION_3_26();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8020], v3);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = OUTLINED_FUNCTION_33_0();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v15 = *MEMORY[0x1E69DDCE0];
  v14 = *(MEMORY[0x1E69DDCE0] + 8);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v17 = *(MEMORY[0x1E69DDCE0] + 24);
  v18 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_176();
  v19 += 150;
  v20 = *v19;
  if ((*v19)())
  {
    static Layout.ConversationControls.values.getter(v48);
    v22 = v48[7];
    v21 = v48[8];
    v23 = [v2 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 SBUISA_layoutMode];

      if ((v25 - 2) >= 3)
      {
        [v2 setPreferredContentSize_];
      }

      else
      {
        [v2 preferredContentSize];
        v14 = (v26 - v22) * 0.5;
        v16 = -v21;
        v15 = 0.0;
        v17 = v14;
      }

      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_176();
  (*(v27 + 1104))();
  [v2 setPreferredContentSize_];
LABEL_12:
  OUTLINED_FUNCTION_176();
  v30 += 141;
  v31 = *v30;
  v32 = (*v30)();
  if (v32)
  {
    v33 = v32;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v33))
    {
      v34 = OUTLINED_FUNCTION_111_10();
      (*(v1 + 48))(v34, v1, v15, v14, v16, v17);
    }

    v32 = swift_unknownObjectRelease();
  }

  if ((v31)(v32))
  {
    v36 = v35;
    ObjectType = swift_getObjectType();
    v38 = v20();
    (*(v36 + 16))(v38 & 1, ObjectType, v36);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_176();
  (*(v39 + 304))();
  OUTLINED_FUNCTION_13_62();
  (*((*v18 & v40) + 0xAD0))();

  OUTLINED_FUNCTION_283();
  v42 = (*((*v18 & v41) + 0x210))();
  if (v42)
  {
    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy15ConversationKit9FindoViewVGMd);
    if (swift_dynamicCastClass())
    {
      dispatch thunk of UIHostingController.rootView.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit14FindoViewModelCGMd);
      State.wrappedValue.getter();

      v45 = *&v2[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_shutterButtonDodging];
      if (v45)
      {
        v46 = (*(*v47 + 376))(v44);
        v45(v46 & 1);
      }
    }
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updatePresentationSize(to:)(CGSize to)
{
  height = to.height;
  static Layout.ConversationControls.values.getter(v6);
  v4 = v6[0];
  OUTLINED_FUNCTION_37_1(OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_presentationSize);
  v5 = OUTLINED_FUNCTION_3_5();
  *v1 = v4;
  v1[1] = height;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x4C0))(v5);
}

Swift::Void __swiftcall ConversationHUDViewController.updateBackgroundBlur()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x468))())
  {
    v2 = v1;
    OUTLINED_FUNCTION_176();
    v3 += 63;
    v4 = *v3;
    v5 = (*v3)();
    v6 = [v5 effect];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
      }
    }

    else
    {
      v7 = 0;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 48))(ObjectType, v2);
    v10 = v9;
    if ((((v7 == 0) ^ v9) & 1) == 0)
    {
      v11 = v4();
      if (v10)
      {
        v12 = [objc_opt_self() effectWithStyle_];
      }

      else
      {
        v12 = 0;
      }

      [v11 setEffect_];
    }

    v13 = v4();
    v16 = [v13 contentView];

    [v16 setClipsToBounds_];
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updateBackgroundCornerRadius()()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (v2 && (swift_getObjectType(), dynamic_cast_existential_1_conditional(v2)) && (v4 = v3, ObjectType = swift_getObjectType(), v6 = *(v4 + 96), v7 = v2, v27 = v6(ObjectType, v4), v7, v27))
  {
    static Layout.ConversationControls.values.getter(v29);
    v8 = v29[19] * 0.5;
    v9 = v8 + ConversationHUDViewController.contentInsetForCornerRadius.getter();
    [v27 frame];
    v10 = CGRectGetHeight(v30) * 0.5;
    v11 = v10 + ConversationHUDViewController.contentInsetForCornerRadius.getter();
    if (v9 > v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F8);
    v14 = v13();
    [v14 _continuousCornerRadius];
    v16 = v15;

    if (v16 != v12)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v17 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v17, &static Logger.conversationControls);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v19))
      {
        v20 = OUTLINED_FUNCTION_30_1();
        v21 = OUTLINED_FUNCTION_23();
        v28 = v21;
        *v20 = 136446466;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2048;
        *(v20 + 14) = v12;
        _os_log_impl(&dword_1BBC58000, v18, v19, "[%{public}s] updating corner radius to %f", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_4_4();
      }

      [v13() _setContinuousCornerRadius_];
    }

    OUTLINED_FUNCTION_20_6();
  }

  else
  {
    OUTLINED_FUNCTION_20_6();
  }
}

Swift::Void __swiftcall ConversationHUDViewController.updateControlsManagerObservers()()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54 - v4;
  v61 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  OUTLINED_FUNCTION_1();
  v58 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v54 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit0D31ControlsSecondaryPillButtonTypeO_GMd);
  OUTLINED_FUNCTION_1();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v59 = v14;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  OUTLINED_FUNCTION_13_2();
  v23 = MEMORY[0x1E69E7D40];
  v25 = *((*MEMORY[0x1E69E7D40] & v24) + 0x130);
  v25();
  OUTLINED_FUNCTION_13_62();
  (*((*v23 & v26) + 0x8F0))();

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v27, &_s7Combine9PublishedV9PublisherVy15ConversationKit14EphemeralAlertVSg_GMd);
  v28 = Publisher<>.sink(receiveValue:)();

  v29 = v17;
  v30 = v23;
  (*(v19 + 8))(v22, v29);
  OUTLINED_FUNCTION_11_23();
  v32 = (*((*v23 & v31) + 0x168))(v28);
  (v25)(v32);
  OUTLINED_FUNCTION_13_62();
  (*((*v23 & v33) + 0xA18))();

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  v35 = (*(v34 + 1056))();
  v36 = v54;
  MEMORY[0x1BFB21570](v35);
  OUTLINED_FUNCTION_158();
  type metadata accessor for NSObject(v37, v38);
  v39 = static OS_dispatch_queue.main.getter();
  v63 = v39;
  type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = v60;
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_6_10();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v45, v46);
  OUTLINED_FUNCTION_158();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v47, v48);
  v49 = v56;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v58 + 8))(v36, v61);
  (*(v55 + 8))(v13, v49);
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Published<ConversationControlsSecondaryPillButtonType>.Publisher, OS_dispatch_queue> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AA9PublishedV9PublisherVy15ConversationKit0F31ControlsSecondaryPillButtonTypeO_GSo17OS_dispatch_queueCGMd);
  v50 = Publisher<>.sink(receiveValue:)();

  v51 = OUTLINED_FUNCTION_33_0();
  v52(v51);
  OUTLINED_FUNCTION_11_23();
  (*((*v30 & v53) + 0x180))(v50);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationHUDViewController.updateControlsManagerObservers()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = MEMORY[0x1E69E7D40];
    v7 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x130);
    v8 = v7();
    v9 = (*((*v6 & *v8) + 0x928))();

    v10 = v9 >> 5;
    if (v10 != 1)
    {
      if (v10 == 2)
      {
        if (v9)
        {
LABEL_6:
          v11 = v7();
          (*((*v6 & *v11) + 0xAD8))();

          v12 = *&v5[OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView];
          if (!v12)
          {
            goto LABEL_17;
          }

          swift_getObjectType();
          if (!dynamic_cast_existential_1_conditional(v12))
          {
            goto LABEL_17;
          }

          v14 = v13;
          ObjectType = swift_getObjectType();
          v16 = *(v14 + 32);
          v17 = v12;
          v18 = v3;
          v19 = v17;
          outlined copy of ConversationControlsRecipe.View?(v2, v1);
          v16(v2, v1, v18, ObjectType, v14);
          goto LABEL_16;
        }
      }

      else if (v10 != 3 || v9 != 96)
      {
        goto LABEL_6;
      }
    }

    if (!v2)
    {
LABEL_17:

      return;
    }

    v20 = one-time initialization token for conversationControls;
    v21 = v2;
    v22 = v1;
    if (v20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, &static Logger.conversationControls);
    v24 = v21;
    v25 = v22;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v28 = 136315138;
      v29 = v24;
      v30 = v25;
      v31 = String.init<A>(reflecting:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v36);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BBC58000, v26, v27, "Ephemeral alert %s attempted to present over staging; ignoring and discarding.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB23DF0](v35, -1, -1);
      v34 = v28;
      v6 = MEMORY[0x1E69E7D40];
      MEMORY[0x1BFB23DF0](v34, -1, -1);
    }

    v19 = v7();
    (*((*v6 & *v19) + 0x8E0))(0, 0, 0);

LABEL_16:
    goto LABEL_17;
  }
}

void closure #2 in ConversationHUDViewController.updateControlsManagerObservers()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_storeEnumTagMultiPayload();
    v10 = static ConversationControlsSecondaryPillButtonType.== infix(_:_:)();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_4(v7, type metadata accessor for ConversationControlsSecondaryPillButtonType);
    if (v10)
    {
      ConversationHUDViewController.hideSecondaryPill(remove:)(1);
    }

    else
    {
      _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(a1, v4);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      ConversationHUDViewController.showSecondaryPill(buttonType:)();

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_s15ConversationKit0A31ControlsSecondaryPillButtonTypeOSgMd);
    }
  }
}

void ConversationHUDViewController.observeSidebarState()()
{
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_101();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_sidebarStateStream))
  {
    v18 = v6;
    v17 = SidebarStateStream.states.getter();
    v19 = v17;
    v9 = [objc_opt_self() mainRunLoop];
    v20 = v9;
    type metadata accessor for NSRunLoop.SchedulerOptions();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<SidebarState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
    lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
    Publisher.receive<A>(on:options:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SidebarState, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd);
    OUTLINED_FUNCTION_92_0();
    Publisher<>.sink(receiveValue:)();
    OUTLINED_FUNCTION_28_0();

    (*(v18 + 8))(v8, v4);
    OUTLINED_FUNCTION_30_2();
    v14 = OUTLINED_FUNCTION_44_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14);
    OUTLINED_FUNCTION_92_0();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v15, v16);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in ConversationHUDViewController.observeSidebarState()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x210))();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 view];

      if (!v4)
      {
        __break(1u);
        return;
      }

      [v4 setHidden_];
    }
  }
}

uint64_t ConversationHUDViewController.systemAperturePreferredContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView);
  if (!v1 || (v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView + 8), v11[0] = *(v0 + OBJC_IVAR____TtC15ConversationKit29ConversationHUDViewController_controlsView), v11[1] = v2, v3 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit12ControlsView_pMd), __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pMd), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  if (!*(&v9 + 1))
  {
LABEL_6:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v8, &_s15ConversationKit42SystemAperturePreferredContentSizeProvider_pSgMd);
    return OUTLINED_FUNCTION_46();
  }

  outlined init with take of TapInteractionHandler(&v8, v11);
  v4 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v5 = OUTLINED_FUNCTION_28_0();
  v6(v5, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return OUTLINED_FUNCTION_46();
}

Swift::Bool __swiftcall ConversationHUDViewController.gestureRecognizer(_:shouldReceive:)(UIGestureRecognizer *_, UITouch shouldReceive)
{
  v2 = [(objc_class *)shouldReceive.super.isa view];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  v4 = v2 == 0;

  return v4;
}

id ConversationHUDViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id ConversationHUDViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationHUDViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ConversationControlsViewController.delegate.modify in conformance ConversationHUDViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x478))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ConversationControlsViewController.recipe.modify in conformance ConversationHUDViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x490))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ConversationControlsViewController.controlsManager.modify in conformance ConversationHUDViewController(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t ConversationHUDViewController.shareCardViewControllerDidDismiss(_:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  *(v2 + *a2) = 0;

  OUTLINED_FUNCTION_13_2();
  v5 = *((*MEMORY[0x1E69E7D40] & v4) + 0x4C0);

  return v5();
}

Swift::Void __swiftcall ConversationHUDViewController.peoplePickerAdded(_:shouldAddOtherInvitedToRemoteMembers:)(Swift::OpaquePointer _, Swift::Bool shouldAddOtherInvitedToRemoteMembers)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x130);
  v4();
  OUTLINED_FUNCTION_13_62();
  osloga = (*((*v3 & v5) + 0x2C0))();

  if (osloga)
  {
    v4();
    OUTLINED_FUNCTION_13_62();
    (*((*v3 & v6) + 0x2A0))();

    addPeople(_:toConversation:onActiveCall:shouldAddOtherInvitedToRemoteMembers:)();
    swift_unknownObjectRelease();
    [v2 dismissPeoplePicker];
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v7, &static Logger.conversationControls);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_33();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v8, "Unable to add remote members, no conversation.", v9, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  OUTLINED_FUNCTION_194_0();
}

Swift::Void __swiftcall ConversationHUDViewController.dismissPeoplePicker()()
{
  v1 = v0;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, &static Logger.conversationControls);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v4))
  {
    v5 = OUTLINED_FUNCTION_33();
    *v5 = 0;
    _os_log_impl(&dword_1BBC58000, v3, v4, "Dismiss peoplePicker", v5, 2u);
    OUTLINED_FUNCTION_27();
  }

  [v1 dismissViewControllerAnimated:1 completion:0];
}

void type metadata completion function for ConversationHUDViewController()
{
  type metadata accessor for ConversationControlsRecipe?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ConversationHUDViewController.shadowProperties.setter(uint64_t *a1)
{
  v2 = *(a1 + 2);
  v3 = a1[4];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v6 = *a1;
  v7 = v2;
  v8 = *(a1 + 1);
  v9 = v3;
  return v4(&v6);
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWObTm_3(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

uint64_t partial apply for closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)()
{
  v1 = type metadata accessor for ConversationControlsSecondaryPillButtonType(0);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return closure #1 in ConversationHUDViewController.showSecondaryPill(buttonType:)(v3, v4);
}

uint64_t _s15ConversationKit0A31ControlsSecondaryPillButtonTypeOWOcTm_1(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_1();
  v4(v3);
  OUTLINED_FUNCTION_7_0();
  v5 = OUTLINED_FUNCTION_46();
  v6(v5);
  return a2;
}

id ShareCardHeaderView.body.getter@<X0>(char *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  closure #1 in ShareCardHeaderView.body.getter(a1, a2, a3, a4, a5);
  v9 = *&a1[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_conversationDidChangePublisher];
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_231(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMd);
  *(a5 + *(v11 + 52)) = v9;
  v12 = (a5 + *(v11 + 56));
  *v12 = partial apply for closure #2 in ShareCardHeaderView.body.getter;
  v12[1] = v5;
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_231(v13);
  v14 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMd) + 36));
  *v14 = partial apply for closure #3 in ShareCardHeaderView.body.getter;
  v14[1] = v5;
  v14[2] = 0;
  v14[3] = 0;
  swift_retain_n();
  v15 = a1;
  v18 = a3;

  v16 = v15;

  return v18;
}

void closure #1 in ShareCardHeaderView.body.getter(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-v12];
  v14 = type metadata accessor for ShareCardStatusHeaderView(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy15ConversationKit09ShareCardH14PlayHeaderViewVAF0hi6StatuskL0V_GMd);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32[-v18];
  v36 = a3;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd);
  State.wrappedValue.getter();
  v20 = v35;
  if (v35)
  {
    v21 = a1;
    v22 = v20;
    v23 = ShareCardSharePlayHeaderView.init(controlsManager:app:)(v21, v22);
    v25 = v24;
    *v19 = v23;
    *(v19 + 1) = v24;
    v19[16] = v26;
    *(v19 + 3) = v27;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView();
    lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView();
    v28 = v23;
    v29 = v25;

    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v30 = type metadata accessor for ConversationControlsRecipe();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v30);
    outlined init with copy of ConversationControlsRecipe?(v13, v10);
    v31 = a1;
    State.init(wrappedValue:)();
    outlined destroy of ConversationControlsRecipe?(v13);
    *v16 = v31;
    *(v16 + 4) = v33 & 1;
    outlined init with copy of ShareCardStatusHeaderView(v16, v19);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView();
    lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ShareCardStatusHeaderView(v16);
  }
}

uint64_t closure #2 in ShareCardHeaderView.body.getter()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

void ShareCardHeaderView.updateView()(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x988))();
  if (v8)
  {
    v9 = v8;
    if ([v8 state] == 1)
    {
      TUConversationActivitySession.generateType.getter(&v13);
      if (v13 != 6)
      {
        v13 = a3;
        v14 = a4;

        v12 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd);
        State.wrappedValue.setter();

        return;
      }
    }
  }

  v10 = (*((*v7 & *a1) + 0x860))();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  if (((*((*v7 & *v10) + 0x80))() & 1) == 0)
  {

LABEL_9:
    v13 = a3;
    v14 = a4;
    goto LABEL_10;
  }

  v13 = a3;
  v14 = a4;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy15ConversationKit19ShareCardHeaderViewV0hC0OGMd);
  State.wrappedValue.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA012_ConditionalD0Vy15ConversationKit09ShareCardo10PlayHeaderF0VAP0op6StatusrF0VGGGAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>()
{
  result = lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>;
  if (!lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI16SubscriptionViewVy7Combine18PassthroughSubjectCyyts5NeverOGAA5GroupVyAA19_ConditionalContentVy15ConversationKit09ShareCardn10PlayHeaderD0VAN0no6StatusqD0VGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionView<PassthroughSubject<(), Never>, Group<_ConditionalContent<ShareCardSharePlayHeaderView, ShareCardStatusHeaderView>>> and conformance SubscriptionView<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ShareCardStatusHeaderView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareCardStatusHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView()
{
  result = lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView;
  if (!lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardSharePlayHeaderView and conformance ShareCardSharePlayHeaderView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView()
{
  result = lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView;
  if (!lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView)
  {
    type metadata accessor for ShareCardStatusHeaderView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareCardStatusHeaderView and conformance ShareCardStatusHeaderView);
  }

  return result;
}

uint64_t outlined destroy of ShareCardStatusHeaderView(uint64_t a1)
{
  v2 = type metadata accessor for ShareCardStatusHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 ClarityUIPreviewNavigationDestination.init(contact:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v6;
  *(a3 + 64) = *(a2 + 32);
  return result;
}

uint64_t ClarityPreviewView.init(navigationPath:contact:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined init with take of Binding<NavigationPath>(a1, a4);
  v9 = type metadata accessor for ClarityPreviewView();
  v10 = a4 + v9[5];
  *v10 = *a2;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  v11 = a4 + v9[6];
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  *(v11 + 32) = *(a3 + 32);
  v13 = v9[7];
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_232();
  }

  *(a4 + v13) = static ClarityCameraModel.shared;
  v14 = v9[8];
  v15 = one-time initialization token for shared;

  if (v15 != -1)
  {
    swift_once();
  }

  *(a4 + v14) = static ClarityUICallHistory.shared;
}

uint64_t type metadata accessor for ClarityPreviewView()
{
  result = type metadata singleton initialization cache for ClarityPreviewView;
  if (!type metadata singleton initialization cache for ClarityPreviewView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ClarityPreviewView.navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  JUMPOUT(0x1BFB20050);
}

uint64_t key path setter for ClarityPreviewView.navigationPath : ClarityPreviewView(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return ClarityPreviewView.navigationPath.setter();
}

uint64_t ClarityPreviewView.navigationPath.setter()
{
  OUTLINED_FUNCTION_17_1();
  v1 = type metadata accessor for NavigationPath();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v3 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  Binding.wrappedValue.setter();
  v7 = OUTLINED_FUNCTION_44_0();
  return v8(v7);
}

void (*ClarityPreviewView.navigationPath.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = type metadata accessor for NavigationPath();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
  v3[4] = v7;
  OUTLINED_FUNCTION_7_0();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  outlined init with copy of Binding<NavigationPath>(v1, v9);
  MEMORY[0x1BFB20050](v7);
  return ClarityUIOutgoingCallActionsView.navigationPath.modify;
}

uint64_t ClarityPreviewView.$navigationPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);

  return Binding.projectedValue.getter();
}

uint64_t ClarityPreviewView.contact.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClarityPreviewView() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v4;
  v9 = v5;
}

__n128 ClarityPreviewView.contact.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = v1 + *(type metadata accessor for ClarityPreviewView() + 20);
  v6 = *v5;
  v7 = *(v5 + 8);

  result = *a1;
  *v5 = *a1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  return result;
}

double (*ClarityPreviewView.contact.modify())(void)
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ClarityPreviewView();
  return TPNumberPadCharacter.rawValue.getter;
}

void ClarityPreviewView.action.getter(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClarityPreviewView() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  v8 = v3[4];

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7, v8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

__n128 ClarityPreviewView.action.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1 + *(type metadata accessor for ClarityPreviewView() + 24);

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v2 + 24));
  result = *v0;
  v4 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(v0 + 32);
  return result;
}

double (*ClarityPreviewView.action.modify())(void)
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ClarityPreviewView();
  return TPNumberPadCharacter.rawValue.getter;
}

uint64_t *ClarityCameraModel.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_232();
  }

  return &static ClarityCameraModel.shared;
}

uint64_t ClarityPreviewView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitle_4iconQrqd___qd_0_tSyRd__AaBRd_0_r0_lFQOyAA15ModifiedContentVyAGyAGyAA6ZStackVyAA05TupleC0VyAA012_ConditionalH0Vy15ConversationKit07PreviewC13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVAGyAA5ColorVAA16_OverlayModifierVyAGyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_AGyAA6VStackVyAKyAN27ClarityUIButtonRowContainerVyAGyAcAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAWGG_AN07ClaritynC0V20StartCallButtonStyleAPLLVQo_AA30_EnvironmentKeyWritingModifierVyASSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA25_GAA25_AppearanceActionModifierVGAA11_ClipEffectVyAA9RectangleVGG_SSAWQo_Md);
  OUTLINED_FUNCTION_1();
  v65 = v4;
  v66 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGAA11_ClipEffectVyAA9RectangleVGGMd);
  v62 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v60 - v9);
  *v10 = static Alignment.center.getter();
  v10[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA19_ConditionalContentVy15ConversationKit07PreviewD13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVAA08ModifiedJ0VyAA5ColorVAA16_OverlayModifierVyAQyAA5ImageVAA012_AspectRatioG0VGSgGGG_AQyAA6VStackVyAIyAL27ClarityUIButtonRowContainerVyAQyAA0D0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAWGG_AL07ClaritymD0V20StartCallButtonStyleANLLVQo_AA30_EnvironmentKeyWritingModifierVyASSgGGG_AA6SpacerVtGGAA08_PaddingG0VGtGGMd);
  closure #1 in ClarityPreviewView.body.getter(v1, (v10 + *(v12 + 44)));
  v13 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GMd) + 36));
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = type metadata accessor for ClarityPreviewView();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (&v60 - v64);
  outlined init with copy of ClarityPreviewView(v2, &v60 - v64);
  v20 = *(v17 + 80);
  v21 = swift_allocObject();
  outlined init with take of ClarityPreviewView(v19, v21 + ((v20 + 16) & ~v20));
  v22 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGMd) + 36));
  *v22 = partial apply for closure #2 in ClarityPreviewView.body.getter;
  v22[1] = v21;
  v22[2] = 0;
  v22[3] = 0;
  *(v10 + *(v7 + 36)) = 0;
  v63 = v2;
  v70 = CNContact.clarityUIDisplayName.getter();
  v71 = v23;
  Image.init(systemName:)();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = *MEMORY[0x1E6981688];
  v29 = type metadata accessor for Image.TemplateRenderingMode();
  OUTLINED_FUNCTION_7_0();
  (*(v30 + 104))(v27, v28, v29);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v29);
  v31 = Image.renderingMode(_:)();

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v27, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd);
  v69 = v31;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A, B>(_:icon:)();

  v32 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGAA11_ClipEffectVyAA9RectangleVGGMd);
  MEMORY[0x1EEE9AC00](v32);
  v33 = (&v60 - v64);
  outlined init with copy of ClarityPreviewView(v63, &v60 - v64);
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  v35 = (v20 + 32) & ~v20;
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  *(v36 + 16) = v34;
  *(v36 + 24) = v37;
  outlined init with take of ClarityPreviewView(v33, v36 + v35);
  v38 = type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_1();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = &v60 - v44;
  static TaskPriority.userInitiated.getter();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v62 = type metadata accessor for _TaskModifier2();
    v63 = &v60;
    OUTLINED_FUNCTION_1();
    v61 = v46;
    MEMORY[0x1EEE9AC00](v47);
    v64 = &v60;
    v60 = &v60 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v70 = 0xD000000000000035;
    v71 = 0x80000001BC5259C0;
    v69 = 76;
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1BFB20B10](v49);

    v51 = MEMORY[0x1EEE9AC00](v50);
    (*(v40 + 16))(&v60 - v44, &v60 - v44, v38, v51);
    v52 = v60;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v40 + 8))(v45, v38);
    v53 = v67;
    (*(v65 + 32))(v67, v68, v66);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitle_4iconQrqd___qd_0_tSyRd__AaDRd_0_r0_lFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAA012_ConditionalD0Vy15ConversationKit07PreviewE13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAKyAN27ClarityUIButtonRowContainerVyACyAeAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAWGG_AN07ClaritynE0V20StartCallButtonStyleAPLLVQo_AA30_EnvironmentKeyWritingModifierVyASSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA25_GAA25_AppearanceActionModifierVGAA11_ClipEffectVyAA9RectangleVGG_SSAWQo_AA14_TaskModifier2VGMd);
    return (*(v61 + 32))(v53 + *(v54 + 36), v52, v62);
  }

  else
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15navigationTitle_4iconQrqd___qd_0_tSyRd__AaDRd_0_r0_lFQOyACyACyACyAA6ZStackVyAA05TupleE0VyAA012_ConditionalD0Vy15ConversationKit07PreviewE13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAKyAN27ClarityUIButtonRowContainerVyACyAeAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAWGG_AN07ClaritynE0V20StartCallButtonStyleAPLLVQo_AA30_EnvironmentKeyWritingModifierVyASSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA25_GAA25_AppearanceActionModifierVGAA11_ClipEffectVyAA9RectangleVGG_SSAWQo_AA13_TaskModifierVGMd);
    v57 = v67;
    v58 = (v67 + *(v56 + 36));
    v59 = type metadata accessor for _TaskModifier();
    (*(v40 + 32))(&v58[*(v59 + 20)], &v60 - v44, v38);
    *v58 = &async function pointer to partial apply for closure #3 in ClarityPreviewView.body.getter;
    *(v58 + 1) = v36;
    return (*(v65 + 32))(v57, v68, v66);
  }
}

void closure #1 in ClarityPreviewView.body.getter(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA0P0VyAA5LabelVyAA4TextVAA5ImageVGG_AH0j7PreviewG0V09StartCallpO033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClarityPreviewView();
  v13 = v12;
  if (*(a1 + *(v12 + 24) + 16) == 1)
  {
    v49 = *(*(a1 + *(v12 + 28)) + 16);
    v50 = 0u;
    memset(v51, 0, 25);
    v14 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGMd);
    lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable();
    lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v16 = v52;
    v15 = v53;
    v18 = v54;
    v17 = v55;
    v19 = a1;
    v20 = v56;
  }

  else
  {
    v21 = static Color.clear.getter();
    v22 = a1;
    v23 = a1 + *(v13 + 20);
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    v52 = *v23;
    *&v53 = v24;
    *(&v53 + 1) = v25;
    if (ClarityUIContact.fullImage.getter())
    {
      (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
      v26 = Image.resizable(capInsets:resizingMode:)();

      (*(v9 + 8))(v11, v8);
      v27 = 257;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = static Alignment.center.getter();
    v49 = v21;
    v50 = v26;
    *&v51[0] = v27;
    *(&v51[0] + 1) = v28;
    *&v51[1] = v29;
    BYTE8(v51[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGMd);
    lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable();
    lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v16 = v52;
    v15 = v53;
    v18 = v54;
    v17 = v55;
    v20 = v56;
    v19 = v22;
  }

  v45 = v15;
  v46 = v16;
  v44 = v15;
  v30 = v16;
  v31 = v17;
  outlined copy of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(v16, *(&v16 + 1), v15, *(&v15 + 1), v18, v17, v20);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0Vy15ConversationKit27ClarityUIButtonRowContainerVyAA15ModifiedContentVyAA0D0PAAE11buttonStyleyQrqd__AA06ButtonR0Rd__lFQOyAA0S0VyAA5LabelVyAA4TextVAA5ImageVGG_AJ0k7PreviewD0V09StartCallsR033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGMd);
  closure #1 in closure #1 in ClarityPreviewView.body.getter(v19, &v7[*(v32 + 44)]);
  static ClarityUIMetrics.standardSpacing.getter();
  v33 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v34 = &v7[*(v3 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v47;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v7, v47, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA0P0VyAA5LabelVyAA4TextVAA5ImageVGG_AH0j7PreviewG0V09StartCallpO033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd);
  v40 = v48;
  v41 = v45;
  *v48 = v46;
  v40[1] = v41;
  *(v40 + 4) = v18;
  *(v40 + 5) = v31;
  *(v40 + 48) = v20;
  v42 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy15ConversationKit24PreviewViewRepresentable33_5F44B43E167BB5459C625FF70B7F8E56LLVAA08ModifiedD0VyAA5ColorVAA16_OverlayModifierVyAIyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_AIyAA6VStackVyAA05TupleH0VyAD27ClarityUIButtonRowContainerVyAIyAA0H0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVAOGG_AD07ClaritygH0V20StartCallButtonStyleAFLLVQo_AA022_EnvironmentKeyWritingV0VyAKSgGGG_AA6SpacerVtGGAA08_PaddingZ0VGtMd) + 48);
  outlined init with copy of (CGFloat, AutoplayCandidate)(v39, v42, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA0P0VyAA5LabelVyAA4TextVAA5ImageVGG_AH0j7PreviewG0V09StartCallpO033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd);
  v43 = v44;
  outlined copy of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(v30, *(&v30 + 1), v44, *(&v44 + 1), v18, v31, v20);
  outlined consume of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(v30, *(&v30 + 1), v43, *(&v43 + 1), v18, v31, v20);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA0P0VyAA5LabelVyAA4TextVAA5ImageVGG_AH0j7PreviewG0V09StartCallpO033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA06ButtonO0Rd__lFQOyAA0P0VyAA5LabelVyAA4TextVAA5ImageVGG_AH0j7PreviewG0V09StartCallpO033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGMd);
  outlined consume of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(v30, *(&v30 + 1), v43, *(&v43 + 1), v18, v31, v20);
}

uint64_t closure #1 in closure #1 in ClarityPreviewView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ClarityPreviewView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGGMd);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v31 = 0;
  v32 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12CoreGraphics7CGFloatVSgMd);
  State.init(wrappedValue:)();
  v17 = v34;
  v18 = v35;
  *v16 = v33;
  v16[8] = v17;
  *(v16 + 2) = v18;
  v19 = &v16[*(v11 + 44)];
  outlined init with copy of ClarityPreviewView(a1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  outlined init with take of ClarityPreviewView(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd);
  Button.init(action:label:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Button<Label<Text, Image>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5LabelVyAA4TextVAA5ImageVGGMd);
  lazy protocol witness table accessor for type ClarityPreviewView.StartCallButtonStyle and conformance ClarityPreviewView.StartCallButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v22 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v24 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyAA5LabelVyAA4TextVAA5ImageVGG_15ConversationKit014ClarityPreviewE0V09StartCallhG033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v16, v13, &_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGGMd);
  v25 = v29;
  outlined init with copy of (CGFloat, AutoplayCandidate)(v13, v29, &_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGGMd);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGG_AD6SpacerVtMd) + 48);
  *v26 = 0;
  *(v26 + 8) = 1;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGGMd);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v13, &_s15ConversationKit27ClarityUIButtonRowContainerVy7SwiftUI15ModifiedContentVyAD4ViewPADE11buttonStyleyQrqd__AD06ButtonM0Rd__lFQOyAD0N0VyAD5LabelVyAD4TextVAD5ImageVGG_AA0c7PreviewK0V09StartCallnM033_5F44B43E167BB5459C625FF70B7F8E56LLVQo_AD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGGMd);
}

void closure #1 in closure #1 in closure #1 in closure #1 in ClarityPreviewView.body.getter(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ClarityPreviewView() + 24) + 24);
  if (v1)
  {

    v1(v2);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  else
  {
    if (one-time initialization token for clarityUI != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, &static Log.clarityUI);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v4, "Unexpectedly showed preview view for a pending action.", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }
  }
}

void closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in ClarityPreviewView.body.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() conversationKit];
  v7._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._object = 0x80000001BC525BE0;
  v4._countAndFlagsBits = 0xD000000000000016;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v7);

  *a1 = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t closure #2 in closure #2 in closure #1 in closure #1 in closure #1 in ClarityPreviewView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClarityPreviewView();
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

void closure #2 in ClarityPreviewView.body.getter(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ClarityPreviewView() + 20);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = *v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = v9;
  v6 = v2;

  v14.cnContact.super.isa = &v9;
  ClarityUICallHistory.markRecentCallsAsRead(for:)(v14);
  v7 = v10;
  v8 = v9;
}

uint64_t closure #3 in ClarityPreviewView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  type metadata accessor for NavigationPath();
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA18PassthroughSubjectCyyts5NeverOGGMd);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for MainActor();
  v3[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v7;
  v3[15] = v6;

  return MEMORY[0x1EEE6DFA0](closure #3 in ClarityPreviewView.body.getter, v7, v6);
}

uint64_t closure #3 in ClarityPreviewView.body.getter()
{
  v1 = [objc_allocWithZone(type metadata accessor for InCallServiceDidAppearNotificationHandler()) init];
  v0[16] = v1;
  v0[2] = *&v1[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5641InCallServiceDidAppearNotificationHandler_publisher];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  v3 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  MEMORY[0x1BFB1DE80](v2, v3);
  AsyncPublisher.makeAsyncIterator()();
  v4 = OUTLINED_FUNCTION_44_0();
  v5(v4);
  v0[17] = static MainActor.shared.getter();
  OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_4_156(v6);

  return MEMORY[0x1EEE6D8C8](v7);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = closure #3 in ClarityPreviewView.body.getter;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v7;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = closure #3 in ClarityPreviewView.body.getter;
  }

  return MEMORY[0x1EEE6DFA0](v8, v4, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  *(v0 + 161) = *(v0 + 160);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](closure #3 in ClarityPreviewView.body.getter, v1, v2);
}

{
  if (*(v0 + 161) == 1)
  {
    v1 = *(v0 + 128);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14NavigationPathVGMd);
    MEMORY[0x1BFB20050]();
    NavigationPath.removeLast(_:)(1);
    Binding.wrappedValue.setter();
    *(v0 + 136) = static MainActor.shared.getter();
    OUTLINED_FUNCTION_0_2(&lazy protocol witness table cache variable for type AsyncPublisher<PassthroughSubject<(), Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA18PassthroughSubjectCyyts5NeverOG_GMd);
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_4_156();

    return MEMORY[0x1EEE6D8C8](v5);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 24) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t ClarityPreviewView.StartCallButtonStyle.makeBody(configuration:)(uint64_t a1)
{
  v2 = type metadata accessor for PlatterButtonType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ButtonStyleConfiguration();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v11[1] = static Color.green.getter();
  static Color.white.getter();
  (*(v3 + 104))(v5, *MEMORY[0x1E697C450], v2);
  return PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)();
}

id PreviewViewRepresentable.makeUIViewController(context:)(uint64_t a1, void *a2)
{
  type metadata accessor for PreviewViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = a2;
  PreviewViewController.captureSession.setter(a2);
  return v3;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PreviewViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PreviewViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PreviewViewRepresentable()
{
  lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t PreviewView.videoPreviewLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id PreviewView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PreviewView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PreviewView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PreviewView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void PreviewViewController.captureSession.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView);
  v3 = PreviewView.videoPreviewLayer.getter();

  if (v3)
  {
    [v3 setSession_];
    [v3 setVideoGravity_];
  }
}

void PreviewViewController.captureSession.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_captureSession);
  *(v1 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_captureSession) = a1;
  v3 = a1;

  PreviewViewController.captureSession.didset();
}

id PreviewViewController.viewDidLoad()()
{
  v1 = OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView;
  [*&v0[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView] setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA7F0;
  v5 = [*&v0[v1] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = [result widthAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v8;
  v9 = [*&v0[v1] heightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = [result heightAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v4 + 40) = v12;
  v13 = [*&v0[v1] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result centerXAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v4 + 48) = v16;
  v17 = [*&v0[v1] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = objc_opt_self();
  v20 = [v18 centerYAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v4 + 56) = v21;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints_];

  v23 = *&v0[v1];

  return [v23 setAccessibilityIgnoresInvertColors_];
}

void PreviewViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7.receiver = v3;
  v7.super_class = type metadata accessor for PreviewViewController();
  objc_msgSendSuper2(&v7, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  PreviewViewController.updatePreviewRotationAngle()();
}

void PreviewViewController.updatePreviewRotationAngle()()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Collection.first.getter(v3);

  if (!v4)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = v5;
  v6 = [v5 interfaceOrientation];
  if (v6 == 3)
  {
    v14 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView);
    v15 = PreviewView.videoPreviewLayer.getter();

    if (v15)
    {
      v9 = [v15 connection];

      if (v9)
      {
        [v9 setVideoRotationAngle_];
        goto LABEL_20;
      }
    }

    goto LABEL_26;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView);
      v8 = PreviewView.videoPreviewLayer.getter();

      if (v8)
      {
        v9 = [v8 connection];

        if (v9)
        {
          [v9 setVideoRotationAngle_];
LABEL_20:
          v17 = v4;
          goto LABEL_21;
        }
      }

      goto LABEL_26;
    }

LABEL_11:
    v10 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView);
    v11 = PreviewView.videoPreviewLayer.getter();

    if (!v11)
    {
      goto LABEL_22;
    }

    v9 = [v11 connection];

    if (!v9)
    {
      goto LABEL_22;
    }

    [v9 setVideoRotationAngle_];
LABEL_21:

LABEL_22:
    v16 = v17;
    goto LABEL_23;
  }

  v12 = *(v0 + OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView);
  v13 = PreviewView.videoPreviewLayer.getter();

  if (v13)
  {
    v9 = [v13 connection];

    if (v9)
    {
      [v9 setVideoRotationAngle_];
      goto LABEL_20;
    }
  }

LABEL_26:
  v16 = v4;
LABEL_23:
}

id PreviewViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_captureSession] = 0;
  if (a2)
  {
    v8 = MEMORY[0x1BFB209B0](a1, a2);
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for PreviewViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id PreviewViewController.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_previewView;
  type metadata accessor for PreviewView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5621PreviewViewController_captureSession] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PreviewViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id PreviewView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ClarityCameraModel.__allocating_init()()
{
  v0 = swift_allocObject();
  ClarityCameraModel.init()();
  return v0;
}

uint64_t static ClarityCameraModel.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_232();
  }
}

uint64_t key path setter for ClarityCameraModel.videoDeviceInput : ClarityCameraModel(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);
  v4 = *a1;
  return v3(v2);
}

void *ClarityCameraModel.videoDeviceInput.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void ClarityCameraModel.videoDeviceInput.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ClarityCameraModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v8 - v3;
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E6987110]) init];
  *(v0 + 24) = 0;
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  return v0;
}

uint64_t closure #1 in ClarityCameraModel.init()()
{
  OUTLINED_FUNCTION_24_0();
  ClarityCameraModel.setUpCaptureSession()();
  v1 = *(v0 + 8);

  return v1();
}

void ClarityCameraModel.setUpCaptureSession()()
{
  v1 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDeviceDiscoverySession);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19AVCaptureDeviceTypeaGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BC4BB980;
  v3 = *MEMORY[0x1E6986940];
  v4 = *MEMORY[0x1E6986900];
  v5 = MEMORY[0x1E6986950];
  *(v2 + 32) = *MEMORY[0x1E6986940];
  *(v2 + 40) = v4;
  v6 = *v5;
  *(v2 + 48) = *v5;
  v7 = *MEMORY[0x1E6987608];
  v8 = v3;
  v9 = v4;
  v10 = v6;
  v11 = v7;
  v12 = OUTLINED_FUNCTION_44_0();
  v14 = @nonobjc AVCaptureDeviceDiscoverySession.__allocating_init(deviceTypes:mediaType:position:)(v12, v13, 2);
  v15 = [v14 devices];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for AVCaptureDevice);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v16))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1BFB22010](0, v16);
    }

    else
    {
      v17 = *(v16 + 32);
    }

    v18 = v17;

    v19 = v1[2];
    [v19 beginConfiguration];
    v20 = objc_allocWithZone(MEMORY[0x1E69870B0]);
    v37 = v18;
    v28 = @nonobjc AVCaptureDeviceInput.init(device:)(v37);
    if ([v19 canAddInput_])
    {
      v29 = *(*v1 + 104);
      v30 = v28;
      v29(v28);
      [v19 addInput_];
      [v19 setSessionPreset_];
      [v19 commitConfiguration];
      [v19 startRunning];
    }

    else
    {
      if (one-time initialization token for clarityUI != -1)
      {
        OUTLINED_FUNCTION_0_158();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, &static Log.clarityUI);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        OUTLINED_FUNCTION_75(&dword_1BBC58000, v35, v36, "Unable to correctly add video device input to start video preview");
        MEMORY[0x1BFB23DF0](v34, -1, -1);
      }
    }

    v27 = v37;
  }

  else
  {

    if (one-time initialization token for clarityUI != -1)
    {
      OUTLINED_FUNCTION_0_158();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, &static Log.clarityUI);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v25, v26, "Unable to find video device to start video preview");
      MEMORY[0x1BFB23DF0](v24, -1, -1);
    }

    v27 = v14;
  }
}

id @nonobjc AVCaptureDeviceDiscoverySession.__allocating_init(deviceTypes:mediaType:position:)(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for AVCaptureDeviceType(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [swift_getObjCClassFromMetadata() discoverySessionWithDeviceTypes:isa mediaType:a2 position:a3];

  return v6;
}

uint64_t ClarityCameraModel.__deallocating_deinit()
{
  ClarityCameraModel.deinit();

  return swift_deallocClassInstance();
}

char *InCallServiceDidAppearNotificationHandler.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5641InCallServiceDidAppearNotificationHandler_publisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
  swift_allocObject();
  *&v0[v2] = PassthroughSubject.init()();
  v3 = *MEMORY[0x1E69D8E30];
  *&v1[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5641InCallServiceDidAppearNotificationHandler_notificationName] = *MEMORY[0x1E69D8E30];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InCallServiceDidAppearNotificationHandler();
  v4 = v3;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, v5, @objc closure #1 in InCallServiceDidAppearNotificationHandler.init(), *&v5[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5641InCallServiceDidAppearNotificationHandler_notificationName], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

void closure #1 in InCallServiceDidAppearNotificationHandler.init()(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for InCallServiceDidAppearNotificationHandler();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCyyts5NeverOGMd);
      Subject<>.send()();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for clarityUI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, &static Log.clarityUI);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BBC58000, oslog, v3, "Unexpected type for observer in InCallServiceDidAppearNotificationHandler.", v4, 2u);
    MEMORY[0x1BFB23DF0](v4, -1, -1);
  }
}

void @objc closure #1 in InCallServiceDidAppearNotificationHandler.init()(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a5;
  closure #1 in InCallServiceDidAppearNotificationHandler.init()(a1, a2);
}

id InCallServiceDidAppearNotificationHandler.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v1, v0, *&v0[OBJC_IVAR____TtC15ConversationKitP33_5F44B43E167BB5459C625FF70B7F8E5641InCallServiceDidAppearNotificationHandler_notificationName], 0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for InCallServiceDidAppearNotificationHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ClarityUIPreviewNavigationDestination.contact.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  v6 = v2;
  v7 = v3;
}

__n128 ClarityUIPreviewNavigationDestination.contact.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = *v1;
  v6 = *(v1 + 8);

  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void ClarityUIPreviewNavigationDestination.action.getter(uint64_t a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7, v6);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
}

__n128 ClarityUIPreviewNavigationDestination.action.setter(uint64_t a1)
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v1 + 56));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

uint64_t static ClarityUIPreviewNavigationDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 48);
  v15[0] = *(a1 + 32);
  v15[1] = v6;
  v16 = *(a1 + 64);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 48);
  v17[0] = *(a2 + 32);
  v17[1] = v9;
  v10 = *(a2 + 64);
  v11 = v4 == v7 && v5 == v8;
  v18 = v10;
  if (v11 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), v13 = 0, (v12 & 1) != 0))
  {
    v13 = static ClarityUIOutgoingCallAction.== infix(_:_:)(v15, v17);
  }

  return v13 & 1;
}

void ClarityUIPreviewNavigationDestination.hash(into:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  String.hash(into:)();
  OUTLINED_FUNCTION_44_0();
  String.hash(into:)();
  MEMORY[0x1BFB22640](v1);
  Hasher._combine(_:)(v2 == 0);
}

Swift::Int ClarityUIPreviewNavigationDestination.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1BFB22640](v1);
  Hasher._combine(_:)(v2 == 0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClarityUIPreviewNavigationDestination()
{
  Hasher.init(_seed:)();
  ClarityUIPreviewNavigationDestination.hash(into:)();
  return Hasher._finalize()();
}

id @nonobjc AVCaptureDeviceInput.init(device:)(void *a1)
{
  v2 = v1;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = [v2 initWithDevice:a1 error:v8];
  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t outlined init with copy of ClarityPreviewView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityPreviewView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ClarityPreviewView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityPreviewView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGAA11_ClipEffectVyAA9RectangleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GAA017_AppearanceActionX0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA012_ConditionalD0Vy15ConversationKit07PreviewG13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVACyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_ACyAA6VStackVyAGyAJ27ClarityUIButtonRowContainerVyACyAA0G0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AJ07ClaritykG0V20StartCallButtonStyleALLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGA23_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA19_ConditionalContentVy15ConversationKit07PreviewE13Representable33_5F44B43E167BB5459C625FF70B7F8E56LLVAA08ModifiedG0VyAA5ColorVAA16_OverlayModifierVyAMyAA5ImageVAA18_AspectRatioLayoutVGSgGGG_AMyAA6VStackVyAEyAH27ClarityUIButtonRowContainerVyAMyAA0E0PAAE11buttonStyleyQrqd__AA11ButtonStyleRd__lFQOyAA6ButtonVyAA5LabelVyAA4TextVASGG_AH07ClarityjE0V20StartCallButtonStyleAJLLVQo_AA022_EnvironmentKeyWritingX0VyAOSgGGG_AA6SpacerVtGGAA14_PaddingLayoutVGtGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>, ModifiedContent<VStack<TupleView<(ClarityUIButtonRowContainer<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>>, Spacer)>>, _PaddingLayout>)>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #3 in ClarityPreviewView.body.getter()
{
  v1 = type metadata accessor for ClarityPreviewView();
  OUTLINED_FUNCTION_22(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = partial apply for closure #2 in RecentsListViewController.presentGroupReportAndBlockAction(of:);
  v3 = OUTLINED_FUNCTION_44_0();

  return closure #3 in ClarityPreviewView.body.getter(v3, v4, v5);
}

uint64_t partial apply for closure #1 in ClarityCameraModel.init()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #2 in RecentsListViewController.presentBlockAllAction(of:);

  return closure #1 in ClarityCameraModel.init()(a1, v4, v5, v6);
}

void type metadata completion function for ClarityPreviewView()
{
  type metadata accessor for Binding<NavigationPath>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ClarityCameraModel();
    type metadata accessor for ClarityUICallHistory();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t lazy protocol witness table accessor for type PreviewViewRepresentable and conformance PreviewViewRepresentable()
{
  result = lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable;
  if (!lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable;
  if (!lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewViewRepresentable and conformance PreviewViewRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ColorVAA16_OverlayModifierVyACyAA5ImageVAA18_AspectRatioLayoutVGSgGGMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA5ImageVAA18_AspectRatioLayoutVGSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

id outlined copy of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return a1;
  }
}

void outlined consume of _ConditionalContent<PreviewViewRepresentable, ModifiedContent<Color, _OverlayModifier<ModifiedContent<Image, _AspectRatioLayout>?>>>.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

uint64_t partial apply for closure #2 in ClarityPreviewView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ClarityPreviewView();
  OUTLINED_FUNCTION_22(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t lazy protocol witness table accessor for type ClarityPreviewView.StartCallButtonStyle and conformance ClarityPreviewView.StartCallButtonStyle()
{
  result = lazy protocol witness table cache variable for type ClarityPreviewView.StartCallButtonStyle and conformance ClarityPreviewView.StartCallButtonStyle;
  if (!lazy protocol witness table cache variable for type ClarityPreviewView.StartCallButtonStyle and conformance ClarityPreviewView.StartCallButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityPreviewView.StartCallButtonStyle and conformance ClarityPreviewView.StartCallButtonStyle);
  }

  return result;
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return specialized == infix(_:_:)(a1, a2, a3);
}

id TUCall.basicCall.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for CallCenterCall;
  a1[4] = lazy protocol witness table accessor for type CallCenterCall and conformance CallCenterCall();
  *a1 = v3;

  return v3;
}

uint64_t TUCall.cnk_isAudio.getter()
{
  if (![v0 isVideo])
  {
    return [v0 isVideo] ^ 1;
  }

  if (![v0 isConversation])
  {
    return [v0 isVideo] ^ 1;
  }

  v1 = [v0 callCenter];
  v2 = [v1 activeConversationForCall_];

  if (!v2)
  {
    return [v0 isVideo] ^ 1;
  }

  v3 = [v2 resolvedAudioVideoMode];

  return v3 == 1;
}

void TUCall.hasContactImage.getter()
{
  v1 = [v0 remoteParticipantHandles];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUHandle);
  OUTLINED_FUNCTION_1_65();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(v2, &lazy cache variable for type metadata for TUHandle);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
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

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v14 = v17) == 0))
    {
LABEL_18:
      outlined consume of Set<TUHandle>.Iterator._Variant();

      return;
    }

LABEL_17:
    v15 = [objc_allocWithZone(MEMORY[0x1E695CF18]) _initWithHandle_];
    v16 = [v15 imageDataAvailable];

    if (v16)
    {
      goto LABEL_18;
    }
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void TUCall.cnk_disconnect(reason:)(uint64_t a1)
{
  v3 = [v1 callCenter];
  [v3 disconnectCall:v1 withReason:a1];
}

Swift::Void __swiftcall TUCall.cnk_answerOrJoin()()
{
  v1 = [v0 callCenter];
  [v1 answerOrJoinCall_];
}

id TUCall.cnk_contactStoreConfiguration.getter()
{
  v1 = [objc_opt_self() tu:v0 contactStoreConfigurationForCall:?];

  return v1;
}

id TUCall.cnk_dialRequestForRedial.getter()
{
  v1 = [v0 dialRequestForRedial];

  return v1;
}

BOOL TUCall.isMergedWithAnotherCall.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = TUCall.associatedCallGroup(in:)(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 calls];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUCall);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = specialized Array.count.getter(v3);

  return v4 > 1;
}

BOOL TUCall.cnk_everConnected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v13 - v8;
  v10 = [v1 dateConnected];
  if (v10)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v9, v5, v2);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v11, 1, v2);
  outlined destroy of Date?(v9);
  return v10 != 0;
}

id @nonobjc TUCall.handle.getter()
{
  v1 = [v0 handle];

  return v1;
}

uint64_t @nonobjc TUCall.callGroupUUID.getter@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return __swift_storeEnumTagSinglePayload(a4, v11, 1, v12);
}

id @nonobjc TUCall.activeRemoteParticipant.getter()
{
  v1 = [v0 activeRemoteParticipant];

  return v1;
}

id @nonobjc TUCall.localSenderIdentity.getter()
{
  v1 = [v0 localSenderIdentity];

  return v1;
}

id (*protocol witness for Call.bluetoothAudioFormat.modify in conformance TUCall(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 bluetoothAudioFormat];
  return protocol witness for Call.bluetoothAudioFormat.modify in conformance TUCall;
}

id (*protocol witness for Call.isSendingVideo.modify in conformance TUCall(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSendingVideo];
  return protocol witness for Call.isSendingVideo.modify in conformance TUCall;
}

id (*protocol witness for Call.isSharingScreen.modify in conformance TUCall(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isSharingScreen];
  return protocol witness for Call.isSharingScreen.modify in conformance TUCall;
}

id (*protocol witness for Call.isUplinkMuted.modify in conformance TUCall(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 isUplinkMuted];
  return protocol witness for Call.isUplinkMuted.modify in conformance TUCall;
}

id (*protocol witness for Call.shouldSuppressRingtone.modify in conformance TUCall(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 shouldSuppressRingtone];
  return protocol witness for Call.shouldSuppressRingtone.modify in conformance TUCall;
}

uint64_t outlined bridged method (pb) of @objc TUCall.callDurationString.getter(void *a1)
{
  v1 = [a1 callDurationString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t instantiation function for generic protocol witness table for TUCall(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUCall and conformance NSObject, &lazy cache variable for type metadata for TUCall);
  *(a1 + 16) = result;
  return result;
}

void *static Layout.ConversationControls.values.getter@<X0>(double *a1@<X8>)
{
  static Layout.ConversationControls.iOS.getter(__src);
  v2 = 8.0;
  if (__src[0] < 310.0)
  {
    v2 = 3.0;
  }

  if (__src[0] >= 360.0)
  {
    v3 = 10.0;
  }

  else
  {
    v3 = v2;
  }

  v4 = 20.0 - __src[2];
  memcpy(a1, __src, 0x90uLL);
  a1[18] = v4;
  memcpy(a1 + 19, v7, 0x50uLL);
  a1[29] = v3;
  return memcpy(a1 + 30, v8, 0xC8uLL);
}

__n128 static Layout.InCallControls.values.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1BC4EC1C0;
  *(a1 + 16) = xmmword_1BC4EC1D0;
  *(a1 + 32) = xmmword_1BC4EC1E0;
  *(a1 + 48) = xmmword_1BC4EC1F0;
  *(a1 + 64) = xmmword_1BC4EC200;
  *(a1 + 80) = xmmword_1BC4EC210;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_1BC4EC220;
  *(a1 + 128) = xmmword_1BC4EC230;
  *(a1 + 144) = xmmword_1BC4EC240;
  *(a1 + 160) = xmmword_1BC4EC250;
  *(a1 + 176) = xmmword_1BC4EC260;
  *(a1 + 192) = xmmword_1BC4EC270;
  *(a1 + 208) = xmmword_1BC4EC280;
  *(a1 + 224) = xmmword_1BC4EC290;
  *(a1 + 240) = xmmword_1BC4EC2A0;
  *(a1 + 256) = xmmword_1BC4EC2B0;
  *(a1 + 272) = xmmword_1BC4EC2C0;
  *(a1 + 288) = xmmword_1BC4EC2D0;
  *(a1 + 304) = xmmword_1BC4EC2E0;
  *(a1 + 320) = xmmword_1BC4EC2F0;
  *(a1 + 336) = xmmword_1BC4EC300;
  *(a1 + 352) = xmmword_1BC4EC310;
  __asm { FMOV            V1.2D, #17.0 }

  *(a1 + 368) = xmmword_1BC4EC320;
  *(a1 + 384) = _Q1;
  *(a1 + 400) = xmmword_1BC4EC330;
  *(a1 + 416) = xmmword_1BC4EC340;
  *(a1 + 432) = xmmword_1BC4EC350;
  *(a1 + 448) = xmmword_1BC4EC360;
  *(a1 + 464) = xmmword_1BC4EC370;
  *(a1 + 480) = xmmword_1BC4EC380;
  *(a1 + 496) = xmmword_1BC4EC390;
  *(a1 + 512) = xmmword_1BC4EC3A0;
  __asm { FMOV            V1.2D, #8.0 }

  *(a1 + 528) = xmmword_1BC4EC3B0;
  *(a1 + 544) = _Q1;
  *(a1 + 560) = xmmword_1BC4EC3C0;
  *(a1 + 576) = xmmword_1BC4EC3D0;
  *(a1 + 592) = xmmword_1BC4EC3E0;
  *(a1 + 608) = xmmword_1BC4EC3F0;
  *(a1 + 624) = xmmword_1BC4EC400;
  *(a1 + 640) = xmmword_1BC4EC410;
  *(a1 + 656) = xmmword_1BC4EC420;
  *(a1 + 672) = xmmword_1BC4EC430;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 688) = _Q0;
  *(a1 + 704) = xmmword_1BC4EC440;
  OUTLINED_FUNCTION_51_23(a1, xmmword_1BC4EC450);
  return result;
}

uint64_t *Layout.Captions.transcriptVerticalSize.unsafeMutableAddressor()
{
  if (one-time initialization token for transcriptVerticalSize != -1)
  {
    swift_once();
  }

  return &static Layout.Captions.transcriptVerticalSize;
}

uint64_t static Layout.ParticipantViews.screenSharingCornerRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v0 + 416))();
}

uint64_t static Layout.ParticipantViews.cornerRadius(for:)(uint64_t result)
{
  if ((result & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    OUTLINED_FUNCTION_0_1();
    return (*(v1 + 400))();
  }

  return result;
}

uint64_t static Layout.ParticipantViews.localParticipantCornerRadius.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    return static IconButtonStyle.Defaults.phone.iconWidth.getter();
  }

  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  OUTLINED_FUNCTION_0_1();
  return (*(v1 + 400))();
}

CGFloat static Layout.LocalParticipantView.participantViewFrame(in:aspectRatio:videoOrientation:)(void *a1, uint64_t a2, uint64_t a3)
{
  static Layout.LocalParticipantViewCameraControls.iOS.getter(v28);
  v6 = *&v28[14];
  [a1 bounds];
  Width = CGRectGetWidth(v29);
  OUTLINED_FUNCTION_120_6();
  v9 = Width - v8;
  OUTLINED_FUNCTION_120_6();
  v11 = v9 - v10 + -32.0;
  [a1 bounds];
  Height = CGRectGetHeight(v30);
  OUTLINED_FUNCTION_120_6();
  v14 = Height - v13;
  OUTLINED_FUNCTION_120_6();
  v16 = v14 - v15 - v6 + -32.0;
  OUTLINED_FUNCTION_120_6();
  OUTLINED_FUNCTION_120_6();
  if (*(a2 + 32))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = *a2;
  }

  if (*(a2 + 32))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = *(a2 + 8);
  }

  if (static Platform.current.getter())
  {
    v19 = v18 / v17;
    v20 = v16 / (v18 / v17);
    v21 = v11 * v19;
    if (v11 >= v20)
    {
      v22 = v16;
    }

    else
    {
      v22 = v21;
    }

    if (v16 >= v22 && v11 < v20)
    {
      v20 = v11;
    }
  }

  else
  {
    if (v17 > v18)
    {
      v23 = v17;
    }

    else
    {
      v23 = v18;
    }

    if (v18 >= v17)
    {
      v24 = v17;
    }

    else
    {
      v24 = v18;
    }

    v25 = v23 / v24;
    if ((a3 | 2) == 3)
    {
      v20 = v16 / v25;
      if (v11 < v16 / v25)
      {
        v20 = v11;
      }
    }

    else
    {
      v20 = v11;
    }
  }

  v31.origin.x = OUTLINED_FUNCTION_143_5();
  v26 = CGRectGetMidX(v31) - v20 * 0.5;
  v32.origin.x = OUTLINED_FUNCTION_143_5();
  CGRectGetMidY(v32);
  return v26;
}

uint64_t *Layout.ShareCard.appShelfSeparatorInsetBuffer.unsafeMutableAddressor()
{
  if (one-time initialization token for appShelfSeparatorInsetBuffer != -1)
  {
    swift_once();
  }

  return &static Layout.ShareCard.appShelfSeparatorInsetBuffer;
}

uint64_t *Layout.ShareCard.collaborateSubtitleBuffer.unsafeMutableAddressor()
{
  if (one-time initialization token for collaborateSubtitleBuffer != -1)
  {
    swift_once();
  }

  return &static Layout.ShareCard.collaborateSubtitleBuffer;
}

double static Layout.MediaPip.padding.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1 || (v3 = [v0 currentDevice], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, result = 10.0, v4 == 5))
  {
    HasHomeButton = TUDeviceHasHomeButton();
    result = 24.0;
    if (HasHomeButton)
    {
      return 20.0;
    }
  }

  return result;
}

uint64_t *Layout.Reactions.defaultTipWidth.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTipWidth != -1)
  {
    swift_once();
  }

  return &static Layout.Reactions.defaultTipWidth;
}