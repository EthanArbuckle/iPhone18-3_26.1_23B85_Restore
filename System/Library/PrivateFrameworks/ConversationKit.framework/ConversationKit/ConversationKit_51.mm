void SystemBannerHostViewController.updateSystemApertureElement()()
{
  OUTLINED_FUNCTION_287();
  if (!v1)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v14, static Logger.banners);
    oslog = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(oslog, v15))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_20_43();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_24(v16);
    v13 = "Unable to updateSystemApertureElement since we are not in SystemAperture";
LABEL_25:
    OUTLINED_FUNCTION_7_14(&dword_1BBC58000, v7, v8, v13, v9, v10, v11, v12, v32, oslog);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
LABEL_26:

    return;
  }

  v2 = v0;
  v3 = [objc_msgSend(v0 systemApertureElementContext)];
  swift_unknownObjectRelease();
  if (v3)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v4, static Logger.banners);
    oslog = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_24(v6);
    v13 = "Unable to updateSystemApertureElement without valid context";
    goto LABEL_25;
  }

  if (![v0 isViewLoaded] || (v17 = objc_msgSend(v0, sel_parentViewController)) == 0)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v29, static Logger.banners);
    oslog = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_173_0();
    if (!os_log_type_enabled(oslog, v30))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_20_43();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_24(v31);
    v13 = "[SystemAperture] systemApertureElementContext.setElementNeedsUpdate() requires isViewLoaded and parent != nil";
    goto LABEL_25;
  }

  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v18, static Logger.banners);
  v19 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v20 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_20_43();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_39_2(v22);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v23, v24, v25, v26, v27, 2u);
    v28 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v28);
  }

  [objc_msgSend(v2 systemApertureElementContext)];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SystemBannerHostViewController.requestPreferredLayoutMode()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_39_2(v6);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    v12 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v12);
  }

  [objc_msgSend(v1 systemApertureElementContext)];
  swift_unknownObjectRelease();
  [objc_msgSend(v1 systemApertureElementContext)];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall SystemBannerHostViewController.updateSystemApertureElementIsPresentingMenu(_:)(Swift::Bool a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B8))();
  OUTLINED_FUNCTION_27_15();
  if (a1)
  {
    (*(v3 + 168))(0xD000000000000017, 0x80000001BC510470, 0);
    v4 = &selRef_elementWillPresentMenu;
  }

  else
  {
    (*(v3 + 176))(0xD000000000000017, 0x80000001BC510450);
    v4 = &selRef_elementDidDismissMenu;
  }

  [objc_msgSend(v1 systemApertureElementContext)];

  swift_unknownObjectRelease();
}

uint64_t key path getter for SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene : SystemBannerHostViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x448))();
  *a2 = result & 1;
  return result;
}

void SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.banners);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BBC58000, v4, v5, "[SystemAperture] Forcing aperture suppression", v6, 2u);
      MEMORY[0x1BFB23DF0](v6, -1, -1);
    }

    v7 = v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode;
    *v7 = 3;
    *(v7 + 8) = 0;
    SystemBannerHostViewController.nextSystemApertureLayoutMode.didset();
  }

  SystemBannerHostViewController.updateSystemApertureElement()();
}

uint64_t SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

void SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene.didset();
}

uint64_t SystemBannerHostViewController.forceSuppressSystemApertureOverAssociatedScene.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t SystemBannerHostViewController.controlsManager.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *SystemBannerHostViewController.shouldShowSystemApertureOverAssociatedScene.getter()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_15_49();
  if ((*(v0 + 1096))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_51();
  v2 = (*(v1 + 440))();
  ConversationControlsManager.wantsCallWaitingInSystemAperture.getter();
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_51();
  result = (*(v5 + 416))();
  if (result)
  {
    v7 = [result isAmbient];
    swift_unknownObjectRelease();
    return (v7 ^ 1);
  }

  return result;
}

void SystemBannerHostViewController.handleWantsCallWaitingChanged()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_182_0(v6);
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    v12 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v12);
  }

  OUTLINED_FUNCTION_293();
  v14 = (*(v13 + 1120))();
  v15 = v14;
  if ((v14 & 1) == *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isShowingSystemApertureOverAssociatedScene))
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v16))
    {
      goto LABEL_11;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v15 & 1;
    v18 = "[SystemAperture] isShowingSystemApertureOverAssociatedScene is %{BOOL}d (unchanged)";
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isShowingSystemApertureOverAssociatedScene) = v14 & 1;
    SystemBannerHostViewController.updateSystemApertureElement()();
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v16))
    {
      goto LABEL_11;
    }

    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v15 & 1;
    v18 = "[SystemAperture] isShowingSystemApertureOverAssociatedScene updated to %{BOOL}d (changed)";
  }

  _os_log_impl(&dword_1BBC58000, oslog, v16, v18, v17, 8u);
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x1BFB23DF0]();
LABEL_11:
}

Swift::Void __swiftcall SystemBannerHostViewController.handleLockScreenStatusChanged()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_39_2(v6);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    v12 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v12);
  }

  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_293();
  (*(v14 + 440))();
  OUTLINED_FUNCTION_13_62();
  (*((*v13 & v15) + 0x2A0))();
  v17 = v16;

  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 464))(ObjectType, v17);
  swift_unknownObjectRelease();
  if (v19)
  {
    OUTLINED_FUNCTION_293();
    v21 = (*(v20 + 416))();
    if (v21)
    {
      if ([v21 isSpringBoardLocked])
      {
        OUTLINED_FUNCTION_293();
        v23 = (*(v22 + 696))();
        (*(*v23 + 184))(0xD000000000000012, 0x80000001BC510490);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation) == 1)
    {

      SystemBannerHostViewController.updateSystemApertureElement()();
    }
  }
}

Swift::Void __swiftcall SystemBannerHostViewController.invalidateAlertingAssertonIfFullScreen()()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2B8))();
  OUTLINED_FUNCTION_27_15();
  (*(v1 + 200))();
}

void SystemBannerHostViewController.dismissBanner(for:animated:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  a23 = v26;
  a24 = v30;
  v32 = v31;
  a12 = *MEMORY[0x1E69E9840];
  if ((*(v24 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_destination + 8) & 1) == 0 && (v33 = v24, v34 = v29, v35 = v28, v36 = v27, v25 = *(v24 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_destination), (*((*MEMORY[0x1E69E7D40] & *v24) + 0x308))(), v37) && (v38 = v37, type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BNBannerSource), v39 = OUTLINED_FUNCTION_78(), (v41 = @nonobjc BNBannerSource.__allocating_init(for:forRequesterIdentifier:)(v39, v40, v38)) != 0))
  {
    v42 = v41;
    v43 = MEMORY[0x1BFB209B0](v36, v35);
    v44 = MEMORY[0x1BFB209B0](*(v33 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requestIdentifier), *(v33 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requestIdentifier + 8));
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
    v46 = Dictionary.init(dictionaryLiteral:)();
    a11 = 0;
    v47 = outlined bridged method (mnnnbnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(v44, v43, v34 & 1, v46, &a11, v42);

    v48 = a11;
    if (v47)
    {

      if (v32)
      {
        v32(1);
      }
    }

    else
    {
      v56 = v48;
      v57 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v58, static Logger.banners);
      v59 = v57;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v60, v61))
      {
        OUTLINED_FUNCTION_13_10();
        v62 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v63 = swift_slowAlloc();
        a11 = v63;
        *v62 = 136315138;
        v64 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        v65 = String.init<A>(describing:)();
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &a11);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_1BBC58000, v60, v61, "Unable to revoke presentable, error: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
      }

      if (v32)
      {
        v32(0);
      }
    }
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v49, static Logger.banners);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    v52 = OUTLINED_FUNCTION_25_38();
    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_20_43();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_182_0(v54);
      _os_log_impl(&dword_1BBC58000, v50, v51, "Unable to get Banner Source for banner dismissal, likely because the HUD wasn't presented by BannerKit", v25, 2u);
      v55 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v55);
    }

    if (v32)
    {
      v32(0);
    }
  }

  OUTLINED_FUNCTION_62();
}

Swift::Void __swiftcall SystemBannerHostViewController.systemApertureTouchInsetsUpdated(to:)(UIEdgeInsets to)
{
  OUTLINED_FUNCTION_287();
  if (v2)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.banners);
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = OUTLINED_FUNCTION_25_38();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_44();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v24 = swift_slowAlloc();
      *v9 = 136315394;
      type metadata accessor for UIEdgeInsets(0);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = [v4 view];

      if (!v13)
      {
LABEL_16:
        __break(1u);
        return;
      }

      [v13 _touchInsets];

      v14 = String.init<A>(reflecting:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v24);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1BBC58000, v5, v6, "[SystemAperture] touchInsets updated to %s from %s", v9, 0x16u);
      swift_arrayDestroy();
      v17 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v17);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_293();
    v19 = (*(v18 + 720))();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 view];

      if (!v21)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_35_13(v21, sel__setTouchInsets_);
    }

    v22 = [v4 view];
    if (v22)
    {
      v23 = v22;
      OUTLINED_FUNCTION_35_13(v22, sel__setTouchInsets_);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }
}

Swift::Void __swiftcall SystemBannerHostViewController.deepLinkToFullScreenCallUI()()
{
  v1 = v0;
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v2, static Logger.banners);
  v3 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v4 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_20_43();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_39_2(v6);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    v12 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v12);
  }

  v13 = v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode;
  *v13 = 3;
  *(v13 + 8) = 0;
  SystemBannerHostViewController.nextSystemApertureLayoutMode.didset();
  OUTLINED_FUNCTION_11_23();
  v15 = (*((*MEMORY[0x1E69E7D40] & v14) + 0x1A0))();
  if (v15)
  {
    [v15 deepLinkToFullScreenCallUI];

    swift_unknownObjectRelease();
  }
}

void *SystemBannerHostViewController.deepLinkToFullScreenCallDetailsView()(SEL *a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall SystemBannerHostViewController.controlsPreferredContentSizeChanged(presentingMenu:)(Swift::Bool presentingMenu)
{
  OUTLINED_FUNCTION_63_0();
  v64 = v2;
  v65 = v3;
  v4 = v1;
  v6 = v5;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x400))();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion;
    if (!*&v1[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion])
    {
      v8 = [v1 presentableGestureRecognizerPriorityContext];
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0x1BFB209B0](0xD000000000000023, 0x80000001BC5104B0);
        v11 = [v9 acquireGestureRecognizerDefaultPriorityAssertionForReason_];
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0;
      }

      SystemBannerHostViewController.gesturePriorityAssertion.willset();
      *&v4[v7] = v11;
      swift_unknownObjectRelease();
      if (one-time initialization token for banners != -1)
      {
        OUTLINED_FUNCTION_0_165();
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v12, static Logger.banners);
      v13 = v4;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_13_10();
        v16 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v17 = swift_slowAlloc();
        v61 = v17;
        *v16 = 136315138;
        v63[0] = *&v4[v7];
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo49SBUIPresentableGestureRecognizerPriorityAssertion_pSgMd);
        v18 = String.init<A>(describing:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v61);

        *(v16 + 4) = v20;
        OUTLINED_FUNCTION_219();
        _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        v26 = OUTLINED_FUNCTION_2_35();
        MEMORY[0x1BFB23DF0](v26);
        v27 = OUTLINED_FUNCTION_3_126();
        MEMORY[0x1BFB23DF0](v27);
      }
    }
  }

  else
  {
    SystemBannerHostViewController.gesturePriorityAssertion.willset();
    *&v1[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion] = 0;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_293();
  v29 = (*(v28 + 848))();
  if (v29)
  {
    v30 = v29;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v31, static Logger.banners);
    v32 = v4;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_13_10();
      v35 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v36 = swift_slowAlloc();
      v63[0] = v36;
      *v35 = 136315138;
      [v32 preferredContentSize];
      v61 = v37;
      v62 = v38;
      type metadata accessor for CGSize(0);
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v63);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1BBC58000, v33, v34, "[System] Asking presentableContext for update with size %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v42 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v42);
      v43 = OUTLINED_FUNCTION_3_126();
      MEMORY[0x1BFB23DF0](v43);
    }

    [v30 setHostNeedsUpdate];
    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v44, static Logger.banners);
    v45 = v4;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_13_10();
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v49 = swift_slowAlloc();
      v63[0] = v49;
      *v48 = 136315138;
      [v45 preferredContentSize];
      v61 = v50;
      v62 = v51;
      type metadata accessor for CGSize(0);
      v52 = String.init<A>(reflecting:)();
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v63);

      *(v48 + 4) = v54;
      OUTLINED_FUNCTION_132();
      _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v60 = OUTLINED_FUNCTION_3_126();
      MEMORY[0x1BFB23DF0](v60);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }
  }

  OUTLINED_FUNCTION_62();
}

uint64_t SystemBannerHostViewController.menuPresented.getter()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2D0))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    ObjectType = swift_getObjectType();
    LOBYTE(v4) = (*(v4 + 64))(ObjectType, v4);

    return v4 & 1;
  }

  return result;
}

uint64_t SystemBannerHostViewController.isPresentingStickyNotice.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x208))(v11);
  v1 = v12;
  if (v12)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = *(v1 - 8);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_8();
    v6 = v5 - v4;
    (*(v3 + 16))(v5 - v4);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit6Notice_pSgMd);
    v7 = OUTLINED_FUNCTION_44_0();
    v9 = v8(v7);
    (*(v3 + 8))(v6, v1);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit6Notice_pSgMd);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t SystemBannerHostViewController.captureGroup.getter()
{

  SystemBannerHostViewController.captureOnlyBackdropView.getter();
  return OUTLINED_FUNCTION_44_0();
}

void SystemBannerHostViewController.userInteractionWillBeginForBanner(for:)()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  v2 = (*(v1 + 440))();
  (*((*v0 & *v2) + 0xAD8))();
}

void SystemBannerHostViewController.userInteractionDidEndForBanner(for:)()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  v2 = (*(v1 + 440))();
  (*((*v0 & *v2) + 0xAD0))();
}

void @objc SystemBannerHostViewController.userInteractionWillBeginForBanner(for:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

void SystemBannerHostViewController.presentableDidDisappear(asBanner:withReason:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  OUTLINED_FUNCTION_13_2();
  v15 = MEMORY[0x1E69E7D40];
  v17 = *MEMORY[0x1E69E7D40] & v16;
  v94 = *(v17 + 0x208);
  v95 = v17 + 520;
  v94(&v102);
  if (v103)
  {
    v91 = v6;
    outlined init with take of TapInteractionHandler(&v102, &v98);
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v18, static Logger.banners);
    outlined init with copy of IDSLookupManager(&v98, &v102);
    v19 = v3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_9_44();
      v22 = swift_slowAlloc();
      v92 = v11;
      v23 = v22;
      OUTLINED_FUNCTION_8_15();
      v89 = swift_slowAlloc();
      v97 = v89;
      *v23 = 136315394;
      v90 = v3;
      v24 = v4;
      v25 = v104;
      __swift_project_boxed_opaque_existential_1(&v102, v103);
      v26 = OUTLINED_FUNCTION_246();
      v27 = v25;
      v4 = v24;
      v28(v26, v27);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v32 = v91;
      (*(v91 + 8))(v14, v4);
      __swift_destroy_boxed_opaque_existential_1(&v102);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v97);
      OUTLINED_FUNCTION_246();
      v3 = v90;

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      v96 = v3;
      v33 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24BNBannerRevocationReasonaSgMd);
      v34 = String.init<A>(describing:)();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v97);
      OUTLINED_FUNCTION_28_0();

      *(v23 + 14) = v29;
      v36 = v21;
      v6 = v32;
      _os_log_impl(&dword_1BBC58000, v20, v36, "presentableDidDisappear for noticeUUID: %s, reason: %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v11 = v92;
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();

      __swift_destroy_boxed_opaque_existential_1(&v98);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v98);
      __swift_destroy_boxed_opaque_existential_1(&v102);
      v6 = v91;
    }

    v15 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v92 = v11;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v102, &_s15ConversationKit6Notice_pSgMd);
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v37, static Logger.banners);
    v38 = v3;
    v39 = v0;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_9_44();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v98 = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v39[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier], *&v39[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier + 8], &v98);
      *(v42 + 12) = 2080;
      *&v102 = v3;
      v43 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24BNBannerRevocationReasonaSgMd);
      v44 = String.init<A>(describing:)();
      v46 = v4;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v98);

      *(v42 + 14) = v47;
      v4 = v46;
      _os_log_impl(&dword_1BBC58000, v40, v41, "presentableDidDisappear for identifier: %s, reason: %s", v42, 0x16u);
      swift_arrayDestroy();
      v15 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v48 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v48);
    }

    v11 = v92;
  }

  SystemBannerHostViewController.panGestureProxy.setter(0);
  v49 = *(v1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_dismissalPreventionAssertion);
  if (v49)
  {
    [v49 invalidate];
  }

  if (!v3)
  {
    goto LABEL_28;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {

    v57 = 1;
    v56 = 1;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_78();
  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {
    v56 = 1;
    v57 = 1;
    goto LABEL_31;
  }

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;
  if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
  {
  }

  else
  {
    OUTLINED_FUNCTION_78();
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v63 & 1) == 0)
    {
LABEL_28:
      v57 = 0;
      v56 = 0;
      goto LABEL_31;
    }
  }

  v57 = 0;
  v56 = 2;
LABEL_31:
  OUTLINED_FUNCTION_26_37();
  v65 = (*(v64 + 416))();
  if (v65)
  {
    [v65 didDismiss:v1 reason:v56];
    v65 = swift_unknownObjectRelease();
  }

  if (v57)
  {
    OUTLINED_FUNCTION_26_37();
    (*(v66 + 496))(&v98);
    if (v101 == 7)
    {
      v67 = vorrq_s8(v99, v100);
      v68 = vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
      if ((v98 & 0xFFFFFFFFFFFFFFFELL) == 0xC && !*&v68)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4();
        }

        v69 = static NameAndPhotoUtilities.shared;
        OUTLINED_FUNCTION_26_37();
        (*(v70 + 440))();
        OUTLINED_FUNCTION_13_62();
        (*((*v15 & v71) + 0x2A0))();
        v73 = v72;

        swift_getObjectType();
        OUTLINED_FUNCTION_246();
        v74 = swift_unknownObjectRetain();
        specialized NameAndPhotoUtilities.denySendingNameAndPhoto(using:)(v74, v69, v1, v73);
LABEL_45:
        v65 = swift_unknownObjectRelease_n();
        goto LABEL_47;
      }

      if (v98 == 19 && !*&v68)
      {
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_18_4();
        }

        v75 = static NameAndPhotoUtilities.shared;
        OUTLINED_FUNCTION_26_37();
        (*(v76 + 440))();
        OUTLINED_FUNCTION_13_62();
        (*((*v15 & v77) + 0x2A0))();
        v79 = v78;

        swift_getObjectType();
        OUTLINED_FUNCTION_246();
        v80 = swift_unknownObjectRetain();
        specialized NameAndPhotoUtilities.denyIncomingName(from:)(v80, v75, v1, v79);
        goto LABEL_45;
      }
    }

    v65 = outlined destroy of ConversationControlsType(&v98);
  }

LABEL_47:
  (v94)(&v98, v65);
  if (v100.i64[0])
  {
    v81 = v100.i64[1];
    __swift_project_boxed_opaque_existential_1(&v98, v100.i64[0]);
    v82 = v93;
    v83 = OUTLINED_FUNCTION_28_0();
    v84(v83, v81);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v98, &_s15ConversationKit6Notice_pSgMd);
    v85 = (*(v6 + 32))(v11, v82, v4);
    v86 = (*((*v15 & *v1) + 0x1B8))(v85);
    v87 = *&v86[OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_noticeCoordinator];

    ConversationControlsNoticeCoordinator.noticeDismissed(noticeUUID:dismissContext:)();
    (*(v6 + 8))(v11, v4);
  }

  else
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v98, &_s15ConversationKit6Notice_pSgMd);
  }

  MSNMonitorEndException();
  OUTLINED_FUNCTION_30_0();
}

uint64_t SystemBannerHostViewController.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requestIdentifier);

  return v1;
}

double SystemBannerHostViewController.bannerContentOutsets.getter()
{
  OUTLINED_FUNCTION_287();
  if (v0)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  static Layout.ConversationControls.values.getter(v2);
  return v2[3];
}

BOOL SystemBannerHostViewController.isTouchOutsideDismissalEnabled.getter()
{
  OUTLINED_FUNCTION_262();
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_49();
  v3 = (*(v2 + 496))(v24);
  v11 = OUTLINED_FUNCTION_57_14(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, v22, v23, v24[0]);
  outlined destroy of ConversationControlsType(&v19);
  outlined destroy of ConversationControlsType(v24);
  if (v11)
  {
    OUTLINED_FUNCTION_14_51();
    (*(v12 + 440))();
    OUTLINED_FUNCTION_13_62();
    v14 = (*((*v1 & v13) + 0x840))();

    if (v14)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_51();
  if ((*(v15 + 1240))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_51();
  (*(v17 + 520))(v24);
  v16 = v24[3] == 0;
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v24, &_s15ConversationKit6Notice_pSgMd);
  return v16;
}

uint64_t SystemBannerHostViewController.isDraggingInteractionEnabled.getter()
{
  OUTLINED_FUNCTION_104_1();
  if ((*(v0 + 1240))())
  {
    v1 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_104_1();
    v3 = (*(v2 + 496))(v18);
    v11 = OUTLINED_FUNCTION_57_14(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18[0]);
    outlined destroy of ConversationControlsType(&v13);
    outlined destroy of ConversationControlsType(v18);
    v1 = v11 ^ 1;
  }

  return v1 & 1;
}

id SystemBannerHostViewController.bannerSizeTransitionAnimationSettings.getter()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x4D8))())
  {
    *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation) = 1;
    v1 = [objc_opt_self() settingsWithDuration_];
  }

  else if (*(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation))
  {
    *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation) = 0;
    v1 = [objc_opt_self() settingsWithDuration_];
  }

  else
  {
    v3.receiver = v0;
    v3.super_class = type metadata accessor for SystemBannerHostViewController();
    v1 = objc_msgSendSuper2(&v3, sel_bannerSizeTransitionAnimationSettings);
  }

  return v1;
}

CGSize __swiftcall SystemBannerHostViewController.preferredContentSize(withPresentationSize:containerSize:)(CGSize withPresentationSize, CGSize containerSize)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  (*(v3 + 1032))();
  OUTLINED_FUNCTION_13_2();
  v5 = (*((*v2 & v4) + 0x2D0))();
  if (v5)
  {
    v6 = v5;
    [v5 preferredContentSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = 0.0;
    v10 = 0.0;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

id SystemBannerHostViewController.systemApertureElementViewController.getter()
{
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v0, static Logger.banners);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_25(v2))
  {
    OUTLINED_FUNCTION_20_43();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_0(v3);
    OUTLINED_FUNCTION_132();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
  }

  return v10;
}

uint64_t SystemBannerHostViewController.activeLayoutMode.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activeLayoutMode;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t SystemBannerHostViewController.activeLayoutMode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activeLayoutMode;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for SystemBannerHostViewController.activeLayoutMode : SystemBannerHostViewController@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  return result;
}

uint64_t SystemBannerHostViewController.canRequestAlertingAssertion.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t SystemBannerHostViewController.canRequestAlertingAssertion.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return SystemBannerHostViewController.canRequestAlertingAssertion.didset(v4);
}

uint64_t key path getter for SystemBannerHostViewController.canRequestAlertingAssertion : SystemBannerHostViewController@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x570))();
  *a2 = result & 1;
  return result;
}

uint64_t SystemBannerHostViewController.canRequestAlertingAssertion.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ConversationControlsRecipe();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion;
  result = swift_beginAccess();
  if (*(v2 + v16) == v3)
  {
    return result;
  }

  v18 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D0))(result);
  if (!v18)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  v20 = v18;
  v21 = v19;
  ObjectType = swift_getObjectType();
  (*(v21 + 32))(ObjectType, v21);

  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  outlined init with take of ConversationControlsRecipe(v12, v15);
  outlined init with copy of ConversationControlsType(v15, &v25);
  if (v28 == 3)
  {
    outlined destroy of ConversationControlsType(&v25);
  }

  else if (v28 != 7 || v25 != 4 || (v23 = vorrq_s8(v26, v27), *&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL))))
  {
    outlined destroy of ConversationControlsType(&v25);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
    outlined init with copy of ConversationControlsRecipe(v15, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
    SystemBannerHostViewController.alertIfNeededForRecipeTransition(from:to:)(v9, v6);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  }

  return _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v15, type metadata accessor for ConversationControlsRecipe);
}

void (*SystemBannerHostViewController.canRequestAlertingAssertion.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion;
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  *(v1 + 32) = *(v0 + v3);
  return SystemBannerHostViewController.canRequestAlertingAssertion.modify;
}

void SystemBannerHostViewController.canRequestAlertingAssertion.modify(uint64_t a1)
{
  v1 = *a1;
  SystemBannerHostViewController.canRequestAlertingAssertion.setter(*(*a1 + 32));

  free(v1);
}

void SystemBannerHostViewController.nextSystemApertureLayoutMode.didset()
{
  if ((*(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode + 8) & 1) == 0)
  {
    [objc_msgSend(v0 systemApertureElementContext)];
    swift_unknownObjectRelease();
    v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x438);

    v1();
  }
}

void SystemBannerHostViewController.preferredLayoutMode.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v71 - v4;
  OUTLINED_FUNCTION_13_2();
  v6 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & v7) + 0x1B8);
  v9 = v8();
  v10 = *(v9 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController);

  LOBYTE(v9) = [v10 overlayOpen];
  if (v9)
  {
    goto LABEL_29;
  }

  v11 = &v1[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode];
  if ((v1[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode + 8] & 1) == 0)
  {
    v32 = *v11;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v33, static Logger.banners);
    v34 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v35 = OUTLINED_FUNCTION_12_64();
    if (os_log_type_enabled(v35, v36))
    {
      OUTLINED_FUNCTION_13_10();
      v37 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v38 = swift_slowAlloc();
      v71 = v32;
      v72 = v38;
      *v37 = 136315138;
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v72);

      *(v37 + 4) = v41;
      OUTLINED_FUNCTION_11_44();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v47 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v47);
      v48 = OUTLINED_FUNCTION_3_126();
      MEMORY[0x1BFB23DF0](v48);
    }

    *v11 = 0;
    v11[8] = 1;
    SystemBannerHostViewController.nextSystemApertureLayoutMode.didset();
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_41_1();
  if ((*(v12 + 1448))() != 4)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v49, static Logger.banners);
    v28 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v50))
    {
      OUTLINED_FUNCTION_20_43();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_0(v51);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_41_1();
  v14 = (*(v13 + 1456))();
  if (!v14 || (v14, OUTLINED_FUNCTION_41_1(), (v16 = (*(v15 + 1464))()) == 0) || (v16, OUTLINED_FUNCTION_41_1(), (v18 = (*(v17 + 1472))()) == 0))
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v57, static Logger.banners);
    v28 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_25(v58))
    {
      goto LABEL_28;
    }

LABEL_27:
    OUTLINED_FUNCTION_20_43();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_0(v59);
    OUTLINED_FUNCTION_132();
    _os_log_impl(v60, v61, v62, v63, v64, 2u);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
LABEL_28:

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_41_1();
  v20 = (*(v19 + 720))();
  if (!v20)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v65, static Logger.banners);
    v28 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_25(v66))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v22 = v20;
  v23 = v21;
  ObjectType = swift_getObjectType();
  (*(v23 + 32))(ObjectType, v23);
  v25 = type metadata accessor for ConversationControlsRecipe();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v25);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v5, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  if (EnumTagSinglePayload == 1)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v27, static Logger.banners);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_25(v29))
    {
      OUTLINED_FUNCTION_20_43();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_39_2(v30);
      _os_log_impl(&dword_1BBC58000, v28, OS_LOG_TYPE_INFO, "[SystemAperture] preferredLayoutMode is .custom (by default) since no recipe available", v5, 2u);
      v31 = OUTLINED_FUNCTION_3_126();
      MEMORY[0x1BFB23DF0](v31);
    }

    goto LABEL_28;
  }

  if (Features.callManagerEnabled.getter() & 1) != 0 && (v8(), OUTLINED_FUNCTION_13_62(), v68 = (*((*v6 & v67) + 0x2B0))(), v1, (v68) && (OUTLINED_FUNCTION_41_1(), (v70 = (*(v69 + 416))()) != 0))
  {
    [v70 isAmbient];

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_29:
  OUTLINED_FUNCTION_30_0();
}

uint64_t SystemBannerHostViewController.maximumLayoutMode.getter()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if ((static SensitiveContentController.shieldState & 1) == 0)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v10, static Logger.banners);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_25(v12))
    {
      OUTLINED_FUNCTION_20_43();
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_0(v13);
      OUTLINED_FUNCTION_132();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
    }

    return 3;
  }

  OUTLINED_FUNCTION_15_49();
  v1 = (*(v0 + 440))();
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit27ConversationControlsManager_gameOverlayController);

  LOBYTE(v1) = [v2 overlayOpen];
  if (v1)
  {
    return 3;
  }

  OUTLINED_FUNCTION_15_49();
  v4 = (*(v3 + 720))();
  if (!v4)
  {
    return 4;
  }

  v6 = v4;
  v7 = v5;
  ObjectType = swift_getObjectType();
  (*(v7 + 80))(v34, ObjectType, v7);

  if (v34[0] == 1)
  {
    return 4;
  }

  v9 = v38;
  v39[0] = v34[0];
  v39[1] = v34[1];
  OUTLINED_FUNCTION_33_3(v39);
  v40 = v35;
  OUTLINED_FUNCTION_33_3(&v40);
  v41 = v36;
  OUTLINED_FUNCTION_33_3(&v41);
  v42 = v37;
  OUTLINED_FUNCTION_33_3(&v42);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v20, static Logger.banners);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_13_10();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136315138;
    v27 = SBUISystemApertureLayoutModeDescription();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_80_0();

    v30 = OUTLINED_FUNCTION_79_10(v28, v29, &v33);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_1BBC58000, v21, v22, "Overridding the default maximum layout mode with %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = OUTLINED_FUNCTION_2_35();
    MEMORY[0x1BFB23DF0](v31);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0](v32);
  }

  return v9;
}

void *SystemBannerHostViewController.leadingView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_leadingViewContainer);
  v2 = v1;
  return v1;
}

void *SystemBannerHostViewController.trailingView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_trailingViewContainer);
  v2 = v1;
  return v1;
}

void *SystemBannerHostViewController.minimalView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_minimalViewContainer);
  v2 = v1;
  return v1;
}

void *SystemBannerHostViewController.detachedMinimalView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_detachedMinimalViewContainer);
  v2 = v1;
  return v1;
}

void *SystemBannerHostViewController.elementIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_elementIdentifier);
  v2 = v1;
  return v1;
}

void SystemBannerHostViewController.associatedAppBundleIdentifier.getter()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_104_1();
  v3 += 55;
  v4 = *v3;
  (*v3)();
  OUTLINED_FUNCTION_13_62();
  (*((*v2 & v5) + 0x2A0))();
  v7 = v6;

  ObjectType = swift_getObjectType();
  v9 = *(v7 + 184);
  v10 = v9(ObjectType, v7);
  v11 = [v10 isSystemProvider];

  if (v11)
  {
    goto LABEL_2;
  }

  v12 = v4();
  v13 = ConversationControlsManager.isActiveCallGreenTea3P()();

  if (!v13)
  {
    v17 = OUTLINED_FUNCTION_45_20();
    if (v18(v17) == 4)
    {
      goto LABEL_2;
    }

    v19 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0))();
    if (v19)
    {
      v20 = [v19 isSpringBoardLocked];
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0;
    }

    v21 = OUTLINED_FUNCTION_45_20();
    if (v22(v21))
    {
      if (v20)
      {
        goto LABEL_2;
      }
    }
  }

  v14 = OUTLINED_FUNCTION_45_20();
  v15 = (v9)(v14);
  v16 = [v15 bundleIdentifier];

  if (!v16)
  {
LABEL_2:
    swift_unknownObjectRelease();
  }

  else
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_30_0();
}

uint64_t SystemBannerHostViewController.backgroundActivitiesToSuppress.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))();
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = [v1 backgroundActivitiesToSuppress];
  OUTLINED_FUNCTION_28_0();
  swift_unknownObjectRelease();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SystemBannerHostViewController.presentationBehaviors.getter()
{
  v23 = 8;
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1A0))();
  if (v2)
  {
    v3 = [v2 isSpringBoardLocked];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_120_0();
  (*(v4 + 440))();
  OUTLINED_FUNCTION_13_62();
  v6 = (*((*v1 & v5) + 0x2A0))();
  v8 = v7;

  v22 = 0;
  closure #1 in SystemBannerHostViewController.presentationBehaviors.getter(v0, &v23, &v22, v6, v8, v3);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.banners);
  v10 = v22;
  v11 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v12 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    v14[1] = v10;
    OUTLINED_FUNCTION_219();
    _os_log_impl(v15, v16, v17, v18, v19, 8u);
    v20 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v20);
  }

  swift_unknownObjectRelease();
  return v23;
}

void disableTapToAppWhenCompactOrMinimal #1 (in:) in SystemBannerHostViewController.presentationBehaviors.getter(void *a1, void *a2)
{
  if ((*((*MEMORY[0x1E69E7D40] & *a2) + 0x5A8))() == 3)
  {
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.banners);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, oslog, v4, "[SystemAperture] Ignoring call to add .disablesTapToApp in behaviors because we're maximumLayoutMode == .compact", v5, 2u);
      MEMORY[0x1BFB23DF0](v5, -1, -1);
    }
  }

  else
  {
    *a1 |= 0x10uLL;
  }
}

void closure #1 in SystemBannerHostViewController.presentationBehaviors.getter(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, char a6)
{
  v56 = a4;
  v11 = type metadata accessor for CallScreeningService();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CallScreeningStatus();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v49 - v21;
  v23 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x460))(v20))
  {
    *a2 |= 4uLL;
    if (Features.callManagerEnabled.getter())
    {
      *a2 |= 2uLL;
    }

    *a3 = 1;

    goto LABEL_6;
  }

  v24 = (*((*v23 & *a1) + 0x1B8))();
  v25 = (*((*v23 & *v24) + 0x2B0))();

  if ((v25 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v27 = *(a5 + 464);
    v50 = ObjectType;
    if ((v27(ObjectType, a5) & 1) == 0 || (a6 & 1) == 0)
    {
      v28 = (*(a5 + 184))(v50, a5);
      v29 = [v28 isFaceTimeProvider];

      if (v29 & 1) != 0 || (v27(v50, a5))
      {
        v30 = *(a1 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_features);
        if ((Features.receptionistEnabled.getter() & 1) != 0 || ((*(a5 + 144))(v50, a5) & 1) == 0)
        {
          if ((Features.receptionistEnabled.getter() & 1) == 0 || (v58 = &type metadata for ScreeningStatusOverride, v59 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride(), type metadata accessor for Defaults(), swift_allocObject(), v57[0] = Defaults.init()(), CallScreeningService.init(overrides:)(), (*(a5 + 48))(v57, v50, a5), CallScreeningService.screeningStatusForCall(_:)(), __swift_destroy_boxed_opaque_existential_1(v57), (*(v54 + 8))(v13, v55), v31 = v52, v32 = *(v52 + 88), v49[1] = v30, v33 = v53, v34 = v32(v22, v53), v35 = *MEMORY[0x1E6995EA0], (*(v31 + 8))(v22, v33), v34 != v35))
          {
            if (Features.receptionistEnabled.getter())
            {
              v58 = &type metadata for ScreeningStatusOverride;
              v59 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
              type metadata accessor for Defaults();
              swift_allocObject();
              v57[0] = Defaults.init()();
              CallScreeningService.init(overrides:)();
              (*(a5 + 48))(v57, v50, a5);
              CallScreeningService.screeningStatusForCall(_:)();
              __swift_destroy_boxed_opaque_existential_1(v57);
              (*(v54 + 8))(v13, v55);
              v36 = v52;
              v37 = v53;
              v38 = (*(v52 + 88))(v18, v53);
              v39 = *MEMORY[0x1E6995EA8];
              (*(v36 + 8))(v18, v37);
              if (v38 == v39)
              {
                goto LABEL_6;
              }
            }

            if (Features.receptionistEnabled.getter())
            {
              v58 = &type metadata for ScreeningStatusOverride;
              v59 = lazy protocol witness table accessor for type ScreeningStatusOverride and conformance ScreeningStatusOverride();
              type metadata accessor for Defaults();
              swift_allocObject();
              v57[0] = Defaults.init()();
              CallScreeningService.init(overrides:)();
              (*(a5 + 48))(v57, v50, a5);
              v40 = v51;
              CallScreeningService.screeningStatusForCall(_:)();
              __swift_destroy_boxed_opaque_existential_1(v57);
              (*(v54 + 8))(v13, v55);
              v42 = v52;
              v41 = v53;
              v43 = (*(v52 + 88))(v40, v53);
              v44 = *MEMORY[0x1E6995EB0];
              (*(v42 + 8))(v40, v41);
              if (v43 == v44)
              {
                goto LABEL_6;
              }
            }

            if ((*(a5 + 208))(v50, a5) != 6)
            {
              swift_beginAccess();
              if (static SensitiveContentController.shieldState)
              {
LABEL_6:
                disableTapToAppWhenCompactOrMinimal #1 (in:) in SystemBannerHostViewController.presentationBehaviors.getter(a2, a1);
                return;
              }

              if (one-time initialization token for banners != -1)
              {
                swift_once();
              }

              v45 = type metadata accessor for Logger();
              __swift_project_value_buffer(v45, static Logger.banners);
              v46 = Logger.logObject.getter();
              v47 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v46, v47))
              {
                v48 = swift_slowAlloc();
                *v48 = 0;
                _os_log_impl(&dword_1BBC58000, v46, v47, "[SystemAperture] Keeping tap to app enabled when sensitive content was detected", v48, 2u);
                MEMORY[0x1BFB23DF0](v48, -1, -1);
              }
            }
          }
        }
      }
    }
  }
}

void *SystemBannerHostViewController.keyColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_keyColor);
  v2 = v1;
  return v1;
}

Swift::Void __swiftcall SystemBannerHostViewController.updateSystemAperturePreferredContentSize()()
{
  OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_137();
  if ((*(v1 + 1368))() == 4)
  {
    OUTLINED_FUNCTION_293();
    v3 = (*(v2 + 720))();
    if (v3)
    {
      v5 = v4;
      v23 = v3;
      ObjectType = swift_getObjectType();
      *&v7 = COERCE_DOUBLE((*(v5 + 88))(ObjectType, v5));
      if (v9)
      {
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v10, static Logger.banners);
        v11 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v12 = OUTLINED_FUNCTION_25_38();
        if (os_log_type_enabled(v12, v13))
        {
          OUTLINED_FUNCTION_20_43();
          v14 = swift_slowAlloc();
          OUTLINED_FUNCTION_39_2(v14);
          OUTLINED_FUNCTION_219();
          _os_log_impl(v15, v16, v17, v18, v19, 2u);
          v20 = OUTLINED_FUNCTION_3_126();
          MEMORY[0x1BFB23DF0](v20);
        }

        [v23 preferredContentSize];
      }

      else
      {
        v21 = *&v7;
        v22 = v8;
      }

      [v0 setPreferredContentSize_];
    }
  }
}

void SystemBannerHostViewController.handleLayoutModeTransition(from:to:isUserInitiated:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a2 != a1)
  {
    v4 = v3;
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v8, static Logger.banners);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = OUTLINED_FUNCTION_25_38();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      v39 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = SBUISystemApertureLayoutModeDescription();
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = a3;
      v17 = v16;

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v39);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      v19 = SBUISystemApertureLayoutModeDescription();
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v39);

      *(v13 + 14) = v23;
      a3 = v38;
      *(v13 + 22) = 1024;
      *(v13 + 24) = v38 & 1;
      _os_log_impl(&dword_1BBC58000, v9, v10, "[SystemAperture] handling transition from layout mode changed %s to %s, isUserInitiated %{BOOL}d", v13, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
      v24 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v24);
    }

    v25 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_293();
    v27 = (*(v26 + 720))();
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      ObjectType = swift_getObjectType();
      (*(v30 + 136))(ObjectType, v30);
    }

    if (a1 == 4)
    {
      if (a2 == 3 && (a3 & 1) != 0)
      {
        OUTLINED_FUNCTION_293();
        (*(v32 + 440))();
        OUTLINED_FUNCTION_13_62();
        (*((*v25 & v33) + 0x2A0))();
        v35 = v34;

        v36 = swift_getObjectType();
        (*(v35 + 440))(1, v36, v35);
        swift_unknownObjectRelease();
      }

      SystemBannerHostViewController.dismissEphemeralSystemApertureContent()();
      [objc_msgSend(v4 systemApertureElementContext)];
      swift_unknownObjectRelease();
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_39_17();
        swift_once();
      }

      OUTLINED_FUNCTION_128_0();
      (*(v37 + 280))();
    }
  }
}

void SystemBannerHostViewController.positionSystemApertureAccessoryView(_:aligningWithEdge:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v8 effectiveUserInterfaceLayoutDirection];

  if (v10)
  {
    v11 = 8;
  }

  else
  {
    v11 = 2;
  }

  ObjectType = swift_getObjectType();
  (*(a2 + 8))(v68, ObjectType, a2);
  v13 = *&v68[1];
  if (v69)
  {
    if (v69 == 1)
    {
      if (v68[0])
      {
        v14 = v68[0];
        [v14 center];
        v16 = v15;
        v18 = v17;
        v19 = [v14 superview];
        [a1 convertPoint:v19 fromView:{v16, v18}];
        v21 = v20;

        [a1 bounds];
        MidX = CGRectGetMidX(v70);
        outlined destroy of SystemApertureLayoutMargins(v68);
        v23 = MidX - v21;
      }

      else
      {
        v23 = 0.0;
      }

      if (a3 != 2)
      {
        v44 = OUTLINED_FUNCTION_13_20();
        if (v44)
        {
          v42 = v44;
          v43 = &selRef_SBUISA_systemApertureTrailingConcentricContentLayoutGuide;
LABEL_27:
          v45 = [v42 *v43];

          [v45 layoutFrame];
          OUTLINED_FUNCTION_40_1();

          v76.origin.x = OUTLINED_FUNCTION_35();
          v46 = CGRectGetMidX(v76);
          v47 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x558);
          switch(v47())
          {
            case -1:
            case 0:
            case 1:
              if (one-time initialization token for banners != -1)
              {
                OUTLINED_FUNCTION_0_165();
                swift_once();
              }

              v48 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v48, static Logger.banners);
              v49 = v4;
              v50 = Logger.logObject.getter();
              v51 = static os_log_type_t.fault.getter();

              if (!os_log_type_enabled(v50, v51))
              {
                goto LABEL_37;
              }

              OUTLINED_FUNCTION_13_10();
              v52 = swift_slowAlloc();
              OUTLINED_FUNCTION_12_0();
              v53 = swift_slowAlloc();
              v67 = v53;
              *v52 = 136315138;
              (v47)(v53);
              v54 = SBUISystemApertureLayoutModeDescription();
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              OUTLINED_FUNCTION_80_0();

              v57 = OUTLINED_FUNCTION_79_10(v55, v56, &v67);

              *(v52 + 4) = v57;
              v58 = "[System Aperture] Unexpected positioning of accessoryView for layoutMode: %s";
              goto LABEL_36;
            case 2:
            case 4:
              goto LABEL_38;
            case 3:
              goto LABEL_39;
            default:
              if (one-time initialization token for banners != -1)
              {
                OUTLINED_FUNCTION_0_165();
                swift_once();
              }

              v59 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_52(v59, static Logger.banners);
              v60 = v4;
              v50 = Logger.logObject.getter();
              v51 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v50, v51))
              {
                OUTLINED_FUNCTION_13_10();
                v52 = swift_slowAlloc();
                OUTLINED_FUNCTION_12_0();
                v53 = swift_slowAlloc();
                v67 = v53;
                *v52 = 136315138;
                (v47)(v53);
                v61 = SBUISystemApertureLayoutModeDescription();
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                OUTLINED_FUNCTION_80_0();

                v64 = OUTLINED_FUNCTION_79_10(v62, v63, &v67);

                *(v52 + 4) = v64;
                v58 = "[System Aperture] Unknown default for layoutMode during accessory positioning: %s";
LABEL_36:
                _os_log_impl(&dword_1BBC58000, v50, v51, v58, v52, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v53);
                v65 = OUTLINED_FUNCTION_5_110();
                MEMORY[0x1BFB23DF0](v65);
                v66 = OUTLINED_FUNCTION_2_35();
                MEMORY[0x1BFB23DF0](v66);
              }

LABEL_37:

LABEL_38:
              v13 = 0.0;
LABEL_39:
              [a1 center];
              [a1 setCenter_];
              outlined destroy of SystemApertureLayoutMargins(v68);
              OUTLINED_FUNCTION_77_10();
              break;
          }

          return;
        }

        goto LABEL_42;
      }

      v41 = OUTLINED_FUNCTION_13_20();
      if (v41)
      {
        v42 = v41;
        v43 = &selRef_SBUISA_systemApertureLeadingConcentricContentLayoutGuide;
        goto LABEL_27;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v34 = OUTLINED_FUNCTION_13_20();
    v35 = v34;
    if (v11 == a3)
    {
      if (!v34)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v36 = [v34 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

      [v36 layoutFrame];
      OUTLINED_FUNCTION_40_1();

      v73.origin.x = OUTLINED_FUNCTION_35();
      CGRectGetMinX(v73);
    }

    else
    {
      if (!v34)
      {
LABEL_45:
        __break(1u);
        return;
      }

      v37 = [v34 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];

      [v37 layoutFrame];
      OUTLINED_FUNCTION_40_1();

      v74.origin.x = OUTLINED_FUNCTION_35();
      CGRectGetMaxX(v74);
      [a1 frame];
      CGRectGetWidth(v75);
    }
  }

  else if (v11 != a3)
  {
    v24 = OUTLINED_FUNCTION_13_20();
    if (!v24)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v71.origin.x = v27;
    v71.origin.y = v29;
    v71.size.width = v31;
    v71.size.height = v33;
    CGRectGetMaxX(v71);
    [a1 frame];
    CGRectGetWidth(v72);
  }

  [a1 frame];
  OUTLINED_FUNCTION_77_10();

  [v38 v39];
}

Swift::Void __swiftcall SystemBannerHostViewController.positionSystemApertureAccessoryViews()()
{
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_128_0();
  v1 = (*(v0 + 1456))();
  if (v1)
  {
    v2 = v1;
    swift_getObjectType();
    v3 = dynamic_cast_existential_1_conditional(v2);
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      OUTLINED_FUNCTION_128_0();
      v8 = (*(v7 + 1464))();
      if (v8)
      {
        v17 = v8;
        swift_getObjectType();
        v9 = dynamic_cast_existential_1_conditional(v17);
        if (v9)
        {
          v11 = v9;
          v12 = v10;
          OUTLINED_FUNCTION_128_0();
          v13 += 191;
          v14 = *v13;
          (*v13)(v5, v6, 2);
          v14(v11, v12, 8);
        }
      }
    }

    OUTLINED_FUNCTION_194_0();
  }

  else
  {
    OUTLINED_FUNCTION_194_0();
  }
}

void SystemBannerHostViewController.viewWillLayoutSubviews(with:)()
{
  OUTLINED_FUNCTION_287();
  if (v2)
  {
    v3 = v1;
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v13 = partial apply for closure #1 in SystemBannerHostViewController.viewWillLayoutSubviews(with:);
    v14 = v4;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v12 = &block_descriptor_25_3;
    v5 = _Block_copy(&v9);
    v6 = v0;
    OUTLINED_FUNCTION_246();

    OUTLINED_FUNCTION_20();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = partial apply for closure #2 in SystemBannerHostViewController.viewWillLayoutSubviews(with:);
    v14 = v7;
    v9 = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v12 = &block_descriptor_29_1;
    v8 = _Block_copy(&v9);

    [v3 animateAlongsideTransition:v5 completion:v8];
    _Block_release(v8);
    _Block_release(v5);
  }
}

void closure #2 in SystemBannerHostViewController.viewWillLayoutSubviews(with:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2B8))();

    v20 = 0;
    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    if (one-time initialization token for banners != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.banners);
    swift_unknownObjectRetain_n();
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446466;
      (*((*v3 & *v8) + 0x558))();
      v13 = SBUISystemApertureLayoutModeDescription();
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);
      v3 = MEMORY[0x1E69E7D40];

      *(v11 + 4) = v17;
      *(v11 + 12) = 1024;
      LODWORD(v17) = [a1 isCancelled];
      swift_unknownObjectRelease();
      *(v11 + 14) = v17;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_1BBC58000, v9, v10, "[SystemAperture] viewWillLayoutSubviews completed with activeLayoutMode=%{public}s canceled=%{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
      MEMORY[0x1BFB23DF0](v11, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();
    }

    v18 = (*((*v3 & *v8) + 0x1B8))();
    ConversationControlsManager.updateGreenTea3PCallStateIfNeeded()();
  }
}

void SystemBannerHostViewController.updateWaveformForLayoutMode(_:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_63_0();
  a26 = v28;
  a27 = v29;
  v30 = v27;
  v32 = v31;
  v33 = MEMORY[0x1E69E7D40];
  v34 = (*((*MEMORY[0x1E69E7D40] & **&v27[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_trailingViewContainer]) + 0x58))();
  if (!v34)
  {
LABEL_20:
    OUTLINED_FUNCTION_62();
    return;
  }

  v85 = v34;
  type metadata accessor for SystemApertureInCallWaveformTrailingView();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_27;
  }

  v35 = [v27 view];
  if (!v35)
  {
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v35 window];

  if (!v37)
  {
    goto LABEL_13;
  }

  v38 = [v37 windowScene];

  if (!v38)
  {
    goto LABEL_13;
  }

  v39 = [v38 activationState];

  if (v39)
  {
    if (v32 != 3 || v39 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  if (v32 != 3)
  {
LABEL_13:
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v41, static Logger.banners);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_20_43();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_296(v44);
      OUTLINED_FUNCTION_91_7();
      _os_log_impl(v45, v46, v47, v48, v49, v50);
      v51 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v51);
    }

    v52 = v30;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_9_44();
      v55 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_15();
      a15 = swift_slowAlloc();
      *v55 = 136446466;
      (*((*v33 & *v52) + 0x558))();
      v56 = SBUISystemApertureLayoutModeDescription();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_80_0();

      v59 = OUTLINED_FUNCTION_79_10(v57, v58, &a15);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2082;
      v60 = String.init<A>(reflecting:)();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &a15);

      *(v55 + 14) = v62;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v63, v64, v65, v66, v67, 0x16u);
      OUTLINED_FUNCTION_94_6();
      swift_arrayDestroy();
      v68 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v68);
      v69 = OUTLINED_FUNCTION_3_126();
      MEMORY[0x1BFB23DF0](v69);
    }

    OUTLINED_FUNCTION_293();
    (*(v70 + 264))();

    goto LABEL_20;
  }

LABEL_22:
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v71, static Logger.banners);
  v72 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v73 = OUTLINED_FUNCTION_25_38();
  if (os_log_type_enabled(v73, v74))
  {
    OUTLINED_FUNCTION_20_43();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_39_2(v75);
    OUTLINED_FUNCTION_219();
    _os_log_impl(v76, v77, v78, v79, v80, 2u);
    v81 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v81);
  }

  OUTLINED_FUNCTION_293();
  (*(v82 + 256))();
LABEL_27:
  OUTLINED_FUNCTION_62();
}

uint64_t SystemBannerHostViewController.alertIfNeededForRecipeTransition(from:to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_49();
  if (((*(v4 + 1392))() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_49();
  (*(v5 + 696))();
  OUTLINED_FUNCTION_27_15();
  v7 = (*(v6 + 192))(a1, a2);

  return v7 & 1;
}

void SystemBannerHostViewController.performUpdateForRecipeTransition(from:to:coordinatedAnimations:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v66 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v19 = v18 - v17;
  v65 = v0;
  v20 = *(v0 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation);
  if (v20 == 1 && (*((*MEMORY[0x1E69E7D40] & *v65) + 0x558))() == 4)
  {
    outlined init with copy of (CGFloat, AutoplayCandidate)(v7, v14, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v14, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    }

    else
    {
      v21 = outlined init with take of ConversationControlsRecipe(v14, v19);
      updated = ConversationControlsType.wantsUpdateAnimationAfter.getter(v21, v22, v23, v24, v25, v26, v27, v28);
      if (updated)
      {
        ConversationControlsType.wantsUpdateAnimationBefore.getter(updated, v30, v31, v32, v33, v34, v35, v36);
        if ((v37 & 1) != 0 && (static ConversationControlsType.== infix(_:_:)(v19, v5) & 1) == 0)
        {
          v58 = [v65 systemApertureElementContext];
          v71 = v66;
          v72 = v2;
          OUTLINED_FUNCTION_38_23();
          v68 = 1107296256;
          OUTLINED_FUNCTION_6_5();
          v69 = v59;
          v70 = &block_descriptor_38_1;
          v60 = _Block_copy(&v67);

          [v58 setElementNeedsLayoutUpdateWithOptions:1 coordinatedAnimations:v60];
          _Block_release(v60);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_1_132();
          _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v19, v61);
          goto LABEL_27;
        }
      }

      OUTLINED_FUNCTION_1_132();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v19, v38);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = 22;
  *(inited + 40) = 0u;
  *(inited + 56) = 0u;
  *(inited + 72) = 7;
  *(inited + 80) = 21;
  *(inited + 88) = 0u;
  *(inited + 104) = 0u;
  *(inited + 120) = 7;
  *(inited + 128) = 20;
  *(inited + 136) = 0u;
  *(inited + 152) = 0u;
  *(inited + 168) = 7;
  v40 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit0B12ControlsTypeO_SayAFGTt0g5();
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOSgGMd);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_1BC4BAA20;
    v42 = (v41 + 32);
    outlined init with copy of (CGFloat, AutoplayCandidate)(v7, v11, &_s15ConversationKit0A14ControlsRecipeVSgMd);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v15);
    v63 = v2;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s15ConversationKit0A14ControlsRecipeVSgMd);
      *v42 = 0u;
      *(v41 + 48) = 0u;
      *(v41 + 64) = 0;
      *(v41 + 72) = -1;
    }

    else
    {
      outlined init with copy of ConversationControlsType(v11, v42);
      OUTLINED_FUNCTION_1_132();
      _s15ConversationKit0A14ControlsRecipeVWOhTm_3(v11, v45);
    }

    v62 = v41;
    outlined init with copy of ConversationControlsType(v5, v41 + 80);
    v46 = 0;
    v47 = 0;
    v64 = (v41 + 32);
    do
    {
      v48 = v46;
      outlined init with copy of (CGFloat, AutoplayCandidate)(&v42[v47], v77, &_s15ConversationKit0A12ControlsTypeOSgMd);
      outlined init with copy of (CGFloat, AutoplayCandidate)(v77, &v75, &_s15ConversationKit0A12ControlsTypeOSgMd);
      if (BYTE8(v76[1]) == 255)
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s15ConversationKit0A12ControlsTypeOSgMd);
      }

      else
      {
        *(v74 + 9) = *(v76 + 9);
        v73 = v75;
        v74[0] = v76[0];
        if (*(v40 + 16))
        {
          Hasher.init(_seed:)();

          ConversationControlsType.hash(into:)();
          v49 = Hasher._finalize()();
          v50 = ~(-1 << *(v40 + 32));
          while (1)
          {
            v51 = v49 & v50;
            if (((*(v40 + 56 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
            {
              break;
            }

            outlined init with copy of ConversationControlsType(*(v40 + 48) + 48 * v51, &v67);
            v52 = static ConversationControlsType.== infix(_:_:)(&v67, &v73);
            outlined destroy of ConversationControlsType(&v67);
            v49 = v51 + 1;
            if (v52)
            {
              outlined destroy of ConversationControlsType(&v73);
              outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s15ConversationKit0A12ControlsTypeOSgMd);

              swift_setDeallocating();
              specialized _ContiguousArrayStorage.__deallocating_deinit();

              v53 = [v65 systemApertureElementContext];
              v54 = swift_allocObject();
              v55 = v63;
              *(v54 + 16) = v66;
              *(v54 + 24) = v55;
              v71 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
              v72 = v54;
              OUTLINED_FUNCTION_38_23();
              v68 = 1107296256;
              OUTLINED_FUNCTION_6_5();
              v69 = v56;
              v70 = &block_descriptor_35_1;
              v57 = _Block_copy(&v67);

              [v53 setElementNeedsUpdateWithCoordinatedAnimations_];
              _Block_release(v57);
              swift_unknownObjectRelease();
              goto LABEL_27;
            }
          }
        }

        else
        {
        }

        outlined destroy of ConversationControlsType(&v73);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v77, &_s15ConversationKit0A12ControlsTypeOSgMd);

        v42 = v64;
      }

      v46 = 1;
      v47 = 3;
    }

    while ((v48 & 1) == 0);

    swift_setDeallocating();
    v44 = specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
  }

  (v66)(v44);
LABEL_27:
  OUTLINED_FUNCTION_30_0();
}

void SystemBannerHostViewController.updateSystemApertureViewsVisibility()(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_272();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_287();
  if (v24)
  {
    OUTLINED_FUNCTION_137();
    v25 += 171;
    v26 = *v25;
    switch((*v25)())
    {
      case -1:
      case 0:
      case 1:
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.banners);
        v28 = v21;
        osloga = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(osloga, v29))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_13_10();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v31 = swift_slowAlloc();
        a10 = v31;
        *v30 = 136446210;
        v26();
        v32 = SBUISystemApertureLayoutModeDescription();
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &a10);
        OUTLINED_FUNCTION_75_0();

        *(v30 + 4) = v32;
        v36 = "[SystemAperture] updateSystemApertureViewsVisibility is no-op for activeLayoutMode: %{public}s";
        goto LABEL_32;
      case 2:
        OUTLINED_FUNCTION_2_20();
        v38 = (*(v37 + 1456))();
        if (v38)
        {
          v20 = v38;
          [v38 setAlpha_];
        }

        OUTLINED_FUNCTION_2_20();
        v40 = (*(v39 + 1464))();
        if (v40)
        {
          v20 = v40;
          [v40 setAlpha_];
        }

        OUTLINED_FUNCTION_2_20();
        v42 = (*(v41 + 1472))();
        if (v42)
        {
          v20 = v42;
          [v42 setAlpha_];
        }

        SystemBannerHostViewController.updateSystemApertureCustomContentVisibility(hidden:shouldLog:)(1, 0);
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v43, static Logger.banners);
        oslogb = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_173_0();
        if (!os_log_type_enabled(oslogb, v44))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_20_43();
        v45 = swift_slowAlloc();
        OUTLINED_FUNCTION_21_24(v45);
        v46 = "[SystemAperture] showing minimal in system aperture";
        goto LABEL_44;
      case 3:
        OUTLINED_FUNCTION_2_20();
        v64 = (*(v63 + 1472))();
        if (v64)
        {
          v20 = v64;
          [v64 setAlpha_];
        }

        OUTLINED_FUNCTION_2_20();
        v66 = (*(v65 + 1456))();
        if (v66)
        {
          v20 = v66;
          [v66 setAlpha_];
        }

        OUTLINED_FUNCTION_2_20();
        v68 = (*(v67 + 1464))();
        if (v68)
        {
          v20 = v68;
          [v68 setAlpha_];
        }

        SystemBannerHostViewController.updateSystemApertureCustomContentVisibility(hidden:shouldLog:)(1, 0);
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v69, static Logger.banners);
        oslogb = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_173_0();
        if (!os_log_type_enabled(oslogb, v70))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_20_43();
        v71 = swift_slowAlloc();
        OUTLINED_FUNCTION_21_24(v71);
        v46 = "[SystemAperture] showing leading/trailing in system aperture";
        goto LABEL_44;
      case 4:
        OUTLINED_FUNCTION_2_20();
        v48 = (*(v47 + 1456))();
        if (v48)
        {
          OUTLINED_FUNCTION_81_4(v48);
        }

        OUTLINED_FUNCTION_2_20();
        v50 = (*(v49 + 1464))();
        if (v50)
        {
          OUTLINED_FUNCTION_81_4(v50);
        }

        OUTLINED_FUNCTION_2_20();
        v52 = (*(v51 + 1472))();
        if (v52)
        {
          OUTLINED_FUNCTION_81_4(v52);
        }

        SystemBannerHostViewController.updateSystemApertureCustomContentVisibility(hidden:shouldLog:)(0, 1);
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v53, static Logger.banners);
        oslogb = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        OUTLINED_FUNCTION_173_0();
        if (!os_log_type_enabled(oslogb, v54))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_20_43();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_21_24(v55);
        v46 = "[SystemAperture] hiding all elements in system aperture since we're in a custom layout mode.";
LABEL_44:
        _os_log_impl(&dword_1BBC58000, oslogb, v20, v46, v21, 2u);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();
LABEL_45:
        OUTLINED_FUNCTION_194_0();

        return;
      default:
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logger.banners);
        v57 = v21;
        osloga = Logger.logObject.getter();
        v29 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(osloga, v29))
        {
          goto LABEL_45;
        }

        OUTLINED_FUNCTION_13_10();
        v30 = swift_slowAlloc();
        OUTLINED_FUNCTION_12_0();
        v31 = swift_slowAlloc();
        a10 = v31;
        *v30 = 136446210;
        v26();
        v58 = SBUISystemApertureLayoutModeDescription();
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &a10);
        OUTLINED_FUNCTION_75_0();

        *(v30 + 4) = v58;
        v36 = "updateSystemApertureViewsVisibility unknown case for activeLayoutMode: %{public}s";
LABEL_32:
        _os_log_impl(&dword_1BBC58000, osloga, v29, v36, v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        v62 = OUTLINED_FUNCTION_3_126();
        MEMORY[0x1BFB23DF0](v62);
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1BFB23DF0]();

        break;
    }
  }

  OUTLINED_FUNCTION_194_0();
}

void SystemBannerHostViewController.updateSystemApertureCustomContentVisibility(hidden:shouldLog:)(char a1, char a2)
{
  OUTLINED_FUNCTION_15_49();
  v5 = (*(v4 + 720))();
  if (!v5)
  {
    return;
  }

  v17 = v5;
  if ([v5 isViewLoaded])
  {
    if (a1 == 2)
    {
      OUTLINED_FUNCTION_15_49();
      a1 = (*(v6 + 1368))() != 4;
    }

    v7 = [v17 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = 1.0;
    if (a1)
    {
      v9 = 0.0;
    }

    [v7 setAlpha_];

    if (a2)
    {
      if (a1)
      {
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v10, static Logger.banners);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_20_43();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_21_24(v13);
        v14 = "[SystemAperture] hiding custom content";
      }

      else
      {
        if (one-time initialization token for banners != -1)
        {
          OUTLINED_FUNCTION_0_165();
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_52(v15, static Logger.banners);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_20_43();
        v16 = swift_slowAlloc();
        OUTLINED_FUNCTION_21_24(v16);
        v14 = "[SystemAperture] showing custom content";
      }

      _os_log_impl(&dword_1BBC58000, v11, v12, v14, v8, 2u);
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1BFB23DF0]();
LABEL_20:
    }
  }
}

void SystemBannerHostViewController.dismissEphemeralSystemApertureContent()()
{
  OUTLINED_FUNCTION_29();
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v1 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v1, *MEMORY[0x1E69E8020], v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v1, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_0_165();
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v9, v42, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v43 == 255)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v42, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    goto LABEL_11;
  }

  v2 = v42;
  v44[0] = v42[0];
  v44[1] = v42[1];
  v44[2] = v42[2];
  v45 = v43;
  if (one-time initialization token for banners != -1)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.banners);
  v11 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v12 = OUTLINED_FUNCTION_12_64();
  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_20_43();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_296(v14);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_91_7();
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_5_110();
    MEMORY[0x1BFB23DF0](v21);
  }

  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  v43 = -1;
  SystemBannerHostViewController.overriddenSystemApertureContent.setter(v42);
  outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v44, v42);
  outlined init with copy of SystemBannerHostViewController.OverriddenSystemApertureContent(v44, v41);
  v22 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v23 = OUTLINED_FUNCTION_12_64();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_9_44();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_15();
    v40 = swift_slowAlloc();
    *v25 = 136315394;
    outlined init with copy of ConversationControlsType(v42 + 8, v39);
    specialized >> prefix<A>(_:)(v39);
    OUTLINED_FUNCTION_80_0();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v39, &_s15ConversationKit0A12ControlsTypeOSgMd);
    v26 = outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v42);
    v28 = OUTLINED_FUNCTION_79_10(v26, v27, &v40);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v39[0] = v41[0];
    String.init<A>(reflecting:)();
    OUTLINED_FUNCTION_80_0();
    v29 = outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v41);
    v31 = OUTLINED_FUNCTION_79_10(v29, v30, &v40);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_11_44();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    OUTLINED_FUNCTION_94_6();
    swift_arrayDestroy();
    v37 = OUTLINED_FUNCTION_5_110();
    MEMORY[0x1BFB23DF0](v37);
    v38 = OUTLINED_FUNCTION_3_126();
    MEMORY[0x1BFB23DF0](v38);
  }

  else
  {

    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v41);
    outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v42);
  }

  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x418))(v44 + 8, *&v44[0], 0, 0);
  outlined destroy of SystemBannerHostViewController.OverriddenSystemApertureContent(v44);
LABEL_11:
  OUTLINED_FUNCTION_30_0();
}

id SystemBannerHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    MEMORY[0x1BFB209B0]();
    OUTLINED_FUNCTION_246();
  }

  else
  {
    v3 = 0;
  }

  v6 = [objc_allocWithZone(v4) initWithNibName:v3 bundle:a3];

  return v6;
}

id outlined bridged method (mnnnbnnn) of @objc BNBannerSource.revokePresentable(withRequestIdentifier:reason:animated:userInfo:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [a6 revokePresentableWithRequestIdentifier:a1 reason:a2 animated:a3 & 1 userInfo:isa error:a5];

  return v12;
}

uint64_t specialized showEphemeralContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a2 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation) != 1)
  {
    return specialized showContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(a1, a2, a5, a6);
  }

  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of ConversationControlsType(a4 + 16, v8);
  specialized SystemBannerHostViewController.showEphemeralSystemApertureContent(_:overridingSizeClass:overridingControlsType:)();
  return outlined destroy of ConversationControlsType(v8);
}

uint64_t specialized showContent #1 (_:) in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x2D8);
  v7 = a1;
  v8 = OUTLINED_FUNCTION_78();
  v6(v8);
  v9 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(a2 + v9, v29, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  LODWORD(v9) = v30;
  result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v9 != 255)
  {
    if (one-time initialization token for banners != -1)
    {
      OUTLINED_FUNCTION_0_165();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v11, static Logger.banners);
    v12 = v7;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_13_10();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_0();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      *&v29[0] = v12;
      *(&v29[0] + 1) = a4;
      v17 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A22ControlsViewController_pMd);
      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);

      *(v15 + 4) = v20;
      OUTLINED_FUNCTION_8_10();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v26 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v26);
      v27 = OUTLINED_FUNCTION_2_35();
      MEMORY[0x1BFB23DF0](v27);
    }

    memset(v29, 0, sizeof(v29));
    v30 = -1;
    return SystemBannerHostViewController.overriddenSystemApertureContent.setter(v29);
  }

  return result;
}

void specialized SystemBannerHostViewController.showEphemeralSystemApertureContent(_:overridingSizeClass:overridingControlsType:)()
{
  OUTLINED_FUNCTION_29();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DispatchPredicate();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v16 = (v15 - v14);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v10);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v10);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    OUTLINED_FUNCTION_0_165();
    swift_once();
LABEL_4:
    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v20, static Logger.banners);
    v21 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v22 = OUTLINED_FUNCTION_12_64();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_20_43();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_296(v24);
      OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_91_7();
      _os_log_impl(v25, v26, v27, v28, v29, v30);
LABEL_10:
      v46 = OUTLINED_FUNCTION_5_110();
      MEMORY[0x1BFB23DF0](v46);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v18 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v18, &v52, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  v19 = v53[40];
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v52, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  if (v19 != 255)
  {
    if (one-time initialization token for banners == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  outlined init with copy of ConversationControlsType(v5, v53);
  v52 = v7;
  SystemBannerHostViewController.overriddenSystemApertureContent.setter(&v52);
  if (one-time initialization token for banners != -1)
  {
    OUTLINED_FUNCTION_0_165();
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_52(v31, static Logger.banners);
  v32 = v3;
  v21 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v33))
  {
    OUTLINED_FUNCTION_13_10();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_12_0();
    v35 = swift_slowAlloc();
    v51 = v35;
    *v34 = 136315138;
    outlined init with copy of (CGFloat, AutoplayCandidate)(v3 + v18, &v52, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    v36 = v1;
    v37 = specialized >> prefix<A>(_:)(&v52);
    v39 = v38;
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v52, &_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
    v40 = v37;
    v1 = v36;
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v51);

    *(v34 + 4) = v41;
    OUTLINED_FUNCTION_24_6();
    _os_log_impl(v42, v43, v44, v45, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1BFB23DF0]();
    goto LABEL_10;
  }

LABEL_11:

  v47 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent;
  *(v3 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent) = 1;
  OUTLINED_FUNCTION_293();
  v49 = *(v48 + 728);
  v50 = v9;
  v49(v9, v1);
  *(v3 + v47) = 0;
  OUTLINED_FUNCTION_30_0();
}

uint64_t specialized SystemApertureAlertingManager.init(systemApertureElement:sceneStateDescriber:)(void *a1, void *a2, uint64_t a3)
{
  *(a3 + 40) = 0;
  v6 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_logger;
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = __swift_project_value_buffer(v7, &static Logger.conversationControls);
  (*(*(v7 - 8) + 16))(a3 + v6, v8, v7);
  v9 = OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_invalidationInProgressSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  swift_allocObject();
  *(a3 + v9) = CurrentValueSubject.init(_:)();
  swift_unknownObjectUnownedInit();
  *(a3 + 32) = &protocol witness table for SystemBannerHostViewController;
  swift_unknownObjectUnownedInit();
  CurrentValueSubject.send(_:)();

  return a3;
}

char *specialized SystemBannerHostViewController.init(controlsManager:sizeClass:type:delegate:isSystemAperturePresentation:requesterIdentifier:destination:layoutDescription:defaults:features:notificationCenter:activityUUID:fromActivityManager:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, unsigned __int8 a15, _BYTE *a16, uint64_t a17, uint64_t a18)
{
  v116 = a8;
  v114 = a7;
  v113 = a6;
  LODWORD(v122) = a5;
  v154 = a3;
  v152 = a4;
  v153 = a14;
  LODWORD(v117) = a15;
  v115 = a9;
  v151 = a11;
  v119 = a10;
  v121 = a13;
  v120 = a12;
  v112 = a18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v145 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE17SchedulerTimeTypeV6StrideVSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v140 = &v112 - v23;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAKy_AMy8Dispatch0K8WorkItemCSgAOGGGSo9NSRunLoopCGAUGMd);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v112 - v24;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAMy_AOy8Dispatch0L8WorkItemCSgAQGGGSo9NSRunLoopCGAWGA0_GMd);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v112 - v25;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAOy_AQy8Dispatch0N8WorkItemCSgASGGGSo9NSRunLoopCGAYGA2_GSo17OS_dispatch_queueCGMd);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v112 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v134 = &v112 - v28;
  v136 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCy8Dispatch0G8WorkItemCSgs5NeverOGGMd);
  v127 = *(v128 - 1);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v112 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGMd);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v112 - v31;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAGy_AIy8Dispatch0I8WorkItemCSgAKGGGMd);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v112 - v32;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAIy_AKy8Dispatch0J8WorkItemCSgAMGGGSo9NSRunLoopCGMd);
  v137 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v112 - v33;
  swift_unknownObjectWeakInit();
  v34 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notice];
  *v34 = 0u;
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0;
  v35 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_captureGroupName];
  *v35 = 0xD00000000000001ALL;
  v35[1] = 0x80000001BC5103D0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___captureOnlyBackdropView] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_shadowView] = 0;
  v36 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationTaskSubject;
  v159 = 0;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy8Dispatch0E8WorkItemCSgs5NeverOGMd);
  swift_allocObject();
  *&a16[v36] = CurrentValueSubject.init(_:)();
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationCancellable] = 0;
  v37 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_overriddenSystemApertureContent];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 2) = 0u;
  v37[48] = -1;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isTransitioningToEphemeralSystemApertureContent] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController____lazy_storage___systemApertureAlertingManager] = 0;
  v38 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_conversationControlsViewController];
  *v38 = 0;
  v38[1] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_expandedForMenuPresentation] = 0;
  v39 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requesterIdentifier];
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_layoutDescription] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_panGestureProxy] = 0;
  swift_unknownObjectWeakInit();
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_dismissalPreventionAssertion] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_gesturePriorityAssertion] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isPresentingMenu] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_forceSuppressSystemApertureOverAssociatedScene] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isShowingSystemApertureOverAssociatedScene] = 0;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activeLayoutMode] = 0;
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_canRequestAlertingAssertion] = 0;
  v41 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_nextSystemApertureLayoutMode];
  *v41 = 0;
  v41[8] = 1;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_contentRole] = 2;
  v42 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_leadingViewContainer;
  v43 = type metadata accessor for SystemApertureContainerView();
  *&a16[v42] = [objc_allocWithZone(v43) init];
  v44 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_trailingViewContainer;
  *&a16[v44] = [objc_allocWithZone(v43) init];
  v45 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_minimalViewContainer;
  *&a16[v45] = [objc_allocWithZone(v43) init];
  v46 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_detachedMinimalViewContainer;
  *&a16[v46] = [objc_allocWithZone(v43) init];
  v47 = *MEMORY[0x1E69D45B0];
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_elementIdentifier] = *MEMORY[0x1E69D45B0];
  v48 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_keyColor;
  v49 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v50 = v47;
  *&a16[v48] = [v49 initWithRed:0.192 green:0.82 blue:0.345 alpha:1.0];
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsManager] = a1;
  v51 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x2B8);
  v129 = a1;
  v52 = v51();
  v53 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_bannerIdentifier];
  *v53 = v52;
  v53[1] = v54;
  v55 = a2;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_sizeClass] = a2;
  v56 = v154;
  outlined init with copy of ConversationControlsType(v154, &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_controlsType]);
  ConversationControlsType.associatedNotice.getter(&v159);
  swift_beginAccess();
  outlined assign with take of Notice?(&v159, v34);
  swift_endAccess();
  v57 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_defaults];
  v58 = v112;
  *v57 = v151;
  v57[1] = v58;
  v59 = v120;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_features] = v120;
  v60 = v121;
  *&a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_notificationCenter] = v121;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_isSystemAperturePresentation] = v122;
  v157 = 0;
  v158 = 0xE000000000000000;
  swift_unknownObjectRetain();
  v122 = v59;
  v61 = v60;
  _StringGuts.grow(_:)(38);

  v157 = 0xD000000000000021;
  v158 = 0x80000001BC510C70;
  v62 = ConversationControlsSizeClass.description.getter(v55);
  MEMORY[0x1BFB20B10](v62);

  MEMORY[0x1BFB20B10](46, 0xE100000000000000);
  v63 = *v53;
  v64 = v53[1];
  v65 = MEMORY[0x1E69E7D40];

  MEMORY[0x1BFB20B10](v63, v64);

  v66 = v158;
  v67 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_requestIdentifier];
  *v67 = v157;
  v67[1] = v66;
  v68 = OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_activityUUID;
  v69 = type metadata accessor for UUID();
  v120 = *(v69 - 8);
  v70 = *(v120 + 16);
  v121 = v69;
  v70(&a16[v68], v153);
  swift_beginAccess();
  v71 = v114;
  *v39 = v113;
  v39[1] = v71;

  swift_beginAccess();
  v72 = *&a16[v40];
  v73 = v119;
  *&a16[v40] = v119;
  v119 = v73;

  v74 = &a16[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_destination];
  *v74 = v116;
  v74[8] = v115 & 1;
  v75 = type metadata accessor for SystemBannerHostViewController();
  v156.receiver = a16;
  v156.super_class = v75;
  v76 = objc_msgSendSuper2(&v156, sel_initWithNibName_bundle_, 0, 0);
  v77 = *((*v65 & *v76) + 0x418);
  v78 = v76;
  v77(v56, 0, 1, v117);
  [v61 addObserver:v78 selector:sel_callStatusChanged_ name:*MEMORY[0x1E69D8E08] object:0];
  v79 = one-time initialization token for contextMenuWillPresent;
  v80 = v78;
  if (v79 != -1)
  {
    swift_once();
  }

  [v61 addObserver:v80 selector:sel_contextMenuWillPresent_ name:static NSNotificationName.contextMenuWillPresent object:{0, v112}];

  v81 = one-time initialization token for contextMenuDidDismiss;
  v82 = v80;
  if (v81 != -1)
  {
    swift_once();
  }

  [v61 addObserver:v82 selector:sel_contextMenuDidDismiss_ name:static NSNotificationName.contextMenuDidDismiss object:0];

  [v61 addObserver:v82 selector:sel_callDisplayContextChanged_ name:*MEMORY[0x1E69D8E70] object:0];
  v83 = one-time initialization token for requestPreferredLayoutModeNotification;
  v84 = v82;
  if (v83 != -1)
  {
    swift_once();
  }

  [v61 addObserver:v84 selector:sel_requestPreferredLayoutMode name:static NSNotificationName.requestPreferredLayoutModeNotification object:0];

  [v61 addObserver:v84 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE348] object:0];
  v85 = [v61 addObserver:v84 selector:sel_handleSceneStateChangeNotification_ name:*MEMORY[0x1E69DE338] object:0];
  v86 = *((*v65 & *v84) + 0x2B8);
  v117 = v84;
  v87 = *(v86(v85) + OBJC_IVAR____TtC15ConversationKit29SystemApertureAlertingManager_invalidationInProgressSubject);

  v155 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd);
  v88 = v123;
  Publisher.filter(_:)();

  v155 = *(v84 + OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationTaskSubject);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<DispatchWorkItem?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy8Dispatch0E8WorkItemCSgs5NeverOGMd);

  v89 = v126;
  Publisher.filter(_:)();

  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<CurrentValueSubject<Bool, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>> and conformance Publishers.Filter<A>, &_s7Combine10PublishersO6FilterVy_AA19CurrentValueSubjectCy8Dispatch0G8WorkItemCSgs5NeverOGGMd);
  v90 = v130;
  v91 = v125;
  v92 = v128;
  Publisher.zip<A>(_:)();
  (v127)[1](v89, v92);
  (*(v124 + 8))(v88, v91);
  v93 = v133;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v127 = objc_opt_self();
  v94 = [v127 mainRunLoop];
  v155 = v94;
  v126 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v128 = v61;
  v95 = v134;
  __swift_storeEnumTagSinglePayload(v134, 1, 1, v126);
  v125 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>> and conformance Publishers.Zip<A, B>, &_s7Combine10PublishersO3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAGy_AIy8Dispatch0I8WorkItemCSgAKGGGMd);
  v124 = lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v96 = v132;
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  v135 = *(v135 + 8);
  v97 = v136;
  (v135)(v93, v136);
  (*(v131 + 8))(v90, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemCSgMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop> and conformance Publishers.Debounce<A, B>, &_s7Combine10PublishersO8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAIy_AKy8Dispatch0J8WorkItemCSgAMGGGSo9NSRunLoopCGMd);
  v98 = v138;
  Publisher.map<A>(_:)();
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  v99 = v140;
  __swift_storeEnumTagSinglePayload(v140, 1, 1, v97);
  v100 = [v127 mainRunLoop];
  v155 = v100;
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v126);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAKy_AMy8Dispatch0K8WorkItemCSgAOGGGSo9NSRunLoopCGAUGMd);
  v101 = v142;
  v102 = v141;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v95, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v99, &_sSo9NSRunLoopC10FoundationE17SchedulerTimeTypeV6StrideVSgMd);
  (v135)(v93, v97);
  (*(v139 + 8))(v98, v102);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v103 = static OS_dispatch_queue.main.getter();
  v155 = v103;
  v104 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v105 = v145;
  __swift_storeEnumTagSinglePayload(v145, 1, 1, v104);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.Delay<Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?>, NSRunLoop> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAMy_AOy8Dispatch0L8WorkItemCSgAQGGGSo9NSRunLoopCGAWGA0_GMd);
  lazy protocol witness table accessor for type TUConversationInvitationPreference and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
  v106 = v146;
  v107 = v144;
  Publisher.receive<A>(on:options:)();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v105, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v143 + 8))(v101, v107);
  swift_allocObject();
  v108 = v117;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Delay<Publishers.Map<Publishers.Debounce<Publishers.Zip<Publishers.Filter<CurrentValueSubject<Bool, Never>>, Publishers.Filter<CurrentValueSubject<DispatchWorkItem?, Never>>>, NSRunLoop>, DispatchWorkItem?>, NSRunLoop>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC5DelayVy_AC3MapVy_AC8DebounceVy_AC3ZipVy_AC6FilterVy_AA19CurrentValueSubjectCySbs5NeverOGGAOy_AQy8Dispatch0N8WorkItemCSgASGGGSo9NSRunLoopCGAYGA2_GSo17OS_dispatch_queueCGMd);
  v109 = v148;
  v110 = Publisher<>.sink(receiveValue:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v120 + 8))(v153, v121);
  outlined destroy of ConversationControlsType(v154);
  (*(v147 + 8))(v106, v109);
  (*(v137 + 8))(v149, v150);
  *&v108[OBJC_IVAR____TtC15ConversationKit30SystemBannerHostViewController_invalidationCancellable] = v110;

  return v108;
}

uint64_t type metadata accessor for SystemBannerHostViewController()
{
  result = type metadata singleton initialization cache for SystemBannerHostViewController;
  if (!type metadata singleton initialization cache for SystemBannerHostViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with take of Notice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SystemBannerHostError and conformance SystemBannerHostError()
{
  result = lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError;
  if (!lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError;
  if (!lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemBannerHostError and conformance SystemBannerHostError);
  }

  return result;
}

void partial apply for closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)()
{
  v1 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_22(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[11];
  v7 = v0 + ((*(v2 + 80) + 96) & ~*(v2 + 80));

  closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v3, v4, v5, (v0 + 5), v6, v7);
}

uint64_t _s15ConversationKit0A14ControlsRecipeVWOhTm_3(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SystemBannerDismissalReason and conformance SystemBannerDismissalReason()
{
  result = lazy protocol witness table cache variable for type SystemBannerDismissalReason and conformance SystemBannerDismissalReason;
  if (!lazy protocol witness table cache variable for type SystemBannerDismissalReason and conformance SystemBannerDismissalReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemBannerDismissalReason and conformance SystemBannerDismissalReason);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemBannerHostError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata completion function for SystemBannerHostViewController()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemBannerHostViewController.OverriddenSystemApertureContent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 49))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 7)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemBannerHostViewController.OverriddenSystemApertureContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t outlined assign with copy of SystemBannerHostViewController.OverriddenSystemApertureContent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit30SystemBannerHostViewControllerC010OverriddenC15ApertureContentVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)()
{
  v1 = *(type metadata accessor for ConversationControlsRecipe() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in SystemBannerHostViewController.updateContent(for:using:controllingWith:fromActivityManager:)(v0 + v2, v3);
}

id OUTLINED_FUNCTION_81_4(void *a1)
{
  v3 = *(v1 + 4048);

  return [a1 v3];
}

uint64_t HUDActivityService.__allocating_init(logger:callServices:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  HUDActivityService.init(logger:callServices:)(a1, a2);
  return v4;
}

uint64_t HUDActivityService.Activity.screeningState.getter()
{
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  v0 = OUTLINED_FUNCTION_46();

  return v1(v0);
}

uint64_t HUDActivityService.Activity.callUUID.getter()
{
  type metadata accessor for HUDActivityService.Activity(0);

  return OUTLINED_FUNCTION_46();
}

uint64_t HUDActivityService.Activity.listeners.getter()
{
  type metadata accessor for HUDActivityService.Activity(0);
}

uint64_t HUDActivityService.Activity.init(screeningState:callUUID:listeners:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for CallScreeningStatus();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for HUDActivityService.Activity(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

id closure #1 in variable initialization expression of HUDActivityService.activityManager@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (SBUIIsSystemApertureEnabled())
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for HUDActivityManager();
    v3 = &static HUDActivityManager.shared;
    v4 = &protocol witness table for HUDActivityManager;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for BannerActivityManager();
    v3 = &static BannerActivityManager.shared;
    v4 = &protocol witness table for BannerActivityManager;
  }

  v5 = *v3;
  a1[3] = v2;
  a1[4] = v4;
  *a1 = v5;

  return v5;
}

uint64_t HUDActivityService.init(logger:callServices:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  type metadata accessor for PhoneLockStateObserver();
  *(v2 + 16) = static PhoneLockStateObserver.shared.getter();
  *(v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_listeners) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_taskQueue;
  type metadata accessor for TaskQueue();
  *(v2 + v6) = TaskQueue.__allocating_init()();
  closure #1 in variable initialization expression of HUDActivityService.activityManager((v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activityManager));
  v7 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activity;
  v8 = type metadata accessor for HUDActivityService.Activity(0);
  __swift_storeEnumTagSinglePayload(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_hudActivity) = 0;
  v9 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 32))(v3 + v9, a1);
  outlined init with take of TapInteractionHandler(a2, v3 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_callServices);
  return v3;
}

uint64_t HUDActivityService.startActivity(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in HUDActivityService.startActivity(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in HUDActivityService.startActivity(with:), v4, v3);
}

uint64_t closure #1 in HUDActivityService.startActivity(with:)()
{
  OUTLINED_FUNCTION_9();

  v0._countAndFlagsBits = TranscriptionViewModel.callUUID.getter();
  HUDActivityService.startActivity(with:)(v0);

  OUTLINED_FUNCTION_13();

  return v1();
}

{
  v86 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];

  v6 = (v5 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_callServices);
  v7 = *(v5 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_callServices + 24);
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 128))(v4, v3, v7, v8);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[16], &_s20CommunicationsUICore19CallScreeningStatusOSgMd);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[9];
      v11 = v0[10];
      v13 = OUTLINED_FUNCTION_23();
      v85 = OUTLINED_FUNCTION_13_31();
      *v13 = 136315650;
      *(v13 + 4) = OUTLINED_FUNCTION_11_79("ConversationKit/HUDActivityService.swift", v52, v56, v60, v63, v66, v70, v74, v80);
      *(v13 + 12) = 2080;
      *(v13 + 14) = OUTLINED_FUNCTION_16_53("startActivity(with:)", v53, v57, v61, v64, v67, v71, v75, v81);
      *(v13 + 22) = 2080;
      *(v13 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v85);
      _os_log_impl(&dword_1BBC58000, v9, v10, "[%s] %s: Unable to start aperture activity. Could not get status for callUUID %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    goto LABEL_23;
  }

  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[8];
  (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  v17 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activity;
  swift_beginAccess();
  outlined init with copy of HUDActivityService.Activity?(v16 + v17, v14);
  v76 = v17;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[12], &_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
LABEL_22:
    v41 = v0[18];
    v40 = v0[19];
    v42 = v0[14];
    v43 = v0[10];
    v69 = v0[13];
    v73 = v0[11];
    v44 = v0[9];
    v55 = v44;
    v59 = v0[17];
    HUDActivityService._stopActivity(reason:)("We are about to start a new activity", 36, 2);
    v45 = swift_allocObject();
    swift_weakInit();
    v46 = swift_allocObject();
    v46[2] = v45;
    v46[3] = v44;
    v46[4] = v43;

    v47 = PhoneLockStateObserver.listen(wantsCurrentValue:with:)();

    (*(v41 + 16))(v42, v40, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BC4BA940;
    *(v48 + 56) = type metadata accessor for AnyCancellable();
    *(v48 + 32) = v47;
    v49 = (v42 + *(v69 + 20));
    *v49 = v55;
    v49[1] = v43;
    *(v42 + *(v69 + 24)) = v48;
    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v42, v73, type metadata accessor for HUDActivityService.Activity);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v69);
    swift_beginAccess();

    outlined assign with take of HUDActivityService.Activity?(v73, v16 + v76);
    swift_endAccess();
    HUDActivityService.startHUDActivity(activity:)(v42);

    outlined destroy of AnsweringMachineCallStatus(v42, type metadata accessor for HUDActivityService.Activity);
    (*(v41 + 8))(v40, v59);
    goto LABEL_23;
  }

  v18 = v0[8];
  OUTLINED_FUNCTION_6_91();
  outlined init with take of AnsweringMachineCallStatus(v19, v20, v21);
  v22 = *(v18 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_hudActivity);
  if (!v22)
  {
    v39 = v0[15];
    v38 = type metadata accessor for HUDActivityService.Activity;
    goto LABEL_21;
  }

  v23 = *(*v22 + 136);

  if (v23(v24))
  {
    goto LABEL_19;
  }

  v25 = v0[15];
  v26 = (v25 + *(v0[13] + 20));
  if (*v26 != v0[9] || v26[1] != v0[10])
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v25 = v0[15];
      goto LABEL_15;
    }

LABEL_19:
    v37 = v0[15];

    OUTLINED_FUNCTION_2_129();
    v39 = v37;
LABEL_21:
    outlined destroy of AnsweringMachineCallStatus(v39, v38);
    goto LABEL_22;
  }

LABEL_15:
  if ((MEMORY[0x1BFB1C980](v25, v0[19]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  v30 = os_log_type_enabled(v28, v29);
  v32 = v0[18];
  v31 = v0[19];
  v33 = v0[17];
  if (v30)
  {
    v77 = v0[9];
    v82 = v0[10];
    v34 = OUTLINED_FUNCTION_23();
    v85 = OUTLINED_FUNCTION_13_31();
    *v34 = 136315650;
    *(v34 + 4) = OUTLINED_FUNCTION_11_79("ConversationKit/HUDActivityService.swift", v52, v56, v60, v63, v66, v70, v77, v82);
    *(v34 + 12) = 2080;
    *(v34 + 14) = OUTLINED_FUNCTION_16_53("startActivity(with:)", v54, v58, v62, v65, v68, v72, v78, v83);
    *(v34 + 22) = 2080;
    *(v34 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v84, &v85);
    _os_log_impl(&dword_1BBC58000, v28, v29, "[%s] %s: Unable to start new aperture activity. Current Activity Status matches the new status for callUUID %s", v34, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  (*(v32 + 8))(v31, v33);
  OUTLINED_FUNCTION_2_129();
  outlined destroy of AnsweringMachineCallStatus(v35, v36);
LABEL_23:

  OUTLINED_FUNCTION_13();

  return v50();
}

uint64_t partial apply for closure #1 in HUDActivityService.startActivity(with:)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v3 = OUTLINED_FUNCTION_46();

  return closure #1 in HUDActivityService.startActivity(with:)(v3, v4);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);
  v5 = OUTLINED_FUNCTION_44_0();

  return closure #1 in HUDActivityService.startActivity(with:)(v5, v6, v1);
}

Swift::Void __swiftcall HUDActivityService.startActivity(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = countAndFlagsBits;
  v4[4] = object;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in HUDActivityService.startActivity(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for HUDActivityService.Activity(0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for CallScreeningStatus();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in HUDActivityService.startActivity(with:), v6, v5);
}

uint64_t HUDActivityService._stopActivity(reason:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v54 = a3;
  v52 = a1;
  v53 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for HUDActivityService.Activity(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_hudActivity;
  v18 = *(v3 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_hudActivity);
  v19 = &unk_1EDDBC000;
  if (v18)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v49 = v13;
      v50 = v16;
      v51 = v7;
      v22 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v22 = 136315906;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, v56);
      *(v22 + 12) = 2080;
      *(v22 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001BC510DC0, v56);
      *(v22 + 22) = 2080;
      v23 = v4 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activity;
      swift_beginAccess();
      if (__swift_getEnumTagSinglePayload(v23, 1, v11))
      {
        v24 = 0xE400000000000000;
        v25 = 1162760014;
      }

      else
      {
        v26 = (v23 + *(v11 + 20));
        v25 = *v26;
        v24 = v26[1];
      }

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v56);

      *(v22 + 24) = v27;
      *(v22 + 32) = 2080;
      v28 = StaticString.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v56);

      *(v22 + 34) = v30;
      _os_log_impl(&dword_1BBC58000, v20, v21, "[%s]%s: stopping hud activity for callUUID %s with reason %s", v22, 0x2Au);
      v31 = v48;
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v31, -1, -1);
      MEMORY[0x1BFB23DF0](v22, -1, -1);

      v16 = v50;
      v7 = v51;
      v13 = v49;
    }

    else
    {
    }

    (*(*v18 + 304))();

    *(v4 + v17) = 0;

    v19 = &unk_1EDDBC000;
  }

  v32 = v19[113];
  swift_beginAccess();
  outlined init with copy of HUDActivityService.Activity?(v4 + v32, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  }

  outlined init with take of AnsweringMachineCallStatus(v10, v16, type metadata accessor for HUDActivityService.Activity);
  _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v16, v13, type metadata accessor for HUDActivityService.Activity);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v51 = v7;
    v37 = v36;
    v49 = swift_slowAlloc();
    v55[0] = v49;
    *v37 = 136315906;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, v55);
    *(v37 + 12) = 2080;
    *(v37 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001BC510DC0, v55);
    *(v37 + 22) = 2080;
    v38 = &v13[*(v11 + 20)];
    v50 = v16;
    v39 = *v38;
    v40 = v38[1];

    outlined destroy of AnsweringMachineCallStatus(v13, type metadata accessor for HUDActivityService.Activity);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v55);

    *(v37 + 24) = v41;
    *(v37 + 32) = 2080;
    v42 = StaticString.description.getter();
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v55);

    *(v37 + 34) = v44;
    _os_log_impl(&dword_1BBC58000, v34, v35, "[%s]%s: removing activity for callUUID %s with reason %s", v37, 0x2Au);
    v45 = v49;
    swift_arrayDestroy();
    MEMORY[0x1BFB23DF0](v45, -1, -1);
    v46 = v37;
    v7 = v51;
    MEMORY[0x1BFB23DF0](v46, -1, -1);

    v47 = v50;
  }

  else
  {

    outlined destroy of AnsweringMachineCallStatus(v13, type metadata accessor for HUDActivityService.Activity);
    v47 = v16;
  }

  outlined destroy of AnsweringMachineCallStatus(v47, type metadata accessor for HUDActivityService.Activity);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  swift_beginAccess();
  outlined assign with take of HUDActivityService.Activity?(v7, v4 + v32);
  return swift_endAccess();
}

uint64_t closure #1 in closure #1 in HUDActivityService.startActivity(with:)(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      HUDActivityService.stopActivity(reason:)("Locked", 6, 2);
    }

    else
    {
      v8._countAndFlagsBits = a3;
      v8._object = a4;
      HUDActivityService.startActivity(with:)(v8);
    }
  }

  return result;
}

uint64_t HUDActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  dispatch thunk of TaskQueue.async(_:)();
}

void HUDActivityService.startHUDActivity(activity:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v76 - v5;
  v6 = type metadata accessor for UUID();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for HUDActivityManager.BannerUpdate(0);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v76 - v11;
  v84 = type metadata accessor for HUDActivityService.Activity(0);
  MEMORY[0x1EEE9AC00](v84);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  v21 = type metadata accessor for CallScreeningStatus();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PhoneLockStateObserver.fetchLockState()())
  {
    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(a1, v13, type metadata accessor for HUDActivityService.Activity);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v86 = v28;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, &v86);
      *(v27 + 12) = 2080;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC510E30, &v86);
      *(v27 + 22) = 2080;
      v29 = &v13[*(v84 + 20)];
      v30 = *v29;
      v31 = v29[1];

      outlined destroy of AnsweringMachineCallStatus(v13, type metadata accessor for HUDActivityService.Activity);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v86);

      *(v27 + 24) = v32;
      v33 = "[%s] %s: Unable to start new HUD activity for callUUID %s because we are locked.";
LABEL_13:
      _os_log_impl(&dword_1BBC58000, v25, v26, v33, v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v28, -1, -1);
      MEMORY[0x1BFB23DF0](v27, -1, -1);

      return;
    }

    v62 = v13;
LABEL_20:
    outlined destroy of AnsweringMachineCallStatus(v62, type metadata accessor for HUDActivityService.Activity);
    return;
  }

  (*(v22 + 16))(v24, a1, v21);
  v34 = (*(v22 + 88))(v24, v21);
  v35 = a1;
  if (v34 != *MEMORY[0x1E6995EA8])
  {
    if (v34 != *MEMORY[0x1E6995E98])
    {
      if (v34 == *MEMORY[0x1E6995EA0])
      {
        v36 = 20;
        goto LABEL_6;
      }

      if (v34 == *MEMORY[0x1E6995EB0])
      {
        v36 = 22;
        goto LABEL_6;
      }

      (*(v22 + 8))(v24, v21);
    }

    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(a1, v20, type metadata accessor for HUDActivityService.Activity);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v85[0] = v28;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, v85);
      *(v27 + 12) = 2080;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC510E30, v85);
      *(v27 + 22) = 2080;
      v63 = &v20[*(v84 + 20)];
      v64 = *v63;
      v65 = v63[1];

      outlined destroy of AnsweringMachineCallStatus(v20, type metadata accessor for HUDActivityService.Activity);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v85);

      *(v27 + 24) = v66;
      v33 = "[%s] %s: Unable to start new HUD activity. Current Activity Status is not a supported status for callUUID %s";
      goto LABEL_13;
    }

    v62 = v20;
    goto LABEL_20;
  }

  (*(v22 + 8))(v24, v21);
  v36 = 21;
LABEL_6:
  v86 = v36;
  v87 = 0u;
  v88 = 0u;
  v89 = 7;
  outlined init with copy of ConversationControlsType(&v86, v85);
  UUID.init()();
  v37 = v82;
  v38 = v83;
  v39 = &v83[v82[11]];
  *(v39 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v38 = 0x408C200000000000;
  outlined init with copy of ConversationControlsType(v85, v38 + 8);
  *(v38 + 56) = 0;
  *(v38 + 64) = 1;
  *(v39 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *(v38 + 65) = 0;
  v40 = v81;
  (*(v81 + 16))(v38 + v37[8], v8, v6);
  static Date.now.getter();
  (*(v40 + 8))(v8, v6);
  outlined destroy of ConversationControlsType(v85);
  *(v38 + v37[10]) = 0;
  *(v38 + v37[12]) = 0;
  v41 = *(v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activityManager + 24);
  v42 = *(v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activityManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activityManager), v41);
  v43 = (*(v42 + 8))(v38, v41, v42);
  if (v43)
  {
    *(v2 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_hudActivity) = v43;

    v44 = v79;
    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v38, v79, type metadata accessor for HUDActivityManager.BannerUpdate);
    v45 = v80;
    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v35, v80, type metadata accessor for HUDActivityService.Activity);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v85[0] = v49;
      *v48 = 136315906;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, v85);
      *(v48 + 12) = 2080;
      *(v48 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC510E30, v85);
      *(v48 + 22) = 2080;
      v50 = v77;
      _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v44, v77, type metadata accessor for HUDActivityManager.BannerUpdate);
      __swift_storeEnumTagSinglePayload(v50, 0, 1, v82);
      specialized >> prefix<A>(_:)();
      v52 = v51;
      v54 = v53;
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v50, &_s15ConversationKit18HUDActivityManagerC12BannerUpdateVSgMd);
      outlined destroy of AnsweringMachineCallStatus(v44, type metadata accessor for HUDActivityManager.BannerUpdate);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v85);

      *(v48 + 24) = v55;
      *(v48 + 32) = 2080;
      v56 = v80;
      v57 = (v80 + *(v84 + 20));
      v58 = *v57;
      v59 = v57[1];

      outlined destroy of AnsweringMachineCallStatus(v56, type metadata accessor for HUDActivityService.Activity);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v85);

      *(v48 + 34) = v60;
      _os_log_impl(&dword_1BBC58000, v46, v47, "[%s] %s: Showing Banner %s for callUUID %s", v48, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v49, -1, -1);
      MEMORY[0x1BFB23DF0](v48, -1, -1);

      v61 = v83;
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v45, type metadata accessor for HUDActivityService.Activity);
      outlined destroy of AnsweringMachineCallStatus(v44, type metadata accessor for HUDActivityManager.BannerUpdate);
      v61 = v38;
    }
  }

  else
  {
    v67 = v78;
    _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v35, v78, type metadata accessor for HUDActivityService.Activity);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v70 = 136315650;
      *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x80000001BC510D10, v85);
      *(v70 + 12) = 2080;
      *(v70 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001BC510E30, v85);
      *(v70 + 22) = 2080;
      v72 = (v67 + *(v84 + 20));
      v73 = *v72;
      v74 = v72[1];

      outlined destroy of AnsweringMachineCallStatus(v67, type metadata accessor for HUDActivityService.Activity);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v85);

      *(v70 + 24) = v75;
      _os_log_impl(&dword_1BBC58000, v68, v69, "[%s] %s: Unable to start new HUD activity. For  callUUID %s", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v71, -1, -1);
      MEMORY[0x1BFB23DF0](v70, -1, -1);
    }

    else
    {

      outlined destroy of AnsweringMachineCallStatus(v67, type metadata accessor for HUDActivityService.Activity);
    }

    v61 = v38;
  }

  outlined destroy of AnsweringMachineCallStatus(v61, type metadata accessor for HUDActivityManager.BannerUpdate);
  outlined destroy of ConversationControlsType(&v86);
}

uint64_t closure #1 in HUDActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in HUDActivityService.stopActivity(reason:), v6, v5);
}

uint64_t closure #1 in HUDActivityService.stopActivity(reason:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 48);

  v2 = OUTLINED_FUNCTION_44_0();
  HUDActivityService._stopActivity(reason:)(v2, v3, v1);
  OUTLINED_FUNCTION_13();

  return v4();
}

uint64_t HUDActivityService.update(with:)(uint64_t a1)
{
  v3 = type metadata accessor for AnsweringMachineCallStatus();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_1_133();
  _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(a1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  outlined init with take of AnsweringMachineCallStatus(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AnsweringMachineCallStatus);

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in HUDActivityService.update(with:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for CallScreeningStatus();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for AnsweringMachineCallStatus();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for HUDActivityService.Activity(0);
  v2[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in HUDActivityService.update(with:), v5, v4);
}

uint64_t closure #1 in HUDActivityService.update(with:)()
{
  v142 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[5];

  v4 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activity;
  swift_beginAccess();
  outlined init with copy of HUDActivityService.Activity?(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
  {
    v22 = v0[18];
    v23 = v0[19];
    v24 = v0[6];
    OUTLINED_FUNCTION_6_91();
    outlined init with take of AnsweringMachineCallStatus(v25, v23, v26);
    v27 = (v23 + *(v22 + 20));
    v29 = *(v24 + 16);
    v28 = *(v24 + 24);
    v30 = *v27 == v29 && v27[1] == v28;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v31 = v0[5];
      v32 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_logger;
      OUTLINED_FUNCTION_1_133();
      _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v33, v34, v35);
      v137 = v32;
      v139 = v31;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[16];
      if (v38)
      {
        v40 = OUTLINED_FUNCTION_23();
        v135 = v29;
        v141 = OUTLINED_FUNCTION_13_31();
        *v40 = 136315650;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000075, 0x80000001BC510D40, &v141);
        *(v40 + 12) = 2080;
        OUTLINED_FUNCTION_7_84();
        *(v40 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v43);
        *(v40 + 22) = 2080;
        AnsweringMachineCallStatus.description.getter();
        OUTLINED_FUNCTION_0_166();
        outlined destroy of AnsweringMachineCallStatus(v39, v44);
        v45 = OUTLINED_FUNCTION_44_0();
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v47);

        *(v40 + 24) = v48;
        _os_log_impl(&dword_1BBC58000, v36, v37, "[%s] %s: recieved callStatus %s", v40, 0x20u);
        OUTLINED_FUNCTION_18_47();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      else
      {

        OUTLINED_FUNCTION_0_166();
        outlined destroy of AnsweringMachineCallStatus(v39, v51);
        OUTLINED_FUNCTION_18_47();
      }

      v53 = v0[7];
      v52 = v0[8];
      v54 = (v0[5] + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_callServices);
      v55 = v54[3];
      v56 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v55);
      (*(v56 + 128))(v29, v28, v55, v56);
      if (__swift_getEnumTagSinglePayload(v53, 1, v52) != 1)
      {
        (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
        lazy protocol witness table accessor for type CallScreeningStatus and conformance CallScreeningStatus();
        if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
        {
          v109 = v29;
          OUTLINED_FUNCTION_1_133();
          _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v110, v111, v112);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          v115 = os_log_type_enabled(v113, v114);
          v116 = v0[15];
          if (v115)
          {
            v117 = OUTLINED_FUNCTION_23();
            v141 = OUTLINED_FUNCTION_13_31();
            *v117 = 136315650;
            *(v117 + 4) = OUTLINED_FUNCTION_5_111("ConversationKit/HUDActivityService.swift", v134, v135, v137, v139);
            *(v117 + 12) = 2080;
            v118 = OUTLINED_FUNCTION_4_118();
            *(v117 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v37, v119);
            *(v117 + 22) = 2080;

            OUTLINED_FUNCTION_0_166();
            outlined destroy of AnsweringMachineCallStatus(v116, v120);
            v121 = OUTLINED_FUNCTION_44_0();
            v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, v123);

            *(v117 + 24) = v124;
            _os_log_impl(&dword_1BBC58000, v113, v114, "[%s] %s: Screening Status unchanged for callUUID %s", v117, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_27();
          }

          else
          {

            OUTLINED_FUNCTION_0_166();
            outlined destroy of AnsweringMachineCallStatus(v116, v128);
          }

          v129 = v0[19];
          v131 = v0[9];
          v130 = v0[10];
          v132 = v0[8];
          v133._countAndFlagsBits = v109;
          v133._object = v28;
          HUDActivityService.startActivity(with:)(v133);
          (*(v131 + 8))(v130, v132);
          OUTLINED_FUNCTION_2_129();
          v50 = v129;
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_1_133();
        _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v72, v73, v74);
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = v0[14];
        v80 = v0[9];
        v79 = v0[10];
        v81 = v0[8];
        if (v77)
        {
          v82 = OUTLINED_FUNCTION_23();
          v141 = OUTLINED_FUNCTION_13_31();
          *v82 = 136315650;
          *(v82 + 4) = OUTLINED_FUNCTION_5_111("ConversationKit/HUDActivityService.swift", v134, v135, v137, v139);
          v140 = v79;
          *(v82 + 12) = 2080;
          v83 = OUTLINED_FUNCTION_4_118();
          *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v37, v84);
          *(v82 + 22) = 2080;

          OUTLINED_FUNCTION_0_166();
          outlined destroy of AnsweringMachineCallStatus(v78, v85);
          v86 = OUTLINED_FUNCTION_44_0();
          v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v88);

          *(v82 + 24) = v89;
          _os_log_impl(&dword_1BBC58000, v75, v76, "[%s] %s: Screening Status unchanged for callUUID %s", v82, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_27();

          (*(v80 + 8))(v140, v81);
        }

        else
        {

          OUTLINED_FUNCTION_0_166();
          outlined destroy of AnsweringMachineCallStatus(v78, v125);
          (*(v80 + 8))(v79, v81);
        }

        goto LABEL_27;
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[7], &_s20CommunicationsUICore19CallScreeningStatusOSgMd);
      OUTLINED_FUNCTION_1_133();
      v57 = OUTLINED_FUNCTION_46();
      _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v57, v58, v59);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v0[13];
      if (v62)
      {
        v64 = OUTLINED_FUNCTION_23();
        v141 = OUTLINED_FUNCTION_13_31();
        *v64 = 136315650;
        *(v64 + 4) = OUTLINED_FUNCTION_5_111("ConversationKit/HUDActivityService.swift", v134, v135, v137, v139);
        *(v64 + 12) = 2080;
        v65 = OUTLINED_FUNCTION_4_118();
        *(v64 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v37, v66);
        *(v64 + 22) = 2080;

        OUTLINED_FUNCTION_0_166();
        outlined destroy of AnsweringMachineCallStatus(v63, v67);
        v68 = OUTLINED_FUNCTION_44_0();
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, v70);

        *(v64 + 24) = v71;
        _os_log_impl(&dword_1BBC58000, v60, v61, "[%s] %s: Could not get status for callUUID %s", v64, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

LABEL_27:
        v50 = v0[19];
        v49 = type metadata accessor for HUDActivityService.Activity;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_0_166();
      v108 = v63;
    }

    else
    {
      OUTLINED_FUNCTION_1_133();
      _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v90, v91, v92);
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.default.getter();
      v95 = os_log_type_enabled(v93, v94);
      v96 = v0[12];
      if (v95)
      {
        v97 = OUTLINED_FUNCTION_23();
        v141 = OUTLINED_FUNCTION_13_31();
        *v97 = 136315650;
        *(v97 + 4) = OUTLINED_FUNCTION_5_111("ConversationKit/HUDActivityService.swift", v134, v135, v136, v138);
        *(v97 + 12) = 2080;
        OUTLINED_FUNCTION_4_118();
        OUTLINED_FUNCTION_7_84();
        *(v97 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v141);
        *(v97 + 22) = 2080;
        v100 = AnsweringMachineCallStatus.description.getter();
        v102 = v101;
        OUTLINED_FUNCTION_0_166();
        outlined destroy of AnsweringMachineCallStatus(v96, v103);
        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v141);

        *(v97 + 24) = v104;
        OUTLINED_FUNCTION_19_38(&dword_1BBC58000, v105, v106, "[%s] %s: recieved callStatus %s but the callUUID did not match");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_0_166();
      v108 = v96;
    }

    outlined destroy of AnsweringMachineCallStatus(v108, v107);
    goto LABEL_27;
  }

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0[17], &_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  OUTLINED_FUNCTION_1_133();
  v5 = OUTLINED_FUNCTION_46();
  _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(v5, v6, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[11];
  if (v10)
  {
    v12 = OUTLINED_FUNCTION_23();
    v141 = OUTLINED_FUNCTION_13_31();
    *v12 = 136315650;
    *(v12 + 4) = OUTLINED_FUNCTION_5_111("ConversationKit/HUDActivityService.swift", v134, v135, v136, v138);
    *(v12 + 12) = 2080;
    OUTLINED_FUNCTION_4_118();
    OUTLINED_FUNCTION_7_84();
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v141);
    *(v12 + 22) = 2080;
    v15 = AnsweringMachineCallStatus.description.getter();
    v17 = v16;
    OUTLINED_FUNCTION_0_166();
    outlined destroy of AnsweringMachineCallStatus(v11, v18);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v141);

    *(v12 + 24) = v19;
    OUTLINED_FUNCTION_19_38(&dword_1BBC58000, v20, v21, "[%s] %s: recieved callStatus %s but there was no activity to update");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();

    goto LABEL_29;
  }

  OUTLINED_FUNCTION_0_166();
  v50 = v11;
LABEL_28:
  outlined destroy of AnsweringMachineCallStatus(v50, v49);
LABEL_29:

  OUTLINED_FUNCTION_13();

  return v126();
}

uint64_t partial apply for closure #1 in HUDActivityService.update(with:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(type metadata accessor for AnsweringMachineCallStatus() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in HUDActivityService.startActivity(with:);

  return closure #1 in HUDActivityService.update(with:)(v3, v0 + v2);
}

uint64_t HUDActivityService.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18HUDActivityService_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_callServices);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activityManager);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v0 + OBJC_IVAR____TtC15ConversationKit18HUDActivityService_activity, &_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);

  return v0;
}

uint64_t HUDActivityService.__deallocating_deinit()
{
  HUDActivityService.deinit();

  return swift_deallocClassInstance();
}

void type metadata completion function for HUDActivityService()
{
  type metadata accessor for Logger();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HUDActivityService.Activity?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for HUDActivityService.Activity?()
{
  if (!lazy cache variable for type metadata for HUDActivityService.Activity?)
  {
    type metadata accessor for HUDActivityService.Activity(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HUDActivityService.Activity?);
    }
  }
}

void type metadata completion function for HUDActivityService.Activity()
{
  type metadata accessor for CallScreeningStatus();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Any]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Any]()
{
  if (!lazy cache variable for type metadata for [Any])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Any]);
    }
  }
}

uint64_t outlined init with copy of HUDActivityService.Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnsweringMachineCallStatus(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined destroy of AnsweringMachineCallStatus(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s15ConversationKit26AnsweringMachineCallStatusVWOcTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined assign with take of HUDActivityService.Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit18HUDActivityServiceC8ActivityVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

CNKCoreAnalyticsReporter __swiftcall CNKCoreAnalyticsReporter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t CNKCoreAnalyticsReporter.reportAVLessLeaveConfirmation(presentedAt:action:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x736553657661656CLL;
    }

    else
    {
      v10 = 0x6E6F697463416F6ELL;
    }

    if (a2 == 1)
    {
      v11 = 0xEC0000006E6F6973;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  else
  {
    v11 = 0xEF6E6F6973736553;
    v10 = 0x65756E69746E6F63;
  }

  v12 = MEMORY[0x1BFB209B0](v10, v11);

  *(inited + 72) = v12;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v13 = Dictionary.init(dictionaryLiteral:)();
  CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(0xD00000000000002BLL, 0x80000001BC510E60, v13);
}

uint64_t CNKCoreAnalyticsReporter.reportStartedNoticeLaunch(_:)(void *a1)
{
  v1 = [a1 activity];
  v2 = [v1 metadata];

  if (v2)
  {
    v3 = [v2 context];

    v4 = [v3 analyticsIdentifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E55;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  strcpy((inited + 32), "activity_type");
  *(inited + 46) = -4864;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  *(inited + 48) = NSAttributedString.__allocating_init(string:)(v9);
  *(inited + 56) = 0x745F6E6F69746361;
  *(inited + 64) = 0xEB00000000657079;
  v10._object = 0x80000001BC510EC0;
  v10._countAndFlagsBits = 0xD000000000000024;
  *(inited + 72) = NSAttributedString.__allocating_init(string:)(v10);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v11 = Dictionary.init(dictionaryLiteral:)();
  CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(0xD00000000000002ELL, 0x80000001BC510E90, v11);
}

uint64_t CNKCoreAnalyticsReporterIncompatibilityReason.stringValue.getter(uint64_t a1)
{
  v1 = 0x6163207472617453;
  switch(a1)
  {
    case 0:
      return v1;
    case 1:
      v1 = 0x706F657020646441;
      break;
    case 2:
      v1 = 0xD000000000000014;
      break;
    case 3:
      OUTLINED_FUNCTION_0_167();
      v1 = v3 + 14;
      break;
    case 4:
      OUTLINED_FUNCTION_0_167();
      v1 = v2 + 5;
      break;
    case 5:
      OUTLINED_FUNCTION_0_167();
      v1 = v8 | 2;
      break;
    case 6:
      v1 = 0xD000000000000014;
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, &static Log.default);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.fault.getter();
      v1 = 0x6E776F6E6B6E55;
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1BBC58000, v5, v6, "Unknown enum case", v7, 2u);
        MEMORY[0x1BFB23DF0](v7, -1, -1);
      }

      break;
  }

  return v1;
}

ConversationKit::AVLessLeaveConfirmationAction_optional __swiftcall AVLessLeaveConfirmationAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AVLessLeaveConfirmationAction.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AVLessLeaveConfirmationAction.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65756E69746E6F63;
  }

  if (a1 == 1)
  {
    return 0x736553657661656CLL;
  }

  return 0x6E6F697463416F6ELL;
}

ConversationKit::AVLessLeaveConfirmationAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AVLessLeaveConfirmationAction@<W0>(Swift::String *a1@<X0>, ConversationKit::AVLessLeaveConfirmationAction_optional *a2@<X8>)
{
  result.value = AVLessLeaveConfirmationAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AVLessLeaveConfirmationAction@<X0>(uint64_t *a1@<X8>)
{
  result = AVLessLeaveConfirmationAction.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CNKCoreAnalyticsReporter.logSOSCancelCountdownEvent(type:duration:)(uint64_t a1, void *a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BAA20;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  *(inited + 48) = NSAttributedString.__allocating_init(string:)(v7);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001BC511080;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v8 = Dictionary.init(dictionaryLiteral:)();
  CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(0xD00000000000002ALL, 0x80000001BC511050, v8);
}

uint64_t CNKCoreAnalyticsReporter.report(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA940;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001BC510FD0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v3 = Dictionary.init(dictionaryLiteral:)();
  CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(0xD00000000000002CLL, 0x80000001BC510FA0, v3);
}

void CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conversationKit != -1)
  {
    swift_once();
  }

  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BC4BAA20;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd);
  *(v6 + 104) = lazy protocol witness table accessor for type [String : NSObject] and conformance [A : B]();
  *(v6 + 72) = a3;

  os_log(_:dso:log:type:_:)();

  v7 = MEMORY[0x1BFB209B0](a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v10[4] = partial apply for closure #1 in CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:);
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v10[3] = &block_descriptor_71;
  v9 = _Block_copy(v10);

  AnalyticsSendEventLazy();
  _Block_release(v9);
}

uint64_t CNKCoreAnalyticsReporter.logIncompatibilityEvent(type:reason:recipientCount:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BB980;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  *(inited + 48) = NSAttributedString.__allocating_init(string:)(v11);
  *(inited + 56) = 0x6E6F73616572;
  *(inited + 64) = 0xE600000000000000;

  v12._countAndFlagsBits = a3;
  v12._object = a4;
  *(inited + 72) = NSAttributedString.__allocating_init(string:)(v12);
  strcpy((inited + 80), "recipientCount");
  *(inited + 95) = -18;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v13 = Dictionary.init(dictionaryLiteral:)();
  CNKCoreAnalyticsReporter.logEvent(viewName:coreAnalyticsDictionary:)(0xD000000000000022, 0x80000001BC511020, v13);
}

uint64_t CNKCoreAnalyticsReporter.reportIncompatibilityTypeNone(recipientCount:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = CNKCoreAnalyticsReporterIncompatibilityReason.stringValue.getter(a2);
  CNKCoreAnalyticsReporter.logIncompatibilityEvent(type:reason:recipientCount:)(a3, a4, v7, v8, a1);
}

unint64_t lazy protocol witness table accessor for type AVLessLeaveConfirmationAction and conformance AVLessLeaveConfirmationAction()
{
  result = lazy protocol witness table cache variable for type AVLessLeaveConfirmationAction and conformance AVLessLeaveConfirmationAction;
  if (!lazy protocol witness table cache variable for type AVLessLeaveConfirmationAction and conformance AVLessLeaveConfirmationAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVLessLeaveConfirmationAction and conformance AVLessLeaveConfirmationAction);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AVLessLeaveConfirmationAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t CircularBuffer.init(count:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v3);
  __swift_storeEnumTagSinglePayload(&v6 - v4, 1, 1, a2);
  return Array.init(repeating:count:)();
}

void CircularBuffer.push(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = v2[1];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v2[2];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 != 0x8000000000000000 || v13 != -1)
  {
    v15 = v12 % v13;
    v2[1] = v12 % v13;
    (*(*(v4 - 8) + 16))(v9, a1, v4, v7);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v4);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v16 = *v2;
    Array._checkSubscript_mutating(_:)(v15);
    (*(v6 + 40))(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v5);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t CircularBuffer.read(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a3 + result;
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = __OFADD__(v7, a4);
  v9 = v7 + a4;
  if (v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  if (a4 == -1 && v9 == 0x8000000000000000)
  {
    goto LABEL_19;
  }

  v12 = v9 % a4;
  if (v9 % a4 < 1 || (v14 = type metadata accessor for Optional(), v12 >= MEMORY[0x1BFB20DB0](a2, v14)))
  {

    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a5);
  }

  else
  {

    return Array.subscript.getter();
  }
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t type metadata instantiation function for CircularBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for tipUserInfo()
{
  type metadata accessor for MultiwayViewController.FaceTimeLinkTipUserInfo();
  result = swift_allocObject();
  *(result + 16) = 0;
  static MultiwayViewController.tipUserInfo = result;
  return result;
}

{
  type metadata accessor for RecentsListViewController.FaceTimeLinkTipUserInfo();
  result = swift_allocObject();
  *(result + 16) = 0;
  static RecentsListViewController.tipUserInfo = result;
  return result;
}

uint64_t closure #1 in MultiwayViewController.tipKitStartObservation()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for FaceInFrameTip();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = closure #1 in MultiwayViewController.tipKitStartObservation();

  return MEMORY[0x1EEE48730](v3);
}

uint64_t closure #1 in MultiwayViewController.tipKitStartObservation()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  type metadata accessor for MainActor();
  *(v0 + 88) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 80);

  dispatch thunk of TPTipsHelper.setup()();

  v2 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_65();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    FaceInFrameTip.init()();
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = closure #1 in MultiwayViewController.tipKitStartObservation();
    v3 = v0[8];

    return specialized MultiwayViewController.observeTip<A>(_:)(v3);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t partial apply for closure #1 in MultiwayViewController.tipKitStartObservation()()
{
  OUTLINED_FUNCTION_24_0();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_130(v2);

  return closure #1 in MultiwayViewController.tipKitStartObservation()(v0);
}

uint64_t specialized MultiwayViewController.observeTip<A>(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for FaceInFrameTip();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v2[17] = *(v6 + 64);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v8;
  v2[23] = v7;

  return MEMORY[0x1EEE6DFA0](specialized MultiwayViewController.observeTip<A>(_:), v8, v7);
}

uint64_t specialized MultiwayViewController.observeTip<A>(_:)()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[7];
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[24] = v9;
  v0[25] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  (*(v5 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v0[26] = v14;
  type metadata accessor for TPTipsHelper();
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  v16 = OUTLINED_FUNCTION_130(v15);

  return MEMORY[0x1EEE48730](v16);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v7 + 224) = v6;

  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 184);
  v10 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](specialized MultiwayViewController.observeTip<A>(_:), v10, v9);
}

{
  v1 = v0[28];
  v12 = v0[24];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v13 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  (*(v6 + 104))(v5, *MEMORY[0x1E69D88E8], v7);
  v0[5] = v3;
  v0[6] = lazy protocol witness table accessor for type FaceInFrameTip and conformance FaceInFrameTip();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v3);

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v4 + 8))(v2, v13);

  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t MultiwayViewController.tipKitStartObservation()()
{
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in MultiwayViewController.tipKitStopObservation()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in MultiwayViewController.tipKitStopObservation(), 0, 0);
}

uint64_t closure #1 in MultiwayViewController.tipKitStopObservation()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_12_65();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_130(v2);

    return MultiwayViewController.dismissPopover()();
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v4();
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;

  type metadata accessor for TPTipsHelper();
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  *v6 = v4;
  v7 = OUTLINED_FUNCTION_130(v6);

  return MEMORY[0x1EEE48730](v7);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E69D88E8], v0[6]);
  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];

  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  (*(v3 + 8))(v2, v4);
  v5 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 120) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v1 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  if (one-time initialization token for tipUserInfo != -1)
  {
    OUTLINED_FUNCTION_0_168();
  }

  type metadata accessor for MultiwayViewController.FaceTimeLinkTipUserInfo();
  OUTLINED_FUNCTION_20();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  static MultiwayViewController.tipUserInfo = v0;

  v1 = OUTLINED_FUNCTION_18_3();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v1();
}

uint64_t partial apply for closure #1 in MultiwayViewController.tipKitStopObservation()()
{
  OUTLINED_FUNCTION_24_0();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_130(v2);

  return closure #1 in MultiwayViewController.tipKitStopObservation()(v0);
}

uint64_t MultiwayViewController.dismissPopover()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = MultiwayViewController.dismissPopover();

  return MultiwayViewController.tipPopoverController.getter();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_14_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;
  *(v6 + 40) = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_21_1();
  v7 = OUTLINED_FUNCTION_1_4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    [v2 dismissViewControllerAnimated:1 completion:0];
    if (one-time initialization token for tipUserInfo != -1)
    {
      OUTLINED_FUNCTION_0_168();
    }

    v3 = static MultiwayViewController.tipUserInfo;

    v4 = v3[2];
    v3[2] = 0;
  }

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t specialized closure #1 in MultiwayViewController.observeTip<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v5[51] = swift_task_alloc();
  v6 = type metadata accessor for Tips.Status();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[56] = swift_task_alloc();
  v5[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[58] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v5[59] = v7;
  v5[60] = *(v7 - 8);
  v5[61] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v5[62] = v8;
  v5[63] = *(v8 - 8);
  v5[64] = swift_task_alloc();
  v5[65] = type metadata accessor for MainActor();
  v5[66] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[67] = v10;
  v5[68] = v9;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v10, v9);
}

uint64_t specialized closure #1 in MultiwayViewController.observeTip<A>(_:)()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v0[69] = type metadata accessor for FaceInFrameTip();
  v0[70] = lazy protocol witness table accessor for type FaceInFrameTip and conformance FaceInFrameTip();
  Tip.shouldDisplayUpdates.getter();
  MEMORY[0x1BFB221C0](v3);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v0[71] = *(MEMORY[0x1E69DE090] + 8);
  v4 = static MainActor.shared.getter();
  v0[72] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = OUTLINED_FUNCTION_1_135(v7, v5);

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[72];
  v0[75] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[76] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in MultiwayViewController.observeTip<A>(_:);
  v3 = v0[51];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 592);
    v8 = *(v3 + 584);
    v9 = specialized closure #1 in MultiwayViewController.observeTip<A>(_:);
  }

  else
  {
    (*(v3 + 600))();
    v7 = *(v3 + 592);
    v8 = *(v3 + 584);
    v9 = specialized closure #1 in MultiwayViewController.observeTip<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

{
  OUTLINED_FUNCTION_44();
  v2 = v0[51];
  v1 = v0[52];
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {

    outlined destroy of Tips.Status?(v2);
    v3 = v0[68];
    v4 = v0[67];

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v4, v3);
  }

  else
  {
    (*(v0[53] + 32))(v0[54], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[77] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[78] = v7;
    *v7 = v0;
    v7[1] = specialized closure #1 in MultiwayViewController.observeTip<A>(_:);
    v8 = v0[54];

    return (v10)(v0 + 84, v8);
  }
}

{
  return (*(v0 + 600))();
}

{
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_6();
  *v2 = v0;
  v3 = *(v0 + 432);
  v4 = *(v0 + 424);
  v5 = *(v0 + 416);
  *v2 = *v1;

  (*(v4 + 8))(v3, v5);
  *(v0 + 673) = *(v0 + 672);
  OUTLINED_FUNCTION_14();
  v7 = *(v6 + 592);
  v8 = *(v0 + 584);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v2, v1);
}

{
  OUTLINED_FUNCTION_44();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 632) = Strong;
  if (!Strong)
  {
    v6 = OUTLINED_FUNCTION_8_82();
    v7(v6);

    goto LABEL_6;
  }

  v2 = Strong;
  if (*(v0 + 673))
  {
    v3 = (Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memmove((v0 + 16), v3, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType((v0 + 16)) == 1)
    {
      v4 = OUTLINED_FUNCTION_8_82();
      v5(v4);

LABEL_6:
      OUTLINED_FUNCTION_6_92();

      OUTLINED_FUNCTION_13();

      return v8();
    }

    v11 = v3[7];
    *(v0 + 648) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 656) = v13;
    *v13 = v0;
    OUTLINED_FUNCTION_130(v13);

    return MultiwayViewController.tipPopoverController.getter();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 640) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_130(v10);

    return MultiwayViewController.dismissPopover()();
  }
}

{
  OUTLINED_FUNCTION_44();
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_6_92();

  OUTLINED_FUNCTION_13();

  return v4();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 544);
  v6 = *(v0 + 536);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = static MainActor.shared.getter();
  *(v0 + 576) = v1;
  if (v1)
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = OUTLINED_FUNCTION_1_135(v1, v2, v3);

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v7 + 664) = v6;

  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 544);
  v10 = *(v0 + 536);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in MultiwayViewController.observeTip<A>(_:), v10, v9);
}

{
  v1 = *(v0 + 664);
  if (!v1)
  {
    v9 = MultiwayViewController.constraintController.getter();
    if (!v9)
    {
      v16 = *(v0 + 648);
      v17 = *(v0 + 632);
      v18 = OUTLINED_FUNCTION_8_82();
      v19(v18);

      goto LABEL_3;
    }

    v10 = v9;
    v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    LOBYTE(v11) = v10[v11];

    v12 = *(v0 + 648);
    if ((v11 & 0xFE) == 0x80)
    {
      v13 = *(v0 + 632);
      v14 = OUTLINED_FUNCTION_8_82();
      v15(v14);

      goto LABEL_3;
    }

    v20 = *(v0 + 392);
    type metadata accessor for TipUIPopoverViewController();
    v21 = *(v0 + 552);
    *(v0 + 272) = v21;
    v22 = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 248));
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v20, v22);
    v24 = v12;
    v25 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
    v26 = TipUIPopoverViewController.popoverPresentationController.getter();
    if (v26)
    {
      v27 = v26;
      [v26 setSourceItem_];
    }

    v28 = *(v0 + 632);
    v29 = v25;
    v30 = [v28 view];
    if (v30)
    {
      v33 = v30;
      v34 = *(v0 + 568);
      [v30 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v58.origin.x = v36;
      v58.origin.y = v38;
      v58.size.width = v40;
      v58.size.height = v42;
      [v29 setPreferredContentSize_];
      v43 = TipUIPopoverViewController.popoverPresentationController.getter();
      v44 = *(v0 + 632);
      if (!v43)
      {
LABEL_16:

        v49 = TipUIPopoverViewController.popoverPresentationController.getter();
        if (v49)
        {
          v50 = v49;
          [v49 setPermittedArrowDirections_];
        }

        if (one-time initialization token for tipUserInfo != -1)
        {
          OUTLINED_FUNCTION_0_168();
        }

        v51 = *(v0 + 648);
        v52 = *(v0 + 632);
        v53 = *(static MultiwayViewController.tipUserInfo + 2);
        *(static MultiwayViewController.tipUserInfo + 2) = v29;

        [v52 presentViewController:v29 animated:1 completion:0];
        v54 = static MainActor.shared.getter();
        *(v0 + 576) = v54;
        if (v54)
        {
          swift_getObjectType();
          v54 = dispatch thunk of Actor.unownedExecutor.getter();
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v30 = OUTLINED_FUNCTION_1_135(v54, v55, v56);

        return MEMORY[0x1EEE6DFA0](v30, v31, v32);
      }

      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1BC4BAC30;
      v47 = [v44 view];

      if (v47)
      {
        *(v46 + 32) = v47;
        type metadata accessor for UIView();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v45 setPassthroughViews_];

        v44 = v45;
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v30, v31, v32);
  }

  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 496);

  (*(v5 + 8))(v4, v6);
LABEL_3:
  OUTLINED_FUNCTION_6_92();

  OUTLINED_FUNCTION_13();

  return v7();
}

uint64_t MultiwayViewController.tipPopoverController.getter()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](MultiwayViewController.tipPopoverController.getter, v2, v1);
}

{
  OUTLINED_FUNCTION_9();

  if (one-time initialization token for tipUserInfo != -1)
  {
    OUTLINED_FUNCTION_0_168();
  }

  v0 = *(static MultiwayViewController.tipUserInfo + 2);
  OUTLINED_FUNCTION_13();
  v4 = v1;
  v2 = v0;

  return v4(v0);
}

uint64_t MultiwayViewController.FaceTimeLinkTipUserInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for specialized closure #1 in MultiwayViewController.observeTip<A>(_:)()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v4 = *(type metadata accessor for FaceInFrameTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return specialized closure #1 in MultiwayViewController.observeTip<A>(_:)(v3, v6, v7, v0 + v5, v8);
}

unint64_t lazy protocol witness table accessor for type FaceInFrameTip and conformance FaceInFrameTip()
{
  result = lazy protocol witness table cache variable for type FaceInFrameTip and conformance FaceInFrameTip;
  if (!lazy protocol witness table cache variable for type FaceInFrameTip and conformance FaceInFrameTip)
  {
    type metadata accessor for FaceInFrameTip();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FaceInFrameTip and conformance FaceInFrameTip);
  }

  return result;
}

uint64_t outlined destroy of Tips.Status?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall CallControlsStatusViewModel.startStatusObservation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAGy15ConversationKit18InCallControlsModeOAKGAGySo19TUConversationStateVAKGAGySbAKGGMd);
  OUTLINED_FUNCTION_1();
  v35 = v4;
  v36 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v32 = v28 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAIy15ConversationKit18InCallControlsModeOAMGAIySo19TUConversationStateVAMGAIySbAMGGSo9NSRunLoopCGMd);
  OUTLINED_FUNCTION_1();
  v37 = v7;
  v38 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v33 = v28 - v9;
  v10 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v11 = OUTLINED_FUNCTION_6_4();
  v31 = v12(v11, v10);
  v42 = v31;
  v13 = v0[8];
  OUTLINED_FUNCTION_10_70();
  v14 = OUTLINED_FUNCTION_6_4();
  v30 = v15(v14, v13);
  v41 = v30;
  v16 = v0[8];
  OUTLINED_FUNCTION_10_70();
  v17 = OUTLINED_FUNCTION_6_4();
  v29 = v18(v17, v16);
  v39 = v0[9];
  v40 = v29;
  v28[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd);
  v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd);
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySo19TUConversationStateVs5NeverOGMd);
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUCallStatus, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo12TUCallStatusVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<InCallControlsMode, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit18InCallControlsModeOs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<TUConversationState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySo19TUConversationStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd);
  v19 = v32;
  Publisher.combineLatest<A, B, C>(_:_:_:)();

  v20 = [objc_opt_self() mainRunLoop];
  v42 = v20;
  v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v22 = v34;
  __swift_storeEnumTagSinglePayload(v34, 1, 1, v21);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.CombineLatest4<AnyPublisher<TUCallStatus, Never>, AnyPublisher<InCallControlsMode, Never>, AnyPublisher<TUConversationState, Never>, AnyPublisher<Bool, Never>> and conformance Publishers.CombineLatest4<A, B, C, D>, &_s7Combine10PublishersO0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAGy15ConversationKit18InCallControlsModeOAKGAGySo19TUConversationStateVAKGAGySbAKGGMd);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  v23 = v33;
  v24 = v35;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSRunLoop.SchedulerOptions?(v22);

  (*(v36 + 8))(v19, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in CallControlsStatusViewModel.startStatusObservation();
  *(v26 + 24) = v25;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.CombineLatest4<AnyPublisher<TUCallStatus, Never>, AnyPublisher<InCallControlsMode, Never>, AnyPublisher<TUConversationState, Never>, AnyPublisher<Bool, Never>>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC0A7Latest4Vy_AA12AnyPublisherVySo12TUCallStatusVs5NeverOGAIy15ConversationKit18InCallControlsModeOAMGAIySo19TUConversationStateVAMGAIySbAMGGSo9NSRunLoopCGMd);
  v27 = v37;
  Publisher<>.sink(receiveValue:)();
  OUTLINED_FUNCTION_6_4();

  (*(v38 + 8))(v23, v27);
  v1[10] = v23;
}

uint64_t CallControlsStatusViewModel.__allocating_init(service:isScreenLocked:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_6_4();
  CallControlsStatusViewModel.init(service:isScreenLocked:)(v4, a2);
  return v2;
}

uint64_t CallControlsStatusViewModel.statusView.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallControlsStatusViewModel.statusView.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return CancelConfirmationViewModel.delegate.modify;
}

void *CallControlsStatusViewModel.init(service:isScreenLocked:)(__int128 *a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[10] = 0;
  outlined init with take of TapInteractionHandler(a1, (v2 + 4));
  v2[9] = a2;
  return v2;
}

uint64_t closure #1 in CallControlsStatusViewModel.startStatusObservation()(int a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for sidebar != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, &static Logger.sidebar);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v12 = 136315906;
      type metadata accessor for TUCallStatus(0);
      v13 = String.init<A>(reflecting:)();
      v24 = a1;
      v15 = a2;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = InCallControlsMode.debugDescription.getter(v15);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2080;
      type metadata accessor for TUConversationState(0);
      v20 = String.init<A>(reflecting:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v25);
      a2 = v15;
      a1 = v24;

      *(v12 + 24) = v22;
      *(v12 + 32) = 1024;
      *(v12 + 34) = a4 & 1;
      _os_log_impl(&dword_1BBC58000, v10, v11, "CallControlsStatusViewModel: callStatus: %s controlMode: %s conversationState: %s isScreenLocked: %{BOOL}d", v12, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1BFB23DF0](v23, -1, -1);
      MEMORY[0x1BFB23DF0](v12, -1, -1);
    }

    CallControlsStatusViewModel.updateStatus(callStatus:mode:conversationState:isScreenLocked:)(a1, a2, a3, a4 & 1);
  }

  return result;
}

void CallControlsStatusViewModel.updateStatus(callStatus:mode:conversationState:isScreenLocked:)(int a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    if (one-time initialization token for sidebar != -1)
    {
      OUTLINED_FUNCTION_0_156();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.sidebar);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_163(v12))
    {
      goto LABEL_32;
    }

    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    v14 = "CallControlsStatusViewModel: hide status if ICUIRedesignEnabled flag is false";
LABEL_31:
    _os_log_impl(&dword_1BBC58000, v11, a3, v14, v13, 2u);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
LABEL_32:

    OUTLINED_FUNCTION_9_78();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_4_119();
      v34(1);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (a1 == 1 && a3 == 3)
  {
    if (one-time initialization token for sidebar != -1)
    {
      OUTLINED_FUNCTION_0_156();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, &static Logger.sidebar);
    v11 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_163(v31))
    {
      goto LABEL_32;
    }

    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    v14 = "CallControlsStatusViewModel: hide status after joined";
    goto LABEL_31;
  }

  a3 = v4[7];
  v16 = v4[8];
  OUTLINED_FUNCTION_10_70();
  v17 = OUTLINED_FUNCTION_6_4();
  v19 = v18(v17, v16);
  if (!v19)
  {
LABEL_27:
    if (one-time initialization token for sidebar != -1)
    {
      OUTLINED_FUNCTION_0_156();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, &static Logger.sidebar);
    v11 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!OUTLINED_FUNCTION_163(v33))
    {
      goto LABEL_32;
    }

    v13 = OUTLINED_FUNCTION_33();
    *v13 = 0;
    v14 = "CallControlsStatusViewModel: hide status because there is no conversation";
    goto LABEL_31;
  }

  v134 = v19;
  a3 = v4[7];
  v20 = v4[8];
  OUTLINED_FUNCTION_10_70();
  v21 = OUTLINED_FUNCTION_6_4();
  v23 = v22(v21, v20);
  if (!v23)
  {

    goto LABEL_27;
  }

  v24 = v23;
  if ((a1 - 5) < 2)
  {
    if (one-time initialization token for sidebar != -1)
    {
      OUTLINED_FUNCTION_0_156();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, &static Logger.sidebar);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_33();
      *v28 = 0;
      _os_log_impl(&dword_1BBC58000, v26, v27, "CallControlsStatusViewModel: hide status when call is disconnected", v28, 2u);
      MEMORY[0x1BFB23DF0](v28, -1, -1);
    }

    OUTLINED_FUNCTION_9_78();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_4_119();
      v29(1);
      swift_unknownObjectRelease();
    }

    return;
  }

  if ((a2 & 0xE0) == 0x40)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1BC4BAC30;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
      v36 = [objc_opt_self() conversationKit];
      v37 = OUTLINED_FUNCTION_5_112(0xD000000000000014, 0x80000001BC5111A0);
      v39 = v38;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      *(v35 + 32) = NSAttributedString.__allocating_init(string:)(v40);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    v54 = [objc_opt_self() conversationKit];
    v55 = OUTLINED_FUNCTION_5_112(0x454D495445434146, 0xE800000000000000);
    v57 = v56;

    v58._countAndFlagsBits = v55;
    v58._object = v57;
    v59.super.isa = NSAttributedString.__allocating_init(string:)(v58).super.isa;
    if (specialized Array.count.getter(v35))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v35 & 0xC000000000000001) == 0, v35);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v125 = v59.super.isa;

        v62 = MEMORY[0x1BFB22010](0, v35);
      }

      else
      {
        v60 = *(v35 + 32);
        v61 = v59.super.isa;
        v62 = v60;
      }
    }

    else
    {
      v63 = v59.super.isa;
      v62 = 0;
    }

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v64 = *MEMORY[0x1E69DDDC8];
    v136 = 0;
    OUTLINED_FUNCTION_8_83(v64);
    OUTLINED_FUNCTION_1_136(v65);
    outlined init with copy of SymbolImageDescription(v142, v135);
    outlined destroy of SymbolImageDescription(&v137);
    v66 = static UIImage.symbolImage(for:)(v142);
    outlined destroy of SymbolImageDescription(v142);

    goto LABEL_49;
  }

  v41 = TUConversation.participantListDisplayName.getter();
  v43 = v42;
  v44 = [v24 remoteMembers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for TUConversationMember);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, &lazy cache variable for type metadata for TUConversationMember);
  v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = specialized Collection.first.getter(v45);

  if (v46)
  {
    v47 = [v46 handle];

    if (v47)
    {
      v48 = outlined bridged method (pb) of @objc TUHandle.siriDisplayName.getter(v47);
      if (v49)
      {
        v50 = v48;
        v51 = v49;
        if ([v47 shouldHideContactWithLockState_])
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
          v52._countAndFlagsBits = v50;
          v52._object = v51;
          v53.super.isa = NSAttributedString.__allocating_init(string:)(v52).super.isa;

          goto LABEL_67;
        }
      }

      else
      {
      }
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
  v87._countAndFlagsBits = TUConversation.participantListDisplayName.getter();
  v53.super.isa = NSAttributedString.__allocating_init(string:)(v87).super.isa;
LABEL_67:
  v88 = v5[7];
  v89 = v5[8];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v88);
  v90 = (*(v89 + 8))(v88, v89);
  if (v90)
  {
    v91 = v90;
    v92 = v5[7];
    v93 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v92);
    v94 = (*(v93 + 160))(v92, v93);
    if (v94)
    {
      v130 = v43;
      v127 = v94;
      ConversationControlsHelper.assetsForDefaultHUD(controlsManager:conversation:)(v94, v91);
      v128 = v95;
      v131 = v96;
      v126 = v41;
      if (v53.super.isa)
      {
        v97 = [(objc_class *)v53.super.isa string];
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;
      }

      else
      {
        v98 = 0;
        v100 = 0;
      }

      v101 = [v131 string];
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v104 = v103;

      if (v100)
      {
        if (v98 == v102 && v100 == v104)
        {

LABEL_87:
          v62 = 0;
          goto LABEL_88;
        }

        v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v106)
        {
          goto LABEL_87;
        }
      }

      else
      {
      }

      v62 = v131;
      v107 = v131;
LABEL_88:
      v108 = [v91 remoteMembers];
      v109 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = specialized Collection.first.getter(v109);

      v59.super.isa = v53.super.isa;
      if (v110 && (v111 = [v110 handle], v110, v111) && (v112 = objc_msgSend(v111, sel_shouldHideContactWithLockState_, a4 & 1), v111, v112))
      {

        v66 = 0;
        v67 = 0;
        v68 = 0;
        v133 = 0;
        v69 = 2;
      }

      else
      {
        v113 = [v91 remoteMembers];
        v114 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v115 = specialized Set.count.getter(v114);

        if (!v115)
        {

          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
          v123 = *MEMORY[0x1E69DDDC8];
          v136 = 0;
          OUTLINED_FUNCTION_8_83(v123);
          OUTLINED_FUNCTION_1_136(v124);
          outlined init with copy of SymbolImageDescription(v142, v135);
          outlined destroy of SymbolImageDescription(&v137);
          v66 = static UIImage.symbolImage(for:)(v142);
          outlined destroy of SymbolImageDescription(v142);

LABEL_49:
          v67 = v66 != 0;
          if (v66)
          {
            v68 = 0x403A000000000000;
          }

          else
          {
            v68 = 0;
          }

          if (v66)
          {
            v69 = 1;
          }

          else
          {
            v69 = 2;
          }

          v133 = v68;
          goto LABEL_56;
        }

        type metadata accessor for ConversationControlsBadgingAvatarViewController();
        v116 = [v128 image];
        v117 = v62;
        v118 = [objc_opt_self() clearColor];
        v119 = v91;
        v120 = v118;
        v62 = v117;
        v121 = ConversationControlsBadgingAvatarViewController.__allocating_init(conversation:badgeImage:displayName:badgeBackgroundColor:)(v119, v116, v126, v130, v120);
        v122 = [v121 view];

        v66 = v122;

        v133 = 0;
        v69 = 0;
        v67 = 0x4052000000000000;
        v68 = 0x4052000000000000;
      }

LABEL_56:
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v132 = v24;
        v70 = v5[3];
        ObjectType = swift_getObjectType();
        v137 = v66;
        v138 = v67;
        v139 = v68;
        v140 = v133;
        v141 = v69;
        v71 = v62;
        v72 = *(v70 + 40);
        v73 = OUTLINED_FUNCTION_3_127();
        outlined copy of CallControlsStatusView.LeadingView(v73, v74, v75, v76, v69);
        v77 = v70;
        v24 = v132;
        v72(&v137, ObjectType, v77);
        v62 = v71;
        swift_unknownObjectRelease();
        outlined consume of CallControlsStatusView.LeadingView(v137, v138, v139, v140, v141);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v78 = v5[3];
        v79 = swift_getObjectType();
        (*(v78 + 32))(v59.super.isa, v62, v79, v78);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        OUTLINED_FUNCTION_4_119();
        v80(0);
        v81 = OUTLINED_FUNCTION_3_127();
        outlined consume of CallControlsStatusView.LeadingView(v81, v82, v83, v133, v69);

        swift_unknownObjectRelease();
      }

      else
      {
        v84 = OUTLINED_FUNCTION_3_127();
        outlined consume of CallControlsStatusView.LeadingView(v84, v85, v86, v133, v69);
      }

      return;
    }
  }

  else
  {
  }
}

uint64_t CallControlsStatusViewModel.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t CallControlsStatusViewModel.__deallocating_deinit()
{
  CallControlsStatusViewModel.deinit();

  return swift_deallocClassInstance();
}

id outlined copy of CallControlsStatusView.LeadingView(id result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t static LinkDetailViewController.Item.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v153, a2, sizeof(v153));
  memcpy(v154, __src, 0x41uLL);
  v4 = memcpy(v155, a2, sizeof(v155));
  v12 = *&__dst[8];
  if (!__dst[64])
  {
    if (v153[64])
    {
      goto LABEL_7;
    }

    if (*__dst != *v153 || *&__dst[8] != *&v153[8])
    {
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v49 = v48;
      v57 = OUTLINED_FUNCTION_5_113(v48, v50, v51, v52, v53, v54, v55, v56, v76, v83, v90, v97, v102, v108, v114, v120, v125, v132, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], v153[0]);
      OUTLINED_FUNCTION_6_93(v57, v58, v59, v60, v61, v62, v63, v64, v81, v88, v95, v100, v106, v112, v118, v123, v130, v135, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, __dst[0]);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s15ConversationKit24LinkDetailViewControllerC4ItemO_AEtMd);
      return v49 & 1;
    }

    v68 = OUTLINED_FUNCTION_5_113(v4, v5, *v153, *&v153[8], v8, v9, v10, v11, v76, v83, v90, v97, v102, v108, v114, v120, v125, v132, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], v153[0]);
    OUTLINED_FUNCTION_6_93(v68, v69, v70, v71, v72, v73, v74, v75, v82, v89, v96, v101, v107, v113, v119, v124, v131, v136, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, __dst[0]);
    goto LABEL_29;
  }

  v14 = *&__dst[16];
  v13 = *&__dst[24];
  v15 = *&__dst[32];
  v16 = *&__dst[40];
  v17 = *&__dst[48];
  v18 = *&__dst[56];
  if (__dst[64] != 1)
  {
    v46 = *&__dst[32] | *&__dst[40] | *&__dst[48];
    if (*&__dst[16] | *&__dst[8] | *__dst | *&__dst[24] | v46 | *&__dst[56])
    {
      if (*__dst != 1 || *&__dst[16] | *&__dst[8] | *&__dst[24] | v46 | *&__dst[56])
      {
        if (v153[64] != 2 || *v153 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v153[64] != 2 || *v153 != 1)
      {
        goto LABEL_7;
      }

      v67 = vorrq_s8(*&v153[32], *&v153[48]);
      if (*&vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL)) | *&v153[24] | *&v153[16] | *&v153[8])
      {
LABEL_7:
        v38 = OUTLINED_FUNCTION_5_113(v4, v5, v6, v7, v8, v9, v10, v11, v76, v83, v90, v97, v102, v108, v114, v120, v125, v132, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], v153[0]);
        OUTLINED_FUNCTION_6_93(v38, v39, v40, v41, v42, v43, v44, v45, v80, v87, v94, v99, v105, v111, v117, v122, v129, v134, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, __dst[0]);
LABEL_8:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s15ConversationKit24LinkDetailViewControllerC4ItemO_AEtMd);
        v37 = 0;
        return v37 & 1;
      }
    }

    else
    {
      if (v153[64] != 2)
      {
        goto LABEL_7;
      }

      v66 = vorrq_s8(vorrq_s8(*v153, *&v153[32]), vorrq_s8(*&v153[16], *&v153[48]));
      if (vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL)))
      {
        goto LABEL_7;
      }
    }

LABEL_29:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s15ConversationKit24LinkDetailViewControllerC4ItemO_AEtMd);
    v37 = 1;
    return v37 & 1;
  }

  if (v153[64] != 1)
  {
    goto LABEL_7;
  }

  v126 = *&v153[8];
  v84 = *&v153[32];
  v91 = *&v153[40];
  v19 = *&v153[56];
  v77 = *&v153[48];
  v20 = *&v153[24];
  v103 = *v153;
  v21 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  v29 = OUTLINED_FUNCTION_5_113(v21, v22, v23, v24, v25, v26, v27, v28, v77, v84, v91, v21, v103, v108, v114, v120, v126, *(&v126 + 1), v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], v153[0]);
  OUTLINED_FUNCTION_6_93(v29, v30, v31, v32, v33, v34, v35, v36, v78, v85, v92, v98, v104, v109, v115, v121, v127, v133, v137, *(&v137 + 1), v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, __dst[0]);
  v116 = v128;

  v110 = v12;

  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_8;
  }

  v143 = v12;
  v144 = v14;
  v145 = v13;
  v146 = v15;
  v147 = v16;
  v148 = v17;
  v149 = v18;
  v137 = v128;
  v138 = v20;
  v139 = v86;
  v140 = v93;
  v141 = v79;
  v142 = v19;
  v37 = static ParticipantContactDetails.== infix(_:_:)(&v143, &v137);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v154, &_s15ConversationKit24LinkDetailViewControllerC4ItemO_AEtMd);

  return v37 & 1;
}

uint64_t LinkDetailViewController.Item.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 64))
  {
    MEMORY[0x1BFB22640](1);
LABEL_12:

    return String.hash(into:)();
  }

  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[7];
  if (*(v0 + 64) == 1)
  {
    MEMORY[0x1BFB22640](2);
    NSObject.hash(into:)();
    if (v1)
    {
      Hasher._combine(_:)(1u);
      v6 = v1;
      NSObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    String.hash(into:)();
    String.hash(into:)();
    goto LABEL_12;
  }

  v7 = v0[4] | v0[5] | v0[6];
  if (v4 | v1 | v2 | v3 | v7 | v5)
  {
    if (v2 != 1 || v4 | v1 | v3 | v7 | v5)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x1BFB22640](v8);
}

Swift::Int LinkDetailViewController.Item.hashValue.getter()
{
  Hasher.init(_seed:)();
  LinkDetailViewController.Item.hash(into:)();
  return Hasher._finalize()();
}

unint64_t LinkDetailViewController.Section.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LinkDetailViewController.Item()
{
  Hasher.init(_seed:)();
  LinkDetailViewController.Item.hash(into:)();
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LinkDetailViewController.Section@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = LinkDetailViewController.Section.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LinkDetailViewController.Section@<X0>(uint64_t *a1@<X8>)
{
  result = LinkDetailViewController.Section.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

void *protocol witness for static CaseIterable.allCases.getter in conformance LinkDetailViewController.Section@<X0>(void *a1@<X8>)
{
  result = static LinkDetailViewController.Section.allCases.getter();
  *a1 = result;
  return result;
}

id LinkDetailViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = closure #1 in LinkDetailViewController.collectionView.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in LinkDetailViewController.collectionView.getter(uint64_t a1)
{
  v2 = LinkDetailViewController.collectionViewLayout()();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  [v4 setDelegate_];
  return v4;
}

id LinkDetailViewController.collectionViewLayout()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v0 setInterSectionSpacing_];
  v1 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  return @nonobjc UICollectionViewCompositionalLayout.init(sectionProvider:configuration:)(closure #1 in LinkDetailViewController.collectionViewLayout(), 0, v0);
}

void *closure #1 in LinkDetailViewController.collectionViewLayout()(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v35 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69DC238], v7, v12);
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v4 + 104))(v6, *MEMORY[0x1E69DC290], v3);
    UICollectionLayoutListConfiguration.headerMode.setter();
    v15 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    v16 = [objc_opt_self() effectWithStyle_];
    v17 = [objc_opt_self() effectForBlurEffect:v16 style:7];

    v18 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
    UIListSeparatorConfiguration.visualEffect.setter();
    v18(v36, 0);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
    v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 fractionalWidthDimension_];
    v22 = [v20 estimatedDimension_];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];
    v33 = v11;
    v24 = v23;

    v32 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
    v25 = v24;
    v26 = @nonobjc NSCollectionLayoutBoundarySupplementaryItem.__allocating_init(layoutSize:elementKind:alignment:)(v25, 0xD00000000000001FLL, 0x80000001BC4FA870, 1);
    (*(v8 + 104))(v10, *MEMORY[0x1E69DC238], v7);
    UICollectionLayoutListConfiguration.init(appearance:)();
    (*(v4 + 104))(v6, *MEMORY[0x1E69DC280], v3);
    UICollectionLayoutListConfiguration.headerMode.setter();
    v27 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutSection);
    v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BC4BAC30;
    *(v28 + 32) = v26;
    v29 = v26;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setBoundarySupplementaryItems_];

    v11 = v33;
  }

  (*(v35 + 8))(v14, v11);
  return v19;
}

id LinkDetailViewController.dataSource.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource;
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource);
  }

  else
  {
    v4 = v0;
    LinkDetailViewController.collectionView.getter();
    LinkDetailViewController.cellProvider.getter();
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy15ConversationKit010LinkDetailC10ControllerC7Section33_5E654DA4B4A45469CBB138AF6A20DD66LLOAF4ItemOGMd));
    v6 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    LinkDetailViewController.supplementaryViewProvider.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t (*LinkDetailViewController.supplementaryViewProvider.getter())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___supplementaryViewProvider);
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___supplementaryViewProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___supplementaryViewProvider);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v5 = *v1;
    v3 = partial apply for closure #1 in closure #1 in LinkDetailViewController.supplementaryViewProvider.getter;
    *v1 = partial apply for closure #1 in closure #1 in LinkDetailViewController.supplementaryViewProvider.getter;
    v1[1] = v4;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
  return v3;
}

uint64_t closure #1 in closure #1 in LinkDetailViewController.supplementaryViewProvider.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = a2 == 0xD00000000000001FLL && 0x80000001BC4FA870 == a3;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkDetailHeaderSupplementaryViewRegistration;
  swift_beginAccess();
  outlined init with copy of Participant?(Strong + v10, v7, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGSgMd);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGMd);
  result = __swift_getEnumTagSinglePayload(v7, 1, v11);
  if (result != 1)
  {
    type metadata accessor for LinkDetailHeaderView();
    v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
    (*(*(v11 - 8) + 8))(v7, v11);
    v14 = swift_unknownObjectUnownedLoadStrong();
    v15 = *&v14[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel];

    v16 = (*(*v15 + 240))();

    v17 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v13) + 0x90))(v16);
    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = *&v18[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel];

    v20 = (*(*v19 + 288))();
    v22 = v21;

    (*((*v17 & *v13) + 0xC0))(v20, v22);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t (*LinkDetailViewController.cellProvider.getter())(uint64_t a1, uint64_t a2, const void *a3)
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___cellProvider);
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___cellProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___cellProvider);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *v1;
    v3 = partial apply for closure #1 in closure #1 in LinkDetailViewController.cellProvider.getter;
    *v1 = partial apply for closure #1 in closure #1 in LinkDetailViewController.cellProvider.getter;
    v1[1] = v4;

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
  }

  outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v2);
  return v3;
}

uint64_t closure #1 in closure #1 in LinkDetailViewController.cellProvider.getter(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28[-v11 - 8];
  memcpy(__dst, a3, 0x41uLL);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v14 = Strong;
  v15 = IndexPath.section.getter();
  v16 = LinkDetailViewController.Section.init(rawValue:)(v15);
  if (v16 == 2)
  {
    v23 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_shareCellRegistration;
    swift_beginAccess();
    outlined init with copy of Participant?(v14 + v23, v9, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
    result = __swift_getEnumTagSinglePayload(v9, 1, v18);
    if (result != 1)
    {
      memcpy(v28, __dst, sizeof(v28));
      outlined init with copy of LinkDetailViewController.Item(__dst, v29);
      type metadata accessor for LinkDetailActionCollectionViewCell();
      v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      memcpy(v29, v28, 0x41uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit24LinkDetailViewControllerC4ItemOSgMd);
      v21 = *(*(v18 - 8) + 8);
      v22 = v9;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v16 == 3)
  {
    v17 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_deleteCellRegistration;
    swift_beginAccess();
    outlined init with copy of Participant?(v14 + v17, v12, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
    result = __swift_getEnumTagSinglePayload(v12, 1, v18);
    if (result != 1)
    {
      memcpy(v28, __dst, sizeof(v28));
      outlined init with copy of LinkDetailViewController.Item(__dst, v29);
      type metadata accessor for LinkDetailActionCollectionViewCell();
      v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      memcpy(v29, v28, 0x41uLL);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit24LinkDetailViewControllerC4ItemOSgMd);
      v21 = *(*(v18 - 8) + 8);
      v22 = v12;
LABEL_9:
      v24 = v18;
LABEL_12:
      v21(v22, v24);
      return v20;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cellRegistration;
  swift_beginAccess();
  outlined init with copy of Participant?(v14 + v25, v6, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  result = __swift_getEnumTagSinglePayload(v6, 1, v26);
  if (result != 1)
  {
    memcpy(v28, __dst, sizeof(v28));
    outlined init with copy of LinkDetailViewController.Item(__dst, v29);
    type metadata accessor for LinkDetailParticipantCollectionViewCell();
    v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    memcpy(v29, v28, 0x41uLL);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit24LinkDetailViewControllerC4ItemOSgMd);
    v21 = *(*(v26 - 8) + 8);
    v22 = v6;
    v24 = v26;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in variable initialization expression of LinkDetailViewController.cellBackgroundConfiguration()
{
  static UIBackgroundConfiguration.listGroupedCell()();
  v0 = [objc_opt_self() whiteColor];
  UIBackgroundConfiguration.backgroundColor.setter();
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_opt_self() effectForBlurEffect:v1 style:6];

  return UIBackgroundConfiguration.visualEffect.setter();
}

id LinkDetailViewController.init(viewModel:linkController:detailControllerFactory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource] = 0;
  v7 = &v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___supplementaryViewProvider];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___cellProvider];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  OUTLINED_FUNCTION_2_130(v9);
  v10 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_deleteCellRegistration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  __swift_storeEnumTagSinglePayload(&v3[v10], 1, 1, v11);
  __swift_storeEnumTagSinglePayload(&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_shareCellRegistration], 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGMd);
  OUTLINED_FUNCTION_2_130(v12);
  closure #1 in variable initialization expression of LinkDetailViewController.cellBackgroundConfiguration();
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkShareCoordinator] = 0;
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cancellables] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel] = a1;
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkController] = a2;
  outlined init with copy of IDSLookupManager(a3, &v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory]);
  v13 = objc_allocWithZone(MEMORY[0x1E695CE18]);

  v14 = [v13 init];
  v15 = [objc_opt_self() settingsWithContactStore_];

  v16 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
  *&v3[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_avatarController] = v16;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for LinkDetailViewController();
  v17 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  LinkDetailViewController.configureReusableViewsRegistrations()();

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v17;
}

uint64_t type metadata accessor for LinkDetailViewController()
{
  result = type metadata singleton initialization cache for LinkDetailViewController;
  if (!type metadata singleton initialization cache for LinkDetailViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LinkDetailViewController.configureReusableViewsRegistrations()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  LinkDetailViewController.createCellRegistration()(type metadata accessor for LinkDetailParticipantCollectionViewCell);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v11 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cellRegistration;
  swift_beginAccess();
  outlined assign with take of Participant?(v9, v0 + v11, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  swift_endAccess();
  LinkDetailViewController.createCellRegistration()(type metadata accessor for LinkDetailActionCollectionViewCell);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_deleteCellRegistration;
  swift_beginAccess();
  outlined assign with take of Participant?(v6, v0 + v13, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  swift_endAccess();
  LinkDetailViewController.createCellRegistration()(type metadata accessor for LinkDetailActionCollectionViewCell);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v12);
  v14 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_shareCellRegistration;
  swift_beginAccess();
  outlined assign with take of Participant?(v6, v0 + v14, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGSgMd);
  swift_endAccess();
  type metadata accessor for LinkDetailHeaderView();
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGMd);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
  v16 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkDetailHeaderSupplementaryViewRegistration;
  swift_beginAccess();
  outlined assign with take of Participant?(v3, v0 + v16, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGSgMd);
  return swift_endAccess();
}

id LinkDetailViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LinkDetailViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___supplementaryViewProvider);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___cellProvider);
  *v2 = 0;
  v2[1] = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  OUTLINED_FUNCTION_0_11(v3);
  v4 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_deleteCellRegistration;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_shareCellRegistration, 1, 1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGMd);
  OUTLINED_FUNCTION_0_11(v6);
  closure #1 in variable initialization expression of LinkDetailViewController.cellBackgroundConfiguration();
  *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkShareCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cancellables) = MEMORY[0x1E69E7CC0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LinkDetailViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  LinkDetailViewController.configureViewHierarchy()();
  LinkDetailViewController.initializeDataSource()();
}

void LinkDetailViewController.configureViewHierarchy()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = LinkDetailViewController.collectionView.getter();
  [v2 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC4BA7F0;
  v5 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView;
  v6 = [*&v0[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView] topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v11;
  v12 = [*&v0[v5] leadingAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v4 + 40) = v16;
  v17 = [*&v0[v5] trailingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v4 + 48) = v21;
  v22 = [*&v0[v5] bottomAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 bottomAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v4 + 56) = v27;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints_];
}

uint64_t LinkDetailViewController.initializeDataSource()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v35 = v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v30 = v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit24LinkDetailViewControllerC7Section33_5E654DA4B4A45469CBB138AF6A20DD66LLOAF4ItemOGMd);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v25 - v12;
  lazy protocol witness table accessor for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section();
  lazy protocol witness table accessor for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #0 of LinkDetailViewController.initializeDataSource());
  v13 = LinkDetailViewController.dataSource.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v14 = *(v1 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel);
  (*(*v14 + 168))();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[1] = MEMORY[0x1E695C068];
  v29 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
  v26 = v8;
  Publisher<>.sink(receiveValue:)();

  v15 = *(v9 + 8);
  v27 = v9 + 8;
  v28 = v15;
  v15(v11, v8);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v17 = v30;
  (*(*v14 + 264))(v16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<Set<TUHandle>?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShySo8TUHandleCGSg_GMd);
  v18 = v31;
  Publisher<>.sink(receiveValue:)();

  (*(v32 + 8))(v17, v18);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  (*(*v14 + 216))(v19);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = v26;
  Publisher<>.sink(receiveValue:)();

  v28(v11, v20);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v22 = v35;
  (*(*v14 + 312))(v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<String?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySSSg_GMd);
  v23 = v37;
  Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v22, v23);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return (*(v36 + 8))(v33, v34);
}

id LinkDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id LinkDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LinkDetailViewController.createCellRegistration()(void (*a1)(void))
{
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  a1(0);

  return UICollectionView.CellRegistration.init(handler:)();
}

void closure #1 in LinkDetailViewController.createCellRegistration()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v36 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - v5;
  v7 = *a3;
  v6 = a3[1];
  v8 = a3[3];
  v38 = a3[2];
  v9 = a3[4];
  v10 = a3[5];
  v12 = a3[6];
  v11 = a3[7];
  v13 = *(a3 + 64);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = IndexPath.section.getter();
    v17 = LinkDetailViewController.Section.init(rawValue:)(v16);
    v35 = v15;
    if (v17 == 1)
    {
      if (v13 == 1)
      {
        v24 = objc_allocWithZone(MEMORY[0x1E695CE18]);
        v25 = v6;

        v26 = [v24 init];
        v27 = [objc_opt_self() settingsWithContactStore_];

        v28 = [objc_allocWithZone(MEMORY[0x1E695D0C8]) initWithSettings_];
        v29 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_avatarController;
        v30 = v36;
        swift_beginAccess();
        v31 = *(v30 + v29);
        *(v30 + v29) = v28;

        v18 = v38;
        goto LABEL_7;
      }

      if (v13 == 2 && !(v6 | v7 | v38 | v8 | v9 | v10 | v12 | v11))
      {
        v32 = OBJC_IVAR____TtC15ConversationKit39LinkDetailParticipantCollectionViewCell_joinButton;
        v33 = v36;
        swift_beginAccess();
        [*(v33 + v32) addTarget:v15 action:sel_didTapJoin forControlEvents:64];
        v6 = 0;
        v18 = 0;
        v9 = 0;
        v10 = 0;
        v12 = 0;
        v11 = 0;
        v8 = 1;
        goto LABEL_7;
      }
    }

    v6 = 0;
    v18 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
LABEL_7:
    v39[0] = v6;
    v39[1] = v18;
    v39[2] = v8;
    v39[3] = v9;
    v39[4] = v10;
    v39[5] = v12;
    v39[6] = v11;
    v38 = v18;
    outlined copy of LinkDetailParticipantCollectionViewCell.Style(v6, v18, v8);
    LinkDetailParticipantCollectionViewCell.style.setter(v39);
    v19 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cellBackgroundConfiguration;
    v20 = type metadata accessor for UIBackgroundConfiguration();
    v21 = v35;
    v22 = &v35[v19];
    v23 = v37;
    (*(*(v20 - 8) + 16))(v37, v22, v20);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v20);
    MEMORY[0x1BFB216F0](v23);
    outlined consume of LinkDetailParticipantCollectionViewCell.Style(v6, v38, v8);
  }
}

uint64_t closure #1 in LinkDetailViewController.createDeleteCellRegistration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    MEMORY[0x1BFB21750]();
    v11 = [objc_opt_self() conversationKit];
    v23._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._object = 0x80000001BC511370;
    v13._countAndFlagsBits = 0xD000000000000012;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v23);

    UIListContentConfiguration.text.setter();
    v15 = [objc_opt_self() systemRedColor];
    v16 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v16(v22, 0);
    v22[3] = v5;
    v22[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
    MEMORY[0x1BFB216E0](v22);
    v18 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cellBackgroundConfiguration;
    v19 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v19 - 8) + 16))(v4, &v10[v18], v19);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v19);
    MEMORY[0x1BFB216F0](v4);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v20 = [objc_opt_self() configurationWithTextStyle_];
    v21 = @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))(v21);

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t closure #1 in LinkDetailViewController.createShareCellRegistration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit25UIBackgroundConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    MEMORY[0x1BFB21750]();
    v11 = [objc_opt_self() conversationKit];
    v22._object = 0xE000000000000000;
    v12.value._countAndFlagsBits = 0x61737265766E6F43;
    v12.value._object = 0xEF74694B6E6F6974;
    v13._object = 0x80000001BC511350;
    v13._countAndFlagsBits = 0xD000000000000011;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v12, v11, v14, v22);

    UIListContentConfiguration.text.setter();
    v21[3] = v5;
    v21[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(v6 + 16))(boxed_opaque_existential_1, v8, v5);
    MEMORY[0x1BFB216E0](v21);
    v16 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_cellBackgroundConfiguration;
    v17 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v17 - 8) + 16))(v4, &v10[v16], v17);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v17);
    MEMORY[0x1BFB216F0](v4);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
    v18 = [objc_opt_self() configurationWithTextStyle_];
    v19 = @nonobjc UIImage.__allocating_init(systemName:withConfiguration:)();
    (*((*MEMORY[0x1E69E7D40] & *a1) + 0x80))(v19);
    v20 = [objc_opt_self() whiteColor];
    [a1 setTintColor_];

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t LinkDetailViewController.showUserNotificationForDeleteInvite()()
{
  v1 = type metadata accessor for RecentsCallItem(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**&v0[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel] + 432))(v2);
  *(swift_allocObject() + 16) = v0;
  v5 = v0;
  RecentsLinkController.delete(callItem:from:completionHandler:)();

  return outlined destroy of RecentsCallItem(v4);
}

void closure #1 in LinkDetailViewController.showUserNotificationForDeleteInvite()(char a1, id a2)
{
  if (a1)
  {
    v2 = [a2 navigationController];
    if (v2)
    {
      v3 = v2;
    }
  }
}

void LinkDetailViewController.showShareLink(from:)(void *a1)
{
  (*(**&v1[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel] + 336))(&v8);

  v3 = objc_allocWithZone(type metadata accessor for LinkShareCoordinator());
  v4 = v1;
  v5 = a1;
  v6 = LinkShareCoordinator.init(type:hostViewController:originatingView:)();
  LinkShareCoordinator.start(with:)(TPNumberPadCharacter.rawValue.getter, 0);
  v7 = *&v4[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkShareCoordinator];
  *&v4[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_linkShareCoordinator] = v6;
}

void LinkDetailViewController.showContactDetails(for:with:sourceRect:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *&v6[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_viewModel];
  if ((*(*v20 + 384))())
  {
    if ((*(*v20 + 408))())
    {
      v22 = v21;
      ObjectType = swift_getObjectType();
      v34[0] = v14;
      v34[1] = v13;
      v34[2] = v15;
      v34[3] = v16;
      v34[4] = v17;
      v34[5] = v18;
      v34[6] = v19;
      (*(v22 + 16))(a1, v34, ObjectType, v22, a3, a4, a5, a6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (v14)
    {
      v24 = *&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory + 32];
      __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory], *&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory + 24]);
      v25 = *(v24 + 16);
      v26 = v14;
      v33 = v25();
    }

    else
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CNContact);

      v27 = outlined bridged method (pb) of @objc TUHandle.normalizedValue.getter(a1);
      v26 = @nonobjc CNContact.init(displayName:emailOrPhoneNumber:)(v13, v15, v27, v28);
      v29 = *&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory + 24];
      v30 = *&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory + 32];
      __swift_project_boxed_opaque_existential_1(&v7[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController_detailControllerFactory], v29);
      v33 = (*(v30 + 24))(v26, v29, v30);
    }

    v31 = [v7 navigationController];
    if (v31)
    {
      v32 = v31;
      [v31 pushViewController:v33 animated:1];
    }
  }
}

void closure #2 in LinkDetailViewController.initializeDataSource()(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit24LinkDetailViewControllerC7Section33_5E654DA4B4A45469CBB138AF6A20DD66LLOAF4ItemOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy15ConversationKit24LinkDetailViewControllerC4ItemOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - v8;
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (v10)
    {
      specialized Sequence.compactMap<A>(_:)(v10);
      v20 = &outlined read-only object #0 of closure #2 in LinkDetailViewController.initializeDataSource();
      specialized Array.append<A>(contentsOf:)(v13);
      lazy protocol witness table accessor for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item();
      NSDiffableDataSourceSectionSnapshot.init()();
      memset(v18, 0, sizeof(v18));
      v19 = -1;
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();

      v14 = LinkDetailViewController.dataSource.getter();
      LOBYTE(v18[0]) = 1;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      v15 = OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource;
      v16 = *&v12[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource];
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      NSDiffableDataSourceSnapshot.reloadSections(_:)(&outlined read-only object #1 of closure #2 in LinkDetailViewController.initializeDataSource());
      v17 = *&v12[v15];
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in LinkDetailViewController.initializeDataSource()(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit35NSDiffableDataSourceSectionSnapshotVy15ConversationKit24LinkDetailViewControllerC4ItemOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    lazy protocol witness table accessor for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item();
    NSDiffableDataSourceSectionSnapshot.init()();
    if (v10)
    {
      memset(v14, 0, sizeof(v14));
      v15 = -1;
      NSDiffableDataSourceSectionSnapshot.append(_:to:)();
    }

    v13 = LinkDetailViewController.dataSource.getter();
    LOBYTE(v14[0]) = a4;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t closure #4 in LinkDetailViewController.initializeDataSource()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy15ConversationKit24LinkDetailViewControllerC7Section33_5E654DA4B4A45469CBB138AF6A20DD66LLOAF4ItemOGMd);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = LinkDetailViewController.dataSource.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    NSDiffableDataSourceSnapshot.reloadSections(_:)(&outlined read-only object #0 of closure #4 in LinkDetailViewController.initializeDataSource());
    v7 = *&v5[OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___dataSource];
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

void LinkDetailViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = LinkDetailViewController.collectionView.getter();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 cellForItemAtIndexPath_];

  if (!v8)
  {
    v8 = *(v3 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView);
  }

  v9 = IndexPath.section.getter();
  switch(LinkDetailViewController.Section.init(rawValue:)(v9))
  {
    case 1u:
      v10 = LinkDetailViewController.dataSource.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      memcpy(__dst, __src, 0x41uLL);
      if (LOBYTE(__dst[8]) == 1)
      {
        v13 = __dst[0];
        v18 = __dst[1];
        v20 = *&__dst[1];
        v21 = __dst[3];
        v22 = __dst[4];
        v23 = __dst[5];
        v24 = __dst[6];
        v25 = __dst[7];
        type metadata accessor for LinkDetailViewController();
        memcpy(v26, __src, 0x41uLL);
        outlined init with copy of LinkDetailViewController.Item(v26, v19);
        static LinkDetailViewController.fetchFrame(of:in:)(a2, a1);
        LinkDetailViewController.showContactDetails(for:with:sourceRect:)(v13, &v20, v14, v15, v16, v17);
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit24LinkDetailViewControllerC4ItemOSgMd);
      }

      else
      {
        if (LOBYTE(__dst[8]) == 255)
        {
          goto LABEL_9;
        }

        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit24LinkDetailViewControllerC4ItemOSgMd);
      }

      goto LABEL_10;
    case 2u:
      LinkDetailViewController.showShareLink(from:)(v8);
      goto LABEL_9;
    case 3u:
      LinkDetailViewController.showUserNotificationForDeleteInvite()();
      goto LABEL_9;
    default:
LABEL_9:

LABEL_10:
      v11 = *(v3 + OBJC_IVAR____TtC15ConversationKit24LinkDetailViewController____lazy_storage___collectionView);
      v12 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v11 deselectItemAtIndexPath:v12 animated:1];

      return;
  }
}

void static LinkDetailViewController.fetchFrame(of:in:)(uint64_t a1, void *a2)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a2 layoutAttributesForItemAtIndexPath_];

  if (v4)
  {
    [v4 frame];
    v6 = v5;
    v8 = v7;

    [a2 convertPoint:0 toView:{v6, v8}];
  }
}

unint64_t lazy protocol witness table accessor for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item()
{
  result = lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item;
  if (!lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item;
  if (!lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDetailViewController.Item and conformance LinkDetailViewController.Item);
  }

  return result;
}

void type metadata completion function for LinkDetailViewController()
{
  type metadata accessor for (())?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<LinkDetailParticipantCollectionViewCell, LinkDetailViewController.Item>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit031LinkDetailParticipantCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (())?(319, &lazy cache variable for type metadata for UICollectionView.CellRegistration<LinkDetailActionCollectionViewCell, LinkDetailViewController.Item>?, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_15ConversationKit026LinkDetailActionCollectionbD0CAF0hiB10ControllerC4ItemOGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (())?(319, &lazy cache variable for type metadata for UICollectionView.SupplementaryRegistration<LinkDetailHeaderView>?, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_15ConversationKit016LinkDetailHeaderB0CGMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIBackgroundConfiguration();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15ConversationKit24LinkDetailViewControllerC4ItemO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t getEnumTagSinglePayload for LinkDetailViewController.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkDetailViewController.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for LinkDetailViewController.Item(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkDetailViewController.Section(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section()
{
  result = lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section;
  if (!lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section;
  if (!lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDetailViewController.Section and conformance LinkDetailViewController.Section);
  }

  return result;
}

id @nonobjc UICollectionViewCompositionalLayout.init(sectionProvider:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v8[3] = &block_descriptor_72;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:a3];

  _Block_release(v5);

  return v6;
}

void *outlined copy of LinkDetailParticipantCollectionViewCell.Style(void *result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = result;
  }

  return result;
}

void outlined consume of LinkDetailParticipantCollectionViewCell.Style(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
  }
}

id PushToTalkTalkPillButton.pillButtonMinimumWidthConstraint.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint];
  }

  else
  {
    v4 = [v0 widthAnchor];
    v5 = [v4 constraintGreaterThanOrEqualToConstant_];

    LODWORD(v6) = 1148846080;
    [v5 setPriority_];
    v7 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *PushToTalkTalkPillButton.init(viewModel:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_controller) = 0;
  v3 = OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_stateConfiguration;
  if (one-time initialization token for pttTalkButtonBanner != -1)
  {
    OUTLINED_FUNCTION_3_128();
    swift_once();
  }

  *(v1 + v3) = static Colors.InCallControls.pttTalkButtonBanner;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_viewModel) = a1;
  v4 = objc_opt_self();

  v5 = [v4 conversationKit];
  v17._object = 0xE000000000000000;
  OUTLINED_FUNCTION_5_5();
  v6._countAndFlagsBits = 1802264916;
  v6._object = 0xE400000000000000;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v8, v5, v7, v17);

  v15 = &type metadata for SymbolImageDescribers.ConversationControls;
  v16 = &protocol witness table for SymbolImageDescribers.ConversationControls;
  v14[0] = 17;
  v10 = *(v1 + v3);

  v11 = PillButton.init(title:symbol:stateConfiguration:context:)(v9._countAndFlagsBits, v9._object, v14, v10, 0);
  v12 = PushToTalkTalkPillButton.pillButtonMinimumWidthConstraint.getter();
  [v12 setActive_];

  type metadata accessor for PushToTalkTalkButtonController();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_controller] = PushToTalkTalkButtonController.init(button:viewModel:)(v11, a1);

  return v11;
}

id PushToTalkTalkPillButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PushToTalkTalkPillButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_controller) = 0;
  v1 = OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_stateConfiguration;
  if (one-time initialization token for pttTalkButtonBanner != -1)
  {
    OUTLINED_FUNCTION_3_128();
    swift_once();
  }

  *(v0 + v1) = static Colors.InCallControls.pttTalkButtonBanner;
  *(v0 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PushToTalkTalkPillButton.computedState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_controller);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 216);

  v4 = v2(v3);

  return v4;
}

Swift::Void __swiftcall PushToTalkTalkPillButton.updateConfiguration()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v84 - v3;
  type metadata accessor for AttributeContainer();
  OUTLINED_FUNCTION_1();
  v103 = v6;
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40();
  v102 = v7;
  v8 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_1();
  v106 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40();
  v105 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit31UIConfigurationColorTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v84 - v13;
  type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v97 = v15;
  v98 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40();
  v96 = v16;
  v95 = type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v107 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v84 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v101 = &v84 - v31;
  v32 = (*(**(v0 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton_viewModel) + 112))(v30);
  if ((v32 & 0xFE) == 2 || (v32 & 1) == 0)
  {
    v44 = type metadata accessor for PushToTalkTalkPillButton();
    v114.receiver = v0;
    v114.super_class = v44;
    objc_msgSendSuper2(&v114, sel_updateConfiguration);
  }

  else
  {
    v90 = v4;
    v33 = [objc_opt_self() conversationKit];
    v123._object = 0xE000000000000000;
    OUTLINED_FUNCTION_5_5();
    v34._countAndFlagsBits = 1701736260;
    v34._object = 0xE400000000000000;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v123._countAndFlagsBits = 0;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v36, v33, v35, v123);
    countAndFlagsBits = v37._countAndFlagsBits;
    object = v37._object;

    v112 = &type metadata for SymbolImageDescribers.ConversationControls;
    v113 = &protocol witness table for SymbolImageDescribers.ConversationControls;
    v111[0] = 18;
    v38 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC8);
    v91 = v1;
    v38();
    specialized Dictionary.subscript.getter();
    v39 = v117;
    v40 = v121;
    outlined init with copy of SymbolImageDescribing?(v111, v108);
    v41 = v109;
    if (v109)
    {
      v42 = v110;
      __swift_project_boxed_opaque_existential_1(v108, v109);
      (*(v42 + 8))(v122, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(v108);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
      v86 = static UIImage.symbolImage(for:)(v122);
      outlined destroy of SymbolImageDescription(v122);
      v43 = v117;
    }

    else
    {
      outlined destroy of TapInteractionHandler?(v108, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
      v86 = 0;
      v43 = v39;
    }

    v89 = v8;
    if (v43)
    {
      v87 = v40;
      v84 = v115[0];
      v85 = v39;
      v92 = v115[1];
      LODWORD(v93) = v116;
      v45 = v118;
      v46 = v119;
      v47 = v120;
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v48 = (*static Defaults.shared + 336);
      v49 = *v48;
      v50 = (*v48)();
      v51 = (v50 & 1) == 0;
      if (v50)
      {
        v52 = v45;
      }

      else
      {
        v52 = v84;
      }

      if (v51)
      {
        v53 = v92;
      }

      else
      {
        v53 = v46;
      }

      if (v51)
      {
        v54 = v93;
      }

      else
      {
        v54 = v47;
      }

      v92 = v53;
      v93 = v52;
      v55 = v54;
      v56 = outlined copy of ButtonBackgroundStyle(v52, v53, v54);
      v57 = (v49)(v56);
      v58 = v87;
      if ((v57 & 1) == 0)
      {
        v58 = v85;
      }

      v85 = v58;
    }

    else
    {
      v59 = objc_opt_self();
      v93 = [v59 systemGrayColor];
      v85 = [v59 labelColor];
      v92 = 0;
      v55 = 64;
    }

    static UIButton.Configuration.filled()();
    v60 = v107;
    v61 = *(v107 + 16);
    v62 = v95;
    v61(v23, v20, v95);
    v97[13](v96, *MEMORY[0x1E69DC508], v98);
    UIButton.Configuration.cornerStyle.setter();
    v63 = *(v60 + 8);
    v63(v20, v62);
    LODWORD(v87) = v55;
    UIButton.Configuration.withBackgroundStyle(_:)(v93, v92, v55, v26);
    v98 = v63;
    v63(v23, v62);
    v107 = v60 + 8;
    v64 = v100;
    v61(v100, v26, v62);
    UIButton.Configuration.contentInsets.setter();
    v63(v26, v62);
    v97 = v86;
    UIButton.Configuration.image.setter();
    v65 = swift_allocObject();
    v66 = v85;
    *(v65 + 16) = v85;
    v96 = v66;
    v67 = v99;
    UIConfigurationColorTransformer.init(_:)();
    v68 = type metadata accessor for UIConfigurationColorTransformer();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
    UIButton.Configuration.imageColorTransformer.setter();
    v69 = v101;
    v61(v101, v64, v62);

    v70 = v102;
    AttributeContainer.init()();
    v71 = v105;
    AttributedString.init(_:attributes:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    v73 = MEMORY[0x1E69DB648];
    *(inited + 16) = xmmword_1BC4BA940;
    v74 = *v73;
    *(inited + 32) = *v73;
    v75 = objc_opt_self();
    v76 = *MEMORY[0x1E69DDD80];
    v77 = v74;
    v78 = [v75 preferredFontForTextStyle_];
    isa = UIFont.withTraits(_:)(0x8002u).super.isa;

    v80 = UIFont.caseSensitive()().super.isa;
    *(inited + 64) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v80;
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    Dictionary.init(dictionaryLiteral:)();
    AttributeContainer.init(_:)();
    AttributedString.setAttributes(_:)();
    (*(v103 + 8))(v70, v104);
    v81 = v106;
    v83 = v89;
    v82 = v90;
    (*(v106 + 16))(v90, v71, v89);
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v83);
    UIButton.Configuration.attributedTitle.setter();
    outlined consume of ButtonBackgroundStyle(v93, v92, v87);

    (*(v81 + 8))(v71, v83);
    v98(v64, v62);
    outlined destroy of TapInteractionHandler?(v115, &_s15ConversationKit11ButtonStyleVSgMd);
    outlined destroy of TapInteractionHandler?(v111, &_s15ConversationKit21SymbolImageDescribing_pSgMd);
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v62);
    UIButton.configuration.setter();
  }
}

void PushToTalkTalkPillButton.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit24PushToTalkTalkPillButton____lazy_storage___pillButtonMinimumWidthConstraint);
}

id PushToTalkTalkPillButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushToTalkTalkPillButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AnsweringMachineTrackingServiceAdapter.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for AnsweringMachineTrackingServiceAdapter.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t key path getter for AnsweringMachineTrackingServiceAdapter.onResult : <A>AnsweringMachineTrackingServiceAdapter<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = (*a1 + direct field offset for AnsweringMachineTrackingServiceAdapter.onResult);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v7)
  {
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v7;
    v9[4] = v8;
    v10 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A, @unowned CallScreeningTrackingStateResult) -> ();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;
  return outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(v7);
}