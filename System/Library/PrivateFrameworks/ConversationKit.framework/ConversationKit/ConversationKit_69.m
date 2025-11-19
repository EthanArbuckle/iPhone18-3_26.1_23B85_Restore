void ControlsButtonProvider.accessoryForegroundView.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t ControlsButtonProvider.makeButton(frame:)()
{
  v0 = static ConversationControlsButtonFactory.makeButton(frame:provider:)();
  v1 = OUTLINED_FUNCTION_44_0();
  ControlsButtonProvider.button.setter(v1, v2);
  OUTLINED_FUNCTION_38_4();
  (*(v3 + 504))();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  v4 = v0;
  GameControllerManager.queryFirstResponder(_:)(v4);

  return OUTLINED_FUNCTION_44_0();
}

Swift::Void __swiftcall ControlsButtonProvider.makeAccessory()()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 192))();
  if (!v1)
  {
    return;
  }

  v28 = v1;
  OUTLINED_FUNCTION_0_1();
  v3 = (*(v2 + 368))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_0_1();
    v6 = (*(v5 + 464))();
    if (v6)
    {
      v7 = v6;
      [v6 setImage_];
    }

    else
    {
      v15 = v4;
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
      v17 = objc_opt_self();
      v18 = [v17 blackColor];
      [v16 setBackgroundColor_];

      [v28 addSubview_];
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v20 = [v17 blackColor];
      [v19 setBackgroundColor_];

      v21 = [v17 whiteColor];
      [v19 setTintColor_];

      [v28 addSubview_];
      OUTLINED_FUNCTION_38_4();
      v23 = *(v22 + 448);
      v24 = v16;
      v23(v16);
      OUTLINED_FUNCTION_38_4();
      v26 = *(v25 + 472);
      v27 = v19;
      v26(v19);

      v4 = v28;
      v28 = v15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_1();
    v9 = (*(v8 + 440))();
    if (v9)
    {
      v10 = v9;
      [v9 removeFromSuperview];
      OUTLINED_FUNCTION_0_1();
      (*(v11 + 448))(0);
    }

    OUTLINED_FUNCTION_0_1();
    v13 = (*(v12 + 464))();
    if (!v13)
    {
      goto LABEL_12;
    }

    v4 = v13;
    [v13 removeFromSuperview];
    OUTLINED_FUNCTION_0_1();
    (*(v14 + 472))(0);
  }

LABEL_12:
}

Swift::Void __swiftcall ControlsButtonProvider.updateButtonConfiguration()()
{
  OUTLINED_FUNCTION_0_1();
  v2 = (*(v1 + 192))();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v0;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in ControlsButtonProvider.updateButtonConfiguration();
    *(v8 + 24) = v7;
    v15[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v15[5] = v8;
    OUTLINED_FUNCTION_1_25();
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed () -> ();
    v15[3] = &block_descriptor_14_0;
    v9 = _Block_copy(v15);
    v10 = v4;

    [v6 performWithoutAnimation_];
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      ControlsButtonProvider.updateTextAttributes()();
      OUTLINED_FUNCTION_0_1();
      v12 = *(v11 + 216);
      v13 = v10;
      v14 = v12();
      UIButton.updateContentAlpha(_:)(v14);
    }
  }
}

uint64_t ControlsButtonProvider.didBecomeFirstResponder(button:gameControllerButton:)(uint64_t a1, int a2)
{
  v3 = v2;
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_4();
  }

  GameControllerManager.gameControllerContext()(v13);
  if (v15 == 1)
  {
    goto LABEL_10;
  }

  v6 = v16;
  v5 = v17;
  v8 = v18;
  v7 = v19;
  v9 = v14;
  v10 = v15;
  if (a2)
  {
    v9 = v18;
    v10 = v19;
    if (a2 != 2)
    {
      v9 = v16;
      v10 = v17;
      if (a2 != 1)
      {
        v22 = v14;
        v23 = v15;
        outlined destroy of TapInteractionHandler?(&v22, &_sSSSgMd);
        v24 = v6;
        v25 = v5;
        outlined destroy of TapInteractionHandler?(&v24, &_sSSSgMd);
        v20[0] = v8;
        v20[1] = v7;
        outlined destroy of TapInteractionHandler?(v20, &_sSSSgMd);
        goto LABEL_10;
      }
    }
  }

  v21[0] = v14;
  v21[1] = v15;

  outlined destroy of TapInteractionHandler?(v21, &_sSSSgMd);
  v22 = v6;
  v23 = v5;
  outlined destroy of TapInteractionHandler?(&v22, &_sSSSgMd);
  v24 = v8;
  v25 = v7;
  outlined destroy of TapInteractionHandler?(&v24, &_sSSSgMd);
  if (!v10)
  {
LABEL_10:
    v11 = 0;
    return (*(*v3 + 376))(v11);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  SymbolImageDescribers.GameController.symbolImageDescription.getter(v9, v10);
  v11 = static UIImage.symbolImage(for:)(v20);
  outlined destroy of SymbolImageDescription(v20);

  return (*(*v3 + 376))(v11);
}

Swift::Void __swiftcall ControlsButtonProvider.didLayoutSubviews(button:)(UIButton *button)
{
  OUTLINED_FUNCTION_0_1();
  v3 = (*(v2 + 440))();
  if (!v3)
  {
    return;
  }

  v17 = v3;
  OUTLINED_FUNCTION_0_1();
  v5 = (*(v4 + 464))();
  if (v5)
  {
    v6 = v5;
    [(UIButton *)button bounds];
    Width = CGRectGetWidth(v19);
    v20.origin.x = OUTLINED_FUNCTION_35();
    Height = CGRectGetHeight(v20);
    if (Height >= Width)
    {
      Height = Width;
    }

    v9 = Height / 3.0;
    v10 = Height / 3.0 * 0.1;
    v11 = 2.0;
    if (v10 >= 2.0)
    {
      v11 = v10;
      if (v10 >= v9)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else if (v9 <= 2.0)
    {
      goto LABEL_11;
    }

    v12 = [v17 layer];
    [v12 setCornerRadius_];

    v13 = v6;
    v14 = [v13 layer];
    [v14 setCornerRadius_];

    v21.origin.x = OUTLINED_FUNCTION_35();
    v15 = CGRectGetWidth(v21) - v9;
    v22.origin.x = OUTLINED_FUNCTION_35();
    [v17 setFrame_];
    v23.origin.x = OUTLINED_FUNCTION_35();
    v16 = v11 + CGRectGetWidth(v23) - v9;
    v24.origin.x = OUTLINED_FUNCTION_35();
    [v13 setFrame_];

    goto LABEL_11;
  }

LABEL_12:
}

void ControlsButtonProvider.startedContextMenu(button:animator:)(void *a1)
{
  v2 = type metadata accessor for Notification();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v7 - v6;
  if (one-time initialization token for menuAssertionManager != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_1();
  (*(v9 + 128))(0x20676E69776F6853, 0xEC000000756E656DLL);
  if (one-time initialization token for conversationControls != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, &static Logger.conversationControls);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000001BC51B370, &v17);
    _os_log_impl(&dword_1BBC58000, v11, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB23DF0](v14, -1, -1);
    MEMORY[0x1BFB23DF0](v13, -1, -1);
  }

  v15 = [objc_opt_self() defaultCenter];
  static Notification.contextMenuWillPresent(target:)(a1);
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v8, v2);
  [v15 postNotification_];
}

void ControlsButtonProvider.endedContextMenu(button:animator:)(void *a1, void *a2)
{
  v3 = *v2;
  if (a2)
  {
    v6 = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v10[4] = partial apply for closure #1 in ControlsButtonProvider.endedContextMenu(button:animator:);
    v10[5] = v7;
    OUTLINED_FUNCTION_1_25();
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed () -> ();
    v10[3] = &block_descriptor_20_2;
    v8 = _Block_copy(v10);
    v9 = a1;

    [a2 addCompletion_];
    _Block_release(v8);
  }
}

Class ControlsButtonProvider.prominentTitleFont.getter()
{
  if (!*(v0 + 40))
  {
    return 0;
  }

  v1 = [objc_opt_self() preferredFontForTextStyle_];
  isa = UIFont.withTraits(_:)(0x8002u).super.isa;

  v3.super.isa = UIFont.caseSensitive()().super.isa;
  return v3.super.isa;
}

uint64_t ConversationControlsButtonProvider.__allocating_init(controlsManager:context:shape:)(uint64_t a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 160) = a1;
  ControlsButtonProvider.init(context:shape:)(a2, a3);
  return v6;
}

uint64_t ControlsButtonProvider.init(context:shape:)(char a1, char a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = 0x3FF0000000000000;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = 0;
  *(v2 + 72) = -4;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 40) = a1;
  *(v2 + 41) = a2;
  return v2;
}

uint64_t ControlsButtonProvider.deinit()
{
  outlined destroy of weak InCallControlsBaseCellDelegate?(v0 + 16);

  outlined consume of ButtonBackgroundStyle?(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return v0;
}

uint64_t ConversationControlsButtonProvider.__deallocating_deinit()
{
  ControlsButtonProvider.deinit();

  return swift_deallocClassInstance();
}

void *one-time initialization function for menuAssertionManager()
{
  type metadata accessor for MenuAssertionManager();
  swift_allocObject();
  result = MenuAssertionManager.init()();
  static ControlsButtonProvider.menuAssertionManager = result;
  return result;
}

void key path setter for ControlsButtonProvider.button : ControlsButtonProvider(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *a1;
  ControlsButtonProvider.button.setter(v1, v2);
}

void ControlsButtonProvider.cnkContentAlpha.didset()
{
  v1 = (*(*v0 + 192))();
  if (v1)
  {
    v2 = v1;
    swift_beginAccess();
    UIButton.updateContentAlpha(_:)(v0[4]);
  }
}

uint64_t key path setter for ControlsButtonProvider.callbackCancellable : ControlsButtonProvider(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t key path getter for ControlsButtonProvider.backgroundStyle : ControlsButtonProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for ControlsButtonProvider.backgroundStyle : ControlsButtonProvider(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 280);
  v5 = *(a1 + 16);
  outlined copy of ButtonBackgroundStyle?(*a1, v3, v5);
  return v4(v2, v3, v5);
}

uint64_t key path setter for ControlsButtonProvider.foregroundColor : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path setter for ControlsButtonProvider.captureGroupName : ControlsButtonProvider(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t key path setter for ControlsButtonProvider.image : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path setter for ControlsButtonProvider.accessory : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);
  v4 = *a1;
  return v3(v2);
}

void ControlsButtonProvider.accessory.didset()
{
  v1 = (*(*v0 + 504))();
  v2 = (*(*v0 + 192))(v1);
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsUpdateConfiguration];
  }
}

uint64_t key path setter for ControlsButtonProvider.title : ControlsButtonProvider(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 400);

  return v4(v2, v3);
}

uint64_t key path setter for ControlsButtonProvider.titleFont : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 424);
  v4 = *a1;
  return v3(v2);
}

void ControlsButtonProvider.backgroundStyle.didset()
{
  OUTLINED_FUNCTION_0_1();
  v1 = (*(v0 + 192))();
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsUpdateConfiguration];
  }
}

uint64_t key path setter for ControlsButtonProvider.accessoryBackgroundView : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 448);
  v4 = *a1;
  return v3(v2);
}

uint64_t key path setter for ControlsButtonProvider.accessoryForegroundView : ControlsButtonProvider(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 472);
  v4 = *a1;
  return v3(v2);
}

uint64_t ControlsButtonProvider.__allocating_init(context:shape:)(char a1, char a2)
{
  v4 = swift_allocObject();
  ControlsButtonProvider.init(context:shape:)(a1, a2);
  return v4;
}

uint64_t closure #1 in ControlsButtonProvider.updateButtonConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  (*(*a3 + 536))(v5);
  v8 = type metadata accessor for UIButton.Configuration();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  return UIButton.configuration.setter();
}

void ControlsButtonProvider.updateTextAttributes()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = (*(*v0 + 192))(v11);
  if (v14)
  {
    v28 = v14;
    v15 = (*(*v0 + 416))();
    if (v15)
    {
      v16 = v15;
      v17 = v28;
      UIButton.configuration.getter();
      v18 = type metadata accessor for UIButton.Configuration();
      if (__swift_getEnumTagSinglePayload(v13, 1, v18))
      {
        outlined init with copy of UIButton.Configuration?(v13, v9);
        UIButton.configuration.setter();

        v19 = v13;
LABEL_8:
        outlined destroy of TapInteractionHandler?(v19, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
        return;
      }

      *(swift_allocObject() + 16) = v16;
      v22 = v16;
      UIConfigurationTextAttributesTransformer.init(_:)();
      v23 = type metadata accessor for UIConfigurationTextAttributesTransformer();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v23);
      UIButton.Configuration.titleTextAttributesTransformer.setter();
      UIButton.configuration.setter();
    }

    else if (v0[40])
    {
      v20 = v28;
      UIButton.configuration.getter();
      v21 = type metadata accessor for UIButton.Configuration();
      if (__swift_getEnumTagSinglePayload(v6, 1, v21))
      {
        outlined init with copy of UIButton.Configuration?(v6, v9);
        UIButton.configuration.setter();

        v19 = v6;
        goto LABEL_8;
      }

      v25 = [objc_opt_self() preferredFontForTextStyle_];
      *(swift_allocObject() + 16) = v25;
      UIConfigurationTextAttributesTransformer.init(_:)();
      v26 = type metadata accessor for UIConfigurationTextAttributesTransformer();
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v26);
      UIButton.Configuration.titleTextAttributesTransformer.setter();
      UIButton.configuration.setter();
    }

    else
    {
      [v28 sbui_updateConfiguration];
      v24 = v28;
    }
  }
}

uint64_t ControlsButtonProvider.defaultButtonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v13 = v12 - v11;
  v14 = type metadata accessor for UIButton.Configuration.Size();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v20 = v19 - v18;
  type metadata accessor for UIButton.Configuration();
  OUTLINED_FUNCTION_1();
  v62 = v22;
  v63 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8();
  v25 = v24 - v23;
  static UIButton.Configuration.filled()();
  (*(v16 + 104))(v20, *MEMORY[0x1E69DC558], v14);
  UIButton.Configuration.buttonSize.setter();
  (*(v9 + 104))(v13, *MEMORY[0x1E69DC508], v7);
  v26 = UIButton.Configuration.cornerStyle.setter();
  v27 = (*(*v2 + 392))(v26);
  if (v28)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v29 = type metadata accessor for AttributedString();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v29);
    v27 = UIButton.Configuration.attributedTitle.setter();
  }

  v30 = (*(*v2 + 344))(v27);
  if (v30)
  {
    v31 = v30;
    v32 = objc_opt_self();
    v33 = [v32 unspecifiedConfiguration];
    v34 = [v31 imageWithSymbolConfiguration_];

    UIButton.Configuration.image.setter();
    v35 = [objc_opt_self() preferredFontForTextStyle_];
    v36 = [v32 configurationWithFont:v35 scale:3];

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }

  v61 = v25;
  v37 = (*(*v2 + 272))();
  v39 = v38;
  v41 = v40;
  if (v40 >= 0xFCu)
  {
    if (ControlsButtonProvider.usesVibrantBackgroundStyle.getter())
    {
      v42 = ControlsButtonProvider.defaultVibrantBackgroundStyle.getter();
      outlined copy of ButtonBackgroundStyle(v42, v43, v44);
    }

    else
    {
      v45 = ControlsButtonProvider.defaultFlatBackgroundColor.getter();
    }
  }

  v46 = *(*v2 + 296);
  v47 = outlined copy of ButtonBackgroundStyle?(v37, v39, v41);
  if (!v46(v47))
  {
    v48 = [objc_opt_self() whiteColor];
  }

  v49 = v61;
  UIButton.Configuration.baseForegroundColor.setter();
  v50 = OUTLINED_FUNCTION_12_94();
  UIButton.Configuration.withBackgroundStyle(_:)(v50, v51, v52, v53);
  v54 = OUTLINED_FUNCTION_12_94();
  outlined consume of ButtonBackgroundStyle(v54, v55, v56);
  v57 = OUTLINED_FUNCTION_12_94();
  outlined consume of ButtonBackgroundStyle(v57, v58, v59);
  return (*(v62 + 8))(v49, v63);
}

uint64_t closure #1 in ControlsButtonProvider.buttonChanged()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 512))(result);
  }

  return result;
}

uint64_t closure #2 in ControlsButtonProvider.buttonChanged()(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v38 - v7);
  v9 = type metadata accessor for UIPointerEffect();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = UIPointerEffect.preview.getter();
  v23 = [v22 target];

  v24 = [v23 container];
  [a1 convertRect:v24 toCoordinateSpace:{v15, v17, v19, v21}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (v5)
  {
    v39.origin.x = v26;
    v39.origin.y = v28;
    v39.size.width = v30;
    v39.size.height = v32;
    v33 = CGRectGetHeight(v39) * 0.5;
  }

  else
  {
    static UIPointerShape.defaultCornerRadius.getter();
    v33 = v34;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPointerStyle);
  *v13 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  (*(v10 + 104))(v13, *MEMORY[0x1E69DBF70], v9);
  *v8 = v26;
  v8[1] = v28;
  v8[2] = v30;
  v8[3] = v32;
  v8[4] = v33;
  v35 = *MEMORY[0x1E69DBED0];
  v36 = type metadata accessor for UIPointerShape();
  (*(*(v36 - 8) + 104))(v8, v35, v36);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v36);
  return UIPointerStyle.init(effect:shape:)();
}

id outlined copy of ButtonBackgroundStyle?(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return outlined copy of ButtonBackgroundStyle(result, a2, a3);
  }

  return result;
}

void outlined consume of ButtonBackgroundStyle?(id a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    outlined consume of ButtonBackgroundStyle(a1, a2, a3);
  }
}

void closure #1 in ControlsButtonProvider.endedContextMenu(button:animator:)(void *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for menuAssertionManager != -1)
  {
    swift_once();
  }

  v6 = static ControlsButtonProvider.menuAssertionManager;
  v7 = (*(*static ControlsButtonProvider.menuAssertionManager + 136))();
  if (((*(*v6 + 120))(v7) & 1) == 0)
  {
    v8 = [objc_opt_self() defaultCenter];
    static Notification.contextMenuDidDismiss(target:)(a1);
    isa = Notification._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v8 postNotification_];
  }
}

uint64_t ControlsButtonProvider.__deallocating_deinit()
{
  ControlsButtonProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t ControlsButtonProvider.usesVibrantBackgroundStyle.getter()
{
  v1 = (*(*v0 + 192))();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  if ([v1 tintAdjustmentMode] == 2 || !v0[40])
  {

LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = (*(*static Defaults.shared + 336))();

  v4 = v3 ^ 1;
  return v4 & 1;
}

id ControlsButtonProvider.defaultVibrantBackgroundStyle.getter()
{
  if (*(v0 + 40) < 2u)
  {
    return 0;
  }

  type metadata accessor for ConversationHUDInCallBackdropView();
  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
}

id ControlsButtonProvider.defaultFlatBackgroundColor.getter()
{
  result = [objc_opt_self() secondarySystemBackgroundColor];
  v2 = result;
  if (!*(v0 + 40))
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    return @nonobjc UIColor.init(dynamicProvider:)(partial apply for closure #1 in ControlsButtonProvider.defaultFlatBackgroundColor.getter, v3);
  }

  return result;
}

id closure #1 in ControlsButtonProvider.defaultFlatBackgroundColor.getter(uint64_t a1, void *a2)
{
  v3 = UITraitCollection.modifyingTraits(_:)();
  v4 = [a2 resolvedColorWithTraitCollection_];

  return v4;
}

uint64_t closure #1 in ControlsButtonProvider.textAttributesTransformer(font:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

uint64_t ControlsButtonProvider.debugDescription.getter()
{
  _StringGuts.grow(_:)(31);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit22ControlsButtonProviderCmMd);
  v0 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](0x7865746E6F63203ALL, 0xEC000000203D2074);
  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0x206570616873203BLL, 0xEA0000000000203DLL);
  v2 = String.init<A>(reflecting:)();
  MEMORY[0x1BFB20B10](v2);

  MEMORY[0x1BFB20B10](15931, 0xE200000000000000);
  return 60;
}

__int128 *AssetPackageDescriptor.phoneInCall.unsafeMutableAddressor()
{
  if (one-time initialization token for phoneInCall != -1)
  {
    OUTLINED_FUNCTION_1_183();
  }

  return &static AssetPackageDescriptor.phoneInCall;
}

__int128 *AssetPackageDescriptor.faceTimeVideo.unsafeMutableAddressor()
{
  if (one-time initialization token for faceTimeVideo != -1)
  {
    OUTLINED_FUNCTION_2_170();
  }

  return &static AssetPackageDescriptor.faceTimeVideo;
}

uint64_t static AssetPackageDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    v7 = a1[4];
    v8 = a2[4];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[3] == a2[3] && v7 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t AssetPackageDescriptor.packageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssetPackageDescriptor.activeState.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall AssetPackageDescriptor.init(packageName:bundle:activeState:)(ConversationKit::AssetPackageDescriptor *__return_ptr retstr, Swift::String_optional packageName, NSBundle bundle, Swift::String_optional activeState)
{
  retstr->packageName = packageName;
  retstr->bundle = bundle;
  retstr->activeState = activeState;
}

double one-time initialization function for faceTimeVideo()
{
  v0 = [objc_opt_self() conversationKit];
  result = 4.05417855e228;
  static AssetPackageDescriptor.faceTimeVideo = xmmword_1BC4E8180;
  qword_1EDDCCE18 = 0;
  qword_1EDDCCE20 = 0;
  qword_1EDDCCE10 = v0;
  return result;
}

uint64_t static AssetPackageDescriptor.faceTimeVideo.getter()
{
  if (one-time initialization token for faceTimeVideo != -1)
  {
    OUTLINED_FUNCTION_2_170();
  }

  OUTLINED_FUNCTION_0_216(&static AssetPackageDescriptor.faceTimeVideo);
  v1 = v0;
}

double one-time initialization function for phoneInCall()
{
  v0 = [objc_opt_self() conversationKit];
  result = 7.28075555e223;
  static AssetPackageDescriptor.phoneInCall = xmmword_1BC4E8190;
  qword_1EDDCCE48 = 0;
  qword_1EDDCCE50 = 0;
  qword_1EDDCCE40 = v0;
  return result;
}

uint64_t static AssetPackageDescriptor.phoneInCall.getter()
{
  if (one-time initialization token for phoneInCall != -1)
  {
    OUTLINED_FUNCTION_1_183();
  }

  OUTLINED_FUNCTION_0_216(&static AssetPackageDescriptor.phoneInCall);
  v1 = v0;
}

uint64_t one-time initialization function for communicationsUI()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSBundle);
  result = static NSBundle.communicationsUI.getter();
  static AssetPackageDescriptor.communicationsUI = 0;
  unk_1EBCDB400 = 0;
  qword_1EBCDB410 = 0;
  unk_1EBCDB418 = 0;
  qword_1EBCDB408 = result;
  return result;
}

uint64_t *AssetPackageDescriptor.communicationsUI.unsafeMutableAddressor()
{
  if (one-time initialization token for communicationsUI != -1)
  {
    OUTLINED_FUNCTION_3_163();
  }

  return &static AssetPackageDescriptor.communicationsUI;
}

uint64_t static AssetPackageDescriptor.communicationsUI.getter()
{
  if (one-time initialization token for communicationsUI != -1)
  {
    OUTLINED_FUNCTION_3_163();
  }

  OUTLINED_FUNCTION_0_216(&static AssetPackageDescriptor.communicationsUI);
  v1 = v0;
}

uint64_t getEnumTagSinglePayload for AssetPackageDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AssetPackageDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ConversationControlsRecipe.init(type:avatar:leadingAccessoryView:title:subtitles:subtitleLeadingBadge:fullSentence:hudInfoButtonType:showsSubtitleChevron:titleConfiguration:subtitleConfiguration:actions:leadingViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20)
{
  LODWORD(v60) = a20;
  v21 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v25 = (v24 - v23);
  v26 = *a13;
  v28 = *(v27 + 36);
  v29 = type metadata accessor for AttributedString();
  __swift_storeEnumTagSinglePayload(v25 + v28, 1, 1, v29);
  v30 = (v25 + v21[10]);
  v31 = v25 + v21[15];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[40] = -2;
  *(v25 + v21[16]) = 0;
  v32 = v25 + v21[17];
  v33 = v25 + v21[18];
  *v33 = 1;
  v34 = a1;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 56) = 0u;
  v33[72] = 0;
  outlined init with copy of ConversationControlsType(a1, v25);
  v25[6] = a2;
  v25[7] = a3;
  v25[8] = a4;
  v25[9] = a5;
  v25[10] = a6;
  v25[11] = a7;
  *v30 = a8;
  v30[1] = a10;
  v30[2] = a11;
  outlined assign with copy of AttributedString?(a12, v25 + v28);
  *(v25 + v21[11]) = v26;
  *(v25 + v21[12]) = a14;
  *(v25 + v21[13]) = a15;
  *(v25 + v21[14]) = a16;
  *v32 = a18;
  *(v32 + 1) = a19;
  v32[16] = a20;
  v35 = *(a17 + 40);
  if (v35 > 0xFD)
  {
    goto LABEL_14;
  }

  v36 = *(*a17 + 16);
  if ((v35 & 0x80) != 0)
  {
    if (v36 >= 6)
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v46 = type metadata accessor for Logger();
      v38 = OUTLINED_FUNCTION_7_107(v46, &static Logger.conversationControls);
      v39 = static os_log_type_t.fault.getter();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a17, &_s15ConversationKit0A14ControlsRecipeV7ActionsOSgMd);
      if (os_log_type_enabled(v38, v39))
      {
        swift_slowAlloc();
        v40 = a12;
        v41 = OUTLINED_FUNCTION_11_106();
        v62[0] = v41;
        *v34 = 136315138;
        v47 = String.init<A>(reflecting:)();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v62);

        *(v34 + 4) = v49;
        v45 = "Too many buttonShelf actions (%s)";
        goto LABEL_13;
      }

LABEL_15:

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a17, &_s15ConversationKit0A14ControlsRecipeV7ActionsOSgMd);
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a12, &_s10Foundation16AttributedStringVSgMd);
      v50 = v34;
      goto LABEL_16;
    }

LABEL_14:
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a12, &_s10Foundation16AttributedStringVSgMd);
    outlined destroy of ConversationControlsType(a1);
    v51 = *(a17 + 16);
    *v31 = *a17;
    *(v31 + 1) = v51;
    *(v31 + 25) = *(a17 + 25);
    outlined init with copy of ConversationControlsRecipe(v25, a9);
    __swift_storeEnumTagSinglePayload(a9, 0, 1, v21);
    OUTLINED_FUNCTION_0_217();
    return _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  }

  if (v36 < 3)
  {
    goto LABEL_14;
  }

  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v37 = type metadata accessor for Logger();
  v38 = OUTLINED_FUNCTION_7_107(v37, &static Logger.conversationControls);
  v39 = static os_log_type_t.fault.getter();
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a17, &_s15ConversationKit0A14ControlsRecipeV7ActionsOSgMd);
  if (!os_log_type_enabled(v38, v39))
  {
    goto LABEL_15;
  }

  swift_slowAlloc();
  v40 = a12;
  v41 = OUTLINED_FUNCTION_11_106();
  v62[0] = v41;
  *v34 = 136315138;
  v42 = String.init<A>(reflecting:)();
  v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v62);

  *(v34 + 4) = v44;
  v45 = "Too many trailing actions (%s)";
LABEL_13:
  _os_log_impl(&dword_1BBC58000, v38, v39, v45, v34, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v41);
  MEMORY[0x1BFB23DF0](v41, -1, -1);
  MEMORY[0x1BFB23DF0](v34, -1, -1);

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(a17, &_s15ConversationKit0A14ControlsRecipeV7ActionsOSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v40, &_s10Foundation16AttributedStringVSgMd);
  v50 = v60;
LABEL_16:
  outlined destroy of ConversationControlsType(v50);
  OUTLINED_FUNCTION_0_217();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  return __swift_storeEnumTagSinglePayload(a9, 1, 1, v21);
}

uint64_t type metadata accessor for ConversationControlsRecipe()
{
  result = type metadata singleton initialization cache for ConversationControlsRecipe;
  if (!type metadata singleton initialization cache for ConversationControlsRecipe)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL ConversationControlsRecipe.isNotice.getter()
{
  outlined init with copy of ConversationControlsType(v0, v3);
  v1 = v3[40] == 1;
  outlined destroy of ConversationControlsType(v3);
  return v1;
}

uint64_t ConversationControlsRecipe.debugDescription.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v3 = ConversationControlsType.debugDescription.getter();
  MEMORY[0x1BFB20B10](v3);

  MEMORY[0x1BFB20B10](0x3A656C746974202CLL, 0xE800000000000000);
  v4 = [*(v0 + 80) string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1BFB20B10](v5, v7);

  MEMORY[0x1BFB20B10](0x746974627573202CLL, 0xEB000000003A656CLL);
  v8 = *(v1 + 88);
  if (specialized Array.count.getter(v8))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1BFB22010](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;
    v11 = [v9 string];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v13;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1BFB20B10](v12, v2);

  MEMORY[0x1BFB20B10](0x666E69647568202CLL, 0xEB00000000203A6FLL);
  type metadata accessor for ConversationControlsRecipe();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t ConversationControlsRecipe.supportsAlerting.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v6);
  if (v9 == 3)
  {
    v4 = 0;
  }

  else
  {
    if (v9 == 7)
    {
      v1 = vorrq_s8(v7, v8);
      v2 = vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL));
      if (v6 == 4 && *&v2 == 0)
      {
        return 0;
      }
    }

    v4 = 1;
  }

  outlined destroy of ConversationControlsType(&v6);
  return v4;
}

uint64_t ConversationControlsRecipe.buttonShelfActions.getter()
{
  v2 = v1 + *(type metadata accessor for ConversationControlsRecipe() + 60);
  if (*(v2 + 40) > -3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_12_95(v2);
  return v0;
}

uint64_t EphemeralAlert.description.getter(id a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = [a1 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1BFB20B10](2108704, 0xE300000000000000);
    v5 = [v3 string];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    MEMORY[0x1BFB20B10](v6, v8);
  }

  else
  {
    v9 = [a1 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_46();
}

BOOL ConversationControlsRecipe.isMicIndicatorVisible.getter()
{
  type metadata accessor for ConversationControlsAction();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  v4 = ConversationControlsRecipe.allActions.getter();
  swift_storeEnumTagMultiPayload();
  v8 = v3;
  v5 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v4);

  _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  return v5;
}

uint64_t ConversationControlsRecipe.copyWithoutSystemApertureViews()@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsRecipe(v1, a1);
  v3 = (a1 + *(type metadata accessor for ConversationControlsRecipe() + 72));
  result = memcpy(v12, v3, 0x49uLL);
  if (v12[0] == 1)
  {
    v5 = *&v12[1];
    v6 = *&v12[3];
    v7 = *&v12[5];
    v8 = 1;
    v9 = v12[7];
  }

  else
  {
    result = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v12, &_s15ConversationKit21SystemApertureElementVSgMd);
    v8 = 0;
    v9 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  v10 = v12[8];
  v11 = v12[9];
  *v3 = v8;
  *(v3 + 1) = v5;
  *(v3 + 3) = v6;
  *(v3 + 5) = v7;
  v3[7] = v9;
  v3[8] = v10;
  *(v3 + 72) = v11;
  return result;
}

uint64_t ConversationControlsRecipe.showsDefaultHUDOnTap.getter()
{
  OUTLINED_FUNCTION_14_3();
  v3[40] = 7;
  v1 = static ConversationControlsType.== infix(_:_:)(v0, v3);
  outlined destroy of ConversationControlsType(v3);
  return v1 & 1;
}

uint64_t ConversationControlsRecipe.trailingActions.getter()
{
  v2 = v1 + *(type metadata accessor for ConversationControlsRecipe() + 60);
  if (*(v2 + 40) < 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_12_95(v2);
  return v0;
}

void *ConversationControlsRecipe.avatar.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *ConversationControlsRecipe.leadingAccessoryView.getter()
{
  v1 = *(v0 + 56);
  outlined copy of ConversationControlsRecipe.View?(v1, *(v0 + 64));
  return v1;
}

void ConversationControlsRecipe.leadingAccessoryView.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined consume of ConversationControlsRecipe.View?(*(v3 + 56), *(v3 + 64));
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
}

uint64_t ConversationControlsRecipe.subtitles.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t ConversationControlsRecipe.fullSentence.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for ConversationControlsRecipe();
  return outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v0, v1 + *(v2 + 36), &_s10Foundation16AttributedStringVSgMd);
}

uint64_t ConversationControlsRecipe.fullSentence.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.subtitleLeadingBadge.getter()
{
  type metadata accessor for ConversationControlsRecipe();
  v0 = OUTLINED_FUNCTION_46();
  outlined copy of ConversationControlsRecipe.View?(v0, v1);
  return OUTLINED_FUNCTION_46();
}

void ConversationControlsRecipe.subtitleLeadingBadge.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + *(type metadata accessor for ConversationControlsRecipe() + 40);
  outlined consume of ConversationControlsRecipe.View?(*v7, *(v7 + 8));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t ConversationControlsRecipe.subtitleLeadingBadge.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.hudInfoButtonType.getter()
{
  result = OUTLINED_FUNCTION_13_81();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t ConversationControlsRecipe.hudInfoButtonType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ConversationControlsRecipe();
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t ConversationControlsRecipe.hudInfoButtonType.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.showsSubtitleChevron.setter(char a1)
{
  result = type metadata accessor for ConversationControlsRecipe();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t ConversationControlsRecipe.showsSubtitleChevron.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.titleConfiguration.setter()
{
  OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for ConversationControlsRecipe();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t ConversationControlsRecipe.titleConfiguration.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.subtitleConfiguration.setter()
{
  OUTLINED_FUNCTION_17_1();
  result = type metadata accessor for ConversationControlsRecipe();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t ConversationControlsRecipe.subtitleConfiguration.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.actions.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for ConversationControlsRecipe();
  return outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v0, v1 + *(v2 + 60), &_s15ConversationKit0A14ControlsRecipeV7ActionsOSgMd);
}

uint64_t ConversationControlsRecipe.actions.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.allowsDeepLinkToFullScreenCallUI.getter()
{
  OUTLINED_FUNCTION_14_3();
  v6 = 7;
  v1 = static ConversationControlsType.== infix(_:_:)(v0, v5);
  outlined destroy of ConversationControlsType(v5);
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_3();
    v6 = 7;
    v3 = static ConversationControlsType.== infix(_:_:)(v0, v5);
    outlined destroy of ConversationControlsType(v5);
    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t ConversationControlsRecipe.allowsDeepLinkToFullScreenCallUIWhenCustom.setter(char a1)
{
  result = type metadata accessor for ConversationControlsRecipe();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ConversationControlsRecipe.allowsDeepLinkToFullScreenCallUIWhenCustom.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.allowsHUDInfoPresentation.getter()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (Features.isICUIRedesignEnabled.getter())
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    v7 = 7;
    v2 = static ConversationControlsType.== infix(_:_:)(v0, v5);
    outlined destroy of ConversationControlsType(v5);
    if (v2)
    {
      return 1;
    }
  }

  v3 = type metadata accessor for ConversationControlsRecipe();
  if (*(v1 + *(v3 + 44)) != 2)
  {
    return 1;
  }

  else
  {
    return *(v1 + *(v3 + 48));
  }
}

uint64_t ConversationControlsRecipe.leadingViewType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversationControlsRecipe() + 68) + 16);
  v2 = OUTLINED_FUNCTION_46();
  outlined copy of LeadingViewType?(v2, v3, v1);
  return OUTLINED_FUNCTION_46();
}

void ConversationControlsRecipe.leadingViewType.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for ConversationControlsRecipe() + 68);
  outlined consume of LeadingViewType?(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
}

uint64_t ConversationControlsRecipe.leadingViewType.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.systemApertureElement.setter()
{
  OUTLINED_FUNCTION_17_1();
  v2 = type metadata accessor for ConversationControlsRecipe();
  return outlined assign with take of UICollectionView.SupplementaryRegistration<InCallControlsSectionHeaderView>?(v0, v1 + *(v2 + 72), &_s15ConversationKit21SystemApertureElementVSgMd);
}

uint64_t ConversationControlsRecipe.systemApertureElement.modify()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for ConversationControlsRecipe();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t ConversationControlsRecipe.requiresAnimation(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = type metadata accessor for ConversationControlsRecipe();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = v10 - v9;
  outlined init with copy of IDView<AvatarStackView, [UUID]>(a1, v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v6, &_s15ConversationKit0A14ControlsRecipeVSgMd);
LABEL_7:
    v16 = 1;
    return v16 & 1;
  }

  outlined init with take of ConversationControlsRecipe(v6, v11);
  OUTLINED_FUNCTION_9_102(24);
  v26 = 7;
  v12 = static ConversationControlsType.== infix(_:_:)(v2, v25);
  outlined destroy of ConversationControlsType(v25);
  if (v12 & 1) != 0 && (OUTLINED_FUNCTION_9_102(23), v26 = 7, v13 = static ConversationControlsType.== infix(_:_:)(v11, v25), outlined destroy of ConversationControlsType(v25), (v13) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D12ControlsTypeOGMd), inited = swift_initStackObject(), *(inited + 32) = 28, *(inited + 80) = 29, *(inited + 128) = 30, *(inited + 16) = xmmword_1BC4BB980, *(inited + 40) = 0u, *(inited + 56) = 0u, *(inited + 72) = 7, *(inited + 88) = 0u, *(inited + 104) = 0u, *(inited + 120) = 7, *(inited + 136) = 0u, *(inited + 152) = 0u, *(inited + 168) = 7, MEMORY[0x1EEE9AC00](inited), v24[-2] = v2, v15 = specialized Sequence.contains(where:)(), swift_setDeallocating(), specialized _ContiguousArrayStorage.__deallocating_deinit(), v15))
  {
    OUTLINED_FUNCTION_0_217();
    _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
    goto LABEL_7;
  }

  v18 = *(v7 + 60);
  v19 = (v2 + v18);
  if (*(v2 + v18 + 40) <= -3)
  {
    v20 = *v19;
    outlined copy of ConversationControlsRecipe.Actions(*v19, v19[1], v19[2], v19[3], v19[4]);
    v18 = *(v7 + 60);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = (v11 + v18);
  if (*(v21 + 40) <= -3)
  {
    v22 = *v21;
    outlined copy of ConversationControlsRecipe.Actions(*v21, v21[1], v21[2], v21[3], v21[4]);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v20;
  specialized Array.append<A>(contentsOf:)(v22);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15ConversationKit0B14ControlsActionO_SayAFGTt0g5();
  v25[0] = v23;
  if (one-time initialization token for avLessLeaveConfirmationActions != -1)
  {
    swift_once();
  }

  v24[0] = static ConversationControlsAction.avLessLeaveConfirmationActions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15ConversationKit0A14ControlsActionOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit0A14ControlsActionOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Set<ConversationControlsAction> and conformance Set<A>, &_sShy15ConversationKit0A14ControlsActionOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [ConversationControlsAction] and conformance [A], &_sSay15ConversationKit0A14ControlsActionOGMd);
  lazy protocol witness table accessor for type ConversationControlsAction and conformance ConversationControlsAction();
  v16 = Collection<>.contains<A>(_:)();

  OUTLINED_FUNCTION_0_217();
  _s15ConversationKit0A14ControlsRecipeVWOhTm_1();
  return v16 & 1;
}

uint64_t ConversationControlsRecipe.accountUpdateNotice.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ConversationControlsType(v1, v8);
  if (v9 == 1)
  {
    outlined init with take of TapInteractionHandler(v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
    updated = type metadata accessor for AccountUpdateNotice(0);
    v4 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a1, v4 ^ 1u, 1, updated);
  }

  else
  {
    v6 = type metadata accessor for AccountUpdateNotice(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
    return outlined destroy of ConversationControlsType(v8);
  }
}

uint64_t ConversationControlsRecipe.wantsSessionSizeClass.getter()
{
  outlined init with copy of ConversationControlsType(v0, &v4);
  v1 = 1;
  if (v7)
  {
    if (v7 == 2)
    {
LABEL_7:
      outlined destroy of ConversationControlsType(&v4);
      return v1;
    }

    if (v7 != 7 || v4 != 4 || (v2 = vorrq_s8(v5, v6), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL))))
    {
      v1 = 0;
      goto LABEL_7;
    }
  }

  return v1;
}

uint64_t static ConversationControlsRecipe.Actions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 40);
  if (v4 < 0)
  {
    v7 = *(a2 + 40);
    if ((v7 & 0x80000000) == 0)
    {
      return 0;
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = *(a2 + 32);
    v15 = *(a2 + 8);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B14ControlsActionO_Tt1g5(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    v16 = v8 == v15 && v9 == v12;
    if (!v16 || v10 != v13)
    {
      return 0;
    }

    if (v4)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v7 & 1) != 0 || v11 != v14)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 40) < 0)
  {
    return 0;
  }

  v5 = *a2;

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15ConversationKit0B14ControlsActionO_Tt1g5(v3, v5);
}

uint64_t ConversationControlsRecipe.allActions.getter()
{
  v1 = v0 + *(type metadata accessor for ConversationControlsRecipe() + 60);
  v2 = *(v1 + 40);
  if (v2 <= 0xFD)
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if ((v2 & 0x80) != 0)
    {
      v9 = MEMORY[0x1E69E7CC0];
      outlined copy of ConversationControlsRecipe.Actions(v3, v4, v5, v6, v7);
    }

    else
    {
      v9 = *v1;
      outlined copy of ConversationControlsRecipe.Actions(v3, v4, v5, v6, v7);
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v3);
  return v9;
}

unint64_t lazy protocol witness table accessor for type ConversationControlsAction and conformance ConversationControlsAction()
{
  result = lazy protocol witness table cache variable for type ConversationControlsAction and conformance ConversationControlsAction;
  if (!lazy protocol witness table cache variable for type ConversationControlsAction and conformance ConversationControlsAction)
  {
    type metadata accessor for ConversationControlsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConversationControlsAction and conformance ConversationControlsAction);
  }

  return result;
}

unint64_t type metadata completion function for ConversationControlsRecipe()
{
  type metadata accessor for ConversationControlsBadgingAvatarViewController?(319, &lazy cache variable for type metadata for ConversationControlsBadgingAvatarViewController?, type metadata accessor for ConversationControlsBadgingAvatarViewController, MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for ConversationControlsRecipe.View?);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for NSAttributedString();
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for ConversationControlsBadgingAvatarViewController?(319, &lazy cache variable for type metadata for [NSAttributedString], type metadata accessor for NSAttributedString, MEMORY[0x1E69E62F8]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for ConversationControlsBadgingAvatarViewController?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for ConversationControlsRecipe.Actions?);
        v1 = v9;
        if (v10 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for LeadingViewType?);
          v1 = v11;
          if (v12 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for SystemApertureElement?);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for ConversationControlsBadgingAvatarViewController?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ConversationControlsRecipe.Actions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 41))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 40) & 0x7E | (*(a1 + 40) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t storeEnumTagSinglePayload for ConversationControlsRecipe.Actions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for EphemeralAlert(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *CallRecordingViewModel.ScreenSize.interComponentSpacing(for:)(_BYTE *a1)
{
  if (*a1)
  {
    v2 = &outlined read-only object #1 of CallRecordingViewModel.ScreenSize.interComponentSpacing(for:);
  }

  else
  {
    v2 = &outlined read-only object #0 of CallRecordingViewModel.ScreenSize.interComponentSpacing(for:);
  }

  v3 = &outlined read-only object #2 of CallRecordingViewModel.ScreenSize.interComponentSpacing(for:);
  if (*a1)
  {
    v3 = &outlined read-only object #3 of CallRecordingViewModel.ScreenSize.interComponentSpacing(for:);
  }

  if (*v1)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

Swift::Int CallRecordingViewModel.ViewType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CallRecordingViewModel.ViewType and conformance CallRecordingViewModel.ViewType()
{
  result = lazy protocol witness table cache variable for type CallRecordingViewModel.ViewType and conformance CallRecordingViewModel.ViewType;
  if (!lazy protocol witness table cache variable for type CallRecordingViewModel.ViewType and conformance CallRecordingViewModel.ViewType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingViewModel.ViewType and conformance CallRecordingViewModel.ViewType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CallRecordingViewModel.ScreenSize and conformance CallRecordingViewModel.ScreenSize()
{
  result = lazy protocol witness table cache variable for type CallRecordingViewModel.ScreenSize and conformance CallRecordingViewModel.ScreenSize;
  if (!lazy protocol witness table cache variable for type CallRecordingViewModel.ScreenSize and conformance CallRecordingViewModel.ScreenSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallRecordingViewModel.ScreenSize and conformance CallRecordingViewModel.ScreenSize);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CallRecordingViewModel.ViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MoreMenuButtonViewModel.config()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleVyytGMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  MoreMenuButtonViewModel.buttonStyle()(&v13._object - v1);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((Features.isICUIRedesignEnabled.getter() & 1) == 0)
  {
    v2 = [objc_opt_self() conversationKit];
    v3._countAndFlagsBits = OUTLINED_FUNCTION_7_108();
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v5, v2, v4, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI16IconButtonConfigCyytGMd);
  v6 = [objc_opt_self() conversationKit];
  v7._countAndFlagsBits = OUTLINED_FUNCTION_7_108();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v9, v6, v8, v14);

  v10 = swift_allocObject();
  swift_weakInit();
  v12 = partial apply for closure #1 in MoreMenuButtonViewModel.config();
  v14._object = v10;
  LOBYTE(v13._object) = 1;
  return IconButtonConfig<A>.init(style:title:hasBadge:accessibilityLabel:accessibilityValue:accessibilityIdentifier:enabled:didTap:)();
}

Swift::Void __swiftcall MoreMenuButtonViewModel.didTapMoreMenuButton()()
{
  v1 = *(v0 + 24);
  if (v1)
  {

    v1(v2);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v1);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_218();
    v5 = lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v3, v4);
    OUTLINED_FUNCTION_21_59(v5, v6, v7, v8, v9, v10, v11, v12, v21, v0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_21_59(KeyPath, v14, v15, v16, v17, v18, v19, v20, v22, v0);
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    OUTLINED_FUNCTION_3_5();
    *(v0 + 16) = (*(v0 + 16) & 1) == 0;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }
}

uint64_t MoreMenuButtonViewModel.isMoreMenuPresented.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 16);
}

uint64_t MoreMenuButtonViewModel.isMoreMenuPresented.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_171();
    specialized MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

uint64_t (**MoreMenuButtonViewModel.ftMenuViewModel.getter())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  v117 = &v103 - v2;
  v133 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v124 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v118 = v5;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v119 = v12;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v13);
  v120 = &v103 - v14;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v103 - v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v103 - v18;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x1EEE9AC00](v19);
  v125 = &v103 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd);
  OUTLINED_FUNCTION_1();
  v127 = v22;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v103 - v24;
  v25 = v0[10];
  v26 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v25);
  v27 = (*(v26 + 8))(v25, v26);
  if (v27)
  {
    v28 = v27;
    v134 = v10;
    v107 = v21;
    v108 = v8;
    type metadata accessor for CallCenterFacade();
    static CallCenterFacade.shared.getter();
    v29 = [v28 uniqueProxyIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = CallCenterFacade.call(with:)();

    if (v30)
    {

      static CallCenterFacade.shared.getter();
      v31 = type metadata accessor for FTMenuItemStateProvider();
      swift_allocObject();
      v132 = FTMenuItemStateProvider.init(call:callCenter:)();
      type metadata accessor for FTMenuItemRegistry();
      v32 = static FTMenuItemRegistry.shared.getter();
      v33 = [v28 uniqueProxyIdentifier];
      v106 = v30;
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v110 = FTMenuItemRegistry.container(for:)();

      OUTLINED_FUNCTION_36();
      v116 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v131 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v115 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v114 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v113 = swift_allocObject();
      swift_weakInit();
      swift_weakInit();

      v112 = specialized closure #6 in MoreMenuButtonViewModel.ftMenuViewModel.getter(v137, v28);
      OUTLINED_FUNCTION_36();
      v111 = swift_allocObject();
      OUTLINED_FUNCTION_14_74(v111);
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v130 = swift_allocObject();
      OUTLINED_FUNCTION_14_74(v130);
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v129 = swift_allocObject();
      OUTLINED_FUNCTION_14_74(v129);
      swift_weakInit();
      OUTLINED_FUNCTION_36();
      v128 = swift_allocObject();
      OUTLINED_FUNCTION_14_74(v128);
      swift_weakInit();
      type metadata accessor for MoreMenuViewModel();
      v35 = swift_allocObject();
      v136[3] = v31;
      v136[4] = MEMORY[0x1E6995F68];
      v136[0] = v132;
      v36 = (v35 + direct field offset for MoreMenuViewModel.presentAddParticipantSheet);
      *v36 = TPNumberPadCharacter.rawValue.getter;
      v36[1] = 0;
      v37 = (v35 + direct field offset for MoreMenuViewModel.toggleLiveCaptions);
      *v37 = TPNumberPadCharacter.rawValue.getter;
      v37[1] = 0;
      v38 = (v35 + direct field offset for MoreMenuViewModel.startScreenSharing);
      *v38 = TPNumberPadCharacter.rawValue.getter;
      v38[1] = 0;
      v105 = v28;
      v39 = (v35 + direct field offset for MoreMenuViewModel.stopScreenSharing);
      *v39 = TPNumberPadCharacter.rawValue.getter;
      v39[1] = 0;
      v40 = (v35 + direct field offset for MoreMenuViewModel.startWaitOnHold);
      *v40 = TPNumberPadCharacter.rawValue.getter;
      v40[1] = 0;
      v41 = (v35 + direct field offset for MoreMenuViewModel.presentSharePlayDismissalAlert);
      *v41 = TPNumberPadCharacter.rawValue.getter;
      v41[1] = 0;
      v42 = (v35 + direct field offset for MoreMenuViewModel.presentContactCard);
      v104 = (v35 + direct field offset for MoreMenuViewModel.presentContactCard);
      *v42 = TPNumberPadCharacter.rawValue.getter;
      v42[1] = 0;
      v43 = (v35 + direct field offset for MoreMenuViewModel.startCallRecording);
      *v43 = 0;
      v43[1] = 0;
      v44 = (v35 + direct field offset for MoreMenuViewModel.stopCallRecording);
      v109 = (v35 + direct field offset for MoreMenuViewModel.stopCallRecording);
      *v44 = 0;
      v44[1] = 0;
      *(v35 + direct field offset for MoreMenuViewModel.cancellable) = MEMORY[0x1E69E7CD0];
      outlined init with copy of IDSLookupManager(v136, v35 + direct field offset for MoreMenuViewModel.provider);
      OUTLINED_FUNCTION_3_5();
      v45 = v116;
      *v36 = partial apply for closure #1 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v36[1] = v45;
      OUTLINED_FUNCTION_3_5();
      v46 = v131;
      *v37 = partial apply for closure #2 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v37[1] = v46;
      swift_retain_n();
      v47 = v111;

      OUTLINED_FUNCTION_3_5();
      v48 = v115;
      *v38 = partial apply for closure #3 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v38[1] = v48;

      OUTLINED_FUNCTION_3_5();
      v49 = v114;
      *v39 = partial apply for closure #4 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v39[1] = v49;

      OUTLINED_FUNCTION_3_5();
      v50 = v113;
      *v40 = partial apply for closure #5 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v40[1] = v50;

      *(v35 + direct field offset for MoreMenuViewModel.presentSharePlaySheet) = v112;
      OUTLINED_FUNCTION_3_5();
      *v41 = partial apply for closure #7 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v41[1] = v47;

      v51 = v104;
      OUTLINED_FUNCTION_3_5();
      v52 = v130;
      *v51 = partial apply for closure #8 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v51[1] = v52;

      OUTLINED_FUNCTION_3_5();
      v53 = *v43;
      v54 = v129;
      *v43 = partial apply for closure #9 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v43[1] = v54;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v53);
      v55 = v109;
      OUTLINED_FUNCTION_3_5();
      v56 = *v55;
      v57 = v128;
      *v55 = partial apply for closure #10 in MoreMenuButtonViewModel.ftMenuViewModel.getter;
      v55[1] = v57;

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v56);
      *(v35 + direct field offset for MoreMenuViewModel.container) = v110;

      v58 = FTMenuViewModel.init()();
      v59 = swift_allocObject();
      OUTLINED_FUNCTION_14_74(v59);
      v104 = v58;
      swift_weakInit();
      v135[4] = partial apply for closure #1 in MoreMenuViewModel.init(provider:container:presentAddParticipantSheet:toggleLiveCaptions:startScreenSharing:stopScreenSharing:startWaitOnHold:presentSharePlaySheet:presentSharePlayDismissalAlert:presentContactCard:startCallRecording:stopCallRecording:);
      v135[5] = v59;
      v135[0] = MEMORY[0x1E69E9820];
      v135[1] = 1107296256;
      v135[2] = thunk for @escaping @callee_guaranteed () -> ();
      v135[3] = &block_descriptor_113;
      v60 = _Block_copy(v135);

      TUDispatchMainIfNecessary();
      _Block_release(v60);
      v61 = objc_opt_self();
      v62 = [v61 defaultCenter];
      v63 = v123;
      OUTLINED_FUNCTION_17_68();

      v109 = v61;
      v64 = [v61 &off_1E7FE9380 + 5];
      v65 = v118;
      NSNotificationCenter.publisher(for:object:)();

      lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
      v66 = v119;
      v67 = v133;
      Publisher.merge(with:)();
      v68 = *(v124 + 8);
      v68(v65, v67);
      v68(v63, v67);
      v69 = v68;
      v103 = v68;
      v70 = [v61 &off_1E7FE9380 + 5];
      OUTLINED_FUNCTION_17_68();

      v71 = v120;
      v72 = v108;
      Publishers.MergeMany.merge(with:)();
      v69(v63, v67);
      v73 = v134 + 8;
      v124 = *(v134 + 8);
      (v124)(v66, v72);
      v134 = v73;
      v74 = v109;
      v75 = [v109 defaultCenter];
      OUTLINED_FUNCTION_17_68();

      v76 = v121;
      OUTLINED_FUNCTION_22_51();
      v77 = v67;
      v78 = v103;
      v103(v63, v77);
      (v124)(v71, v72);
      v79 = [v74 defaultCenter];
      OUTLINED_FUNCTION_17_68();

      v80 = v122;
      Publishers.MergeMany.merge(with:)();
      v78(v63, v133);
      v81 = v124;
      (v124)(v76, v72);
      v82 = [v109 defaultCenter];
      OUTLINED_FUNCTION_17_68();

      v83 = v125;
      OUTLINED_FUNCTION_22_51();
      v78(v63, v133);
      v81(v80, v72);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v84 = static OS_dispatch_queue.main.getter();
      v135[0] = v84;
      v85 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v86 = v117;
      __swift_storeEnumTagSinglePayload(v117, 1, 1, v85);
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.MergeMany<NSNotificationCenter.Publisher> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGMd);
      lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue);
      v87 = v126;
      Publisher.receive<A>(on:options:)();
      outlined destroy of CallControlsService?(v86, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
      v81(v83, v72);

      swift_allocObject();
      v88 = v104;
      swift_weakInit();
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.MergeMany<NSNotificationCenter.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC9MergeManyVy_So20NSNotificationCenterC10FoundationE9PublisherVGSo17OS_dispatch_queueCGMd);
      v89 = v107;
      v134 = Publisher<>.sink(receiveValue:)();

      (*(v127 + 8))(v87, v89);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_weakDestroy();
      __swift_destroy_boxed_opaque_existential_1(v136);

      return v88;
    }

    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static Logger.conversationKit);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v101, v102, "There's no call facade when building the FTMenuViewModel.");
      MEMORY[0x1BFB23DF0](v100, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9();
    }

    v91 = type metadata accessor for Logger();
    __swift_project_value_buffer(v91, static Logger.conversationKit);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      OUTLINED_FUNCTION_75(&dword_1BBC58000, v95, v96, "There's no active call when building the FTMenuViewModel.");
      MEMORY[0x1BFB23DF0](v94, -1, -1);
    }
  }

  return 0;
}

uint64_t MoreMenuButtonViewModel.__allocating_init(service:moreMenuDidTap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  MoreMenuButtonViewModel.init(service:moreMenuDidTap:)(a1, a2, a3);
  return v6;
}

uint64_t MoreMenuButtonViewModel.conversation.getter()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t MoreMenuButtonViewModel.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGAA011_BackgroundO0VyACyACyAA6CircleVAA022_EnvironmentKeyWritingO0VyAA11ColorSchemeOGGAA01_r5StyleO0VyAA8MaterialVGGGGAA11_ClipEffectVyAVGGMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v5 - v2;
  if (MoreMenuButtonViewModel.shouldShowCountdown.getter())
  {
    MoreMenuButtonViewModel.countdownView.getter(v3);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  }

  else
  {
    v5[1] = v0;

    State.init(wrappedValue:)();
    lazy protocol witness table accessor for type MoreMenuButton and conformance MoreMenuButton();
  }

  return AnyView.init<A>(_:)();
}

uint64_t MoreMenuButtonViewModel.access<A>(keyPath:)()
{
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v0, v1);
  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t specialized MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)()
{
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v0, v1);
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*MoreMenuButtonViewModel.isMoreMenuPresented.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23MoreMenuButtonViewModel___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_218();
  v7 = lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return MoreMenuButtonViewModel.isMoreMenuPresented.modify;
}

uint64_t MoreMenuButtonViewModel.isAddParticipantSheetPresented.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 17);
}

uint64_t key path getter for MoreMenuButtonViewModel.isAddParticipantSheetPresented : MoreMenuButtonViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.isAddParticipantSheetPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t MoreMenuButtonViewModel.isAddParticipantSheetPresented.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 17) == v2)
  {
    *(v1 + 17) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_171();
    specialized MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

void (*MoreMenuButtonViewModel.isAddParticipantSheetPresented.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23MoreMenuButtonViewModel___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_218();
  v7 = lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return MoreMenuButtonViewModel.isAddParticipantSheetPresented.modify;
}

uint64_t MoreMenuButtonViewModel.shouldShowCountdown.getter()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_218();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v1, v2);
  OUTLINED_FUNCTION_1_12();

  OUTLINED_FUNCTION_4_5();
  return *(v0 + 18);
}

uint64_t key path getter for MoreMenuButtonViewModel.shouldShowCountdown : MoreMenuButtonViewModel@<X0>(_BYTE *a1@<X8>)
{
  result = MoreMenuButtonViewModel.shouldShowCountdown.getter();
  *a1 = result & 1;
  return result;
}

uint64_t MoreMenuButtonViewModel.shouldShowCountdown.setter(char a1)
{
  v2 = a1 & 1;
  result = OUTLINED_FUNCTION_3_5();
  if (*(v1 + 18) == v2)
  {
    *(v1 + 18) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_11();
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_2_171();
    specialized MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)();
  }

  return result;
}

uint64_t closure #1 in MoreMenuButtonViewModel.shouldShowCountdown.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 18) = a2;
  return result;
}

void (*MoreMenuButtonViewModel.shouldShowCountdown.modify())(void **a1)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_6_12(v4);
  swift_getKeyPath();
  v2[4] = OBJC_IVAR____TtC15ConversationKit23MoreMenuButtonViewModel___observationRegistrar;
  *v2 = v1;
  OUTLINED_FUNCTION_0_218();
  v7 = lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(v5, v6);
  OUTLINED_FUNCTION_2_18(v7);

  *v2 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();

  OUTLINED_FUNCTION_15_12();
  return MoreMenuButtonViewModel.shouldShowCountdown.modify;
}

uint64_t MoreMenuButtonViewModel.cancellables.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(&lazy protocol witness table cache variable for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel, type metadata accessor for MoreMenuButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t MoreMenuButtonViewModel.cancellables.setter(unint64_t a1)
{
  swift_beginAccess();

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7Combine14AnyCancellableC_Tt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    specialized MoreMenuButtonViewModel.withMutation<A, B>(keyPath:_:)();
  }
}

uint64_t MoreMenuButtonViewModel.countdownView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for CountdownView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB013CountdownViewVAA25_AppearanceActionModifierVGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;

  static Color.clear.getter();
  v10 = [objc_opt_self() systemGreenColor];
  Color.init(uiColor:)();
  static Layout.ConversationControls.values.getter(&v28);
  static Color.white.getter();
  CountdownView.init(viewModel:backgroundColor:strokeColor:lineWidth:foregroundColor:)();

  CountdownView.onCountdownStopped(_:)();

  (*(v4 + 8))(v6, v3);
  v11 = &v9[*(v7 + 36)];
  *v11 = partial apply for closure #2 in MoreMenuButtonViewModel.countdownView.getter;
  v11[1] = v2;
  v11[2] = 0;
  v11[3] = 0;
  lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  swift_retain_n();
  v12 = v27;
  View.onTapGesture(count:perform:)();

  outlined destroy of CallControlsService?(v9, &_s7SwiftUI15ModifiedContentVy014CommunicationsB013CountdownViewVAA25_AppearanceActionModifierVGMd);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGMd) + 36));
  v14 = v30;
  *v13 = v29;
  v13[1] = v14;
  v13[2] = v31;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGAA011_BackgroundO0VyACyACyAA6CircleVAA022_EnvironmentKeyWritingO0VyAA11ColorSchemeOGGAA01_r5StyleO0VyAA8MaterialVGGGGMd) + 36));
  v19 = v12;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGMd) + 28);
  v21 = *MEMORY[0x1E697DBA8];
  v22 = type metadata accessor for ColorScheme();
  (*(*(v22 - 8) + 104))(v18 + v20, v21, v22);
  *v18 = swift_getKeyPath();
  v23 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6CircleVAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOGGAA016_BackgroundStyleI0VyAA8MaterialVGGMd) + 36);
  static Material.ultraThin.getter();
  LOBYTE(v20) = static Edge.Set.all.getter();
  v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd) + 36)] = v20;
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA6CircleVAA022_EnvironmentKeyWritingD0VyAA11ColorSchemeOGGAA01_c5StyleD0VyAA8MaterialVGGGMd) + 36));
  *v24 = v15;
  v24[1] = v17;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGAA011_BackgroundO0VyACyACyAA6CircleVAA022_EnvironmentKeyWritingO0VyAA11ColorSchemeOGGAA01_r5StyleO0VyAA8MaterialVGGGGAA11_ClipEffectVyAVGGMd);
  *(v19 + *(result + 36)) = 256;
  return result;
}

uint64_t closure #1 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 112))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #2 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 96))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #3 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuButtonViewModel.shouldShowCountdown.setter(1);
  }

  return result;
}

uint64_t closure #4 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 48))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #5 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 72))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t specialized closure #6 in MoreMenuButtonViewModel.ftMenuViewModel.getter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    outlined init with copy of IDSLookupManager(Strong + 56, v11);

    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v4 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v7 = [a2 provider];
  v8 = [v7 isTelephonyProvider];

  v9 = static SharePlayDiscoverabilityMenuView.makeMoreMenuSharePlayDiscoverabilityView(foregroundApp:callSupportsCollaborations:willTapApp:)(v4, v8 ^ 1u, 0, 0);
  return v9;
}

uint64_t closure #7 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 80))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #8 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 104))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #9 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 56))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t closure #10 in MoreMenuButtonViewModel.ftMenuViewModel.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    outlined init with copy of IDSLookupManager(result + 56, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 64))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t MoreMenuButtonViewModel.buttonStyle()@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = type metadata accessor for IconButtonWidthRestriction();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Font.Leading();
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Image.Scale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6_GlassVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVyyt_GMd);
  v27 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v23 = v22 - v10;
  v11 = *MEMORY[0x1E69DDCF8];
  v36 = 0;
  v37[0] = 0x73697370696C6C65;
  v37[1] = 0xE800000000000000;
  v37[2] = 3;
  v37[3] = v11;
  v38 = 0;
  v39 = 4;
  v40 = 0;
  v41 = 0;
  v42[0] = 0x73697370696C6C65;
  v42[1] = 0xE800000000000000;
  v42[2] = 3;
  v42[3] = v11;
  v43 = 0;
  v44 = 4;
  v45 = 0;
  v46 = 0;
  v12 = v11;
  outlined init with copy of SymbolImageDescription(v37, &v33);
  outlined destroy of SymbolImageDescription(v42);
  v22[1] = v37[0];

  outlined destroy of SymbolImageDescription(v37);
  static Font.Weight.bold.getter();
  static Color.white.getter();
  *(&v34 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CommunicationsUI15IconButtonStyleV12SystemSymbolVAASbRszlE23iOSControlBackgroundOffQrvpZQOySb__Qo_Md);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v33);
  static IconButtonStyle.SystemSymbol<A>.iOSControlBackgroundOff.getter();
  static IconButtonStyle.SystemSymbol<A>.controlGlassOff.getter();
  v13 = type metadata accessor for _Glass();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
  (*(v4 + 104))(v6, *MEMORY[0x1E69816E0], v3);
  static IconButtonStyle.Defaults.phone.iconFont.getter();
  static IconButtonStyle.SystemSymbol<A>.iosCallControl(name:color:background:glass:scale:font:weight:)();

  (*(v4 + 8))(v6, v3);
  outlined destroy of CallControlsService?(v9, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of CallControlsService?(&v33, &_s7SwiftUI10ShapeStyle_pSgMd);
  OpaqueTypeConformance2 = 0;
  v34 = 0u;
  v33 = 0u;
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  static Color.white.getter();
  static Font.subheadline.getter();
  v14 = v25;
  v15 = v24;
  v16 = v26;
  (*(v25 + 104))(v24, *MEMORY[0x1E6980EA8], v26);
  Font.leading(_:)();

  (*(v14 + 8))(v15, v16);
  static IconButtonStyle.Defaults.phone.iconWidth.getter();
  v17 = v30;
  v18 = v29;
  v19 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x1E6995BD0], v31);
  v20 = v23;
  static IconButtonStyle.iosCallControl(symbol:background:glass:labelColor:labelFont:labelPosition:maxWidth:width:widthRestriction:spacing:)();

  (*(v17 + 8))(v18, v19);
  outlined destroy of CallControlsService?(v9, &_s7SwiftUI6_GlassVSgMd);
  outlined destroy of CallControlsService?(&v33, &_s7SwiftUI10ShapeStyle_pSgMd);
  return (*(v27 + 8))(v20, v28);
}

uint64_t closure #1 in MoreMenuButtonViewModel.config()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MoreMenuButtonViewModel.didTapMoreMenuButton()();
  }

  return result;
}

uint64_t type metadata accessor for MoreMenuButtonViewModel()
{
  result = type metadata singleton initialization cache for MoreMenuButtonViewModel;
  if (!type metadata singleton initialization cache for MoreMenuButtonViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreMenuButtonViewModel.init(service:moreMenuDidTap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  v11 = type metadata accessor for URL();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  type metadata accessor for CountdownView.ViewModel();
  swift_allocObject();
  *(v4 + 48) = CountdownView.ViewModel.init(timeInterval:total:audioFileURL:)();
  ObservationRegistrar.init()();
  outlined init with copy of IDSLookupManager(a1, v4 + 56);
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a2, a3);
  MoreMenuButtonViewModel.observeShareMenuState()();
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t MoreMenuButtonViewModel.observeShareMenuState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = v0[10];
  v13 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v12);
  v21 = (*(v13 + 32))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AnyPublisher<ShareMenuActionState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGMd);
  lazy protocol witness table accessor for type ShareMenuActionState and conformance ShareMenuActionState();
  Publisher<>.removeDuplicates()();

  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<ShareMenuActionState, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGGMd);
  v14 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  v21 = v14;
  v15 = [objc_opt_self() mainRunLoop];
  v22 = v15;
  v16 = type metadata accessor for NSRunLoop.SchedulerOptions();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop);
  lazy protocol witness table accessor for type TUCall and conformance TUCall(&lazy protocol witness table cache variable for type NSRunLoop and conformance NSRunLoop, &lazy cache variable for type metadata for NSRunLoop);
  Publisher.receive<A>(on:options:)();
  outlined destroy of CallControlsService?(v3, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd);

  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ShareMenuActionState, Never>, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy15ConversationKit20ShareMenuActionStateVs5NeverOGSo9NSRunLoopCGMd);
  v17 = v19;
  Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v11, v17);
  swift_getKeyPath();
  v21 = v0;
  lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(&lazy protocol witness table cache variable for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel, type metadata accessor for MoreMenuButtonViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Combine14AnyCancellableCGMd);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type [AnyCancellable] and conformance [A], &_sSay7Combine14AnyCancellableCGMd);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v21 = v0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t MoreMenuButtonViewModel.enabled(for:)(uint64_t a1)
{
  if (BYTE4(a1) <= 0x1Fu)
  {
    v1 = BYTE4(a1) ^ 1;
  }

  else
  {
    v1 = ((BYTE4(a1) >> 5) - 7 < 0xFFFFFFFB) & BYTE4(a1);
  }

  return v1 & 1;
}

uint64_t closure #1 in MoreMenuButtonViewModel.observeShareMenuState()(_BYTE *a1)
{
  v1 = *a1 & (a1[16] ^ 1);
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v2 = MoreMenuButtonViewModel.shouldShowCountdown.getter() & 1, result = , (v1 & 1) != v2))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      MoreMenuButtonViewModel.shouldShowCountdown.setter(v1 & 1);
    }
  }

  return result;
}

uint64_t closure #3 in MoreMenuButtonViewModel.countdownView.getter(void *a1)
{
  dispatch thunk of CountdownView.ViewModel.pauseCountdown()();
  MoreMenuButtonViewModel.shouldShowCountdown.setter(0);
  v2 = a1[10];
  v3 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t MoreMenuButtonViewModel.deinit()
{
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 24));

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC15ConversationKit23MoreMenuButtonViewModel___observationRegistrar;
  type metadata accessor for ObservationRegistrar();
  OUTLINED_FUNCTION_15_1();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t MoreMenuButtonViewModel.__deallocating_deinit()
{
  MoreMenuButtonViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for MoreMenuButtonViewModel()
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

unint64_t lazy protocol witness table accessor for type MoreMenuButton and conformance MoreMenuButton()
{
  result = lazy protocol witness table cache variable for type MoreMenuButton and conformance MoreMenuButton;
  if (!lazy protocol witness table cache variable for type MoreMenuButton and conformance MoreMenuButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoreMenuButton and conformance MoreMenuButton);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGAA011_BackgroundO0VyACyACyAA6CircleVAA022_EnvironmentKeyWritingO0VyAA11ColorSchemeOGGAA01_r5StyleO0VyAA8MaterialVGGGGAA11_ClipEffectVyAVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _ClipEffect<Circle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGAA011_BackgroundO0VyACyACyAA6CircleVAA022_EnvironmentKeyWritingO0VyAA11ColorSchemeOGGAA01_r5StyleO0VyAA8MaterialVGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAEyAA6CircleVAA022_EnvironmentKeyWritingD0VyAA11ColorSchemeOGGAA01_c5StyleD0VyAA8MaterialVGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout>, _BackgroundModifier<ModifiedContent<ModifiedContent<Circle, _EnvironmentKeyWritingModifier<ColorScheme>>, _BackgroundStyleModifier<Material>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyACy014CommunicationsB009CountdownE0VAA25_AppearanceActionModifierVG_Qo_AA12_FrameLayoutVGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB013CountdownViewVAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy014CommunicationsB013CountdownViewVAA25_AppearanceActionModifierVGMd);
    lazy protocol witness table accessor for type MoreMenuButtonViewModel and conformance MoreMenuButtonViewModel(&lazy protocol witness table cache variable for type CountdownView and conformance CountdownView, MEMORY[0x1E69959D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CountdownView, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t key path getter for DeviceWaveformView.barColor : DeviceWaveformView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

id DeviceWaveformView.barColor.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_barColor;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t (*DeviceWaveformView.barColor.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return DeviceWaveformView.barColor.modify;
}

uint64_t key path getter for DeviceWaveformView.filterType : DeviceWaveformView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id DeviceWaveformView.filterType.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_filterType;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);

  return v2;
}

void DeviceWaveformView.barColor.setter(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;

  [v2 setNeedsLayout];
}

uint64_t (*DeviceWaveformView.filterType.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_38();
  return DeviceWaveformView.filterType.modify;
}

uint64_t key path getter for DeviceWaveformView.power : DeviceWaveformView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DeviceWaveformView.power : DeviceWaveformView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);

  return v2(v3);
}

uint64_t DeviceWaveformView.power.didset(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_power;
  swift_beginAccess();
  result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(*&v1[v3], a1);
  if ((result & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t DeviceWaveformView.power.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_power;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  DeviceWaveformView.power.didset(v4);
}

void (*DeviceWaveformView.power.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_power;
  swift_beginAccess();
  v3[3] = *(v1 + v4);

  return DeviceWaveformView.power.modify;
}

void DeviceWaveformView.power.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    DeviceWaveformView.power.setter(v4);
  }

  else
  {
    DeviceWaveformView.power.setter(v3);
  }

  free(v2);
}

id DeviceWaveformView.init(numBands:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_barColor;
  *&v2[v4] = [objc_opt_self() systemGreenColor];
  v5 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_filterType;
  type metadata accessor for NSString();
  *&v2[v5] = NSString.init(stringLiteral:)();
  v6 = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_power] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_bandViews] = v6;
  *&v2[OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_numBands] = a1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DeviceWaveformView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  DeviceWaveformView.configureViews()();

  return v7;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

id DeviceWaveformView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DeviceWaveformView.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_barColor;
  *(v1 + v2) = [objc_opt_self() systemGreenColor];
  v3 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_filterType;
  type metadata accessor for NSString();
  *(v1 + v3) = NSString.init(stringLiteral:)();
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_power) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_bandViews) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DeviceWaveformView.layoutSubviews()()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for DeviceWaveformView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_numBands];
  if (!__OFADD__(v1, 1))
  {
    [v0 bounds];
    v2 = (CGRectGetWidth(v27) - (v1 + 1) * 1.25) / v1;
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    [v0 bounds];
    Height = CGRectGetHeight(v28);
    if (v4 == 1)
    {
      v6 = Height;
    }

    else
    {
      v6 = Height - (v2 + v2);
    }

    v7 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_bandViews;
    swift_beginAccess();
    v8 = *&v0[v7];
    v9 = specialized Array.count.getter(v8);

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB22010](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_65();
      v14 = *(v13 + 168);
      v15 = *(v14() + 16);

      v17 = 0.0;
      if (i < v15)
      {
        v18 = (v14)(v16, 0.0);
        if (i >= *(v18 + 16))
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 4 * i + 32);

        v17 = v19;
      }

      v20 = v2 + (v6 - v2) * v17;
      [v0 bounds];
      v21 = CGRectGetHeight(v29) * 0.5;
      OUTLINED_FUNCTION_65();
      v23 = (*(v22 + 120))();
      [v12 setBackgroundColor_];

      [v12 setBounds_];
      v24 = [v12 layer];
      [v24 setPosition_];

      v25 = [v12 layer];
      [v25 setCornerRadius_];
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void DeviceWaveformView.configureViews()()
{
  v1 = v0;
  v2 = [v0 layer];
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  [v2 setCompositingFilter_];

  v5 = *(v1 + OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_numBands);
  if (v5 < 0)
  {
    __break(1u);
  }

  else if (v5)
  {
    v6 = *((*v3 & *v1) + 0x78);
    v7 = *MEMORY[0x1E69796E8];
    v8 = OBJC_IVAR____TtC15ConversationKit18DeviceWaveformView_bandViews;
    do
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v10 = [v9 layer];
      [v10 setAnchorPoint_];

      v11 = v6();
      [v9 setBackgroundColor_];

      v12 = [v9 layer];
      [v12 setAllowsEdgeAntialiasing_];

      v13 = [v9 layer];
      [v13 setCornerCurve_];

      [v1 addSubview_];
      swift_beginAccess();
      v14 = v9;
      MEMORY[0x1BFB20CC0]();
      if (*((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      --v5;
    }

    while (v5);
  }
}

id DeviceWaveformView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DeviceWaveformView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceWaveformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ThoughtBubble.init(anchorPoint:cornerRadius:growsRightwards:isPad:scale:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a7;
  *(a3 + 24) = a6;
  *(a3 + 32) = result;
  *(a3 + 33) = a2;
  return result;
}

double (*ThoughtBubble.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return ThoughtBubble.animatableData.modify;
}

double ThoughtBubble.animatableData.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 16) = *a1;
  return result;
}

double ThoughtBubble.intermediateBubbleScale.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 >= 0.1)
  {
    result = 1.0;
    if (v1 < 0.3)
    {
      return (v1 + -0.1) / 0.2;
    }
  }

  return result;
}

double ThoughtBubble.thoughtBubbleScale.getter()
{
  v1 = *(v0 + 16);
  result = 0.0;
  if (v1 > 0.2)
  {
    if (v1 < 0.5)
    {
      return (v1 + -0.2) / 1.8;
    }

    else
    {
      return (v1 + -0.4) / 0.6;
    }
  }

  return result;
}

double ThoughtBubble.anchorBubbleRect(in:)(double a1)
{
  v2 = -6.0;
  if (*(v1 + 33))
  {
    v2 = -8.0;
  }

  v3 = *v1 + a1;
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = -(v2 + 8.0);
  }

  return v3 + v2;
}

double ThoughtBubble.intermediateBubbleRect(in:)(double a1)
{
  v2 = 0.0;
  if (*(v1 + 33))
  {
    v2 = -3.0;
  }

  v3 = *v1 + a1;
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = -(v2 + 14.0);
  }

  return v3 + v2;
}

double ThoughtBubble.path(in:)@<D0>(uint64_t a1@<X8>)
{
  Path.init(_:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t closure #1 in ThoughtBubble.path(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for RoundedCornerStyle();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v40 = a2;
  v15 = ThoughtBubble.intermediateBubbleRect(in:)(a1);
  v47 = v16;
  v18 = v17;
  v20 = v19;
  v21 = ThoughtBubble.intermediateBubbleScale.getter();
  static UnitPoint.center.getter();
  v24 = v47 + v20 * v23;
  v38 = v20 * v21;
  v46 = v15 + v18 * v22 - v18 * v21 * v22;
  v47 = v18 * v21;
  v45 = v24 - v20 * v21 * v23;
  v25 = ThoughtBubble.anchorBubbleRect(in:)(a1);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *(a6 + 16);
  if (v32 >= 0.2)
  {
    v33 = 1.0;
  }

  else
  {
    v33 = v32 / 0.2;
  }

  static UnitPoint.center.getter();
  v43 = v29 * v33;
  v44 = v31 * v33;
  v41 = v27 + v31 * v35 - v35 * (v31 * v33);
  v42 = v25 + v29 * v34 - v34 * (v29 * v33);
  ThoughtBubble.thoughtBubbleScale.getter();
  v49.origin.y = v45;
  v49.origin.x = v46;
  v49.size.width = v47;
  v36 = v38;
  v49.size.height = v38;
  CGRectGetMidX(v49);
  v50.origin.x = v39;
  v50.origin.y = v40;
  v50.size.width = a3;
  v50.size.height = a4;
  CGRectGetWidth(v50);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v51.origin.y = v45;
  v51.origin.x = v46;
  v51.size.width = v47;
  v51.size.height = v36;
  Path.addEllipse(in:transform:)(v51, &transform);
  v52.origin.y = v41;
  v52.origin.x = v42;
  v52.size.width = v43;
  v52.size.height = v44;
  Path.addEllipse(in:transform:)(v52, &transform);
  (*(v12 + 104))(v14, *MEMORY[0x1E697F468], v11);
  Path.addRoundedRect(in:cornerSize:style:transform:)();
  return (*(v12 + 8))(v14, v11);
}

double protocol witness for Shape.path(in:) in conformance ThoughtBubble@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v8 = *v1;
  v9 = v3;
  v10 = *(v1 + 16);
  ThoughtBubble.path(in:)(v6);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance ThoughtBubble(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return protocol witness for Animatable.animatableData.modify in conformance ThoughtBubble;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ThoughtBubble(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ThoughtBubble and conformance ThoughtBubble();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ThoughtBubble(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ThoughtBubble and conformance ThoughtBubble();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ThoughtBubble(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ThoughtBubble and conformance ThoughtBubble();

  return MEMORY[0x1EEDE4410](a1, v2);
}

__n128 ThoughtBubble.inset(by:)@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

unint64_t lazy protocol witness table accessor for type ThoughtBubble and conformance ThoughtBubble()
{
  result = lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble;
  if (!lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble;
  if (!lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble;
  if (!lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble;
  if (!lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ThoughtBubble and conformance ThoughtBubble);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ShapeView<ThoughtBubble, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<ThoughtBubble, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<ThoughtBubble, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA15ForegroundStyleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<ThoughtBubble, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ThoughtBubble(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 34))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ThoughtBubble(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t EffectsViewConstraintManager.__allocating_init(containingGuide:localParticipantView:effectsView:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  EffectsViewConstraintManager.init(containingGuide:localParticipantView:effectsView:)(a1, a2, a3);
  return v6;
}

uint64_t EffectsViewConstraintManager.init(containingGuide:localParticipantView:effectsView:)(void *a1, void *a2, id a3)
{
  v4 = a3;
  [a3 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BC4BA7F0;
  if (a2)
  {
    v8 = a2;
    v9 = [v4 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v7 + 32) = v11;
    v12 = [v4 leadingAnchor];
    v13 = OUTLINED_FUNCTION_0_219([v8 leadingAnchor]);

    *(v7 + 40) = v13;
    v14 = [v4 trailingAnchor];
    v15 = OUTLINED_FUNCTION_0_219([v8 trailingAnchor]);

    *(v7 + 48) = v15;
    v16 = [v4 bottomAnchor];
    v17 = OUTLINED_FUNCTION_0_219([v8 bottomAnchor]);

    *(v7 + 56) = v17;
    a1 = v8;
    v4 = v8;
  }

  else
  {
    v18 = [v4 topAnchor];
    v19 = [a1 topAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v7 + 32) = v20;
    v21 = [v4 leadingAnchor];
    v22 = OUTLINED_FUNCTION_0_12([a1 leadingAnchor]);

    *(v7 + 40) = v22;
    v23 = [v4 trailingAnchor];
    v24 = OUTLINED_FUNCTION_0_12([a1 trailingAnchor]);

    *(v7 + 48) = v24;
    v25 = [v4 bottomAnchor];
    v26 = OUTLINED_FUNCTION_0_12([a1 bottomAnchor]);

    *(v7 + 56) = v26;
  }

  *(v3 + 16) = v7;
  return v3;
}

uint64_t EffectsViewConstraintManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id ParticipantAlertView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ParticipantAlertView.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_visualEffectView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v3 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_titleLabel;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v80.receiver = v0;
  v80.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v80, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_titleLabel;
  v6 = *&v4[OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_titleLabel];
  v7 = one-time initialization token for alertTitle;
  v8 = v4;
  v9 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  [v9 setFont_];

  v10 = one-time initialization token for alertText;
  v11 = *&v4[v5];
  if (v10 != -1)
  {
    swift_once();
  }

  [v11 setTextColor_];

  [*&v4[v5] setNumberOfLines_];
  [*&v4[v5] setTextAlignment_];
  v12 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_visualEffectView;
  v13 = *&v8[OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_visualEffectView];
  UIVisualEffectView.applyEffect(_:)(ConversationKit_PlatformEffectViewStyle_light);

  [*&v8[v12] _setContinuousCornerRadius_];
  v14 = *&v8[v12];
  v15 = v8;
  [v15 addSubview_];
  [v15 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC4BA930;
  v17 = *&v8[v12];
  *(inited + 32) = v17;
  v79 = v5;
  v18 = *&v4[v5];
  *(inited + 40) = v18;
  v19 = inited & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (inited & 0xC000000000000001) == 0, inited);
  if ((inited & 0xC000000000000001) != 0)
  {
    v74 = v17;
    v75 = v18;
    v23 = MEMORY[0x1BFB22010](0, inited);
  }

  else
  {
    v20 = *(inited + 32);
    v21 = v17;
    v22 = v18;
    v23 = v20;
  }

  v24 = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, v19 == 0, inited);
  if (v19)
  {
    v25 = MEMORY[0x1BFB22010](1, inited);
  }

  else
  {
    v25 = *(inited + 40);
  }

  v26 = v25;

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];

  LODWORD(v27) = 1148846080;
  [*&v8[v12] setContentHuggingPriority:1 forAxis:v27];
  v28 = [*&v8[v12] widthAnchor];
  v29 = [v28 constraintGreaterThanOrEqualToConstant_];

  v30 = [*&v8[v12] heightAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant_];

  v78 = objc_opt_self();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1BC4C65B0;
  *(v32 + 32) = v29;
  *(v32 + 40) = v31;
  v33 = *&v8[v12];
  v77 = v29;
  v76 = v31;
  v34 = [v33 leadingAnchor];
  v35 = [v15 leadingAnchor];

  v36 = OUTLINED_FUNCTION_2_13();
  v38 = [v36 v37];

  *(v32 + 48) = v38;
  v39 = [*&v8[v12] trailingAnchor];
  v40 = [v15 trailingAnchor];

  v41 = OUTLINED_FUNCTION_2_13();
  v43 = [v41 v42];

  *(v32 + 56) = v43;
  v44 = [*&v8[v12] centerXAnchor];
  v45 = [v15 centerXAnchor];

  v46 = OUTLINED_FUNCTION_2_13();
  v48 = [v46 v47];

  *(v32 + 64) = v48;
  v49 = [*&v8[v12] centerYAnchor];
  v50 = [v15 centerYAnchor];

  v51 = OUTLINED_FUNCTION_2_13();
  v53 = [v51 v52];

  *(v32 + 72) = v53;
  v54 = [*&v4[v79] leadingAnchor];
  v55 = [*&v8[v12] leadingAnchor];
  v56 = OUTLINED_FUNCTION_2_13();
  v58 = [v56 v57];

  *(v32 + 80) = v58;
  v59 = [*&v4[v79] trailingAnchor];
  v60 = [*&v8[v12] trailingAnchor];
  v61 = OUTLINED_FUNCTION_2_13();
  v63 = [v61 v62];

  *(v32 + 88) = v63;
  v64 = [*&v4[v79] topAnchor];
  v65 = [*&v8[v12] topAnchor];
  v66 = OUTLINED_FUNCTION_2_13();
  v68 = [v66 v67];

  *(v32 + 96) = v68;
  v69 = [*&v4[v79] bottomAnchor];
  v70 = [*&v8[v12] bottomAnchor];
  v71 = [v69 &selRef_uniqueProxyIdentifier + 6];

  *(v32 + 104) = v71;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints_];

  return v15;
}

id ParticipantAlertView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ParticipantAlertView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_visualEffectView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id ParticipantAlertView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void ParticipantAlertView.init(frame:)()
{
  v1 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_visualEffectView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  v2 = OBJC_IVAR____TtC15ConversationKit20ParticipantAlertView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  OUTLINED_FUNCTION_37_2();
  __break(1u);
}

id ParticipantAlertView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path setter for SystemApertureNoticeView.fullSentence : SystemApertureNoticeView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AttributedString?(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x78))(v6);
}

id SystemApertureNoticeView.fullSentence.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSg_ADtMd);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31[-v20];
  v22 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_fullSentence;
  swift_beginAccess();
  v23 = *(v19 + 56);
  outlined init with copy of AttributedString?(a1, v21);
  outlined init with copy of AttributedString?(v2 + v22, &v21[v23]);
  if (__swift_getEnumTagSinglePayload(v21, 1, v4) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, v4) == 1)
    {
      return outlined destroy of TapInteractionHandler?(v21, &_s10Foundation16AttributedStringVSgMd);
    }
  }

  else
  {
    outlined init with copy of AttributedString?(v21, v17);
    if (__swift_getEnumTagSinglePayload(&v21[v23], 1, v4) != 1)
    {
      (*(v5 + 32))(v11, &v21[v23], v4);
      lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = v5;
      v29 = *(v5 + 8);
      v29(v11, v4);
      v29(v17, v4);
      result = outlined destroy of TapInteractionHandler?(v21, &_s10Foundation16AttributedStringVSgMd);
      if (v32)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v17, v4);
  }

  v25 = v5;
  outlined destroy of TapInteractionHandler?(v21, &_s10Foundation16AttributedStringVSg_ADtMd);
LABEL_7:
  outlined init with copy of AttributedString?(v2 + v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v4) == 1)
  {
    outlined destroy of TapInteractionHandler?(v14, &_s10Foundation16AttributedStringVSgMd);
    return [*(v2 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView) setAttributedText_];
  }

  else
  {
    v26 = v25;
    v27 = v34;
    (*(v25 + 32))(v34, v14, v4);
    v28 = *(v2 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString);
    (*(v25 + 16))(v33, v27, v4);
    type metadata accessor for AttributeScopes.UIKitAttributes();
    lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes(&lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes, MEMORY[0x1E69DBE88]);
    v30 = NSAttributedString.init<A>(_:including:)();
    [v28 setAttributedText_];

    return (*(v26 + 8))(v27, v4);
  }
}

uint64_t SystemApertureNoticeView.fullSentence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_fullSentence;
  OUTLINED_FUNCTION_4_0();
  return outlined init with copy of AttributedString?(v1 + v3, a1);
}

uint64_t outlined init with copy of AttributedString?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemApertureNoticeView.fullSentence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_fullSentence;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of AttributedString?(v1 + v6, v5);
  swift_beginAccess();
  outlined assign with copy of AttributedString?(a1, v1 + v6);
  swift_endAccess();
  SystemApertureNoticeView.fullSentence.didset(v5);
  outlined destroy of TapInteractionHandler?(a1, &_s10Foundation16AttributedStringVSgMd);
  return outlined destroy of TapInteractionHandler?(v5, &_s10Foundation16AttributedStringVSgMd);
}

void (*SystemApertureNoticeView.fullSentence.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd) - 8) + 64);
  v3[4] = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  v3[5] = v5;
  v6 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_fullSentence;
  OUTLINED_FUNCTION_4_0();
  outlined init with copy of AttributedString?(v1 + v6, v5);
  return SystemApertureNoticeView.fullSentence.modify;
}

void SystemApertureNoticeView.fullSentence.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of AttributedString?(v4, v3);
    SystemApertureNoticeView.fullSentence.setter(v3);
    outlined destroy of TapInteractionHandler?(v4, &_s10Foundation16AttributedStringVSgMd);
  }

  else
  {
    SystemApertureNoticeView.fullSentence.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t key path getter for SystemApertureNoticeView.leadingView : SystemApertureNoticeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemApertureNoticeView.leadingView : SystemApertureNoticeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

void *SystemApertureNoticeView.leadingView.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_leadingContainerView) + OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView);
  v2 = v1;
  return v1;
}

void (*SystemApertureNoticeView.leadingView.modify(void **a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = SystemApertureNoticeView.leadingView.getter();
  return SystemApertureNoticeView.leadingView.modify;
}

void SystemApertureNoticeView.leadingView.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    LeadingContainerView.wrappedView.setter(v2);
  }

  else
  {
    LeadingContainerView.wrappedView.setter(*a1);
  }
}

uint64_t key path getter for SystemApertureNoticeView.trailingButton : SystemApertureNoticeView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SystemApertureNoticeView.trailingButton : SystemApertureNoticeView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

id SystemApertureNoticeView.trailingButton.didset(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton;
  result = swift_beginAccess();
  if (*&v1[v2])
  {
    return [v1 addSubview_];
  }

  return result;
}

void *SystemApertureNoticeView.trailingButton.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton;
  OUTLINED_FUNCTION_4_0();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SystemApertureNoticeView.trailingButton.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  SystemApertureNoticeView.trailingButton.didset(v4);
}

void (*SystemApertureNoticeView.trailingButton.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton;
  OUTLINED_FUNCTION_4_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return SystemApertureNoticeView.trailingButton.modify;
}

void SystemApertureNoticeView.trailingButton.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    SystemApertureNoticeView.trailingButton.setter(v3);
  }

  else
  {
    SystemApertureNoticeView.trailingButton.setter(*(*a1 + 24));
  }

  free(v2);
}

double SystemApertureNoticeView.calculateWidthForMicroNotice()()
{
  v1 = SystemApertureNoticeView.minimumWidthForMicroNotice()();
  v2 = *(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView);
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      SystemApertureNoticeView.maximumWidthForMicroNotice()();
      v10 = v9;
      v11 = [v2 sizeThatFits_];
      v13 = v12 + 58.33;
      v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v11);
      if (v14)
      {

        v13 = v13 + 8.0 + SystemApertureNoticeView.trailingButtonWidth.getter();
      }

      v15 = v13 + 15.0;
      if (v1 > v13 + 15.0)
      {
        v15 = v1;
      }

      if (v15 >= v10)
      {
        return v10;
      }

      else
      {
        return v15;
      }
    }
  }

  return v1;
}

void SystemApertureNoticeView.maximumWidthForMicroNotice()()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    CGRectGetWidth(v3);
  }
}

double SystemApertureNoticeView.minimumWidthForMicroNotice()()
{
  v1 = SystemApertureNoticeView.minimumWidthFromSensorToEdge()();
  v2 = v1 + v1;
  [objc_msgSend(v0 SBUISA_systemApertureObstructedAreaLayoutGuide)];
  OUTLINED_FUNCTION_8_105();
  v4.origin.x = OUTLINED_FUNCTION_35();
  return v2 + CGRectGetWidth(v4);
}

double SystemApertureNoticeView.minimumWidthFromSensorToEdge()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (v3)
  {

    v4 = SystemApertureNoticeView.trailingButtonWidth.getter() + -17.665 + 15.0;
  }

  else
  {
    v4 = 32.665;
  }

  v5 = v4 + SystemApertureNoticeView.distanceFromLeadingViewEndcapMinXToObstructredAreaMinX.getter();
  if ((*((*v2 & *v0) + 0xE8))())
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, &static Logger.conversationControls);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v8, "minimumWidthFromSensorToEdge is using standard large phone size", v9, 2u);
      OUTLINED_FUNCTION_27();
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, &static Logger.conversationControls);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BBC58000, v11, v12, "minimumWidthFromSensorToEdge is using offset for non-large phone", v13, 2u);
      OUTLINED_FUNCTION_27();
    }

    [v1 displayScale];
    return v5 + 2.0 / v14;
  }

  return v5;
}

BOOL SystemApertureNoticeView.isDeviceNativeScreenSizeLargePhone.getter()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;
  [v0 nativeBounds];
  OUTLINED_FUNCTION_6_3();
  v3 = CGRectGetWidth(v19) / v2;
  v20.origin.x = OUTLINED_FUNCTION_5_72();
  v4 = CGRectGetHeight(v20) / v2;
  v5 = fabs(v3 + -430.0) < 2.22044605e-16;
  v6 = fabs(v4 + -932.0) < 2.22044605e-16 && v5;
  if (one-time initialization token for conversationControls != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, &static Logger.conversationControls);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 67109634;
    *(v10 + 4) = v6;
    *(v10 + 8) = 2080;
    type metadata accessor for CGSize(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v10 + 10) = v13;
    *(v10 + 18) = 2080;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v10 + 20) = v16;
    _os_log_impl(&dword_1BBC58000, v8, v9, "isDeviceNativeScreenSizeLargePhone is %{BOOL}d from comparing %s to %s", v10, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  return v6;
}

double SystemApertureNoticeView.availableWidthForTrailingButton.getter()
{
  SystemApertureNoticeView.maximumWidthForMicroNotice()();
  v2 = v1;
  v3 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v3 layoutFrame];
  OUTLINED_FUNCTION_6_3();

  v6.origin.x = OUTLINED_FUNCTION_5_72();
  v4 = (v2 - CGRectGetWidth(v6) + -30.0) * 0.5;
  return 17.665 - SystemApertureNoticeView.distanceFromLeadingViewEndcapMinXToObstructredAreaMinX.getter() + v4;
}

double SystemApertureNoticeView.trailingButtonWidth.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))();
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 sizeThatFits_];
  v4 = v3;

  return v4;
}

double SystemApertureNoticeView.distanceFromLeadingViewEndcapMinXToObstructredAreaMinX.getter()
{
  [objc_msgSend(v0 SBUISA_systemApertureObstructedAreaLayoutGuide)];
  OUTLINED_FUNCTION_8_105();
  v3.origin.x = OUTLINED_FUNCTION_35();
  Height = CGRectGetHeight(v3);
  return sqrt((Height * 0.5 + 17.665) * (Height * 0.5 + 17.665) - (33.335 - Height * 0.5) * (33.335 - Height * 0.5)) - Height * 0.5;
}

id SystemApertureNoticeView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_18_1();

  return [v2 v3];
}

id SystemApertureNoticeView.init(frame:)()
{
  OUTLINED_FUNCTION_20_2();
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_0_11(v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_leadingContainerView;
  type metadata accessor for LeadingContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = type metadata accessor for SystemApertureNoticeView();
  v4 = OUTLINED_FUNCTION_18_1();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v9);
  SystemApertureNoticeView.setupSubviews()();

  return v7;
}

id SystemApertureNoticeView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SystemApertureNoticeView.init(coder:)()
{
  v1 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_0_11(v1);
  *(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_trailingButton) = 0;
  v2 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_leadingContainerView;
  type metadata accessor for LeadingContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id SystemApertureNoticeView.setupSubviews()()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView];
  [v1 setMarqueeEnabled_];
  [v1 setMarqueeRunning_];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  [v1 setMaximumContentSizeCategory_];
  [v1 setAdjustsFontForContentSizeCategory_];
  [v0 addSubview_];

  return [v0 addSubview_];
}

Swift::Void __swiftcall SystemApertureNoticeView.layoutSubviews()()
{
  v52.receiver = v0;
  v52.super_class = type metadata accessor for SystemApertureNoticeView();
  objc_msgSendSuper2(&v52, sel_layoutSubviews);
  OUTLINED_FUNCTION_10_89();
  v4 = UIEdgeInsetsInsetRect_2(v1, v2, v3);
  v6 = v5;
  [*(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_leadingContainerView) sizeThatFits_];
  v8 = v7;
  v9 = [v0 effectiveUserInterfaceLayoutDirection];
  v10 = 15.0;
  if (v9)
  {
    OUTLINED_FUNCTION_10_89();
  }

  v11 = OUTLINED_FUNCTION_4_149();
  [v12 v13];
  if (!v9)
  {
    v53.origin.x = OUTLINED_FUNCTION_4_149();
    v10 = CGRectGetMaxX(v53) + 8.0;
  }

  v50 = v6;
  v51 = v10;
  v14 = *(v0 + OBJC_IVAR____TtC15ConversationKit24SystemApertureNoticeView_titleView);
  [v14 sizeToFit];
  v15 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v15 layoutFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  MaxY = CGRectGetMaxY(v54);
  [v14 _tightBoundingRectOfFirstLine];
  v26 = MaxY - v25;
  v27 = SystemApertureNoticeView.trailingButtonWidth.getter();
  v28 = v4 - v8 + -8.0;
  v29 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v30 = v29();
  if (v30)
  {

    v28 = v28 - (v27 + 8.0);
  }

  OUTLINED_FUNCTION_10_89();
  Height = CGRectGetHeight(v55);
  v32 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v32 layoutFrame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v56.origin.x = v34;
  v56.origin.y = v36;
  v56.size.width = v38;
  v56.size.height = v40;
  v41 = Height - CGRectGetHeight(v56);
  [v14 bounds];
  Width = CGRectGetWidth(v57);
  if (v28 >= Width)
  {
    v43 = Width;
  }

  else
  {
    v43 = v28;
  }

  [v14 bounds];
  v44 = CGRectGetHeight(v58);
  if (v41 >= v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = v41;
  }

  v46 = (v29)([v14 setFrame_]);
  if (v46)
  {
    v47 = v46;
    v48 = 15.0;
    if (!v9)
    {
      OUTLINED_FUNCTION_10_89();
      v48 = v49 + -15.0 - v27;
    }

    [v47 setFrame_];
  }
}

void LeadingContainerView.wrappedView.willset(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView);
  if (!v3)
  {
    return;
  }

  v8 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView);
  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v4 = v8;
    v5 = a1;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v3;
  }

  [v8 removeFromSuperview];
LABEL_8:
}

void LeadingContainerView.wrappedView.didset(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView];
  if (!v3)
  {
    return;
  }

  if (a1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    isa = v3;
    v5 = a1;
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = v3;
  }

  [v2 addSubview_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BC4BC370;
  v10 = [v3 centerXAnchor];
  v11 = [v2 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v3 centerYAnchor];
  v14 = [v2 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v9 + 40) = v15;
  v16 = [v3 widthAnchor];
  v17 = [v2 widthAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v9 + 48) = v18;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 activateConstraints_];

LABEL_8:
}

void LeadingContainerView.wrappedView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView);
  v7 = v4;
  LeadingContainerView.wrappedView.willset(a1);
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  LeadingContainerView.wrappedView.didset(v4);
}

char *LeadingContainerView.forLastBaselineLayout.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

double LeadingContainerView.sizeThatFits(_:)(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView);
  if (!v5)
  {
    return 0.0;
  }

  LODWORD(a3) = 1148846080;
  LODWORD(a4) = 1148846080;
  [v5 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{a3, a4}];
  return result;
}

id LeadingContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for LeadingContainerView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id LeadingContainerView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15ConversationKitP33_7B133F2533FF4A198A88A5022078738420LeadingContainerView_wrappedView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LeadingContainerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SystemApertureNoticeView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SystemApertureNoticeView()
{
  result = type metadata singleton initialization cache for SystemApertureNoticeView;
  if (!type metadata singleton initialization cache for SystemApertureNoticeView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SystemApertureNoticeView()
{
  type metadata accessor for AttributedString?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AttributedString?()
{
  if (!lazy cache variable for type metadata for AttributedString?)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedString?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes and conformance AttributeScopes.UIKitAttributes(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized MomentsBackedViewControllerProtocol.bringMomentsAndFlashViewsToFrontIfNecessary()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasInitializedMomentsViews;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = MultiwayViewController.insulatingView.getter();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 superview];
      if (v4)
      {

        v5 = MultiwayViewController.flashView.getter();
        v6 = [v5 superview];

        if (v6)
        {

          v7 = MultiwayViewController.localLivePhotoAlertView.getter();
          if (v7)
          {
            v8 = v7;
            v9 = [v0 view];
            [v9 insertSubview:v3 belowSubview:v8];
          }

          else
          {
            v8 = [v0 view];
            [v8 bringSubviewToFront_];
          }

          v10 = [v0 view];
          if (v10)
          {
            v11 = v10;
            v12 = *&v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___flashView];
            [v11 bringSubviewToFront_];
          }
        }
      }
    }
  }
}

uint64_t specialized MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_265_2();
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_95_3(v2);
  swift_unknownObjectWeakInit();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);

  v4 = OUTLINED_FUNCTION_44_0();
  v3(v4);
}

void specialized closure #1 in MomentsBackedViewControllerProtocol.remoteDidTakePhoto()(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      if (a3())
      {
        OUTLINED_FUNCTION_82_11();
        v11 = MEMORY[0x1E69E7D40];
        OUTLINED_FUNCTION_3_52();
        v13 = (*(v12 + 104))();

        (*((*v11 & *v13) + 0x98))(2, v9, v10);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.didTapOneToOneShutterButton()()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_100();
  v5 = type metadata accessor for Participant(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  ConversationController.remoteOneToOneParticipant.getter();
  OUTLINED_FUNCTION_115(v2, 1, v5);
  if (v7)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s15ConversationKit11ParticipantVSgMd);
  }

  else
  {
    OUTLINED_FUNCTION_1_184();
    OUTLINED_FUNCTION_2_40();
    _s15ConversationKit11ParticipantVWObTm_7();
    if (!MultiwayViewController.participantGridState.getter() && (Participant.isActiveWithVideo.getter() & 1) != 0)
    {
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_0_6();
      }

      v8 = 0xD000000000000027;
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_156();
      os_log(_:dso:log:type:_:)();
      MultiwayViewController.flashView.getter();
      OUTLINED_FUNCTION_82_11();
      OUTLINED_FUNCTION_3_52();
      v9 = type metadata completion function for SyncedScreeningAlphaGradientView();
      v10(v9);

      v11 = *(v1 + *(v5 + 24));
      if (v11 == 1 && (Participant.hasReducedQualityVideo.getter(), (v12 & 1) == 0))
      {
        v13 = "_FACETIME_PHOTO_DISABLED";
      }

      else
      {
        v13 = "did tap oneToOneShutterButton";
        v8 = 0xD000000000000028;
      }

      v18 = [objc_opt_self() conversationKit];
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_5_5();
      v19.super.isa = v18;
      OUTLINED_FUNCTION_17_0(v8, v13 | 0x8000000000000000, v20, v21, v19);
      OUTLINED_FUNCTION_254();

      v22._countAndFlagsBits = OUTLINED_FUNCTION_43_0();
      MultiwayViewController.showOneToOneLivePhotosAlert(_:)(v22);

      if (v11)
      {
        Participant.hasReducedQualityVideo.getter();
        if ((v23 & 1) == 0)
        {
          ConversationController.captureMoment(for:)();
        }
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_220();
    _s15ConversationKit11ParticipantVWOhTm_17();
  }

  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v14 = OUTLINED_FUNCTION_13_12();
  *(v14 + 16) = xmmword_1BC4BA940;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15ConversationKit11ParticipantVGMd);
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  OUTLINED_FUNCTION_51_22();
  os_log(_:dso:log:type:_:)();

LABEL_15:
  OUTLINED_FUNCTION_49();
}

Swift::Void __swiftcall MultiwayViewController.updateShouldShowReactionPickerTipView()()
{
  OUTLINED_FUNCTION_50_2();
  v2 = type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  if (MultiwayViewController.canShowReactionsView()() && (v0[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState] & 1) == 0)
  {
    MultiwayViewController.inCallControlsVisible.getter();
  }

  static VideoReactionPickerTip.shouldShow.setter();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.conversationKit);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = static VideoReactionPickerTip.shouldShow.getter() & 1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = MultiwayViewController.inCallControlsVisible.getter();

    _os_log_impl(&dword_1BBC58000, v8, v9, "updateShouldShowReactionPickerTipView - VideoReactionPickerTip.shouldShow: %{BOOL}d, inCallControlsVisible: %{BOOL}d", v10, 0xEu);
    OUTLINED_FUNCTION_27();
  }

  else
  {

    v8 = v7;
  }

  v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTip;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v17 = 0;
  if (!__swift_getEnumTagSinglePayload(v7 + v11, 1, v2))
  {
    (*(v4 + 16))(v1, v7 + v11, v2);
    OUTLINED_FUNCTION_18_63();
    lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v12, v13);
    OUTLINED_FUNCTION_235();
    v14 = Tip.shouldDisplay.getter();
    v15 = OUTLINED_FUNCTION_45_1();
    v16(v15);
    if (v14)
    {
      v17 = 1;
    }
  }

  v20 = v17;
  OUTLINED_FUNCTION_17_69();
  MultiwayViewController.reactionsState.setter(&v20, v18, v19);
  OUTLINED_FUNCTION_49();
}

void *MultiwayViewController.localParticipantView.getter()
{
  v2 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16[0]);
  getEnumTag for TapInteraction.EventType(v16);
  OUTLINED_FUNCTION_204_2();
  if (!v10)
  {
    v1 = *(v0 + 56);
    v11 = v1;
  }

  return v1;
}

uint64_t key path getter for CaptioningStateManager.cancellables : CaptioningStateManager()
{
  OUTLINED_FUNCTION_2_5();
  result = CaptioningStateManager.cancellables.getter();
  *v0 = result;
  return result;
}

uint64_t key path setter for CaptioningStateManager.cancellables : CaptioningStateManager(uint64_t a1)
{
  OUTLINED_FUNCTION_247_3(a1);

  return CaptioningStateManager.cancellables.setter(v1);
}

void MultiwayViewController.updateInCallConversationControls(type:showControlsIfHidden:forceUpdate:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  type metadata accessor for ReactionNotice(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_246_3();
  v8 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  memcpy(v53, (v0 + v8), sizeof(v53));
  memcpy(v54, (v0 + v8), 0xE8uLL);
  OUTLINED_FUNCTION_46_26(v54);
  if (!v9)
  {
    v10 = v54[6];
    v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallConversationBannerState;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v12 = *(v10 + v11);
    outlined init with copy of ConversationControlsType(v6, v50);
    if (v51 == 1)
    {
      outlined init with take of TapInteractionHandler(v50, v52);
      outlined init with take of TapInteractionHandler(v52, &v42);
      OUTLINED_FUNCTION_284_0(&v46);
      v13 = OUTLINED_FUNCTION_245_2();
      outlined init with copy of MultiwayViewController.ViewContent(v13, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit6Notice_pMd);
      if (swift_dynamicCast())
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        _s15ConversationKit11ParticipantVWOhTm_17();
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_284_0(&v46);
      v15 = OUTLINED_FUNCTION_245_2();
      outlined init with copy of MultiwayViewController.ViewContent(v15, v16);
      outlined destroy of ConversationControlsType(v50);
    }

    outlined init with copy of ConversationControlsType(v6, &v46);
    if (v49 == 1)
    {
      v17 = OUTLINED_FUNCTION_245_2();
      outlined init with take of TapInteractionHandler(v17, v18);
      v19 = v44;
      v20 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      (*(v20 + 64))(&v46, v19, v20);
      if (v46 == 1)
      {

        goto LABEL_22;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
LABEL_22:
        if (v12 == 1)
        {
          LOBYTE(v46) = 0;
          OUTLINED_FUNCTION_202_2();
          MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v36, v37, v38);
        }

LABEL_24:
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
        __swift_destroy_boxed_opaque_existential_1(v43);
        goto LABEL_34;
      }

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      outlined destroy of ConversationControlsType(&v46);
    }

    ConversationController.lookupActiveConversation()();
    if (v48.i64[0])
    {
      v21 = OUTLINED_FUNCTION_245_2();
      outlined init with take of TapInteractionHandler(v21, v22);
      v23 = v44;
      v24 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if (Conversation.isContinuitySession.getter(v23, v24))
      {
        outlined init with copy of ConversationControlsType(v6, &v46);
        if (v49 == 3)
        {
          outlined destroy of ConversationControlsType(&v46);
        }

        else if (v49 != 7 || v46 != 4 || (v25 = vorrq_s8(v47, v48), *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL))))
        {
          outlined destroy of ConversationControlsType(&v46);
          if (one-time initialization token for conversationKit != -1)
          {
            OUTLINED_FUNCTION_2_9();
          }

          v26 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_52(v26, static Logger.conversationKit);
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();
          if (OUTLINED_FUNCTION_163(v28))
          {
            v29 = OUTLINED_FUNCTION_33();
            OUTLINED_FUNCTION_39_2(v29);
            OUTLINED_FUNCTION_219();
            _os_log_impl(v30, v31, v32, v33, v34, 2u);
            OUTLINED_FUNCTION_18();
          }

          goto LABEL_24;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v46, &_s15ConversationKit0A0_pSgMd);
    }

    if ((InCallBannerHostViewController.updateConversationControlsViewController(type:forceUpdate:)(v6, v2 & 1) & 1) != 0 && (v4 & 1) != 0 && !v12)
    {
      LOBYTE(v46) = 1;
      OUTLINED_FUNCTION_202_2();
      MultiwayViewController.setConversationBannerState(_:localParticipantState:animated:)(v39, v40, v41);
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v53, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
  }

LABEL_34:
  OUTLINED_FUNCTION_30_0();
}

void specialized CaptionsStateController.updateCaptionsEnablement(pauseTransitionIfAllowed:)(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
  swift_beginAccess();
  if (*(v1 + v3) == 1 && (MultiwayViewController.isScreenSharing.getter() & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_pipState;
    swift_beginAccess();
    if ((*(v1 + v4) - 1) > 1 && a1 != 0)
    {
      if (a1 == 1)
      {
        v10 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
        swift_beginAccess();
        v8 = *(v1 + v10);
        if (v8 == 4)
        {
          v9 = MultiwayViewController.isCaptioningEnabled.getter();
          if ((MultiwayViewController.isCaptioningEnabled.getter() & 1) == 0)
          {
            LOBYTE(v8) = 0;
            goto LABEL_35;
          }

          MultiwayViewController.captionsLayoutState.getter(&v13);
          if (v13 == 3)
          {
            goto LABEL_41;
          }

          if (!v13)
          {
            goto LABEL_41;
          }

          MultiwayViewController.captionsLayoutState.getter(&v13);
          v8 = v13;
          if (v13 == 3)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        *(v1 + v10) = 4;
        if (MultiwayViewController.isCaptioningEnabled.getter())
        {
          v9 = 1;
          if (v8)
          {
            v12 = v8 == 3;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
LABEL_41:
            if (MultiwayViewController.captionsBubbleModeIsAllowed.getter())
            {
              LOBYTE(v8) = 1;
            }

            else
            {
              LOBYTE(v8) = 2;
            }

            goto LABEL_35;
          }

LABEL_40:
          if (v8 != 1)
          {
            goto LABEL_35;
          }

          goto LABEL_41;
        }
      }

      else
      {
        v11 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
        swift_beginAccess();
        if (*(v1 + v11) == 4)
        {
          if (MultiwayViewController.isCaptioningEnabled.getter())
          {
            MultiwayViewController.captionsLayoutState.getter(&v13);
            if (v13 == 3 || !v13)
            {
              v8 = 1;
            }

            else
            {
              MultiwayViewController.captionsLayoutState.getter(&v13);
              if (v13 == 3)
              {
                v8 = 1;
              }

              else
              {
                v8 = v13;
              }
            }
          }

          else
          {
            v8 = 0;
          }

          v9 = MultiwayViewController.isCaptioningEnabled.getter();
          goto LABEL_40;
        }
      }

LABEL_34:
      LOBYTE(v8) = 0;
      v9 = 0;
      goto LABEL_35;
    }
  }

  v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_captionsPausedState;
  swift_beginAccess();
  if (*(v1 + v6) != 4)
  {
    goto LABEL_34;
  }

  MultiwayViewController.captionsLayoutState.getter(&v13);
  if (v13 == 3 || !v13)
  {
    v7 = 1;
  }

  else
  {
    MultiwayViewController.captionsLayoutState.getter(&v13);
    v7 = v13;
  }

  LOBYTE(v8) = 0;
  v9 = 0;
  *(v1 + v6) = v7;
LABEL_35:
  v13 = v8;
  MultiwayViewController.implementNewCaptionsState(newLayoutState:newRecognizerState:)(&v13, v9 & 1);
}

Swift::Int __swiftcall MultiwayViewController.LayoutStyle.maximumParticipantCount(portraitAspect:mediaPipIsVisible:captionsLayoutState:)(Swift::Bool portraitAspect, Swift::Bool mediaPipIsVisible, ConversationKit::CaptionsLayoutState_optional captionsLayoutState)
{
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = *v8;
  if (*v3)
  {
    v10 = v5;
    Layout.MultiwayFaceTime.init()(v31);
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 5 || v15 == 1)
    {
      if ((v7 & 1) == 0 && (!v9 || v9 == 3))
      {
        goto LABEL_37;
      }

      v17 = v33;
      if ((v10 & 1) == 0)
      {
LABEL_36:
        Layout.MultiwayFaceTime.init()(v17);
        goto LABEL_37;
      }

      Layout.MultiwayFaceTime.init()(v33);
    }

    else if (!v15)
    {
      Layout.MultiwayFaceTime.init()(v33);
      if ((v7 & 1) == 0)
      {
        if (!v9 || v9 == 3)
        {
          goto LABEL_37;
        }

        v30 = 2;
        if (v9 == 2)
        {
          v30 = 4;
        }

        if (!__OFSUB__(v35, v30))
        {
          goto LABEL_37;
        }

        __break(1u);
        goto LABEL_45;
      }

      if (!__OFSUB__(v35, 2))
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_37:
    OUTLINED_FUNCTION_30_0();
    return result;
  }

  Layout.MultiwayFaceTime.init()(v31);
  v11 = [objc_opt_self() currentDevice];
  v4 = &off_1E7FE9000;
  v12 = [v11 userInterfaceIdiom];

  if (v12)
  {
    v13 = &v32;
    goto LABEL_21;
  }

LABEL_20:
  Layout.MultiwayFaceTime.init()(v33);
  v13 = &v34;
LABEL_21:
  v19 = *v13;
  if (v7)
  {
    v20 = __OFSUB__(v19--, 1);
    if (!v20)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  v21 = OUTLINED_FUNCTION_283_1();
  v22 = [v21 v4[460]];

  if (v22)
  {
    v23 = OUTLINED_FUNCTION_283_1();
    v24 = [v23 v4[460]];

    if (v24 != 1)
    {
      v25 = OUTLINED_FUNCTION_283_1();
      v26 = [v25 v4[460]];

      if (v26 != 5)
      {
        goto LABEL_37;
      }
    }
  }

  if (!v9 || v9 == 3)
  {
    goto LABEL_37;
  }

  v20 = __OFSUB__(v19, 1);
  v27 = v19 - 1;
  if (!v20)
  {
    v28 = OUTLINED_FUNCTION_283_1();
    v29 = [v28 v4[460]];

    if (v29 || v9 != 2 || !__OFSUB__(v27, 1))
    {
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t specialized MostActiveParticipantsController.markParticipantAsReacting(_:)(uint64_t a1)
{
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(v1 + *(*v1 + 152));
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v9 + 32))(v14 + v13, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = partial apply for specialized closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_555;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  v17 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v23 + 8))(v4, v17);
  (*(v21 + 8))(v7, v22);
}

uint64_t specialized closure #1 in MostActiveParticipantsController.markParticipantAsReacting(_:)(uint64_t a1, uint64_t a2)
{
  specialized MostActiveParticipantsController.boostParticipantEMAToMax(_:)(a2);
  specialized MostActiveParticipantsController.updateActiveParticipantsEMA()();
  return specialized MostActiveParticipantsController.checkForMostActiveParticipantChange(shouldPostCallback:)(1);
}

void specialized EffectsHandler.wipeEffectsState()()
{
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_243_2();
  if (v1)
  {
    v2 = MultiwayViewController.effectsViewController.getter();
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      OUTLINED_FUNCTION_235();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 removeAllEffects];
      }
    }

    v5 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_avcEffects;
    OUTLINED_FUNCTION_3_0();
    swift_beginAccess();
    v6 = *(v0 + v5);
    if (v6)
    {
      [v6 setMode_];
    }
  }
}

void specialized EffectsHandler.handleAVCServerTimeout()()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_159();
  v20 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_2();
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  static os_log_type_t.default.getter();
  v7 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_156();
  os_log(_:dso:log:type:_:)();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v8 = static OS_dispatch_queue.main.getter();
  OUTLINED_FUNCTION_20();
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  OUTLINED_FUNCTION_7_6(v9);
  OUTLINED_FUNCTION_4_81(COERCE_DOUBLE(1107296256));
  v21[2] = v10;
  v21[3] = &block_descriptor_340;
  v11 = _Block_copy(v21);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  v21[0] = v7;
  OUTLINED_FUNCTION_16_71();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v13, v14);
  v15 = OUTLINED_FUNCTION_243();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15);
  OUTLINED_FUNCTION_9_8();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(v16, v17);
  OUTLINED_FUNCTION_260();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB215C0](0, v2, v1, v11);
  _Block_release(v11);

  v18 = OUTLINED_FUNCTION_45_1();
  v19(v18);
  (*(v5 + 8))(v2, v20);
  OUTLINED_FUNCTION_30_0();
}

void specialized closure #1 in EffectsHandler.handleAVCServerTimeout()(void *a1)
{
  v2 = MultiwayViewController.constraintController.getter();
  if (v2)
  {
    v3 = v2;
    MultiwayViewController.effectsAvailabilityDidChange(_:)(0);
    v4 = OBJC_IVAR___CNKFaceTimeConstraintsController_inCallControlsState;
    swift_beginAccess();
    v5 = *&v3[v4];
    v6 = v5 > 6;
    v7 = (1 << v5) & 0x6C;
    if (!v6 && v7 != 0)
    {
      [a1 setControlsState:1 animated:1];
    }

    MultiwayViewController.removeAllEffectsObjects()();
  }
}

void *MultiwayViewController.constraintController.getter()
{
  v2 = OUTLINED_FUNCTION_33_42();
  OUTLINED_FUNCTION_112_7(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v15, v16[0]);
  getEnumTag for TapInteraction.EventType(v16);
  OUTLINED_FUNCTION_204_2();
  if (!v10)
  {
    v1 = *(v0 + 48);
    v11 = v1;
  }

  return v1;
}

uint64_t MultiwayViewController.layoutIdiom.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  result = static Platform.current.getter();
  v5 = 0;
  if ((result - 1) >= 3u)
  {
    result = Features.isDominoEnabled.getter();
    if ((result & 1) == 0 || (v6 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_supportedDeviceOrientations, OUTLINED_FUNCTION_3_0(), result = swift_beginAccess(), *(v2 + v6) != 1))
    {
      v5 = 1;
    }
  }

  *a1 = v5;
  return result;
}

Swift::Void __swiftcall MultiwayViewController.handleToggleLayoutAction()()
{
  *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible) = 2;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_243_2();
  if (v1)
  {
    v2[0] = 0;
  }

  else
  {
    v2[0] = 1;
  }

  MultiwayViewController.layoutStyle.setter(v2);
  MultiwayViewController.updateCurrentLayout()();
}

uint64_t MultiwayViewController.activeRemoteParticipants(in:)()
{
  OUTLINED_FUNCTION_17_1();
  type metadata accessor for Date();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_7();
  Date.init()();
  v8 = v1;

  v3 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in MultiwayViewController.activeRemoteParticipants(in:), v7, v0);
  v4 = OUTLINED_FUNCTION_91_2();
  v5(v4);
  return v3;
}

uint64_t CNKPiPState.debugDescription.getter(uint64_t a1)
{
  v1 = 0x6465646E652ELL;
  switch(a1)
  {
    case 0:
      return v1;
    case 1:
      v1 = 0x6E6974726174732ELL;
      break;
    case 2:
      v1 = 0x646574726174732ELL;
      break;
    case 3:
      v1 = 0x676E69646E652ELL;
      break;
    default:
      if (one-time initialization token for default != -1)
      {
        OUTLINED_FUNCTION_0_45();
      }

      v2 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_52(v2, &static Log.default);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.fault.getter();
      v1 = 0x206E776F6E6B6E75;
      if (OUTLINED_FUNCTION_163(v4))
      {
        v5 = OUTLINED_FUNCTION_33();
        OUTLINED_FUNCTION_39_2(v5);
        OUTLINED_FUNCTION_219();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
        OUTLINED_FUNCTION_18();
      }

      break;
  }

  return v1;
}

Swift::Int VideoMessagingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance VideoMessagingError()
{
  Hasher.init(_seed:)();
  VideoMessagingError.hash(into:)();
  return Hasher._finalize()();
}

uint64_t one-time initialization function for showAddPeople()
{
  result = MEMORY[0x1BFB209B0](0x50646441776F6873, 0xED0000656C706F65);
  static NSNotificationName.showAddPeople = result;
  return result;
}

id static NSNotificationName.showAddPeople.getter()
{
  if (one-time initialization token for showAddPeople != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.showAddPeople;

  return v1;
}

uint64_t one-time initialization function for ICSIsOnScreenNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000060, 0x80000001BC51D5B0);
  static MultiwayViewController.ICSIsOnScreenNotification = result;
  return result;
}

uint64_t *MultiwayViewController.ICSIsOnScreenNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for ICSIsOnScreenNotification != -1)
  {
    OUTLINED_FUNCTION_105_4();
  }

  return &static MultiwayViewController.ICSIsOnScreenNotification;
}

uint64_t one-time initialization function for ICSIsOffScreenNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000061, 0x80000001BC51D540);
  static MultiwayViewController.ICSIsOffScreenNotification = result;
  return result;
}

uint64_t *MultiwayViewController.ICSIsOffScreenNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for ICSIsOffScreenNotification != -1)
  {
    swift_once();
  }

  return &static MultiwayViewController.ICSIsOffScreenNotification;
}

uint64_t one-time initialization function for LivePhotoAvailabilityChangeNotification()
{
  result = MEMORY[0x1BFB209B0](0xD000000000000027, 0x80000001BC51D510);
  static MultiwayViewController.LivePhotoAvailabilityChangeNotification = result;
  return result;
}

uint64_t *MultiwayViewController.LivePhotoAvailabilityChangeNotification.unsafeMutableAddressor()
{
  if (one-time initialization token for LivePhotoAvailabilityChangeNotification != -1)
  {
    swift_once();
  }

  return &static MultiwayViewController.LivePhotoAvailabilityChangeNotification;
}

uint64_t MultiwayViewController.queryForSuggestedBannerStartTime.getter()
{
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_75_1();
  return outlined init with copy of [CaptionSectioner.SpeakerSection]();
}

uint64_t MultiwayViewController.queryForSuggestedBannerStartTime.setter()
{
  OUTLINED_FUNCTION_30_2();
  outlined assign with take of AttributedString?();
  return swift_endAccess();
}

uint64_t MultiwayViewController.dockKitAccessoryManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_dockKitAccessoryManager;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.trackedSubjectsViewDict.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_trackedSubjectsViewDict;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
}

uint64_t MultiwayViewController.isInCallEndedBlockAndReportFlow.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.isInCallEndedBlockAndReportFlow : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void MultiwayViewController.isInCallEndedBlockAndReportFlow.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {
    v5 = MultiwayViewController.localParticipantView.getter();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for LocalParticipantView();
      if (swift_dynamicCastClass())
      {
        LocalParticipantView.shouldAddOverlayBlur.setter(*(v2 + v4));
        MultiwayViewController.updateLocalParticipantState()();
        MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(0xA);
      }
    }
  }
}

uint64_t MultiwayViewController.updateLocalParticipantState()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BBC58000, v8, v9, "updateLocalParticipantState", v10, 2u);
    MEMORY[0x1BFB23DF0](v10, -1, -1);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v11)
  {
    v13 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v28, (v1 + v13), sizeof(v28));
    memcpy(v29, (v1 + v13), sizeof(v29));
    result = getEnumTag for TapInteraction.EventType(v29);
    if (result != 1)
    {
      v14 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
      outlined init with copy of [CaptionSectioner.SpeakerSection]();
      MultiwayViewController.ConversationSnapshot.init(of:)(v14, v30);
      v15 = MultiwayViewController.localParticipantState(for:)(v30);
      outlined destroy of MultiwayViewController.ConversationSnapshot(v30);
      if (v15 > 0x3Fu || (v16 = v29[6], v17 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, swift_beginAccess(), *(v16 + v17) != 128) || (swift_beginAccess(), _s15ConversationKit11ParticipantVWOcTm_16(), v18 = Participant.isActiveWithVideo.getter(), _s15ConversationKit11ParticipantVWOhTm_17(), (v18 & 1) == 0))
      {
        v19 = v29[6];
        v20 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        swift_beginAccess();
        if (*(v19 + v20) >= 0x81u && (v15 & 0x80) == 0)
        {
          ConversationController.lookupActiveConversation()();
          if (v26)
          {
            outlined init with take of TapInteractionHandler(&v25, v27);
            v21 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tonePlayer);
            v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0xD8);
            v23 = v21;
            v22(v27);

            __swift_destroy_boxed_opaque_existential_1(v27);
          }

          else
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v25, &_s15ConversationKit0A0_pSgMd);
          }
        }

        MultiwayViewController.setLocalParticipantState(_:animated:)(v15, 1);
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v28, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MultiwayViewController.updateParticipantLabelsAndControlsViews(videoMessageState:)(__objc2_class **a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v122 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v10 + 8);
  v14 = v10 + 8;
  v15(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v16 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(v139, &v4[v16], sizeof(v139));
  memcpy(v140, &v4[v16], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v140);
  if (result == 1)
  {
    return result;
  }

  memcpy(v138, v139, 0xE8uLL);
  outlined init with copy of MultiwayViewController.ViewContent(v138, &v134);
  if (MultiwayViewController.wantsStandardControls.getter())
  {
    v18 = v140[6];
    v19 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
    swift_beginAccess();
    v20 = *(v18 + v19);
    v3 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    v2 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    v126 = v8;
    v127 = a1;
    if (v20 < 0x81)
    {
LABEL_5:
      v8 = 0;
      v14 = 1;
      goto LABEL_14;
    }

    v21 = *&v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController];
    if (ConversationController.isTrackingActiveConversation.getter())
    {
      v22 = 0;
    }

    else
    {
      v23 = *&v4[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
      ObjectType = swift_getObjectType();
      v22 = (*(v23 + 600))(ObjectType, v23) ^ 1;
    }

    v25 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callWaitingUUIDs;
    swift_beginAccess();
    if (*(*(v21 + v25) + 16))
    {
      v14 = 0;
      v8 = 1;
    }

    else
    {
      v26 = v21 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
      swift_beginAccess();
      v27 = *(v26 + 8);
      v28 = swift_getObjectType();
      v29 = *(v27 + 240);
      swift_unknownObjectRetain();
      LODWORD(v26) = v29(v28, v27);
      swift_unknownObjectRelease();
      if (((v26 | v22) & 1) == 0)
      {
        v3 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
        if (ConversationController.hasRingingCalls.getter() && (MultiwayViewController.didExpandActiveVideoCallFromBanner.getter() & 1) == 0)
        {
          v14 = 0;
          v8 = 1;
          v2 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
        }

        else
        {
          v112 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isInCallEndedBlockAndReportFlow;
          swift_beginAccess();
          v2 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
          if (v4[v112])
          {
            v14 = 0;
            v8 = 1;
          }

          else
          {
            v114 = v21 + OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
            swift_beginAccess();
            v115 = *(v114 + 8);
            v116 = swift_getObjectType();
            v117 = *(v115 + 208);
            swift_unknownObjectRetain();
            LODWORD(v115) = v117(v116, v115);
            swift_unknownObjectRelease();
            if (v115 != 5)
            {
              v118 = *(v114 + 8);
              v119 = swift_getObjectType();
              v120 = *(v118 + 208);
              swift_unknownObjectRetain();
              LODWORD(v118) = v120(v119, v118);
              swift_unknownObjectRelease();
              if (v118 != 6)
              {
                goto LABEL_5;
              }
            }

            v121 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
            swift_beginAccess();
            v8 = 0;
            v14 = v4[v121];
          }
        }

LABEL_14:
        v12 = v140[15];
        a1 = &off_1E7FE9000;
        if (v140[15])
        {
          [v140[15] setHidden_];
        }

        if (one-time initialization token for shared == -1)
        {
LABEL_17:
          v30 = static Features.shared;
          if ((Features.isICUIRedesignEnabled.getter() & 1) != 0 && v140[4])
          {
            result = [v140[4] view];
            if (!result)
            {
LABEL_100:
              __break(1u);
              return result;
            }

            v31 = result;
            [result a1[486]];
          }

          v124 = v12;
          v125 = v30;
          v123 = v14;
          v128 = v8;
          v32 = *&v4[v3[219]];
          v33 = OBJC_IVAR____TtC15ConversationKit22ConversationController_callCenter;
          swift_beginAccess();
          outlined init with copy of IDSLookupManager(v32 + v33, v131);
          v34 = v132;
          v35 = v133;
          __swift_project_boxed_opaque_existential_1(v131, v132);
          v36 = *v2;
          v122 = v32;
          v37 = v32 + v36;
          swift_beginAccess();
          v38 = *(v37 + 8);
          v39 = *(v35 + 104);
          v40 = swift_unknownObjectRetain();
          v39(&v129, v40, v38, v34, v35);
          swift_unknownObjectRelease();
          if (v130)
          {
            outlined init with take of TapInteractionHandler(&v129, &v134);
            __swift_destroy_boxed_opaque_existential_1(v131);
            v41 = v136;
            __swift_project_boxed_opaque_existential_1(&v134, v136);
            v42 = (*(*(&v41 + 1) + 288))(v41, *(&v41 + 1));
            v43 = v128 ^ 1;
            if (v42 == 2)
            {
              v43 = 1;
            }

            if (v43 & 1) != 0 || (v44 = *(v37 + 8), v45 = swift_getObjectType(), v46 = *(v44 + 208), swift_unknownObjectRetain(), LODWORD(v44) = v46(v45, v44), swift_unknownObjectRelease(), v44 != 4) || (v47 = *(v37 + 8), v48 = swift_getObjectType(), v49 = *(v47 + 328), swift_unknownObjectRetain(), LOBYTE(v47) = v49(v48, v47), swift_unknownObjectRelease(), (v47))
            {
              v50 = 0;
            }

            else
            {
              v113 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_hasParticipantVideo;
              swift_beginAccess();
              v50 = v4[v113] ^ 1;
            }

            if (one-time initialization token for conversationKit != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_1BC4BA940;
            LOBYTE(v131[0]) = v50 & 1;
            v52 = String.init<A>(reflecting:)();
            v54 = v53;
            *(v51 + 56) = MEMORY[0x1E69E6158];
            *(v51 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v51 + 32) = v52;
            *(v51 + 40) = v54;
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            v55 = v140[7];
            v56 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresViewHidden;
            swift_beginAccess();
            *(v55 + v56) = v50 & 1;
            LocalParticipantView.updateHiding()();
            result = [v4 view];
            if (!result)
            {
LABEL_99:
              __break(1u);
              goto LABEL_100;
            }

            v57 = result;
            if ((v50 & 1) != 0 || (v58 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isDisplayedInBanner, swift_beginAccess(), v4[v58] == 1))
            {
              v59 = [objc_opt_self() clearColor];
            }

            else
            {
              if (one-time initialization token for background != -1)
              {
                swift_once();
              }

              v59 = static Colors.MultiwayViewController.background;
            }

            v61 = v59;
            v60 = v127;
            [v57 setBackgroundColor_];

            __swift_destroy_boxed_opaque_existential_1(&v134);
          }

          else
          {
            outlined destroy of ConversationControlsMoreMenuButtonDelegate?(&v129, &_s15ConversationKit0A0_pSgMd);
            __swift_destroy_boxed_opaque_existential_1(v131);
            v60 = v127;
          }

          if (v60 == 10)
          {
            v62 = *(v122 + OBJC_IVAR____TtC15ConversationKit22ConversationController_videoMessageController);
            v63 = *((*MEMORY[0x1E69E7D40] & *v62) + 0xF0);
            v64 = v62;
            v60 = v63();
          }

          v65 = *(v37 + 8);
          v66 = swift_getObjectType();
          v67 = *(v65 + 208);
          swift_unknownObjectRetain();
          LODWORD(v65) = v67(v66, v65);
          swift_unknownObjectRelease();
          v68 = v128;
          if (v65 == 6)
          {
            v69 = 1;
          }

          else
          {
            v69 = v128;
          }

          if ((v60 - 2) < 7u)
          {
            v70 = 1;
          }

          else
          {
            v70 = v69;
          }

          v71 = v140[3];
          v72 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_requiresControlsHidden;
          swift_beginAccess();
          *(v71 + v72) = v70;
          InCallBannerHostViewController.hideOrShowRootView()();
          v73 = v140[2];
          result = [v140[2] view];
          if (result)
          {
            v74 = result;
            [result setHidden_];

            v75 = v140[7];
            v76 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_requiresControlsHidden;
            swift_beginAccess();
            *(v75 + v76) = v68;
            LocalParticipantView.requiresControlsHidden.didset();
            v77 = &selRef_isRecordingAllowed;
            if (static Platform.current.getter() != 3)
            {
              v78 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isFullScreen;
              swift_beginAccess();
              if (v4[v78] != 1)
              {
                goto LABEL_63;
              }
            }

            v79 = MultiwayViewController.call.getter();
            v80 = [v79 isOutgoing];

            if (!v80)
            {
              goto LABEL_63;
            }

            v81 = MultiwayViewController.call.getter();
            v82 = [v81 status];

            if (v82 != 5)
            {
              v83 = MultiwayViewController.call.getter();
              v84 = [v83 status];

              if (v84 != 6)
              {
                goto LABEL_63;
              }
            }

            if (VideoMessageController.State.rawValue.getter(v60) != 0xD000000000000014 || 0x80000001BC4F1C50 != v85)
            {
              v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v77 = &selRef_isRecordingAllowed;
              if (v87)
              {
                goto LABEL_79;
              }

              if (VideoMessageController.State.rawValue.getter(v60) != 0x616C696176616E75 || v88 != 0xEB00000000656C62)
              {
                v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v90 & 1) == 0)
                {
LABEL_63:
                  v91 = type metadata accessor for ConversationControlsRecipe();
                  v92 = v126;
                  __swift_storeEnumTagSinglePayload(v126, 1, 1, v91);
                  LocalParticipantView.hudRecipe.setter(v92);
                  v93 = v128;
                  v94 = v124;
LABEL_64:
                  v95 = MultiwayViewController.call.getter();
                  v96 = [v95 v77[87]];

                  LocalParticipantView.isOutgoingCall.setter(v96 == 3);
                  if (v140[14])
                  {
                    [v140[14] setHidden_];
                  }

                  if ((v93 & 1) == 0)
                  {
                    v97 = MultiwayViewController.controlsMode.getter();
                    InCallControlsViewController.mode.setter(v97);
                  }

                  if (v94)
                  {
                    v98 = v94;
                    if (([v98 isHidden] & 1) == 0)
                    {
                      [v98 layoutIfNeeded];
                    }
                  }

                  v99 = [v73 view];
                  MultiwayViewController.bringSubviewToFront(_:)(v99);

                  if (Features.isICUIRedesignEnabled.getter())
                  {
                    if (v140[4])
                    {
                      v100 = v140[5];
                      v101 = swift_getObjectType();
                      v102 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didExpandIncomingCallBanner;
                      swift_beginAccess();
                      (*(v100 + 168))(v4[v102], v101, v100);
                    }
                  }

                  MultiwayViewController.updateVideoMessagingAvailableForCurrentState()();
                  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
                }

LABEL_79:
                (*((*MEMORY[0x1E69E7D40] & **(v75 + OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView)) + 0x2A0))(0);
                if (one-time initialization token for shared != -1)
                {
                  swift_once();
                }

                v134 = 9;
                v135 = 0u;
                v136 = 0u;
                v137 = 7;
                v103 = OBJC_IVAR____TtC15ConversationKit30InCallBannerHostViewController_controlsManager;
                swift_beginAccess();
                v104 = *(v71 + v103);
                v105 = v126;
                ConversationControlsRecipeGenerator.generate(for:type:controlsManager:)(0, &v134, v104, v126);

                outlined destroy of ConversationControlsType(&v134);
                LocalParticipantView.hudRecipe.setter(v105);
                v106 = MultiwayViewController.bannerPresentationManager.getter();
                if (v106)
                {
                  v107 = v106;
                  v134 = 9;
                  v135 = 0u;
                  v136 = 0u;
                  v137 = 7;
                  BannerPresentationManager.updatePresentedHUD(type:replacingNotice:)();

                  outlined destroy of ConversationControlsType(&v134);
                }

                v108 = MultiwayViewController.isPresentingEffectsBrowser.getter();
                v93 = v128;
                v94 = v124;
                v77 = &selRef_isRecordingAllowed;
                if (v108)
                {
                  if (v140[10])
                  {
                    v109 = *((*MEMORY[0x1E69E7D40] & *v140[10]) + 0x98);
                    v110 = v140[10];
                    v109(0);
                    v77 = &selRef_isRecordingAllowed;
                  }

                  v111 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_effectsEnabled;
                  swift_beginAccess();
                  v4[v111] = 0;
                  MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(0, 0);
                }

                goto LABEL_64;
              }
            }

            goto LABEL_79;
          }

          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        swift_once();
        goto LABEL_17;
      }

      v14 = 0;
      v8 = 1;
      v2 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_call;
    }

    v3 = &OBJC_IVAR____TtC15ConversationKit22ConversationController_callAnyRemoteSupportsRequestToScreenShareDidChange;
    goto LABEL_14;
  }

  return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v139, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
}

uint64_t MultiwayViewController.isInCallEndedBlockAndReportFlow.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.ConversationSnapshot.init(of:)(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = ConversationController.isOneToOneModeEnabled.getter() & 1;
  ConversationController.activeCallHasPreviouslyReceivedFirstRemoteFrame.getter();
  v19 = v4 & 1;
  v5 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *&a1[v5];

  v18 = ConversationController.hasRingingCalls.getter();
  v17 = ConversationController.isTrackingActiveConversation.getter() & 1;
  v7 = OBJC_IVAR____TtC15ConversationKit22ConversationController_conversationState;
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v16 = *&a1[v7];
  ConversationController.isWaitingOnFirstRemoteFrame.getter();
  v15 = v8 & 1;
  v9 = ConversationController.isLocallyCreated.getter() & 1;
  v10 = &a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_call];
  OUTLINED_FUNCTION_25_54();
  swift_beginAccess();
  v11 = *(v10 + 1);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 240);
  swift_unknownObjectRetain();
  LOBYTE(v10) = v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = v10 & 1;
  ConversationController.updateShouldShowLastFrameDuringUPlusOneHandoff()();
  LOBYTE(v10) = a1[OBJC_IVAR____TtC15ConversationKit22ConversationController_shouldShowLastFrameDuringUPlusOneHandoff];

  *a2 = v20;
  *(a2 + 1) = v19;
  *(a2 + 8) = v6;
  *(a2 + 16) = v18;
  *(a2 + 17) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 33) = v9;
  *(a2 + 34) = v14;
  *(a2 + 35) = v10;
}

char *MultiwayViewController.bannerPresentationManager.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
    swift_beginAccess();
    v2 = *&v2[v3];
    v4 = v2;
  }

  return v2;
}

void *MultiwayViewController.bannerPresentationManagerBox.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  OUTLINED_FUNCTION_19_1();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MultiwayViewController.bannerPresentationManagerBox.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  OUTLINED_FUNCTION_3_12();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  MultiwayViewController.bannerPresentationManagerBox.didset();
}

id key path getter for MultiwayViewController.bannerPresentationManagerBox : MultiwayViewController@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for MultiwayViewController.bannerPresentationManagerBox : MultiwayViewController(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MultiwayViewController.bannerPresentationManagerBox.setter(v1);
}

void MultiwayViewController.bannerPresentationManagerBox.didset()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_bannerPresentationManagerBox;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = OBJC_IVAR___CNKBannerPresentationManager_value;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (MultiwayViewController.isFrontmostMultiway.getter())
    {
      v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x148);
      v6 = v4;
      v7 = v0;
      v5(v0, &protocol witness table for MultiwayViewController);
    }
  }
}

uint64_t MultiwayViewController.isFrontmostMultiway.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isAmbient;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    v2 = 1;
  }

  else
  {
    swift_beginAccess();
    v2 = static AmbientState.isPresented ^ 1;
  }

  return v2 & 1;
}

uint64_t MultiwayViewController.bannerPresentationManagerBox.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

void *MultiwayViewController.conversationControlsManager.getter()
{
  if (MultiwayViewController.bannerPresentationManager.getter() && (OUTLINED_FUNCTION_82_11(), v1 = MEMORY[0x1E69E7D40], OUTLINED_FUNCTION_3_52(), v3 = (*(v2 + 472))(), v0, v3))
  {
    if (MultiwayViewController.isFrontmostMultiway.getter())
    {
      v4 = *((*v1 & *v3) + 0x4F0);
      v5 = swift_unknownObjectRetain();
      v4(v5, &protocol witness table for MultiwayViewController);
    }
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_52(v6, &static Logger.conversationControls);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_33();
      *v9 = 0;
      _os_log_impl(&dword_1BBC58000, v7, v8, "Unable to acquire ConversationControlsManager", v9, 2u);
      OUTLINED_FUNCTION_27();
    }

    return 0;
  }

  return v3;
}

uint64_t MultiwayViewController.mostActiveParticipants.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy15ConversationKit11ParticipantVGMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v142[1] = v142 - v2;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v145);
  v147 = v142 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v143 = v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v142 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v142 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit11ParticipantVSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v144 = v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = v142 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v153 = v142 - v17;
  v161 = type metadata accessor for Participant.State(0);
  MEMORY[0x1EEE9AC00](v161);
  v171 = v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UUID();
  v178 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Participant(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v151 = v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v152 = v142 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v154 = v142 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v155 = v142 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v158 = v142 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v170 = v142 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v156 = v142 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v167 = v142 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v163 = v142 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v168 = v142 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v177 = v142 - v44;
  MEMORY[0x1EEE9AC00](v45);
  specialized MostActiveParticipantsController.mostActiveParticipantIdentifiers.getter();

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5();
  v47 = v46;
  v149 = v0;
  v48 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController);
  v49 = OBJC_IVAR____TtC15ConversationKit22ConversationController_remoteParticipants;
  swift_beginAccess();
  v50 = *(v48 + v49);
  v51 = *(v50 + 16);
  v174 = v23;
  v165 = v11;
  v166 = v8;
  v162 = v51;
  v157 = v22;
  v150 = v48;
  if (v51)
  {
    v159 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v160 = v50 + v159;
    v175 = v178 + 1;
    v176 = (v178 + 2);
    v164 = v50;

    result = v164;
    v53 = 0;
    v173 = MEMORY[0x1E69E7CC0];
    v54 = v178;
    while (v53 < *(result + 16))
    {
      v55 = *(v174 + 72);
      v172 = v53;
      v169 = v55;
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (*(v47 + 16))
      {
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v56 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v57 = ~(-1 << *(v47 + 32));
        while (1)
        {
          v58 = v56 & v57;
          if (((*(v47 + 56 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
          {
            break;
          }

          (v54[2])(v21, *(v47 + 48) + v54[9] * v58, v19);
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v59 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v54[1])(v21, v19);
          v56 = v58 + 1;
          if (v59)
          {
            _s15ConversationKit11ParticipantVWOhTm_17();
            v60 = v172;
            goto LABEL_14;
          }
        }
      }

      _s15ConversationKit11ParticipantVWObTm_7();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v173 = v62;
      }

      v61 = *(v173 + 16);
      if (v61 >= *(v173 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v173 = v63;
      }

      v60 = v172;
      *(v173 + 16) = v61 + 1;
      _s15ConversationKit11ParticipantVWObTm_7();
LABEL_14:
      v53 = (v60 + 1);
      result = v164;
      if (v53 == v162)
      {

        v11 = v165;
        v8 = v166;
        v48 = v150;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_103;
  }

  v173 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v64 = OBJC_IVAR____TtC15ConversationKit22ConversationController_otherInvitedParticipants;
  swift_beginAccess();
  v65 = *(v48 + v64);
  v66 = v174;
  v164 = *(v65 + 2);
  if (v164)
  {
    v160 = (*(v174 + 80) + 32) & ~*(v174 + 80);
    v162 = &v65[v160];
    v176 = (v178 + 2);
    v168 = v65;

    v67 = 0;
    v68 = MEMORY[0x1E69E7CC0];
    while (v67 < *(v168 + 2))
    {
      v175 = v68;
      v69 = *(v66 + 72);
      v172 = v67;
      v169 = v69;
      _s15ConversationKit11ParticipantVWOcTm_16();
      if (*(v47 + 16))
      {
        lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v70 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v71 = ~(-1 << *(v47 + 32));
        while (1)
        {
          v72 = v70 & v71;
          if (((*(v47 + 56 + (((v70 & v71) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v70 & v71)) & 1) == 0)
          {
            break;
          }

          v73 = v178;
          (v178[2])(v21, *(v47 + 48) + v178[9] * v72, v19);
          lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v74 = dispatch thunk of static Equatable.== infix(_:_:)();
          (v73[1])(v21, v19);
          v70 = v72 + 1;
          if (v74)
          {
            result = _s15ConversationKit11ParticipantVWOhTm_17();
            v68 = v175;
            goto LABEL_30;
          }
        }
      }

      _s15ConversationKit11ParticipantVWObTm_7();
      v68 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = v76;
      }

      v75 = *(v68 + 16);
      if (v75 >= *(v68 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = v77;
      }

      *(v68 + 16) = v75 + 1;
      result = _s15ConversationKit11ParticipantVWObTm_7();
LABEL_30:
      v67 = v172 + 1;
      v66 = v174;
      if (v172 + 1 == v164)
      {

        v11 = v165;
        v8 = v166;
        goto LABEL_33;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_33:

  ConversationController.participants(with:)();
  v79 = v78;

  v180 = v79;
  specialized Array.append<A>(contentsOf:)(v173);
  specialized Array.append<A>(contentsOf:)(v68);
  v172 = v180;
  v80 = *(v180 + 16);
  if (v80)
  {
    v176 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v81 = v172 + v176;
    v175 = *(v66 + 72);
    v177 = MEMORY[0x1E69E7CC0];
    v173 = MEMORY[0x1E69E7CC0];
    do
    {
      _s15ConversationKit11ParticipantVWOcTm_16();
      _s15ConversationKit11ParticipantVWOcTm_16();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v83 = v177;
      switch(EnumCaseMultiPayload)
      {
        case 4:
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_15ConversationKit11ParticipantV9MediaInfoV05mediaH0AG010CopresenceH0VSg010copresenceH0tMd);
          v89 = *(v88 + 48);
          v90 = v171;
          outlined consume of Participant.CopresenceInfo?(*&v171[*(v88 + 64)], *&v171[*(v88 + 64) + 8]);
          outlined destroy of Participant.MediaInfo(&v90[v89]);
          v91 = type metadata accessor for Date();
          (*(*(v91 - 8) + 8))(v90, v91);
          _s15ConversationKit11ParticipantVWOcTm_16();
          v83 = v173;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v83 = v95;
          }

          v92 = *(v83 + 16);
          v86 = v92 + 1;
          v66 = v174;
          if (v92 >= *(v83 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v83 = v96;
            v173 = v96;
          }

          else
          {
            v173 = v83;
          }

          break;
        case 6:
          goto LABEL_37;
        default:
          v84 = type metadata accessor for Date();
          (*(*(v84 - 8) + 8))(v171, v84);
LABEL_37:
          _s15ConversationKit11ParticipantVWOcTm_16();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v83 = v93;
          }

          v85 = *(v83 + 16);
          v86 = v85 + 1;
          if (v85 >= *(v83 + 24) >> 1)
          {
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v83 = v94;
            v177 = v94;
          }

          else
          {
            v177 = v83;
          }

          break;
      }

      _s15ConversationKit11ParticipantVWOhTm_17();
      *(v83 + 16) = v86;
      v87 = v175;
      _s15ConversationKit11ParticipantVWObTm_7();
      v81 += v87;
      --v80;
      v11 = v165;
      v8 = v166;
    }

    while (v80);

    v97 = v173;
  }

  else
  {

    v97 = MEMORY[0x1E69E7CC0];
    v177 = MEMORY[0x1E69E7CC0];
  }

  v180 = v97;
  v98 = *(v149 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  ObjectType = swift_getObjectType();
  v101 = (*(v98 + 112))(ObjectType, v98);
  if (!v100)
  {
    v115 = v177;
    v116 = v97;
LABEL_101:
    v179 = v116;
    specialized Array.append<A>(contentsOf:)(v115);
    return v179;
  }

  v102 = v100;
  result = __swift_storeEnumTagSinglePayload(v153, 1, 1, v157);
  v103 = *(v97 + 16);
  v173 = v97;
  v176 = v103;
  if (v103)
  {
    v104 = 0;
    v105 = v97;
    v175 = (v97 + ((*(v66 + 80) + 32) & ~*(v66 + 80)));
    while (1)
    {
      if (v104 >= *(v105 + 16))
      {
        goto LABEL_104;
      }

      v106 = v105;
      v107 = v158;
      _s15ConversationKit11ParticipantVWOcTm_16();
      v108 = *&v107[*(v157 + 28)];
      if (v108)
      {
        v109 = [v108 value];
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        if (v110 == v101 && v102 == v112)
        {

          v11 = v165;
          v105 = v173;
LABEL_67:
          v117 = v153;
          outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit11ParticipantVSgMd);
          _s15ConversationKit11ParticipantVWObTm_7();
          v118 = v157;
          __swift_storeEnumTagSinglePayload(v117, 0, 1, v157);
          v119 = v147;
          v8 = v166;
          goto LABEL_68;
        }

        v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v165;
        v106 = v173;
        if (v114)
        {
          v105 = v173;

          goto LABEL_67;
        }
      }

      v105 = v106;
      ++v104;
      result = _s15ConversationKit11ParticipantVWOhTm_17();
      v8 = v166;
      if (v176 == v104)
      {
        goto LABEL_64;
      }
    }
  }

  v105 = v97;
LABEL_64:

  v117 = v153;
  v118 = v157;
  v119 = v147;
LABEL_68:
  v120 = v146;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v120, 1, v118) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v117, &_s15ConversationKit11ParticipantVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v120, &_s15ConversationKit11ParticipantVSgMd);
    v115 = v177;
    v116 = v105;
    goto LABEL_101;
  }

  _s15ConversationKit11ParticipantVWObTm_7();
  v121 = v144;
  specialized Collection.first.getter(v105, v144);
  if (__swift_getEnumTagSinglePayload(v121, 1, v118) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v121, &_s15ConversationKit11ParticipantVSgMd);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
    v122 = v178[2];
  }

  else
  {
    v122 = v178[2];
    v122(v11, v121 + *(v118 + 20), v19);
    _s15ConversationKit11ParticipantVWOhTm_17();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v19);
  }

  v122(v8, &v155[*(v118 + 20)], v19);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v19);
  v123 = *(v145 + 48);
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v119, 1, v19) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v11, &_s10Foundation4UUIDVSgMd);
    if (__swift_getEnumTagSinglePayload(v119 + v123, 1, v19) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSgMd);
      v116 = v105;
LABEL_100:
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit11ParticipantVSgMd);
      _s15ConversationKit11ParticipantVWOhTm_17();
      v115 = v177;
      goto LABEL_101;
    }

    goto LABEL_78;
  }

  v124 = v143;
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v119 + v123, 1, v19) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s10Foundation4UUIDVSgMd);
    (v178[1])(v124, v19);
LABEL_78:
    v125 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSg_ADtMd);
    v116 = v105;
    goto LABEL_79;
  }

  v139 = v178;
  (v178[4])(v21, v119 + v123, v19);
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v140 = dispatch thunk of static Equatable.== infix(_:_:)();
  v141 = v139[1];
  v141(v21, v19);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_s10Foundation4UUIDVSgMd);
  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v165, &_s10Foundation4UUIDVSgMd);
  v141(v143, v19);
  v116 = v173;
  v125 = outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v119, &_s10Foundation4UUIDVSgMd);
  if (v140)
  {
    goto LABEL_100;
  }

LABEL_79:
  v178 = v142;
  MEMORY[0x1EEE9AC00](v125);
  v142[-2] = v155;
  result = specialized Collection.firstIndex(where:)(partial apply for closure #4 in MultiwayViewController.mostActiveParticipants.getter, &v142[-4], v116);
  if (v126)
  {
LABEL_95:
    specialized Array.replaceSubrange<A>(_:with:)();
    _s15ConversationKit11ParticipantVWOcTm_16();
    v116 = v180;
    v136 = *(v180 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v177;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v136 >= *(v116 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v116 = v138;
      v180 = v138;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)();
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v153, &_s15ConversationKit11ParticipantVSgMd);
    _s15ConversationKit11ParticipantVWOhTm_17();
    goto LABEL_101;
  }

  v127 = result;
  v128 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v129 = *(v116 + 16);
      if (v128 == v129)
      {
        break;
      }

      if (v128 >= v129)
      {
        goto LABEL_105;
      }

      v130 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v131 = *(v174 + 72);
      _s15ConversationKit11ParticipantVWOcTm_16();
      v132 = static UUID.== infix(_:_:)();
      result = _s15ConversationKit11ParticipantVWOhTm_17();
      if ((v132 & 1) == 0)
      {
        if (v128 != v127)
        {
          if (v127 < 0)
          {
            goto LABEL_106;
          }

          v133 = *(v116 + 16);
          if (v127 >= v133)
          {
            goto LABEL_107;
          }

          result = _s15ConversationKit11ParticipantVWOcTm_16();
          if (v128 >= v133)
          {
            goto LABEL_108;
          }

          _s15ConversationKit11ParticipantVWOcTm_16();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized _ArrayBuffer._consumeAndCreateNew()();
            v116 = v135;
          }

          v134 = v116 + v130;
          result = outlined assign with take of Participant(v151, v134 + v131 * v127);
          if (v128 >= *(v116 + 16))
          {
            goto LABEL_109;
          }

          result = outlined assign with take of Participant(v152, v134 + v131 * v128);
          v180 = v116;
        }

        ++v127;
      }

      ++v128;
    }

    if (v128 < v127)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    goto LABEL_95;
  }

LABEL_111:
  __break(1u);
  return result;
}

uint64_t MultiwayViewController.layoutStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  result = OUTLINED_FUNCTION_9_67();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t key path getter for MultiwayViewController.layoutStyle : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id MultiwayViewController.layoutStyle.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = v2;
  return MultiwayViewController.layoutStyle.didset();
}

id MultiwayViewController.layoutStyle.didset()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
  swift_beginAccess();
  v3 = *(v0 + v2);
  ObjectType = swift_getObjectType();
  (*(v1 + 256))(v3, ObjectType, v1);
  LOBYTE(__dst[0]) = *(v0 + v2);
  ConversationController.updateLayoutStyle(_:)(__dst);
  MultiwayViewController.updateChangeLayoutButtonAppearanceState()();
  v5 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v5, sizeof(__dst));
  result = getEnumTag for TapInteraction.EventType(__dst);
  if (result != 1)
  {
    result = v5[22];
    if (result)
    {
      return [result setNeedsUpdateConfiguration];
    }
  }

  return result;
}

uint64_t MultiwayViewController.layoutStyle.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_0(a1);
  OUTLINED_FUNCTION_38();
  return OUTLINED_FUNCTION_8_0();
}

uint64_t MultiwayViewController.isSplitViewActive.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.isSplitViewActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isSplitViewActive;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

void MultiwayViewController.updateLayoutStyleForReactionView()()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState;
  if (*(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) == 1)
  {
    v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
    swift_beginAccess();
    if (*(v0 + v2) == 1)
    {
      *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible) = 1;
      v5 = 0;
      MultiwayViewController.layoutStyle.setter(&v5);
      goto LABEL_7;
    }

    if (*(v0 + v1))
    {
      return;
    }
  }

  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible;
  v4 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyleBeforeReactionsVisible);
  if (v4 == 2)
  {
    return;
  }

  v5 = v4 & 1;
  MultiwayViewController.layoutStyle.setter(&v5);
  *(v0 + v3) = 2;
LABEL_7:
  MultiwayViewController.updateCurrentLayout()();
}

void MultiwayViewController.updateCurrentLayout()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v25, (v1 + v2), sizeof(v25));
  if (getEnumTag for TapInteraction.EventType(v25) != 1)
  {
    memcpy(v23, __dst, sizeof(v23));
    v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_layoutStyle;
    swift_beginAccess();
    v21[0] = *(v1 + v3);
    v4 = v25[1];
    outlined init with copy of MultiwayViewController.ViewContent(v23, v22);
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;
      v10 = v9;

      v11 = ParticipantGridViewController.mediaPipIsVisible.getter();
      v12 = MultiwayViewController.constraintController.getter();
      if (v12)
      {
        v13 = v12;
        v14 = OBJC_IVAR___CNKFaceTimeConstraintsController_captionsState;
        swift_beginAccess();
        v15 = v13[v14];
      }

      else
      {
        v15 = 3;
      }

      v22[0] = v15;
      v16 = MultiwayViewController.LayoutStyle.maximumParticipantCount(portraitAspect:mediaPipIsVisible:captionsLayoutState:)(v8 < v10, v11 & 1, v22);
      v17 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_mostActiveParticipantsController);
      v18 = *(*v17 + 120);
      swift_beginAccess();
      *(v17 + v18) = v16;
      v21[0] = *(v1 + v3);
      v21[1] = 1;
      MultiwayViewController.updateChildParticipantsViewControllers(withUpdateReason:)(v21);
      v19 = MultiwayViewController.conversationControlsManager.getter();
      if (v19)
      {
        v20 = v19;
        (*((*MEMORY[0x1E69E7D40] & *v19) + 0xA90))();
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }

      else
      {
        outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void MultiwayViewController.reactionsState.didset(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO5EventVy_AC13EmptyDonationVGMd);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState;
  v10 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState);
  if (*a1 != v10)
  {
    v24 = v6;
    v25 = v5;
    if (v10)
    {
      v11 = MultiwayViewController.reactionsViewController.getter();
      if (v11)
      {
        v12 = v11;
        (*((*MEMORY[0x1E69E7D40] & *v11) + 0x98))();
      }
    }

    v13 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(v29, v13, 0xE8uLL);
    if (getEnumTag for TapInteraction.EventType(v29) != 1)
    {
      v14 = v13[6];
      LOBYTE(v26[0]) = *(v2 + v9);
      v15 = v14;
      MultiwayViewConstraintsController.reactionsState.setter(v26);
    }

    v16 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v16 + 320);
    v19 = v18(ObjectType, v16);
    MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v19 & 1, 0, 0, 0, 0);
    if (*(v2 + v9) == 1)
    {
      MultiwayViewController.updateFloatingLocalParticpantView()();
      MultiwayViewController.updateLocalParticipantState()();
      static VideoReactionPickerTip.hasOpenedReactionPicker.getter();
      Tips.Event.sendDonation<>(_:)();
      (*(v24 + 8))(v8, v25);
      v20 = v18(ObjectType, v16);
      MultiwayViewController.controlStateAnimationTiming(for:)(v20 & 1, v26);
      v21 = v27;
      v22 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v23 = (*(v22 + 8))(v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MultiwayViewController.showReactionPicker(after:)(v23);
    }

    else
    {
      MultiwayViewController.updateLocalParticipantState()();
      MultiwayViewController.updateFloatingLocalParticpantView()();
      MultiwayViewController.hideReactionPicker()();
    }

    MultiwayViewController.updateShouldShowReactionPickerTipView()();
    MultiwayViewController.updateLayoutStyleForReactionView()();
  }
}

void *MultiwayViewController.reactionsViewController.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[26];
    v3 = v2;
  }

  return v2;
}

id MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(int a1, char a2, void (*a3)(id), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  LODWORD(v33) = a1;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    result = [v7 viewIfLoaded];
    if (result)
    {
      v19 = result;
      v32 = a6;
      [result setNeedsLayout];
      v20 = swift_allocObject();
      v20[2] = v7;
      v20[3] = a3;
      v20[4] = a4;
      v37 = partial apply for closure #1 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:);
      v38 = v20;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      v22 = (v21 + 16);
      *(v21 + 24) = 0;
      v7;
      v23 = outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a3);
      if (a2)
      {
        v23 = [v19 snapshotViewAfterScreenUpdates_];
        if (v23)
        {
          v24 = v23;
          MultiwayViewController.setupReducedMotionAnimation(forSnapshot:animations:completion:)(v23, &v37, v22);
        }
      }

      if (v33)
      {
        MultiwayViewController.restartAutoHideInCallControlsTimer()();
        v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
        MultiwayViewController.controlStateAnimationTiming(for:)(a2 & 1, v34);
        v25 = v38;
        v31 = v37;
        v26 = swift_allocObject();
        v26[2] = v21;
        v26[3] = a5;
        v26[4] = v32;
        v28 = v35;
        v27 = v36;
        v29 = __swift_project_boxed_opaque_existential_1(v34, v35);

        outlined copy of (@escaping @callee_guaranteed (@guaranteed HUDActivity) -> ())?(a5);
        specialized static UIView.animate(with:delay:animations:completion:)(v29, 0, 0, v31, v25, partial apply for closure #2 in MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:), v26, v33, v28, v27);

        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      else
      {
        if (a3)
        {
          a3(v23);
        }

        v30 = *v22;
        if (*v22)
        {

          v30(1);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v30);
        }

        if (a5)
        {
          a5(1);
        }
      }

      MultiwayViewController.updateStatusBarHidden()();
    }

    else if (a5)
    {
      return (a5)(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.updateFloatingLocalParticpantView()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ParticipantViewModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v12 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v29, (v1 + v14), sizeof(v29));
    memcpy(v30, (v1 + v14), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v30);
    if (result != 1)
    {
      v15 = v30[6];
      v16 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v17 = *(v15 + v16);
      if (v17 > 0x80)
      {
        v18 = 1;
      }

      else
      {
        v18 = *(*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_isOneToOneModeEnabledByCallCenter);
      }

      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      v19 = 1;
      if ((*(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) & 1) == 0)
      {
        v19 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive);
      }

      memcpy(v28, v29, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v28, &v27);
      v20 = MultiwayViewController.isLocalMemberAuthorizedToChangeGroupMembership.getter();
      ParticipantViewModel.init(participant:videoProviderType:isInGrid:isMostActive:isPipped:isPreviewingReaction:hasOtherInvitedParticipants:isLocalMemberAuthorizedToChangeGroupMembership:prefersSnapshotFadeAnimation:snapshotImage:allowsVideoCroppedByAspectRatio:shouldRegisterVideoLayers:)(v4, 2u, 0, 0, v19, 0, v20 & 1, v7, 1u, 0, v18, 1u);
      v21 = v30[7];
      LocalParticipantView.configure(with:)(v7);
      LocalParticipantView.configureControls(_:)(v17);
      LocalParticipantControlsView.updateControlsAlpha(animated:)(0);
      LocalParticipantView.updateHiding()();
      v22 = 0;
      if (ConversationController.isCameraBlurEnabled.getter())
      {
        v22 = MultiwayViewController.cameraBlurAllowedForCurrentCaptionsState.getter();
      }

      v23 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_blurEnabled;
      swift_beginAccess();
      *(v21 + v23) = v22 & 1;
      LocalParticipantView.blurEnabled.didset();
      v24 = ConversationController.isBackgroundReplacementEnabled.getter();
      v25 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_backgroundReplacementEnabled;
      swift_beginAccess();
      *(v21 + v25) = v24 & 1;
      LocalParticipantView.backgroundReplacementEnabled.didset();
      MultiwayViewController.updateCameraFlipButtonAvailability()();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v29, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
      return _s15ConversationKit11ParticipantVWOhTm_17();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.controlStateAnimationTiming(for:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    a2[3] = &type metadata for CubicAnimationParameters;
    result = swift_allocObject();
    *(result + 16) = xmmword_1BC4CDBA0;
    *(result + 32) = xmmword_1BC4CDBB0;
    *(result + 48) = 0x3FEFD70A3D70A3D7;
    v4 = &protocol witness table for CubicAnimationParameters;
  }

  else
  {
    a2[3] = &type metadata for SpringAnimationParameters;
    result = swift_allocObject();
    *(result + 16) = xmmword_1BC4C4CB0;
    *(result + 32) = xmmword_1BC4C4CC0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v4 = &protocol witness table for SpringAnimationParameters;
  }

  a2[4] = v4;
  *a2 = result;
  return result;
}

void MultiwayViewController.showReactionPicker(after:)(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer);
  if (v4)
  {
    [v4 invalidate];
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = partial apply for closure #1 in MultiwayViewController.showReactionPicker(after:);
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v10[3] = &block_descriptor_385;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
  _Block_release(v7);
  v9 = *(v1 + v3);
  *(v1 + v3) = v8;
}

void MultiwayViewController.hideReactionPicker()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_showReactionPickerTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = MultiwayViewController.reactionsViewController.getter();
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA8))();
  }
}

void closure #1 in MultiwayViewController.showReactionPicker(after:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionsState) != 1 || (v2 = (Strong + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent), swift_beginAccess(), memmove(__dst, v2, 0xE8uLL), getEnumTag for TapInteraction.EventType(__dst) == 1) || (v3 = v2[7], memmove(v10, v2, 0xE8uLL), getEnumTag for TapInteraction.EventType(v10) == 1) || (v4 = v2[6], v5 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState, swift_beginAccess(), *(v4 + v5) >> 6 > 1u) || (v6 = MultiwayViewController.reactionsViewController.getter()) == 0)
    {
    }

    else
    {
      v7 = v6;
      v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xA0);
      v9 = v3;
      v8();
    }
  }
}

uint64_t MultiwayViewController.isLocalReactionActive.didset(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive;
  v4 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive);
  if (v4 != (result & 1))
  {
    v5 = (v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
    swift_beginAccess();
    memcpy(__dst, v5, sizeof(__dst));
    if (getEnumTag for TapInteraction.EventType(__dst) != 1)
    {
      v6 = v5[6];
      MultiwayViewConstraintsController.isLocalReactionActive.setter(v4);
    }

    if (*(v2 + v3) == 1)
    {
      memcpy(v16, v5, sizeof(v16));
      result = getEnumTag for TapInteraction.EventType(v16);
      if (result != 1)
      {
        v7 = v5[6];
        v8 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
        result = swift_beginAccess();
        v9 = v7[v8];
        if (v9 < 0x40 || (v9 & 0xC0) == 0x40)
        {
          v10 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
          ObjectType = swift_getObjectType();
          v12 = (*(v10 + 320))(ObjectType, v10);
          MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v12 & 1, 0, 0, 0, 0);
          MultiwayViewController.updateFloatingLocalParticpantView()();
          return MultiwayViewController.updateLocalParticipantState()();
        }
      }
    }

    else
    {
      v13 = *(v2 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8);
      v14 = swift_getObjectType();
      v15 = (*(v13 + 320))(v14, v13);
      MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(1, v15 & 1, 0, 0, 0, 0);
      MultiwayViewController.updateLocalParticipantState()();
      return MultiwayViewController.updateFloatingLocalParticpantView()();
    }
  }

  return result;
}

uint64_t MultiwayViewController.isLocalReactionActive.setter(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive);
  *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_isLocalReactionActive) = a1;
  return MultiwayViewController.isLocalReactionActive.didset(v2);
}

uint64_t MultiwayViewController.didRequestMemojiPicker.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t key path getter for MultiwayViewController.didRequestMemojiPicker : MultiwayViewController@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_didRequestMemojiPicker;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MultiwayViewController.isPipStashed.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = *a2;
  OUTLINED_FUNCTION_6_0();
  v8 = *(v3 + v7);
  *(v3 + v7) = a1;
  return MultiwayViewController.didRequestMemojiPicker.didset(v8, a2, a3);
}

uint64_t MultiwayViewController.updateLocalParticipantControls()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
    swift_beginAccess();
    memcpy(v37, (v1 + v9), sizeof(v37));
    memcpy(v38, (v1 + v9), 0xE8uLL);
    result = getEnumTag for TapInteraction.EventType(v38);
    if (result != 1)
    {
      memcpy(v36, v38, sizeof(v36));
      v10 = v38[6];
      v11 = OBJC_IVAR___CNKFaceTimeConstraintsController_localParticipantState;
      swift_beginAccess();
      v12 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_conversationController) + OBJC_IVAR____TtC15ConversationKit22ConversationController_localParticipant;
      v13 = *(v10 + v11);
      swift_beginAccess();
      _s15ConversationKit11ParticipantVWOcTm_16();
      memcpy(v35, v37, 0xE8uLL);
      outlined init with copy of MultiwayViewController.ViewContent(v35, &v34);
      v14 = Participant.isActiveWithVideo.getter();
      _s15ConversationKit11ParticipantVWOhTm_17();
      v15 = v38[2];
      v16 = OBJC_IVAR____TtC15ConversationKit28InCallControlsViewController_effectsAreAvailable;
      swift_beginAccess();
      v17 = *(v15 + v16);
      v18 = closure #1 in MultiwayViewController.updateLocalParticipantControls()(v1, v13, v36);
      v19 = v38[10];
      if (v38[10])
      {
        v20 = *MEMORY[0x1E69E7D40] & *v38[10];
        v32 = v2;
        v33 = v12;
        v21 = v14;
        v22 = *(v20 + 144);
        v23 = v38[10];
        v24 = v22();
        v14 = v21;
        v2 = v32;
        v12 = v33;
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      *(v12 + *(v2 + 40)) = v18 & 1;
      v26 = v38[7];
      v27 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
      swift_beginAccess();
      if (*(v26 + v27))
      {
        MultiwayViewController.updateButtonShelfMemojiButton()();
      }

      else
      {
        LocalParticipantView.configureWithEffectsAvailable(_:effectsSelected:)(v17 & v14 & 1, (v25 | v18) & 1);
      }

      v28 = MultiwayViewController.call.getter();
      v29 = [v28 status];

      LocalParticipantView.isOutgoingCall.setter(v29 == 3);
      MultiwayViewController.showEffectsControls(_:shouldUpdateLocalParticipantState:)(v18 & 1, 0);
      if ((v18 & 1) == 0)
      {
        if (v19)
        {
          v30 = *((*MEMORY[0x1E69E7D40] & *v19) + 0xB0);
          v31 = v19;
          v30(58.0);
        }
      }

      return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v37, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MultiwayViewController.didRequestMemojiPicker.modify()
{
  v0 = OUTLINED_FUNCTION_39_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_7(v1);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_36_4();
  return OUTLINED_FUNCTION_28_3();
}

void MultiwayViewController.reactionPickerTipState.didset(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState;
  if (*a1 != v1[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState])
  {
    v3 = v1;
    v4 = MultiwayViewController.reactionPickerTipView.getter();
    if (v4)
    {
      v5 = v4;
      MultiwayViewController.layoutIdiom.getter(__dst);
      v6 = LOBYTE(__dst[0]);
      v7 = v1[v2];
      if (v7 == 1)
      {
        [v5 removeFromSuperview];
        v8 = [v1 view];
        if (!v8)
        {
          __break(1u);
          return;
        }

        v9 = v8;
        [v8 addSubview_];

        v10 = v5;
        MultiwayViewController.bringSubviewToFront(_:)(v5);
      }

      v11 = &v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent];
      swift_beginAccess();
      memcpy(__dst, v11, sizeof(__dst));
      if (getEnumTag for TapInteraction.EventType(__dst) != 1)
      {
        v12 = v11[6];
        LOBYTE(v35) = v3[v2];
        v13 = v12;
        MultiwayViewConstraintsController.reactionPickerTipState.setter(&v35);
      }

      v14 = *&v3[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_defaults + 8];
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 320))(ObjectType, v14);
      MultiwayViewController.layoutNewControlsState(animated:reducedMotion:animation:completion:)(v6, v16 & 1, 0, 0, 0, 0);
      v17 = 1.0;
      if (v7)
      {
        v17 = 0.0;
      }

      [v5 setAlpha_];
      v18 = objc_opt_self();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v19 = (*(*static Defaults.shared + 1056))();
      v20 = swift_allocObject();
      *(v20 + 16) = v5;
      *(v20 + 24) = v7;
      v39 = partial apply for closure #1 in MultiwayViewController.reactionPickerTipState.didset;
      v40 = v20;
      v35 = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed () -> ();
      v38 = &block_descriptor_751;
      v21 = _Block_copy(&v35);
      v22 = v5;

      v23 = swift_allocObject();
      *(v23 + 16) = v7;
      *(v23 + 24) = v22;
      v39 = partial apply for closure #2 in MultiwayViewController.reactionPickerTipState.didset;
      v40 = v23;
      v35 = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v38 = &block_descriptor_757;
      v24 = _Block_copy(&v35);
      v25 = v22;

      [v18 animateWithDuration:v21 animations:v24 completion:v19];
      _Block_release(v24);
      _Block_release(v21);
      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Logger.conversationKit);
      v27 = v3;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v35 = v31;
        *v30 = 136315138;
        if (v3[v2])
        {
          v32 = 0x656C6269736976;
        }

        else
        {
          v32 = 0x6E6564646968;
        }

        if (v3[v2])
        {
          v33 = 0xE700000000000000;
        }

        else
        {
          v33 = 0xE600000000000000;
        }

        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v35);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1BBC58000, v28, v29, "reactionPickerTipState updated to %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1BFB23DF0](v31, -1, -1);
        MEMORY[0x1BFB23DF0](v30, -1, -1);
      }
    }
  }
}

void *MultiwayViewController.reactionPickerTipView.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent);
  swift_beginAccess();
  memcpy(__dst, v1, sizeof(__dst));
  v2 = 0;
  if (getEnumTag for TapInteraction.EventType(__dst) != 1)
  {
    v2 = v1[27];
    v3 = v2;
  }

  return v2;
}

id MultiwayViewController.bringSubviewToFront(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_viewContent;
  swift_beginAccess();
  memcpy(__dst, &v2[v4], sizeof(__dst));
  memcpy(v51, &v2[v4], 0xE8uLL);
  result = getEnumTag for TapInteraction.EventType(v51);
  if (result != 1 && a1)
  {
    v6 = a1;
    outlined init with copy of [CaptionSectioner.SpeakerSection]();
    result = [v2 view];
    if (result)
    {
      v7 = result;
      [result bringSubviewToFront_];

      if (v51[9])
      {
        v8 = v51[9];
        result = [v2 view];
        if (!result)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v9 = result;
        result = [v8 view];
        if (!result)
        {
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v10 = result;
        [v9 bringSubviewToFront_];
      }

      if (v51[14])
      {
        v11 = v51[14];
        v12 = [v11 superview];
        if (v12)
        {

          result = [v2 view];
          if (!result)
          {
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v13 = result;
          [result bringSubviewToFront_];

          v11 = v13;
        }
      }

      if (v51[15])
      {
        v14 = v51[15];
        v15 = [v14 superview];
        if (v15)
        {

          result = [v2 view];
          if (!result)
          {
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          v16 = result;
          [result bringSubviewToFront_];

          v14 = v16;
        }
      }

      specialized MomentsBackedViewControllerProtocol.bringMomentsAndFlashViewsToFrontIfNecessary()();
      result = [v2 view];
      if (result)
      {
        v17 = result;
        result = [v51[18] view];
        if (result)
        {
          v18 = result;
          v19 = v51[7];
          [v17 insertSubview:result belowSubview:v51[7]];

          if (v51[26])
          {
            v20 = [v51[26] view];
            if (v20)
            {
              v21 = v20;
              result = [v2 view];
              if (!result)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v22 = result;
              [result insertSubview:v21 belowSubview:v19];
            }
          }

          v23 = MultiwayViewController.reactionPickerTipView.getter();
          if (v23)
          {
            v24 = v23;
            if (v2[OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_reactionPickerTipState] == 1)
            {
              result = [v2 view];
              if (!result)
              {
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              v25 = result;
              [result insertSubview:v24 belowSubview:v19];

              v24 = v25;
            }
          }

          v26 = &selRef_isRecordingAllowed;
          if (!v51[10])
          {
            goto LABEL_46;
          }

          v27 = [v51[10] view];
          if (!v27)
          {
            goto LABEL_46;
          }

          v28 = v27;
          v29 = [v27 superview];
          v30 = [v2 view];
          v31 = v30;
          if (v29)
          {
            if (v30)
            {
              type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
              v32 = static NSObject.== infix(_:_:)();

              if ((v32 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_36:
              result = [v2 view];
              if (!result)
              {
LABEL_86:
                __break(1u);
                goto LABEL_87;
              }

              v33 = result;
              [result bringSubviewToFront_];

              result = [v2 view];
              if (!result)
              {
LABEL_87:
                __break(1u);
                goto LABEL_88;
              }

              v34 = result;
              result = [v51[3] view];
              if (!result)
              {
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v35 = result;
              [v34 bringSubviewToFront_];

              result = [v2 view];
              v26 = &selRef_isRecordingAllowed;
              if (!result)
              {
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              v36 = result;
              v37 = [result subviewForEffectsBrowserViewController];

              if (!v37)
              {
                goto LABEL_50;
              }

              result = [v2 view];
              if (!result)
              {
LABEL_90:
                __break(1u);
                return result;
              }

              v38 = result;
              [result insertSubview:v37 aboveSubview:v28];

LABEL_49:
LABEL_50:

              if (v51[4])
              {
                v39 = [v51[4] view];
                if (v39)
                {
                  v40 = v39;
                  if (one-time initialization token for shared != -1)
                  {
                    swift_once();
                  }

                  if (Features.isICUIRedesignEnabled.getter())
                  {
                    result = [v2 view];
                    if (!result)
                    {
LABEL_83:
                      __break(1u);
                      goto LABEL_84;
                    }

                    v41 = result;
                    [result bringSubviewToFront_];

                    result = [v2 view];
                    if (!result)
                    {
LABEL_84:
                      __break(1u);
                      goto LABEL_85;
                    }

                    v42 = result;
                    result = [v51[3] view];
                    if (!result)
                    {
LABEL_85:
                      __break(1u);
                      goto LABEL_86;
                    }

                    v43 = result;
                    [v42 bringSubviewToFront_];

                    v40 = v43;
                  }
                }
              }

              if (v51[28])
              {
                v44 = v51[28];
                result = [v2 view];
                if (!result)
                {
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v45 = result;
                [result insertSubview:v44 belowSubview:v19];

                result = [v2 view];
                if (!result)
                {
LABEL_77:
                  __break(1u);
                  goto LABEL_78;
                }

                v46 = result;
                result = [v51[1] view];
                if (!result)
                {
LABEL_78:
                  __break(1u);
                  goto LABEL_79;
                }

                v47 = result;
                [v46 v26[354]];
              }

              result = [v2 view];
              if (result)
              {
                v48 = result;
                v49 = MultiwayViewController.dimmingLayer.getter(&OBJC_IVAR____TtC15ConversationKit22MultiwayViewController____lazy_storage___mePipDimmingBackgroundView, closure #1 in MultiwayViewController.mePipDimmingBackgroundView.getter);
                [v48 insertSubview:v49 belowSubview:v19];

                return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(__dst, &_s15ConversationKit22MultiwayViewControllerC0D7ContentVSgMd);
              }

              goto LABEL_71;
            }

            v31 = v29;
          }

          else if (!v30)
          {
            goto LABEL_36;
          }

LABEL_45:
          v26 = &selRef_isRecordingAllowed;
LABEL_46:
          result = [v2 view];
          if (!result)
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v38 = result;
          result = [v51[2] view];
          if (!result)
          {
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v28 = result;
          [v38 bringSubviewToFront_];
          goto LABEL_49;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_70;
  }

  return result;
}

uint64_t MultiwayViewController.reactionsState.setter(_BYTE *a1, void *a2, uint64_t (*a3)(char *))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = *a1;
  v6 = v4;
  return a3(&v6);
}

uint64_t MultiwayViewController.needsTips.getter()
{
  v1 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips;
  OUTLINED_FUNCTION_19_1();
  return *(v0 + v1);
}

uint64_t MultiwayViewController.needsTips.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_needsTips;
  result = OUTLINED_FUNCTION_3_12();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MultiwayViewController.startTipStateObserver()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11TelephonyUI22VideoReactionPickerTipVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for VideoReactionPickerTip();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  swift_beginAccess();
  outlined init with copy of [CaptionSectioner.SpeakerSection]();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v7, &_s11TelephonyUI22VideoReactionPickerTipVSgMd);
  }

  v36 = *(v9 + 32);
  v37 = v9 + 32;
  v36(v13, v7, v8);
  v15 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask;
  v16 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipDisplayStateObservationTask);
  if (!v16)
  {
    v17 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v9;
    (*(v9 + 16))(v38, v13, v8);
    type metadata accessor for MainActor();

    v33 = static MainActor.shared.getter();
    v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v35 = v4;
    v20 = swift_allocObject();
    *(v20 + 16) = v33;
    *(v20 + 24) = MEMORY[0x1E69E85E0];
    v36((v20 + v19), v38, v8);
    *(v20 + ((v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    v4 = v35;

    v9 = v34;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  *(v1 + v15) = v16;

  v21 = OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask;
  v22 = *(v1 + OBJC_IVAR____TtC15ConversationKit22MultiwayViewController_tipStatusObservationTask);
  if (v22)
  {
    v23 = *(v9 + 8);

    v23(v13, v8);
  }

  else
  {
    v24 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v38, v13, v8);
    type metadata accessor for MainActor();

    v26 = static MainActor.shared.getter();
    v27 = *(v9 + 80);
    v35 = v4;
    v28 = (v27 + 32) & ~v27;
    v29 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = MEMORY[0x1E69E85E0];
    v36((v30 + v28), v38, v8);
    *(v30 + v29) = v25;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
    v22 = v31;
    (*(v9 + 8))(v13, v8);
  }

  *(v1 + v21) = v22;
}

uint64_t closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v5[14] = swift_task_alloc();
  v6 = type metadata accessor for Tips.Status();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[19] = swift_task_alloc();
  v5[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[30] = v10;
  v5[31] = v9;

  return MEMORY[0x1EEE6DFA0](closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver(), v10, v9);
}

uint64_t closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver()()
{
  v1 = *(v0 + 176);
  type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_18_63();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v2, v3);
  Tip.shouldDisplayUpdates.getter();
  MEMORY[0x1BFB221C0](v1);
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  v4 = OUTLINED_FUNCTION_43_0();
  v5(v4);
  OUTLINED_FUNCTION_78();
  AsyncMapSequence.Iterator.init(_:transform:)();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = static MainActor.shared.getter();
  *(v0 + 256) = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_70_8(v9, v7);

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[32];
  v0[35] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type NSObject.KeyValueObservingPublisher<UICollectionView, CGPoint> and conformance NSObject.KeyValueObservingPublisher<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  v0[36] = v2;
  *v2 = v3;
  v2[1] = closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
  v4 = v0[14];
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v4, v1, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  if (v0)
  {
    v5 = *(v2 + 264);
    v6 = *(v2 + 272);
    v7 = closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
  }

  else
  {
    (*(v2 + 280))();
    v5 = *(v2 + 264);
    v6 = *(v2 + 272);
    v7 = closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

{
  OUTLINED_FUNCTION_44();
  v2 = v0[14];
  v1 = v0[15];
  v3 = OUTLINED_FUNCTION_29_5();
  OUTLINED_FUNCTION_115(v3, v4, v1);
  if (v5)
  {

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v2, &_s6TipKit4TipsO6StatusOSgMd);
    v6 = v0[30];
    v7 = v0[31];

    return MEMORY[0x1EEE6DFA0](closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver(), v6, v7);
  }

  else
  {
    (*(v0[16] + 32))(v0[17], v2, v1);
    v8 = AsyncMapSequence.Iterator.transform.getter();
    v0[37] = v9;
    v14 = (v8 + *v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_4();
    v0[38] = v10;
    *v10 = v11;
    v10[1] = closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver();
    v12 = v0[17];

    return (v14)(v0 + 39, v12);
  }
}

{
  return (*(v0 + 280))();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[15];
  *v3 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v2 + 313) = *(v2 + 312);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x1EEE6DFA0](closure #1 in implicit closure #1 in MultiwayViewController.startTipStateObserver(), v1, v2);
}

{
  OUTLINED_FUNCTION_9();
  v16 = v0;
  v1 = *(v0 + 313);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    v15 = 1;
    OUTLINED_FUNCTION_17_69();
    v6 = &v15;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    v14 = 0;
    OUTLINED_FUNCTION_17_69();
    v6 = &v14;
  }

  MultiwayViewController.reactionsState.setter(v6, v4, v5);

LABEL_7:
  v7 = static MainActor.shared.getter();
  *(v0 + 256) = v7;
  if (v7)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_70_8(v7, v8, v9);

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();

  v0 = OUTLINED_FUNCTION_38_2();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Tips.Status();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v5[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v10;
  v5[21] = v9;

  return MEMORY[0x1EEE6DFA0](closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver(), v10, v9);
}

uint64_t closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver()()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  type metadata accessor for VideoReactionPickerTip();
  OUTLINED_FUNCTION_18_63();
  lazy protocol witness table accessor for type VideoReactionPickerTip and conformance VideoReactionPickerTip(v4, v5);
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  v6 = *MEMORY[0x1E6982B68];
  *(v0 + 192) = *MEMORY[0x1E6982AE0];
  *(v0 + 196) = v6;
  *(v0 + 176) = static MainActor.shared.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 184) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_65_14(v7);
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D9C8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](closure #2 in implicit closure #2 in MultiwayViewController.startTipStateObserver(), v5, v4);
}

{
  OUTLINED_FUNCTION_48();
  v29 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_115(v1, 1, v2);
  if (v3)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 196);
  v8 = *(v0 + 72);
  v9 = *(v0 + 64);
  (*(v9 + 32))(*(v0 + 80), v1, v2);
  type metadata accessor for Tips.InvalidationReason();
  OUTLINED_FUNCTION_7_0();
  (*(v10 + 104))(v8, v7);
  v11 = OUTLINED_FUNCTION_185_5();
  v12(v11, v6, v2);
  OUTLINED_FUNCTION_43_0();
  v13 = static Tips.Status.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v8, v2);
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v28 = 0;
      OUTLINED_FUNCTION_17_69();
      MultiwayViewController.reactionsState.setter(&v28, v17, v18);
    }

    v19 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 56);
  }

  v14(v19, v20);
  *(v0 + 176) = static MainActor.shared.getter();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_4();
  *(v0 + 184) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_65_14();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6D9C8](v23, v24, v25);
}