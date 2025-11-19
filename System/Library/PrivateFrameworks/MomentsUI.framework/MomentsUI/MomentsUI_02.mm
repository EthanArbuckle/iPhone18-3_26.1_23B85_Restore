Swift::String __swiftcall EditableLabelView.latestTitle()()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle);
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_newTitle + 8);
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title);
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_title + 8);
  }

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id EditableLabelView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EditableLabelView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditableLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void one-time initialization function for accessibilityString()
{
  type metadata accessor for MotionActivityView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x80000002165779E0;
  v2._object = 0x80000002165779C0;
  v5._countAndFlagsBits = 0xD000000000000034;
  v2._countAndFlagsBits = 0xD000000000000015;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static Constants.accessibilityString = v4;
}

{
  type metadata accessor for ContactView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x8000000216578BA0;
  v2._countAndFlagsBits = 0x20746361746E6F43;
  v2._object = 0xED00007465737341;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static ContactView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for StateOfMindView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x80000002165797E0;
  v2._object = 0x80000002165797C0;
  v5._countAndFlagsBits = 0xD000000000000032;
  v2._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static Constants.accessibilityString = v4;
}

{
  type metadata accessor for WorkoutView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657B330;
  v2._countAndFlagsBits = 0x2074756F6B726F57;
  v2._object = 0xED00007465737341;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002CLL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static Constants.accessibilityString = v4;
}

{
  type metadata accessor for MapView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657D2F0;
  v2._countAndFlagsBits = 0x70616E732070614DLL;
  v2._object = 0xEC000000746F6873;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static MapView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for PhotoView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657E7E0;
  v2._countAndFlagsBits = 0x6F746F6850;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002ALL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static PhotoView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for LivePhotoView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657E7E0;
  v2._countAndFlagsBits = 0x6F746F6850;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002ALL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static LivePhotoView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for VideoView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657E7E0;
  v2._countAndFlagsBits = 0x6F65646956;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000002ALL;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static VideoView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for MediaThirdPartyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x8000000216583300;
  v2._object = 0x80000002165832E0;
  v5._countAndFlagsBits = 0xD000000000000032;
  v2._countAndFlagsBits = 0xD000000000000013;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static MediaThirdPartyView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for ReflectionView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x80000002165869E0;
  v2._object = 0x80000002165869C0;
  v5._countAndFlagsBits = 0xD00000000000002FLL;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static ReflectionView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for MediaFirstPartyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x8000000216587520;
  v2._countAndFlagsBits = 0x746920616964654DLL;
  v2._object = 0xEA00000000006D65;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000030;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static MediaFirstPartyView.Constants.accessibilityString = v4;
}

{
  type metadata accessor for PosterView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021658A5E0;
  v2._countAndFlagsBits = 0x726574736F50;
  v2._object = 0xE600000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000025;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static PosterView.Constants.accessibilityString = v4;
}

uint64_t MotionActivityView.title.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = (*(*(v3 + 8) + 8))(ObjectType);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t MotionActivityView.subtitle.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = (*(v3 + 32))(ObjectType, v3);

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *MotionActivityView.__allocating_init(viewModel:style:)(void *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v13 = *a2;
  v6 = a1;
  v7 = LabeledImageView.init(viewModel:style:)(v6, &v13);
  v8 = v7;
  if (v7)
  {
    v9 = one-time initialization token for accessibilityString;
    v10 = v7;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v10 setAccessibilityLabel_];
  }

  return v8;
}

void *MotionActivityView.init(viewModel:style:)(void *a1, char *a2)
{
  v9 = *a2;
  v2 = a1;
  v3 = LabeledImageView.init(viewModel:style:)(v2, &v9);
  v4 = v3;
  if (v3)
  {
    v5 = one-time initialization token for accessibilityString;
    v6 = v3;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x21CE91FC0](static Constants.accessibilityString, *(&static Constants.accessibilityString + 1));
    [v6 setAccessibilityLabel_];
  }

  return v4;
}

id MotionActivityView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t MotionActivityView.updateViews(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](MotionActivityView.updateViews(for:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x2822009F8](MotionActivityView.updateViews(for:), v4, v3);
}

uint64_t MotionActivityView.updateViews(for:)()
{
  v0[9] = *(v0[3] + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = MotionActivityView.updateViews(for:);
  v2 = v0[2];

  return LabeledImageView.image(style:)(v2);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);
  if (v1)
  {
    v4 = *(v0 + 88);
    v5 = v3;
    v6 = [v4 imageWithRenderingMode_];
  }

  else
  {
    v7 = v3;
    v4 = 0;
    v6 = 0;
  }

  [v3 setImage_];

  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MotionActivityView.updateViews(for:), v9, v8);
}

{
  v1 = *(v0 + 16);

  if (v1 == 1)
  {
    v2 = one-time initialization token for motionRedExtraFaded;
    v3 = &static CommonTheme.Color.motionRedExtraFaded;
  }

  else
  {
    v2 = one-time initialization token for motionRedFaded;
    v3 = &static CommonTheme.Color.motionRedFaded;
  }

  if (v2 != -1)
  {
    swift_once();
  }

  [*(v0 + 24) setBackgroundColor_];
  v4 = *(v0 + 8);

  return v4();
}

id MotionActivityView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MotionActivityView()
{
  result = type metadata singleton initialization cache for MotionActivityView;
  if (!type metadata singleton initialization cache for MotionActivityView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SuggestionsOnboardingViewController.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SuggestionsOnboardingViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SuggestionsOnboardingViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

void SuggestionsOnboardingViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t SuggestionsOnboardingViewController.onboardingOnlyPresentation.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_onboardingOnlyPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SuggestionsOnboardingViewController.onboardingOnlyPresentation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_onboardingOnlyPresentation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SuggestionsOnboardingViewController.__allocating_init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v8;
}

id SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = specialized SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

Swift::Void __swiftcall SuggestionsOnboardingViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, &v2[v12], v5);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  (*(v6 + 32))(v16 + v15, v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:), v16);

  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1);
}

uint64_t closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:);

  return CloudManager.retainUIActive(_:_:_:)(v5, "viewDidAppear(_:)", 17, 2, 33);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall SuggestionsOnboardingViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewDidDisappear_, a1);
  v11 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  (*(v5 + 16))(v7, &v1[v11], v4);
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  (*(v5 + 32))(v15 + v14, v7, v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:), v15);
}

uint64_t closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "viewDidDisappear(_:)", 20, 2, 43);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:), v3, v2);
}

void SuggestionsOnboardingViewController.addCustomizationBulletedListItem()()
{
  v1 = v0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v25._object = 0x8000000216577AF0;
  v5._object = 0x8000000216577AD0;
  v25._countAndFlagsBits = 0xD00000000000002DLL;
  v5._countAndFlagsBits = 0xD000000000000018;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  type metadata accessor for UIAction();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v8;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v10 = specialized static OnboardingViewController.createListItemLinkButton(title:action:)(v7._countAndFlagsBits, v7._object, v9);

  v11 = [v3 bundleForClass_];
  v26._object = 0x8000000216577B20;
  v12._countAndFlagsBits = 0x2064657461727543;
  v12._object = 0xEF756F5920726F66;
  v26._countAndFlagsBits = 0xD000000000000027;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v26);

  v15 = MEMORY[0x21CE91FC0](v14._countAndFlagsBits, v14._object);

  v16 = [v3 bundleForClass_];
  v27._object = 0x8000000216577BB0;
  v17._countAndFlagsBits = 0xD000000000000050;
  v17._object = 0x8000000216577B50;
  v27._countAndFlagsBits = 0xD000000000000026;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v27);

  v20 = MEMORY[0x21CE91FC0](v19._countAndFlagsBits, v19._object);

  v21 = MEMORY[0x21CE91FC0](0x6C7562746867696CLL, 0xED000078616D2E62);
  v23 = [objc_opt_self() systemBlueColor];
  [v1 addBulletedListItemWithTitle:v15 description:v20 symbolName:v21 tintColor:v23 linkButton:v10];
}

void closure #1 in SuggestionsOnboardingViewController.addCustomizationBulletedListItem()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SuggestionsOnboardingViewController.customizeSuggestionsButtonTapped()();
  }
}

uint64_t SuggestionsOnboardingViewController.customizeSuggestionsButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Journaling Suggestions] Tapped Customize Suggestions button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall SuggestionsOnboardingViewController.onboardButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Journaling Suggestions] Tapped Turn On Journaling Suggestions button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v9 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_onboardingOnlyPresentation;
    swift_beginAccess();
    (*(v7 + 16))(v1, *(v1 + v9), ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall SuggestionsOnboardingViewController.notNowButtonTapped()()
{
  v1 = v0;
  if (one-time initialization token for onboarding != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.onboarding);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[Journaling Suggestions] Tapped Not Now button", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(v1, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t SuggestionsOnboardingViewController.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_sessionUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;

  return outlined destroy of weak SuggestionsOnboardingViewControllerDelegate?(v3);
}

id SuggestionsOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  UUID.init()();
  v6 = v3 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate;
  *(v3 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_onboardingOnlyPresentation;
  *(v3 + OBJC_IVAR____TtC9MomentsUI35SuggestionsOnboardingViewController_onboardingOnlyPresentation) = 0;
  swift_beginAccess();
  *(v6 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v3 + v7) = a3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v19._object = 0x8000000216577C40;
  v11._object = 0x8000000216577C20;
  v19._countAndFlagsBits = 0xD000000000000027;
  v11._countAndFlagsBits = 0xD000000000000016;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v19);

  v14 = [v9 bundleForClass_];
  v20._object = 0x8000000216577C90;
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  v15._object = 0x8000000216577C70;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

  return OnboardingViewController.init(title:detailText:onboardButtonTitle:)(v13._countAndFlagsBits, v13._object, 0, 0, v17._countAndFlagsBits, v17._object);
}

uint64_t partial apply for closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:)(a1, v6, v7, v1 + v5);
}

uint64_t type metadata accessor for SuggestionsOnboardingViewController()
{
  result = type metadata singleton initialization cache for SuggestionsOnboardingViewController;
  if (!type metadata singleton initialization cache for SuggestionsOnboardingViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SuggestionsOnboardingViewController()
{
  result = type metadata accessor for UUID();
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

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:)(a1, v6, v7, v1 + v5);
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

uint64_t static MapCollectionViewSmallAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static MapCollectionViewSmallAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *MapCollectionViewSmallAssetCell.mapView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI31MapCollectionViewSmallAssetCell_mapView);
  v2 = v1;
  return v1;
}

id MapCollectionViewSmallAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MapCollectionViewSmallAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MapCollectionViewSmallAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI31MapCollectionViewSmallAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v4 = 1;
  v3 = objc_allocWithZone(type metadata accessor for MapView());
  *(v0 + v1) = MapView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MapCollectionViewSmallAssetCell.releaseResources()()
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
    _os_log_impl(&dword_21607C000, v3, v4, "[MapCollectionViewSmallAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI31MapCollectionViewSmallAssetCell_mapView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x150))();
  }
}

id MapCollectionViewSmallAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapCollectionViewSmallAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized MapCollectionViewSmallAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI31MapCollectionViewSmallAssetCell_mapView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableMapViewModel.empty;
  v12 = 1;
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

uint64_t type metadata accessor for MapCollectionViewSmallAssetCell()
{
  result = type metadata singleton initialization cache for MapCollectionViewSmallAssetCell;
  if (!type metadata singleton initialization cache for MapCollectionViewSmallAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientWorkoutViewModel.workoutIcon.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientWorkoutViewModel.routelocations.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouteLocation();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations;
  v15 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations);
  if (v15)
  {
  }

  else
  {
    v38 = v11;
    Strong = swift_weakLoadStrong();
    v15 = Strong;
    if (Strong)
    {
      v17 = (*(*Strong + 520))(Strong);

      if (v17)
      {
        v18 = v17;
        v42 = MEMORY[0x277D84F90];
        v19 = *(v17 + 16);
        if (v19)
        {
          v35 = v14;
          v36 = v1;
          v20 = *(v38 + 20);
          v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
          v34[1] = v18;
          v22 = v18 + v21;
          v23 = *(v10 + 72);
          v24 = v20;
          v25 = (v6 + 48);
          v40 = (v6 + 32);
          v41 = v23;
          v15 = MEMORY[0x277D84F90];
          v39 = (v6 + 8);
          v26 = v38;
          v37 = v20;
          do
          {
            outlined init with copy of RouteLocation(v22, v13);
            outlined init with copy of Date?(v13 + v24, v4);
            if ((*v25)(v4, 1, v5) == 1)
            {
              outlined destroy of RouteLocation(v13);
              outlined destroy of UTType?(v4, &_s10Foundation4DateVSgMd);
            }

            else
            {
              (*v40)(v8, v4, v5);
              v27 = v13 + *(v26 + 24);
              if (v27[16])
              {
                (*v39)(v8, v5);
                outlined destroy of RouteLocation(v13);
              }

              else
              {
                v28 = CLLocationCoordinate2DMake(*v27, *(v27 + 1));
                if (*(v13 + 8))
                {
                  v29 = 0.0;
                }

                else
                {
                  v29 = *v13;
                }

                v30 = objc_allocWithZone(MEMORY[0x277CE41F8]);
                isa = Date._bridgeToObjectiveC()().super.isa;
                [v30 initWithCoordinate:isa altitude:v28.latitude horizontalAccuracy:v28.longitude verticalAccuracy:0.0 course:0.0 speed:0.0 timestamp:{0.0, v29}];

                (*v39)(v8, v5);
                v32 = outlined destroy of RouteLocation(v13);
                MEMORY[0x21CE92260](v32);
                if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v15 = v42;
                v24 = v37;
                v26 = v38;
              }
            }

            v22 += v41;
            --v19;
          }

          while (v19);

          v14 = v35;
          v1 = v36;
        }

        else
        {

          v15 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    *(v1 + v14) = v15;
  }

  return v15;
}

uint64_t outlined init with copy of RouteLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RouteLocation(uint64_t a1)
{
  v2 = type metadata accessor for RouteLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClientWorkoutViewModel.isRouteBasedWorkout.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v38 - v5;
  v44 = type metadata accessor for Date();
  v7 = *(v44 - 8);
  v8 = MEMORY[0x28223BE20](v44);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v0) + 0x288))(v16);
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = v20;
  v39 = v12;
  v40 = v4;
  v43 = v18;
  v41 = v7;
  v22 = *((*v19 & *v0) + 0xE8);
  v22();
  v23 = type metadata accessor for DateInterval();
  v24 = *(*(v23 - 8) + 48);
  if (v24(v6, 1, v23))
  {

    v25 = v6;
LABEL_6:
    outlined destroy of UTType?(v25, &_s10Foundation12DateIntervalVSgMd);
LABEL_7:
    v29 = 0;
    return v29 & 1;
  }

  DateInterval.start.getter();
  outlined destroy of UTType?(v6, &_s10Foundation12DateIntervalVSgMd);
  v26 = v41;
  v38[0] = *(v41 + 32);
  v38[1] = v41 + 32;
  v27 = (v38[0])(v43, v15, v44);
  v28 = v40;
  (v22)(v27);
  if (v24(v28, 1, v23))
  {
    (*(v26 + 8))(v43, v44);

    v25 = v28;
    goto LABEL_6;
  }

  v31 = v42;
  DateInterval.end.getter();
  outlined destroy of UTType?(v28, &_s10Foundation12DateIntervalVSgMd);
  v32 = v39;
  v33 = v44;
  (v38[0])(v39, v31, v44);
  if (v21 >> 62)
  {
    v34 = __CocoaSet.count.getter();
  }

  else
  {
    v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v41;
  v36 = v43;
  if (v34 < 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = specialized static MutableWorkoutViewModel.meetsMinimumRequirements(_:startDate:endDate:)(v21);
  }

  v37 = *(v35 + 8);
  v37(v32, v33);
  v37(v36, v33);
  return v29 & 1;
}

void *ClientWorkoutViewModel.activeEnergyBurned.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurned);
  v2 = v1;
  return v1;
}

uint64_t ClientWorkoutViewModel.activeEnergyBurnedLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurnedLocalizedString);

  return v1;
}

void *ClientWorkoutViewModel.distance.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distance);
  v2 = v1;
  return v1;
}

uint64_t ClientWorkoutViewModel.distanceLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distanceLocalizedString);

  return v1;
}

void *ClientWorkoutViewModel.averageHeartRate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRate);
  v2 = v1;
  return v1;
}

uint64_t ClientWorkoutViewModel.averageHeartRateLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRateLocalizedString);

  return v1;
}

uint64_t ClientWorkoutViewModel.durationLocalizedString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_durationLocalizedString);

  return v1;
}

uint64_t ClientWorkoutViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientWorkoutViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientWorkoutViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientWorkoutViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientWorkoutViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientWorkoutViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientWorkoutViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientWorkoutViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientWorkoutViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for WorkoutView());
  return WorkoutView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientWorkoutViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientWorkoutViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientWorkoutViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for WorkoutViewModel.activeEnergyBurned.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurned);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for WorkoutViewModel.activeEnergyBurnedLocalizedString.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurnedLocalizedString);

  return v1;
}

void *protocol witness for WorkoutViewModel.distance.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distance);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for WorkoutViewModel.distanceLocalizedString.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distanceLocalizedString);

  return v1;
}

void *protocol witness for WorkoutViewModel.averageHeartRate.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRate);
  v2 = v1;
  return v1;
}

uint64_t protocol witness for WorkoutViewModel.averageHeartRateLocalizedString.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRateLocalizedString);

  return v1;
}

uint64_t protocol witness for WorkoutViewModel.durationLocalizedString.getter in conformance ClientWorkoutViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_durationLocalizedString);

  return v1;
}

uint64_t specialized ClientWorkoutViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v54[3] = a3;
  v54[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v54, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBWorkoutModel();
  if (swift_dynamicCast())
  {
    v8 = v52;
    v9 = (*(*v52 + 512))();
    if (v9)
    {
      v10 = v9;
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
        goto LABEL_40;
      }

      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v50 = v8;
      v51 = a2;
      if (v12)
      {
        v13 = 0;
        v14 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x21CE93180](v13, v10);
            a2 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              goto LABEL_39;
            }

            v15 = *(v10 + 8 * v13 + 32);

            a2 = (v13 + 1);
            if (__OFADD__(v13, 1))
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v12 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v16 = objc_allocWithZone(type metadata accessor for ClientWorkoutViewModel());
          v17 = specialized ClientWorkoutViewModel.init(dbObject:)(v15, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
          }

          v8 = v14[2];
          v18 = v14[3];
          if (v8 >= v18 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v8 + 1, 1, v14);
          }

          v14[2] = v8 + 1;
          v19 = &v14[2 * v8];
          v19[4] = v17;
          v19[5] = &protocol witness table for ClientWorkoutViewModel;
          ++v13;
          if (a2 == v12)
          {
            goto LABEL_21;
          }
        }
      }

      v14 = MEMORY[0x277D84F90];
LABEL_21:

      a2 = v51;
      v8 = v50;
    }

    else
    {
      v14 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_workoutViewModels] = v14;
    v20 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue + 8);
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue);
    }

    v22 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activityType];
    *v22 = v21;
    v22[8] = v20;
    if (*(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString + 8) && (*(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue + 8) & 1) == 0)
    {
      v24 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue);
      v25 = MEMORY[0x21CE91FC0](*(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString));
      v26 = [objc_opt_self() unitFromString_];

      v23 = [objc_opt_self() quantityWithUnit:v26 doubleValue:v24];
    }

    else
    {
      v23 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurned] = v23;
    v27 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString + 8);
    v28 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurnedLocalizedString];
    *v28 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString);
    v28[1] = v27;
    v29 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString + 8);
    if (v29 && (*(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue + 8) & 1) == 0)
    {
      v31 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString);
      v32 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue);

      v33 = MEMORY[0x21CE91FC0](v31, v29);
      v34 = [objc_opt_self() unitFromString_];

      v30 = [objc_opt_self() quantityWithUnit:v34 doubleValue:v32];
    }

    else
    {

      v30 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distance] = v30;
    v35 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString + 8);
    v36 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distanceLocalizedString];
    *v36 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString);
    v36[1] = v35;
    v37 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString + 8);
    if (v37 && (*(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue + 8) & 1) == 0)
    {
      v39 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString);
      v40 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue);

      v41 = MEMORY[0x21CE91FC0](v39, v37);
      v42 = [objc_opt_self() unitFromString_];

      v38 = [objc_opt_self() quantityWithUnit:v42 doubleValue:v40];
    }

    else
    {

      v38 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRate] = v38;
    v43 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString + 8);
    v44 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRateLocalizedString];
    *v44 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString);
    v44[1] = v43;
    LOBYTE(v44) = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration + 8);
    v45 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_duration];
    *v45 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration);
    v45[8] = v44;
    v46 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString + 8);
    v47 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_durationLocalizedString];
    *v47 = *(v8 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString);
    v47[1] = v46;
    swift_weakAssign();

    v48 = specialized AssetViewModel.init(clientDBObject:)(v8, a2);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v48;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientWorkoutViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientWorkoutViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientWorkoutViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientWorkoutViewModel()
{
  result = type metadata singleton initialization cache for ClientWorkoutViewModel;
  if (!type metadata singleton initialization cache for ClientWorkoutViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ApprovedApplicationList.applications.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL ApprovedApplicationList.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplicationList.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

BOOL ApprovedApplicationList.CodingKeys.init(stringValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ApprovedApplicationList.CodingKeys.init(stringValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ApprovedApplicationList.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ApprovedApplicationList.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ApprovedApplicationList.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ApprovedApplicationList.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ApprovedApplicationList.CodingKeys(uint64_t a1@<X8>)
{
  strcpy(a1, "applications");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ApprovedApplicationList.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ApprovedApplicationList.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ApprovedApplicationList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ApprovedApplicationList.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ApprovedApplicationList.encode(with:)(NSCoder with)
{
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x58))())
  {
    type metadata accessor for ApprovedApplication();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = MEMORY[0x21CE91FC0](0x746163696C707061, 0xEC000000736E6F69);
  [(objc_class *)with.super.isa encodeObject:v3.super.isa forKey:v4];
  swift_unknownObjectRelease();
}

id ApprovedApplicationList.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *&v4[OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications] = 0;
  type metadata accessor for ApprovedApplication();
  v6 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *&v4[v5] = v6;

  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id ApprovedApplicationList.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *&v2[OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications] = 0;
  type metadata accessor for ApprovedApplication();
  v5 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *&v2[v4] = v5;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ApprovedApplicationList();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

void ApprovedApplicationList.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id ApprovedApplicationList.__allocating_init(apps:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *&v3[OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications] = 0;
  swift_beginAccess();
  *&v3[v4] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ApprovedApplicationList.init(apps:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *&v1[OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications] = 0;
  swift_beginAccess();
  *&v1[v3] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ApprovedApplicationList();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ApprovedApplicationList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApprovedApplicationList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApprovedApplicationList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys;
  if (!lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ApprovedApplicationList.CodingKeys and conformance ApprovedApplicationList.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApprovedApplicationList.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ApprovedApplicationList.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id CloudSyncSuggestion.assets.getter()
{
  result = [v0 assetsData];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGMd);
    lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A]();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v3, v5);
    return v6;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DBAsset] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI7DBAssetCGMd);
    lazy protocol witness table accessor for type DBAsset and conformance DBAsset(&lazy protocol witness table cache variable for type DBAsset and conformance DBAsset, type metadata accessor for DBAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MomentsUI7DBAssetCGMd);
    lazy protocol witness table accessor for type DBSuggestion and conformance DBSuggestion(&lazy protocol witness table cache variable for type DBAsset and conformance DBAsset, type metadata accessor for DBAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DBAsset] and conformance <A> [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CloudSyncSuggestion.assetIDs.getter()
{
  v1 = [v0 assetIDsData];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v3, v5);
  return v7;
}

uint64_t CloudSyncSuggestion.assetIDs.setter()
{
  v1 = v0;
  type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x28223BE20]();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd);
  *(swift_allocObject() + 16) = xmmword_21658CA60;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  lazy protocol witness table accessor for type DBAsset and conformance DBAsset(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setAssetIDsData_];

  outlined consume of Data._Representation(v2, v4);
}

uint64_t lazy protocol witness table accessor for type DBAsset and conformance DBAsset(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*CloudSyncSuggestion.assetIDs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudSyncSuggestion.assetIDs.getter();
  return CloudSyncSuggestion.assetIDs.modify;
}

uint64_t CloudSyncSuggestion.assetIDs.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return CloudSyncSuggestion.assetIDs.setter();
  }

  CloudSyncSuggestion.assetIDs.setter();
}

char CloudSyncSuggestion.subType.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 subTypeInt];
  if (v3)
  {
    v4 = v3;
    v5 = Int.init(truncating:)();

    LOBYTE(v3) = DBSuggestion.SuggestionSubType.init(rawValue:)(v5);
    v6 = v8;
    if (v8 == 65)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return v3;
}

void CloudSyncSuggestion.visibilityCategory.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 visibilityCategoryInt];
  if (v3)
  {
    v4 = v3;
    v5 = UInt.init(truncating:)();

    if (v5 >= 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

float ScreenSize.width.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI10ScreenSize_width;
  swift_beginAccess();
  return *v1;
}

float ScreenSize.height.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI10ScreenSize_height;
  swift_beginAccess();
  return *v1;
}

id one-time initialization function for zero()
{
  v0 = type metadata accessor for ScreenSize();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = 0;
  *&v1[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  static ScreenSize.zero = result;
  return result;
}

id ScreenSize.__allocating_init(width:height:)(float a1, float a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = a1;
  *&v5[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static ScreenSize.zero.getter()
{
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v1 = static ScreenSize.zero;

  return v1;
}

id ScreenSize.init(width:height:)(float a1, float a2)
{
  *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = a1;
  *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ScreenSize();
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL static ScreenSize.== infix(_:_:)(void *a1, void *a2)
{
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  result = 0;
  if (v5 == (*((*v4 & *a2) + 0x60))())
  {
    v6 = (*((*v4 & *a1) + 0x78))();
    if (v6 == (*((*v4 & *a2) + 0x78))())
    {
      return 1;
    }
  }

  return result;
}

MomentsUI::ScreenSize::CodingKeys_optional __swiftcall ScreenSize.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenSize.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_ScreenSize_CodingKeys_height;
  }

  else
  {
    v4.value = MomentsUI_ScreenSize_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

MomentsUI::ScreenSize::CodingKeys_optional __swiftcall ScreenSize.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenSize.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUI_ScreenSize_CodingKeys_height;
  }

  else
  {
    v4.value = MomentsUI_ScreenSize_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ScreenSize.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScreenSize.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746867696568;
  }

  else
  {
    v3 = 0x6874646977;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746867696568;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScreenSize.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScreenSize.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenSize.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScreenSize.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenSize.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScreenSize.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x6874646977;
  if (*v1)
  {
    v2 = 0x746867696568;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ScreenSize.CodingKeys()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScreenSize.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenSize.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenSize.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScreenSize.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall ScreenSize.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  v5 = MEMORY[0x21CE91FC0](0x6874646977, 0xE500000000000000);
  *&v6 = v4;
  [(objc_class *)with.super.isa encodeFloat:v5 forKey:v6];

  v7 = (*((*v3 & *v1) + 0x78))();
  v9 = MEMORY[0x21CE91FC0](0x746867696568, 0xE600000000000000);
  *&v8 = v7;
  [(objc_class *)with.super.isa encodeFloat:v9 forKey:v8];
}

id ScreenSize.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSNumber();
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v5 && (v6 = v5, [v5 floatValue], v8 = v7, v6, (v9 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v10 = v9;
    [v9 floatValue];
    v12 = v11;

    *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = v8;
    *&v4[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = v12;
    v15.receiver = v4;
    v15.super_class = v2;
    v13 = objc_msgSendSuper2(&v15, sel_init);

    return v13;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

id ScreenSize.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSNumber();
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4 && (v5 = v4, [v4 floatValue], v7 = v6, v5, (v8 = NSCoder.decodeObject<A>(of:forKey:)()) != 0))
  {
    v9 = v8;
    [v8 floatValue];
    v11 = v10;

    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = v7;
    *&v2[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = v11;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for ScreenSize();
    v12 = objc_msgSendSuper2(&v14, sel_init);

    return v12;
  }

  else
  {

    type metadata accessor for ScreenSize();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t ScreenSize.scaledBy(factor:)(float a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))() * a1;
  v6 = (*((*v4 & *v1) + 0x78))();
  return (*(ObjectType + 144))(v5, *&v6 * a1);
}

id ScreenSize.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenSize.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenSize();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScreenSize.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI10ScreenSizeC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v9);
  v13[15] = 0;
  v11 = KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    (*((*v10 & *v3) + 0x78))(v11);
    v13[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys);
  }

  return result;
}

id ScreenSize.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI10ScreenSizeC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScreenSize.CodingKeys and conformance ScreenSize.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ScreenSize();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v1[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = v9;
    v14 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v1[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = v11;
    v12 = type metadata accessor for ScreenSize();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ScreenSize@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 192))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t keypath_setTm(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = (*a2 + *a5);
  result = swift_beginAccess();
  *v6 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSize.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenSize.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StateOfMind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  v6 = [a1 kind];
  v7 = type metadata accessor for StateOfMind();
  v8 = a2 + v7[5];
  *v8 = v6;
  *(v8 + 8) = 0;
  [a1 valence];
  v9 = a2 + v7[6];
  *v9 = v10;
  *(v9 + 8) = 0;
  v11 = HKStateOfMind.labels.getter();
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v29 = MEMORY[0x277D84F90];
    v14 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v15 = v14;
    v16 = v29;
    v17 = *(v29 + 16);
    v18 = 32;
    do
    {
      v19 = *(v15 + v18);
      v20 = *(v29 + 24);
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v15 = v14;
      }

      *(v29 + 16) = v17 + 1;
      *(v29 + 8 * v17 + 32) = v19;
      v18 += 8;
      ++v17;
      --v12;
    }

    while (v12);

    v13 = MEMORY[0x277D84F90];
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *(a2 + v7[7]) = v16;
  v21 = HKStateOfMind.associations.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v13;
    v24 = *(v13 + 16);
    v25 = 32;
    do
    {
      v26 = *(v21 + v25);
      v27 = *(v13 + 24);
      if (v24 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v24 + 1, 1);
      }

      *(v13 + 16) = v24 + 1;
      *(v13 + 8 * v24 + 32) = v26;
      v25 += 8;
      ++v24;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  *(a2 + v7[8]) = v23;
  return result;
}

{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI11StateOfMindV10CodingKeys33_943851A03D1A3928EFDA8A64FA1FACB5LLOGMd);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  v10 = type metadata accessor for StateOfMind();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type StateOfMind.CodingKeys and conformance StateOfMind.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v14 = v12;
  type metadata accessor for Date();
  LOBYTE(v27) = 0;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date);
  v15 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of Date?(v6, v14);
  LOBYTE(v27) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v14 + v10[5];
  *v17 = v16;
  *(v17 + 8) = v18 & 1;
  LOBYTE(v27) = 2;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v14 + v10[6];
  *v20 = v19;
  *(v20 + 8) = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
  v26 = 3;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v14 + v10[7]) = v27;
  v26 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v7 + 8))(v9, v15);
  *(v14 + v10[8]) = v27;
  outlined init with copy of StateOfMind(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return outlined destroy of StateOfMind(v14);
}

uint64_t StateOfMind.hkStateOfMind.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  outlined init with copy of Date?(v0, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of Date?(v4);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  v12 = type metadata accessor for StateOfMind();
  v13 = v0 + v12[5];
  if (*(v13 + 8) == 1 || (*(v0 + v12[6] + 8) & 1) != 0 || (v14 = *(v0 + v12[7])) == 0 || !*(v1 + v12[8]))
  {
    (*(v6 + 8))(v11, v5);
    return 0;
  }

  v15 = *v13;
  v34 = *(v1 + v12[8]);
  v35 = v15;
  v16 = *(v6 + 16);
  v36 = v9;
  v16(v9, v11, v5);
  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = (v14 + 32);
    v19 = MEMORY[0x277D84F90];
    do
    {
      v21 = *v18++;
      v20 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19, &_ss23_ContiguousArrayStorageCySo18HKStateOfMindLabelVGMd);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19, &_ss23_ContiguousArrayStorageCySo18HKStateOfMindLabelVGMd);
      }

      *(v19 + 2) = v23 + 1;
      *&v19[8 * v23 + 32] = v20;
      --v17;
    }

    while (v17);
  }

  v25 = *(v34 + 16);
  if (v25)
  {
    v26 = (v34 + 32);
    v27 = MEMORY[0x277D84F90];
    do
    {
      v29 = *v26++;
      v28 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27, &_ss23_ContiguousArrayStorageCySo24HKStateOfMindAssociationVGMd);
      }

      v31 = *(v27 + 2);
      v30 = *(v27 + 3);
      if (v31 >= v30 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27, &_ss23_ContiguousArrayStorageCySo24HKStateOfMindAssociationVGMd);
      }

      *(v27 + 2) = v31 + 1;
      *&v27[8 * v31 + 32] = v28;
      --v25;
    }

    while (v25);
  }

  type metadata accessor for HKStateOfMind();
  v32 = HKStateOfMind.init(date:kind:valence:labels:associations:metadata:)();
  (*(v6 + 8))(v11, v5);
  return v32;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI11DBAssetDataCtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI11DBAssetDataCtGMR, &_s10Foundation4UUIDV_9MomentsUI11DBAssetDataCtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMR, type metadata accessor for RouteLocation);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR, MEMORY[0x277CBBC78]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceVGMR, type metadata accessor for CloudDevice);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR, MEMORY[0x277CDD5C8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR, MEMORY[0x277CC8990]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_AEtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_AEtGMR, &_s10Foundation4UUIDV_ACtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x277CC9260]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC21PendingDatabaseChangeOGMR, MEMORY[0x277CBBC58]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI31SuggestionCollectionViewSectionVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI31SuggestionCollectionViewSectionVGMR, type metadata accessor for SuggestionCollectionViewSection);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMd);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMR, &_s9MomentsUI16WorkoutViewModel_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI32MusicPlaybackCoordinatorDelegate_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI32MusicPlaybackCoordinatorDelegate_pGMR, &_s9MomentsUI32MusicPlaybackCoordinatorDelegate_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMR, &_s9MomentsUI12MapViewModel_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMR, &_s9MomentsUI16ContactViewModel_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMR, &_s9MomentsUI25PlaybackStateViewObserver_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI13URLBasedAsset_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI13URLBasedAsset_pGMR, &_s9MomentsUI13URLBasedAsset_pMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9MomentsUI7DBAssetC_SaySS_SitGtGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI7DBAssetC_SaySS_SitGtGMR, &_s9MomentsUI7DBAssetC_SaySS_SitGtMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SaySo08CKRecordF0CGtGMd, &_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SaySo08CKRecordF0CGtGMR, &_sSo17NSManagedObjectIDC_SaySo08CKRecordC0CGtMd);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay9MomentsUI18HashableCoordinateVGGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI18HashableCoordinateVGMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SitGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SbtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17NSManagedObjectIDC_SbtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for HKStateOfMind()
{
  result = lazy cache variable for type metadata for HKStateOfMind;
  if (!lazy cache variable for type metadata for HKStateOfMind)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKStateOfMind);
  }

  return result;
}

id MutableLivePhotoViewModel.__allocating_init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  *&v16[OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto] = 0;
  swift_weakInit();
  swift_weakAssign();
  (*(v13 + 16))(v15, a5, v12);
  v17 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v15);

  (*(v13 + 8))(a5, v12);
  return v17;
}

id static MutableLivePhotoViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableLivePhotoViewModel.empty;

  return v1;
}

uint64_t MutableLivePhotoViewModel.livePhoto.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MutableLivePhotoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto) = 0;
  swift_weakInit();
  swift_weakAssign();
  (*(v12 + 16))(v14, a5, v11);
  v15 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v14);

  (*(v12 + 8))(a5, v11);
  return v15;
}

uint64_t MutableLivePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableLivePhotoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableLivePhotoViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableLivePhotoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableLivePhotoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableLivePhotoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableLivePhotoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableLivePhotoViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableLivePhotoViewModel.render()()
{
  *(v1 + 280) = v0;
  return MEMORY[0x2822009F8](MutableLivePhotoViewModel.render(), 0, 0);
}

{
  v1 = v0[35];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v0[36] = v2;
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier), swift_beginAccess(), v4 = *v3, v0[37] = *v3, v5 = v3[1], (v0[38] = v5) != 0))
  {
    v6 = v2;

    v7 = swift_task_alloc();
    v0[39] = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = swift_task_alloc();
    v0[40] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd);
    *v8 = v0;
    v8[1] = MutableLivePhotoViewModel.render();

    return MEMORY[0x2822007B8](v0 + 32, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, partial apply for closure #1 in static PhotosUtilities.phAsset(from:), v7, v9);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static CommonLogger.viewModel);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21607C000, v11, v12, "[MutablePhotoViewModel] Doees not have maximumSupportedViewport", v13, 2u);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }
}

{

  return MEMORY[0x2822009F8](MutableLivePhotoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 256);
  *(v0 + 328) = v1;
  if (v1)
  {
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    *(v0 + 352) = 1;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
    v6 = (*((*v4 & *v2) + 0x78))();
    *(v0 + 353) = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    *v7 = v0;
    v7[1] = MutableLivePhotoViewModel.render();

    return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 16, (v0 + 352), (v0 + 353), v5, v6);
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static CommonLogger.viewModel);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 288);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21607C000, v10, v11, "[MutablePhotoViewModel] Cannot retrieve PHAsset", v14, 2u);
      MEMORY[0x21CE94770](v14, -1, -1);
    }

    else
    {

      v10 = v13;
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

{

  return MEMORY[0x2822009F8](MutableLivePhotoViewModel.render(), 0, 0);
}

{
  v21 = v0;
  outlined init with copy of ConstructedPhotosResource?((v0 + 2), (v0 + 7));
  if (v0[10])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd);
    type metadata accessor for PairedPhotoVideo();
    if (swift_dynamicCast())
    {
      v1 = v0[35];

      v2 = v0[34];
      v3 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
      swift_beginAccess();
      *(v1 + v3) = v2;

      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?((v0 + 7));
  }

  outlined init with copy of ConstructedPhotosResource?((v0 + 2), (v0 + 12));
  if (v0[15])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd);
    type metadata accessor for Image();
    if (swift_dynamicCast())
    {
      v4 = v0[35];

      v5 = v0[33];
      type metadata accessor for PairedPhotoVideo();
      v6 = swift_allocObject();
      *(v6 + 24) = 0;
      *(v6 + 16) = 0;
      swift_beginAccess();
      *(v6 + 16) = v5;
      swift_beginAccess();
      *(v6 + 24) = 0;
      v7 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
      swift_beginAccess();
      *(v4 + v7) = v6;

      goto LABEL_14;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?((v0 + 12));
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.viewModel);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[38];
  if (v11)
  {
    v13 = v0[37];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v20);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_21607C000, v9, v10, "[MutablePhotoViewModel] Cannot render, localID=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CE94770](v15, -1, -1);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v17 = v0[41];
  v18 = swift_task_alloc();
  v0[43] = v18;
  *v18 = v0;
  v18[1] = MutableLivePhotoViewModel.render();

  return MutablePhotosFamilyViewModel.sharedRender(asset:)(v17);
}

{

  return MEMORY[0x2822009F8](MutableLivePhotoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 288);

  outlined destroy of ConstructedPhotosResource?(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t MutableLivePhotoViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 96);

  v5 = v3(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = Image.uiImage.getter();

  if (!v6)
  {
    return 0;
  }

  return 1;
}

Swift::Bool __swiftcall MutableLivePhotoViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
  swift_beginAccess();
  *(v0 + v1) = 0;

  return 1;
}

void *MutableLivePhotoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for PhotoView());
  v4 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
  v5 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v6)
  {
    v7 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v8 = static PhotoView.Constants.accessibilityString;
    v9 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v10 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v11 = v6;
    *&v3[v9] = [v10 init];
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
    v31.receiver = v3;
    v31.super_class = type metadata accessor for AssetView();
    v14 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v15 = *((*MEMORY[0x277D85000] & *v14) + 0xE8);
    v16 = v14;
    v15();
    AssetView.setFallBackView()();
    [v16 setIsAccessibilityElement_];
    v17 = [v16 accessibilityTraits];
    if ((v7 & ~v17) != 0)
    {
      v18 = v7;
    }

    else
    {
      v18 = 0;
    }

    [v16 setAccessibilityTraits_];
    v19 = MEMORY[0x21CE91FC0](v8, *(&v8 + 1));
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
    v24 = OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView;
    v25 = *&v23[OBJC_IVAR____TtC9MomentsUI9PhotoView_photoImageView];
    v26 = v23;
    [v25 setContentMode_];
    [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints_];
    [v26 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v28 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
    v29 = [objc_opt_self() systemImageNamed_];

    [v27 setImage_];
    return v14;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t MutableLivePhotoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableLivePhotoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized MutableLivePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v23[3] = a3;
  v23[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBLivePhotoModel();
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v9 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v8, a2);
    v11 = *(v21 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v10 = *(v21 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v12 = &v9[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v12 = v11;
    *(v12 + 1) = v10;
    v13 = v9;

    v14 = v13;

    v16 = *(v21 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v15 = *(v21 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v17 = &v14[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v17 = v16;
    *(v17 + 1) = v15;

    v18 = DBAssetModel.basePairedPhotoVideo.getter();

    __swift_destroy_boxed_opaque_existential_1(v23);
    v19 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
    swift_beginAccess();
    *&v14[v19] = v18;

    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableLivePhotoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableLivePhotoViewModel.init(dbObject:)(v9, v11, a3, a4);
}

uint64_t outlined init with copy of ConstructedPhotosResource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MutableLivePhotoViewModel()
{
  result = type metadata singleton initialization cache for MutableLivePhotoViewModel;
  if (!type metadata singleton initialization cache for MutableLivePhotoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void VideoPlayerBaseView.ViewAdjustment.contentFrame.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void __swiftcall VideoPlayerBaseView.ViewAdjustment.init(contentFrame:verticalShift:horizontalShift:)(MomentsUI::VideoPlayerBaseView::ViewAdjustment *__return_ptr retstr, __C::CGRect contentFrame, Swift::Double verticalShift, Swift::Double horizontalShift)
{
  retstr->contentFrame = contentFrame;
  retstr->verticalShift = verticalShift;
  retstr->horizontalShift = horizontalShift;
}

unint64_t type metadata accessor for AVPlayerLayer()
{
  result = lazy cache variable for type metadata for AVPlayerLayer;
  if (!lazy cache variable for type metadata for AVPlayerLayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVPlayerLayer);
  }

  return result;
}

id VideoPlayerBaseView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VideoPlayerBaseView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for VideoPlayerBaseView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id VideoPlayerBaseView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VideoPlayerBaseView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VideoPlayerBaseView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VideoPlayerBaseView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerBaseView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGFloat static VideoPlayerBaseView.baseViewRect(viewport:cropRect:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetWidth(v29);
  v30.origin.x = a6;
  v30.origin.y = a7;
  v30.size.width = a8;
  v30.size.height = a9;
  CGRectGetHeight(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  CGRectGetHeight(v32);
  v18 = CGRectMake();
  v20 = v19;
  v22 = v21;
  v26 = v23;
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  v24 = CGRectGetWidth(v33) * a6;
  v34.origin.x = a2;
  v34.origin.y = a3;
  v34.size.width = a4;
  v34.size.height = a5;
  result = CGRectGetHeight(v34) * a7;
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22;
  *(a1 + 24) = v26;
  *(a1 + 32) = result;
  *(a1 + 40) = v24;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlayerBaseView.ViewAdjustment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoPlayerBaseView.ViewAdjustment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:size:)(void *a1, void *a2, double a3, double a4)
{
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = v11 * a4;
  v13 = v11 * a4 * 0.5;
  if (!a2 || (v14 = [a2 CGColor]) == 0)
  {
    v15 = [a1 colorWithAlphaComponent_];
    v14 = [v15 CGColor];
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = 0x4000000000000000;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  *(v17 + 48) = a1;
  *(v17 + 56) = v13;
  *(v17 + 64) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:size:);
  *(v18 + 24) = v17;
  v25[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v25[5] = v18;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v25[3] = &block_descriptor;
  v19 = _Block_copy(v25);
  v20 = v4;
  v21 = v14;
  v22 = a1;

  v23 = [v16 imageWithActions_];

  _Block_release(v19);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if ((v21 & 1) == 0)
  {
    return v23;
  }

  __break(1u);
  return result;
}

void closure #1 in UIImage.fitnessTintAndPill(with:backgroundColor:symbolCenteringOffset:size:)(void *a1, void *a2, CGColor *a3, void *a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v15 = [a1 CGContext];
  v29 = [a2 imageWithRenderingMode_];
  v16 = [objc_opt_self() clearColor];
  [v16 set];

  v31.origin.x = a5;
  v31.origin.y = a5;
  v31.size.width = a6;
  v31.size.height = a6;
  CGContextFillRect(v15, v31);
  CGContextSetFillColorWithColor(v15, a3);
  v32.origin.x = a5;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a6;
  CGContextAddEllipseInRect(v15, v32);
  CGContextDrawPath(v15, kCGPathFillStroke);
  [a4 set];
  [v29 size];
  v18 = v17;
  [v29 size];
  v20 = v18 / v19;
  [v29 size];
  v22 = v21;
  [v29 size];
  if (v23 <= v22)
  {
    v27 = v29;
    v28 = a7 / v20;
  }

  else
  {
    [v29 size];
    v25 = v24;
    [v29 size];
    if (v25 >= v26)
    {
      goto LABEL_6;
    }

    v27 = v29;
    v28 = a7;
    a7 = v20 * a7;
  }

  [v27 drawInRect_];
LABEL_6:
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static WorkoutCollectionViewLandscapeAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static WorkoutCollectionViewLandscapeAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *WorkoutCollectionViewLandscapeAssetCell.workoutView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell_workoutView);
  v2 = v1;
  return v1;
}

id WorkoutCollectionViewLandscapeAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutCollectionViewLandscapeAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WorkoutCollectionViewLandscapeAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell_workoutView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableWorkoutViewModel.empty;
  v4 = 4;
  v3 = objc_allocWithZone(type metadata accessor for WorkoutView());
  *(v0 + v1) = WorkoutView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall WorkoutCollectionViewLandscapeAssetCell.releaseResources()()
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
    _os_log_impl(&dword_21607C000, v3, v4, "[WorkoutCollectionViewLandscapeAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell_workoutView);
  if (v6)
  {
    v7 = *(*(v6 + OBJC_IVAR____TtC9MomentsUI16LabeledImageView_imageView) + OBJC_IVAR____TtC9MomentsUI14RoundImageView_imageView);

    [v7 setImage_];
  }
}

id WorkoutCollectionViewLandscapeAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutCollectionViewLandscapeAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized WorkoutCollectionViewLandscapeAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI39WorkoutCollectionViewLandscapeAssetCell_workoutView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableWorkoutViewModel.empty;
  v12 = 4;
  v3 = objc_allocWithZone(type metadata accessor for WorkoutView());
  v4 = WorkoutView.init(viewModel:style:)(v2, &v12);
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

uint64_t type metadata accessor for WorkoutCollectionViewLandscapeAssetCell()
{
  result = type metadata singleton initialization cache for WorkoutCollectionViewLandscapeAssetCell;
  if (!type metadata singleton initialization cache for WorkoutCollectionViewLandscapeAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *VideoPlayerView.Constants.MuteButton.unmuteImage.unsafeMutableAddressor()
{
  if (one-time initialization token for unmuteImage != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.MuteButton.unmuteImage;
}

void one-time initialization function for muteImage()
{
  v0 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x8000000216578210);
  v1 = [objc_opt_self() systemImageNamed_];

  static VideoPlayerView.Constants.MuteButton.muteImage = v1;
}

uint64_t *VideoPlayerView.Constants.MuteButton.muteImage.unsafeMutableAddressor()
{
  if (one-time initialization token for muteImage != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.MuteButton.muteImage;
}

void one-time initialization function for symbolConfig()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76A28];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = [objc_opt_self() configurationWithFont_];
  static VideoPlayerView.Constants.MuteButton.symbolConfig = v3;
}

{
  v0 = [objc_opt_self() whiteColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [objc_opt_self() systemFontOfSize_];
  v4 = [v1 configurationWithFont_];

  v5 = [v2 configurationByApplyingConfiguration_];
  static VideoPlayerView.Constants.PlayPauseButton.symbolConfig = v5;
}

uint64_t *VideoPlayerView.Constants.MuteButton.symbolConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolConfig != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.MuteButton.symbolConfig;
}

uint64_t *VideoPlayerView.Constants.PlayPauseButton.playImage.unsafeMutableAddressor()
{
  if (one-time initialization token for playImage != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.PlayPauseButton.playImage;
}

void one-time initialization function for unmuteImage(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x21CE91FC0](a2, a3);
  v6 = [objc_opt_self() systemImageNamed_];

  *a4 = v6;
}

uint64_t *VideoPlayerView.Constants.PlayPauseButton.pauseImage.unsafeMutableAddressor()
{
  if (one-time initialization token for pauseImage != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.PlayPauseButton.pauseImage;
}

id static VideoPlayerView.Constants.MuteButton.unmuteImage.getter(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

uint64_t *VideoPlayerView.Constants.PlayPauseButton.symbolConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for symbolConfig != -1)
  {
    swift_once();
  }

  return &static VideoPlayerView.Constants.PlayPauseButton.symbolConfig;
}

id static VideoPlayerView.Constants.MuteButton.symbolConfig.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id closure #1 in variable initialization expression of VideoPlayerView.muteButton()
{
  type metadata accessor for OversizedBoundsButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 layer];
  [v1 setMasksToBounds_];

  v2 = [v0 layer];
  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  v5 = [v4 CGColor];

  [v2 setShadowColor_];
  v6 = [v0 layer];
  LODWORD(v7) = 1.0;
  [v6 setShadowOpacity_];

  v8 = [v0 layer];
  [v8 setShadowRadius_];

  v9 = [v0 layer];
  [v9 setShadowOffset_];

  v10 = v0;
  v11 = [v3 whiteColor];
  [v10 setTintColor_];

  return v10;
}

void VideoPlayerView.isPlaying.didset(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
    objc_opt_self();
    v6 = [swift_dynamicCastObjCClassUnconditional() player];

    if (v4)
    {
      [v6 play];

      v7 = *(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton);
      if (one-time initialization token for pauseImage != -1)
      {
        swift_once();
      }

      v8 = static VideoPlayerView.Constants.PlayPauseButton.pauseImage;
      if (static VideoPlayerView.Constants.PlayPauseButton.pauseImage)
      {
LABEL_6:
        if (one-time initialization token for symbolConfig != -1)
        {
          v10 = v8;
          swift_once();
          v8 = v10;
        }

        v9 = [v8 imageWithConfiguration_];
        goto LABEL_13;
      }
    }

    else
    {
      [v6 pause];

      v7 = *(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton);
      if (one-time initialization token for playImage != -1)
      {
        swift_once();
      }

      v8 = static VideoPlayerView.Constants.PlayPauseButton.playImage;
      if (static VideoPlayerView.Constants.PlayPauseButton.playImage)
      {
        goto LABEL_6;
      }
    }

    v9 = 0;
LABEL_13:
    [*(v7 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button) setImage:v9 forState:0];
  }
}

id VideoPlayerView.player.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() player];

  return v2;
}

void VideoPlayerView.setPlayPauseButtonToPause()(void *a1, void **a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton);
  if (*a1 != -1)
  {
    swift_once();
    v4 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (one-time initialization token for symbolConfig != -1)
  {
    v7 = v4;
    swift_once();
    v4 = v7;
  }

  v5 = [v4 imageWithConfiguration_];
LABEL_8:
  v8 = v5;
  [*(v3 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button) setImage_forState_];
}

uint64_t VideoPlayerView.isPlaying.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

void VideoPlayerView.isPlaying.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  VideoPlayerView.isPlaying.didset(v4);
}

void (*VideoPlayerView.isPlaying.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return VideoPlayerView.isPlaying.modify;
}

void VideoPlayerView.isPlaying.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  VideoPlayerView.isPlaying.didset(v5);

  free(v1);
}

Swift::Void __swiftcall VideoPlayerView.releaseResources()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer_];
}

void VideoPlayerView.player.setter(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer_];
}

id VideoPlayerView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *VideoPlayerView.init()()
{
  v1 = [v0 initWithFrame_];
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v4 = v1;
  v3();
  v5 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_handleMuteUnmuteTap_];
  v6 = *(v4 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton);
  [v6 addGestureRecognizer_];
  [v6 setUserInteractionEnabled_];
  [v6 setDeliversTouchesForGesturesToSuperview_];

  v7 = *(v4 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *((*v2 & *v7) + 0x70);

  v9(partial apply for closure #1 in VideoPlayerView.setupPlayPauseButtonHandling(), v8);

  VideoPlayerView.subscribeToAvPlayerNotifications()();

  return v4;
}

Swift::Void __swiftcall VideoPlayerView.setupMuteButtonHandling()()
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleMuteUnmuteTap_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton);
  [v1 addGestureRecognizer_];
  [v1 setUserInteractionEnabled_];
  [v1 setDeliversTouchesForGesturesToSuperview_];
}

Swift::Void __swiftcall VideoPlayerView.setupPlayPauseButtonHandling()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);

  v3(closure #1 in VideoPlayerView.setupPlayPauseButtonHandling()partial apply, v2);
}

Swift::Void __swiftcall VideoPlayerView.subscribeToAvPlayerNotifications()()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = MEMORY[0x21CE91FC0](0xD000000000000028, 0x8000000216578150);
  v3 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v4)
  {
    v5 = [v4 currentItem];

    if (v5)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for AVPlayerItem);
      v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v4 = 0;
    }
  }

  [v1 addObserver:v0 selector:sel_playerItemDidReachEndWithNotification_ name:v2 object:v4];

  swift_unknownObjectRelease();
}

Swift::Void __swiftcall VideoPlayerView.addSubviewsAndStaticContraints()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_durationLabelView];
  [v0 addSubview_];
  v4 = *&v0[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_gradientView];
  [v0 addSubview_];
  v5 = *&v0[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton];
  [v1 addSubview_];
  v6 = *&v1[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton];
  [v1 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v3 superview];
  v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  if (v7)
  {
    v9 = v7;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v10 = [v3 trailingAnchor];
    v11 = [v9 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v12 setConstant_];
    if (v12)
    {
      [v12 setActive_];
    }
  }

  v13 = [v3 superview];
  if (v13)
  {
    v14 = v13;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [v3 bottomAnchor];
    v16 = [v14 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v17)
    {
      [v17 setConstant_];
      [v17 setActive_];
    }
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v4 superview];
  if (v18)
  {
    v19 = v18;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v4 bottomAnchor];
    v21 = [v19 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    v8 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    if (v22)
    {
      [v22 setConstant_];
      [v22 setActive_];
    }
  }

  v23 = [v4 superview];
  if (v23)
  {
    v24 = v23;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v25 = [v4 trailingAnchor];
    v26 = [v24 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    [v27 setConstant_];
    if (v27)
    {
      [v27 v8[8]];
    }
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v5 superview];
  if (v28)
  {
    v29 = v28;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v30 = [v5 trailingAnchor];
    v31 = [v29 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    [v32 setConstant_];
    if (v32)
    {
      [v32 v8[8]];
    }
  }

  v33 = [v5 superview];
  if (v33)
  {
    v34 = v33;
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v35 = [v5 topAnchor];
    v36 = [v34 topAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    [v37 setConstant_];
    if (v37)
    {
      [v37 v8[8]];
    }
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v6 superview];
  if (v38)
  {
    v39 = v38;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v6 leadingAnchor];
    v41 = [v39 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    [v42 setConstant_];
    if (v42)
    {
      [v42 v8[8]];
    }
  }

  v43 = [v6 superview];
  if (v43)
  {
    v44 = v43;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v45 = [v6 topAnchor];
    v46 = [v44 topAnchor];
    v47 = [v45 constraintEqualToAnchor_];

    [v47 setConstant_];
    if (v47)
    {
      [v47 v8[8]];
    }
  }

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = [v6 widthAnchor];
  v49 = [v48 constraintEqualToConstant_];

  [v49 v8[8]];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = [v6 heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  [v51 v8[8]];
}

id VideoPlayerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id VideoPlayerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView;
  type metadata accessor for VideoPlayerBaseView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_durationLabelView;
  specialized static VideoStaticView.buildDurationLabelView()();
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_gradientView;
  *&v4[v12] = specialized static VideoStaticView.buildGradientView()();
  v13 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton;
  *&v4[v13] = closure #1 in variable initialization expression of VideoPlayerView.muteButton();
  v14 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for BlurredRoundButton()) init];
  v4[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
}

id VideoPlayerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VideoPlayerView.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView;
  type metadata accessor for VideoPlayerBaseView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_durationLabelView;
  specialized static VideoStaticView.buildDurationLabelView()();
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_gradientView;
  *&v1[v6] = specialized static VideoStaticView.buildGradientView()();
  v7 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton;
  *&v1[v7] = closure #1 in variable initialization expression of VideoPlayerView.muteButton();
  v8 = OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for BlurredRoundButton()) init];
  v1[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_isPlaying] = 0;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for VideoPlayerView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id VideoPlayerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for VideoPlayerView.player : VideoPlayerView(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [*(*a1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() player];

  *a2 = v4;
}

void key path setter for VideoPlayerView.player : VideoPlayerView(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = [*(*a2 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer_];
}

void (*VideoPlayerView.player.modify(void *a1))(id *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView);
  a1[1] = v3;
  v4 = [v3 layer];
  objc_opt_self();
  v5 = [swift_dynamicCastObjCClassUnconditional() player];

  *a1 = v5;
  return VideoPlayerView.player.modify;
}

void VideoPlayerView.player.modify(id *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v3 = *a1;
    v4 = [v2 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer_];

    v5 = v3;
  }

  else
  {
    v5 = *a1;
    v3 = [a1[1] layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer_];
  }
}

void VideoPlayerView.updateVideo(video:)(void *a1)
{
  v2 = v1;
  v55 = type metadata accessor for OSSignpostID();
  v4 = *(v55 - 8);
  v5 = MEMORY[0x28223BE20](v55);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v53 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*((*MEMORY[0x277D85000] & *a1) + 0xB8))(v15);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v54 = v2;
      (*(v14 + 32))(v17, v12, v13);
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v18, static CommonSignposter.mediaPlayback);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v19 = OSSignposter.logHandle.getter();
      v20 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v21 = v4;
        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_21607C000, v19, v20, v23, "UIService_LoadVideoAsset", "", v22, 2u);
        v24 = v22;
        v4 = v21;
        MEMORY[0x21CE94770](v24, -1, -1);
      }

      (*(v4 + 16))(v7, v9, v55);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v53[1] = OSSignpostIntervalState.init(id:isOpen:)();
      v25 = *&v54[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView];
      v26 = [v25 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setVideoGravity_];

      v27 = objc_allocWithZone(MEMORY[0x277CE6598]);
      URL._bridgeToObjectiveC()(v28);
      v30 = v29;
      v31 = [v27 initWithURL_];

      v32 = [v25 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setPlayer_];

      v33 = [v25 layer];
      objc_opt_self();
      v34 = [swift_dynamicCastObjCClassUnconditional() player];

      if (v34)
      {
        v35 = [v34 currentItem];

        if (v35)
        {
          v36 = [v35 asset];

          if (v36)
          {
            v53[0] = v4;
            v37 = [objc_opt_self() videoCompositionWithPropertiesOfAsset_];
            [v37 setColorPrimaries_];
            [v37 setColorTransferFunction_];
            [v37 setColorYCbCrMatrix_];
            [v37 renderSize];
            if (v38 <= 0.0 || ([v37 renderSize], v39 <= 0.0))
            {
              v43 = v36;
              v36 = v37;
            }

            else
            {
              v40 = [v25 layer];
              objc_opt_self();
              v41 = [swift_dynamicCastObjCClassUnconditional() player];

              if (v41 && (v42 = [v41 currentItem], v41, v42))
              {
                v43 = v37;
                [v42 setVideoComposition_];
              }

              else
              {
                v43 = v37;
              }
            }

            v4 = v53[0];
          }
        }
      }

      v48 = v54;
      VideoPlayerView.mute()();
      [v48 setAccessibilityIgnoresInvertColors_];
      v49 = *&v48[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_playPauseButton];
      if (one-time initialization token for playImage != -1)
      {
        swift_once();
      }

      v50 = static VideoPlayerView.Constants.PlayPauseButton.playImage;
      if (static VideoPlayerView.Constants.PlayPauseButton.playImage)
      {
        if (one-time initialization token for symbolConfig != -1)
        {
          v52 = static VideoPlayerView.Constants.PlayPauseButton.playImage;
          swift_once();
          v50 = v52;
        }

        v51 = [v50 imageWithConfiguration_];
      }

      else
      {
        v51 = 0;
      }

      [*(v49 + OBJC_IVAR____TtC9MomentsUI18BlurredRoundButton_button) setImage:v51 forState:0];

      $defer #1 () in VideoPlayerView.updateVideo(video:)();

      (*(v4 + 8))(v9, v55);
      (*(v14 + 8))(v17, v13);
      return;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  outlined destroy of URL?(v12);
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static CommonLogger.views);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_21607C000, v45, v46, "[VideoPlayerView] Failed to update video, no valid URL", v47, 2u);
    MEMORY[0x21CE94770](v47, -1, -1);
  }
}

uint64_t $defer #1 () in VideoPlayerView.updateVideo(video:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static CommonSignposter.mediaPlayback);
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
    _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v13, "UIService_LoadVideoAsset", v11, v12, 2u);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall VideoPlayerView.mute()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v2)
  {
    [v2 setMuted_];
  }

  specialized VideoPlayerView.setNonDisruptiveMute()();
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton);
  if (one-time initialization token for unmuteImage != -1)
  {
    swift_once();
  }

  v4 = static VideoPlayerView.Constants.MuteButton.unmuteImage;
  if (static VideoPlayerView.Constants.MuteButton.unmuteImage)
  {
    if (one-time initialization token for symbolConfig != -1)
    {
      v6 = static VideoPlayerView.Constants.MuteButton.unmuteImage;
      swift_once();
      v4 = v6;
    }

    v5 = [v4 imageWithConfiguration_];
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  [v3 setImage_forState_];
}

Swift::Void __swiftcall VideoPlayerView.updateCrop(cropRect:)(__C::CGRect_optional *cropRect)
{
  v3 = *&v1[OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView];
  isa = [v3 constraints];
  if (!isa)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v3 removeConstraints_];

  if (cropRect->is_nil)
  {
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);
  }

  else
  {
    x = cropRect->value.origin.x;
    y = cropRect->value.origin.y;
    width = cropRect->value.size.width;
    height = cropRect->value.size.height;
    [v1 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    CGRectGetWidth(v45);
    v40 = x;
    v46.origin.x = x;
    v17 = y;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    CGRectGetHeight(v46);
    v47.origin.x = v10;
    v47.origin.y = v12;
    v47.size.width = v14;
    v47.size.height = v16;
    CGRectGetWidth(v47);
    v48.origin.x = v10;
    v48.origin.y = v12;
    v48.size.width = v14;
    v48.size.height = v16;
    CGRectGetHeight(v48);
    v41 = CGRectMake();
    v42 = v18;
    v20 = v19;
    v22 = v21;
    v49.origin.x = v10;
    v49.origin.y = v12;
    v49.size.width = v14;
    v49.size.height = v16;
    v23 = CGRectGetWidth(v49);
    v50.origin.x = v10;
    v50.origin.y = v12;
    v50.size.width = v14;
    v50.size.height = v16;
    v24 = CGRectGetHeight(v50);
    v25 = [v3 superview];
    if (v25)
    {
      v26 = v25;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v27 = [v3 topAnchor];
      v28 = [v26 topAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      [v29 setConstant_];
      if (v29)
      {
        [v29 setActive_];
      }
    }

    v30 = [v3 superview];
    if (v30)
    {
      v31 = v30;
      [v3 setTranslatesAutoresizingMaskIntoConstraints_];
      v32 = [v3 leadingAnchor];
      v33 = [v31 leadingAnchor];
      v34 = [v32 constraintEqualToAnchor_];

      [v34 setConstant_];
      if (v34)
      {
        [v34 setActive_];
      }
    }

    v51.origin.x = v41;
    v51.origin.y = v20;
    v51.size.width = v22;
    *&v51.size.height = v42;
    v35 = CGRectGetWidth(v51);
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v36 = [v3 widthAnchor];
    v37 = [v36 constraintEqualToConstant_];

    [v37 setActive_];
    v52.origin.x = v41;
    v52.origin.y = v20;
    v52.size.width = v22;
    *&v52.size.height = v42;
    v38 = CGRectGetHeight(v52);
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    v39 = [v3 heightAnchor];
    v43 = [v39 constraintEqualToConstant_];

    [v43 setActive_];
  }
}

Swift::Void __swiftcall VideoPlayerView.updateDurationLabel(duration:)(Swift::Double duration)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_durationLabelView);
  v3 = specialized static VideoStaticView.durationLabelText(from:)(duration);
  if (v4)
  {
    v5 = MEMORY[0x21CE91FC0](v3);
  }

  else
  {
    v5 = 0;
  }

  [v2 setText_];
}

void closure #1 in VideoPlayerView.setupPlayPauseButtonHandling()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = MEMORY[0x277D85000];
    v3 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();
    (*((*v2 & *v1) + 0x88))((v3 & 1) == 0);
  }
}

Swift::Void __swiftcall VideoPlayerView.handlePlayPauseTap()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))();
  v3 = *((*v1 & *v0) + 0x88);
  v4 = (v2 & 1) == 0;

  v3(v4);
}

Swift::Void __swiftcall VideoPlayerView.handleMuteUnmuteTap(_:)(UITapGestureRecognizer a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v3 && (v4 = [v3 isMuted], v3, v4))
  {

    VideoPlayerView.unmute()();
  }

  else
  {

    VideoPlayerView.mute()();
  }
}

Swift::Void __swiftcall VideoPlayerView.unmute()()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v3 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v3)
  {
    [v3 setMuted_];
  }

  specialized VideoPlayerView.clearNonDisruptiveMute()();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static MusicPlaybackCoordinatorService.shared + 232))();
  v4 = *(v1 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_muteButton);
  if (one-time initialization token for muteImage != -1)
  {
    swift_once();
  }

  v5 = static VideoPlayerView.Constants.MuteButton.muteImage;
  if (static VideoPlayerView.Constants.MuteButton.muteImage)
  {
    if (one-time initialization token for symbolConfig != -1)
    {
      v7 = static VideoPlayerView.Constants.MuteButton.muteImage;
      swift_once();
      v5 = v7;
    }

    v6 = [v5 imageWithConfiguration_];
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  [v4 setImage_forState_];
}

uint64_t specialized VideoPlayerView.playerItemDidReachEnd(notification:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI15VideoPlayerView_baseVideoView) layer];
  objc_opt_self();
  v2 = [swift_dynamicCastObjCClassUnconditional() player];

  if (v2)
  {
    v3 = [v2 currentItem];

    if (v3)
    {
      v4 = *(MEMORY[0x277CC08F0] + 16);
      v6[0] = *MEMORY[0x277CC08F0];
      v6[1] = *(MEMORY[0x277CC08F0] + 8);
      v6[2] = v4;
      [v3 seekToTime:v6 completionHandler:0];
    }
  }

  return (*((*MEMORY[0x277D85000] & *v0) + 0x88))(0);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized VideoPlayerView.setNonDisruptiveMute()()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277CB8020];
  v16[0] = 0;
  v2 = [v0 setCategory:v1 error:v16];

  v3 = v16[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v16[0];
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static CommonLogger.views);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v16);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_21607C000, v9, v10, "[VideoPlayerView] Failed to set audio playback as non-disruptive %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CE94770](v12, -1, -1);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    else
    {
    }
  }
}

void specialized VideoPlayerView.clearNonDisruptiveMute()()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277CB8030];
  v2 = *MEMORY[0x277CB80A8];
  v17[0] = 0;
  v3 = [v0 setCategory:v1 mode:v2 options:0 error:v17];

  v4 = v17[0];
  if (v3)
  {

    v5 = v4;
  }

  else
  {
    v6 = v17[0];
    v7 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.views);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21607C000, v10, v11, "[VideoPlayerView] Failed to set audio playback as disruptive %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    else
    {
    }
  }
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for MomentsUIManager()) init];
  static MomentsUIManager.shared = result;
  return result;
}

{
  type metadata accessor for AppIconProvider();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  result = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:350.0 scale:{350.0, v3}];
  *(v0 + 16) = result;
  static AppIconProvider.shared = v0;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for NotificationHandlingManager()) init];
  static NotificationHandlingManager.shared = result;
  return result;
}

id MomentsUIManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static MomentsUIManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MomentsUIManager.shared;

  return v1;
}

uint64_t static MomentsUIManager.automaticallySync.setter(char a1)
{
  result = swift_beginAccess();
  static MomentsUIManager.automaticallySync = a1;
  return result;
}

uint64_t (*static MomentsUIManager.cloudSyncStateURL.modify())()
{
  if (one-time initialization token for cloudSyncStateURL != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_project_value_buffer(v0, static MomentsUIManager.cloudSyncStateURL);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t (*static MomentsUIManager.cloudDeviceDBURL.modify())()
{
  if (one-time initialization token for cloudDeviceDBURL != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_project_value_buffer(v0, static MomentsUIManager.cloudDeviceDBURL);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t (*static MomentsUIManager.cloudSuggestionsStateURL.modify())()
{
  if (one-time initialization token for cloudSuggestionsStateURL != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_project_value_buffer(v0, static MomentsUIManager.cloudSuggestionsStateURL);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t (*static MomentsUIManager.suggestionsDBURL.modify())()
{
  if (one-time initialization token for suggestionsDBURL != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_project_value_buffer(v0, static MomentsUIManager.suggestionsDBURL);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t one-time initialization function for cloudSyncStateURL(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 56);

  return v6(v4, 1, 1, v5);
}

uint64_t static MomentsUIManager.cloudSyncStateURL.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return outlined init with copy of URL?(v6, a3);
}

uint64_t static MomentsUIManager.cloudSyncStateURL.setter(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  outlined assign with copy of URL?(a1, v6);
  swift_endAccess();
  return outlined destroy of URL?(a1);
}

uint64_t (*static MomentsUIManager.cloudSyncDBURL.modify())()
{
  if (one-time initialization token for cloudSyncDBURL != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __swift_project_value_buffer(v0, static MomentsUIManager.cloudSyncDBURL);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t key path getter for static MomentsUIManager.cloudSyncStateURL : MomentsUIManager.Type@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return outlined init with copy of URL?(v6, a3);
}

uint64_t key path setter for static MomentsUIManager.cloudSyncStateURL : MomentsUIManager.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  outlined assign with copy of URL?(a1, v9);
  return swift_endAccess();
}

uint64_t MomentsUIManager.sharedServer.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_sharedServer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MomentsUIManager.sharedServer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_sharedServer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SuggestionsOnboardingViewController.delegate.modify;
}

uint64_t key path getter for static MomentsUIManager.isOnboarded : MomentsUIManager.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static MomentsUIManager.isOnboarded;
  v3 = qword_2811A7CD0;
  if (static MomentsUIManager.isOnboarded)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool?);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return _sSuSgIegd_SgWOy_0(v2);
}

uint64_t key path setter for static MomentsUIManager.isOnboarded : MomentsUIManager.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out Bool?);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = static MomentsUIManager.isOnboarded;
  static MomentsUIManager.isOnboarded = v4;
  qword_2811A7CD0 = v3;
  _sSuSgIegd_SgWOy_0(v1);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t static MomentsUIManager.isOnboarded.getter(uint64_t *a1, void *a2, void (*a3)(uint64_t, void))
{
  swift_beginAccess();
  v6 = *a1;
  a3(v6, *a2);
  return v6;
}

uint64_t static MomentsUIManager.isOnboarded.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *a3;
  v11 = *a4;
  *a3 = a1;
  *a4 = a2;
  return a5(v10, v11);
}

uint64_t key path getter for static MomentsUIManager.onboardingFlowStatus : MomentsUIManager.Type@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  swift_beginAccess();
  v2 = static MomentsUIManager.onboardingFlowStatus;
  v3 = qword_2811A7C30;
  if (static MomentsUIManager.onboardingFlowStatus)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt?);
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  return _sSuSgIegd_SgWOy_0(v2);
}

uint64_t key path setter for static MomentsUIManager.onboardingFlowStatus : MomentsUIManager.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out UInt?);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  swift_beginAccess();
  v5 = static MomentsUIManager.onboardingFlowStatus;
  static MomentsUIManager.onboardingFlowStatus = v4;
  qword_2811A7C30 = v3;
  _sSuSgIegd_SgWOy_0(v1);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v5);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static MomentsUIManager.dismissWithoutCleanup.getter())()
{
  swift_beginAccess();
  v0 = static MomentsUIManager.dismissWithoutCleanup;

  return v0;
}

uint64_t static MomentsUIManager.dismissWithoutCleanup.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static MomentsUIManager.dismissWithoutCleanup = a1;
  qword_2816AE380 = a2;
}

uint64_t key path getter for static MomentsUIManager.dismissWithoutCleanup : MomentsUIManager.Type@<X0>(uint64_t (**a1)(unsigned __int8 *a1)@<X8>)
{
  swift_beginAccess();
  v3 = static MomentsUIManager.dismissWithoutCleanup;
  v2 = qword_2816AE380;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  a1[1] = v4;
}

uint64_t key path setter for static MomentsUIManager.dismissWithoutCleanup : MomentsUIManager.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static MomentsUIManager.dismissWithoutCleanup = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  qword_2816AE380 = v3;
}

uint64_t static MomentsUIManager.userIsActivelyWaitingOnUI.setter(char a1)
{
  result = swift_beginAccess();
  static MomentsUIManager.userIsActivelyWaitingOnUI = a1;
  return result;
}

uint64_t static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[3] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:);
  v2 = v0[2];

  return CloudManager.retainUIActive(_:_:_:)(v2, "retainUserIsActivelyBrowsingOnUI(_:)", 36, 2, 29);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static MomentsUIManager.releaseUserIsActivelyBrowsingOnUI(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0[3] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = static MomentsUIManager.releaseUserIsActivelyBrowsingOnUI(_:);
  v2 = v0[2];

  return CloudManager.releaseUIActive(_:_:_:)(v2, "releaseUserIsActivelyBrowsingOnUI(_:)", 37, 2, 32);
}

uint64_t *closure #1 in variable initialization expression of MomentsUIManager.cloudManager()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22[-v5];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  swift_beginAccess();
  v15 = static MomentsUIManager.automaticallySync;
  if (static MomentsUIManager.automaticallySync == 2)
  {
    v15 = specialized static DefaultsManager.MomentsUIDomain.BOOLeanValueFor(_:)();
  }

  if (one-time initialization token for cloudSyncStateURL != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v0, static MomentsUIManager.cloudSyncStateURL);
  swift_beginAccess();
  outlined init with copy of URL?(v16, v14);
  if (one-time initialization token for cloudDeviceDBURL != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, static MomentsUIManager.cloudDeviceDBURL);
  swift_beginAccess();
  outlined init with copy of URL?(v17, v12);
  if (one-time initialization token for cloudSuggestionsStateURL != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, static MomentsUIManager.cloudSuggestionsStateURL);
  swift_beginAccess();
  outlined init with copy of URL?(v18, v9);
  if (one-time initialization token for suggestionsDBURL != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v0, static MomentsUIManager.suggestionsDBURL);
  swift_beginAccess();
  outlined init with copy of URL?(v19, v6);
  if (one-time initialization token for cloudSyncDBURL != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v0, static MomentsUIManager.cloudSyncDBURL);
  swift_beginAccess();
  outlined init with copy of URL?(v20, v3);
  type metadata accessor for CloudManager();
  swift_allocObject();
  return CloudManager.init(automaticallySync:cloudSyncStateURL:cloudDeviceDBURL:cloudSuggestionsStateURL:suggestionsDBURL:cloudSyncDBURL:)(v15 & 1, v14, v12, v9, v6, v3);
}

uint64_t MomentsUIManager.cloudManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_cloudManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MomentsUIManager.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_sharedServer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9MomentsUI16MomentsUIManager_cloudManager;
  *&v0[v1] = closure #1 in variable initialization expression of MomentsUIManager.cloudManager();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MomentsUIManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

id MomentsUIManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MomentsUIManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned UInt?)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Bool?)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t *MusicPlaybackCoordinatorService.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static MusicPlaybackCoordinatorService.shared;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for MusicPlaybackCoordinatorService();
  v0 = swift_allocObject();
  result = MusicPlaybackCoordinatorService.init()();
  static MusicPlaybackCoordinatorService.shared = v0;
  return result;
}

{
  type metadata accessor for LocationShifter();
  v0 = swift_allocObject();
  result = LocationShifter.init()();
  static LocationShifter.shared = v0;
  return result;
}

uint64_t MusicPlaybackCoordinatorService.__allocating_init()()
{
  v0 = swift_allocObject();
  MusicPlaybackCoordinatorService.init()();
  return v0;
}

uint64_t static MusicPlaybackCoordinatorService.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t MusicPlaybackCoordinatorService.delegates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *MusicPlaybackCoordinatorService.timer.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void MusicPlaybackCoordinatorService.timer.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t MusicPlaybackCoordinatorService.nowPlayingTrackID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MusicPlaybackCoordinatorService.nowPlayingTrackID.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t MusicPlaybackCoordinatorService.init()()
{
  v1 = [objc_opt_self() systemMusicPlayer];
  v2 = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  (*(*v0 + 224))();
  v3 = [*(v0 + 16) nowPlayingItem];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 playbackStoreID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_beginAccess();
    *(v0 + 40) = v6;
    *(v0 + 48) = v8;
  }

  return v0;
}

id *MusicPlaybackCoordinatorService.deinit()
{
  v1 = v0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  (*(*v1 + 40))();
  [v1[2] endGeneratingPlaybackNotifications];

  return v1;
}

uint64_t _s9MomentsUI31MusicPlaybackCoordinatorServiceCfZ()
{
  MusicPlaybackCoordinatorService.deinit();

  return swift_deallocClassInstance();
}

uint64_t MusicPlaybackCoordinatorService.__deallocating_deinit()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, _s9MomentsUI31MusicPlaybackCoordinatorServiceCfZ, v1, v3, 0);
}

uint64_t MusicPlaybackCoordinatorService.register(viewModel:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    v8 = result;
    v9 = v7;
    v10 = (*(*v1 + 136))();
    if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      outlined init with copy of DBObject(a1, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
      }

      v13[2] = v15 + 1;
      outlined init with take of MusicPlaybackCoordinatorDelegate(v21, &v13[5 * v15 + 4]);
      v16 = (*(*v2 + 152))(v21);
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI32MusicPlaybackCoordinatorDelegate_pGMd);
      v13 = swift_allocObject();
      *(v13 + 1) = xmmword_21658CA50;
      outlined init with copy of DBObject(a1, (v13 + 4));
      v16 = (*(*v2 + 152))(v21);
    }

    v18 = v16;
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v19;
    *v19 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v8, v9, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));

    *v19 = v22;
    return v18(v21, 0);
  }

  return result;
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.subscribeToNowPlaying()()
{
  [*(v0 + 16) beginGeneratingPlaybackNotifications];
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver_];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_playbackStateDidChangeWithNote_ name:*MEMORY[0x277CD5C40] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_nowPlayingItemChangedWithNote_ name:*MEMORY[0x277CD5C38] object:0];
}

Swift::Bool __swiftcall MusicPlaybackCoordinatorService.matchesNowPlayingMediaItem(track:)(Swift::String_optional track)
{
  object = track.value._object;
  countAndFlagsBits = track.value._countAndFlagsBits;
  v4 = [*(v1 + 16) nowPlayingItem];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v4 playbackStoreID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!object)
  {

    return 0;
  }

  if (v7 != countAndFlagsBits || v9 != object)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v11 & 1) != 0;
  }

  return 1;
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.sendPlayNotificationsForID(track:)(Swift::String track)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) != 0))
  {
    v9 = v7 + 32;
    do
    {
      outlined init with copy of DBObject(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.sendStopNotificationsForID(track:)(Swift::String track)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 8 * v5), , , (v8 = *(v7 + 16)) != 0))
  {
    v9 = v7 + 32;
    do
    {
      outlined init with copy of DBObject(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.sendProgressNotificationsForID(track:progress:)(Swift::String track, Swift::Float progress)
{
  object = track._object;
  countAndFlagsBits = track._countAndFlagsBits;
  v6 = (*(*v2 + 136))();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , (v10 = *(v9 + 16)) != 0))
  {
    v11 = v9 + 32;
    do
    {
      outlined init with copy of DBObject(v11, v14);
      v12 = v15;
      v13 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v13 + 32))(v12, v13, progress);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v11 += 40;
      --v10;
    }

    while (v10);
  }

  else
  {
  }
}

uint64_t MusicPlaybackCoordinatorService.updateNowPlayingTrack()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MusicPlaybackCoordinatorService.updateNowPlayingTrack(), v3, v2);
}

{
  v1 = *(v0 + 16);

  v3 = (*(*v1 + 184))(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = [*(*(v0 + 16) + 16) nowPlayingItem];
    if (v7)
    {
      v8 = v7;
      v9 = *(v0 + 16);
      v10 = [v7 playbackStoreID];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      (*(*v9 + 192))(v11, v13);
      v14 = [v8 playbackStoreID];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v5 == v15 && v6 == v17)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          (*(**(v0 + 16) + 256))(v5, v6);
        }
      }
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t MusicPlaybackCoordinatorService.updatePlayState()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MusicPlaybackCoordinatorService.updatePlayState(), v3, v2);
}

{
  v1 = *(v0 + 16);

  v2 = [*(v1 + 16) nowPlayingItem];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 16);
    v5 = [v2 playbackStoreID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = (*(*v4 + 328))();
    v10 = *v4;
    v11 = *(v0 + 16);
    if (v9)
    {
      (*(v10 + 256))(v6, v8);
    }

    else
    {
      (*(v10 + 248))(v6, v8);

      (*(*v11 + 312))(v12);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.updateDelegateProgressIndication()()
{
  v1 = [v0[2] nowPlayingItem];
  if (v1)
  {
    v11 = v1;
    v2 = [v1 playbackStoreID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    [v0[2] currentPlaybackTime];
    v7 = v6;
    [v11 playbackDuration];
    v9 = v8;
    if (v9 > 0.0)
    {
      v10 = v7;
      (*(*v0 + 33))(v3, v5, v10 / v9);
    }
  }
}

uint64_t closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:), 0, 0);
}

uint64_t closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v5 = (*(*Strong + 280) + **(*Strong + 280));
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:);

    return v5();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:), 0, 0);
}

uint64_t MusicPlaybackCoordinatorService.playbackStateDidChange(note:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(0, 0, v6, a3, v9);

  return outlined destroy of TaskPriority?(v6);
}

uint64_t closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:), 0, 0);
}

uint64_t closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v5 = (*(*Strong + 272) + **(*Strong + 272));
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:);

    return v5();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

uint64_t @objc MusicPlaybackCoordinatorService.playbackStateDidChange(note:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZytSg_Tt2g5(0, 0, v8, a5, v11);

  return outlined destroy of TaskPriority?(v8);
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.createTimerIfNeeded()()
{
  v1 = *(*v0 + 160);
  v2 = v1();
  if (v2)
  {
  }

  else
  {
    v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_updateDelegateProgressIndication selector:0 userInfo:1 repeats:1.0];
    v4 = (*(*v0 + 168))(v3);
    v5 = (v1)(v4);
    if (v5)
    {
      v6 = v5;
      [v5 setTolerance_];
    }

    v7 = *(*v0 + 288);

    v7();
  }
}

Swift::Void __swiftcall MusicPlaybackCoordinatorService.invalidateTimerIfNeeded()()
{
  v1 = *(*v0 + 160);
  v2 = v1();
  if (v2)
  {

    v3 = v1();
    [v3 invalidate];

    v4 = *(*v0 + 168);

    v4(0);
  }
}

Swift::Bool __swiftcall MusicPlaybackCoordinatorService.updateTimerForPauseState()()
{
  v1 = [v0[2] playbackState];
  if (v1 != 1)
  {
    (*(*v0 + 40))();
  }

  return v1 != 1;
}

BOOL MusicPlaybackCoordinatorService.doesTrackIDMatchNowPlaying(viewModel:)(void *a1)
{
  v3 = [*(v1 + 16) nowPlayingItem];
  if (!v3)
  {
    if (one-time initialization token for services != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static CommonLogger.services);
    v6 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21607C000, v6, v26, "[MusicPlaybackCoordinatorService] nowPlaying is nil", v27, 2u);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    goto LABEL_15;
  }

  v4 = v3;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.services);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136315138;
    v11 = [v6 playbackStoreID];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v29);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_21607C000, v7, v8, "[MusicPlaybackCoordinatorService] nowPlaying.playbackStoreID=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CE94770](v10, -1, -1);
    MEMORY[0x21CE94770](v9, -1, -1);
  }

  v16 = [v6 playbackStoreID];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 8))(v20, v21);
  if (!v23)
  {

LABEL_15:

    return 0;
  }

  if (v17 == v22 && v23 == v19)
  {

    return 1;
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v28 & 1) != 0;
  }
}

id MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  if ((*(*v1 + 344))(a1))
  {
    if ((*(*v1 + 336))())
    {
      if (one-time initialization token for services != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static CommonLogger.services);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock[0] = v21;
        *v20 = 136315138;
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

        *(v20 + 4) = v22;
        _os_log_impl(&dword_21607C000, v18, v19, "[MusicPlaybackCoordinatorService] pause trackId=%s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x21CE94770](v21, -1, -1);
        MEMORY[0x21CE94770](v20, -1, -1);
      }

      else
      {
      }

      v49 = *(v2 + 16);
      v50 = sel_pause;
    }

    else
    {
      if (one-time initialization token for services != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static CommonLogger.services);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315138;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

        *(v46 + 4) = v48;
        _os_log_impl(&dword_21607C000, v44, v45, "[MusicPlaybackCoordinatorService] Resuming trackId=%s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x21CE94770](v47, -1, -1);
        MEMORY[0x21CE94770](v46, -1, -1);
      }

      else
      {
      }

      v49 = *(v2 + 16);
      v50 = sel_play;
    }

    return [v49 v50];
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v23, static CommonSignposter.mediaPlayback);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v24 = OSSignposter.logHandle.getter();
    v25 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v26 = swift_slowAlloc();
      v52 = v16;
      v27 = v5;
      v28 = v15;
      v29 = v4;
      v30 = v26;
      *v26 = 0;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v24, v25, v31, "UIService_LoadMusicAsset", "", v30, 2u);
      v32 = v30;
      v4 = v29;
      v15 = v28;
      v5 = v27;
      v16 = v52;
      MEMORY[0x21CE94770](v32, -1, -1);
    }

    (*(v5 + 16))(v8, v10, v4);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v33 = OSSignpostIntervalState.init(id:isOpen:)();
    v34 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21658CA50;
    *(v35 + 32) = v15;
    *(v35 + 40) = v16;

    v36 = v34;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v36 setQueueWithStoreIDs_];

    v38 = *(v2 + 16);
    v39 = swift_allocObject();
    v39[2] = v2;
    v39[3] = v15;
    v39[4] = v16;
    v39[5] = v33;
    aBlock[4] = partial apply for closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:);
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_0;
    v40 = _Block_copy(aBlock);
    v41 = v38;

    [v41 prepareToPlayWithCompletionHandler_];
    _Block_release(v40);

    return (*(v5 + 8))(v10, v4);
  }
}

void closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a3;
  v8 = type metadata accessor for OSSignpostError();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  if (a1)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v18, static CommonSignposter.mediaPlayback);
    v19 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v20 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v21 = v37;
      if ((*(v37 + 88))(v10, v8) == *MEMORY[0x277D85B00])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v10, v8);
        v22 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v19, v20, v27, "UIService_LoadMusicAsset", v22, v26, 2u);
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    if (one-time initialization token for services != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static CommonLogger.services);
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = a1;
      v40 = v33;
      *v32 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
      v34 = Optional.debugDescription.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v40);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_21607C000, v30, v31, "[MusicPlaybackCoordinatorService] error %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x21CE94770](v33, -1, -1);
      MEMORY[0x21CE94770](v32, -1, -1);
    }
  }

  else
  {
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v38;
    v25[5] = a4;
    v25[6] = a5;
    v25[7] = v24;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:), v25);

    outlined destroy of TaskPriority?(v17);
  }
}

uint64_t closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for OSSignpostError();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = type metadata accessor for OSSignpostID();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:), 0, 0);
}

uint64_t closure #1 in closure #1 in MusicPlaybackCoordinatorService.handlePlayPauseButtonChange(viewModel:)()
{
  v25 = v0;
  if (one-time initialization token for services != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.services);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v24);
    _os_log_impl(&dword_21607C000, v2, v3, "[MusicPlaybackCoordinatorService] Playing trackId=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CE94770](v7, -1, -1);
    MEMORY[0x21CE94770](v6, -1, -1);
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static CommonSignposter.mediaPlayback);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];

    checkForErrorAndConsumeState(state:)();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v16, "UIService_LoadMusicAsset", v14, v15, 2u);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[12];

  (*(v18 + 8))(v17, v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + 16);

    [v21 play];
  }

  v22 = v0[1];

  return v22();
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x21CE937A0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  Hasher.init(_seed:)();
  (*(*a1 + 264))(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for CKRecordID);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for CKRecordZoneID);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for HKQuantityType);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 - 1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  DBAssetModelEnum.rawValue.getter(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x21CE937F0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x21CE937F0](*&v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v6, a1, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CE930C0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {

      v6 = static UUID.== infix(_:_:)();

      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x746361746E6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x746F68506576696CLL;
          v7 = 0xE90000000000006FLL;
          break;
        case 2:
          v7 = 0xE300000000000000;
          v8 = 7364973;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v8 = 0x69746C754D70616DLL;
          break;
        case 4:
          v8 = 0x726946616964656DLL;
          v9 = 29811;
          goto LABEL_14;
        case 5:
          v8 = 0x696854616964656DLL;
          v9 = 25714;
LABEL_14:
          v7 = v9 | 0xEF79747261500000;
          break;
        case 6:
          v8 = 0x63416E6F69746F6DLL;
          v7 = 0xEE00797469766974;
          break;
        case 7:
          v7 = 0xE500000000000000;
          v8 = 0x6F746F6870;
          break;
        case 8:
          v8 = 0x697463656C666572;
          v7 = 0xEA00000000006E6FLL;
          break;
        case 9:
          v7 = 0xE600000000000000;
          v8 = 0x726574736F70;
          break;
        case 0xA:
          v8 = 0x4D664F6574617473;
          v7 = 0xEB00000000646E69;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6F65646976;
          break;
        case 0xC:
          v8 = 0x74756F6B726F77;
          break;
        case 0xD:
          v8 = 0x4774756F6B726F77;
          v7 = 0xEC00000070756F72;
          break;
        case 0xE:
          v8 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v10 = 0xE700000000000000;
      v11 = 0x746361746E6F63;
      switch(a1)
      {
        case 1:
          v10 = 0xE90000000000006FLL;
          if (v8 == 0x746F68506576696CLL)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        case 2:
          v10 = 0xE300000000000000;
          if (v8 != 7364973)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 3:
          v10 = 0xE800000000000000;
          if (v8 != 0x69746C754D70616DLL)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 4:
          v12 = 0x726946616964656DLL;
          v13 = 29811;
          goto LABEL_38;
        case 5:
          v12 = 0x696854616964656DLL;
          v13 = 25714;
LABEL_38:
          v10 = v13 | 0xEF79747261500000;
          if (v8 != v12)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 6:
          v10 = 0xEE00797469766974;
          if (v8 != 0x63416E6F69746F6DLL)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 7:
          v10 = 0xE500000000000000;
          if (v8 != 0x6F746F6870)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 8:
          v10 = 0xEA00000000006E6FLL;
          if (v8 != 0x697463656C666572)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 9:
          v10 = 0xE600000000000000;
          if (v8 != 0x726574736F70)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 10:
          v11 = 0x4D664F6574617473;
          v10 = 0xEB00000000646E69;
          goto LABEL_45;
        case 11:
          v10 = 0xE500000000000000;
          if (v8 != 0x6F65646976)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 12:
          if (v8 != 0x74756F6B726F77)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 13:
          v10 = 0xEC00000070756F72;
          if (v8 != 0x4774756F6B726F77)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        case 14:
          if (v8 != 0x6E776F6E6B6E75)
          {
            goto LABEL_47;
          }

          goto LABEL_46;
        default:
LABEL_45:
          if (v8 != v11)
          {
            goto LABEL_47;
          }

LABEL_46:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    type metadata accessor for NSAttributedString(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CloudDevice();
      return outlined assign with take of CloudMetaDevice(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CloudDevice);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277CC9260], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277CC95F0], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CloudMetaDevice();
      return outlined assign with take of CloudMetaDevice(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CloudMetaDevice);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t outlined init with take of MusicPlaybackCoordinatorDelegate(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MusicPlaybackCoordinatorService.playbackStateDidChange(note:)(a1, v4, v5, v6);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MusicPlaybackCoordinatorService.nowPlayingItemChanged(note:)(a1, v4, v5, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of MusicPlaybackCoordinatorService.updateNowPlayingTrack()()
{
  v4 = (*(*v0 + 272) + **(*v0 + 272));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v4();
}

uint64_t dispatch thunk of MusicPlaybackCoordinatorService.updatePlayState()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = static Exif.filterImage(imageSource:outputURL:);

  return v4();
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for UIFontDescriptorAttributeName, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for UIFontDescriptorTraitKey, specialized _NativeDictionary._insert(at:key:value:));
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void), void (*a7)(unint64_t, void *, _OWORD *, uint64_t))
{
  v12 = v7;
  v15 = *v7;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a4();
      v16 = v24;
      goto LABEL_8;
    }

    a5(v21, a3 & 1);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a6(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (*(v26 + 56) + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return outlined init with take of Any(a1, v27);
  }

  else
  {
    a7(v16, a2, a1, v26);

    return a2;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(*(v20 + 56) + 8 * v14) = a1;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, char a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a5;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2, v23, a5);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, a2, v21, a4);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      a4();
      v14 = v22;
      goto LABEL_8;
    }

    a5(v19, a3 & 1);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v9;
  if (v20)
  {
    *(*(v24 + 56) + 8 * v14) = a1;
  }

  else
  {

    return a6(v14, a2, a1, v24);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v13, a1, a2, v23, a4, a5);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}