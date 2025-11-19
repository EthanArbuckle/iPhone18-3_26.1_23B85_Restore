void closure #1 in SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
      v12 = [*(Strong + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) layer];
      v13 = MEMORY[0x1BFB209B0](a3, a4);
      v14 = [v12 animationForKey_];

      if (v14)
      {

        [*&v10[v11] setHidden_];
        v15 = [*&v10[v11] layer];
        v16 = MEMORY[0x1BFB209B0](a3, a4);
        [v15 removeAnimationForKey_];
      }

      v17 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
      v18 = [*&v10[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton] layer];
      v19 = MEMORY[0x1BFB209B0](a3, a4);
      v20 = [v18 animationForKey_];

      if (!v20)
      {
        goto LABEL_10;
      }

      [*&v10[v17] setHidden_];
      a5 = *&v10[v17];
    }

    else
    {
      v21 = [a5 layer];
      v22 = MEMORY[0x1BFB209B0](a3, a4);
      v23 = [v21 animationForKey_];

      if (!v23)
      {
LABEL_10:

        return;
      }

      [a5 setHidden_];
    }

    v24 = [a5 layer];
    v25 = MEMORY[0x1BFB209B0](a3, a4);
    [v24 removeAnimationForKey_];

    goto LABEL_10;
  }
}

uint64_t SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(char a1)
{
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager)) + 0x360))(v5);
  if (v5[2] == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = (LODWORD(v5[0]) < 3) & v5[0];
  }

  SystemApertureIncomingCallControlsView.updateGameControllerFocusButton(isVisible:animated:gameControllerContext:)(v3, a1 & 1, v5);
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit21GameControllerContextVSgMd);
}

uint64_t key path getter for SystemApertureIncomingCallControlsView.menuHostViewController : SystemApertureIncomingCallControlsView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x188))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for SystemApertureIncomingCallControlsView.menuHostViewController : SystemApertureIncomingCallControlsView(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x190);
  v5 = *a1;
  return v4(v2, v3);
}

uint64_t SystemApertureIncomingCallControlsView.menuHostViewController.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void SystemApertureIncomingCallControlsView.menuHostViewController.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*SystemApertureIncomingCallControlsView.menuHostViewController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_menuHostViewController;
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

void SystemApertureIncomingCallControlsView.cnkContentAlpha.didset()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView];
  if (v1)
  {
    v2 = v1;
    [v0 alpha];
    [v2 setAlpha_];
  }

  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel];
  [v0 alpha];
  [v3 setAlpha_];
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel];
  [v0 alpha];
  [v4 setAlpha_];
  v5 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton];
  [v0 alpha];
  [v5 setAlpha_];

  v6 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton];
  [v0 alpha];
  [v6 setAlpha_];

  v7 = *&v0[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton];
  if (v7)
  {
    v8 = v7;
    [v0 alpha];
    [v8 setAlpha_];
  }
}

double SystemApertureIncomingCallControlsView.cnkContentAlpha.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

void SystemApertureIncomingCallControlsView.cnkContentAlpha.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_cnkContentAlpha;
  swift_beginAccess();
  *(v1 + v3) = a1;
  SystemApertureIncomingCallControlsView.cnkContentAlpha.didset();
}

void (*SystemApertureIncomingCallControlsView.cnkContentAlpha.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemApertureIncomingCallControlsView.cnkContentAlpha.modify;
}

void SystemApertureIncomingCallControlsView.cnkContentAlpha.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    SystemApertureIncomingCallControlsView.cnkContentAlpha.didset();
  }
}

uint64_t key path setter for SystemApertureIncomingCallControlsView.recipe : SystemApertureIncomingCallControlsView(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ConversationControlsRecipe(a1, v6);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x1C0))(v6);
}

id SystemApertureIncomingCallControlsView.recipe.didset(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsActionOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v81 - v9;
  v90 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = type metadata accessor for ConversationControlsAction();
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v81 - v18;
  v19 = v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(v19, &v95);
  v91 = 5;
  v92 = 0u;
  v93 = 0u;
  v94 = 7;
  v20 = static ConversationControlsType.== infix(_:_:)(&v95, &v91);
  outlined destroy of ConversationControlsType(&v91);
  outlined destroy of ConversationControlsType(&v95);
  v88 = v15;
  if ((v20 & 1) == 0)
  {
    outlined init with copy of ConversationControlsType(v19, &v95);
    v91 = 7;
    v92 = 0u;
    v93 = 0u;
    v94 = 7;
    v21 = static ConversationControlsType.== infix(_:_:)(&v95, &v91);
    outlined destroy of ConversationControlsType(&v91);
    outlined destroy of ConversationControlsType(&v95);
    if ((v21 & 1) == 0)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, &static Logger.conversationControls);
      v23 = v2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        HIDWORD(v81) = v25;
        v27 = v26;
        v91 = swift_slowAlloc();
        v82 = ObjectType;
        v28 = v91;
        *v27 = 136446466;
        v29 = _typeName(_:qualified:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v91);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        outlined init with copy of ConversationControlsType(v19, &v95);
        v32 = specialized >> prefix<A>(_:)(&v95);
        v34 = v33;
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A12ControlsTypeOSgMd);
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v91);

        *(v27 + 14) = v35;
        _os_log_impl(&dword_1BBC58000, v24, BYTE4(v81), "[%{public}s.recipe.didSet] Applied invalid recipe type %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB23DF0](v28, -1, -1);
        MEMORY[0x1BFB23DF0](v27, -1, -1);
      }

      v15 = v88;
    }
  }

  v36 = v87;
  if (*(v19 + *(v90 + 40)))
  {
    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, &static Logger.conversationControls);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v95 = v41;
      *v40 = 136446210;
      v42 = _typeName(_:qualified:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v95);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1BBC58000, v38, v39, "[%{public}s.recipe.didSet] Ignoring recipe subtitleLeadingBadge which is unsupported for the latest telephony design", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v45 = v41;
      v36 = v87;
      MEMORY[0x1BFB23DF0](v45, -1, -1);
      v46 = v40;
      v15 = v88;
      MEMORY[0x1BFB23DF0](v46, -1, -1);
    }
  }

  v47 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton) removeFromSuperview];
  outlined init with copy of ConversationControlsRecipe(v19, v14);
  v48 = &v14[*(v90 + 60)];
  if (v48[40] < 0)
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v49 = *v48;
    outlined copy of ConversationControlsRecipe.Actions(*v48, *(v48 + 1), *(v48 + 2), *(v48 + 3), *(v48 + 4));
  }

  outlined destroy of ConversationControlsAction(v14, type metadata accessor for ConversationControlsRecipe);
  specialized Collection.first.getter(v49, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    static ConversationControlsAction.rejectCall(controlsManager:)(*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager), v36);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v15);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit0A14ControlsActionOSgMd);
    }
  }

  else
  {
    EnumTagSinglePayload = outlined init with take of ConversationControlsAction(v10, v36);
  }

  v51 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_controlsManager);
  v52 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x188);
  v53 = v52(EnumTagSinglePayload);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v55 = v54;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  outlined destroy of ConversationControlsAction(v36, type metadata accessor for ConversationControlsAction);
  v56 = *(v2 + v47);
  *(v2 + v47) = v55;
  v57 = v55;

  [v2 addSubview_];
  v58 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton) removeFromSuperview];
  v59 = v89;
  outlined init with copy of ConversationControlsRecipe(v19, v89);
  v60 = (v59 + *(v90 + 60));
  if (v60[5] < 0)
  {
    v61 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v61 = *v60;
    outlined copy of ConversationControlsRecipe.Actions(*v60, v60[1], v60[2], v60[3], v60[4]);
  }

  v62 = v84;
  v63 = v83;
  outlined destroy of ConversationControlsAction(v89, type metadata accessor for ConversationControlsRecipe);
  specialized BidirectionalCollection.last.getter(v61);

  v64 = v88;
  if (__swift_getEnumTagSinglePayload(v63, 1, v88) == 1)
  {
    static ConversationControlsAction.acceptCall(controlsManager:)(v51, v62);
    v65 = __swift_getEnumTagSinglePayload(v63, 1, v64);
    if (v65 != 1)
    {
      v65 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v63, &_s15ConversationKit0A14ControlsActionOSgMd);
    }
  }

  else
  {
    v65 = outlined init with take of ConversationControlsAction(v63, v62);
  }

  v66 = v52(v65);
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  ConversationControlsAction.button(controlsManager:menuHostViewController:context:options:moreMenuButtonDelegate:)();
  v68 = v67;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v95, &_s15ConversationKit0A30ControlsMoreMenuButtonDelegate_pSgMd);
  outlined destroy of ConversationControlsAction(v62, type metadata accessor for ConversationControlsAction);
  v69 = *(v2 + v58);
  *(v2 + v58) = v68;
  v70 = v68;

  [v2 addSubview_];
  v71 = v85;
  outlined init with copy of ConversationControlsRecipe(v86, v85);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v90);
  SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v71, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  v72 = SystemApertureIncomingCallControlsView.updateSecondaryBadge()();
  SystemApertureIncomingCallControlsView.updateSecondaryLabel()(v72, v73, v74, v75, v76, v77, v78, v79, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  SystemApertureIncomingCallControlsView.updateGameControllerContext(animated:)(0);
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel) setAttributedText_];
  return [v2 setNeedsLayout];
}

uint64_t SystemApertureIncomingCallControlsView.recipe.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return outlined init with copy of ConversationControlsRecipe(v1 + v3, a1);
}

uint64_t SystemApertureIncomingCallControlsView.recipe.setter(uint64_t a1)
{
  v3 = type metadata accessor for ConversationControlsRecipe();
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  swift_beginAccess();
  outlined assign with copy of ConversationControlsRecipe(a1, v1 + v8);
  swift_endAccess();
  SystemApertureIncomingCallControlsView.recipe.didset(v7);
  outlined destroy of ConversationControlsAction(a1, type metadata accessor for ConversationControlsRecipe);
  return outlined destroy of ConversationControlsAction(v7, type metadata accessor for ConversationControlsRecipe);
}

void (*SystemApertureIncomingCallControlsView.recipe.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_recipe;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of ConversationControlsRecipe(v1 + v8, v7);
  return SystemApertureIncomingCallControlsView.recipe.modify;
}

void SystemApertureIncomingCallControlsView.recipe.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of ConversationControlsRecipe(v4, v3);
    SystemApertureIncomingCallControlsView.recipe.setter(v3);
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v4, v5);
  }

  else
  {
    SystemApertureIncomingCallControlsView.recipe.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SystemApertureIncomingCallControlsView.canUpdate(to:)(uint64_t a1)
{
  v5 = 5;
  v6 = 0u;
  v7 = 0u;
  v8 = 7;
  v2 = static ConversationControlsType.== infix(_:_:)(a1, &v5);
  outlined destroy of ConversationControlsType(&v5);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v5 = 7;
    v6 = 0u;
    v7 = 0u;
    v8 = 7;
    v3 = static ConversationControlsType.== infix(_:_:)(a1, &v5);
    outlined destroy of ConversationControlsType(&v5);
  }

  return v3 & 1;
}

uint64_t SystemApertureIncomingCallControlsView.systemAperturePreferredContentSize.getter()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    Width = CGRectGetWidth(v14);
  }

  else
  {
    Width = 1.79769313e308;
  }

  v12 = [v0 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];
  [v12 layoutFrame];

  return *&Width;
}

Swift::Void __swiftcall SystemApertureIncomingCallControlsView.layoutSubviews()()
{
  OUTLINED_FUNCTION_36_1();
  v2 = v0;
  swift_getObjectType();
  v3 = type metadata accessor for ConversationControlsRecipe();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v176.receiver = v0;
  v176.super_class = type metadata accessor for SystemApertureIncomingCallControlsView();
  v5 = objc_msgSendSuper2(&v176, sel_layoutSubviews);
  v6 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  if (v7)
  {
    v8 = 50.0;
  }

  else
  {
    v8 = 4.0;
  }

  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v5);
  v9 = v1 + *(v4 + 76);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  outlined copy of LeadingViewType?(*v9, v11, *(v9 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v1, v13);
  MaxY = 16.0;
  if (v12 != 255)
  {
    outlined consume of LeadingViewType?(v10, v11, v12);
    if (v12)
    {
      v15 = *&v6[v2];
      MaxY = 23.0;
      if (v15)
      {
        v16 = [v15 layer];
        [v16 setCornerRadius_];

        v17 = *&v6[v2];
        if (v17)
        {
          v18 = [v17 layer];
          [v18 setMasksToBounds_];
        }
      }
    }
  }

  inited = &off_1E7FE9000;
  [v2 bounds];
  v169 = (CGRectGetHeight(v177) + -50.0) * 0.5;
  [*&v6[v2] setFrame_];
  if (one-time initialization token for conversationControls != -1)
  {
LABEL_64:
    OUTLINED_FUNCTION_0_0();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, &static Logger.conversationControls);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  v168 = v8;
  v162 = v6;
  v163 = v7;
  if (OUTLINED_FUNCTION_18_0(v22))
  {
    OUTLINED_FUNCTION_30_1();
    v23 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v23);
    *v10 = 136446466;
    v24 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v24, v25);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = MaxY;
    v171 = *&v169;
    v172 = v8;
    v173 = 0x4049000000000000;
    type metadata accessor for CGRect(0);
    v26 = OUTLINED_FUNCTION_57_18();
    OUTLINED_FUNCTION_33_43(v26, v27);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v28, v29, "[%{public}s][layout] leadingFrame is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  [v2 *(inited + 4024)];
  v30 = CGRectGetWidth(v178) + -16.0;
  v179.origin.x = OUTLINED_FUNCTION_3_166();
  v31 = v30 - CGRectGetWidth(v179) * 0.5;
  [v2 *(inited + 4024)];
  v32 = CGRectGetHeight(v180) * 0.5;
  v33 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_acceptButton;
  v34 = OUTLINED_FUNCTION_3_166();
  [v35 v36];
  v167 = v33;
  [*(v2 + v33) setCenter_];
  v37 = OUTLINED_FUNCTION_38_39();
  v38 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v38))
  {
    OUTLINED_FUNCTION_30_1();
    v39 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v39);
    *v10 = 136446466;
    v40 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v40, v41);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = v31;
    v171 = *&v32;
    type metadata accessor for CGPoint(0);
    v42 = OUTLINED_FUNCTION_57_18();
    OUTLINED_FUNCTION_33_43(v42, v43);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v44, v45, "[%{public}s][layout] acceptCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v181.origin.x = OUTLINED_FUNCTION_3_166();
  v46 = v31 - CGRectGetWidth(v181) * 0.5 + -10.0;
  v182.origin.x = OUTLINED_FUNCTION_3_166();
  v47 = v46 - CGRectGetWidth(v182) * 0.5;
  [v2 bounds];
  v48 = CGRectGetHeight(v183) * 0.5;
  v49 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_rejectButton;
  v50 = OUTLINED_FUNCTION_3_166();
  [v51 v52];
  v166 = v49;
  [*(v2 + v49) setCenter_];
  v53 = OUTLINED_FUNCTION_38_39();
  v54 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v54))
  {
    OUTLINED_FUNCTION_30_1();
    v55 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v55);
    *v10 = 136446466;
    v56 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v56, v57);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = v47;
    v171 = *&v48;
    type metadata accessor for CGPoint(0);
    v58 = OUTLINED_FUNCTION_57_18();
    OUTLINED_FUNCTION_33_43(v58, v59);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v60, v61, "[%{public}s][layout] rejectCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v62 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton;
  if (*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_focusButton))
  {
    v63 = OUTLINED_FUNCTION_3_166();
    [v64 v65];
    v66 = *(v2 + v62);
    if (v66)
    {
      [v66 setCenter_];
    }
  }

  v67 = OUTLINED_FUNCTION_38_39();
  v68 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v68))
  {
    OUTLINED_FUNCTION_30_1();
    v69 = OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_15_64(v69);
    *v10 = 136446466;
    v70 = OUTLINED_FUNCTION_11_107();
    OUTLINED_FUNCTION_33_43(v70, v71);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_8_60();
    v170 = v31;
    v171 = *&v32;
    type metadata accessor for CGPoint(0);
    v72 = OUTLINED_FUNCTION_57_18();
    OUTLINED_FUNCTION_33_43(v72, v73);
    OUTLINED_FUNCTION_17_2();
    *(v10 + 14) = v7;
    OUTLINED_FUNCTION_30_7(&dword_1BBC58000, v74, v75, "[%{public}s][layout] focusCenter is %s");
    OUTLINED_FUNCTION_37_35();
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_27();
  }

  v76 = *(v2 + v166);
  v77 = objc_opt_self();
  v78 = v76;
  v79 = [v77 conversationKit];
  v80 = OUTLINED_FUNCTION_42_32();
  v81 = OUTLINED_FUNCTION_30_36(v80 & 0xFFFFFFFFFFFFLL | 0x455F000000000000, 0xED000058415F444ELL);
  v83 = v82;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v81, v83, v78);
  v84 = *(v2 + v167);
  v85 = [v77 conversationKit];
  v86 = OUTLINED_FUNCTION_30_36(0xD000000000000010, 0x80000001BC522F70);
  v88 = v87;

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v86, v88, v84);
  v89 = *(v2 + v62);
  if (v89)
  {
    v90 = v89;
    v91 = [v77 conversationKit];
    v92._countAndFlagsBits = OUTLINED_FUNCTION_42_32() & 0xFFFFFFFFFFFFLL | 0x465F000000000000;
    v92._object = 0xEF58415F5355434FLL;
    v93.value._countAndFlagsBits = 0x61737265766E6F43;
    v93.value._object = 0xEF74694B6E6F6974;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v95 = 0;
    v96 = NSLocalizedString(_:tableName:bundle:value:comment:)(v92, v93, v91, v94, *(&v163 - 1));

    outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v96._countAndFlagsBits, v96._object, v90);
  }

  if (v163)
  {
    v184.origin.x = MaxY;
    v184.origin.y = v169;
    v184.size.width = v168;
    v184.size.height = 50.0;
    v97 = CGRectGetMaxX(v184) + 9.0;
  }

  else
  {
    v97 = 29.0;
  }

  [v2 bounds];
  v98 = CGRectGetWidth(v185) + -136.0 - v97;
  if (v98 > 0.0)
  {
    v99 = v98;
  }

  else
  {
    v99 = 0.0;
  }

  v165 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel);
  v100 = [v165 font];
  if (!v100)
  {
    goto LABEL_66;
  }

  v101 = v100;
  [v100 lineHeight];
  v103 = v102;

  [v2 bounds];
  Height = CGRectGetHeight(v186);
  SystemApertureIncomingCallControlsView.maxSubtitleLabelSizeThatFits(_:)(v99, Height - v103);
  v106 = v105;
  v108 = v107;
  v109 = dbl_1BC4E9C90[v163 == 0];
  v110 = OUTLINED_FUNCTION_38_39();
  v111 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v111))
  {
    v112 = swift_slowAlloc();
    *&v113 = COERCE_DOUBLE(OUTLINED_FUNCTION_23());
    v170 = *&v113;
    *v112 = 136446978;
    v114 = OUTLINED_FUNCTION_11_107();
    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, &v170);

    *(v112 + 4) = v116;
    *(v112 + 12) = 1024;
    *(v112 + 14) = v106 <= v109;
    *(v112 + 18) = 2048;
    *(v112 + 20) = v106;
    *(v112 + 28) = 2048;
    *(v112 + 30) = v109;
    _os_log_impl(&dword_1BBC58000, v110, v111, "[%{public}s][layout] secondaryNextToSensor: %{BOOL}d, textWidth: %f, secondaryShortTextWidthThreshold: %f", v112, 0x26u);
    __swift_destroy_boxed_opaque_existential_1(v113);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v117 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 2) = v2;
  *(v10 + 3) = v106;
  *(v10 + 4) = v108;
  v118 = swift_allocObject();
  *(v118 + 16) = partial apply for closure #1 in SystemApertureIncomingCallControlsView.layoutSubviews();
  *(v118 + 24) = v10;
  v174 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v175 = v118;
  v170 = MEMORY[0x1E69E9820];
  v171 = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v172 = v119;
  v173 = &block_descriptor_119;
  v120 = _Block_copy(&v170);
  v6 = v2;

  [v117 performWithoutAnimation_];
  _Block_release(v120);
  LOBYTE(v117) = swift_isEscapingClosureAtFileLocation();

  if (v117)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v164 = v109;
  if (v106 > v109)
  {
    v8 = 38.0 - (*((*MEMORY[0x1E69E7D40] & **&v6[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel]) + 0x98))(v121);
  }

  else
  {
    [v6 bounds];
    v8 = (CGRectGetHeight(v187) - v108 - v103) * 0.5;
  }

  v122 = OUTLINED_FUNCTION_38_39();
  v7 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v123 = OUTLINED_FUNCTION_30_1();
    v170 = COERCE_DOUBLE(swift_slowAlloc());
    *v123 = 136446466;
    v124 = OUTLINED_FUNCTION_11_107();
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v170);

    *(v123 + 4) = v126;
    *(v123 + 12) = 2080;
    OUTLINED_FUNCTION_7_109();
    v127 = CGRect.description.getter();
    v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, &v170);

    *(v123 + 14) = v129;
    _os_log_impl(&dword_1BBC58000, v122, v7, "[%{public}s][layout] secondaryFrame: %s", v123, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v130 = *&v6[OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel];
  v131 = OUTLINED_FUNCTION_7_109();
  [v132 v133];
  v188.origin.x = OUTLINED_FUNCTION_7_109();
  CGRectGetMaxY(v188);
  v134 = OUTLINED_FUNCTION_44_20();
  [v135 v136];
  v189.origin.x = MaxY;
  v189.origin.y = v169;
  v189.size.width = v168;
  v189.size.height = 50.0;
  MaxY = CGRectGetMaxY(v189);
  v190.origin.x = OUTLINED_FUNCTION_44_20();
  v137 = CGRectGetMaxY(v190);
  MinY = 17.0;
  if (v106 <= v164)
  {
    v191.origin.x = OUTLINED_FUNCTION_7_109();
    MinY = CGRectGetMinY(v191);
  }

  v139 = OUTLINED_FUNCTION_38_39();
  v140 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v140))
  {
    v8 = MaxY + 14.0;
    MaxY = v137 + MinY;
    v7 = swift_slowAlloc();
    *&v141 = COERCE_DOUBLE(OUTLINED_FUNCTION_23());
    v170 = *&v141;
    *v7 = 136446978;
    v142 = OUTLINED_FUNCTION_11_107();
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v170);

    *(v7 + 4) = v144;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v8;
    *(v7 + 22) = 2048;
    *(v7 + 24) = v137 + MinY;
    *(v7 + 32) = 2048;
    *(v7 + 34) = 0x4055000000000000;
    _os_log_impl(&dword_1BBC58000, v139, v140, "[%{public}s][layout] leadingViewMaxY: %f, textMaxY: %f, %f", v7, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v141);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  if ([v6 effectiveUserInterfaceLayoutDirection] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6UIViewCSgGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BC4BE790;
    v145 = *&v162[v2];
    *(inited + 32) = v145;
    *(inited + 40) = v130;
    *(inited + 48) = v165;
    v146 = *(v2 + v166);
    *(inited + 56) = v146;
    v147 = *(v2 + v167);
    *(inited + 64) = v147;
    v2 = MEMORY[0x1E69E7CC0];
    v170 = MEMORY[0x1E69E7CC0];
    v148 = v145;
    v149 = v130;
    v150 = v165;
    v151 = v146;
    v152 = v147;
    for (i = 0; i != 5; ++i)
    {
      if (i > 4)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v154 = *(inited + 8 * i + 32);
      if (v154)
      {
        v155 = v154;
        MEMORY[0x1BFB20CC0]();
        if (*((*&v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = *&v170;
      }
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v156 = specialized Array.count.getter(v2);
    inited = 0;
    v7 = 0x1FB3E9000;
    while (v156 != inited)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v157 = MEMORY[0x1BFB22010](inited, v2);
      }

      else
      {
        if (inited >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v157 = *(v2 + 8 * inited + 32);
      }

      v158 = v157;
      if (__OFADD__(inited, 1))
      {
        goto LABEL_62;
      }

      [v6 bounds];
      Width = CGRectGetWidth(v192);
      OUTLINED_FUNCTION_54_20();
      v161 = Width - v160;
      OUTLINED_FUNCTION_54_20();
      v8 = v161 - CGRectGetMinX(v193);
      OUTLINED_FUNCTION_54_20();
      MaxY = CGRectGetMinY(v194);
      OUTLINED_FUNCTION_54_20();
      [v158 setFrame_];

      ++inited;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_35_3();
}

id closure #1 in SystemApertureIncomingCallControlsView.layoutSubviews()(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  [v3 setFrame_];
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

CGSize __swiftcall SystemApertureIncomingCallControlsView.sizeThatFits(_:)(CGSize a1)
{
  OUTLINED_FUNCTION_36_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  swift_getObjectType();
  v69 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  if (v4 <= 2.22507386e-308)
  {
    v4 = 1.79769313e308;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, &static Logger.conversationControls);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v13))
  {
    v14 = OUTLINED_FUNCTION_30_1();
    v75 = COERCE_DOUBLE(swift_slowAlloc());
    *v14 = 136446466;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v75);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    *&v70 = v6;
    *(&v70 + 1) = v4;
    type metadata accessor for CGSize(0);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v75);

    *(v14 + 14) = v20;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v21, v22, "[%{public}s][sizing] sizingThatFits %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_18_0(v24))
  {
    v25 = OUTLINED_FUNCTION_30_1();
    v75 = COERCE_DOUBLE(swift_slowAlloc());
    *v25 = 136446466;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v75);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v70 = xmmword_1BC4BB460;
    type metadata accessor for CGSize(0);
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v75);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_16_16(&dword_1BBC58000, v32, v33, "[%{public}s][sizing] actionsSize is  %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_26();
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))();
  v34 = v10 + *(v69 + 68);
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 16);
  outlined copy of LeadingViewType?(*v34, v36, *(v34 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v10, v38);
  if (v37 == 255)
  {
    v39 = 75.0;
  }

  else
  {
    outlined consume of LeadingViewType?(v35, v36, v37);
    if (v37)
    {
      v39 = 82.0;
    }

    else
    {
      v39 = 75.0;
    }
  }

  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_primaryLabel) sizeThatFits_];
  v41 = v40;
  v43 = v42;
  [*(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel) sizeThatFits_];
  v45 = v44;
  v47 = v46;
  v75 = 0.0;
  v48 = objc_opt_self();
  v49 = swift_allocObject();
  *(v49 + 16) = v2;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = &v75;
  v50 = swift_allocObject();
  *(v50 + 16) = partial apply for closure #1 in SystemApertureIncomingCallControlsView.sizeThatFits(_:);
  *(v50 + 24) = v49;
  v73 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v74 = v50;
  *&v70 = MEMORY[0x1E69E9820];
  *(&v70 + 1) = 1107296256;
  OUTLINED_FUNCTION_11_0();
  v71 = v51;
  v72 = &block_descriptor_13_4;
  v52 = _Block_copy(&v70);
  v53 = v2;

  [v48 performWithoutAnimation_];
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
  }

  else
  {
    if (v41 > v45)
    {
      v56 = v41;
    }

    else
    {
      v56 = v45;
    }

    v57 = v43 + v47 - v75 + 38.0 + 17.0;
    if (v56 <= 156.0)
    {
      v56 = 156.0;
    }

    v58 = v39 + v56 + 136.0;
    specialized max<A>(_:_:_:_:)(MEMORY[0x1E69E7CC0], 78.0, v57, 84.0);
    v60 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_18_0(v62))
    {
      v63 = OUTLINED_FUNCTION_23();
      v64 = OUTLINED_FUNCTION_23();
      *&v70 = v64;
      *v63 = 136446722;
      v65 = _typeName(_:qualified:)();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v70);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2048;
      *(v63 + 14) = v58;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v60;
      _os_log_impl(&dword_1BBC58000, v61, v62, "[%{public}s][sizing] measuredWidth: %f, measuredHeight: %f", v63, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_35_3();
  }

  result.height = v55;
  result.width = v54;
  return result;
}

id closure #1 in SystemApertureIncomingCallControlsView.sizeThatFits(_:)(uint64_t a1, double *a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 setFrame_];
  [v7 setNeedsLayout];
  v16 = [v7 layoutIfNeeded];
  *a2 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x98))(v16);

  return [v7 setFrame_];
}

CGSize __swiftcall SystemApertureIncomingCallControlsView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(CGSize _, __C::UILayoutPriority withHorizontalFittingPriority, __C::UILayoutPriority verticalFittingPriority)
{
  [v3 sizeThatFits_];
  result.height = v5;
  result.width = v4;
  return result;
}

void SystemApertureIncomingCallControlsView.updateLeadingView(fromPreviousRecipe:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v119 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v21 = type metadata accessor for Logger();
  v126 = __swift_project_value_buffer(v21, &static Logger.conversationControls);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = OUTLINED_FUNCTION_18_0(v23);
  v127 = v5;
  v125 = ObjectType;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_42();
    v124 = v12;
    v26 = v3;
    v27 = v25;
    v28 = v9;
    v29 = OUTLINED_FUNCTION_23();
    v128 = v29;
    *v27 = 136446210;
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v128);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1BBC58000, v22, v23, "[%{public}s] updateLeadingView", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v9 = v28;
    v5 = v127;
    OUTLINED_FUNCTION_27();
    v3 = v26;
    v12 = v124;
    OUTLINED_FUNCTION_27();
  }

  v33 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView;
  v34 = *(v1 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  v35 = MEMORY[0x1E69E7D40];
  if (v34)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v3, v20, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v5);
    v124 = v34;
    if (EnumTagSinglePayload == 1)
    {
      v37 = v34;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v20, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    else
    {
      v39 = &v20[*(v5 + 68)];
      v41 = *v39;
      v40 = *(v39 + 1);
      v42 = v39[16];
      v43 = v34;
      v120 = v41;
      v121 = v40;
      v44 = v40;
      v35 = MEMORY[0x1E69E7D40];
      outlined copy of LeadingViewType?(v41, v44, v42);
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v20, v45);
      if (v42 != 255)
      {
        v119 = v43;
        if (v42)
        {
          LODWORD(v123) = v42;
          OUTLINED_FUNCTION_43_31();
          v47 = v122;
          (*(v46 + 440))();
          v48 = v47 + *(v5 + 68);
          v50 = *v48;
          v49 = *(v48 + 8);
          v51 = *(v48 + 16);
          outlined copy of LeadingViewType?(*v48, v49, *(v48 + 16));
          OUTLINED_FUNCTION_1_11();
          outlined destroy of ConversationControlsAction(v47, v52);
          if (v51 == 255)
          {
            v72 = v120;
          }

          else
          {
            v53 = v120;
            if (v51)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
              if (static NSObject.== infix(_:_:)())
              {
                v54 = Logger.logObject.getter();
                static os_log_type_t.default.getter();
                OUTLINED_FUNCTION_45_2();
                if (os_log_type_enabled(v54, v55))
                {
                  v56 = OUTLINED_FUNCTION_42();
                  v57 = OUTLINED_FUNCTION_23();
                  OUTLINED_FUNCTION_41_28(v57);
                  v58 = OUTLINED_FUNCTION_24_58(4.8751e-34);
                  v60 = v49;
                  v61 = OUTLINED_FUNCTION_56_20(v58, v59);

                  *(v56 + 4) = v61;
                  OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v62, v63, "[%{public}s] skipping updateLeadingView: recipe leadingViewType (brandedCallIcon) image is unchanged");
                  __swift_destroy_boxed_opaque_existential_1(v35);
                  OUTLINED_FUNCTION_18();
                  OUTLINED_FUNCTION_27();

                  v64 = v50;
                  v65 = v60;
                }

                else
                {

                  v64 = v50;
                  v65 = v49;
                }

                outlined consume of LeadingViewType?(v64, v65, v51);
                v116 = v53;
                v117 = v121;
                v118 = v123;
                goto LABEL_41;
              }
            }

            outlined consume of LeadingViewType?(v50, v49, v51);
            v72 = v53;
          }

          v73 = v121;
          v74 = v123;
          goto LABEL_31;
        }

        v85 = v121;
        outlined consume of LeadingViewType?(v120, v121, v42);
        v86 = v123;
        (*((*v35 & *v1) + 0x1B8))();
        v87 = v86 + *(v5 + 68);
        v89 = *v87;
        v88 = *(v87 + 8);
        v90 = *(v87 + 16);
        outlined copy of LeadingViewType?(*v87, v88, *(v87 + 16));
        OUTLINED_FUNCTION_1_11();
        outlined destroy of ConversationControlsAction(v86, v91);
        if (v90 == 255)
        {
          goto LABEL_32;
        }

        outlined consume of LeadingViewType?(v89, v88, v90);
        if ((v90 & 1) != 0 || v85 != v88)
        {
          goto LABEL_32;
        }

        v92 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_45_2();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = OUTLINED_FUNCTION_42();
          v95 = OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_41_28(v95);
          v96 = OUTLINED_FUNCTION_24_58(4.8751e-34);
          v98 = OUTLINED_FUNCTION_56_20(v96, v97);

          *(v94 + 4) = v98;
          OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v99, v100, "[%{public}s] skipping updateLeadingView: recipe leadingViewType (contactAvatar) hash is unchanged");
          __swift_destroy_boxed_opaque_existential_1(v35);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_27();
        }

        v84 = v119;
LABEL_21:

        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_43_31();
    (*(v66 + 440))();
    v67 = &v12[*(v5 + 68)];
    v68 = *v67;
    v69 = *(v67 + 1);
    v70 = v67[16];
    outlined copy of LeadingViewType?(*v67, v69, v67[16]);
    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v12, v71);
    if (v70 != 255)
    {
      v72 = v68;
      v73 = v69;
      v74 = v70;
LABEL_31:
      outlined consume of LeadingViewType?(v72, v73, v74);
LABEL_32:
      v101 = v124;
      [v124 removeFromSuperview];

      v38 = *(v1 + v33);
      v5 = v127;
      goto LABEL_33;
    }

    v75 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_45_2();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = OUTLINED_FUNCTION_42();
      v78 = OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_41_28(v78);
      v79 = OUTLINED_FUNCTION_24_58(4.8751e-34);
      v81 = OUTLINED_FUNCTION_56_20(v79, v80);

      *(v77 + 4) = v81;
      OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v82, v83, "[%{public}s] skipping updateLeadingView: recipe leadingViewType is still nil");
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_27();
    }

    v84 = v124;
    goto LABEL_21;
  }

  v38 = 0;
LABEL_33:
  *(v1 + v33) = 0;

  (*((*v35 & *v1) + 0x1B8))();
  v102 = v9 + *(v5 + 68);
  v104 = *v102;
  v103 = *(v102 + 8);
  v105 = *(v102 + 16);
  outlined copy of LeadingViewType?(*v102, v103, *(v102 + 16));
  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v9, v106);
  if (v105 != 255)
  {
    if (v105)
    {
      SystemApertureIncomingCallControlsView.updateBrandedImageIcon(using:)();
    }

    else
    {
      SystemApertureIncomingCallControlsView.updateAvatar(using:)();
    }

    v116 = v104;
    v117 = v103;
    v118 = v105;
LABEL_41:
    outlined consume of LeadingViewType?(v116, v117, v118);
    goto LABEL_42;
  }

  v107 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_45_2();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_42();
    v110 = OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_41_28(v110);
    v111 = OUTLINED_FUNCTION_24_58(4.8751e-34);
    v113 = OUTLINED_FUNCTION_56_20(v111, v112);

    *(v109 + 4) = v113;
    OUTLINED_FUNCTION_13_84(&dword_1BBC58000, v114, v115, "[%{public}s] omitting leading view");
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_27();
  }

LABEL_42:
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.updateAvatar(using:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  OUTLINED_FUNCTION_288();
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v20 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v20);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v13, v14, "[%{public}s] showing avatar");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v15 = *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = v2;
  v16 = v2;

  v17 = [v16 layer];
  v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B8);
  OUTLINED_FUNCTION_33_4();
  v18();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v1, v19);
  [v17 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v18();
  OUTLINED_FUNCTION_37_6();
  [v16 setUserInteractionEnabled_];
  [v3 addSubview_];
  [v3 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.updateBrandedImageIcon(using:)()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  OUTLINED_FUNCTION_288();
  swift_getObjectType();
  type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_7();
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, &static Logger.conversationControls);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = OUTLINED_FUNCTION_42();
    v9 = OUTLINED_FUNCTION_23();
    v21 = v9;
    *v8 = 136446210;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_17_11(&dword_1BBC58000, v13, v14, "[%{public}s] updateBrandedImageIcon");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v16 = *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView);
  *(v3 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_leadingView) = v15;
  v17 = v15;

  v18 = [v17 layer];
  v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1B8);
  OUTLINED_FUNCTION_33_4();
  v19();
  OUTLINED_FUNCTION_7_11();
  outlined destroy of ConversationControlsAction(v1, v20);
  [v18 setAllowsHitTesting_];

  OUTLINED_FUNCTION_33_4();
  v19();
  OUTLINED_FUNCTION_37_6();
  [v17 setUserInteractionEnabled_];
  [v3 addSubview_];
  [v3 setNeedsLayout];

  OUTLINED_FUNCTION_30_0();
}

id SystemApertureIncomingCallControlsView.updateSecondaryBadge()()
{
  v2 = v0;
  v3 = type metadata accessor for ConversationControlsRecipe();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_7();
  v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
  v7 = *(v1 + *(v4 + 48));
  if (v7)
  {
    v8 = v7;
  }

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v1, v9);
  (*((*v6 & *v5) + 0x68))(v7);
  return [v2 setNeedsLayout];
}

void SystemApertureIncomingCallControlsView.updateSecondaryLabel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v24 = type metadata accessor for ConversationControlsRecipe();
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17();
  v28 = v26 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &a9 - v32;
  v34 = OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController;
  v35 = *(v20 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_alternatingLabelController);
  if (v35)
  {
    v36 = *(*v35 + 264);

    v36(v37);
  }

  v38 = MEMORY[0x1E69E7D40];
  v39 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x1B8);
  (v39)(v30, v31);
  v40 = *(v33 + 11);

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v33, v41);
  v42 = specialized Array.count.getter(v40);

  v43 = *(v23 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  if (v42 < 2)
  {
    OUTLINED_FUNCTION_33_4();
    v39();
    v52 = *(v28 + 88);

    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v28, v53);
    if (specialized Array.count.getter(v52))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v52 & 0xC000000000000001) == 0, v52);
      if ((v52 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1BFB22010](0, v52);
      }

      else
      {
        v54 = *(v52 + 32);
      }

      v55 = v54;
    }

    else
    {

      v55 = 0;
    }

    (*((*v38 & *v43) + 0x80))(v55);
  }

  else
  {
    v43;
    v39();

    OUTLINED_FUNCTION_1_11();
    outlined destroy of ConversationControlsAction(v33, v44);
    type metadata accessor for AlternatingLabelController();
    swift_allocObject();
    OUTLINED_FUNCTION_3_0();
    v51 = specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(v45, v46, v50, v47, v48, v49);
    (*(*v51 + 256))();
    *(v23 + v34) = v51;
  }

  [v23 setNeedsLayout];
  OUTLINED_FUNCTION_30_0();
}

void SystemApertureIncomingCallControlsView.maxSubtitleLabelSizeThatFits(_:)(double a1, double a2)
{
  v5 = type metadata accessor for ConversationControlsRecipe();
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit38SystemApertureIncomingCallControlsView_secondaryLabel);
  v14 = [v13 sizeThatFits_];
  v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8);
  (v15)(v14);
  v16 = *(v12 + 88);

  OUTLINED_FUNCTION_1_11();
  outlined destroy of ConversationControlsAction(v12, v17);
  specialized Array.count.getter(v16);
  OUTLINED_FUNCTION_288();

  if (v12 >= 2)
  {
    OUTLINED_FUNCTION_15_63();
    v19 = (*(v18 + 120))();
    v15();
    v50 = *(v9 + 88);
    v20 = specialized Array.count.getter(v50);
    if (v20)
    {
      v21 = v20;
      v51 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v48 = v19;
      v49 = v9;
      v22 = 0;
      OUTLINED_FUNCTION_15_63();
      v24 = *(v23 + 128);
      v25 = v51;
      v26 = v50 & 0xC000000000000001;
      do
      {
        if (v26)
        {
          v27 = MEMORY[0x1BFB22010](v22, v50);
        }

        else
        {
          v27 = *(v50 + 8 * v22 + 32);
        }

        v28 = v27;
        v29 = v27;
        v24(v28);
        [v13 sizeThatFits_];
        v31 = v30;
        v33 = v32;

        v51 = v25;
        v34 = *(v25 + 16);
        if (v34 >= *(v25 + 24) >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v25 = v51;
        }

        ++v22;
        *(v25 + 16) = v34 + 1;
        v35 = v25 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v33;
      }

      while (v21 != v22);
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v49, v36);
      v19 = v48;
    }

    else
    {
      OUTLINED_FUNCTION_1_11();
      outlined destroy of ConversationControlsAction(v9, v37);
      v25 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_15_63();
    v39 = *(v38 + 128);
    v40 = v19;
    v39(v19);
    v41 = *(v25 + 16);
    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 48;
        v44 = v42;
        v45 = *(v25 + 32);
        do
        {
          if (v45 < *(v25 + v43))
          {
            v45 = *(v25 + v43);
          }

          v43 += 16;
          --v44;
        }

        while (v44);
        v46 = 56;
        v47 = *(v25 + 40);
        do
        {
          if (v47 < *(v25 + v46))
          {
            v47 = *(v25 + v46);
          }

          v46 += 16;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
    }
  }
}

id SystemApertureIncomingCallControlsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SystemApertureIncomingCallControlsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemApertureIncomingCallControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureIncomingCallControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t (*protocol witness for ControlsView.recipe.modify in conformance SystemApertureIncomingCallControlsView(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

uint64_t specialized AlternatingLabelController.init(label:timeInterval:alternatingBetween:observer:)(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 16) = 0;
  *(a6 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + 56) = 0;
  *(a6 + 72) = 0;
  swift_unknownObjectWeakInit();
  v11 = specialized Array.count.getter(a2);
  if (v11)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1BFB22010](0, a2);
    }

    else
    {
      v11 = *(a2 + 32);
    }
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))(v11);
  *(a6 + 32) = &protocol witness table for BadgedLabel;
  swift_unknownObjectWeakAssign();

  *(a6 + 48) = a2;
  *(a6 + 40) = a3;
  *(a6 + 72) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a6;
}

uint64_t type metadata completion function for SystemApertureIncomingCallControlsView()
{
  result = type metadata accessor for ConversationControlsRecipe();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void specialized Collection.firstIndex(where:)(uint64_t a1, void *a2)
{
  v9 = specialized Array.count.getter(a1);
  v4 = 0;
  while (1)
  {
    if (v9 == v4)
    {
      goto LABEL_14;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x1BFB22010](v4, a1);
LABEL_6:
    v6 = v5;
    type metadata accessor for NSObject();
    if (static NSObject.== infix(_:_:)())
    {

      a2 = v6;
LABEL_14:

      return;
    }

    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

{
  v4 = specialized Array.count.getter(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB22010](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v7 = v6;
    type metadata accessor for NSObject();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

{
  v3 = specialized Array.count.getter(a1);
  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1BFB22010](v4, a1);
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v5 = *(a1 + 8 * v4 + 32);
LABEL_6:
    v6 = v5;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v7 = ParticipantView.monogramView.getter();
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

{
  v4 = specialized Array.count.getter(a1);
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB22010](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 8 * v5 + 32);
LABEL_6:
    v7 = v6;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void SharedContentView.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  SharedContentView.isPaused.didset();
}

Swift::Int SharedContentView.configure(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v9 = v8 - v7;
  v10 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelOSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - v18;
  Hasher.init(_seed:)();
  SharedContentViewModel.hash(into:)(__dst);
  result = Hasher._finalize()();
  if ((v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash] != result)
  {
    v60 = &v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash];
    v61 = result;
    v65 = ObjectType;
    v66 = v9;
    v21 = v5;
    v22 = a1;
    v67 = v13;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v59 = static OS_os_log.conversationKit;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BB980;
    v24 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_loggingIdentifier;
    v25 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_7_0();
    v27 = *(v26 + 16);
    v62 = v26 + 16;
    v63 = v27;
    v27(v19, &v2[v24], v25);
    v64 = v25;
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v25);
    specialized >> prefix<A>(_:)(v19, v28, v29, v30, v31, v32, v33, v34, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    v36 = v35;
    v38 = v37;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v19, &_s10Foundation4UUIDVSgMd);
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v39 = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 64) = v39;
    *(v23 + 32) = v36;
    *(v23 + 40) = v38;
    outlined init with copy of SharedContentViewModel(v22, v16);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v21);
    specialized >> prefix<A>(_:)();
    v41 = v40;
    v43 = v42;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s15ConversationKit22SharedContentViewModelOSgMd);
    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = v39;
    *(v23 + 72) = v41;
    *(v23 + 80) = v43;
    __dst[0] = v2;
    v44 = v2;
    v45 = String.init<A>(reflecting:)();
    *(v23 + 136) = MEMORY[0x1E69E6158];
    *(v23 + 144) = v39;
    *(v23 + 112) = v45;
    *(v23 + 120) = v46;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v47 = v60;
    *v60 = v61;
    *(v47 + 8) = 0;
    SharedContentView.configureViewVisibility(for:)(v22);
    v48 = v66;
    outlined init with copy of SharedContentViewModel(v22, v66);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
      v50 = *(v48 + v49[12]);
      v51 = v49[16];
      v52 = v49[20];
      v53 = v67;
      outlined init with take of SharedContentViewModel.ParticipantDetails(v48, v67);
      memcpy(__dst, (v48 + v51), 0xA8uLL);
      memcpy(v70, (v48 + v52), 0x69uLL);
    }

    else
    {
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
      v50 = *(v48 + *(v54 + 48));
      v55 = *(v54 + 64);
      v53 = v67;
      outlined init with take of SharedContentViewModel.ParticipantDetails(v48, v67);
      memcpy(__dst, (v48 + v55), 0xA8uLL);
      memset(v70, 0, 104);
      v70[104] = -1;
    }

    v56 = v64;
    v63(v19, v53, v64);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v56);
    v57 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
    swift_beginAccess();
    outlined assign with take of UUID?(v19, &v44[v57]);
    swift_endAccess();
    *&v44[OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation] = v50;
    SharedContentView.updateVideoViewTransform()();
    outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v68, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
    if (v68[3] == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
    }

    else
    {
      memcpy(v69, v68, sizeof(v69));
      SharedContentVideoView.configure(with:)(v69);
      outlined destroy of SharedContentVideoView.ViewModel(v69);
    }

    outlined init with copy of (CGFloat, AutoplayCandidate)(v70, v68, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd);
    if (LOBYTE(v68[13]) == 255)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
      outlined destroy of SharedContentViewModel.ParticipantDetails(v53);
      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v68, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd);
    }

    else
    {
      memcpy(v69, v68, 0x69uLL);
      ParticipantVideoOverlayView.configure(with:)(v69);
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v69);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v70, &_s15ConversationKit27ParticipantVideoOverlayViewC0F5ModelOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
      return outlined destroy of SharedContentViewModel.ParticipantDetails(v53);
    }
  }

  return result;
}

id SharedContentView.customCornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return SharedContentView.customCornerRadius.didset();
}

void SharedContentView.systemRootLayerTransform.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  swift_beginAccess();
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  v3[2] = a1[2];
  SharedContentView.updateVideoViewTransform()();
}

uint64_t SharedContentView.participantIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  OUTLINED_FUNCTION_4_5();
  return outlined init with copy of (CGFloat, AutoplayCandidate)(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t key path getter for SharedContentView.delegate : SharedContentView@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for SharedContentView.delegate : SharedContentView(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SharedContentView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SharedContentView.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate;
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

double SharedContentView.customCornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

double key path getter for SharedContentView.customCornerRadius : SharedContentView@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

id SharedContentView.customCornerRadius.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
  OUTLINED_FUNCTION_4_0();
  [v0 _setContinuousCornerRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v3 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v4;
  v5 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v14 = v3;
    v15 = v4;
    v9 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v6 = *(inited + 32);
    v7 = v3;
    v8 = v4;
    v9 = v6;
  }

  v10 = v9;
  [v9 _setContinuousCornerRadius_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v5 == 0, inited);
  if (v5)
  {
    v11 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v11 = *(inited + 40);
  }

  v12 = v11;

  [v12 _setContinuousCornerRadius_];

  result = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
  if (result)
  {
    return [result _setContinuousCornerRadius_];
  }

  return result;
}

uint64_t SharedContentView.customCornerRadius.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.isPaused.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t key path getter for SharedContentView.isPaused : SharedContentView@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void SharedContentView.isPaused.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused;
  OUTLINED_FUNCTION_4_0();
  if (v0[v1] == 1)
  {
    v2 = [*&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView] snapshotViewAfterScreenUpdates_];
    v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot;
    v4 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
    *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot] = v2;

    v5 = *&v0[v3];
    if (v5)
    {
      [v5 setClipsToBounds_];
      v6 = *&v0[v3];
      if (v6)
      {
        v7 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius;
        OUTLINED_FUNCTION_4_5();
        [v6 _setContinuousCornerRadius_];
        if (*&v0[v3])
        {
          [v0 addSubview_];
        }
      }
    }

    [v0 setNeedsLayout];
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v19 = partial apply for closure #1 in SharedContentView.isPaused.didset;
    v20 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed () -> ();
    v18 = &block_descriptor_120;
    v10 = _Block_copy(&aBlock);
    v11 = v0;

    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v19 = partial apply for closure #2 in SharedContentView.isPaused.didset;
    v20 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v18 = &block_descriptor_14_2;
    v13 = _Block_copy(&aBlock);
    v14 = v11;

    [v8 animateWithDuration:v10 animations:v13 completion:0.3];
    _Block_release(v13);
    _Block_release(v10);
  }
}

id closure #1 in SharedContentView.isPaused.didset(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void closure #2 in SharedContentView.isPaused.didset(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot;
  v4 = *(a2 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot);
  if (v4)
  {
    [v4 removeFromSuperview];
    v4 = *(a2 + v3);
  }

  *(a2 + v3) = 0;
}

uint64_t SharedContentView.isPaused.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.isScreenSharing.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing;
  OUTLINED_FUNCTION_4_5();
  return *(v0 + v1);
}

uint64_t SharedContentView.isScreenSharing.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing;
  result = OUTLINED_FUNCTION_6_0();
  *(v1 + v3) = a1;
  return result;
}

void SharedContentView.updateVideoViewTransform()()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  OUTLINED_FUNCTION_4_0();
  v2 = v1[1];
  *&v25.a = *v1;
  *&v25.c = v2;
  *&v25.tx = v1[2];
  CGAffineTransformInvert(&v24, &v25);
  v18 = *&v24.a;
  v19 = *&v24.c;
  v25 = v24;
  tx = v24.tx;
  ty = v24.ty;
  if (static Platform.current.getter())
  {
    CGAffineTransform.rotatingTranslationComponent(for:)(*(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation), &v24);
    v18 = *&v24.a;
    v19 = *&v24.c;
    tx = v24.tx;
    ty = v24.ty;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v6 = *(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView);
  *(inited + 32) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView);
  *(inited + 40) = v7;
  v8 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v16 = v6;
    v17 = v7;
    v12 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v9 = *(inited + 32);
    v10 = v6;
    v11 = v7;
    v12 = v9;
  }

  v13 = v12;
  v20 = v18;
  v21 = v19;
  v22 = tx;
  v23 = ty;
  [v12 setTransform_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v8 == 0, inited);
  if (v8)
  {
    v14 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v14 = *(inited + 40);
  }

  v15 = v14;

  v20 = v18;
  v21 = v19;
  v22 = tx;
  v23 = ty;
  [v15 setTransform_];
}

__n128 SharedContentView.systemRootLayerTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform;
  OUTLINED_FUNCTION_4_0();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 key path getter for SharedContentView.systemRootLayerTransform : SharedContentView@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t SharedContentView.systemRootLayerTransform.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SharedContentView.customCornerRadius.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id SharedContentView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_167();

  return [v2 v3];
}

char *SharedContentView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_20_2();
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for SharedContentVideoView()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView;
  v5 = objc_allocWithZone(type metadata accessor for ParticipantVideoOverlayView());
  *(v1 + v4) = ParticipantVideoOverlayView.init(localParticipant:)(0);
  v6 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  UUID.init()();
  v7 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  v8 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation) = 1;
  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  v10 = OUTLINED_FUNCTION_3_167();
  v13 = objc_msgSendSuper2(v11, v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v15 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  v16 = *&v13[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v16;
  v17 = *&v13[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v17;
  v18 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v37 = v13;
    v38 = v16;
    v39 = v17;
    v23 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v19 = *(inited + 32);
    v20 = v13;
    v21 = v16;
    v22 = v17;
    v23 = v19;
  }

  v24 = v23;
  [v23 setHidden_];
  [v24 setClipsToBounds_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v18 == 0, inited);
  if (v18)
  {
    v25 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v25 = *(inited + 40);
  }

  v26 = v25;

  [v26 setHidden_];
  [v26 setClipsToBounds_];

  v27 = v13;
  [v27 setClipsToBounds_];
  v28 = objc_opt_self();
  v29 = [v28 clearColor];
  [v27 setBackgroundColor_];

  v30 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  v31 = one-time initialization token for shared;
  v32 = *&v27[OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView];
  if (v31 != -1)
  {
    swift_once();
  }

  if ((*(*static Defaults.shared + 336))())
  {
    if (one-time initialization token for background != -1)
    {
      swift_once();
    }

    v33 = static Colors.ParticipantViews.background;
  }

  else
  {
    v33 = [v28 clearColor];
  }

  v34 = v33;
  [v32 setBackgroundColor_];

  [v27 addSubview_];
  [*&v27[v30] addSubview_];
  v35 = [v27 layer];
  [v35 setShadowPathIsBounds_];

  return v27;
}

id SharedContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SharedContentView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for SharedContentVideoView()) init];
  v4 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView;
  v5 = objc_allocWithZone(type metadata accessor for ParticipantVideoOverlayView());
  *(v1 + v4) = ParticipantVideoOverlayView.init(localParticipant:)(0);
  v6 = v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_mostRecentViewModelHash;
  *v6 = 0;
  *(v6 + 8) = 1;
  UUID.init()();
  v7 = OBJC_IVAR____TtC15ConversationKit17SharedContentView_participantIdentifier;
  v8 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_customCornerRadius) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isPaused) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_isScreenSharing) = 1;
  *(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_deviceOrientation) = 1;
  v9 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall SharedContentView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  SharedContentView._layout()();
}

void SharedContentView._layout()()
{
  [v0 bounds];
  if (!CGRectIsInfinite(v29))
  {
    [v0 bounds];
    if (!CGRectIsEmpty(v30))
    {
      [v0 bounds];
      v2 = v1;
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BC4BC370;
      v6 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_contentView];
      *(inited + 32) = v6;
      v7 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
      *(inited + 40) = v7;
      v8 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
      *(inited + 48) = v8;
      v9 = inited & 0xC000000000000001;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
      if ((inited & 0xC000000000000001) != 0)
      {
        v26 = v6;
        v27 = v7;
        v28 = v8;
        v14 = MEMORY[0x1BFB22010](0, inited);
      }

      else
      {
        v10 = *(inited + 32);
        v11 = v6;
        v12 = v7;
        v13 = v8;
        v14 = v10;
      }

      v15 = v14;
      [v14 setBounds_];
      [v0 bounds];
      MidX = CGRectGetMidX(v31);
      [v0 bounds];
      [v15 setCenter_];

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v9 == 0, inited);
      if (v9)
      {
        v17 = MEMORY[0x1BFB22010](1, inited);
      }

      else
      {
        v17 = *(inited + 40);
      }

      v18 = v17;
      [v17 setBounds_];
      [v0 bounds];
      v19 = CGRectGetMidX(v33);
      [v0 bounds];
      [v18 setCenter_];

      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v9 == 0, inited);
      if (v9)
      {
        v20 = MEMORY[0x1BFB22010](2, inited);
      }

      else
      {
        v20 = *(inited + 48);
      }

      v21 = v20;

      [v21 setBounds_];
      [v0 bounds];
      v22 = CGRectGetMidX(v35);
      [v0 bounds];
      [v21 setCenter_];

      v23 = *&v0[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoViewSnapshot];
      if (v23)
      {
        v24 = v23;
        [v24 setBounds_];
        [v0 bounds];
        v25 = CGRectGetMidX(v37);
        [v0 bounds];
        [v24 setCenter_];
      }
    }
  }
}

id SharedContentView.convert(_:to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_20_2();
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_systemRootLayerTransform);
  OUTLINED_FUNCTION_4_0();
  v5 = v4[1];
  *&v13.a = *v4;
  *&v13.c = v5;
  *&v13.tx = v4[2];
  if (CGAffineTransformIsIdentity(&v13))
  {
    v6 = OUTLINED_FUNCTION_3_167();
    return objc_msgSendSuper2(v7, v8, a1, v6, v1, ObjectType);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_167();
    return [v11 v12];
  }
}

uint64_t SharedContentView.configureViewVisibility(for:)(uint64_t a1)
{
  v3 = type metadata accessor for SharedContentViewModel(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  v47 = xmmword_1BC4BA930;
  *(inited + 16) = xmmword_1BC4BA930;
  v7 = *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView];
  *(inited + 32) = v7;
  v8 = *&v1[OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoOverlayView];
  *(inited + 40) = v8;
  v48 = inited;
  outlined init with copy of SharedContentViewModel(a1, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
    v10 = *(v9 + 64);
    v11 = *(v9 + 80);
    v12 = v1;
    v13 = v7;
    v14 = v8;
    specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v48, v12);
    v16 = v15;
    v17 = v48;
    result = specialized Array.count.getter(v48);
    v19 = result - v16;
    if (result < v16)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v16 < 0)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v20 = result;
    result = specialized Array.count.getter(v17);
    if (result < v20)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = __OFSUB__(0, v19);
    v22 = -v19;
    if (v21)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v23 = specialized Array.count.getter(v17);
    v21 = __OFADD__(v23, v22);
    result = v23 + v22;
    if (v21)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
    v24 = v48;
    v25 = swift_allocObject();
    *(v25 + 16) = v47;
    *(v25 + 32) = v13;
    *(v25 + 40) = v14;
    v26 = v13;
    v27 = v14;
    outlined destroy of ParticipantVideoOverlayView.ViewModel(&v5[v11]);
LABEL_14:
    outlined destroy of SharedContentVideoView.ViewModel(&v5[v10]);
    outlined destroy of SharedContentViewModel.ParticipantDetails(v5);
    result = specialized Array.count.getter(v24);
    if (result)
    {
      v39 = result;
      if (result < 1)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      for (i = 0; i != v39; ++i)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1BFB22010](i, v24);
        }

        else
        {
          v41 = *(v24 + 8 * i + 32);
        }

        v42 = v41;
        [v41 setHidden_];
      }
    }

    result = specialized Array.count.getter(v25);
    if (!result)
    {
    }

    v43 = result;
    if (result >= 1)
    {
      for (j = 0; j != v43; ++j)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1BFB22010](j, v25);
        }

        else
        {
          v45 = *(v25 + 8 * j + 32);
        }

        v46 = v45;
        [v45 setHidden_];
      }
    }

    goto LABEL_30;
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd) + 64);
  v28 = v1;
  v29 = v7;
  v30 = v8;
  specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v48, v28);
  v32 = v31;
  v33 = v48;
  result = specialized Array.count.getter(v48);
  v34 = result - v32;
  if (result < v32)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v32 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v35 = result;
  result = specialized Array.count.getter(v33);
  if (result < v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = __OFSUB__(0, v34);
  v36 = -v34;
  if (v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v37 = specialized Array.count.getter(v33);
  v21 = __OFADD__(v37, v36);
  result = v37 + v36;
  if (!v21)
  {
    specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
    v24 = v48;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAC30;
    *(v25 + 32) = v29;
    v38 = v29;
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t SharedContentView.registerVideoLayers(with:)(uint64_t a1)
{
  type metadata accessor for SharedContentViewModel(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v6 = v5 - v4;
  if ([*(v1 + OBJC_IVAR____TtC15ConversationKit17SharedContentView_videoView) isHidden])
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)();
  }

  else
  {
    outlined init with copy of SharedContentViewModel(a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VAA0gk7OverlayE0CAJOtMd);
      v9 = *(v8 + 80);
      memcpy(v13, (v6 + *(v8 + 64)), sizeof(v13));
      outlined destroy of ParticipantVideoOverlayView.ViewModel(v6 + v9);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22SharedContentViewModelO18ParticipantDetailsV_So20CNKDeviceOrientationVAA0cd5VideoE0C0eF0VtMd);
      memcpy(v13, (v6 + *(v10 + 64)), sizeof(v13));
    }

    outlined destroy of SharedContentViewModel.ParticipantDetails(v6);
    memcpy(__dst, v13, sizeof(__dst));
    outlined init with copy of (CGFloat, AutoplayCandidate)(__dst, v11, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
    if (v11[3] == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      memcpy(v12, v11, sizeof(v12));
      SharedContentVideoView.registerVideoLayers(with:)(v12);
      outlined destroy of SharedContentVideoView.ViewModel(v12);
    }

    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22SharedContentVideoViewC0F5ModelVSgMd);
  }
}

id SharedContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined init with copy of SharedContentViewModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedContentViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharedContentViewModel.ParticipantDetails(uint64_t a1)
{
  v2 = type metadata accessor for SharedContentViewModel.ParticipantDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, void *a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter(v4);
LABEL_38:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject();
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1BFB22010](v8, v4);
            v15 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_45;
            }

            if (v9 >= v16)
            {
              goto LABEL_46;
            }

            v17 = *(v4 + 32 + 8 * v9);
            v14 = *(v4 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          v19 = v3;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v3 = v19;
          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v14;

          *v19 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_40;
  }

  if (v7)
  {
    specialized Array.count.getter(v4);
LABEL_40:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_40;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject();
      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        v13 = static NSObject.== infix(_:_:)();

        if ((v13 & 1) == 0)
        {
          if (v8 != v9)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1BFB22010](v8, v4);
              v14 = MEMORY[0x1BFB22010](v9, v4);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_46;
              }

              v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v15)
              {
                goto LABEL_47;
              }

              if (v9 >= v15)
              {
                goto LABEL_48;
              }

              v16 = *(v4 + 32 + 8 * v9);
              v25 = *(v4 + 32 + 8 * v8);
              v14 = v16;
            }

            v17 = v14;
            v18 = v3;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v19 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v20 = v4 & 0xFFFFFFFFFFFFFF8;
            v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v17;

            if ((v4 & 0x8000000000000000) != 0 || v19)
            {
              v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
              v20 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_39:
                __break(1u);
                goto LABEL_40;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v9 >= *(v20 + 16))
            {
              goto LABEL_45;
            }

            v3 = v18;
            v22 = v20 + 8 * v9;
            v23 = *(v22 + 32);
            *(v22 + 32) = v25;

            *v18 = v4;
          }

          v24 = __OFADD__(v8++, 1);
          if (v24)
          {
            goto LABEL_44;
          }
        }
      }

      v24 = __OFADD__(v9++, 1);
      if (v24)
      {
        goto LABEL_43;
      }
    }
  }

  __break(1u);
}

{
  v3 = a1;
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter(v4);
LABEL_38:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1BFB22010](v8, v4);
            v15 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v16)
            {
              goto LABEL_45;
            }

            if (v9 >= v16)
            {
              goto LABEL_46;
            }

            v17 = *(v4 + 32 + 8 * v9);
            v14 = *(v4 + 32 + 8 * v8);
            v15 = v17;
          }

          v18 = v15;
          v19 = v3;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v3 = v19;
          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v14;

          *v19 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

{
  v4 = *a1;
  v5 = a2;
  specialized Collection.firstIndex(where:)(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_38;
  }

  if (v7)
  {
    specialized Array.count.getter(v4);
LABEL_38:

    return;
  }

  v26 = a1;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v10 = v4 >> 62 ? __CocoaSet.count.getter() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 == v10)
      {
        goto LABEL_38;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](v9, v4);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          break;
        }

        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v11 = *(v4 + 8 * v9 + 32);
      }

      v12 = v11;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
      v13 = ParticipantView.monogramView.getter();
      v14 = static NSObject.== infix(_:_:)();

      if ((v14 & 1) == 0)
      {
        if (v8 != v9)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x1BFB22010](v8, v4);
            v16 = MEMORY[0x1BFB22010](v9, v4);
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_44;
            }

            v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v8 >= v17)
            {
              goto LABEL_45;
            }

            if (v9 >= v17)
            {
              goto LABEL_46;
            }

            v18 = *(v4 + 32 + 8 * v9);
            v15 = *(v4 + 32 + 8 * v8);
            v16 = v18;
          }

          v19 = v16;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v20 = (v4 >> 62) & 1;
          }

          else
          {
            LODWORD(v20) = 0;
          }

          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
          *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v19;

          if ((v4 & 0x8000000000000000) != 0 || v20)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
            v21 = v4 & 0xFFFFFFFFFFFFFF8;
            if ((v9 & 0x8000000000000000) != 0)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          else if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v9 >= *(v21 + 16))
          {
            goto LABEL_43;
          }

          v23 = v21 + 8 * v9;
          v24 = *(v23 + 32);
          *(v23 + 32) = v15;

          *v26 = v4;
        }

        v25 = __OFADD__(v8++, 1);
        if (v25)
        {
          goto LABEL_42;
        }
      }

      v25 = __OFADD__(v9++, 1);
      if (v25)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for SharedContentView()
{
  result = type metadata singleton initialization cache for SharedContentView;
  if (!type metadata singleton initialization cache for SharedContentView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SharedContentView()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t LeaveButtonViewModel.__allocating_init(service:)(__int128 *a1)
{
  v2 = swift_allocObject();
  LeaveButtonViewModel.init(service:)(a1);
  return v2;
}

uint64_t LeaveButtonViewModel.init(service:)(__int128 *a1)
{
  closure #1 in variable initialization expression of LeaveButtonViewModel.flexibleGlass();
  *(v1 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config) = 0;
  outlined init with take of TapInteractionHandler(a1, v1 + 16);
  return v1;
}

uint64_t LeaveButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config))
  {
    v5 = *(v0 + OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel____lazy_storage___config);
  }

  else
  {
    LeaveButtonViewModel.buttonStyle.getter(&v15 - v3);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
    {
      v6 = [objc_opt_self() conversationKit];
      v16._object = 0xE000000000000000;
      v7._object = 0x80000001BC502930;
      v7._countAndFlagsBits = 0xD00000000000001ALL;
      v8.value._countAndFlagsBits = 0x61737265766E6F43;
      v8.value._object = 0xEF74694B6E6F6974;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v16._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
    v10 = [objc_opt_self() conversationKit];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x455F524557415244;
    v11._object = 0xED000058415F444ELL;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v17);

    swift_allocObject();
    swift_weakInit();
    v5 = IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
    *(v1 + v4) = v5;
  }

  return v5;
}

uint64_t LeaveButtonViewModel.enabled(for:)(uint64_t a1)
{
  if (BYTE4(a1) > 0x1Fu)
  {
    v1 = 0;
    switch(BYTE4(a1) >> 5)
    {
      case 2:
      case 3:
      case 4:
        return v1 & 1;
      case 5:
        v2 = BYTE4(a1) == 160;
        goto LABEL_6;
      case 6:
        v2 = BYTE4(a1) == 192;
LABEL_6:
        v1 = v2;
        break;
      default:
        goto LABEL_2;
    }
  }

  else
  {
LABEL_2:
    v1 = BYTE4(a1) ^ 1;
  }

  return v1 & 1;
}

Swift::Void __swiftcall LeaveButtonViewModel.didTap()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 176))(v1, v2);
}

uint64_t LeaveButtonViewModel.symbolName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 160))(v1, v2);
  if (v3 && (v4 = v3, (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))(), v6 = v5, v4, ObjectType = swift_getObjectType(), LOBYTE(v4) = (*(v6 + 136))(ObjectType, v6), swift_unknownObjectRelease(), (v4 & 1) != 0))
  {
    v8 = *MEMORY[0x1E69DDDC8];
    v15 = 0;
    v9 = 0x6B72616D78;
    v10 = 0xE500000000000000;
  }

  else
  {
    v8 = *MEMORY[0x1E69DDDC8];
    v15 = 0;
    v9 = 0x6F642E656E6F6870;
    v10 = 0xEF6C6C69662E6E77;
  }

  v16[0] = v9;
  v16[1] = v10;
  v16[2] = 2;
  v16[3] = v8;
  v17 = 0;
  v18 = 7;
  v19 = 0;
  v20 = 0;
  v21[0] = v9;
  v21[1] = v10;
  v21[2] = 2;
  v21[3] = v8;
  v22 = 0;
  v23 = 7;
  v24 = 0;
  v25 = 0;
  v11 = v8;
  outlined init with copy of SymbolImageDescription(v16, v14);
  outlined destroy of SymbolImageDescription(v21);
  v12 = v16[0];

  outlined destroy of SymbolImageDescription(v16);
  return v12;
}

uint64_t closure #1 in variable initialization expression of LeaveButtonViewModel.flexibleGlass()
{
  v0 = type metadata accessor for _Glass();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass.regular.getter();
  v4 = [objc_opt_self() systemRedColor];
  Color.init(uiColor:)();
  _Glass.tintColor(_:)();

  (*(v1 + 8))(v3, v0);
  static _Glass.Options.supportsFlexInteraction.getter();
  return _Glass.options.setter();
}

uint64_t LeaveButtonViewModel.buttonStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for IconButtonWidthRestriction();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.Leading();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Image.Scale();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v28 = v27 - v14;
  v27[1] = LeaveButtonViewModel.symbolName.getter();
  v15 = [objc_opt_self() systemRedColor];
  v16 = Color.init(uiColor:)();
  *(&v39 + 1) = MEMORY[0x1E69815C0];
  v40 = MEMORY[0x1E6981568];
  *&v38 = v16;
  v17 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel_flexibleGlass;
  v18 = type metadata accessor for _Glass();
  (*(*(v18 - 8) + 16))(v12, v1 + v17, v18);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  static Font.Weight.bold.getter();
  static Color.white.getter();
  (*(v7 + 104))(v9, *MEMORY[0x1E69816E0], v6);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v7 + 8))(v9, v6);
  outlined destroy of CallControlsService?(v12, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of CallControlsService?(&v38, &_s7SwiftUI10ShapeStyle_pSgMd);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  static Color.white.getter();
  static Font.subheadline.getter();
  v19 = v29;
  v20 = v30;
  v21 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E6980EA8], v31);
  Font.leading(_:)();

  (*(v20 + 8))(v19, v21);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v23 = v34;
  v22 = v35;
  v24 = v36;
  (*(v35 + 104))(v34, *MEMORY[0x1E6995BD0], v36);
  v25 = v28;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v22 + 8))(v23, v24);
  outlined destroy of CallControlsService?(v12, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of CallControlsService?(&v38, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v32 + 8))(v25, v33);
}

void *closure #1 in LeaveButtonViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[5];
    v2 = result[6];
    __swift_project_boxed_opaque_existential_1(result + 2, v1);
    (*(v2 + 176))(v1, v2);
  }

  return result;
}

uint64_t LeaveButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC15ConversationKit20LeaveButtonViewModel_flexibleGlass;
  type metadata accessor for _Glass();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t LeaveButtonViewModel.__deallocating_deinit()
{
  LeaveButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaveButtonViewModel()
{
  result = type metadata singleton initialization cache for LeaveButtonViewModel;
  if (!type metadata singleton initialization cache for LeaveButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LeaveButtonViewModel()
{
  result = type metadata accessor for _Glass();
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

uint64_t InCallControlsTitleCellViewModel.init(groupName:groupPhotoData:participants:mode:linksEnabled:shouldUseGroupHeader:conversation:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W7>, int **a8@<X8>, int *a9)
{
  v169 = a7;
  v171 = a4;
  v170 = a3;
  v172 = a8;
  v13 = 0xEF74694B6E6F6974;
  v14 = 0x61737265766E6F43;
  v181 = type metadata accessor for Participant.State(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_40();
  v180 = v16;
  v17 = type metadata accessor for PersonNameComponents();
  v18 = OUTLINED_FUNCTION_0_100(v17, &v191);
  v174 = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40();
  v178 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v162 - v22;
  v24 = type metadata accessor for Participant(0);
  v25 = OUTLINED_FUNCTION_0_100(v24, &v192);
  v182 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v183 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v162 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v162 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v162 - v35;
  v176 = a6;
  v175 = a6 >> 5;
  if (a2)
  {
    if (String.count.getter() > 0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_6_122();
  if (v37 <= 0x1F && (v176 & 1) != 0)
  {
    v38 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_12_98();
    v39.super.isa = v38;
    a1 = OUTLINED_FUNCTION_17_0(v40, v41, v42, v43, v39);
    a2 = v44;

    goto LABEL_9;
  }

  v45 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_12_98();
  v46.super.isa = v45;
  a1 = OUTLINED_FUNCTION_17_0(v47, v48, v49, v50, v46);
  a2 = v51;

LABEL_8:
  if (((1 << v175) & 0x73) != 0)
  {
    goto LABEL_9;
  }

  if (v175 == 2)
  {
    v58 = [objc_opt_self() conversationKit];
    v162 = 0xE000000000000000;
LABEL_22:
    OUTLINED_FUNCTION_12_98();
    v88.super.isa = v58;
    v93 = OUTLINED_FUNCTION_17_0(v89, v90, v91, v92, v88);
    OUTLINED_FUNCTION_3_168(v93, v94);

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_122();
  if (v87 == 96)
  {
    v58 = [objc_opt_self() conversationKit];
    OUTLINED_FUNCTION_40_0();
    goto LABEL_22;
  }

LABEL_9:
  v52 = *(a5 + 16);
  if (v52 == 1)
  {
    specialized Collection.first.getter(a5, v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v179) != 1)
    {
      v67 = OUTLINED_FUNCTION_46();
      outlined init with take of Participant(v67, v68);
      v69 = [objc_opt_self() conversationKit];
      v164 = a5;
      v70 = v69;
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_12_98();
      v71.super.isa = v70;
      v184 = OUTLINED_FUNCTION_17_0(v72, v73, v74, v75, v71);
      v173 = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1BC4BA940;
      Participant.contactDetails.getter();
      v78 = v187;
      v13 = v188;
      v79 = a1;
      v80 = v189;

      v185 = v13;
      v186 = v80;
      a1 = v79;
      v81 = MEMORY[0x1E69E6158];
      v82 = String.init<A>(_:)();
      v84 = v83;
      *(v77 + 56) = v81;
      *(v77 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v77 + 32) = v82;
      *(v77 + 40) = v84;
      a5 = v164;
      v85 = String.init(format:_:)();
      OUTLINED_FUNCTION_3_168(v85, v86);

      outlined destroy of Participant(v36);
      goto LABEL_23;
    }

    outlined destroy of Participant?(v23);
  }

  v13 = a5;
  if (one-time initialization token for participantCountFormatter != -1)
  {
    goto LABEL_86;
  }

LABEL_13:
  v53 = static InCallControlsTitleCellViewModel.participantCountFormatter;
  v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v55 = [v53 stringFromNumber_];

  if (v55)
  {
    v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v187 = v52;
    v184 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v59;
  }

  v60 = [objc_opt_self() conversationKit];
  v162 = 0xE000000000000000;
  v61.super.isa = v60;
  OUTLINED_FUNCTION_17_0(0xD000000000000025, 0x80000001BC5232A0, v14, 0xEF74694B6E6F6974, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1BC4BAA20;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  v63 = lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 32) = v184;
  *(v62 + 40) = v57;
  v64 = MEMORY[0x1E69E65A8];
  *(v62 + 96) = MEMORY[0x1E69E6530];
  *(v62 + 104) = v64;
  *(v62 + 64) = v63;
  *(v62 + 72) = v52;
  v65 = String.init(format:arguments:)();
  OUTLINED_FUNCTION_3_168(v65, v66);

  a5 = v13;
LABEL_23:
  v167 = a1;
  v168 = a2;
  v95 = MEMORY[0x1E69E7CC0];
  v190 = MEMORY[0x1E69E7CC0];
  v96 = *(a5 + 16);
  if (v96)
  {
    v97 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v164 = a5;
    v98 = a5 + v97;
    v184 = *(v182 + 72);
    v173 = (v174 + 8);
    v163 = v96;
    OUTLINED_FUNCTION_7_110();
    *(v99 - 256) = v30;
    while (1)
    {
      OUTLINED_FUNCTION_7_5();
      _s15ConversationKit11ParticipantVWOcTm_4(v98, v33, v100);
      v13 = a1[7];
      v101 = *(v33 + v13);
      if (!v101)
      {
        goto LABEL_38;
      }

      v102 = v101;
      if (([v102 shouldHideContact] & 1) == 0)
      {
        break;
      }

      type metadata accessor for CNContact();
      v103 = type metadata completion function for SyncedScreeningAlphaGradientView();
      v105 = @nonobjc CNContact.init(displayName:handle:)(v103, v104, 0);
      MEMORY[0x1BFB20CC0]();
      if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_53:
      v95 = v190;
      outlined destroy of Participant(v33);
      v98 += v184;
      if (!--v96)
      {
        a5 = v164;
        v96 = v163;
        goto LABEL_56;
      }
    }

    v106 = *(v33 + v13);
    if (v106)
    {
      v107 = v106;
      outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v107);
      if (v108)
      {
        if ([v107 shouldHideContact])
        {
          PersonNameComponents.init()();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.givenName.setter();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            OUTLINED_FUNCTION_1_188();
            swift_once();
          }

          swift_beginAccess();
          v109 = static NSPersonNameComponentsFormatter.initials;
          isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          a1 = [v109 stringFromPersonNameComponents_];

          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          (*v173)(v178, v177);
          v187 = v111;
          v188 = v113;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol.localizedUppercase.getter();

          OUTLINED_FUNCTION_7_110();
          v30 = *(v114 - 256);
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v33, v30, v115);
    OUTLINED_FUNCTION_13_85();
    outlined destroy of Participant(v30);
    v116 = v187;

    if (v116)
    {
      v117 = v116;
LABEL_50:
      v102 = v117;
      MEMORY[0x1BFB20CC0]();
      if (*((v190 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v190 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_53;
    }

LABEL_40:
    v118 = *(v33 + v13);
    if (v118)
    {
      v119 = v118;
      v120 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v119);
      if (v121)
      {
        v122 = v120;
        v123 = v121;
        if ([v119 shouldHideContact])
        {
          v124 = v178;
          PersonNameComponents.init()();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.givenName.setter();
          type metadata completion function for SyncedScreeningAlphaGradientView();
          PersonNameComponents.familyName.setter();
          if (one-time initialization token for initials != -1)
          {
            OUTLINED_FUNCTION_1_188();
            swift_once();
          }

          swift_beginAccess();
          v125 = static NSPersonNameComponentsFormatter.initials;
          v126 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
          v127 = [v125 stringFromPersonNameComponents_];

          v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          a1 = v129;

          (*v173)(v124, v177);
          v187 = v128;
          v188 = a1;
          lazy protocol witness table accessor for type String and conformance String();
          StringProtocol.localizedUppercase.getter();

          v13 = 0;
          OUTLINED_FUNCTION_7_110();
          v30 = *(v130 - 256);
          goto LABEL_49;
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v33, v30, v131);
    OUTLINED_FUNCTION_13_85();
    outlined destroy of Participant(v30);
    v13 = v187;
    v122 = v188;
    v123 = v189;
LABEL_49:

    type metadata accessor for CNContact();

    v117 = @nonobjc CNContact.init(displayName:handle:)(v122, v123, 0);
    goto LABEL_50;
  }

  a1 = v179;
LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit32InCallControlsTitleCellViewModelV0iJ6ButtonO_SbtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0;
  OUTLINED_FUNCTION_6_122();
  v135 = v134 == 96;
  v136 = v134 != 96;
  v137 = v135;
  if (v175 != 3)
  {
    v136 = v175 != 2;
  }

  v133[33] = v136;
  v133[34] = 1;
  v133[35] = v137;
  lazy protocol witness table accessor for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton();

  v138 = Dictionary.init(dictionaryLiteral:)();
  v139 = v138;
  if (!v96)
  {

    v156 = 0;
    goto LABEL_84;
  }

  v184 = v138;
  v140 = a5;
  v141 = v96;
  v14 = 0;
  v30 = a1[7];
  a2 = v140;
  a1 = (v140 + ((*(v182 + 80) + 32) & ~*(v182 + 80)));
  v33 = &selRef_isRecordingAllowed;
  v52 = v183;
  while (1)
  {
    if (v14 >= *(a2 + 16))
    {
      __break(1u);
LABEL_86:
      swift_once();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_5();
    _s15ConversationKit11ParticipantVWOcTm_4(v142, v52, v143);
    v144 = *(v52 + v30);
    if (!v144)
    {
      break;
    }

    v145 = [v144 value];
    if (!v145)
    {
      v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = MEMORY[0x1BFB209B0](v146);
    }

    v13 = [v145 destinationIdIsTemporary];

    v52 = v183;
    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_76:
    outlined destroy of Participant(v52);
LABEL_77:
    if (v141 == ++v14)
    {

      v156 = 0;
      goto LABEL_83;
    }
  }

  v13 = v180;
  _s15ConversationKit11ParticipantVWOcTm_4(v52, v180, type metadata accessor for Participant.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v151 + 8))(v13);
      goto LABEL_76;
    case 4u:
      v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
      v153 = *(v152 + 48);
      outlined consume of Participant.CopresenceInfo?(*(v13 + *(v152 + 64)), *(v13 + *(v152 + 64) + 8));
      v154 = v13 + v153;
      v52 = v183;
      outlined destroy of Participant.MediaInfo(v154);
      goto LABEL_69;
    case 6u:
      goto LABEL_70;
    default:
LABEL_69:
      type metadata accessor for Date();
      OUTLINED_FUNCTION_7_0();
      (*(v147 + 8))(v13);
LABEL_70:
      v148 = *(v52 + v30);
      if (v148)
      {
        v149 = [v148 value];
        if (!v149)
        {
          v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = MEMORY[0x1BFB209B0](v150);
        }

        v13 = [v149 destinationIdIsPseudonym];

        v52 = v183;
        outlined destroy of Participant(v183);
        if ((v13 & 1) == 0)
        {

          goto LABEL_82;
        }

        goto LABEL_77;
      }

      outlined destroy of Participant(v52);
LABEL_82:

      v156 = 1;
LABEL_83:
      v139 = v184;
LABEL_84:
      v157 = v169 & 1;
      v158 = v172;
      v159 = v168;
      *v172 = v167;
      v158[1] = v159;
      v160 = v165;
      v158[2] = v166;
      v158[3] = v160;
      v161 = v170;
      v158[4] = v95;
      v158[5] = v161;
      v158[6] = v171;
      *(v158 + 56) = v157;
      v158[8] = v139;
      *(v158 + 72) = v156;
      v158[10] = a9;
      return result;
  }
}

Swift::Int InCallControlsTitleCellViewModel.TitleCellButton.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InCallControlsTitleCellViewModel.TitleCellButton()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  InCallControlsTitleCellViewModel.TitleCellButton.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t InCallControlsTitleCellViewModel.groupPhotoData.getter()
{
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

void *InCallControlsTitleCellViewModel.conversation.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id one-time initialization function for participantCountFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  static InCallControlsTitleCellViewModel.participantCountFormatter = result;
  return result;
}

id @nonobjc CNContact.init(displayName:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5.super.isa = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x1BFB209B0]();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5.super.isa];

  return v6;
}

unint64_t lazy protocol witness table accessor for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton()
{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCellViewModel.TitleCellButton and conformance InCallControlsTitleCellViewModel.TitleCellButton);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for InCallControlsTitleCellViewModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for InCallControlsTitleCellViewModel(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for InCallControlsTitleCellViewModel.TitleCellButton(_BYTE *result, unsigned int a2, unsigned int a3)
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

id PLPillView.__allocating_init(leadingAccessoryView:trailingAccessoryView:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLeadingAccessoryView:a1 trailingAccessoryView:a2];

  return v4;
}

uint64_t key path getter for TapToRadarBannerViewController.isBannerPresent : TapToRadarBannerViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x130))();
  *a2 = result & 1;
  return result;
}

uint64_t TapToRadarBannerViewController.isBannerPresent.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TapToRadarBannerViewController.isBannerPresent.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TapToRadarBannerViewController.bannerSource.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
LABEL_5:
    v9 = v2;
    return v3;
  }

  v4 = v0;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource);
  v5 = outlined bridged method (pb) of @objc TapToRadarBannerViewController.requesterIdentifier.getter(v0);
  result = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(0, v5, v6);
  if (result)
  {
    v8 = *&v0[v1];
    *&v4[v1] = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void TapToRadarBannerViewController.init(feature:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = 0xD000000000000013;
  if (v1)
  {
    v3 = 0xD00000000000001FLL;
  }

  v63 = v3;
  v4 = "TTR_BANNER_TITLE";
  v5 = 0xD00000000000001CLL;
  if ((v1 & 1) == 0)
  {
    v5 = 0xD000000000000010;
    v4 = "TTR_HOLD_ASSIST_BANNER_SUBTITLE";
  }

  v61 = v5;
  v62 = v4;
  v6 = "ackViewController";
  v7 = v1 & 1;
  if ((v1 & 1) == 0)
  {
    v6 = "TTR_HOLD_ASSIST_BANNER_TITLE";
  }

  v60 = v6;
  v8 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString];
  *v14 = 0;
  v14[1] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call] = 0;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource] = 0;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v10 + 8))(v13, v8);
  v18 = &v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID];
  *v18 = v15;
  v18[1] = v17;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_isBannerPresent] = 0;
  v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_feature] = v7;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v19 = @nonobjc UIImage.init(_systemName:)(0x7261646172, 0xE500000000000000);
  v20 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v59 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillLeadingImageView;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillLeadingImageView] = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemPurpleColor];
  [v22 setTintColor_];

  v24 = @nonobjc UIImage.init(_systemName:)(0xD000000000000011, 0x80000001BC523360);
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v58 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillTrailingImageView;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillTrailingImageView] = v25;
  v26 = v25;
  v27 = [v21 systemPurpleColor];
  [v26 setTintColor_];

  v28 = [objc_opt_self() conversationKit];
  v29 = OUTLINED_FUNCTION_6_123(v61, v60);
  v31 = v30;

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillContentItem);
  v32 = PLPillContentItem.__allocating_init(text:)(v29, v31);
  v33 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewTitle;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewTitle] = v32;
  v34 = [objc_opt_self() conversationKit];
  v35 = OUTLINED_FUNCTION_6_123(v63, v62);
  v37 = v36;

  v38 = PLPillContentItem.__allocating_init(text:style:)(v35, v37, 5);
  v39 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewSubtitle;
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillViewSubtitle] = v38;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for PLPillView);
  v40 = *&v2[v59];
  v41 = *&v2[v58];
  v42 = v40;
  v43 = v41;
  v44 = PLPillView.__allocating_init(leadingAccessoryView:trailingAccessoryView:)(v40, v41);
  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BC4BA930;
  v46 = *&v2[v33];
  v47 = *&v2[v39];
  *(v45 + 32) = v46;
  *(v45 + 40) = v47;
  v48 = v44;
  v49 = v46;
  v50 = v47;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 setCenterContentItems_];

  *&v2[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList] = MEMORY[0x1E69E7CD0];
  v52 = type metadata accessor for TapToRadarBannerViewController();
  v65.receiver = v2;
  v65.super_class = v52;
  v53 = objc_msgSendSuper2(&v65, sel_initWithNibName_bundle_, 0, 0);
  v64[3] = v52;
  v64[0] = v53;
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v54 = v53;
  v55 = @nonobjc UITapGestureRecognizer.init(target:action:)(v64, sel_handleTap_);
  v56 = [v54 view];
  if (v56)
  {
    v57 = v56;
    [v56 addGestureRecognizer_];

    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    __break(1u);
  }
}

id TapToRadarBannerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TapToRadarBannerViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall TapToRadarBannerViewController.viewDidLoad()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView;
  [*&v0[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView] setAutoresizingMask_];
  v2 = *&v0[v1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview_];
}

Swift::Void __swiftcall TapToRadarBannerViewController.handleTap(_:)(UITapGestureRecognizer_optional *a1)
{
  OUTLINED_FUNCTION_29();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v19 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v18 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v12 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  OUTLINED_FUNCTION_7_6(v13);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v20[2] = v14;
  v20[3] = &block_descriptor_121;
  v15 = _Block_copy(v20);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  OUTLINED_FUNCTION_5_141();
  v17 = OUTLINED_FUNCTION_117();
  MEMORY[0x1BFB215C0](v17);
  _Block_release(v15);

  (*(v19 + 8))(v2, v3);
  (*(v7 + 8))(v11, v18);
  OUTLINED_FUNCTION_30_0();
}

void closure #1 in TapToRadarBannerViewController.handleTap(_:)(void *a1)
{
  v203 = a1;
  v199 = type metadata accessor for URL();
  v192 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v191 = &v180 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v198 = &v180 - v3;
  v189 = type metadata accessor for Date();
  v194 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v193 = &v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v180 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v185 = &v180 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v186 = &v180 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v180 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v184 = &v180 - v17;
  v202 = type metadata accessor for URLQueryItem();
  v18 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v197 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v196 = &v180 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v180 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v195 = &v180 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v200 = &v180 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v180 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v180 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v180 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v180 - v41;
  URLQueryItem.init(name:value:)();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v44 = v43;
  v46 = *(v43 + 16);
  v45 = *(v43 + 24);
  v187 = v7;
  if (v46 >= v45 >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v170;
  }

  *(v44 + 16) = v46 + 1;
  v47 = *(v18 + 32);
  v205 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v204 = *(v18 + 72);
  v48 = v42;
  v49 = v202;
  v201 = v47;
  v50 = v18 + 32;
  v47(v44 + v205 + v204 * v46, v48, v202);
  URLQueryItem.init(name:value:)();

  v51 = *(v44 + 16);
  if (v51 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v171;
  }

  *(v44 + 16) = v51 + 1;
  v52 = v44 + v205 + v51 * v204;
  v53 = v201;
  v201(v52, v39, v49);
  URLQueryItem.init(name:value:)();
  v54 = *(v44 + 16);
  if (v54 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v172;
  }

  *(v44 + 16) = v54 + 1;
  v55 = v202;
  v53(v44 + v205 + v54 * v204, v36, v202);
  URLQueryItem.init(name:value:)();
  v56 = *(v44 + 16);
  if (v56 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v173;
  }

  v58 = v203;
  v57 = v204;
  *(v44 + 16) = v56 + 1;
  v59 = v44 + v205 + v56 * v57;
  v60 = v201;
  v201(v59, v33, v55);
  URLQueryItem.init(name:value:)();
  v61 = *(v44 + 16);
  if (v61 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v174;
  }

  *(v44 + 16) = v61 + 1;
  v60(v44 + v205 + v61 * v204, v30, v55);
  v182 = 0xD000000000000010;
  URLQueryItem.init(name:value:)();
  v62 = *(v44 + 16);
  if (v62 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v175;
  }

  *(v44 + 16) = v62 + 1;
  v60(v44 + v205 + v62 * v204, v200, v55);
  v207[2] = 10;
  v207[3] = 0xE100000000000000;
  v63 = *(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call);
  if (v63)
  {
    v207[0] = 0;
    v207[1] = 0xE000000000000000;
    v64 = v63;
    _StringGuts.grow(_:)(436);
    MEMORY[0x1BFB20B10](0xD000000000000075, 0x80000001BC5240E0);
    v65 = [v64 callUUID];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    MEMORY[0x1BFB20B10](v66, v68);

    MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC524160);
    [v64 service];
    v69 = TUCallService.description.getter();
    MEMORY[0x1BFB20B10](v69);

    MEMORY[0x1BFB20B10](0x7453206C6C61430ALL, 0xED0000203A747261);
    v70 = [v64 dateConnected];
    if (v70)
    {
      v71 = v70;
      v72 = v183;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = 0;
      v74 = v189;
    }

    else
    {
      v73 = 1;
      v74 = v189;
      v72 = v183;
    }

    __swift_storeEnumTagSinglePayload(v72, v73, 1, v74);
    v75 = v184;
    outlined init with take of Date?(v72, v184);
    if (__swift_getEnumTagSinglePayload(v75, 1, v74))
    {
      outlined destroy of TapInteractionHandler?(v75, &_s10Foundation4DateVSgMd);
    }

    else
    {
      v78 = v193;
      v79 = v194;
      (*(v194 + 16))(v193, v75, v74);
      outlined destroy of TapInteractionHandler?(v75, &_s10Foundation4DateVSgMd);
      v77 = Date.formated.getter();
      v76 = v80;
      (*(v79 + 8))(v78, v74);
      if (v76)
      {
LABEL_21:
        MEMORY[0x1BFB20B10](v77, v76);

        MEMORY[0x1BFB20B10](0x6E45206C6C61430ALL, 0xEB00000000203A64);
        v81 = [v64 dateEnded];
        if (v81)
        {
          v82 = v81;
          v83 = v185;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v84 = 0;
        }

        else
        {
          v84 = 1;
          v83 = v185;
        }

        __swift_storeEnumTagSinglePayload(v83, v84, 1, v74);
        v85 = v186;
        outlined init with take of Date?(v83, v186);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v85, 1, v74);
        v181 = v50;
        if (EnumTagSinglePayload)
        {
          outlined destroy of TapInteractionHandler?(v85, &_s10Foundation4DateVSgMd);
        }

        else
        {
          v89 = v193;
          v90 = v194;
          (*(v194 + 16))(v193, v85, v74);
          outlined destroy of TapInteractionHandler?(v85, &_s10Foundation4DateVSgMd);
          v88 = Date.formated.getter();
          v87 = v91;
          (*(v90 + 8))(v89, v74);
          if (v87)
          {
LABEL_28:
            MEMORY[0x1BFB20B10](v88, v87);

            MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC5241A0);
            v92 = TUCallDisconnectedReason.description.getter([v64 disconnectedReason]);
            MEMORY[0x1BFB20B10](v92);

            MEMORY[0x1BFB20B10](0xD000000000000014, 0x80000001BC5241C0);
            v93 = [v64 isOutgoing];
            v94 = v93 == 0;
            if (v93)
            {
              v95 = 1702195828;
            }

            else
            {
              v95 = 0x65736C6166;
            }

            if (v94)
            {
              v96 = 0xE500000000000000;
            }

            else
            {
              v96 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v95, v96);

            MEMORY[0x1BFB20B10](0x64656B636F6C420ALL, 0xEA0000000000203ALL);
            v97 = [v64 isBlocked];
            v98 = v97 == 0;
            if (v97)
            {
              v99 = 1702195828;
            }

            else
            {
              v99 = 0x65736C6166;
            }

            if (v98)
            {
              v100 = 0xE500000000000000;
            }

            else
            {
              v100 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v99, v100);

            MEMORY[0x1BFB20B10](0xD00000000000001ALL, 0x80000001BC5241E0);
            v101 = [v64 dateAnsweredOrDialed];
            if (v101)
            {
              v102 = v101;
              v103 = v187;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v104 = 0;
              v60 = v201;
            }

            else
            {
              v104 = 1;
              v60 = v201;
              v103 = v187;
            }

            __swift_storeEnumTagSinglePayload(v103, v104, 1, v74);
            v105 = v188;
            outlined init with take of Date?(v103, v188);
            if (__swift_getEnumTagSinglePayload(v105, 1, v74))
            {
              outlined destroy of TapInteractionHandler?(v105, &_s10Foundation4DateVSgMd);
            }

            else
            {
              v108 = v193;
              v109 = v194;
              (*(v194 + 16))(v193, v105, v74);
              outlined destroy of TapInteractionHandler?(v105, &_s10Foundation4DateVSgMd);
              v107 = Date.formated.getter();
              v106 = v110;
              (*(v109 + 8))(v108, v74);
              if (v106)
              {
                goto LABEL_47;
              }
            }

            v106 = 0x80000001BC524180;
            v107 = 0xD000000000000012;
LABEL_47:
            MEMORY[0x1BFB20B10](v107, v106);

            MEMORY[0x1BFB20B10](0xD000000000000023, 0x80000001BC524200);
            v111 = [v64 isEligibleForManualScreening];
            v112 = v111 == 0;
            if (v111)
            {
              v113 = 1702195828;
            }

            else
            {
              v113 = 0x65736C6166;
            }

            if (v112)
            {
              v114 = 0xE500000000000000;
            }

            else
            {
              v114 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v113, v114);

            MEMORY[0x1BFB20B10](0xD00000000000001CLL, 0x80000001BC524230);
            v115 = [v64 isEligibleForScreening];
            v116 = v115 == 0;
            if (v115)
            {
              v117 = 1702195828;
            }

            else
            {
              v117 = 0x65736C6166;
            }

            if (v116)
            {
              v118 = 0xE500000000000000;
            }

            else
            {
              v118 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v117, v118);

            MEMORY[0x1BFB20B10](0xD00000000000001BLL, 0x80000001BC524250);
            v119 = [v64 shouldSuppressRingtone];
            v120 = v119 == 0;
            if (v119)
            {
              v121 = 1702195828;
            }

            else
            {
              v121 = 0x65736C6166;
            }

            if (v120)
            {
              v122 = 0xE500000000000000;
            }

            else
            {
              v122 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v121, v122);

            MEMORY[0x1BFB20B10](0xD000000000000012, 0x80000001BC524270);
            v123 = [v64 uniqueProxyIdentifier];
            v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v126 = v125;

            MEMORY[0x1BFB20B10](v124, v126);

            MEMORY[0x1BFB20B10](0x206B6E696C70550ALL, 0xEF203A646574754DLL);
            v127 = [v64 isUplinkMuted];
            v128 = v127 == 0;
            if (v127)
            {
              v129 = 1702195828;
            }

            else
            {
              v129 = 0x65736C6166;
            }

            if (v128)
            {
              v130 = 0xE500000000000000;
            }

            else
            {
              v130 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v129, v130);

            MEMORY[0x1BFB20B10](0xD000000000000015, 0x80000001BC524290);
            v131 = [v64 isDownlinkMuted];
            v132 = v131 == 0;
            if (v131)
            {
              v133 = 1702195828;
            }

            else
            {
              v133 = 0x65736C6166;
            }

            if (v132)
            {
              v134 = 0xE500000000000000;
            }

            else
            {
              v134 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v133, v134);

            MEMORY[0x1BFB20B10](0xD000000000000016, 0x80000001BC5242B0);
            v206 = [v64 screenSharingType];
            type metadata accessor for TUCallScreenSharingType(0);
            v135 = String.init<A>(describing:)();
            MEMORY[0x1BFB20B10](v135);

            MEMORY[0x1BFB20B10](v207[0], v207[1]);

            strcpy(v207, "Is Recording: ");
            HIBYTE(v207[1]) = -18;
            v136 = [v64 isRecording];
            v137 = v136 == 0;
            if (v136)
            {
              v138 = 1702195828;
            }

            else
            {
              v138 = 0x65736C6166;
            }

            if (v137)
            {
              v139 = 0xE500000000000000;
            }

            else
            {
              v139 = 0xE400000000000000;
            }

            MEMORY[0x1BFB20B10](v138, v139);

            MEMORY[0x1BFB20B10](v207[0], v207[1]);

            v55 = v202;
            v58 = v203;
            goto LABEL_84;
          }
        }

        v87 = 0x80000001BC524180;
        v88 = 0xD000000000000012;
        goto LABEL_28;
      }
    }

    v76 = 0x80000001BC524180;
    v77 = 0xD000000000000012;
    goto LABEL_21;
  }

LABEL_84:
  v140 = v195;
  URLQueryItem.init(name:value:)();

  v141 = *(v44 + 16);
  if (v141 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v176;
  }

  *(v44 + 16) = v141 + 1;
  v60(v44 + v205 + v141 * v204, v140, v55);
  if (*(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString + 8))
  {

    v142 = v190;
    URLQueryItem.init(name:value:)();

    v143 = *(v44 + 16);
    if (v143 >= *(v44 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = v178;
    }

    *(v44 + 16) = v143 + 1;
    v60(v44 + v205 + v143 * v204, v142, v55);
  }

  v207[0] = *(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Set<String> and conformance Set<A>, &_sShySSGMd);
  lazy protocol witness table accessor for type String and conformance String();
  Sequence<>.joined(separator:)();

  v144 = v196;
  URLQueryItem.init(name:value:)();

  v145 = *(v44 + 16);
  if (v145 >= *(v44 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v44 = v177;
  }

  *(v44 + 16) = v145 + 1;
  v60(v44 + v205 + v145 * v204, v144, v55);
  if (*(v58 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_fullLogArchive) == 1)
  {
    URLQueryItem.init(name:value:)();
    v146 = *(v44 + 16);
    if (v146 >= *(v44 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v44 = v179;
    }

    *(v44 + 16) = v146 + 1;
    v60(v44 + v205 + v146 * v204, v197, v55);
  }

  v147 = [objc_allocWithZone(MEMORY[0x1E696AF20]) init];
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(0x722D6F742D706174, 0xEC00000072616461, v147, &selRef_setScheme_);
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(7824750, 0xE300000000000000, v147, &selRef_setHost_);
  outlined bridged method (mbnn) of @objc NSURLComponents.queryItems.setter(v44, v147);
  v148 = v199;
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_1BC4BA940;
  v150 = [v147 URL];
  v151 = v198;
  if (v150)
  {
    v152 = v150;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v153 = 0;
  }

  else
  {
    v153 = 1;
  }

  __swift_storeEnumTagSinglePayload(v151, v153, 1, v148);
  specialized >> prefix<A>(_:)(v151, v154, v155, v156, v157, v158, v159, v160, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
  v162 = v161;
  v164 = v163;
  outlined destroy of TapInteractionHandler?(v151, &_s10Foundation3URLVSgMd);
  *(v149 + 56) = MEMORY[0x1E69E6158];
  *(v149 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v149 + 32) = v162;
  *(v149 + 40) = v164;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v165 = [objc_opt_self() sharedApplication];
  v166 = [v147 URL];
  if (v166)
  {
    v167 = v191;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v168);
    v166 = v169;
    (*(v192 + 8))(v167, v148);
  }

  [v165 openURL:v166 withCompletionHandler:0];

  (*((*MEMORY[0x1E69E7D40] & *v58) + 0x1D8))();
}

uint64_t Date.formated.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  outlined bridged method (mbnn) of @objc UIViewController.title.setter(0xD000000000000013, 0x80000001BC5233C0, v0, &selRef_setDateFormat_);
  [v0 setDoesRelativeDateFormatting_];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

void TapToRadarBannerViewController.showBanner(for:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v9 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v15 = v14 - v13;
  v16 = *(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call);
  *(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_call) = v4;
  v17 = v4;

  v26 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  if (((*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))() & 1) != 0 || ([v26 TTRBannerEnabled] & 1) == 0 || (type metadata accessor for SpringBoardUtilities(), static SpringBoardUtilities.checkSpringBoardState(for:)()))
  {
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v25 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    OUTLINED_FUNCTION_7_6(v20);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v27[2] = v21;
    v27[3] = &block_descriptor_6_7;
    v24 = _Block_copy(v27);
    v22 = v2;

    static DispatchQoS.unspecified.getter();
    v27[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_5_141();
    v23 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v23);

    _Block_release(v24);
    (*(v7 + 8))(v1, v5);
    (*(v11 + 8))(v15, v9);
    OUTLINED_FUNCTION_30_0();
  }
}

void closure #1 in TapToRadarBannerViewController.showBanner(for:)(char *a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v2 = TapToRadarBannerViewController.bannerSource.getter();
  v16[0] = 0;
  v3 = [v2 layoutDescriptionWithError_];

  if (v3)
  {
    v4 = v16[0];
    [v3 presentationSize];
    v6 = v5;
    v8 = v7;
    [v3 containerSize];
    [a1 preferredContentSizeWithPresentationSize:v6 containerSize:{v8, v9, v10}];
    [a1 setPreferredContentSize_];
    v11 = *&a1[OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController____lazy_storage___bannerSource];
    v16[0] = 0;
    if ([v11 postPresentable:a1 options:1 userInfo:0 error:v16])
    {
      v12 = v16[0];

      return;
    }

    v15 = v16[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v13 = v16[0];
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

Swift::Void __swiftcall TapToRadarBannerViewController.dismissBanner()()
{
  OUTLINED_FUNCTION_29();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v6 = OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))())
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v19 = static OS_dispatch_queue.main.getter();
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    OUTLINED_FUNCTION_7_6(v13);
    OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
    v20[2] = v14;
    v20[3] = &block_descriptor_12_5;
    v18 = v6;
    v15 = _Block_copy(v20);
    v16 = v0;

    static DispatchQoS.unspecified.getter();
    v20[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    OUTLINED_FUNCTION_3_169(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
    OUTLINED_FUNCTION_5_141();
    v17 = OUTLINED_FUNCTION_117();
    MEMORY[0x1BFB215C0](v17);
    _Block_release(v15);

    (*(v4 + 8))(v1, v2);
    (*(v8 + 8))(v12, v18);
  }

  OUTLINED_FUNCTION_30_0();
}

void closure #1 in TapToRadarBannerViewController.dismissBanner()(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v2 = TapToRadarBannerViewController.bannerSource.getter();
  v3 = MEMORY[0x1BFB209B0](*(a1 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID), *(a1 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID + 8));
  v4 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC524010);
  v9[0] = 0;
  v5 = [v2 revokePresentableWithRequestIdentifier:v3 reason:v4 animated:1 userInfo:0 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t TapToRadarBannerViewController.addMessagesBubbleRecipientsList(groupMessageUUID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  *(v3 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_addressList) = a3;

  v7 = (v3 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_groupUUIDString);
  *v7 = a1;
  v7[1] = a2;
}

id TapToRadarBannerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TapToRadarBannerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapToRadarBannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TUCallService.description.getter()
{
  result = OUTLINED_FUNCTION_8_108();
  __break(1u);
  return result;
}

uint64_t TUCallDisconnectedReason.description.getter(int a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 0:
    case 2:
      return result;
    case 1:
    case 3:
    case 5:
      return 0xD000000000000029;
    case 4:
    case 11:
    case 16:
    case 23:
      return 0xD000000000000028;
    case 6:
      return 0xD000000000000024;
    case 7:
    case 34:
    case 44:
      return 0xD000000000000021;
    case 8:
    case 48:
      return 0xD000000000000033;
    case 9:
    case 38:
      return 0xD000000000000030;
    case 10:
    case 51:
      return 0xD000000000000026;
    case 12:
      return 0xD00000000000003DLL;
    case 13:
    case 21:
    case 41:
      return 0xD000000000000023;
    case 14:
    case 15:
    case 17:
      return 0xD000000000000022;
    case 18:
    case 19:
    case 24:
    case 49:
    case 50:
      return 0xD00000000000002ALL;
    case 20:
    case 35:
      goto LABEL_28;
    case 22:
    case 40:
    case 45:
    case 46:
      return 0xD000000000000027;
    case 25:
      return 0xD000000000000035;
    case 26:
      return 0xD00000000000001ELL;
    case 27:
    case 39:
    case 43:
      return 0xD00000000000002ELL;
    case 28:
    case 30:
    case 42:
      return 0xD00000000000002FLL;
    case 29:
    case 31:
      return 0xD000000000000031;
    case 32:
      return 0xD000000000000032;
    case 33:
    case 36:
      return 0xD00000000000002CLL;
    case 37:
      return 0xD00000000000003ELL;
    case 47:
      return 0xD000000000000036;
    default:
      if (a1 == 1000)
      {
        return 0xD000000000000029;
      }

      if (a1 == 1001)
      {
        return 0xD00000000000002BLL;
      }

LABEL_28:
      result = OUTLINED_FUNCTION_8_108();
      __break(1u);
      return result;
  }
}

uint64_t TapToRadarBannerViewController.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_requestID);

  return v1;
}

uint64_t TapToRadarBannerViewController.requesterIdentifier.getter()
{
  type metadata accessor for TapToRadarBannerViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return outlined bridged method (ob) of @objc NSBundle.bundleIdentifier.getter(v1);
}

CGSize __swiftcall TapToRadarBannerViewController.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  [*(v2 + OBJC_IVAR____TtC15ConversationKit30TapToRadarBannerViewController_pillView) systemLayoutSizeFittingSize_];
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t outlined bridged method (pb) of @objc TapToRadarBannerViewController.requesterIdentifier.getter(void *a1)
{
  v1 = [a1 requesterIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc NSURLComponents.queryItems.setter(uint64_t a1, void *a2)
{
  type metadata accessor for URLQueryItem();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setQueryItems_];
}

uint64_t SidebarStateStream.states.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMd);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v9[1] = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<SidebarState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd);
  lazy protocol witness table accessor for type SidebarState and conformance SidebarState();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<SidebarState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGGMd);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v6, v1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type SidebarState and conformance SidebarState()
{
  result = lazy protocol witness table cache variable for type SidebarState and conformance SidebarState;
  if (!lazy protocol witness table cache variable for type SidebarState and conformance SidebarState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarState and conformance SidebarState);
  }

  return result;
}

uint64_t SidebarButtonViewModel.__allocating_init(service:stream:isScreenLocked:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SidebarButtonViewModel.init(service:stream:isScreenLocked:)(a1, a2, a3);
  return v6;
}

uint64_t SidebarStateStream.__allocating_init(initial:)()
{
  OUTLINED_FUNCTION_36();
  v0 = swift_allocObject();
  SidebarStateStream.init(initial:)();
  return v0;
}

uint64_t one-time initialization function for showDetailsSideBar()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000012, 0x80000001BC524390);
  static NSNotificationName.showDetailsSideBar = result;
  return result;
}

id static NSNotificationName.showDetailsSideBar.getter()
{
  if (one-time initialization token for showDetailsSideBar != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.showDetailsSideBar;

  return v1;
}

Swift::Int SidebarState.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SidebarState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SidebarState.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t SidebarStateStream.init(initial:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15ConversationKit12SidebarStateOs5NeverOGMd);
  swift_allocObject();
  *(v0 + 16) = CurrentValueSubject.init(_:)();
  return v0;
}

uint64_t SidebarStateStream.__deallocating_deinit()
{

  OUTLINED_FUNCTION_36();

  return swift_deallocClassInstance();
}

void *SidebarButtonViewModel.init(service:stream:isScreenLocked:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7CC0];
  v3[9] = 0;
  v3[10] = v7;
  outlined init with copy of IDSLookupManager(a1, (v3 + 3));
  v3[8] = a2;
  v3[2] = a3;

  SidebarButtonViewModel.observeState()();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t SidebarButtonViewModel.observeState()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35 = v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v34 - v9;
  v45 = type metadata accessor for NSNotificationCenter.Publisher();
  v11 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v46 = *(v14 - 1);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v34 - v15;
  swift_beginAccess();
  v0[10] = MEMORY[0x1E69E7CC0];

  v17 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for showDetailsSideBar != -1)
  {
    swift_once();
  }

  NSNotificationCenter.publisher(for:object:)();

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v18 = static OS_dispatch_queue.main.getter();
  v49 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v19);
  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v20 = v45;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v10, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v11 + 8))(v13, v20);
  swift_allocObject();
  swift_weakInit();
  v34[2] = MEMORY[0x1E695BE98];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v21 = v47;
  Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v16, v21);
  swift_beginAccess();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  v46 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v49 = SidebarStateStream.states.getter();
  v47 = objc_opt_self();
  v22 = [v47 mainRunLoop];
  v48 = v22;
  v45 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v23 = v38;
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
  v44 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  v34[1] = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<SidebarState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGMd);
  v43 = lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v24 = v35;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SidebarState, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit12SidebarStateOs5NeverOGSo9NSRunLoopCGMd);
  v25 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v36 + 8))(v24, v25);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v49 = v1[2];

  v26 = [v47 mainRunLoop];
  v48 = v26;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v45);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v36 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v27 = v39;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  v35 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<Bool, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVySbs5NeverOGSo9NSRunLoopCGMd);
  v28 = v41;
  Publisher<>.sink(receiveValue:)();

  v29 = *(v40 + 8);
  v29(v27, v28);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v30 = v1[6];
  v31 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v30);
  v49 = (*(v31 + 112))(v30, v31);
  v32 = [v47 mainRunLoop];
  v48 = v32;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v45);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TapInteractionHandler?(v23, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v29(v27, v28);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t SidebarButtonViewModel.config.getter()
{
  v1 = type metadata accessor for IconButtonWidthRestriction();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Font.Leading();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  OUTLINED_FUNCTION_1();
  v38 = v17;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVySbGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v34 - v22;
  if (v0[9])
  {
    v24 = v0[9];
  }

  else
  {
    v37 = v23;
    static IconButtonStyle.Defaults.mac.iconFont.getter();
    v35 = v1;
    static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)();

    v39[3] = type metadata accessor for Material();
    v39[4] = MEMORY[0x1E6981AD0];
    __swift_allocate_boxed_opaque_existential_1(v39);
    static Material.ultraThin.getter();
    static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
    v25 = type metadata accessor for _Glass();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v25);
    static Color.white.getter();
    v34 = v16;
    static Font.subheadline.getter();
    v36 = v0;
    (*(v9 + 104))(v12, *MEMORY[0x1E6980EA8], v7);
    Font.leading(_:)();

    (*(v9 + 8))(v12, v7);
    static IconButtonStyle.Defaults.mac.iconWidth.getter();
    static IconButtonStyle.Defaults.mac.iconWidth.getter();
    *v6 = 0x401C000000000000;
    v26 = v35;
    (*(v3 + 104))(v6, *MEMORY[0x1E6995BD8], v35);
    static IconButtonStyle.catalystCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

    (*(v3 + 8))(v6, v26);
    outlined destroy of TapInteractionHandler?(v15, &_s7SwiftUI6_GlassVSgMd);
    (*(v38 + 8))(v20, v34);
    outlined destroy of TapInteractionHandler?(v39, &_s7SwiftUI10ShapeStyle_pSgMd);
    v27 = objc_opt_self();
    v28 = [v27 conversationKit];
    v38 = OUTLINED_FUNCTION_2_173(0xD000000000000018, 0x80000001BC5242D0);

    v29 = v36;
    v30 = v36[6];
    v31 = v36[7];
    __swift_project_boxed_opaque_existential_1(v36 + 3, v30);
    (*(v31 + 104))(v30, v31);
    v32 = [v27 conversationKit];
    OUTLINED_FUNCTION_2_173(0xD000000000000011, 0x80000001BC5242F0);

    LOBYTE(v32) = SidebarStateStream.currentState.getter();
    swift_allocObject();
    swift_weakInit();
    LOBYTE(v39[0]) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCySbGMd);
    swift_allocObject();
    v24 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v29[9] = v24;
  }

  return v24;
}

Swift::Void __swiftcall SidebarButtonViewModel.didTap()()
{
  SidebarButtonViewModel.config.getter();
  v0 = IconButtonConfig.state.modify();
  *v1 = !*v1;
  v0(v2, 0);

  IconButtonConfig.state.getter();

  SidebarStateStream.update(_:)(v2[0]);
}

uint64_t closure #1 in SidebarButtonViewModel.config.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.didTap()();
  }

  return result;
}

uint64_t closure #1 in SidebarButtonViewModel.observeState()()
{
  if (one-time initialization token for conversationController != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.conversationController);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BBC58000, v1, v2, "Received notification about showing details side bar.", v3, 2u);
    MEMORY[0x1BFB23DF0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.state.setter();

    SidebarStateStream.update(_:)(ConversationKit_SidebarState_visible);
  }

  return result;
}

uint64_t closure #2 in SidebarButtonViewModel.observeState()(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.state.getter();

    if (v1 != v3)
    {

      IconButtonConfig.state.setter();
    }
  }

  return result;
}

uint64_t closure #3 in SidebarButtonViewModel.observeState()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.enabled.setter();
  }

  return result;
}

uint64_t closure #4 in SidebarButtonViewModel.observeState()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SidebarButtonViewModel.config.getter();
    IconButtonConfig.hasBadge.setter();
  }

  return result;
}

uint64_t SidebarButtonViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return v0;
}

uint64_t SidebarButtonViewModel.__deallocating_deinit()
{
  SidebarButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in default argument 1 of static IconButtonStyle.SystemSymbol<A>.catalystCallControl(name:color:background:glass:font:)(char a1)
{
  if (a1)
  {
    return static Color.black.getter();
  }

  else
  {
    return static Color.white.getter();
  }
}

_BYTE *storeEnumTagSinglePayload for SidebarState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t InCallControlsTitleCell.ButtonType.debugDescription.getter(char a1)
{
  result = 0x6567617373656D2ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t InCallControlsTitleCell.ButtonType.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType()
{
  result = lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType;
  if (!lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InCallControlsTitleCell.ButtonType and conformance InCallControlsTitleCell.ButtonType);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InCallControlsTitleCell.ButtonType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = InCallControlsTitleCell.ButtonType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InCallControlsTitleCell.ButtonType@<X0>(uint64_t *a1@<X8>)
{
  result = InCallControlsTitleCell.ButtonType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InCallControlsTitleCell.ButtonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t CancelButtonViewModel.__allocating_init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CancelButtonViewModel.init(service:letMeInViewModel:)(a1, a2);
  return v4;
}

uint64_t CancelButtonViewModel.init(service:letMeInViewModel:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  outlined init with take of TapInteractionHandler(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t CancelButtonViewModel.config.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CallControlTextButtonStyle(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 72))
  {
    v5 = *(v1 + 72);
  }

  else
  {
    v6 = static IconButtonStyle.SystemSymbol<A>.controlBackgroundOff.getter();
    v7 = *(v2 + 20);
    static ButtonRole.cancel.getter();
    v8 = type metadata accessor for ButtonRole();
    __swift_storeEnumTagSinglePayload(v4 + v7, 0, 1, v8);
    *v4 = v6;
    v9 = objc_opt_self();
    v10 = [v9 conversationKit];
    v23._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x6C65636E6143;
    v11._object = 0xE600000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v23);

    v15 = [v9 conversationKit];
    v24._object = 0xE000000000000000;
    v16._object = 0x80000001BC4F46F0;
    v16._countAndFlagsBits = 0xD000000000000010;
    v17.value._countAndFlagsBits = 0x61737265766E6F43;
    v17.value._object = 0xEF74694B6E6F6974;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v24);

    v20 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for CallControlsTextButtonConfiguration(0);
    swift_allocObject();
    v5 = CallControlsTextButtonConfiguration.init(buttonStyle:text:accessibilityLabel:accessibilityIdentifier:enabled:didTap:)(v4, v14._countAndFlagsBits, v14._object, v19._countAndFlagsBits, v19._object, 0x75426C65636E6163, 0xEC0000006E6F7474, 1, partial apply for closure #1 in LeaveButtonViewModel.config.getter, v20);
    *(v1 + 72) = v5;
  }

  return v5;
}

uint64_t CancelButtonViewModel.enabled(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (a1 & 0xE100000000) == 0x4100000000 && a2 == 2;
  v5 = v4;
  if (v4)
  {
    *(v3 + 64) = a3 & 1;
    CancelButtonViewModel.isAppFrontMost.didset();
  }

  return v5;
}

Swift::Void __swiftcall CancelButtonViewModel.didTap()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 176))(v1, v2);
}

void CancelButtonViewModel.isAppFrontMost.didset()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    LetMeInCountdownViewModel.skipCountdown()();
  }
}

uint64_t CancelButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t CancelButtonViewModel.__deallocating_deinit()
{
  CancelButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

double CGRect.rounded(originRule:sizeRule:toScale:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = CGFloat.rounded(_:toScale:)(a1, a3, a4);
  CGFloat.rounded(_:toScale:)(a1, a3, a5);
  CGFloat.rounded(_:toScale:)(a2, a3, a6);
  CGFloat.rounded(_:toScale:)(a2, a3, a7);
  return v13;
}

double CGRect.rounded(originRule:sizeRule:toScaleOf:)()
{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  v7 = v6;
  [v8 displayScale];
  v10 = v9;
  v11 = CGFloat.rounded(_:toScale:)(v7, v9, v3);
  CGFloat.rounded(_:toScale:)(v7, v10, v2);
  CGFloat.rounded(_:toScale:)(v5, v10, v1);
  CGFloat.rounded(_:toScale:)(v5, v10, v0);
  return v11;
}

{
  OUTLINED_FUNCTION_20_2();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_getObjectType();

  return specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(v9, v7, v5, v3, v2, v1, v0);
}

double specialized CGRect.rounded(originRule:sizeRule:toScaleOf:)(uint64_t a1, uint64_t a2, id a3, double a4, double a5, double a6, double a7)
{
  v13 = [a3 traitCollection];
  [v13 displayScale];
  v15 = v14;
  v16 = CGFloat.rounded(_:toScale:)(a1, v14, a4);
  CGFloat.rounded(_:toScale:)(a1, v15, a5);
  CGFloat.rounded(_:toScale:)(a2, v15, a6);
  CGFloat.rounded(_:toScale:)(a2, v15, a7);

  return v16;
}

uint64_t ScreenShareButtonViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ScreenShareButtonViewModel.init(service:)(a1);
  return v2;
}

void *ScreenShareButtonViewModel.init(service:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[8] = 0;
  v1[9] = 0;
  v1[7] = v2;
  outlined init with take of ImageName(a1, v1 + 2);
  return v1;
}

void *ScreenShareButtonViewModel.shareButtonConfig.getter()
{
  if (v0[8])
  {
    v1 = v0[8];
  }

  else
  {
    v2 = v0;
    ScreenShareButtonViewModel.iconButtonConfig.getter();
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    (*(v4 + 32))(v3, v4);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_20_0();
    type metadata accessor for ShareScreenButtonConfig();
    swift_allocObject();
    v1 = ShareScreenButtonConfig.init(buttonConfig:menuItems:didTapAskToScreenShare:)();
    v2[8] = v1;
  }

  return v1;
}

uint64_t closure #2 in ScreenShareButtonViewModel.controlType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
  MEMORY[0x1EEE9AC00](v0);
  ScreenShareButtonViewModel.iconButtonConfig.getter();
  IconButton.init(config:action:)();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type IconButton<ShareMenuActionState> and conformance IconButton<A>, &_s16CommunicationsUI10IconButtonVy15ConversationKit20ShareMenuActionStateVGMd);
  return AnyView.init<A>(_:)();
}

uint64_t ScreenShareButtonViewModel.iconButtonConfig.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVy15ConversationKit20ShareMenuActionStateVGMd);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  if (v0[9])
  {
    v5 = v0[9];
  }

  else
  {
    ScreenShareButtonViewModel.buttonStyle()(v25 - v4);
    v6 = objc_opt_self();
    v7 = [v6 conversationKit];
    v29._object = 0xE000000000000000;
    v8._countAndFlagsBits = OUTLINED_FUNCTION_9_103();
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v10, v7, v9, v29);
    v25[1] = v11._object;
    v25[2] = v11._countAndFlagsBits;

    v12 = [v6 conversationKit];
    v30._object = 0xE000000000000000;
    v13._countAndFlagsBits = OUTLINED_FUNCTION_9_103();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0;
    v25[0] = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v15, v12, v14, v30)._countAndFlagsBits;

    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    LOWORD(v16) = (*(v17 + 16))(v16, v17);
    v19 = v18;
    v21 = v20;
    v22 = v1[5];
    v23 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v22);
    (*(v23 + 16))(v22, v23);
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_20_0();
    v26 = v16 & 0x101;
    v27 = v19;
    v28 = v21 & 0x101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCy15ConversationKit20ShareMenuActionStateVGMd);
    swift_allocObject();
    v5 = IconButtonConfig.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:state:enabled:didTap:)();
    v1[9] = v5;
  }

  return v5;
}

uint64_t ScreenShareButtonViewModel.enabled(for:)(unint64_t a1)
{
  v1 = (a1 >> 37) & 7;
  v2 = v1 - 2;
  if (v1)
  {
    v3 = BYTE4(a1) ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (v2 < 5)
  {
    v3 = 0;
  }

  if (a1 == 3)
  {
    v3 = 0;
  }

  return v3 & 1;
}

Swift::Void __swiftcall ScreenShareButtonViewModel.onAppear()()
{
  swift_beginAccess();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];

  ScreenShareButtonViewModel.observeShareMenuState()();
  ScreenShareButtonViewModel.observeParticipantState()();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.observeShareMenuState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_5_86(v5);
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = OUTLINED_FUNCTION_182();
  v18[2] = v13(v12, v11);
  v14 = [objc_opt_self() mainRunLoop];
  v18[5] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  type metadata accessor for NSRunLoop();
  v16 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v17, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v7 + 8))(v10, v16);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.observeParticipantState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_5_86(v5);
  v7 = v6;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = OUTLINED_FUNCTION_182();
  v20[2] = v13(v12, v11);
  v14 = [objc_opt_self() mainRunLoop];
  v20[5] = v14;
  v15 = type metadata accessor for NSRunLoop.SchedulerOptions();
  OUTLINED_FUNCTION_11_61(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVyyts5NeverOGMd);
  type metadata accessor for NSRunLoop();
  v16 = OUTLINED_FUNCTION_1_19(&lazy protocol witness table cache variable for type AnyPublisher<(), Never> and conformance AnyPublisher<A, B>);
  lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
  OUTLINED_FUNCTION_3_9();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v4, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_20_0();
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in ScreenShareButtonViewModel.observeParticipantState();
  *(v18 + 24) = v17;
  OUTLINED_FUNCTION_22_4();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v19, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVyyts5NeverOGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_182();

  (*(v7 + 8))(v10, v16);
  OUTLINED_FUNCTION_10_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  OUTLINED_FUNCTION_2_106(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall ScreenShareButtonViewModel.didTapScreenShare()()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = OUTLINED_FUNCTION_2_14();
  v4 = v3(v2);
  if (((v4 | v5) & 0x100) != 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v9, v10, "dismissScreenShare (iPhone/iPad)");
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v13, v14, "didTapScreenShare (iPhone/iPad)");
      OUTLINED_FUNCTION_27();
    }
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v15 = OUTLINED_FUNCTION_2_14();
  v16(v15);
}

uint64_t ScreenShareButtonViewModel.didTapAskToScreenShare(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.conversationKit);
  outlined init with copy of Participant(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *&v7[*(v4 + 28)];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(v11 + 4) = v14;
    *v12 = v13;
    outlined destroy of Participant(v7);
    _os_log_impl(&dword_1BBC58000, v9, v10, "Requesting participant with handle: %@ to screen share", v11, 0xCu);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_sSo8NSObjectCSgMd);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  else
  {

    outlined destroy of Participant(v7);
  }

  v15 = v2[5];
  v16 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v15);
  return (*(v16 + 64))(a1, v15, v16);
}

uint64_t closure #1 in ScreenShareButtonViewModel.observeShareMenuState()()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.shareButtonConfig.getter();

    ShareScreenButtonConfig.buttonConfig.getter();

    IconButtonConfig.state.setter();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.shareButtonConfig.getter();

    ShareScreenButtonConfig.buttonConfig.getter();

    IconButtonConfig.enabled.setter();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.updateLabels()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.updateLabels()()
{
  ScreenShareButtonViewModel.shareButtonConfig.getter();
  ShareScreenButtonConfig.buttonConfig.getter();

  IconButtonConfig.state.getter();

  ShareScreenButtonConfig.buttonConfig.getter();

  v0 = [objc_opt_self() conversationKit];
  v1 = "onKit21CancelButtonViewModel";
  if (v7)
  {
    v1 = "$_iconButtonConfig";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
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

uint64_t closure #1 in ScreenShareButtonViewModel.observeParticipantState()()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ScreenShareButtonViewModel.updateMenuItems()();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.updateLabels()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.updateMenuItems()()
{
  ScreenShareButtonViewModel.shareButtonConfig.getter();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 32))(v1, v2);
  ShareScreenButtonConfig.menuItems.setter(v3);
}

uint64_t ScreenShareButtonViewModel.buttonStyle()@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = type metadata accessor for IconButtonWidthRestriction();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Font.Leading();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v29 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVy15ConversationKit20ShareMenuActionStateV_GMd);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v31 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:font:)();

  v30 = *(v8 + 16);
  v33 = v13;
  v30(v10, v13, v7);
  v14 = *(v8 + 80);
  v35 = v8;
  v15 = (v14 + 16) & ~v14;
  v16 = swift_allocObject();
  v17 = *(v8 + 32);
  v17(v16 + v15, v10, v7);
  v32 = v7;
  v30(v10, v13, v7);
  v18 = swift_allocObject();
  v17(v18 + v15, v10, v7);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  v19 = v31;
  static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)();

  v20 = type metadata accessor for _Glass();
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v21 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v20);
  static Color.white.getter();
  static Font.subheadline.getter();
  v23 = v36;
  v22 = v37;
  v24 = v38;
  (*(v37 + 104))(v36, *MEMORY[0x1E6980EA8], v38);
  Font.leading(_:)();

  (*(v22 + 8))(v23, v24);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v25 = v41;
  v26 = v39;
  v27 = v43;
  (*(v41 + 104))(v39, *MEMORY[0x1E6995BD0], v43);
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v25 + 8))(v26, v27);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v21, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v45, &_s7SwiftUI10ShapeStyle_pSgMd);
  (*(v40 + 8))(v19, v42);
  return (*(v35 + 8))(v33, v32);
}

unint64_t closure #5 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  if (*(a1 + 17) != 1 || (*(a1 + 1) & 1) != 0)
  {
    v1 = *MEMORY[0x1E69DDCF8];
    v6 = 0;
    v7 = 0xD000000000000028;
    v8 = 0x80000001BC4F3800;
    v9 = 3;
    v10 = v1;
    v11 = 0;
    v12 = 4;
    v13 = 0;
    v14 = 0;
    v15 = 0xD000000000000028;
    v16 = 0x80000001BC4F3800;
  }

  else
  {
    v1 = *MEMORY[0x1E69DDCF8];
    v6 = 0;
    v7 = 0x616C706572616873;
    v8 = 0xE900000000000079;
    v9 = 3;
    v10 = v1;
    v11 = 0;
    v12 = 4;
    v13 = 0;
    v14 = 0;
    v15 = 0x616C706572616873;
    v16 = 0xE900000000000079;
  }

  v17 = 3;
  v18 = v1;
  v19 = 0;
  v20 = 4;
  v21 = 0;
  v22 = 0;
  v2 = v1;
  outlined init with copy of SymbolImageDescription(&v7, v5);
  outlined destroy of SymbolImageDescription(&v15);
  v3 = v7;

  outlined destroy of SymbolImageDescription(&v7);
  return v3;
}

uint64_t closure #6 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  v3 = IconButtonStyle.SystemSymbol.color.getter();
  v6 = (v1 | v2) & 1;
  v4 = v3(&v6);

  return v4;
}

uint64_t closure #7 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = *(a1 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  v3 = IconButtonStyle.SystemSymbol.background.getter();
  v5 = (v1 | v2) & 1;
  v3(&v5);
}

uint64_t closure #1 in ScreenShareButtonViewModel.shareButtonConfig.getter(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.didTapAskToScreenShare(_:)(a1);
  }

  return result;
}

uint64_t closure #1 in ScreenShareButtonViewModel.iconButtonConfig.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ScreenShareButtonViewModel.didTapScreenShare()();
  }

  return result;
}

uint64_t ScreenShareButtonViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ScreenShareButtonViewModel.__deallocating_deinit()
{
  ScreenShareButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized closure #1 in default argument 3 of static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)@<X0>(uint64_t a1@<X8>)
{
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v2 = type metadata accessor for _Glass();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

{
  return specialized closure #1 in default argument 3 of static IconButtonStyle.SystemSymbol.iosCallControl(name:color:background:glass:font:)(a1);
}

uint64_t partial apply for closure #6 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  OUTLINED_FUNCTION_22(v2);

  return closure #6 in ScreenShareButtonViewModel.buttonStyle()(a1);
}

uint64_t objectdestroy_12Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  OUTLINED_FUNCTION_7_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #7 in ScreenShareButtonViewModel.buttonStyle()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVySb_GMd);
  OUTLINED_FUNCTION_22(v2);

  return closure #7 in ScreenShareButtonViewModel.buttonStyle()(a1);
}

uint64_t ShutterButtonStyle.init(shutterModel:)()
{
  type metadata accessor for ShutterModel();
  OUTLINED_FUNCTION_1_189();
  lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(v0, v1);
  OUTLINED_FUNCTION_46();
  ObservedObject.init(wrappedValue:)();
  State.init(wrappedValue:)();
  return OUTLINED_FUNCTION_46();
}

Swift::Int ShutterButtonStyle.InnerStyle.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ShutterButtonStyle.InnerStyle()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ShutterButtonStyle.InnerStyle.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t key path getter for ShutterButtonStyle.shutterModel : ShutterButtonStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = ShutterButtonStyle.shutterModel.getter();
  *a2 = v3;
  return result;
}

uint64_t ShutterButtonStyle.shutterModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void ShutterButtonStyle.$shutterModel.getter()
{
  OUTLINED_FUNCTION_6_7();
  type metadata accessor for ShutterModel();
  OUTLINED_FUNCTION_1_189();
  lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(v0, v1);

  JUMPOUT(0x1BFB1E3A0);
}

void ShutterButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v21[5] = a5;
  type metadata accessor for AccessibilityChildBehavior();
  OUTLINED_FUNCTION_1();
  v21[1] = v12;
  v21[2] = v11;
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v21 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA15ModifiedContentVyAA6ZStackVyAA05TupleC0VyAA011StrokeShapeC0VyAA4PathVAA15ForegroundStyleVAA05EmptyC0VG_AcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAOyAA08_TrimmedO0VyAQGAA04TintoR0VAUG_12CoreGraphics7CGFloatVQo_SgAIyAIyAIyAIyAIyAA01_oC0VyAA9RectangleVA2_GAA12_FrameLayoutVGAA11_ClipEffectVyAA16RoundedRectangleVGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonR0V05InnerR0OGGA25_GtGGA15_G_Qo_Md);
  OUTLINED_FUNCTION_1();
  v21[3] = v16;
  v21[4] = v17;
  MEMORY[0x1EEE9AC00](v16);
  v21[0] = v21 - v18;
  *v15 = static Alignment.center.getter();
  v15[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA011StrokeShapeD0VyAA4PathVAA15ForegroundStyleVAA05EmptyD0VG_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAKyAA08_TrimmedJ0VyAMGAA04TintjM0VAQG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA8_yA8_yA8_yA8_yAA01_jD0VyAA9RectangleVA0_GAA06_FrameG0VGAA11_ClipEffectVyAA07RoundedZ0VGGAA18_AnimationModifierVySbGGA24_y15ConversationKit013ShutterButtonM0V05InnerM0OGGA25_GtGGMd);
  closure #1 in ShutterButtonStyle.makeBody(configuration:)(a2, a3, a4, a1, v15 + *(v20 + 44), a6);
}

void closure #1 in ShutterButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v86 = a4;
  v88 = a5;
  v74 = type metadata accessor for RoundedRectangle();
  MEMORY[0x1EEE9AC00](v74);
  v81 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGMd);
  MEMORY[0x1EEE9AC00](v70);
  v78 = &v63 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGMd);
  MEMORY[0x1EEE9AC00](v73);
  v79 = &v63 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGMd);
  MEMORY[0x1EEE9AC00](v76);
  v83 = &v63 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGMd);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v63 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v63 - v19;
  v20 = type metadata accessor for TintShapeStyle();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd);
  MEMORY[0x1EEE9AC00](v69);
  v24 = &v63 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_Md);
  v68 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v67 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v75 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v90 = a1;
  v91 = &v63 - v29;
  v92 = a1;
  v93 = a2;
  v94 = a6;
  v95 = a3;
  v30 = Path.init(_:)();
  v31 = *(*a2 + 368);
  v31(v30);
  v32 = 1;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v33 = static Alignment.center.getter();
  v71 = v34;
  v72 = v33;
  v35 = (*(*a2 + 512))();
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    v36 = v90;
    *(&v63 - 4) = v90;
    *(&v63 - 3) = a2;
    *(&v63 - 2) = a6;
    *(&v63 - 1) = a3;
    Path.init(_:)();
    v37 = v104;
    v63 = v103;
    v64 = v102;
    v100 = a6;
    v101 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd);
    State.wrappedValue.getter();
    v38 = v99;
    v39 = TintShapeStyle.init()();
    v31(v39);
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA08_TrimmedC0VyAA4PathVGGAA04TintC5StyleVGMd);
    v42 = v65;
    v41 = v66;
    (*(v65 + 16))(&v24[*(v40 + 52)], v22, v66);
    v43 = v63;
    *v24 = v64;
    *(v24 + 1) = v43;
    v24[32] = v37;
    *(v24 + 5) = 0;
    *(v24 + 6) = v38;
    v44 = v97;
    *(v24 + 56) = v96;
    *(v24 + 72) = v44;
    *(v24 + 11) = v98;
    *&v24[*(v40 + 56)] = 256;
    v45 = static Alignment.center.getter();
    v47 = v46;
    (*(v42 + 8))(v22, v41);
    v48 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA08_TrimmedE0VyAA4PathVGGAA04TintE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd) + 36)];
    *v48 = v45;
    v48[1] = v47;
    v100 = (*(*a2 + 176))();
    v49 = swift_allocObject();
    *(v49 + 16) = v36;
    *(v49 + 24) = a2;
    *(v49 + 32) = a6;
    *(v49 + 40) = a3;
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type StrokeShapeView<_TrimmedShape<Path>, TintShapeStyle, EmptyView> and conformance StrokeShapeView<A, B, C>, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

    v50 = v67;
    View.onChange<A>(of:initial:_:)();

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s7SwiftUI15StrokeShapeViewVyAA08_TrimmedD0VyAA4PathVGAA04TintD5StyleVAA05EmptyE0VGMd);
    (*(v68 + 32))(v91, v50, v89);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v91, v32, 1, v89);
  v51 = v78;
  TintShapeStyle.init()();
  *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA9RectangleVAA04TintC5StyleVGMd) + 56)] = 256;
  v52 = v86;
  v53 = v90;
  ShutterButtonStyle.rectangleSize(from:)(v86, v90, a2);
  ShutterButtonStyle.rectangleSize(from:)(v52, v53, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = &v51[*(v70 + 36)];
  v55 = v106;
  *v54 = v105;
  *(v54 + 1) = v55;
  *(v54 + 2) = v107;
  if (ShutterButtonStyle.resolvedMode(from:)(v52, v53, a2) == 1)
  {
    v56 = 0.5;
  }

  else
  {
    v56 = 0.125;
  }

  v57 = ShutterButtonStyle.rectangleSize(from:)(v52, v53, a2) * v56;
  v58 = *(v74 + 20);
  v59 = *MEMORY[0x1E697F468];
  v60 = type metadata accessor for RoundedCornerStyle();
  v61 = v81;
  (*(*(v60 - 8) + 104))(v81 + v58, v59, v60);
  *v61 = v57;
  v61[1] = v57;
  v62 = &v79[*(v73 + 36)];
  outlined init with take of RoundedRectangle(v61, v62);
  *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd) + 36)) = 256;
  outlined init with take of CaptionSectioner.SpeakerSection?();
  static Animation.interactiveSpring(duration:extraBounce:blendDuration:)();
}

uint64_t sub_1BC3E7B84(uint64_t a1)
{
  v5 = ButtonStyleConfiguration.isPressed.getter();
  v6 = *(v1 + 184);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v7 = v6 + *(*(v1 + 128) + 36);
  *v7 = a1;
  *(v7 + 8) = v5 & 1;
  v8 = static Animation.easeInOut(duration:)();
  v9 = (*(*v2 + 272))();
  v10 = *(v1 + 192);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v11 = v10 + *(*(v1 + 160) + 36);
  *v11 = v8;
  *(v11 + 8) = v9;
  v12 = static Animation.easeInOut(duration:)();
  v13 = (*(*v2 + 224))();
  v14 = *(v1 + 136);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v15 = v14 + *(*(v1 + 176) + 36);
  *v15 = v12;
  *(v15 + 8) = v13 & 1;
  v16 = *(v1 + 200);
  outlined init with take of CaptionSectioner.SpeakerSection?();
  v17 = *(v1 + 120);
  sub_1BBD055B8();
  v18 = *(v1 + 216);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  memcpy((v1 + 352), (v1 + 560), 0x50uLL);
  *(v1 + 432) = 256;
  *(v1 + 434) = *(v3 - 118);
  *(v1 + 438) = *(v3 - 114);
  v19 = *(v1 + 88);
  v20 = *(v1 + 96);
  *(v1 + 440) = v20;
  *(v1 + 448) = v19;
  memcpy(*(v1 + 224), (v1 + 352), 0x68uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08_TrimmedD0VyAEGAA04TintdH0VAIG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA0_yA0_yA0_yA0_yAA01_dE0VyAA9RectangleVATGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedU0VGGAA18_AnimationModifierVySbGGA16_y15ConversationKit013ShutterButtonH0V05InnerH0OGGA17_GtMd);
  sub_1BBD055B8();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v16, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(*(v1 + 248), &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v18, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA9RectangleVAA04TintE5StyleVGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedG0VGGAA18_AnimationModifierVySbGGAUy15ConversationKit013ShutterButtonI0V05InnerI0OGGAVGMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v17, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA011StrokeShapeC0VyAA08_TrimmedI0VyAA4PathVGAA04TintI5StyleVAA05EmptyC0VG_12CoreGraphics7CGFloatVQo_SgMd);
  memcpy((v1 + 456), (v1 + 560), 0x50uLL);
  *(v1 + 536) = 256;
  *(v1 + 538) = *(v3 - 118);
  *(v1 + 542) = *(v3 - 114);
  *(v1 + 544) = v20;
  *(v1 + 552) = v19;
  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v1 + 456, &_s7SwiftUI15StrokeShapeViewVyAA4PathVAA15ForegroundStyleVAA05EmptyE0VGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAA011StrokeShapeG0VyAA4PathVAA15ForegroundStyleVAA05EmptyG0VG_AA0G0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAIyAA08_TrimmedI0VyAKGAA04TintiL0VAOG_12CoreGraphics7CGFloatVQo_SgACyACyACyACyACyAA01_iG0VyAA9RectangleVAZGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonL0V05InnerL0OGGA21_GtGGA11_GMd);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA011StrokeShapeE0VyAA4PathVAA15ForegroundStyleVAA05EmptyE0VG_AA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAGyAA08_TrimmedG0VyAIGAA04TintgJ0VAMG_12CoreGraphics7CGFloatVQo_SgAA15ModifiedContentVyA4_yA4_yA4_yA4_yAA01_gE0VyAA9RectangleVAXGAA12_FrameLayoutVGAA11_ClipEffectVyAA07RoundedW0VGGAA18_AnimationModifierVySbGGA20_y15ConversationKit013ShutterButtonJ0V05InnerJ0OGGA21_GtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(StrokeShapeView<Path, ForegroundStyle, EmptyView>, (<<opaque return type of View.onChange<A>(of:initial:_:)>>.0)?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _FrameLayout>, _ClipEffect<RoundedRectangle>>, _AnimationModifier<Bool>>, _AnimationModifier<ShutterButtonStyle.InnerStyle>>, _AnimationModifier<Bool>>)>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle()
{
  result = lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle;
  if (!lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShutterButtonStyle.InnerStyle and conformance ShutterButtonStyle.InnerStyle);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ShutterButtonStyle.makeBody(configuration:)(double *a1, double *a2, uint64_t a3, double *a4)
{
  ShutterButtonStyle.duration(from:to:)(*a1, *a2, a3, a4);
  static Animation.linear(duration:)();
  withAnimation<A>(_:_:)();
}

double ShutterButtonStyle.duration(from:to:)(double a1, double a2, uint64_t a3, double *a4)
{
  v4 = 0.0;
  if (a1 < a2 && ((*(*a4 + 224))() & 1) == 0)
  {
    return (a2 - a1) * a4[2];
  }

  return v4;
}

double ShutterButtonStyle.rectangleSize(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a3 + 416))();
  v7 = (*a3 + 368);
  v8 = *v7;
  v9 = (*v7)();
  v10 = ButtonStyleConfiguration.isPressed.getter();
  v11 = 0.0;
  if (v10)
  {
    v11 = 3.0;
  }

  v12 = v6 + v9 + v11;
  if (ShutterButtonStyle.resolvedMode(from:)(a1, a2, a3) != 1)
  {
    v12 = v12 + (*(*a3 + 320))() * 0.24;
  }

  v13 = (*a3 + 320);
  v14 = *v13;
  v15 = (*v13)();
  v16 = v8();
  v17 = v15 + v16 + v16;
  v18 = v14();
  (v8)(v18);
  return v17 - (v12 + v12);
}

_BYTE *storeEnumTagSinglePayload for ShutterButtonStyle.InnerStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type ShutterModel and conformance ShutterModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t closure #1 in ShutterButtonStyle.circlePath()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*a3 + 320);
  v5 = *v4;
  (*v4)();
  v6 = (*a3 + 368);
  v7 = *v6;
  (*v6)();
  v5();
  v7();
  v5();
  v7();
  return Path.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
}

uint64_t ShutterButtonStyle.resolvedMode(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*a3 + 272);
  v5 = *v4;
  if ((*v4)() != 2)
  {
    return v5();
  }

  v6 = ButtonStyleConfiguration.isPressed.getter();
  return (*(*a3 + 224))() & ~v6 & 1;
}

uint64_t outlined init with take of RoundedRectangle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *PeoplePickerActionBar.__allocating_init(frame:buttonsStyle:)(char a1)
{
  OUTLINED_FUNCTION_20_2();
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_18_1();
  return PeoplePickerActionBar.init(frame:buttonsStyle:)(a1);
}

ConversationKit::RTTType_optional __swiftcall RTTType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RTTType.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t RTTType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x746365726964;
  }

  return 0x79616C6572;
}

ConversationKit::RTTType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance RTTType@<W0>(Swift::String *a1@<X0>, ConversationKit::RTTType_optional *a2@<X8>)
{
  result.value = RTTType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RTTType@<X0>(uint64_t *a1@<X8>)
{
  result = RTTType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PeoplePickerAction.description.getter(uint64_t a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      return 0x4C6574616572632ELL;
    }

    else
    {
      result = 0x695674726174732ELL;
      switch(a1)
      {
        case 1:
          return result;
        case 2:
          result = 0x737265506464612ELL;
          break;
        case 3:
          result = 0xD000000000000016;
          break;
        case 4:
          result = 0x654D69646E65732ELL;
          break;
        case 5:
          result = 0x6C65636E61632ELL;
          break;
        default:
          result = 0xD000000000000017;
          break;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t static ActionBarButtonsStyle.== infix(_:_:)(char a1, char a2)
{
  switch(a1)
  {
    case 2:
      if (a2 != 2)
      {
        goto LABEL_11;
      }

      break;
    case 3:
      if (a2 != 3)
      {
        goto LABEL_11;
      }

      break;
    case 4:
      if (a2 != 4)
      {
LABEL_11:
        v2 = 0;
        return v2 & 1;
      }

      break;
    default:
      if ((a2 - 2) >= 3u)
      {
        v2 = a2 ^ a1 ^ 1;
        return v2 & 1;
      }

      goto LABEL_11;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t key path getter for PeoplePickerActionBar.delegate : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.delegate : PeoplePickerActionBar(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x118);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t PeoplePickerActionBar.delegate.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t PeoplePickerActionBar.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t PeoplePickerActionBar.delegate.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_30_2();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return OUTLINED_FUNCTION_28_3();
}

uint64_t key path getter for PeoplePickerActionBar.buttonsStyle : PeoplePickerActionBar@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t PeoplePickerActionBar.buttonsStyle.didset(int a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  switch(v5)
  {
    case 2:
      if (a1 == 2)
      {
        return result;
      }

      break;
    case 3:
      if (a1 == 3)
      {
        return result;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        return result;
      }

      break;
    default:
      if ((a1 - 2) >= 3u && ((v5 ^ a1) & 1) == 0)
      {
        return result;
      }

      break;
  }

  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BA940;
  v7 = String.init<A>(reflecting:)();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0))(v10);
}

uint64_t PeoplePickerActionBar.buttonsStyle.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PeoplePickerActionBar.buttonsStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return PeoplePickerActionBar.buttonsStyle.didset(v4);
}

uint64_t PeoplePickerActionBar.buttonsStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_buttonsStyle;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.buttonsStyle.modify(uint64_t a1)
{
  v1 = *a1;
  PeoplePickerActionBar.buttonsStyle.setter(*(*a1 + 32));

  free(v1);
}

uint64_t key path getter for PeoplePickerActionBar.handleToDisplay : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.handleToDisplay : PeoplePickerActionBar(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x148);
  v4 = *a1;
  return v3(v2);
}

void *PeoplePickerActionBar.handleToDisplay.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PeoplePickerActionBar.handleToDisplay.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_handleToDisplay;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for PeoplePickerActionBar.generatingLinksEnabled : PeoplePickerActionBar@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result & 1;
  return result;
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return PeoplePickerActionBar.updateLinkButtonsEnabled()();
  }

  return result;
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return PeoplePickerActionBar.generatingLinksEnabled.didset(v4);
}

uint64_t PeoplePickerActionBar.generatingLinksEnabled.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_generatingLinksEnabled;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.generatingLinksEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  PeoplePickerActionBar.generatingLinksEnabled.setter(*(*a1 + 32));

  free(v1);
}

int8x8_t key path getter for PeoplePickerActionBar.serviceAvailability : PeoplePickerActionBar@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x170))();
  *a2 = v3 & 1;
  v4 = vdupq_n_s64(v3);
  *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1BC4DFB90), vshlq_u64(v4, xmmword_1BC4DFB80))), 0x1000100010001);
  result = vuzp1_s8(*v4.i8, *v4.i8);
  *(a2 + 1) = result.i32[0];
  *(a2 + 5) = BYTE5(v3) & 1;
  return result;
}

uint64_t key path setter for PeoplePickerActionBar.serviceAvailability : PeoplePickerActionBar(unsigned __int8 *a1, void **a2)
{
  v2 = 0x10000000000;
  if (!a1[5])
  {
    v2 = 0;
  }

  v3 = 0x100000000;
  if (!a1[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!a1[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!a1[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!a1[1])
  {
    v6 = 0;
  }

  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x178))(v6 | *a1 | v5 | v4 | v3 | v2);
}

uint64_t PeoplePickerActionBar.serviceAvailability.didset(unint64_t a1)
{
  v3 = a1 & 1;
  v4 = v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability;
  result = swift_beginAccess();
  if (*v4 != v3 || (((a1 >> 8) & 1 ^ v4[1]) & 1) != 0 || (((a1 >> 16) & 1 ^ v4[2]) & 1) != 0 || (((a1 >> 24) & 1 ^ v4[3]) & 1) != 0 || ((BYTE4(a1) & 1 ^ v4[4]) & 1) != 0 || (((a1 >> 40) & 1 ^ v4[5]) & 1) != 0)
  {
    if (one-time initialization token for conversationKit != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BC4BA940;
    v7 = String.init<A>(reflecting:)();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x3C0))(v10);
  }

  return result;
}

uint64_t PeoplePickerActionBar.serviceAvailability.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return OUTLINED_FUNCTION_3_170(*v1);
}

uint64_t PeoplePickerActionBar.serviceAvailability.setter(unint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  swift_beginAccess();
  v4 = *v3;
  *v3 = a1 & 1;
  v5 = vdupq_n_s64(a1);
  *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_1BC4DFB90), vshlq_u64(v5, xmmword_1BC4DFB80))), 0x1000100010001);
  *(v3 + 1) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
  v3[5] = BYTE5(a1) & 1;
  v6 = OUTLINED_FUNCTION_3_170(v4);
  return PeoplePickerActionBar.serviceAvailability.didset(v6);
}

uint64_t PeoplePickerActionBar.serviceAvailability.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_7(v2);
  v3 = (v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar_serviceAvailability);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(v1 + 32) = *v3;
  v9 = (v1 + 32);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  return OUTLINED_FUNCTION_28_3();
}

void PeoplePickerActionBar.serviceAvailability.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = OUTLINED_FUNCTION_3_170(*(*a1 + 32));
  PeoplePickerActionBar.serviceAvailability.setter(v2);

  free(v1);
}

id closure #1 in PeoplePickerActionBar.videoButton.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v14._object = 0xE000000000000000;
  v2._countAndFlagsBits = 0x454D495445434146;
  v2._object = 0xE800000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v14);

  v6 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v5._countAndFlagsBits, v5._object, 0x69662E6F65646976, 0xEA00000000006C6CLL);

  v7 = v6;
  v8 = [v0 conversationKit];
  v15._object = 0xE000000000000000;
  v9._object = 0xEE004F454449565FLL;
  v9._countAndFlagsBits = 0x454D495445434146;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v15);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v12._countAndFlagsBits, v12._object, v7);
  return v7;
}

id static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() buttonWithType_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setShowsLargeContentViewer_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [v12 addInteraction_];

  static PeoplePickerActionBar.createButtonBaseConfiguration(title:symbolName:titleLineBreakMode:)(a1, a2, a3, a4, 5, 0);
  v14 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  UIButton.configuration.setter();
  [v12 setPreferredBehavioralStyle_];
  [v12 setPointerInteractionEnabled_];
  v15 = [v12 titleLabel];
  if (v15)
  {
    v16 = v15;
    UIView.traitOverrides.getter();
    UIMutableTraits._userInterfaceRenderingMode.setter();
    UIView.traitOverrides.setter();
  }

  v17 = [v12 imageView];
  if (v17)
  {
    v18 = v17;
    UIView.traitOverrides.getter();
    UIMutableTraits._userInterfaceRenderingMode.setter();
    UIView.traitOverrides.setter();
  }

  return v12;
}

id closure #1 in PeoplePickerActionBar.audioButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  type metadata accessor for PeoplePickerActionBar();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)();
  static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(v4);

  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  UIButton.configuration.setter();
  [v3 setPointerInteractionEnabled_];
  v6 = v3;
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  [v6 setPreferredBehavioralStyle_];
  v9 = objc_opt_self();
  v10 = v6;
  v11 = [v9 conversationKit];
  v18._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x454E4F48505F5841;
  v12._object = 0xED00004C4C41435FLL;
  v13.value._countAndFlagsBits = 0x61737265766E6F43;
  v13.value._object = 0xEF74694B6E6F6974;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v18);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v15._countAndFlagsBits, v15._object, v10);
  return v10;
}

uint64_t static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(void *a1)
{
  v2 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1BFB21AA0](v4);
  v7 = a1;
  UIButton.Configuration.image.setter();
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC508], v2);
  UIButton.Configuration.cornerStyle.setter();
  if (one-time initialization token for activeButtonBackgroundColor != -1)
  {
    swift_once();
  }

  v9 = static Colors.PeoplePickerViewController.activeButtonBackgroundColor;
  return UIButton.Configuration.baseBackgroundColor.setter();
}

id PeoplePickerActionBar.audioButton.getter(void *a1, uint64_t (*a2)(void))
{
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v5 = OUTLINED_FUNCTION_36_39(v6);

    v4 = 0;
  }

  v7 = v4;
  return v5;
}

id closure #1 in PeoplePickerActionBar.createLinkButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  type metadata accessor for PeoplePickerActionBar();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v4 = @nonobjc UIImage.__allocating_init(systemName:)();
  static PeoplePickerActionBar.createCircledButtonConfiguration(image:)(v4);

  v5 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  UIButton.configuration.setter();
  [v3 setPreferredBehavioralStyle_];
  v6 = v3;
  v7 = [v6 layer];
  [v7 setMasksToBounds_];

  [v6 setPointerInteractionEnabled_];
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 conversationKit];
  v18._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x4C5F455441455243;
  v11._object = 0xEB000000004B4E49;
  v12.value._countAndFlagsBits = 0x61737265766E6F43;
  v12.value._object = 0xEF74694B6E6F6974;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v18);

  outlined bridged method (mbnn) of @objc NSObject.accessibilityLabel.setter(v14._countAndFlagsBits, v14._object, v9);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  LODWORD(v15) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v15];
  return v9;
}

uint64_t PeoplePickerActionBar.cancelButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___cancelButtonConfiguration;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of Participant?(v1 + v9, v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v10 = type metadata accessor for UIButton.Configuration();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  v11 = OUTLINED_FUNCTION_32_2();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, v12);
  closure #1 in PeoplePickerActionBar.cancelButtonConfiguration.getter();
  v13 = OUTLINED_FUNCTION_45_1();
  v14(v13);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of Participant?(v5, v1 + v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in PeoplePickerActionBar.cancelButtonConfiguration.getter()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.gray()();
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC568], v4);
  UIButton.Configuration.buttonSize.setter();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC4F8], v0);
  UIButton.Configuration.cornerStyle.setter();
  v8 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x4C45434E4143;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v9._object = 0xE600000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v14);

  return UIButton.Configuration.title.setter();
}

id closure #1 in PeoplePickerActionBar.cancelButton.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() buttonWithType_];
  PeoplePickerActionBar.cancelButtonConfiguration.getter(v2);
  v4 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  UIButton.configuration.setter();
  [v3 setPointerInteractionEnabled_];
  v5 = v3;
  v6 = [v5 layer];
  [v6 setMasksToBounds_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v7];
  [v5 setPreferredBehavioralStyle_];
  return v5;
}

id PeoplePickerActionBar.isMessagesAppInstalled.getter()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1BFB209B0](0xD000000000000013, 0x80000001BC5082B0);
    v3 = [v1 applicationIsInstalled_];

    if (one-time initialization token for conversationControls != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, &static Logger.conversationControls);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_1BBC58000, v5, v6, "PeoplePickerActionBar: messagesAppInstalled = %{BOOL}d", v7, 8u);
      MEMORY[0x1BFB23DF0](v7, -1, -1);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PeoplePickerActionBar.sharePlayAddPersonButton.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = closure #1 in PeoplePickerActionBar.faceTimeAddPersonButton.getter(ObjectType, a2, a3);
    v11 = *(v3 + v4);
    *(v3 + v4) = v10;
    v6 = v10;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

id closure #1 in PeoplePickerActionBar.faceTimeAddPersonButton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_5_5();
  v6.super.isa = v5;
  OUTLINED_FUNCTION_17_0(v7, 0xEA0000000000454CLL, v8, v9, v6);

  v10 = OUTLINED_FUNCTION_32_2();
  v12 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v10, v11, a2, a3);

  return v12;
}

void __swiftcall PeoplePickerActionBar.addPersonButton(avLess:)(UIButton *__return_ptr retstr, Swift::Bool avLess)
{
  if (avLess)
  {
    PeoplePickerActionBar.sharePlayAddPersonButton.getter();
  }

  else
  {
    PeoplePickerActionBar.faceTimeAddPersonButton.getter();
  }
}

id PeoplePickerActionBar.messagesButton.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___messagesButton);
  }

  else
  {
    swift_getObjectType();
    v4 = closure #1 in PeoplePickerActionBar.messagesButton.getter();
    v3 = OUTLINED_FUNCTION_36_39(v4);

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id closure #1 in PeoplePickerActionBar.messagesButton.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v14._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x534547415353454DLL;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v14);

  v5 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v4._countAndFlagsBits, v4._object, 0x2E6567617373656DLL, 0xEC0000006C6C6966);

  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines_];
  }

  v8 = [v5 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontSizeToFitWidth_];
  }

  v10 = [v5 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setMinimumScaleFactor_];
  }

  v12 = v5;
  [v12 setEnabled_];

  return v12;
}

id PeoplePickerActionBar.inviteWithMessagesButtonStackView.getter(void *a1)
{
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = closure #1 in PeoplePickerActionBar.messageAndFaceTimeStackView.getter();
    v4 = OUTLINED_FUNCTION_36_39(v5);

    v3 = 0;
  }

  v6 = v3;
  return v4;
}

objc_class *PeoplePickerActionBar.audioVideoCallMenu.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit21PeoplePickerActionBar____lazy_storage___audioVideoCallMenu);
  }

  else
  {
    v4 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
    v5 = objc_opt_self();
    v6 = [v5 conversationKit];
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_5_5();
    v7.super.isa = v6;
    OUTLINED_FUNCTION_17_0(v8, v9, v10, v11, v7);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    @nonobjc UIImage.__allocating_init(systemName:)();
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_3_0();
    v13 = OUTLINED_FUNCTION_20_63();
    v14 = [v5 conversationKit];
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_5_5();
    v15.super.isa = v14;
    OUTLINED_FUNCTION_17_0(v16, v17, v18, v19, v15);

    @nonobjc UIImage.__allocating_init(systemName:)();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_3_0();
    v20 = OUTLINED_FUNCTION_20_63();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1BC4BA930;
    *(v21 + 32) = v13;
    *(v21 + 40) = v20;
    preferredElementSize = v21;
    OUTLINED_FUNCTION_3_0();
    v29.value.super.isa = 0;
    v29.is_nil = 0;
    v24.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, v23, v29, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    v25 = *(v4 + v1);
    *(v4 + v1) = v24;
    v3 = v24.super.super.isa;

    v2 = 0;
  }

  v26 = v2;
  return v3;
}

UIMenu closure #1 in PeoplePickerActionBar.audioCallDisambiguationMenu.getter()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAction);
  v0 = objc_opt_self();
  v1 = [v0 conversationKit];
  v2 = 0xE000000000000000;
  swift__string._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x61737265766E6F43;
  v3.value._object = 0xEF74694B6E6F6974;
  v4._countAndFlagsBits = 1280065859;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v1, v5, swift__string);

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  @nonobjc UIImage.__allocating_init(systemName:)();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = [v0 conversationKit];
  swift__stringa._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x454D495445434146;
  v9._object = 0xEE004F494455415FLL;
  v10.value._countAndFlagsBits = 0x61737265766E6F43;
  v10.value._object = 0xEF74694B6E6F6974;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, swift__stringa);

  @nonobjc UIImage.__allocating_init(systemName:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = [objc_opt_self() faceTimeSupplementalDialTelephonyCallStringIncludingFTA_];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v16;
  }

  else
  {
    v15 = 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC4BA930;
  *(v17 + 32) = v7;
  *(v17 + 40) = v12;
  preferredElementSize = v17;
  v18._countAndFlagsBits = v15;
  v18._object = v2;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v21, 2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2);
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioCallDisambiguationMenu.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      v6 = (*((*v2 & *v1) + 0x140))();
      (*(v4 + 8))(v1, v6, 0, ObjectType, v4);

      swift_unknownObjectRelease();
      v1 = v6;
    }
  }
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioVideoCallMenu.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      swift_getObjectType();
      v2 = OUTLINED_FUNCTION_45_1();
      v3(v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t key path getter for PeoplePickerActionBar.audioVideoDropdownViewModel : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t closure #1 in PeoplePickerActionBar.audioVideoDropdownViewModel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x454D495445434146;
  v2.value._countAndFlagsBits = 0x61737265766E6F43;
  v2.value._object = 0xEF74694B6E6F6974;
  v1._object = 0xE800000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  static Color.green.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  return DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
}

void closure #1 in closure #1 in PeoplePickerActionBar.audioVideoDropdownViewModel.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong videoButtonTapped];
  }
}

uint64_t key path getter for PeoplePickerActionBar.inviteWithMessageDropDownViewModel : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t PeoplePickerActionBar.audioVideoDropdownViewModel.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t closure #1 in PeoplePickerActionBar.inviteWithMessageDropDownViewModel.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC524AE0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  static Color.green.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for DropdownViewModel(0);
  swift_allocObject();
  return DropdownViewModel.init(primaryText:primaryColor:symbolName:primaryAction:menuItems:isEnabled:)();
}

void closure #1 in closure #1 in PeoplePickerActionBar.inviteWithMessageDropDownViewModel.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ((*((*MEMORY[0x1E69E7D40] & *Strong) + 0x110))())
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, 3, 128, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t key path getter for PeoplePickerActionBar.inviteWithMessagesButton : PeoplePickerActionBar@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result;
  return result;
}

id PeoplePickerActionBar.videoButton.getter(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id closure #1 in PeoplePickerActionBar.inviteWithMessagesButton.getter()
{
  v0 = [objc_opt_self() conversationKit];
  v13._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x61737265766E6F43;
  v1.value._object = 0xEF74694B6E6F6974;
  v2._object = 0x80000001BC524AE0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v13);

  v5 = static PeoplePickerActionBar.createPeoplePickerButton(title:symbolName:)(v4._countAndFlagsBits, v4._object, 0x2E6567617373656DLL, 0xEC0000006C6C6966);

  v6 = [v5 titleLabel];
  if (v6)
  {
    v7 = v6;
    [v6 setNumberOfLines_];
  }

  v8 = [v5 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontSizeToFitWidth_];
  }

  v10 = [v5 titleLabel];
  if (v10)
  {
    v11 = v10;
    [v10 setMinimumScaleFactor_];
  }

  return v5;
}