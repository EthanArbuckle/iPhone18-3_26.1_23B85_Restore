uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of DateInterval?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of UTType?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZScTyytSgABG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of DateInterval?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of UTType?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyytSgs5NeverOGMd);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyytSgs5NeverOGMd);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *AssetView.init(trait:localizedLabel:viewModel:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v10 = *a5;
  v11 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v10;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for AssetView();
  v14 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
  v16 = v14;
  v15();
  AssetView.setFallBackView()();
  [v16 setIsAccessibilityElement_];
  v17 = [v16 accessibilityTraits];
  if ((a1 & ~v17) != 0)
  {
    v18 = a1;
  }

  else
  {
    v18 = 0;
  }

  [v16 setAccessibilityTraits_];
  v19 = MEMORY[0x21CE91FC0](a2, a3);

  [v16 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_21658CA50;
  v21 = type metadata accessor for UITraitUserInterfaceStyle();
  v22 = MEMORY[0x277D74BF0];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = v16;
  MEMORY[0x21CE92C30](v20, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v23 handleTraitChange];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];

  [v23 setClipsToBounds_];
  return v23;
}

Swift::Void __swiftcall AssetView.showViews()()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_21607C000, v3, v4, "[%s] showViews", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v12 = *&v2[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];

  [v12 setHidden_];
}

Swift::Void __swiftcall AssetView.performViewModelUpdate(style:)(MomentsUI::AssetViewModel::Style_optional style)
{
  v1 = *&style;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *v1;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v5;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &closure #1 in AssetView.performViewModelUpdate(style:)partial apply, v8);

  outlined destroy of UTType?(v4, &_sScPSgMd);
}

uint64_t key path setter for AssetView.suggestionID : AssetView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v6);
}

void *AssetView.__allocating_init(trait:localizedLabel:viewModel:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v11 = objc_allocWithZone(v5);
  LOBYTE(a5) = *a5;
  v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  *&v11[v12] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v11[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = a5;
  v26.receiver = v11;
  v26.super_class = v5;
  v15 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0xE8);
  v17 = v15;
  v16();
  AssetView.setFallBackView()();
  [v17 setIsAccessibilityElement_];
  v18 = [v17 accessibilityTraits];
  if ((a1 & ~v18) != 0)
  {
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  [v17 setAccessibilityTraits_];
  v20 = MEMORY[0x21CE91FC0](a2, a3);

  [v17 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  v22 = type metadata accessor for UITraitUserInterfaceStyle();
  v23 = MEMORY[0x277D74BF0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v17;
  MEMORY[0x21CE92C30](v21, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v24 handleTraitChange];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setClipsToBounds_];
  return v24;
}

Swift::Void __swiftcall AssetView.setFallBackView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v3 = MEMORY[0x21CE91FC0](0x642E656C63726963, 0xED0000646574746FLL);
  v4 = [objc_opt_self() systemImageNamed_];

  [v2 setImage_];
  v5 = [objc_opt_self() systemGrayColor];
  [v2 setTintColor_];

  [v1 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setContentMode_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(15.0, 15.0);
}

Swift::Void __swiftcall AssetView.setAccessiblity(trait:localizedLabel:)(UIAccessibilityTraits trait, Swift::String localizedLabel)
{
  object = localizedLabel._object;
  countAndFlagsBits = localizedLabel._countAndFlagsBits;
  [v2 setIsAccessibilityElement_];
  v6 = [v2 accessibilityTraits];
  if ((trait & ~v6) != 0)
  {
    v7 = trait;
  }

  else
  {
    v7 = 0;
  }

  [v2 setAccessibilityTraits_];
  v8 = MEMORY[0x21CE91FC0](countAndFlagsBits, object);
  [v2 setAccessibilityLabel_];
}

id AssetView.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v8 = static ScreenSize.zero;
  v9 = type metadata accessor for DateInterval();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  type metadata accessor for DBAssetModel();
  v10 = type metadata accessor for AssetViewModel();
  v11 = v8;
  static DBAssetModel.subscript.getter(v10, v17);
  v18 = v17[0];
  v12 = objc_allocWithZone(v10);
  v13 = specialized AssetViewModel.init(intendedViewport:supportedStyles:baseImage:baseTitle:baseDateInterval:assetClass:)(v11, &outlined read-only object #0 of AssetView.init(), 0, 0, 0, v4, &v18);

  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v1[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = 1;
  v14 = type metadata accessor for AssetView();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id AssetView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AssetView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void AssetView.handleTraitLight()()
{
  _StringGuts.grow(_:)(48);

  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x21CE92100](v2, v4);

  MEMORY[0x21CE92100](0xD00000000000002DLL, 0x800000021657C5D0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t AssetView.updateAndShowViews()()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](AssetView.updateAndShowViews(), v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id AssetView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AssetView.handleTraitChange()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 1)
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  }

  else
  {
    v3 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  }

  v3();
}

Swift::Void __swiftcall AssetView.updateViewStyle(style:)(MomentsUI::AssetViewModel::Style_optional style)
{
  v2 = *style.value;
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  if (v4)
  {
    v5 = v4;
    if (v2 == 9)
    {
      (*((*v3 & *v4) + 0x100))(&v8);
      if (v8 != 9)
      {
        v7 = v8;
        (*((*v3 & *v1) + 0x90))(&v7);
      }
    }

    else
    {
      v6 = v2;
      (*((*v3 & *v1) + 0x90))(&v6);
    }
  }
}

uint64_t closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 152) = a5;
  *(v5 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

uint64_t closure #1 in AssetView.performViewModelUpdate(style:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = ((*MEMORY[0x277D85000] & *Strong) + 112) & 0xFFFFFFFFFFFFLL | 0x84DE000000000000;
    v0[8] = *((*MEMORY[0x277D85000] & *Strong) + 0x70);
    v0[9] = v2;
    v0[10] = type metadata accessor for MainActor();
    v0[11] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(v0 + 64);

  *(v0 + 96) = v1(v2);

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1B8);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = closure #1 in AssetView.performViewModelUpdate(style:);

    return v6();
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

{
  v42 = v0;
  if (*(v0 + 153))
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 56);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static CommonLogger.views);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 56);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41 = v8;
      *v7 = 136315138;
      v9 = [v6 description];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v41);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_21607C000, v4, v5, "[%s] already rendered", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x21CE94770](v8, -1, -1);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v14 = *(v0 + 96);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = *(v0 + 152);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v16;
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v20;
    *(v21 + 24) = v22;
    *(v21 + 32) = v19;
    *(v21 + 40) = v17;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in AssetView.performViewModelUpdate(style:), v21);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 56);
    v26 = type metadata accessor for Logger();
    *(v0 + 112) = __swift_project_value_buffer(v26, static CommonLogger.views);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 56);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      v33 = [v30 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v41);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_21607C000, v28, v29, "[%s] begin rendering", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x21CE94770](v32, -1, -1);
      MEMORY[0x21CE94770](v31, -1, -1);
    }

    v38 = *((*MEMORY[0x277D85000] & **(v0 + 96)) + 0x1A0);
    v40 = (v38 + *v38);
    v39 = swift_task_alloc();
    *(v0 + 120) = v39;
    *v39 = v0;
    v39[1] = closure #1 in AssetView.performViewModelUpdate(style:);

    return v40();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), v2, v1);
}

{
  v1 = *(v0 + 64);

  *(v0 + 136) = v1(v2);

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

{
  v21 = v0;
  v1 = *(v0 + 136);
  if (v1)
  {
    if (static UUID.== infix(_:_:)())
    {
      v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1B8);
      v19 = (v2 + *v2);
      v3 = swift_task_alloc();
      *(v0 + 144) = v3;
      *v3 = v0;
      v3[1] = closure #1 in AssetView.performViewModelUpdate(style:);

      return v19();
    }
  }

  v5 = *(v0 + 56);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 96);
  v10 = *(v0 + 56);
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    v13 = [v10 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_21607C000, v6, v7, "[%s] viewmodel out of date", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

{
  v38 = v0;
  if (*(v0 + 154) == 1)
  {
    v1 = *(v0 + 56);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 56);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v37 = v6;
      *v5 = 136315138;
      v7 = [v4 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v37);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_21607C000, v2, v3, "[%s] done rendering", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x21CE94770](v6, -1, -1);
      MEMORY[0x21CE94770](v5, -1, -1);
    }

    v12 = *(v0 + 136);
    v13 = *(v0 + 96);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 152);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v15;
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v18;
    *(v20 + 40) = v16;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #2 in closure #1 in AssetView.performViewModelUpdate(style:), v20);
  }

  else
  {

    v22 = *(v0 + 56);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 96);
    v27 = *(v0 + 56);
    if (v25)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v27 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_21607C000, v23, v24, "[%s] viewmodel out of date", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CE94770](v29, -1, -1);
      MEMORY[0x21CE94770](v28, -1, -1);
    }

    else
    {
    }
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t closure #1 in AssetView.performViewModelUpdate(style:)(char a1)
{
  *(*v1 + 153) = a1;

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

{
  *(*v1 + 154) = a1;

  return MEMORY[0x2822009F8](closure #1 in AssetView.performViewModelUpdate(style:), 0, 0);
}

uint64_t closure #1 in closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetView.performViewModelUpdate(style:), v7, v6);
}

uint64_t closure #1 in closure #1 in AssetView.performViewModelUpdate(style:)()
{
  v7 = v0;
  v1 = *(v0 + 16);
  v6 = *(v0 + 56);
  AssetView.updateViewStyle(style:)(&v6);
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in AssetView.performViewModelUpdate(style:);

  return v5();
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in AssetView.performViewModelUpdate(style:), v3, v2);
}

{
  v17 = v0;

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21607C000, v4, v5, "[%s] (pre-cached) rendering on screen", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #2 in closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](closure #2 in closure #1 in AssetView.performViewModelUpdate(style:), v7, v6);
}

uint64_t closure #2 in closure #1 in AssetView.performViewModelUpdate(style:)()
{
  v19 = v0;
  v17 = *(v0 + 64);
  AssetView.updateViewStyle(style:)(&v17);
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  *(v0 + 48) = __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = [v6 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_21607C000, v4, v5, "[%s] begin updateAndShowViews", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x21CE94770](v8, -1, -1);
    MEMORY[0x21CE94770](v7, -1, -1);
  }

  v16 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xF8) + **((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xF8));
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = closure #2 in closure #1 in AssetView.performViewModelUpdate(style:);

  return v16();
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #2 in closure #1 in AssetView.performViewModelUpdate(style:), v3, v2);
}

{
  v16 = v0;
  v1 = *(v0 + 16);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = [v5 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_21607C000, v3, v4, "[%s] rendering on screen", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t type metadata accessor for AssetView()
{
  result = type metadata singleton initialization cache for AssetView;
  if (!type metadata singleton initialization cache for AssetView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void type metadata completion function for AssetView()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AssetView.updateViewModelAndRender(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xE0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1);
}

uint64_t dispatch thunk of AssetView.updateAndShowViews()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5TA_26(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRScTyytSgADG_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_36(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterVideo(inputURL:outputURL:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t partial apply for closure #2 in closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #2 in closure #1 in AssetView.performViewModelUpdate(style:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t partial apply for closure #1 in closure #1 in AssetView.performViewModelUpdate(style:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in AssetView.performViewModelUpdate(style:)(a1, v4, v5, v6, v7);
}

id Image.__allocating_init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v5 = v4;
  v35 = a3;
  v32 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = objc_allocWithZone(v5);
  v33 = *a4;
  UUID.init()();
  v15 = *(v12 + 56);
  v15(&v14[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v11);
  v15(&v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v11);
  (*(v12 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v18 = v32;
  outlined init with copy of URL?(v32, v10);
  v19 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v20 = swift_allocObject();
  outlined init with take of URL?(v10, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v21 + 24) = v17;
  v22 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v22 = _s10Foundation3URLVIegr_ACSgIegr_TRTA_0;
  v22[1] = v21;
  v23 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v23 = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAKycfU0_TA_0;
  v23[1] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TA_0;
  *(v24 + 24) = v17;
  v25 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v25 = partial apply for closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
  v25[1] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAKycfU0_TA_0;
  *(v26 + 24) = v20;
  v27 = &v14[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v27 = partial apply for closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:);
  v27[1] = v26;
  v14[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = v35 & 1;
  v14[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v33;
  v36.receiver = v14;
  v36.super_class = v34;

  v28 = objc_msgSendSuper2(&v36, sel_init);
  outlined destroy of URL?(v18);
  (*(v12 + 8))(a1, v11);
  return v28;
}

id Image.__allocating_init(imageLightDataFuture:imageLightURLFuture:imageDarkDataFuture:imageDarkURLFuture:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char *a10)
{
  v15 = objc_allocWithZone(v10);
  v26 = *a10;
  UUID.init()();
  v16 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v18(&v15[v16], 1, 1, v17);
  v18(&v15[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v17);
  v19 = &v15[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v15[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v20 = a5;
  v20[1] = a6;
  v21 = &v15[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v15[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v22 = a7;
  v22[1] = a8;
  v15[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = a9 & 1;
  v15[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v26;
  v29.receiver = v15;
  v29.super_class = v10;
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t Image.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI5Image_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Image.primaryData.getter()
{
  result = (*(v0 + OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture))();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  return result;
}

uint64_t Image.primaryURL.getter@<X0>(char *a1@<X8>)
{

  return Image.primaryURL.getter(&OBJC_IVAR____TtC9MomentsUI5Image__primaryURL, &OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture, a1);
}

uint64_t Image.secondaryData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t Image.secondaryURL.getter@<X0>(char *a1@<X8>)
{

  return Image.primaryURL.getter(&OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL, &OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture, a1);
}

uint64_t Image.primaryURL.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v65 = a2;
  v5 = v3;
  v66[6] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v64 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - v24;
  v26 = *a1;
  swift_beginAccess();
  v62 = v26;
  outlined init with copy of URL?(v5 + v26, v17);
  v27 = *(v19 + 48);
  if (v27(v17, 1, v18) != 1)
  {
    v33 = *(v19 + 32);
    v33(v25, v17, v18);
    v33(a3, v25, v18);
    return (*(v19 + 56))(a3, 0, 1, v18);
  }

  v28 = a3;
  v29 = outlined destroy of URL?(v17);
  v30 = *(v5 + *v65);
  v31 = v5;
  if (!v30)
  {
    v32 = *(v19 + 56);
    v32(v12, 1, 1, v18);
    v32(v15, 1, 1, v18);
LABEL_7:
    if (v27(v12, 1, v18) != 1)
    {
      outlined destroy of URL?(v12);
    }

    goto LABEL_10;
  }

  v30(v29);
  if (v27(v12, 1, v18) == 1)
  {
    v32 = *(v19 + 56);
    v32(v15, 1, 1, v18);
    goto LABEL_7;
  }

  (*(v19 + 32))(v15, v12, v18);
  v32 = *(v19 + 56);
  v32(v15, 0, 1, v18);
LABEL_10:
  if (v27(v15, 1, v18) == 1)
  {
    outlined destroy of URL?(v15);
    return (v32)(v28, 1, 1, v18);
  }

  else
  {
    v65 = v31;
    v35 = *(v19 + 32);
    v36 = v64;
    v35();
    v37 = URL.pathExtension.getter();
    v39 = v38;

    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = v37 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v28;
    if (v40)
    {
      v42 = v63;
      (*(v19 + 16))(v63, v36, v18);
      v32(v42, 0, 1, v18);
      v43 = v62;
      v44 = v65;
      swift_beginAccess();
      outlined assign with take of URL?(v42, v44 + v43);
      swift_endAccess();
      (v35)(v41, v36, v18);
    }

    else
    {
      v60 = v35;
      URL.appendingPathExtension(_:)();
      v45 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v46);
      v48 = v47;
      URL._bridgeToObjectiveC()(v49);
      v51 = v50;
      v66[0] = 0;
      v52 = [v45 copyItemAtURL:v48 toURL:v50 error:v66];

      if (v52)
      {
        v53 = v66[0];
      }

      else
      {
        v54 = v66[0];
        v55 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v56 = v65;
      (*(v19 + 8))(v64, v18);
      v57 = v63;
      v58 = v61;
      (*(v19 + 16))(v63, v61, v18);
      v32(v57, 0, 1, v18);
      v59 = v62;
      swift_beginAccess();
      outlined assign with take of URL?(v57, v56 + v59);
      swift_endAccess();
      (v60)(v41, v58, v18);
    }

    return (v32)(v41, 0, 1, v18);
  }
}

void Image.assetClass.getter(BOOL *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Image__assetClass);
  if (v2 == 2)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture) != 0;
  }

  else
  {
    *a1 = v2 & 1;
  }
}

MomentsUI::Image::CodingKeys_optional __swiftcall Image.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Image.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Image.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x447972616D697270;
  v2 = 0x6870796C477369;
  if (a1 != 2)
  {
    v2 = 0x616C437465737361;
  }

  if (a1)
  {
    v1 = 0x7261646E6F636573;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Image.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000617461;
  v3 = 0x447972616D697270;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x6870796C477369;
  if (v4 != 2)
  {
    v6 = 0x616C437465737361;
    v5 = 0xEA00000000007373;
  }

  v7 = 0x7261646E6F636573;
  v8 = 0xED00006174614479;
  if (!*a1)
  {
    v7 = 0x447972616D697270;
    v8 = 0xEB00000000617461;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x6870796C477369;
  if (*a2 != 2)
  {
    v12 = 0x616C437465737361;
    v11 = 0xEA00000000007373;
  }

  if (*a2)
  {
    v3 = 0x7261646E6F636573;
    v2 = 0xED00006174614479;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Image.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Image.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Image.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Image.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Image.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Image.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000617461;
  v3 = 0x447972616D697270;
  v4 = 0xE700000000000000;
  v5 = 0x6870796C477369;
  if (*v1 != 2)
  {
    v5 = 0x616C437465737361;
    v4 = 0xEA00000000007373;
  }

  if (*v1)
  {
    v3 = 0x7261646E6F636573;
    v2 = 0xED00006174614479;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Image.CodingKeys()
{
  v1 = 0x447972616D697270;
  v2 = 0x6870796C477369;
  if (*v0 != 2)
  {
    v2 = 0x616C437465737361;
  }

  if (*v0)
  {
    v1 = 0x7261646E6F636573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Image.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Image.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Image.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Image.CodingKeys and conformance Image.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Image.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Image.CodingKeys and conformance Image.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id Image.__allocating_init(imageLightData:imageDarkData:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v12 = objc_allocWithZone(v6);
  v23 = *a6;
  UUID.init()();
  v13 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);
  v15(&v12[v13], 1, 1, v14);
  v15(&v12[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = &v12[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v17 = partial apply for closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:);
  v17[1] = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = &v12[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v19 = partial apply for closure #2 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:);
  v19[1] = v18;
  v20 = &v12[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v20 = closure #3 in DBAssetModel.init(from:);
  v20[1] = 0;
  v21 = &v12[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v21 = closure #3 in DBAssetModel.init(from:);
  v21[1] = 0;
  v12[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = a5 & 1;
  v12[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v23;
  v25.receiver = v12;
  v25.super_class = v6;
  return objc_msgSendSuper2(&v25, sel_init);
}

id Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v22 = *a6;
  UUID.init()();
  v12 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v13 = type metadata accessor for URL();
  v14 = *(*(v13 - 8) + 56);
  v14(&v6[v12], 1, 1, v13);
  v14(&v6[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = &v6[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v16 = closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
  v16[1] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = &v6[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v18 = closure #2 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
  v18[1] = v17;
  v19 = &v6[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v19 = closure #3 in DBAssetModel.init(from:);
  v19[1] = 0;
  v20 = &v6[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v20 = closure #3 in DBAssetModel.init(from:);
  v20[1] = 0;
  v6[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = a5 & 1;
  v6[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v22;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for Image();
  return objc_msgSendSuper2(&v23, sel_init);
}

id Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v35 = a3;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a4;
  UUID.init()();
  v14 = *(v11 + 56);
  v14(&v4[OBJC_IVAR____TtC9MomentsUI5Image__primaryURL], 1, 1, v10);
  v14(&v4[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v10);
  v15 = a1;
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  v18 = v33;
  outlined init with copy of URL?(v33, v9);
  v19 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v20 = swift_allocObject();
  outlined init with take of URL?(v9, v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v21 + 24) = v17;
  v22 = &v4[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v22 = thunk for @escaping @callee_guaranteed () -> (@out URL)partial apply;
  v22[1] = v21;
  v23 = &v4[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v23 = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  v23[1] = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v24 + 24) = v17;
  v25 = &v4[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v25 = closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  v25[1] = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = closure #2 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  *(v26 + 24) = v20;
  v27 = &v4[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v27 = closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)partial apply;
  v27[1] = v26;
  v4[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = v35 & 1;
  v4[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v34;
  v28 = type metadata accessor for Image();
  v36.receiver = v4;
  v36.super_class = v28;

  v29 = objc_msgSendSuper2(&v36, sel_init);
  outlined destroy of URL?(v18);
  (*(v11 + 8))(v15, v10);
  return v29;
}

uint64_t closure #1 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t closure #3 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = Data.init(contentsOf:options:)();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t closure #4 in Image.init(imageLightURL:imageDarkURL:isGlyph:assetClass:)(void (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a1(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = Data.init(contentsOf:options:)();
    (*(v6 + 8))(v9, v5);
    return v11;
  }
}

id Image.init(imageLightDataFuture:imageLightURLFuture:imageDarkDataFuture:imageDarkURLFuture:isGlyph:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char *a10)
{
  v25 = *a10;
  UUID.init()();
  v16 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v17 = type metadata accessor for URL();
  v18 = *(*(v17 - 8) + 56);
  v18(&v10[v16], 1, 1, v17);
  v18(&v10[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v17);
  v19 = &v10[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v10[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
  *v20 = a5;
  v20[1] = a6;
  v21 = &v10[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v10[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
  *v22 = a7;
  v22[1] = a8;
  v10[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = a9 & 1;
  v10[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v25;
  v28.receiver = v10;
  v28.super_class = type metadata accessor for Image();
  return objc_msgSendSuper2(&v28, sel_init);
}

_BYTE *Image.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI5ImageC10CodingKeysOGMd);
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v29 = OBJC_IVAR____TtC9MomentsUI5Image_uuid;
  UUID.init()();
  v8 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);
  v30 = v8;
  v10(&v3[v8], 1, 1, v9);
  v31 = OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL;
  v10(&v3[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL], 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Image.CodingKeys and conformance Image.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = type metadata accessor for UUID();
    (*(*(v22 - 8) + 8))(&v3[v29], v22);
    outlined destroy of URL?(&v3[v30]);
    outlined destroy of URL?(&v3[v31]);
    type metadata accessor for Image();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = a1;
    v11 = v28;
    v35 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v33;
    v13 = v34;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = &v3[OBJC_IVAR____TtC9MomentsUI5Image__primaryDataFuture];
    *v15 = closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
    v15[1] = v14;
    v35 = 1;
    v26 = v12;
    outlined copy of Data._Representation(v12, v13);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v33;
    v16 = v34;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v19 = &v3[OBJC_IVAR____TtC9MomentsUI5Image__secondaryDataFuture];
    *v19 = closure #2 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)partial apply;
    v19[1] = v18;
    v20 = &v3[OBJC_IVAR____TtC9MomentsUI5Image__primaryURLFuture];
    *v20 = closure #3 in DBAssetModel.init(from:);
    v20[1] = 0;
    v21 = &v3[OBJC_IVAR____TtC9MomentsUI5Image__secondaryURLFuture];
    *v21 = closure #3 in DBAssetModel.init(from:);
    v21[1] = 0;
    LOBYTE(v33) = 2;
    outlined copy of Data?(v17, v16);
    v3[OBJC_IVAR____TtC9MomentsUI5Image_isGlyph] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v35 = 3;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v11 + 8))(v7, v5);
    outlined consume of Data._Representation(v26, v13);
    outlined consume of Data?(v17, v16);
    v24 = v33;
    if (v33 == 2)
    {
      v24 = 0;
    }

    v3[OBJC_IVAR____TtC9MomentsUI5Image__assetClass] = v24;
    v25 = type metadata accessor for Image();
    v32.receiver = v3;
    v32.super_class = v25;
    v3 = objc_msgSendSuper2(&v32, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  return v3;
}

uint64_t Image.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI5ImageC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Image.CodingKeys and conformance Image.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v3) + 0x98))(v9);
  v19 = v11;
  v17 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    outlined consume of Data._Representation(v18, v19);
  }

  else
  {
    v12 = outlined consume of Data._Representation(v18, v19);
    v18 = (*((*v10 & *v3) + 0xC0))(v12);
    v19 = v13;
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
    LOBYTE(v18) = 2;
    v14 = KeyedEncodingContainer.encode(_:forKey:)();
    (*((*v10 & *v3) + 0xE8))(&v18, v14);
    v17 = v18;
    v16[14] = 3;
    lazy protocol witness table accessor for type DBAssetData.AssetClass and conformance DBAssetData.AssetClass();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Void __swiftcall Image.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  v6 = v5;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);
  v8 = MEMORY[0x21CE91FC0](0x447972616D697270, 0xEB00000000617461);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

  v9 = (*((*v3 & *v1) + 0xC0))();
  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = v9;
    v13 = v10;
    v11 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v12, v13);
  }

  v14 = MEMORY[0x21CE91FC0](0x7261646E6F636573, 0xED00006174614479);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC9MomentsUI5Image_isGlyph);
  v16 = MEMORY[0x21CE91FC0](0x6870796C477369, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeBool:v15 forKey:v16];
}

uint64_t Image.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI5Image_uuid;
  UUID.init()();
  v5 = OBJC_IVAR____TtC9MomentsUI5Image__primaryURL;
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL;
  v7(v2 + OBJC_IVAR____TtC9MomentsUI5Image__secondaryURL, 1, 1, v6);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSData);
  v9 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v9)
  {
    v10 = v9;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v2 + v4, v11);
  outlined destroy of URL?(v2 + v5);
  outlined destroy of URL?(v2 + v8);
  type metadata accessor for Image();
  swift_deallocPartialClassInstance();
  return 0;
}

id Image.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Image.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Image();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Image@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t specialized Image.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Image.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for closure #1 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t partial apply for closure #2 in Image.init(imageLightData:imageDarkData:isGlyph:assetClass:)()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t type metadata accessor for Image()
{
  result = type metadata singleton initialization cache for Image;
  if (!type metadata singleton initialization cache for Image)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAJycfU_TATm_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t _s9MomentsUI5ImageC13imageLightURL0d4DarkF07isGlyph10assetClassAC10Foundation0F0V_AJSgSbSgAA11DBAssetDataC05AssetK0OtcfcAKycfU0_TATm_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return outlined init with copy of URL?(v4, a1);
}

unint64_t lazy protocol witness table accessor for type Image.CodingKeys and conformance Image.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys;
  if (!lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys;
  if (!lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys;
  if (!lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys;
  if (!lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.CodingKeys and conformance Image.CodingKeys);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t instantiation function for generic protocol witness table for Image(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Image and conformance Image);
  result = lazy protocol witness table accessor for type Image and conformance Image(&lazy protocol witness table cache variable for type Image and conformance Image);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Image and conformance Image(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Image();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for Image()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

MomentsUI::EngagementUIContainer_optional __swiftcall EngagementUIContainer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EngagementUIContainer.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t EngagementUIContainer.rawValue.getter()
{
  v1 = 0x746E65636552;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6D6F636552;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EngagementUIContainer(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65636552;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E55;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E656D6D6F636552;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646564;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E65636552;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E55;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E656D6D6F636552;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646564;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type EngagementUIContainer and conformance EngagementUIContainer()
{
  result = lazy protocol witness table cache variable for type EngagementUIContainer and conformance EngagementUIContainer;
  if (!lazy protocol witness table cache variable for type EngagementUIContainer and conformance EngagementUIContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EngagementUIContainer and conformance EngagementUIContainer);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EngagementUIContainer()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EngagementUIContainer()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EngagementUIContainer()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance EngagementUIContainer(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646564;
  v4 = 0xE600000000000000;
  v5 = 0x746E65636552;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E656D6D6F636552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ClientMotionActivityViewModel.motionActivityIcon.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

void ClientMotionActivityViewModel.motionActivity.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity);
  *(a1 + 8) = v2;
}

uint64_t ClientMotionActivityViewModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_subtitle);

  return v1;
}

uint64_t ClientMotionActivityViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientMotionActivityViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientMotionActivityViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientMotionActivityViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientMotionActivityViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMotionActivityViewModel.init(from:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMotionActivityViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientMotionActivityViewModel.init(coder:)()
{
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientMotionActivityViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  objc_allocWithZone(type metadata accessor for MotionActivityView());
  v8 = v2;
  result = LabeledImageView.init(viewModel:style:)(v1, &v8);
  if (result)
  {
    v4 = one-time initialization token for accessibilityString;
    v5 = result;
    v6 = result;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v6 setAccessibilityLabel_];

    return v5;
  }

  return result;
}

uint64_t ClientMotionActivityViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientMotionActivityViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientMotionActivityViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for MotionActivityViewModel.motionActivity.getter in conformance ClientMotionActivityViewModel(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity);
  *(a1 + 8) = v2;
}

uint64_t protocol witness for MotionActivityViewModel.subtitle.getter in conformance ClientMotionActivityViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_subtitle);

  return v1;
}

uint64_t specialized ClientMotionActivityViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a3;
  v17[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_weakInit();
  outlined init with copy of DBObject(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBMotionActivityModel();
  if (swift_dynamicCast())
  {
    v8 = *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    v9 = *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
    if (v9)
    {
      v8 = 0;
    }

    v10 = &a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity];
    *v10 = v8;
    v10[8] = v9;
    *&a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_steps] = *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps);
    v11 = *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle + 8);
    v12 = &a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_subtitle];
    *v12 = *(v15 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    v12[1] = v11;
    swift_weakAssign();

    v13 = specialized AssetViewModel.init(clientDBObject:)(v15, a2);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMotionActivityViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientMotionActivityViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientMotionActivityViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientMotionActivityViewModel()
{
  result = type metadata singleton initialization cache for ClientMotionActivityViewModel;
  if (!type metadata singleton initialization cache for ClientMotionActivityViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in variable initialization expression of ShowMoreFooterView.showMoreButton()
{
  type metadata accessor for CapsuleButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for ShowMoreFooterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v19._object = 0x800000021657C8A0;
  v3._countAndFlagsBits = 0x726F4D20776F6853;
  v3._object = 0xE900000000000065;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000004ALL;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D769D0];
  v10 = v7;
  v11 = [v8 preferredFontForTextStyle_];
  v12 = [v11 fontDescriptor];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];

  if (v13)
  {
    v14 = [v8 fontWithDescriptor:v13 size:0.0];

    *(inited + 64) = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = MEMORY[0x21CE91FC0](v5._countAndFlagsBits, v5._object);

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithString:v16 attributes:isa];

    [v0 setAttributedTitle:v18 forState:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path setter for ShowMoreFooterView.showMoreAction : ShowMoreFooterView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((*MEMORY[0x277D85000] & **a2) + 0x68);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t ShowMoreFooterView.showMoreAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreAction);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ShowMoreFooterView.showMoreAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreAction);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton)) + 0x60))(a1, a2);
}

void (*ShowMoreFooterView.showMoreAction.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreAction;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ShowMoreFooterView.showMoreAction.modify;
}

void ShowMoreFooterView.showMoreAction.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = *((*MEMORY[0x277D85000] & **(v4 + OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton)) + 0x60);

    v8(v6, v7);
  }

  free(v3);
}

id ShowMoreFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ShowMoreFooterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton;
  closure #1 in variable initialization expression of ShowMoreFooterView.showMoreButton();
  *&v4[v9] = v10;
  v11 = &v4[OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreAction];
  *v11 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  *(v11 + 1) = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for ShowMoreFooterView();
  v12 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton;
  v14 = *&v12[OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton];
  v15 = v12;
  [v15 addSubview_];
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21658E180;
  v19 = [*&v12[v13] centerXAnchor];
  v20 = [v15 centerXAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v18 + 32) = v21;
  v22 = [*&v12[v13] topAnchor];
  v23 = [v15 topAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];
  *(v18 + 40) = v24;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints_];

  return v15;
}

id ShowMoreFooterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ShowMoreFooterView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreButton;
  closure #1 in variable initialization expression of ShowMoreFooterView.showMoreButton();
  *(v0 + v1) = v2;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI18ShowMoreFooterView_showMoreAction);
  *v3 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ShowMoreFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShowMoreFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DBStateOfMindModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 *a21)
{
  v91 = a8;
  v96 = a7;
  v88 = a6;
  v94 = a5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  v89 = &v66 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v87 = &v66 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v66 - v31;
  v82 = type metadata accessor for DateInterval();
  v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v95 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v81 = *a21;
  v85 = v38;
  v39 = *(v38 + 16);
  v83 = &v66 - v40;
  v93 = a1;
  v39();
  v84 = v37;
  v92 = a2;
  v86 = v34;
  (v39)(v37, a2, v34);
  if (a3)
  {
    v77 = a3;
  }

  else
  {
    if (one-time initialization token for zero != -1)
    {
      swift_once();
    }

    v77 = static ScreenSize.zero;
  }

  v41 = v94;
  v79 = a20;
  v80 = a9;
  v42 = *(a4 + 16);
  if (v42)
  {
    v76 = v21;
    v98 = MEMORY[0x277D84F90];
    v43 = a3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v44 = v98;
    v45 = *(v98 + 16);
    v46 = 32;
    do
    {
      v47 = *(a4 + v46);
      v98 = v44;
      v48 = *(v44 + 24);
      if (v45 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v45 + 1, 1);
        v44 = v98;
      }

      *(v44 + 16) = v45 + 1;
      *(v44 + v45 + 32) = v47;
      ++v46;
      ++v45;
      --v42;
    }

    while (v42);

    v21 = v76;
    v41 = v94;
  }

  else
  {
    v49 = a3;

    v44 = MEMORY[0x277D84F90];
  }

  v76 = a19;
  v75 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v71 = a14;
  v70 = a13;
  v69 = a12;
  v68 = a11;
  v67 = a10;
  outlined init with copy of DateInterval?(v96, v32, &_s10Foundation12DateIntervalVSgMd);
  v50 = v78;
  v51 = *(v78 + 48);
  v52 = v82;
  v53 = v51(v32, 1, v82);
  v90 = a3;
  if (v53 == 1)
  {
    DateInterval.init()();
    if (v51(v32, 1, v52) != 1)
    {
      outlined destroy of UTType?(v32, &_s10Foundation12DateIntervalVSgMd);
    }
  }

  else
  {
    (*(v50 + 32))(v95, v32, v52);
  }

  if (v88)
  {
    v54 = v88;
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  if (v88)
  {
    v55 = v41;
  }

  else
  {
    v55 = 0;
  }

  v56 = v91;
  v57 = specialized static DBAssetModel.baseImage2DB(_:)(v91);
  v58 = v80;
  v59 = v87;
  outlined init with copy of DateInterval?(v80, v87, &_s9MomentsUI11StateOfMindVSgMd);
  v60 = v79;
  v61 = v89;
  outlined init with copy of DateInterval?(v79, v89, &_s10Foundation4UUIDVSgMd);
  v97 = v81;
  v62 = (*(v21 + 464))(v83, v84, v77, v44, v55, v54, v95, v57, v59, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v61, &v97);

  outlined destroy of UTType?(v60, &_s10Foundation4UUIDVSgMd);
  outlined destroy of UTType?(v58, &_s9MomentsUI11StateOfMindVSgMd);
  outlined destroy of UTType?(v96, &_s10Foundation12DateIntervalVSgMd);
  v63 = v86;
  v64 = *(v85 + 8);
  v64(v92, v86);
  v64(v93, v63);
  return v62;
}

uint64_t DBStateOfMindModel.shortTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);

  return v1;
}

uint64_t DBStateOfMindModel.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);

  return v1;
}

uint64_t DBStateOfMindModel.shortSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);

  return v1;
}

uint64_t DBStateOfMindModel.subheading.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);

  return v1;
}

uint64_t DBStateOfMindModel.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x4D664F6574617473;
  if (a1 > 3u)
  {
    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v4 = 0xD000000000000015;
    if (a1 == 4)
    {
      v4 = 0x6964616568627573;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x656C746974627573;
    if (a1 != 2)
    {
      v2 = 0x62755374726F6873;
    }

    if (a1)
    {
      v1 = 0x74695474726F6873;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBStateOfMindModel.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DBStateOfMindModel.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DBStateOfMindModel.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBStateOfMindModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBStateOfMindModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DBStateOfMindModel.CodingKeys()
{
  DBStateOfMindModel.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBStateOfMindModel.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DBStateOfMindModel.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBStateOfMindModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBStateOfMindModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DBStateOfMindModel.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = DBStateOfMindModel.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBStateOfMindModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBStateOfMindModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBStateOfMindModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBStateOfMindModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBStateOfMindModel.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v34 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI18DBStateOfMindModelC10CodingKeysOGMd);
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = v34 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v33 = v3;
    __swift_destroy_boxed_opaque_existential_1(v37);
    type metadata accessor for DBStateOfMindModel();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v7;
    v15 = v11;
    type metadata accessor for StateOfMind();
    LOBYTE(v38[0]) = 0;
    lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type StateOfMind and conformance StateOfMind, type metadata accessor for StateOfMind);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v3;
    outlined init with take of URL?(v10, v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, &_s9MomentsUI11StateOfMindVSgMd);
    LOBYTE(v38[0]) = 1;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = (v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
    *v19 = v18;
    v19[1] = v20;
    LOBYTE(v38[0]) = 2;
    v34[1] = 0;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v15;
    v23 = (v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
    *v23 = v21;
    v23[1] = v24;
    LOBYTE(v38[0]) = 3;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = (v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v38[0]) = 4;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = (v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI5ColorVGMd);
    v39 = 5;
    lazy protocol witness table accessor for type [Color] and conformance <A> [A](&lazy protocol witness table cache variable for type [Color] and conformance <A> [A], lazy protocol witness table accessor for type Color and conformance Color);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors) = v38[0];
    v39 = 6;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors) = v38[0];
    type metadata accessor for UUID();
    LOBYTE(v38[0]) = 7;
    lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v32 = v35;
    v31 = v36;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of URL?(v32, v17 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, &_s10Foundation4UUIDVSgMd);
    KeyedDecodingContainer.superDecoder()();
    v33 = DBAssetModel.init(from:)(v38);
    (*(v22 + 8))(v13, v31);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return v33;
}

uint64_t DBStateOfMindModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI18DBStateOfMindModelC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10[0]) = 0;
  type metadata accessor for StateOfMind();
  lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type StateOfMind and conformance StateOfMind, type metadata accessor for StateOfMind);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v10[0]) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors);
    v11 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI5ColorVGMd);
    lazy protocol witness table accessor for type [Color] and conformance <A> [A](&lazy protocol witness table cache variable for type [Color] and conformance <A> [A], lazy protocol witness table accessor for type Color and conformance Color);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10[0] = *(v3 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors);
    v11 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10[0]) = 7;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    KeyedEncodingContainer.superEncoder()();
    DBAssetModel.encode(to:)(v10);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int DBStateOfMindModel.metadataHash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  Hasher.init()();
  outlined init with copy of DateInterval?(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, v7, &_s10Foundation4UUIDVSgMd);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher.finalize()();
}

uint64_t DBStateOfMindModel.__allocating_init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(uint64_t a1, uint64_t a2, void *a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int64_t a18, void (**a19)(char *, uint64_t, uint64_t), uint64_t a20, unsigned __int8 *a21)
{
  swift_allocObject();
  v29 = specialized DBStateOfMindModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);

  return v29;
}

uint64_t DBStateOfMindModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(uint64_t a1, uint64_t a2, void *a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int64_t a18, void (**a19)(char *, uint64_t, uint64_t), uint64_t a20, unsigned __int8 *a21)
{
  v22 = specialized DBStateOfMindModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);

  return v22;
}

uint64_t DBStateOfMindModel.__ivar_destroyer()
{
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, &_s9MomentsUI11StateOfMindVSgMd);

  return outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, &_s10Foundation4UUIDVSgMd);
}

uint64_t DBStateOfMindModel.deinit()
{
  v0 = DBAssetModel.deinit();
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, &_s9MomentsUI11StateOfMindVSgMd);

  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, &_s10Foundation4UUIDVSgMd);
  return v0;
}

uint64_t DBStateOfMindModel.__deallocating_deinit()
{
  DBStateOfMindModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized static DBStateOfMindModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID;
  v15 = *(v11 + 56);
  outlined init with copy of DateInterval?(a1 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, &v21 - v12, &_s10Foundation4UUIDVSgMd);
  outlined init with copy of DateInterval?(a2 + v14, &v13[v15], &_s10Foundation4UUIDVSgMd);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v13, v9, &_s10Foundation4UUIDVSgMd);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = v22;
      (*(v5 + 32))(v22, &v13[v15], v4);
      lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v18, v4);
      v19(v9, v4);
      outlined destroy of UTType?(v13, &_s10Foundation4UUIDVSgMd);
      return v17 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of UTType?(v13, &_s10Foundation4UUIDVSg_ADtMd);
    v17 = 0;
    return v17 & 1;
  }

  outlined destroy of UTType?(v13, &_s10Foundation4UUIDVSgMd);
  v17 = 1;
  return v17 & 1;
}

uint64_t specialized DBStateOfMindModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:stateOfMind:shortTitle:subtitle:shortSubtitle:subheading:lightBackgroundColors:darkBackgroundColors:stateOfMindUUID:renderState:)(uint64_t a1, uint64_t a2, void *a3, unsigned int (**a4)(uint64_t, uint64_t, uint64_t), void (**a5)(char *, uint64_t, uint64_t, uint64_t), unsigned int (**a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int64_t a18, void (**a19)(char *, uint64_t, uint64_t), uint64_t a20, unsigned __int8 *a21)
{
  v22 = v21;
  *&v149 = a8;
  v137 = a7;
  v144 = a6;
  v143 = a5;
  v142 = a4;
  v141 = a3;
  v139 = a19;
  v138 = a18;
  v135 = a17;
  v133 = a16;
  v131 = a15;
  v130 = a14;
  v129 = a13;
  v128 = a12;
  v127 = a11;
  v126 = a10;
  v125 = a21;
  v148 = *v22;
  v124 = type metadata accessor for Date();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v26 - 8);
  *&v147 = &v115 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
  MEMORY[0x28223BE20](v28 - 8);
  v146 = &v115 - v29;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
  v132 = *(v145 - 8);
  v30 = MEMORY[0x28223BE20](v145);
  v118 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v117 = &v115 - v32;
  v136 = type metadata accessor for DateInterval();
  v33 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v140 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v115 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v115 - v42;
  LODWORD(v125) = *v125;
  v121 = a9;
  outlined init with copy of DateInterval?(a9, v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, &_s9MomentsUI11StateOfMindVSgMd);
  v44 = (v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
  v45 = v127;
  *v44 = v126;
  v44[1] = v45;
  v46 = (v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
  v47 = v129;
  *v46 = v128;
  v46[1] = v47;
  v48 = (v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
  v49 = v131;
  *v48 = v130;
  v48[1] = v49;
  v50 = (v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
  v51 = v135;
  *v50 = v133;
  v50[1] = v51;
  *(v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors) = v138;
  *(v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors) = v139;
  v128 = a20;
  outlined init with copy of DateInterval?(a20, v22 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMindUUID, &_s10Foundation4UUIDVSgMd);
  v135 = v36;
  v52 = *(v36 + 16);
  v130 = a1;
  v52(v43, a1, v35);
  v129 = a2;
  v52(v41, a2, v35);
  v133 = type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(v148, &v151);
  LODWORD(v138) = v151;
  v127 = v33;
  v53 = *(v33 + 16);
  v54 = v134;
  v55 = v136;
  v53(v134, v137, v136);
  *(v22 + 16) = 0;
  v139 = (v22 + 16);
  v131 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id;
  v120 = v43;
  v56 = v43;
  v57 = v149;
  v52((v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_id), v56, v35);
  v116 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID;
  v126 = v41;
  v148 = v35;
  v52((v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetID), v41, v35);
  *(v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass) = v138;
  v58 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport;
  v59 = v141;
  *(v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport) = v141;
  *(v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_supportedStyles) = v142;
  v60 = (v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
  v61 = v144;
  *v60 = v143;
  v60[1] = v61;
  v144 = OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval;
  v53((v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval), v54, v55);
  v62 = v59;
  v63 = specialized Dictionary.compactMapValues<A>(_:)(v57);
  v119 = 0;
  *(v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel__assetDataID) = v63;
  v133 = MEMORY[0x277D84F90];
  *(v22 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_children) = MEMORY[0x277D84F90];
  v64 = v63;
  swift_beginAccess();
  v131 = v22;
  *(v22 + 16) = v125;
  v65 = v57 + 64;
  v66 = 1 << *(v57 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v57 + 64);
  v69 = (v66 + 63) >> 6;
  v144 = (v135 + 48);
  v139 = (v135 + 32);
  v143 = (v132 + 56);
  v142 = (v132 + 48);
  v125 = v64;

  v70 = 0;
  v138 = v69;
  while (v68)
  {
    v71 = v70;
LABEL_9:
    v72 = __clz(__rbit64(v68)) | (v71 << 6);
    v73 = *(v57 + 56);
    v74 = *(*(v57 + 48) + 16 * v72 + 8);
    v75 = *(v73 + 8 * v72);
    v76 = *(*v75 + 192);

    v78 = v147;
    v76(v77);
    v58 = v148;
    if ((*v144)(v78, 1, v148) == 1)
    {
      outlined destroy of UTType?(v78, &_s10Foundation4UUIDVSgMd);
      v79 = v146;
      v22 = v145;
      (*v143)(v146, 1, 1, v145);
    }

    else
    {
      v141 = v74;
      v80 = *v139;
      v81 = v65;
      v82 = v140;
      (*v139)(v140, v78, v58);
      v83 = v58;
      v22 = v145;
      v58 = *(v145 + 48);
      v79 = v146;
      v84 = v82;
      v65 = v81;
      v69 = v138;
      v80(v146, v84, v83);
      *(v79 + v58) = v75;
      (*v143)(v79, 0, 1, v22);
    }

    v68 &= v68 - 1;

    if ((*v142)(v79, 1, v22) == 1)
    {
      outlined destroy of UTType?(v79, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtSgMd);
      v70 = v71;
      v57 = v149;
    }

    else
    {
      v85 = v117;
      outlined init with take of URL?(v79, v117, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      outlined init with take of URL?(v85, v118, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133[2] + 1, 1, v133);
      }

      v87 = v133[2];
      v86 = v133[3];
      v88 = v132;
      if (v87 >= v86 >> 1)
      {
        v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1, v133);
        v88 = v132;
        v133 = v90;
      }

      v89 = v133;
      v133[2] = v87 + 1;
      outlined init with take of URL?(v118, v89 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
      v70 = v71;
      v57 = v149;
    }
  }

  while (1)
  {
    v71 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      __break(1u);

      v113 = *(v135 + 8);
      v114 = v148;
      v113(v22 + v131, v148);
      v113(v22 + v116, v114);

      (*(v127 + 8))(v144 + v22, v136);
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_25;
    }

    if (v71 >= v69)
    {
      break;
    }

    v68 = *(v65 + 8 * v71);
    ++v70;
    if (v68)
    {
      goto LABEL_9;
    }
  }

  if (v133[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI11DBAssetDataCGMd);
    v91 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v91 = MEMORY[0x277D84F98];
  }

  v92 = v131;
  v93 = v135;
  v150 = v91;

  v95 = v119;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v94, 1, &v150);
  if (!v95)
  {

    v96 = v150;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    v98 = (v92 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataLookup);
    *v98 = partial apply for closure #3 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v98[1] = v97;
    v99 = swift_allocObject();
    *(v99 + 16) = v96;
    v100 = (v92 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetDataGet);
    *v100 = partial apply for closure #4 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    v100[1] = v99;
    v101 = (v92 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetURLGet);
    *v101 = closure #3 in DBAssetModel.init(from:);
    v101[1] = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v125;
    swift_beginAccess();
    v149 = *v98;
    swift_beginAccess();
    v147 = *v100;
    swift_beginAccess();
    v103 = *v101;
    v104 = v101[1];
    v105 = v92 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetData;
    *v105 = partial apply for closure #6 in DBAssetModel.init(id:assetID:assetClass:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:children:renderState:renderableContentHash:);
    *(v105 + 8) = v102;
    v106 = v147;
    *(v105 + 16) = v149;
    *(v105 + 32) = v106;
    *(v105 + 48) = v103;
    *(v105 + 56) = v104;

    v107 = v122;
    static Date.now.getter();
    outlined destroy of UTType?(v128, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v121, &_s9MomentsUI11StateOfMindVSgMd);
    v108 = *(v127 + 8);
    v109 = v136;
    v108(v137, v136);
    v110 = *(v93 + 8);
    v111 = v148;
    v110(v129, v148);
    v110(v130, v111);
    v108(v134, v109);
    v110(v126, v111);
    v110(v120, v111);
    (*(v123 + 32))(v92 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_creationDate, v107, v124);
    return v92;
  }

LABEL_25:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t specialized DBStateOfMindModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBStateOfMindModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DBStateOfMindModel.CodingKeys and conformance DBStateOfMindModel.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for DBStateOfMindModel()
{
  result = type metadata singleton initialization cache for DBStateOfMindModel;
  if (!type metadata singleton initialization cache for DBStateOfMindModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Color] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI5ColorVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for DBStateOfMindModel()
{
  type metadata accessor for StateOfMind?(319, &lazy cache variable for type metadata for StateOfMind?, type metadata accessor for StateOfMind);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StateOfMind?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for StateOfMind?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DBStateOfMindModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DBStateOfMindModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StateOfMind and conformance StateOfMind(unint64_t *a1, void (*a2)(uint64_t))
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

double ScreenSize.cgSize.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  (*((*v1 & *v0) + 0x78))();
  return v2;
}

uint64_t ScreenSize.__allocating_init(size:)(double a1, double a2)
{
  v3 = a1;
  v4 = a2;
  return (*(v2 + 144))(v3, v4);
}

Swift::Int AssetGridStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](v1);
  return Hasher._finalize()();
}

void *AssetGridView.gridCollectionView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_gridCollectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AssetGridView.gridCollectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_gridCollectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t one-time initialization function for contactRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.contactRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.contactRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static ContactCollectionViewAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.contactRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for contactRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.contactRegistration);
}

uint64_t static AssetGridView.contactRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for contactRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.contactRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for mapRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.mapRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.mapRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MapCollectionViewAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.mapRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for mapRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.mapRegistration);
}

uint64_t static AssetGridView.mapRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for mapRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.mapRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for mapSmallRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.mapSmallRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.mapSmallRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MapCollectionViewSmallAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.mapSmallRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for mapSmallRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.mapSmallRegistration);
}

uint64_t static AssetGridView.mapSmallRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for mapSmallRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.mapSmallRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for mapMediumRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.mapMediumRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.mapMediumRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MapCollectionViewMediumAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.mapMediumRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for mapMediumRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.mapMediumRegistration);
}

uint64_t static AssetGridView.mapMediumRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for mapMediumRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.mapMediumRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for workoutRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.workoutRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.workoutRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static WorkoutCollectionViewAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.workoutRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for workoutRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.workoutRegistration);
}

uint64_t static AssetGridView.workoutRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for workoutRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.workoutRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for workoutSmallRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.workoutSmallRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.workoutSmallRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static WorkoutCollectionViewSmallAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.workoutSmallRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for workoutSmallRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.workoutSmallRegistration);
}

uint64_t static AssetGridView.workoutSmallRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for workoutSmallRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.workoutSmallRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for workoutLandscapeRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.workoutLandscapeRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.workoutLandscapeRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static WorkoutCollectionViewLandscapeAssetCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.workoutLandscapeRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for workoutLandscapeRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.workoutLandscapeRegistration);
}

uint64_t static AssetGridView.workoutLandscapeRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for workoutLandscapeRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.workoutLandscapeRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for motionRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.motionRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.motionRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MotionActivityCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.motionRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for motionRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.motionRegistration);
}

uint64_t static AssetGridView.motionRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for motionRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.motionRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for motionLandscapeRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.motionLandscapeRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.motionLandscapeRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MotionActivityCollectionViewLandscapeCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.motionLandscapeRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for motionLandscapeRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.motionLandscapeRegistration);
}

uint64_t static AssetGridView.motionLandscapeRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for motionLandscapeRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.motionLandscapeRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for motionSmallRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.motionSmallRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.motionSmallRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MotionActivityCollectionViewSmallCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.motionSmallRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for motionSmallRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.motionSmallRegistration);
}

uint64_t static AssetGridView.motionSmallRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for motionSmallRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.motionSmallRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for photoRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.photoRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.photoRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static PhotoCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.photoRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for photoRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.photoRegistration);
}

uint64_t static AssetGridView.photoRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for photoRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.photoRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for livePhotoRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.livePhotoRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.livePhotoRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static LivePhotoCollectionCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.livePhotoRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for livePhotoRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.livePhotoRegistration);
}

uint64_t static AssetGridView.livePhotoRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for livePhotoRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.livePhotoRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for videoRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.videoRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.videoRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static VideoCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.videoRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for videoRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.videoRegistration);
}

uint64_t static AssetGridView.videoRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for videoRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.videoRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for firstPartyMediaRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.firstPartyMediaRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.firstPartyMediaRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MediaFirstPartyCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.firstPartyMediaRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for firstPartyMediaRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.firstPartyMediaRegistration);
}

uint64_t static AssetGridView.firstPartyMediaRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for firstPartyMediaRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.firstPartyMediaRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for firstPartyMediaLandscapeRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.firstPartyMediaLandscapeRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.firstPartyMediaLandscapeRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.firstPartyMediaLandscapeRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for firstPartyMediaLandscapeRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.firstPartyMediaLandscapeRegistration);
}

uint64_t static AssetGridView.firstPartyMediaLandscapeRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for firstPartyMediaLandscapeRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.firstPartyMediaLandscapeRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for thirdPartyMediaRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.thirdPartyMediaRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.thirdPartyMediaRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static MediaThirdPartyCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.thirdPartyMediaRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for thirdPartyMediaRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.thirdPartyMediaRegistration);
}

uint64_t static AssetGridView.thirdPartyMediaRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for thirdPartyMediaRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.thirdPartyMediaRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for stateOfMindRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.stateOfMindRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.stateOfMindRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static StateOfMindCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.stateOfMindRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for stateOfMindRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.stateOfMindRegistration);
}

uint64_t static AssetGridView.stateOfMindRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for stateOfMindRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.stateOfMindRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for stateOfMindSmallRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.stateOfMindSmallRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.stateOfMindSmallRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static StateOfMindCollectionViewSmallCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.stateOfMindSmallRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for stateOfMindSmallRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.stateOfMindSmallRegistration);
}

uint64_t static AssetGridView.stateOfMindSmallRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for stateOfMindSmallRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.stateOfMindSmallRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for stateOfMindHorizontalRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.stateOfMindHorizontalRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.stateOfMindHorizontalRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static StateOfMindHorizontalCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.stateOfMindHorizontalRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for stateOfMindHorizontalRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.stateOfMindHorizontalRegistration);
}

uint64_t static AssetGridView.stateOfMindHorizontalRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for stateOfMindHorizontalRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.stateOfMindHorizontalRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for posterRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.posterRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.posterRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static PosterCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.posterRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for posterRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.posterRegistration);
}

uint64_t static AssetGridView.posterRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for posterRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.posterRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for posterSmallRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.posterSmallRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.posterSmallRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static PosterSmallCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.posterSmallRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for posterSmallRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.posterSmallRegistration);
}

uint64_t static AssetGridView.posterSmallRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for posterSmallRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.posterSmallRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for posterHorizontalRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static AssetGridView.posterHorizontalRegistration);
  v1 = __swift_project_value_buffer(v0, static AssetGridView.posterHorizontalRegistration);
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static PosterHorizontalCollectionViewCell.registration);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AssetGridView.posterHorizontalRegistration.unsafeMutableAddressor()
{
  if (one-time initialization token for posterHorizontalRegistration != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);

  return __swift_project_value_buffer(v0, static AssetGridView.posterHorizontalRegistration);
}

uint64_t static AssetGridView.posterHorizontalRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for posterHorizontalRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static AssetGridView.posterHorizontalRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t AssetGridView.assets.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_assets;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return (*((*MEMORY[0x277D85000] & *v1) + 0x168))(v4);
}

uint64_t (*AssetGridView.assets.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return AssetGridView.assets.modify;
}

uint64_t AssetGridView.assets.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & **(a1 + 24)) + 0x168))(result);
  }

  return result;
}

uint64_t AssetGridView.totalAssetCount.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_totalAssetCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AssetGridView.totalAssetCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_totalAssetCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::OpaquePointer_optional __swiftcall AssetGridView.orderedAssetsForDisplay(_:)(Swift::OpaquePointer_optional result)
{
  if (result.value._rawValue)
  {
    rawValue = result.value._rawValue;
    v46 = result.value._rawValue;
    if (result.value._rawValue >> 62)
    {
      goto LABEL_93;
    }

    for (i = *((result.value._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v43 = rawValue & 0xFFFFFFFFFFFFFF8;
      v44 = rawValue & 0xC000000000000001;

      v3 = 0;
      v42 = rawValue;
      while (1)
      {
        if (v44)
        {
          v4 = MEMORY[0x21CE93180](v3, rawValue);
        }

        else
        {
          if (v3 >= *(v43 + 16))
          {
            goto LABEL_90;
          }

          v4 = *(rawValue + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = *&v4[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
        if (!v6)
        {
          goto LABEL_21;
        }

        if (v6 >> 62)
        {
          if (!__CocoaSet.count.getter())
          {
            goto LABEL_21;
          }
        }

        else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CE93180](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;
        swift_getObjectType();
        v9 = swift_conformsToProtocol2();
        if (v9)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {

LABEL_21:
          goto LABEL_22;
        }

        v12 = v9;
        ObjectType = swift_getObjectType();
        v14 = *(v12 + 64);
        v15 = v8;
        v16 = ObjectType;
        rawValue = v42;
        v17 = v14(v16, v12);

        if ((v17 & 1) == 0)
        {
          (*((*MEMORY[0x277D85000] & *v40) + 0x108))(&v45);
          if (v45 == 1)
          {
            if (v41)
            {
              v20 = __CocoaSet.count.getter();
              if (v3 > 4 || v20 < 5)
              {
                v29 = __CocoaSet.count.getter();
                if (v3 == 2 || v29 != 3)
                {
                  v18 = __CocoaSet.count.getter();
                  goto LABEL_55;
                }

                goto LABEL_57;
              }
            }

            else
            {
              v18 = *(v43 + 16);
              if (v3 > 4 || v18 <= 4)
              {
                if (v3 == 2 || v18 != 3)
                {
LABEL_55:
                  if (v3 <= 2 && v18 == 4)
                  {
                    goto LABEL_57;
                  }

LABEL_65:
                  v31 = 0;
                  while (2)
                  {
                    if (v44)
                    {
                      v32 = MEMORY[0x21CE93180](v31, rawValue);
                    }

                    else
                    {
                      if (v31 >= *(v43 + 16))
                      {
                        goto LABEL_92;
                      }

                      v32 = *(rawValue + 8 * v31 + 32);
                    }

                    v33 = v32;
                    v34 = *&v32[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
                    if (v34)
                    {
                      if (v34 >> 62)
                      {
                        if (__CocoaSet.count.getter())
                        {
                          goto LABEL_73;
                        }
                      }

                      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
LABEL_73:
                        if ((v34 & 0xC000000000000001) != 0)
                        {
                          v35 = MEMORY[0x21CE93180](0, v34);
                        }

                        else
                        {
                          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_91;
                          }

                          v35 = *(v34 + 32);
                        }

                        v36 = v35;

                        swift_getObjectType();
                        v37 = swift_conformsToProtocol2();

                        if (v37)
                        {
                          v38 = v36 == 0;
                        }

                        else
                        {
                          v38 = 1;
                        }

                        if (!v38)
                        {
                          specialized MutableCollection.swapAt(_:_:)(v31, 0);
                          goto LABEL_95;
                        }

                        goto LABEL_83;
                      }
                    }

LABEL_83:
                    v39 = v31 + 1;
                    if (__OFADD__(v31, 1))
                    {
                      goto LABEL_88;
                    }

                    ++v31;
                    if (v39 == i)
                    {
                      goto LABEL_95;
                    }

                    continue;
                  }
                }

LABEL_57:
                if (one-time initialization token for views != -1)
                {
                  swift_once();
                }

                v30 = type metadata accessor for Logger();
                __swift_project_value_buffer(v30, static CommonLogger.views);
                v22 = Logger.logObject.getter();
                v27 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v22, v27))
                {
                  v25 = swift_slowAlloc();
                  *v25 = 0;
                  v28 = "[orderedForDisplay] adjusting map position to fix in top right (mediumHoriziontal top), FULLWIDTH";
LABEL_61:
                  _os_log_impl(&dword_21607C000, v22, v27, v28, v25, 2u);
                  v24 = 1;
LABEL_62:
                  MEMORY[0x21CE94770](v25, -1, -1);
                  goto LABEL_64;
                }

LABEL_63:
                v24 = 1;
                goto LABEL_64;
              }
            }

            if (one-time initialization token for views != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for Logger();
            __swift_project_value_buffer(v21, static CommonLogger.views);
            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.default.getter();
            v24 = 2;
            if (os_log_type_enabled(v22, v23))
            {
              v25 = swift_slowAlloc();
              *v25 = 0;
              _os_log_impl(&dword_21607C000, v22, v23, "[orderedForDisplay] adjusting map position to fix in top right (small), FULLWIDTH", v25, 2u);
              goto LABEL_62;
            }

LABEL_64:

            specialized MutableCollection.swapAt(_:_:)(v3, v24);
            goto LABEL_65;
          }

          if (v41)
          {
            v19 = __CocoaSet.count.getter();
          }

          else
          {
            v19 = *(v43 + 16);
          }

          if (v3 > 3 || v19 < 4)
          {
            goto LABEL_65;
          }

          if (one-time initialization token for views != -1)
          {
            swift_once();
          }

          v26 = type metadata accessor for Logger();
          __swift_project_value_buffer(v26, static CommonLogger.views);
          v22 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v27))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            v28 = "[orderedForDisplay] adjusting map position to fix in top right (small), HALFWIDT";
            goto LABEL_61;
          }

          goto LABEL_63;
        }

LABEL_22:
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        ++v3;
        if (v11 == i)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      ;
    }

LABEL_95:
    result.value._rawValue = v46;
  }

  return result;
}

void specialized MutableCollection.swapAt(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x21CE93180](a1, *v2);
      v9 = MEMORY[0x21CE93180](a2, v6);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > a1)
      {
        if (v7 > a2)
        {
          v8 = *(v6 + 32 + 8 * a2);
          v3 = *(v6 + 32 + 8 * a1);
          v9 = v8;
LABEL_7:
          v10 = v9;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            v11 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v11) = 0;
          }

          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

          if ((v6 & 0x8000000000000000) == 0 && !v11)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v12 + 16) > a2)
            {
              v14 = v12 + 8 * a2;
              v15 = *(v14 + 32);
              *(v14 + 32) = v3;

              *v2 = v6;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t AssetGridView.style.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t AssetGridView.style.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_style;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v2;
    return (*((*MEMORY[0x277D85000] & *v1) + 0x160))(&v6);
  }

  return result;
}

void (*AssetGridView.style.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return AssetGridView.style.modify;
}

void AssetGridView.style.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      v7 = v2[3];
      v9 = v5;
      (*((*MEMORY[0x277D85000] & *v7) + 0x160))(&v9);
    }
  }

  else if ((v5 ^ v6))
  {
    v8 = v2[3];
    v10 = v5;
    (*((*MEMORY[0x277D85000] & *v8) + 0x160))(&v10);
  }

  free(v2);
}

Swift::Int __swiftcall AssetGridView.maxAssetCount()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x108))(&var1);
  if (var1)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t key path setter for AssetGridView.suggestionID : AssetGridView(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of UUID?(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x130))(v6);
}

uint64_t AssetGridView.suggestionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_suggestionID;
  swift_beginAccess();
  return outlined init with copy of UUID?(v1 + v3, a1);
}

uint64_t AssetGridView.suggestionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_suggestionID;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AssetGridView.configureAssets(assets:style:suggestionID:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = v3;
  v77 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v72[0] = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v76 = v72 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v72 - v12;
  v14 = type metadata accessor for OSSignpostID();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v72 - v19;
  v75 = *a2;
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v21, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = v20;
    v25 = v15;
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v22, v23, v27, "UIService_RenderAssetGrid", "", v26, 2u);
    v28 = v26;
    v15 = v25;
    v20 = v24;
    MEMORY[0x21CE94770](v28, -1, -1);
  }

  v73 = v15;
  v74 = v14;
  (*(v15 + 16))(v18, v20, v14);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v29 = OSSignpostIntervalState.init(id:isOpen:)();
  v80 = v75;
  v30 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v4) + 0x110))(&v80);
  outlined init with copy of UUID?(v77, v13);
  (*((*v30 & *v4) + 0x130))(v13);
  v31 = (*((*v30 & *v4) + 0x100))(a1);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v33 = v32 >> 62;
  v72[1] = v29;
  if (v32 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = (*((*v30 & *v4) + 0xF0))(v34);
  v36 = (*((*v30 & *v4) + 0x120))(v35);
  if (v36 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = v36;
    if (v33)
    {
      if (v32 < 0)
      {
        v41 = v32;
      }

      else
      {
        v41 = v32 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = __CocoaSet.count.getter();
      if (__CocoaSet.count.getter() < 0)
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v23 >= v37)
      {
        v42 = v37;
      }

      else
      {
        v42 = v23;
      }

      if (v23 < 0)
      {
        v42 = v37;
      }

      if (v37)
      {
        v40 = v42;
      }

      else
      {
        v40 = 0;
      }

      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 >= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v37)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }
    }

    if (v38 >= v40)
    {
      if ((v32 & 0xC000000000000001) != 0 && v40)
      {
        type metadata accessor for Asset();

        v43 = 0;
        do
        {
          v44 = v43 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v43);
          v43 = v44;
        }

        while (v40 != v44);
      }

      else
      {
      }

      if (v33)
      {
        v41 = _CocoaArrayWrapper.subscript.getter();
        a1 = v45;
        v37 = v46;
        v13 = v47;

        if (v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v37 = 0;
        v41 = v32 & 0xFFFFFFFFFFFFFF8;
        a1 = (v32 & 0xFFFFFFFFFFFFFF8) + 32;
        v13 = (2 * v40) | 1;
        if (v13)
        {
LABEL_43:
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v50 = swift_dynamicCastClass();
          if (!v50)
          {
            swift_unknownObjectRelease();
            v50 = MEMORY[0x277D84F90];
          }

          v51 = *(v50 + 16);

          if (!__OFSUB__(v13 >> 1, v37))
          {
            if (v51 == (v13 >> 1) - v37)
            {
              v49 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              v23 = v76;
              if (v49)
              {
                goto LABEL_50;
              }

              v49 = MEMORY[0x277D84F90];
LABEL_49:
              swift_unknownObjectRelease();
LABEL_50:
              (*((*v30 & *v4) + 0xD8))(v49);
              if (one-time initialization token for views == -1)
              {
                goto LABEL_51;
              }

              goto LABEL_66;
            }

            goto LABEL_69;
          }

LABEL_68:
          __break(1u);
LABEL_69:
          swift_unknownObjectRelease_n();
        }
      }

      specialized _copyCollectionToContiguousArray<A>(_:)(v41, a1, v37, v13);
      v49 = v48;
      v23 = v76;
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_66:
  swift_once();
LABEL_51:
  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static CommonLogger.views);
  outlined init with copy of UUID?(v77, v23);
  v53 = v4;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v79 = v57;
    *v56 = 134218498;
    v58 = (*((*v30 & *v53) + 0xD0))();
    if (v58)
    {
      v59 = v72[0];
      if (v58 >> 62)
      {
        v60 = __CocoaSet.count.getter();
      }

      else
      {
        v60 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v60 = 0;
      v59 = v72[0];
    }

    *(v56 + 4) = v60;

    *(v56 + 12) = 2080;
    v78 = v75;
    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v79);

    *(v56 + 14) = v64;
    *(v56 + 22) = 2080;
    outlined init with copy of UUID?(v76, v59);
    v65 = type metadata accessor for UUID();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v59, 1, v65) == 1)
    {
      outlined destroy of UUID?(v59);
      v67 = 0xE300000000000000;
      v68 = 7104878;
    }

    else
    {
      v68 = UUID.uuidString.getter();
      v67 = v69;
      (*(v66 + 8))(v59, v65);
    }

    v61 = v74;
    outlined destroy of UUID?(v76);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v67, &v79);

    *(v56 + 24) = v70;
    _os_log_impl(&dword_21607C000, v54, v55, "[configureAssets] Configured asset grid with %ld assets, style=%s, suggestionID=%s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v57, -1, -1);
    MEMORY[0x21CE94770](v56, -1, -1);
  }

  else
  {

    outlined destroy of UUID?(v23);
    v61 = v74;
  }

  $defer #1 () in AssetGridView.configureAssets(assets:style:suggestionID:)();

  return (*(v73 + 8))(v20, v61);
}

uint64_t $defer #1 () in AssetGridView.configureAssets(assets:style:suggestionID:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static CommonSignposter.uiRendering);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v13, "UIService_RenderAssetGrid", v11, v12, 2u);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

id AssetGridView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AssetGridView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_gridCollectionView] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_assets] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_totalAssetCount] = 0;
  v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_style] = 1;
  v9 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_suggestionID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9MomentsUI13AssetGridView_mosaicLayout] = [objc_allocWithZone(type metadata accessor for MosaicGridLayout()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AssetGridView();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor_];

  AssetGridView.initGridCollectionView()();
  AssetGridView.configureDataSource()();

  return v13;
}

id AssetGridView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void AssetGridView.initGridCollectionView()()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:*(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_mosaicLayout) collectionViewLayout:{v1, v2, v3, v4}];
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0x90))(v5);
  v8 = *((*v6 & *v0) + 0x88);
  v9 = (v8)(v7);
  if (v9)
  {
    v10 = v9;
    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v11 = v8();
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    v14 = v12;
    v15 = [v13 clearColor];
    [v14 setBackgroundColor_];

    [v14 setAllowsSelection_];
    [v14 setDelegate_];
    [v14 setClipsToBounds_];
    v16 = [v14 layer];

    [v16 setCornerCurve_];
    [v0 addSubview_];
    v17 = [v14 superview];
    if (v17)
    {
      v18 = v17;
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      v19 = [v14 topAnchor];
      v20 = [v18 topAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      [v21 setConstant_];
      [v21 setActive_];
    }

    v22 = [v14 superview];
    if (v22)
    {
      v23 = v22;
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      v24 = [v14 leadingAnchor];
      v25 = [v23 leadingAnchor];
      v26 = [v24 constraintEqualToAnchor_];

      [v26 setConstant_];
      [v26 setActive_];
    }

    v27 = [v14 superview];
    if (v27)
    {
      v28 = v27;
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      v29 = [v14 trailingAnchor];
      v30 = [v28 trailingAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      [v31 setConstant_];
      [v31 setActive_];
    }

    v32 = [v14 superview];
    if (v32)
    {
      v33 = v32;
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      v34 = [v14 bottomAnchor];
      v35 = [v33 bottomAnchor];
      v36 = [v34 constraintEqualToAnchor_];

      if (v36)
      {
        [v36 setConstant_];
        [v36 setActive_];
      }
    }

    type metadata accessor for UICollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = MEMORY[0x21CE91FC0](0x746C7561666564, 0xE700000000000000);
    [v14 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }
}

uint64_t AssetGridView.configureDataSource()()
{
  ObjectType = swift_getObjectType();
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  if (result)
  {
    if (one-time initialization token for baseRegistration != -1)
    {
      swift_once();
    }

    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI010Collectionb5AssetD0CAF0iB5ModelCGMd);
    __swift_project_value_buffer(v3, static CollectionViewAssetCell.baseRegistration);
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = ObjectType;
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy9MomentsUI09AssetGridC0C0J7Section33_F63F77EE66F100BD87C99D2E582E9A52LLOAD0I0CGMd));
    *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_dataSource) = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

void *closure #1 in AssetGridView.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v157 = a1;
  v154 = type metadata accessor for IndexPath();
  v6 = *(v154 - 8);
  v7 = MEMORY[0x28223BE20](v154);
  v153 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = &v143 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v155 = &v143 - v11;
  v12 = type metadata accessor for OSSignpostID();
  v158 = *(v12 - 8);
  v159 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v143 - v16;
  v18 = a4;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = MEMORY[0x277D85000];
  v21 = (*((*MEMORY[0x277D85000] & *Strong) + 0x170))();

  v22 = IndexPath.row.getter();
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_107;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
LABEL_5:
    v27 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v27, static CommonSignposter.cellRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v28 = OSSignposter.logHandle.getter();
    LOBYTE(v29) = static os_signpost_type_t.begin.getter();
    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {

      v33 = v158;
      v34 = v17;
      v17 = v18;
      goto LABEL_18;
    }

    v144 = a2;
    v145 = v18;
    if (v151)
    {
      v35 = v150;
      v36 = HIDWORD(v150);
      if (HIDWORD(v150))
      {
        __break(1u);
        goto LABEL_124;
      }

      if ((v150 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_130;
      }

      v36 = v150 >> 16;
      if (v150 >> 16 > 0x10)
      {
        goto LABEL_125;
      }

      if (v150 > 0x7F)
      {
        goto LABEL_126;
      }

      v37 = v150 + 1;
      goto LABEL_16;
    }

    v30 = v150;
    if (!v150)
    {
      __break(1u);
      goto LABEL_9;
    }

    while (1)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v28, v29, v39, v30, "", v38, 2u);
      MEMORY[0x21CE94770](v38, -1, -1);

      v33 = v158;
      v34 = v17;
      a2 = v144;
      v17 = v145;
LABEL_18:
      v40 = *(v33 + 16);
      v147 = v34;
      v40(v15);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v41 = OSSignpostIntervalState.init(id:isOpen:)();
      type metadata accessor for ClientContactViewModel();
      v42 = v156;
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = v43;
        if (one-time initialization token for contactRegistration != -1)
        {
          swift_once();
        }

        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
        __swift_project_value_buffer(v45, static AssetGridView.contactRegistration);
        v160[0] = v44;
        type metadata accessor for ContactCollectionViewAssetCell();
LABEL_22:
        v46 = v42;
        v15 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        v6 = v153;
        goto LABEL_65;
      }

      type metadata accessor for ClientMapViewModel();
      v47 = swift_dynamicCastClass();
      if (v47)
      {
        v48 = v47;
        if (v6 == 2)
        {
          if (one-time initialization token for mapMediumRegistration != -1)
          {
            swift_once();
          }

          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v53, static AssetGridView.mapMediumRegistration);
          v160[0] = v48;
          type metadata accessor for MapCollectionViewSmallAssetCell();
          goto LABEL_22;
        }

        if (v6 == 1)
        {
          v6 = v153;
          if (one-time initialization token for mapSmallRegistration != -1)
          {
            swift_once();
          }

          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v49, static AssetGridView.mapSmallRegistration);
          v160[0] = v48;
          type metadata accessor for MapCollectionViewSmallAssetCell();
        }

        else
        {
          v6 = v153;
          if (one-time initialization token for mapRegistration != -1)
          {
            swift_once();
          }

          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v54, static AssetGridView.mapRegistration);
          v160[0] = v48;
          type metadata accessor for MapCollectionViewAssetCell();
        }

        goto LABEL_64;
      }

      type metadata accessor for ClientMotionActivityViewModel();
      v50 = swift_dynamicCastClass();
      if (v50)
      {
        break;
      }

      type metadata accessor for ClientWorkoutViewModel();
      v55 = swift_dynamicCastClass();
      if (v55)
      {
        v56 = v55;
        if (v6 == 4 || v6 == 2)
        {
          if (one-time initialization token for workoutLandscapeRegistration != -1)
          {
            swift_once();
          }

          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v63, static AssetGridView.workoutLandscapeRegistration);
          v160[0] = v56;
          type metadata accessor for WorkoutCollectionViewLandscapeAssetCell();
          goto LABEL_22;
        }

        if (v6 == 1)
        {
          v6 = v153;
          if (one-time initialization token for workoutSmallRegistration != -1)
          {
            swift_once();
          }

          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v57, static AssetGridView.workoutSmallRegistration);
          v160[0] = v56;
          type metadata accessor for WorkoutCollectionViewSmallAssetCell(0);
        }

        else
        {
          v6 = v153;
          if (one-time initialization token for workoutRegistration != -1)
          {
            swift_once();
          }

          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v64, static AssetGridView.workoutRegistration);
          v160[0] = v56;
          type metadata accessor for WorkoutCollectionViewAssetCell(0);
        }

LABEL_64:
        v65 = v42;
        v15 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        goto LABEL_65;
      }

      type metadata accessor for ClientPhotoViewModel();
      v60 = swift_dynamicCastClass();
      if (v60)
      {
        v61 = v60;
        if (one-time initialization token for photoRegistration != -1)
        {
          swift_once();
        }

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd);
        __swift_project_value_buffer(v62, static AssetGridView.photoRegistration);
        v160[0] = v61;
        type metadata accessor for PhotoCollectionViewCell();
        goto LABEL_22;
      }

      type metadata accessor for ClientLivePhotoViewModel();
      v113 = swift_dynamicCastClass();
      if (v113)
      {
        v114 = v113;
        if (one-time initialization token for livePhotoRegistration != -1)
        {
          swift_once();
        }

        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);
        __swift_project_value_buffer(v115, static AssetGridView.livePhotoRegistration);
        v160[0] = v114;
        type metadata accessor for LivePhotoCollectionCell();
        goto LABEL_22;
      }

      type metadata accessor for ClientVideoViewModel();
      v116 = swift_dynamicCastClass();
      if (v116)
      {
        v117 = v116;
        if (one-time initialization token for videoRegistration != -1)
        {
          swift_once();
        }

        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd);
        __swift_project_value_buffer(v118, static AssetGridView.videoRegistration);
        v160[0] = v117;
        type metadata accessor for VideoCollectionViewCell();
        goto LABEL_22;
      }

      type metadata accessor for ClientMediaFirstPartyViewModel();
      v119 = swift_dynamicCastClass();
      if (v119)
      {
        v120 = v119;
        if (v6 == 4 || v6 == 2)
        {
          if (one-time initialization token for firstPartyMediaLandscapeRegistration != -1)
          {
            swift_once();
          }

          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd);
          __swift_project_value_buffer(v121, static AssetGridView.firstPartyMediaLandscapeRegistration);
          v160[0] = v120;
          type metadata accessor for MediaFirstPartyLandscapeCollectionViewCell();
        }

        else
        {
          if (one-time initialization token for firstPartyMediaRegistration != -1)
          {
            swift_once();
          }

          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
          __swift_project_value_buffer(v125, static AssetGridView.firstPartyMediaRegistration);
          v160[0] = v120;
          type metadata accessor for MediaFirstPartyCollectionViewCell();
        }

        goto LABEL_22;
      }

      type metadata accessor for ClientMediaThirdPartyViewModel();
      v122 = swift_dynamicCastClass();
      if (v122)
      {
        v123 = v122;
        if (one-time initialization token for thirdPartyMediaRegistration != -1)
        {
          swift_once();
        }

        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd);
        __swift_project_value_buffer(v124, static AssetGridView.thirdPartyMediaRegistration);
        v160[0] = v123;
        type metadata accessor for MediaThirdPartyCollectionViewCell();
        goto LABEL_22;
      }

      v146 = v41;
      type metadata accessor for ClientStateOfMindViewModel();
      v126 = swift_dynamicCastClass();
      if (v126)
      {
        v127 = v126;
        if (v6 == 4 || v6 == 2)
        {
          if (one-time initialization token for stateOfMindHorizontalRegistration != -1)
          {
            swift_once();
          }

          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd);
          __swift_project_value_buffer(v135, static AssetGridView.stateOfMindHorizontalRegistration);
          v160[0] = v127;
          type metadata accessor for StateOfMindHorizontalCollectionViewCell();
        }

        else if (v6 == 1)
        {
          if (one-time initialization token for stateOfMindSmallRegistration != -1)
          {
            swift_once();
          }

          v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd);
          __swift_project_value_buffer(v128, static AssetGridView.stateOfMindSmallRegistration);
          v160[0] = v127;
          type metadata accessor for StateOfMindCollectionViewSmallCell(0);
        }

        else
        {
          if (one-time initialization token for stateOfMindRegistration != -1)
          {
            swift_once();
          }

          v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd);
          __swift_project_value_buffer(v136, static AssetGridView.stateOfMindRegistration);
          v160[0] = v127;
          type metadata accessor for StateOfMindCollectionViewCell(0);
        }
      }

      else
      {
LABEL_130:
        type metadata accessor for ClientPosterViewModel();
        v132 = swift_dynamicCastClass();
        if (!v132)
        {
          v137 = MEMORY[0x21CE91FC0](0x746C7561666564, 0xE700000000000000);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          v15 = [v157 dequeueReusableCellWithReuseIdentifier:v137 forIndexPath:isa];

          $defer #1 () in closure #1 in AssetGridView.configureDataSource()(v150, v148, v151);

          (*(v158 + 8))(v147, v159);
          return v15;
        }

        v133 = v132;
        if (v6 == 2)
        {
          if (one-time initialization token for posterHorizontalRegistration != -1)
          {
            swift_once();
          }

          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v139, static AssetGridView.posterHorizontalRegistration);
          v160[0] = v133;
          type metadata accessor for PosterHorizontalCollectionViewCell(0);
        }

        else if (v6 == 1)
        {
          if (one-time initialization token for posterSmallRegistration != -1)
          {
            swift_once();
          }

          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v134, static AssetGridView.posterSmallRegistration);
          v160[0] = v133;
          type metadata accessor for PosterSmallCollectionViewCell(0);
        }

        else
        {
          if (one-time initialization token for posterRegistration != -1)
          {
            swift_once();
          }

          v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd);
          __swift_project_value_buffer(v140, static AssetGridView.posterRegistration);
          v160[0] = v133;
          type metadata accessor for PosterCollectionViewCell(0);
        }
      }

      v42 = v156;
      v141 = v156;
      v15 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      v41 = v146;
      v6 = v153;
LABEL_65:
      v66 = swift_unknownObjectUnownedLoadStrong();
      v67 = MEMORY[0x277D85000];
      v68 = v155;
      (*((*MEMORY[0x277D85000] & *v66) + 0x128))();

      (*((*v67 & *v15) + 0xB0))(v68);
      v69 = swift_unknownObjectUnownedLoadStrong();
      (*((*v67 & *v69) + 0x108))(v160);

      if (LOBYTE(v160[0]))
      {
        v70 = 4;
      }

      else
      {
        v70 = 3;
      }

      v71 = swift_unknownObjectUnownedLoadStrong();
      (*((*v67 & *v71) + 0x108))(v160);

      v72 = LOBYTE(v160[0]);
      v73 = swift_unknownObjectUnownedLoadStrong();
      v74 = (*((*v67 & *v73) + 0xE8))();

      if (v72)
      {
        v75 = 5;
      }

      else
      {
        v75 = 4;
      }

      v76 = IndexPath.row.getter();
      v157 = v70;
      if (v76 != v70 || v74 <= v75)
      {
        goto LABEL_77;
      }

      v146 = v41;
      v6 = v149;
      v77 = v154;
      v78 = swift_unknownObjectUnownedLoadStrong();
      v79 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v78) + 0x108))(v160);

      v29 = LOBYTE(v160[0]);
      v80 = swift_unknownObjectUnownedLoadStrong();
      v28 = (*((*v79 & *v80) + 0xE8))();

      if (v29 == 1)
      {
        v36 = &v28[-1].isa + 3;
        if (__OFSUB__(v28, 5))
        {
          __break(1u);
LABEL_77:
          v81 = a2;
          v82 = v154;
          if (one-time initialization token for views != -1)
          {
            swift_once();
          }

          v83 = type metadata accessor for Logger();
          __swift_project_value_buffer(v83, static CommonLogger.views);
          v84 = v152;
          (*(v152 + 2))(v6, v81, v82);

          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 134218496;
            v88 = IndexPath.row.getter();
            (*(v84 + 1))(v6, v82);
            *(v87 + 4) = v88;
            *(v87 + 12) = 2048;
            *(v87 + 14) = v157;
            *(v87 + 22) = 2048;
            v89 = swift_unknownObjectUnownedLoadStrong();
            v90 = MEMORY[0x277D85000];
            v91 = (*((*MEMORY[0x277D85000] & *v89) + 0xE8))();

            *(v87 + 24) = v91;

            _os_log_impl(&dword_21607C000, v85, v86, "[configureDataSource] should not show overflow, index=%ld, indexBeforeCutoff=%ld, totalAssetCount=%ld", v87, 0x20u);
            v42 = v156;
            MEMORY[0x21CE94770](v87, -1, -1);

            v92 = v148;
          }

          else
          {
            (*(v84 + 1))(v6, v82);

            v92 = v148;
            v90 = MEMORY[0x277D85000];
          }

          v93 = v159;
          v94 = (*((*v90 & *v15) + 0x118))(v160);
          *v95 = 0;
          v94(v160, 0);
        }

        else
        {
LABEL_84:
          v155 = v36;
          if (one-time initialization token for views != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          __swift_project_value_buffer(v96, static CommonLogger.views);
          v97 = v152;
          (*(v152 + 2))(v6, a2, v77);

          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            *v100 = 134218496;
            v101 = IndexPath.row.getter();
            (*(v97 + 1))(v6, v77);
            *(v100 + 4) = v101;
            *(v100 + 12) = 2048;
            *(v100 + 14) = v157;
            *(v100 + 22) = 2048;
            v102 = swift_unknownObjectUnownedLoadStrong();
            v103 = MEMORY[0x277D85000];
            v104 = (*((*MEMORY[0x277D85000] & *v102) + 0xE8))();

            *(v100 + 24) = v104;

            _os_log_impl(&dword_21607C000, v98, v99, "[configureDataSource] should show overflow, index=%ld, indexBeforeCutoff=%ld, totalAssetCount=%ld", v100, 0x20u);
            v42 = v156;
            MEMORY[0x21CE94770](v100, -1, -1);

            v92 = v148;
          }

          else
          {
            (*(v97 + 1))(v6, v77);

            v92 = v148;
            v103 = MEMORY[0x277D85000];
            v42 = v156;
          }

          v105 = *((*v103 & *v15) + 0x118);
          v106 = v105(v160);
          *(v107 + 8) = v155;
          v106(v160, 0);
          v108 = v105(v160);
          *v109 = 1;
          v108(v160, 0);
          v93 = v159;
        }

        v110 = v158;
        v111 = v147;
        $defer #1 () in closure #1 in AssetGridView.configureDataSource()(v150, v92, v151);

        (*(v110 + 8))(v111, v93);
        return v15;
      }

      v36 = &v28[-1].isa + 4;
      if (!__OFSUB__(v28, 4))
      {
        goto LABEL_84;
      }

LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      v129 = (v35 & 0x3F) << 8;
      if (v35 < 0x800)
      {
        v130 = (v35 >> 6) + v129;
        v131 = 33217;
LABEL_128:
        v37 = v130 + v131;
        goto LABEL_16;
      }

      v142 = (v129 | (v35 >> 6) & 0x3F) << 8;
      if (v36)
      {
        v130 = (v150 >> 18) + ((v142 | (v150 >> 12) & 0x3F) << 8);
        v131 = -2122219023;
        goto LABEL_128;
      }

      v37 = (v150 >> 12) + v142 + 8487393;
LABEL_16:
      v160[0] = (v37 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v37) & 0x18)));

      v30 = v160;
    }

    v51 = v50;
    if (v6 == 2)
    {
      if (one-time initialization token for motionLandscapeRegistration != -1)
      {
        swift_once();
      }

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd);
      __swift_project_value_buffer(v58, static AssetGridView.motionLandscapeRegistration);
      v160[0] = v51;
      type metadata accessor for MotionActivityCollectionViewLandscapeCell(0);
      goto LABEL_22;
    }

    if (v6 == 1)
    {
      v6 = v153;
      if (one-time initialization token for motionSmallRegistration != -1)
      {
        swift_once();
      }

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd);
      __swift_project_value_buffer(v52, static AssetGridView.motionSmallRegistration);
      v160[0] = v51;
      type metadata accessor for MotionActivityCollectionViewSmallCell(0);
    }

    else
    {
      v6 = v153;
      if (one-time initialization token for motionRegistration != -1)
      {
        swift_once();
      }

      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd);
      __swift_project_value_buffer(v59, static AssetGridView.motionRegistration);
      v160[0] = v51;
      type metadata accessor for MotionActivityCollectionViewCell(0);
    }

    goto LABEL_64;
  }

  v152 = v6;
  LODWORD(v6) = *(v21 + v22 + 32);
  LOBYTE(v160[0]) = *(v21 + v22 + 32);
  v23 = Asset.assetViewModelFor(style:)(v160);
  if (v23)
  {
    v24 = v23;
    LOBYTE(v160[0]) = v6;
    (*((*v20 & *v23) + 0x108))(v160);
    v160[3] = type metadata accessor for AssetViewModel();
    v160[0] = v24;
    v156 = v24;
    v150 = specialized static UIRenderingSession.signpostNameForCellRendering(_:)(v160);
    v148 = v25;
    v151 = v26;
    __swift_destroy_boxed_opaque_existential_1(v160);
    if (one-time initialization token for cellRendering == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_108;
  }

LABEL_9:

  v31 = MEMORY[0x21CE91FC0](0x746C7561666564, 0xE700000000000000);
  v32 = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [v157 dequeueReusableCellWithReuseIdentifier:v31 forIndexPath:v32];

  return v15;
}

uint64_t $defer #1 () in closure #1 in AssetGridView.configureDataSource()(const char *a1, uint64_t a2, int a3)
{
  v19 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for cellRendering != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static CommonSignposter.cellRendering);
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v19 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D85B00])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        v15 = "";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v13, v18, v17, a1, v15, v16, 2u);
      MEMORY[0x21CE94770](v16, -1, -1);
LABEL_15:

      return (*(v9 + 8))(v11, v8);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall AssetGridView.updateGridLayout(style:)(MomentsUI::AssetGridStyle style)
{
  v2 = *style;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v4 = v3;
  if (v2 == 1)
  {
    if (!v3)
    {
      return;
    }

    v5 = type metadata accessor for MosaicGridLayout();
  }

  else
  {
    if (!v3)
    {
      return;
    }

    v5 = type metadata accessor for MosaicSquareGridLayout();
  }

  v6 = [objc_allocWithZone(v5) init];
  [v4 setCollectionViewLayout_];
}

Swift::Void __swiftcall AssetGridView.reloadDataSnapshot()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI13AssetGridViewC0I7Section33_F63F77EE66F100BD87C99D2E582E9A52LLOAD0H0CGMd);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_dataSource);
  if (v5)
  {
    type metadata accessor for Asset();
    lazy protocol witness table accessor for type AssetGridView.GridSection and conformance AssetGridView.GridSection();
    lazy protocol witness table accessor for type Asset and conformance NSObject();
    v6 = v5;
    v7 = NSDiffableDataSourceSnapshot.init()();
    if ((*((*MEMORY[0x277D85000] & *v0) + 0xD0))(v7))
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&outlined read-only object #0 of AssetGridView.createSnaphot());
      v8[15] = 0;
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    }

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v2 + 8))(v4, v1);
  }
}

void *AssetGridView.gridAssetSizes()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x108))(&v11);
  if (v11 == 1)
  {
    if (one-time initialization token for tileSizesByCount != -1)
    {
      swift_once();
    }

    v2 = static AssetSizeLayoutEngine.FullWidth.tileSizesByCount;
    v3 = (*((*v1 & *v0) + 0xD0))();
    if (v3)
    {
      if (v3 >> 62)
      {
        v4 = __CocoaSet.count.getter();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!*(v2 + 16))
      {
        return &outlined read-only object #0 of AssetGridView.gridAssetSizes();
      }
    }

    else
    {
      v4 = 1;
      if (!*(v2 + 16))
      {
        return &outlined read-only object #0 of AssetGridView.gridAssetSizes();
      }
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v8 & 1) == 0)
    {
      return &outlined read-only object #0 of AssetGridView.gridAssetSizes();
    }
  }

  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  v5 = static AssetSizeLayoutEngine.HalfWidth.tileSizesByCount;
  v6 = (*((*v1 & *v0) + 0xD0))();
  if (v6)
  {
    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!*(v5 + 16))
    {
      return &outlined read-only object #1 of AssetGridView.gridAssetSizes();
    }
  }

  else
  {
    v7 = 1;
    if (!*(v5 + 16))
    {
      return &outlined read-only object #1 of AssetGridView.gridAssetSizes();
    }
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v7);
  if (v10)
  {
  }

  return &outlined read-only object #1 of AssetGridView.gridAssetSizes();
}

id AssetGridView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetGridView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void AssetGridView.collectionView(_:didEndDisplaying:forItemAt:)(uint64_t a1, void *a2)
{
  type metadata accessor for CollectionViewAssetCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x138);
    v5 = a2;
    v4();
  }
}

uint64_t type metadata accessor for AssetGridView()
{
  result = type metadata singleton initialization cache for AssetGridView;
  if (!type metadata singleton initialization cache for AssetGridView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized AssetGridView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_gridCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_assets) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_totalAssetCount) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI13AssetGridView_style) = 1;
  v1 = OBJC_IVAR____TtC9MomentsUI13AssetGridView_suggestionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type AssetGridView.GridSection and conformance AssetGridView.GridSection()
{
  result = lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection;
  if (!lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection;
  if (!lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetGridView.GridSection and conformance AssetGridView.GridSection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Asset and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type Asset and conformance NSObject;
  if (!lazy protocol witness table cache variable for type Asset and conformance NSObject)
  {
    type metadata accessor for Asset();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Asset and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetGridStyle and conformance AssetGridStyle()
{
  result = lazy protocol witness table cache variable for type AssetGridStyle and conformance AssetGridStyle;
  if (!lazy protocol witness table cache variable for type AssetGridStyle and conformance AssetGridStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetGridStyle and conformance AssetGridStyle);
  }

  return result;
}

void type metadata completion function for AssetGridView()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for UICollectionViewCell()
{
  result = lazy cache variable for type metadata for UICollectionViewCell;
  if (!lazy cache variable for type metadata for UICollectionViewCell)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewCell);
  }

  return result;
}

id EntityData.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t type metadata accessor for EntityData()
{
  result = type metadata singleton initialization cache for EntityData;
  if (!type metadata singleton initialization cache for EntityData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntityData.isHost.setter(char a1)
{
  result = type metadata accessor for EntityData();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t EntityData.locationDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for EntityData() + 36));

  return v1;
}

uint64_t EntityData.locationDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EntityData() + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EntityData.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for EntityData();
  v3 = v2[5];
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(&a1[v5], 1, 1, v6);
  result = (v7)(&a1[v2[7]], 1, 1, v6);
  a1[v2[8]] = 2;
  v9 = &a1[v2[9]];
  *v9 = 0;
  *(v9 + 1) = 0;
  return result;
}

uint64_t EntityData.init(image:title:startDate:endDate:isHost:locationDisplayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  v15 = type metadata accessor for EntityData();
  outlined init with take of URL?(a2, a8 + v15[5], &_s10Foundation16AttributedStringVSgMd);
  outlined init with take of URL?(a3, a8 + v15[6], &_s10Foundation4DateVSgMd);
  result = outlined init with take of URL?(a4, a8 + v15[7], &_s10Foundation4DateVSgMd);
  *(a8 + v15[8]) = a5;
  v17 = (a8 + v15[9]);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:), v16);
}

uint64_t closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v25;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI10EntityDataVSgMd);
  v8[8] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for DisplayRepresentation.Image();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationV0C5ValueOy_AC5ImageOGSgMd);
  v8[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationV0C5ValueOy_AC5ImageOGMd);
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v12 = type metadata accessor for TypedValue.PrimitiveValue.PersonValue();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();
  v13 = type metadata accessor for AttributedString();
  v8[24] = v13;
  v8[25] = *(v13 - 8);
  v8[26] = swift_task_alloc();
  v14 = type metadata accessor for TypedValue.PrimitiveValue();
  v8[27] = v14;
  v8[28] = *(v14 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v8[34] = v15;
  v8[35] = *(v15 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v16 = type metadata accessor for TypedValue.EntityValue();
  v8[38] = v16;
  v8[39] = *(v16 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v17 = type metadata accessor for TypedValue.CollectionValue();
  v8[42] = v17;
  v8[43] = *(v17 - 8);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v18 = type metadata accessor for EntityData();
  v8[46] = v18;
  v8[47] = *(v18 - 8);
  v8[48] = swift_task_alloc();
  v19 = type metadata accessor for TypedValue.ID();
  v8[49] = v19;
  v8[50] = *(v19 - 8);
  v8[51] = swift_task_alloc();
  v20 = type metadata accessor for ToolExecutor.SessionOptions();
  v8[52] = v20;
  v8[53] = *(v20 - 8);
  v8[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationVSgMd);
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v21 = type metadata accessor for TypedValue();
  v8[57] = v21;
  v8[58] = *(v21 - 8);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v22 = type metadata accessor for TypeIdentifier();
  v8[70] = v22;
  v8[71] = *(v22 - 8);
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:), 0, 0);
}

uint64_t closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)()
{
  v1 = *(v0 + 40);
  if (*(v0 + 24))
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    (*(*(v0 + 376) + 56))(v3, 1, 1, *(v0 + 368));
    v4(v3, 0);
    outlined destroy of UTType?(v3, &_s9MomentsUI10EntityDataVSgMd);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 592);
    v8 = *(v0 + 584);
    v24 = *(v0 + 576);
    v9 = *(v0 + 568);
    v10 = *(v0 + 560);
    v11 = *(v0 + 464);
    v27 = *(v0 + 456);
    v28 = *(v0 + 552);
    v25 = *(v0 + 448);
    v12 = *(v0 + 32);
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v1;
    v13[4] = 0x746E45746E657645;
    v13[5] = 0xEB00000000797469;
    *v7 = v13;
    (*(v9 + 104))(v7, *MEMORY[0x277D72D28], v10);
    v26 = swift_allocBox();
    v14 = *(v9 + 16);
    v14(v8, v7, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7ToolKit10TypedValueOGMd);
    *(v0 + 600) = *(v11 + 72);
    v15 = *(v11 + 80);
    *(v0 + 696) = v15;
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21658CA50;
    type metadata accessor for TypedValue.EntityIdentifierValue();
    v23 = swift_allocBox();
    v14(v24, v7, v10);
    v18 = type metadata accessor for DisplayRepresentation();
    *(v0 + 608) = v18;
    v19 = *(v18 - 8);
    *(v0 + 616) = v19;
    (*(v19 + 56))(v25, 1, 1, v18);

    TypedValue.EntityIdentifierValue.init(type:identifier:displayRepresentation:)();
    *(v17 + v16) = v23;
    v20 = *(v11 + 104);
    (v20)(v17 + v16, *MEMORY[0x277D729F8], v27);
    TypedValue.CollectionValue.init(type:values:)();
    *v28 = v26;
    *(v0 + 700) = *MEMORY[0x277D729E0];
    v20();
    static ToolExecutor.SessionOptions.default.getter();
    v21 = swift_task_alloc();
    *(v0 + 624) = v21;
    *v21 = v0;
    v21[1] = closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:);
    v22 = *(v0 + 432);

    return MEMORY[0x2821DADB0](v22);
  }
}

{
  v2 = *v1;
  v2[84] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[85] = v3;
    *v3 = v2;
    v3[1] = closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:);
    v4 = v2[82];
    v5 = v2[81];
    v6 = v2[68];
    v7 = v2[51];

    return MEMORY[0x2821DAA80](v6, v7, v5, v4);
  }
}

{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:);
  }

  else
  {
    v2 = closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v280 = *(v0 + 700);
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 456);
  v4 = *(v0 + 464);
  v5 = *(v0 + 384);
  v6 = *(v0 + 368);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  *v5 = 0;
  v244 = v6[5];
  v243 = *(v10 + 56);
  v243(&v5[v244], 1, 1, v9);
  v11 = *(v8 + 56);
  v242 = v6[6];
  v11(&v5[v242], 1, 1, v7);
  v241 = v6[7];
  v252 = v11;
  v11(&v5[v241], 1, 1, v7);
  v251 = v6[8];
  v5[v251] = 2;
  v257 = v5;
  v12 = &v5[v6[9]];
  v13 = *(v4 + 16);
  *v12 = 0;
  v12[1] = 0;
  v240 = v12;
  v273 = v13;
  v13(v2, v1, v3);
  v283 = *(v4 + 88);
  v14 = v283(v2, v3);
  v15 = *(v0 + 456);
  v16 = *(v0 + 464);
  if (v14 == v280)
  {
    v17 = *(v0 + 360);
    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    v278 = *(v16 + 96);
    v278(*(v0 + 536), v15);
    v20 = swift_projectBox();
    v239 = *(v19 + 16);
    v239(v17, v20, v18);

    result = TypedValue.CollectionValue.values.getter();
    v22 = *(result + 16);
    if (v22)
    {
      v23 = 0;
      v224 = 0;
      v265 = result + ((*(v0 + 696) + 32) & ~*(v0 + 696));
      v24 = *(v0 + 312);
      v275 = (*(v0 + 464) + 8);
      v270 = (v24 + 16);
      v25 = *(v0 + 224);
      v262 = (v25 + 16);
      v261 = (v25 + 88);
      v255 = (v25 + 8);
      v254 = (v25 + 96);
      v236 = (*(v0 + 280) + 32);
      v222 = (*(v0 + 200) + 32);
      v26 = *(v0 + 176);
      v271 = (v24 + 8);
      v225 = (v26 + 8);
      v226 = (v26 + 32);
      v235 = (*(v0 + 344) + 8);
      v27 = *(v0 + 616);
      v28 = (v27 + 48);
      v260 = (v27 + 8);
      v29 = *(v0 + 104);
      v231 = (v29 + 16);
      v232 = (v29 + 32);
      v229 = (v29 + 8);
      v230 = (v29 + 88);
      v223 = (v29 + 96);
      v281 = *MEMORY[0x277D72A38];
      v264 = *MEMORY[0x277D72A58];
      v253 = *MEMORY[0x277D72990];
      v233 = *MEMORY[0x277D729B8];
      v234 = *MEMORY[0x277D72968];
      v245 = *MEMORY[0x277D729B0];
      v250 = *MEMORY[0x277D731E0];
      v228 = *MEMORY[0x277D73208];
      v220 = *MEMORY[0x277D73210];
      v219 = *(v0 + 112);
      v30 = *(v0 + 144);
      v259 = (v30 + 48);
      v248 = (v30 + 16);
      v249 = (v30 + 32);
      v246 = (v30 + 8);
      v247 = (v30 + 88);
      v227 = (v30 + 96);
      v31 = *(v0 + 80);
      v221 = *(v0 + 240);
      v217 = (v31 + 32);
      v218 = (v31 + 8);
      v258 = (v30 + 56);
      v32 = v273;
      v266 = result;
      v256 = v28;
      v263 = *(result + 16);
      while (1)
      {
        if (v23 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v33 = *(v0 + 528);
        v34 = *(v0 + 456);
        v32(v33, v265 + *(v0 + 600) * v23, v34);
        v35 = v283(v33, v34);
        v36 = *(v0 + 456);
        if (v35 == v281)
        {
          break;
        }

        (*v275)(*(v0 + 528), v36);
LABEL_55:
        result = v266;
LABEL_56:
        if (++v23 == v22)
        {
          goto LABEL_85;
        }
      }

      v37 = *(v0 + 328);
      v38 = *(v0 + 304);
      v278(*(v0 + 528), v36);
      v39 = swift_projectBox();
      v267 = *v270;
      (*v270)(v37, v39, v38);

      v40 = TypedValue.EntityValue.properties.getter();
      if (*(v40 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461447472617473, 0xE900000000000065), (v42 & 1) != 0))
      {
        v43 = *(v0 + 520);
        v44 = *(v0 + 456);
        v32(v43, *(v40 + 56) + *(v0 + 600) * v41, v44);

        v45 = v283(v43, v44);
        v46 = *(v0 + 456);
        if (v45 == v264)
        {
          v47 = *(v0 + 264);
          v48 = *(v0 + 216);
          v278(*(v0 + 520), v46);
          v49 = swift_projectBox();
          (*v262)(v47, v49, v48);
          if ((*v261)(v47, v48) == v253)
          {
            v50 = *(v0 + 296);
            v52 = *(v0 + 264);
            v51 = *(v0 + 272);
            (*v254)(v52, *(v0 + 216));
            v53 = *v236;
            (*v236)(v50, v52, v51);

            outlined destroy of UTType?(&v257[v242], &_s10Foundation4DateVSgMd);
            v53(&v257[v242], v50, v51);
            v28 = v256;
            v32 = v273;
            v252(&v257[v242], 0, 1, v51);
          }

          else
          {
            (*v255)(*(v0 + 264), *(v0 + 216));
          }
        }

        else
        {
          (*v275)(*(v0 + 520), v46);
        }
      }

      else
      {
      }

      v54 = TypedValue.EntityValue.properties.getter();
      if (*(v54 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(0x65746144646E65, 0xE700000000000000), (v56 & 1) != 0))
      {
        v57 = *(v0 + 512);
        v58 = *(v0 + 456);
        v32(v57, *(v54 + 56) + *(v0 + 600) * v55, v58);

        v59 = v283(v57, v58);
        v60 = *(v0 + 456);
        if (v59 == v264)
        {
          v61 = *(v0 + 256);
          v62 = *(v0 + 216);
          v278(*(v0 + 512), v60);
          v63 = swift_projectBox();
          (*v262)(v61, v63, v62);
          if ((*v261)(v61, v62) == v253)
          {
            v64 = *(v0 + 288);
            v65 = *(v0 + 272);
            v66 = *(v0 + 256);
            (*v254)(v66, *(v0 + 216));
            v67 = *v236;
            (*v236)(v64, v66, v65);

            outlined destroy of UTType?(&v257[v241], &_s10Foundation4DateVSgMd);
            v67(&v257[v241], v64, v65);
            v28 = v256;
            v32 = v273;
            v252(&v257[v241], 0, 1, v65);
          }

          else
          {
            (*v255)(*(v0 + 256), *(v0 + 216));
          }
        }

        else
        {
          (*v275)(*(v0 + 512), v60);
        }
      }

      else
      {
      }

      v68 = TypedValue.EntityValue.properties.getter();
      if (*(v68 + 16) && (v69 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C746974, 0xE500000000000000), (v70 & 1) != 0))
      {
        v71 = *(v0 + 504);
        v72 = *(v0 + 456);
        v32(v71, *(v68 + 56) + *(v0 + 600) * v69, v72);

        v73 = v283(v71, v72);
        v74 = *(v0 + 456);
        if (v73 == v264)
        {
          v75 = *(v0 + 248);
          v76 = *(v0 + 216);
          v278(*(v0 + 504), v74);
          v77 = swift_projectBox();
          (*v262)(v75, v77, v76);
          v78 = (*v261)(v75, v76);
          v79 = *(v0 + 248);
          v80 = *(v0 + 216);
          if (v78 == v234)
          {
            v81 = *(v0 + 208);
            v82 = *(v0 + 192);
            (*v254)(*(v0 + 248), v80);
            v83 = *v222;
            (*v222)(v81, v79, v82);

            outlined destroy of UTType?(&v257[v244], &_s10Foundation16AttributedStringVSgMd);
            v83(&v257[v244], v81, v82);
            v28 = v256;
            v84 = v82;
            v32 = v273;
            v243(&v257[v244], 0, 1, v84);
          }

          else
          {
            (*v255)(*(v0 + 248), v80);
          }
        }

        else
        {
          (*v275)(*(v0 + 504), v74);
        }
      }

      else
      {
      }

      v85 = TypedValue.EntityValue.properties.getter();
      if (*(v85 + 16) && (v86 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F697461636F6CLL, 0xEC000000656D614ELL), (v87 & 1) != 0))
      {
        v88 = *(v0 + 496);
        v89 = *(v0 + 456);
        v32(v88, *(v85 + 56) + *(v0 + 600) * v86, v89);

        v90 = v283(v88, v89);
        v91 = *(v0 + 456);
        if (v90 == v264)
        {
          v92 = *(v0 + 240);
          v93 = *(v0 + 216);
          v278(*(v0 + 496), v91);
          v94 = swift_projectBox();
          (*v262)(v92, v94, v93);
          v95 = (*v261)(v92, v93);
          v96 = *(v0 + 240);
          v97 = *(v0 + 216);
          if (v95 == v233)
          {
            (*v254)(*(v0 + 240), v97);
            v98 = *v96;
            v99 = *(v221 + 8);

            *v240 = v98;
            v240[1] = v99;
          }

          else
          {
            (*v255)(*(v0 + 240), v97);
          }
        }

        else
        {
          (*v275)(*(v0 + 496), v91);
        }
      }

      else
      {
      }

      v100 = TypedValue.EntityValue.properties.getter();
      if (*(v100 + 16) && (v101 = specialized __RawDictionaryStorage.find<A>(_:)(0x657A696E6167726FLL, 0xEA00000000007372), (v102 & 1) != 0))
      {
        v103 = v32;
        v104 = *(v0 + 700);
        v105 = *(v0 + 488);
        v106 = *(v0 + 456);
        v103(v105, *(v100 + 56) + *(v0 + 600) * v101, v106);

        v107 = v283(v105, v106);
        v108 = *(v0 + 456);
        if (v107 == v104)
        {
          v109 = *(v0 + 352);
          v110 = *(v0 + 336);
          v278(*(v0 + 488), v108);
          v111 = swift_projectBox();
          v239(v109, v111, v110);

          v112 = TypedValue.CollectionValue.values.getter();
          v113 = *(v112 + 16);
          if (v113)
          {
            v114 = 0;
            v115 = v112 + ((*(v0 + 696) + 32) & ~*(v0 + 696));
            v32 = v273;
            do
            {
              v116 = *(v0 + 480);
              v117 = *(v0 + 456);
              v32(v116, v115 + *(v0 + 600) * v114, v117);
              v118 = v283(v116, v117);
              v119 = *(v0 + 456);
              if (v118 == v281)
              {
                v120 = *(v0 + 320);
                v121 = *(v0 + 304);
                v278(*(v0 + 480), v119);
                v122 = swift_projectBox();
                v267(v120, v122, v121);

                v123 = TypedValue.EntityValue.properties.getter();
                if (*(v123 + 16) && (v124 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F73726570, 0xE600000000000000), (v125 & 1) != 0))
                {
                  v126 = *(v0 + 472);
                  v127 = *(v0 + 456);
                  v273(v126, *(v123 + 56) + *(v0 + 600) * v124, v127);

                  v128 = v283(v126, v127);
                  v129 = *(v0 + 472);
                  v130 = *(v0 + 456);
                  if (v128 == v264)
                  {
                    v131 = *(v0 + 232);
                    v132 = *(v0 + 216);
                    v278(*(v0 + 472), *(v0 + 456));
                    v133 = swift_projectBox();
                    (*v262)(v131, v133, v132);
                    v134 = (*v261)(v131, v132);
                    v135 = *(v0 + 232);
                    v136 = *(v0 + 216);
                    if (v134 == v245)
                    {
                      v137 = *(v0 + 184);
                      v138 = *(v0 + 168);
                      v237 = *(v0 + 304);
                      v139 = *(v0 + 320);
                      (*v254)(*(v0 + 232), *(v0 + 216));
                      (*v226)(v137, v135, v138);

                      v140 = TypedValue.PrimitiveValue.PersonValue.person.getter();
                      v141 = [v140 isMe];

                      (*v225)(v137, v138);
                      (*v271)(v139, v237);
                      v257[v251] = v141;
                    }

                    else
                    {
                      (*v271)(*(v0 + 320), *(v0 + 304));
                      (*v255)(v135, v136);
                    }
                  }

                  else
                  {
                    (*v271)(*(v0 + 320), *(v0 + 304));
                    (*v275)(v129, v130);
                  }
                }

                else
                {
                  v142 = *(v0 + 320);
                  v143 = *(v0 + 304);

                  (*v271)(v142, v143);
                }

                v32 = v273;
              }

              else
              {
                (*v275)(*(v0 + 480), v119);
              }

              ++v114;
            }

            while (v113 != v114);

            v28 = v256;
          }

          else
          {

            v32 = v273;
          }

          (*v235)(*(v0 + 352), *(v0 + 336));
        }

        else
        {
          (*v275)(*(v0 + 488), v108);
          v32 = v273;
        }
      }

      else
      {
      }

      v144 = *(v0 + 608);
      v145 = *(v0 + 440);
      TypedValue.EntityValue.displayRepresentation.getter();
      if ((*v28)(v145, 1, v144) == 1)
      {
        v146 = *(v0 + 440);
        v148 = *(v0 + 128);
        v147 = *(v0 + 136);
        (*v271)(*(v0 + 328), *(v0 + 304));
        outlined destroy of UTType?(v146, &_s7ToolKit21DisplayRepresentationVSgMd);
        (*v258)(v148, 1, 1, v147);
      }

      else
      {
        v149 = *(v0 + 608);
        v150 = *(v0 + 440);
        v152 = *(v0 + 128);
        v151 = *(v0 + 136);
        DisplayRepresentation.image.getter();
        (*v260)(v150, v149);
        if ((*v259)(v152, 1, v151) != 1)
        {
          v154 = *(v0 + 152);
          v153 = *(v0 + 160);
          v155 = *(v0 + 136);
          (*v249)(v153, *(v0 + 128), v155);
          (*v248)(v154, v153, v155);
          if ((*v247)(v154, v155) == v250)
          {
            v156 = *(v0 + 152);
            v158 = *(v0 + 112);
            v157 = *(v0 + 120);
            v159 = *(v0 + 96);
            (*v227)(v156, *(v0 + 136));
            (*v232)(v157, v156, v159);
            (*v231)(v158, v157, v159);
            v160 = (*v230)(v158, v159);
            if (v160 == v228)
            {
              v268 = *(v0 + 328);
              v238 = *(v0 + 304);
              v161 = *(v0 + 160);
              v162 = *(v0 + 136);
              v163 = *(v0 + 112);
              v164 = *(v0 + 120);
              v165 = *(v0 + 96);
              (*v223)(v163, v165);
              v166 = *v163;
              v167 = *(v219 + 8);
              v168 = objc_allocWithZone(MEMORY[0x277D755B8]);
              isa = Data._bridgeToObjectiveC()().super.isa;
              v170 = [v168 initWithData_];

              outlined consume of Data._Representation(v166, v167);
              (*v229)(v164, v165);
              (*v246)(v161, v162);
              (*v271)(v268, v238);
              if (v170)
              {
                v171 = *(v0 + 384);

                *v171 = v170;
                v224 = v170;
              }

LABEL_79:
              v32 = v273;
              result = v266;
              v22 = v263;
              v28 = v256;
              goto LABEL_56;
            }

            if (v160 != v220)
            {
              v269 = *(v0 + 328);
              v195 = *(v0 + 304);
              v196 = *(v0 + 160);
              v197 = *(v0 + 136);
              v198 = *(v0 + 112);
              v199 = *(v0 + 96);
              v200 = *v229;
              (*v229)(*(v0 + 120), v199);
              (*v246)(v196, v197);
              (*v271)(v269, v195);
              v200(v198, v199);
              v28 = v256;
              result = v266;
              v32 = v273;
              v22 = v263;
              goto LABEL_56;
            }

            v177 = *(v0 + 112);
            v178 = *(v0 + 88);
            v179 = *(v0 + 72);
            (*v223)(v177, *(v0 + 96));
            (*v217)(v178, v177, v179);
            if (URL.startAccessingSecurityScopedResource()())
            {
              v180 = URL.path.getter();
              v182 = v181;
              v183 = objc_allocWithZone(MEMORY[0x277D755B8]);
              v184 = MEMORY[0x21CE91FC0](v180, v182);

              v185 = [v183 initWithContentsOfFile_];

              if (v185)
              {
                v186 = *(v0 + 384);

                *v186 = v185;
                v224 = v185;
              }

              v187 = *(v0 + 328);
              v188 = *(v0 + 304);
              v189 = *(v0 + 160);
              v190 = *(v0 + 136);
              v191 = *(v0 + 120);
              v192 = *(v0 + 88);
              v193 = *(v0 + 96);
              v194 = *(v0 + 72);
              URL.stopAccessingSecurityScopedResource()();
              (*v218)(v192, v194);
              (*v229)(v191, v193);
              (*v246)(v189, v190);
              (*v271)(v187, v188);
              goto LABEL_79;
            }

            v201 = *(v0 + 328);
            v202 = *(v0 + 304);
            v203 = *(v0 + 160);
            v204 = *(v0 + 136);
            v205 = *(v0 + 120);
            v206 = *(v0 + 96);
            (*v218)(*(v0 + 88), *(v0 + 72));
            (*v229)(v205, v206);
            (*v246)(v203, v204);
            (*v271)(v201, v202);
          }

          else
          {
            v172 = *(v0 + 328);
            v173 = *(v0 + 304);
            v174 = *(v0 + 152);
            v175 = *(v0 + 136);
            v176 = *v246;
            (*v246)(*(v0 + 160), v175);
            (*v271)(v172, v173);
            v176(v174, v175);
          }

          v32 = v273;
          goto LABEL_54;
        }

        (*v271)(*(v0 + 328), *(v0 + 304));
        v32 = v273;
      }

      outlined destroy of UTType?(*(v0 + 128), &_s7ToolKit21DisplayRepresentationV0C5ValueOy_AC5ImageOGSgMd);
LABEL_54:
      v22 = v263;
      goto LABEL_55;
    }

LABEL_85:

    (*(*(v0 + 344) + 8))(*(v0 + 360), *(v0 + 336));
  }

  else
  {
    (*(v16 + 8))(*(v0 + 536), v15);
  }

  v207 = *(v0 + 568);
  v282 = *(v0 + 560);
  v284 = *(v0 + 592);
  v272 = *(v0 + 544);
  v209 = *(v0 + 456);
  v208 = *(v0 + 464);
  v210 = *(v0 + 400);
  v274 = *(v0 + 392);
  v276 = *(v0 + 408);
  v277 = *(v0 + 384);
  v279 = *(v0 + 552);
  v211 = *(v0 + 368);
  v212 = *(v0 + 376);
  v213 = *(v0 + 64);
  v214 = *(v0 + 48);
  outlined init with copy of EntityData(v277, v213);
  (*(v212 + 56))(v213, 0, 1, v211);
  v214(v213, 0);
  swift_unknownObjectRelease();
  outlined destroy of UTType?(v213, &_s9MomentsUI10EntityDataVSgMd);
  v215 = *(v208 + 8);
  v215(v272, v209);
  (*(v210 + 8))(v276, v274);
  v215(v279, v209);
  (*(v207 + 8))(v284, v282);
  outlined destroy of EntityData(v277);

  v216 = *(v0 + 8);

  return v216();
}

{
  v1 = v0[80];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[70];
  (*(v0[58] + 8))(v0[69], v0[57]);
  (*(v3 + 8))(v2, v4);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21607C000, v7, v8, "[PosterViewModel] error fetching entity data: %@", v9, 0xCu);
    outlined destroy of UTType?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v13 = v0[46];
  v14 = v0[47];
  v15 = v0[8];
  v16 = v0[6];

  (*(v14 + 56))(v15, 1, 1, v13);
  v17 = v1;
  v16(v15, v1);

  outlined destroy of UTType?(v15, &_s9MomentsUI10EntityDataVSgMd);

  v18 = v0[1];

  return v18();
}

{
  swift_unknownObjectRelease();
  v1 = v0[84];
  v2 = v0[74];
  v3 = v0[71];
  v4 = v0[70];
  (*(v0[58] + 8))(v0[69], v0[57]);
  (*(v3 + 8))(v2, v4);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21607C000, v7, v8, "[PosterViewModel] error fetching entity data: %@", v9, 0xCu);
    outlined destroy of UTType?(v10, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v13 = v0[46];
  v14 = v0[47];
  v15 = v0[8];
  v16 = v0[6];

  (*(v14 + 56))(v15, 1, 1, v13);
  v17 = v1;
  v16(v15, v1);

  outlined destroy of UTType?(v15, &_s9MomentsUI10EntityDataVSgMd);

  v18 = v0[1];

  return v18();
}

{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = v0[86];
  v5 = v0[74];
  v6 = v0[71];
  v7 = v0[70];
  (*(v0[58] + 8))(v0[69], v0[57]);
  (*(v6 + 8))(v5, v7);
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.viewModel);
  v9 = v4;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v4;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21607C000, v10, v11, "[PosterViewModel] error fetching entity data: %@", v12, 0xCu);
    outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd);
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  v16 = v0[46];
  v17 = v0[47];
  v18 = v0[8];
  v19 = v0[6];

  (*(v17 + 56))(v18, 1, 1, v16);
  v20 = v4;
  v19(v18, v4);

  outlined destroy of UTType?(v18, &_s9MomentsUI10EntityDataVSgMd);

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[79] = a1;
  v3[80] = v1;

  v5 = v3[54];
  v6 = v3[53];
  v7 = v3[52];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:), 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A8ExecutorV5start7optionsQrAC14SessionOptionsV_tYaKFZQOy_Qo_Md);
    v3[81] = v8;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v3[82] = OpaqueTypeConformance2;
    v10 = swift_task_alloc();
    v3[83] = v10;
    *v10 = v4;
    v10[1] = closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:);
    v11 = v3[69];
    v12 = v3[51];

    return MEMORY[0x2821DAA50](v12, v11, v8, OpaqueTypeConformance2);
  }
}

uint64_t partial apply for closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in static ToolKitUtilities.fetchEntityData(spotlightIdentifier:bundleID:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

void type metadata completion function for EntityData()
{
  type metadata accessor for UIImage?(319, &lazy cache variable for type metadata for UIImage?, type metadata accessor for UIImage);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIImage?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x277CC8C40]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIImage?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for UIImage?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of EntityData(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EntityData(uint64_t a1)
{
  v2 = type metadata accessor for EntityData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MapLocation.__allocating_init(latitude:longitude:mapItem:confidenceLevel:horizontalUncertainty:pinType:clusterCount:name:city:dateInterval:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v24 = swift_allocObject();
  v25 = *a2;
  UUID.init()();
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = a11;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = a12;
  v26 = a3;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = a3;
  v27 = (v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  *v27 = a4;
  v27[1] = a5;
  v28 = a8;
  v29 = (v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v29 = a6;
  v29[1] = a7;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = a9;
  *(v24 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = a10;
  v30 = OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval;
  v31 = type metadata accessor for DateInterval();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v24 + v30, a8, v31);
  v33 = a11 <= 0.9 || a1 == 0;
  v34 = !v33;
  if (v33)
  {
    v37 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    swift_beginAccess();
    *(v24 + v37) = 0;
    if (v25 != 5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    swift_beginAccess();
    *(v24 + v35) = a1;

    if (v25 != 5)
    {
LABEL_9:
      v36 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
      swift_beginAccess();
      *(v24 + v36) = v25;
      goto LABEL_18;
    }
  }

  if (v34)
  {
    v38 = 2;
  }

  else
  {
    v38 = 3;
  }

  if (v26 <= 1)
  {
    v39 = v38;
  }

  else
  {
    v39 = 4;
  }

  v40 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v24 + v40) = v39;
LABEL_18:
  v41 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  if (*(v24 + v41))
  {
    (*(v32 + 8))(v28, v31);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static CommonLogger.viewModel);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v28;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_21607C000, v43, v44, "MapLocation: No pin type inferred", v46, 2u);
      MEMORY[0x21CE94770](v46, -1, -1);

      (*(v32 + 8))(v45, v31);
    }

    else
    {

      (*(v32 + 8))(v28, v31);
    }
  }

  return v24;
}

double MapLocation.latitude.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MapLocation.latitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double MapLocation.longitude.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MapLocation.longitude.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path setter for MapLocation.mapItem : MapLocation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t MapLocation.pinType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MapLocation.pinType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t MapLocation.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);

  return v1;
}

uint64_t MapLocation.city.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);

  return v1;
}

uint64_t MapLocation.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval;
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MapLocation.hash(into:)()
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  return dispatch thunk of Hashable.hash(into:)();
}

MomentsUI::MapLocation::PlaceType_optional __swiftcall MapLocation.PlaceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MapLocation.init(latitude:longitude:mapItem:confidenceLevel:horizontalUncertainty:pinType:clusterCount:name:city:dateInterval:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  v13 = v12;
  v25 = *a2;
  UUID.init()();
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = a11;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = a12;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = a3;
  v26 = (v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
  *v26 = a4;
  v26[1] = a5;
  v27 = a8;
  v28 = (v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v28 = a6;
  v28[1] = a7;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = a9;
  *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = a10;
  v29 = OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval;
  v30 = type metadata accessor for DateInterval();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v13 + v29, a8, v30);
  if (a1 && a11 > 0.9)
  {
    v32 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    swift_beginAccess();
    *(v13 + v32) = a1;
  }

  else
  {
    v34 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
    v33 = swift_beginAccess();
    *(v13 + v34) = 0;
  }

  if (v25 == 5)
  {
    if (*(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) <= 1)
    {
      if ((*(*v13 + 216))(v33) && (, *(v13 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9))
      {
        v35 = 2;
      }

      else
      {
        v35 = 3;
      }
    }

    else
    {
      v35 = 4;
    }

    v37 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
    swift_beginAccess();
    *(v13 + v37) = v35;
  }

  else
  {
    v36 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
    swift_beginAccess();
    *(v13 + v36) = v25;
  }

  v38 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  if (*(v13 + v38))
  {
    (*(v31 + 8))(v27, v30);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static CommonLogger.viewModel);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v27;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_21607C000, v40, v41, "MapLocation: No pin type inferred", v43, 2u);
      MEMORY[0x21CE94770](v43, -1, -1);

      (*(v31 + 8))(v42, v30);
    }

    else
    {

      (*(v31 + 8))(v27, v30);
    }
  }

  return v13;
}

void MapLocation.inferredPinType.getter(char *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) <= 1)
  {
    if ((*(*v1 + 216))() && (, *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 4;
  }

  *a1 = v3;
}

uint64_t MapLocation.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x64757469676E6F6CLL;
    v8 = 0x6D65744970616DLL;
    if (a1 != 3)
    {
      v8 = 0x6E656469666E6F63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656475746974616CLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 2037672291;
    if (a1 != 9)
    {
      v2 = 0x65746E4965746164;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x657079546E6970;
    v4 = 0x4372657473756C63;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MapLocation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MapLocation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MapLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MapLocation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapLocation.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11MapLocation_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MapLocation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11MapLocation_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval;
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t MapLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI11MapLocationC10CodingKeys33_56257CC2A2AA9975D77C3B1EC10A3611LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v9 = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    (*(*v3 + 168))(v9);
    LOBYTE(v15) = 1;
    v10 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v3 + 192))(v10);
    LOBYTE(v15) = 2;
    v11 = KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (*(*v3 + 216))(v11);
    HIBYTE(v14) = 3;
    type metadata accessor for MapItem();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type MapItem and conformance MapItem, type metadata accessor for MapItem);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v15) = 4;
    v12 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v3 + 240))(&v15, v12);
    HIBYTE(v14) = 5;
    lazy protocol witness table accessor for type MapLocation.PlaceType and conformance MapLocation.PlaceType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = 10;
    type metadata accessor for DateInterval();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int MapLocation.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 264))(v2);
  return Hasher._finalize()();
}

uint64_t MapLocation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  MapLocation.init(from:)(a1);
  return v2;
}

uint64_t MapLocation.init(from:)(void *a1)
{
  v4 = type metadata accessor for DateInterval();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI11MapLocationC10CodingKeys33_56257CC2A2AA9975D77C3B1EC10A3611LLOGMd);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - v7;
  v35 = OBJC_IVAR____TtC9MomentsUI11MapLocation_id;
  UUID.init()();
  v37 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  v38 = v1;
  *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  *(v1 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  v10 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys();
  v33 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v28 = v38;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v28 + v35, v13);

    type metadata accessor for MapLocation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v9;
    v29 = v6;
    v30 = v4;
    v12 = v32;
    v40 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v38;
    *(v38 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = v16;
    v40 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v37;
    *(v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = v18;
    type metadata accessor for MapItem();
    v40 = 3;
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type MapItem and conformance MapItem, type metadata accessor for MapItem);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v39;
    swift_beginAccess();
    *(v15 + v17) = v19;

    LOBYTE(v39) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = v20;
    LOBYTE(v39) = 5;
    lazy protocol witness table accessor for type MapLocation.PlaceType and conformance MapLocation.PlaceType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v19) = v41;
    swift_beginAccess();
    *(v15 + v11) = v19;
    v41 = 6;
    *(v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = v21;
    v41 = 8;
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = (v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name);
    *v23 = v22;
    v23[1] = v24;
    v41 = 9;
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = (v15 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
    *v26 = v25;
    v26[1] = v27;
    v41 = 10;
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v33, v34);
    v28 = v38;
    (*(v31 + 32))(v38 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v29, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v28;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MapLocation@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 296))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MapLocation()
{
  Hasher.init(_seed:)();
  (*(**v0 + 264))(v2);
  return Hasher._finalize()();
}

uint64_t MapLocation.shouldUsePOIIcon.getter()
{
  result = (*(*v0 + 216))();
  if (result)
  {

    return *(v0 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9;
  }

  return result;
}

Swift::Void __swiftcall MapLocation.makeGeneric()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v0 + v1) = 0;

  if (*(v0 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) < 2)
  {
    if ((*(*v0 + 216))(v2) && (, *(v0 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) > 0.9))
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 4;
  }

  v4 = v3;
  (*(*v0 + 248))(&v4);
}

uint64_t MapLocation.requiresRehydration.getter()
{
  v1 = (*(*v0 + 216))();
  if (v1)
  {
    v2 = (*(*v1 + 128))(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void MapLocation.hashableCoordinate.getter(double *a1@<X8>)
{
  v3 = (*(*v1 + 168))();
  v4 = (*(*v1 + 192))();
  *a1 = v3;
  a1[1] = v4;
}

unint64_t lazy protocol witness table accessor for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.CodingKeys and conformance MapLocation.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MapLocation.PlaceType and conformance MapLocation.PlaceType()
{
  result = lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType;
  if (!lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType;
  if (!lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType;
  if (!lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType;
  if (!lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapLocation.PlaceType and conformance MapLocation.PlaceType);
  }

  return result;
}

uint64_t type metadata accessor for MapLocation()
{
  result = type metadata singleton initialization cache for MapLocation;
  if (!type metadata singleton initialization cache for MapLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for MapLocation()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t specialized MapLocation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D65744970616DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEF6C6576654C6563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657079546E6970 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4372657473756C63 && a2 == 0xEC000000746E756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002165754E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t static MapCollectionViewAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MapCollectionViewAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *MapCollectionViewAssetCell.mapView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI26MapCollectionViewAssetCell_mapView);
  v2 = v1;
  return v1;
}

id MapCollectionViewAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MapCollectionViewAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MapCollectionViewAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MapCollectionViewAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v4 = 3;
  v3 = objc_allocWithZone(type metadata accessor for MapView());
  *(v0 + v1) = MapView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MapCollectionViewAssetCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[MapCollectionViewAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI26MapCollectionViewAssetCell_mapView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x150))();
  }
}

id MapCollectionViewAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapCollectionViewAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MapCollectionViewAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MapCollectionViewAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v12 = 3;
  v3 = objc_allocWithZone(type metadata accessor for MapView());
  v4 = MapView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for MapCollectionViewAssetCell()
{
  result = type metadata singleton initialization cache for MapCollectionViewAssetCell;
  if (!type metadata singleton initialization cache for MapCollectionViewAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static LivePhotoCollectionCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static LivePhotoCollectionCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *LivePhotoCollectionCell.livePhotoView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23LivePhotoCollectionCell_livePhotoView);
  v2 = v1;
  return v1;
}

id LivePhotoCollectionCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LivePhotoCollectionCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LivePhotoCollectionCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23LivePhotoCollectionCell_livePhotoView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableLivePhotoViewModel.empty;
  v4 = 2;
  v3 = objc_allocWithZone(type metadata accessor for LivePhotoView());
  *(v0 + v1) = LivePhotoView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LivePhotoCollectionCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[LivePhotoCollectionCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI23LivePhotoCollectionCell_livePhotoView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x128))();
  }
}

id LivePhotoCollectionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePhotoCollectionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized LivePhotoCollectionCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23LivePhotoCollectionCell_livePhotoView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableLivePhotoViewModel.empty;
  v12 = 2;
  v3 = objc_allocWithZone(type metadata accessor for LivePhotoView());
  v4 = LivePhotoView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView()) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for LivePhotoCollectionCell()
{
  result = type metadata singleton initialization cache for LivePhotoCollectionCell;
  if (!type metadata singleton initialization cache for LivePhotoCollectionCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of URLBasedAsset.getAssetURL(assetType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = static Exif.filterImage(imageSource:outputURL:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t ClientVideoViewModel.video.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = DBAssetModel.baseVideo.getter();

    return v1;
  }

  return result;
}

uint64_t ClientVideoViewModel.thumbnail.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientVideoViewModel.videoDurationSeconds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

uint64_t ClientVideoViewModel.videoDurationSeconds.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

__n128 ClientVideoViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_portraitCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientVideoViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_landscapeCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

__n128 ClientVideoViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_squareCropRect;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t ClientVideoViewModel.title.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t ClientVideoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientVideoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientVideoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientVideoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientVideoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientVideoViewModel.init(from:)()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_portraitCropRect;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_landscapeCropRect;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  v4 = v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_squareCropRect;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_cloudIdentifier);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_localIdentifier);
  *v6 = 0;
  v6[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientVideoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientVideoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for VideoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  v5 = objc_allocWithZone(type metadata accessor for VideoStaticView());
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  v8 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v9 = static VideoView.Constants.accessibilityString;
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v11 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v12 = v6;
  *&v3[v10] = [v11 init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AssetView();
  v15 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0xE8);
  v17 = v15;
  v16();
  AssetView.setFallBackView()();
  [v17 setIsAccessibilityElement_];
  v18 = [v17 accessibilityTraits];
  if ((v8 & ~v18) != 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  [v17 setAccessibilityTraits_];
  v20 = MEMORY[0x21CE91FC0](v9, *(&v9 + 1));
  [v17 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  v22 = type metadata accessor for UITraitUserInterfaceStyle();
  v23 = MEMORY[0x277D74BF0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v17;
  MEMORY[0x21CE92C30](v21, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v24 handleTraitChange];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setClipsToBounds_];
  v25 = *&v24[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
  v26 = v24;
  [v26 addSubview_];
  [v26 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v28 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v29 = [objc_opt_self() systemImageNamed_];

  [v27 setImage_];
  return v15;
}