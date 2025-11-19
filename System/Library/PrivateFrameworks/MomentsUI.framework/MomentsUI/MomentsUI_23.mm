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

__int128 *LivePhotoView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static LivePhotoView.Constants.accessibilityString;
}

uint64_t static LivePhotoView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static LivePhotoView.Constants.accessibilityString;

  return v0;
}

id closure #1 in variable initialization expression of LivePhotoView.livePhotoAffordanceImageView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v1 = MEMORY[0x21CE91FC0](0x746F68706576696CLL, 0xE90000000000006FLL);
  v2 = [objc_opt_self() _systemImageNamed_];

  [v0 setImage_];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v0 setTintColor_];

  v5 = v0;
  v6 = [v5 layer];
  v7 = [v3 blackColor];
  v8 = [v7 CGColor];

  [v6 setShadowColor_];
  v9 = [v5 layer];
  [v9 setShadowRadius_];

  v10 = [v5 layer];
  LODWORD(v11) = 1045220557;
  [v10 setShadowOpacity_];

  v12 = [v5 layer];
  [v5 bounds];
  [v12 setCornerRadius_];

  v13 = [v5 layer];
  [v13 setShadowOffset_];

  v14 = [v5 layer];
  [v5 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v5 bounds];
  v23 = CGRectGetHeight(v29) * 0.5;
  v24 = [objc_opt_self() bezierPathWithRoundedRect:v16 cornerRadius:{v18, v20, v22, v23}];
  v25 = [v24 CGPath];

  [v14 setShadowPath_];
  v26 = [v5 layer];

  [v26 setShadowPathIsBounds_];
  return v5;
}

void *LivePhotoView.init(viewModel:style:)(void *a1, char *a2)
{
  v4 = *a2;
  v5 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v6 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView;
  *&v2[v6] = closure #1 in variable initialization expression of LivePhotoView.livePhotoAffordanceImageView();
  v7 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView;
  v8 = [objc_allocWithZone(MEMORY[0x277CD9D60]) init];
  [v8 setHidden_];
  [v8 setContentMode_];

  *&v2[v7] = v8;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v9 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v10 = static LivePhotoView.Constants.accessibilityString;
    v11 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v12 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v13 = a1;
    *&v2[v11] = [v12 init];
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v4;
    v31.receiver = v2;
    v31.super_class = type metadata accessor for AssetView();
    v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v17 = *((*MEMORY[0x277D85000] & *v16) + 0xE8);
    v18 = v16;
    v17();
    AssetView.setFallBackView()();
    [v18 setIsAccessibilityElement_];
    v19 = [v18 accessibilityTraits];
    if ((v9 & ~v19) != 0)
    {
      v20 = v9;
    }

    else
    {
      v20 = 0;
    }

    [v18 setAccessibilityTraits_];
    v21 = MEMORY[0x21CE91FC0](v10, *(&v10 + 1));
    [v18 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21658CA50;
    v23 = type metadata accessor for UITraitUserInterfaceStyle();
    v24 = MEMORY[0x277D74BF0];
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    v25 = v18;
    MEMORY[0x21CE92C30](v22, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v25 handleTraitChange];
    [v25 setTranslatesAutoresizingMaskIntoConstraints_];

    [v25 setClipsToBounds_];
    v26 = v25;
    LivePhotoView.addSubViews()();
    LivePhotoView.addConstraints()();
    v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v28 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
    v29 = [objc_opt_self() systemImageNamed_];

    [v27 setImage_];
    return v16;
  }

  else
  {

    type metadata accessor for LivePhotoView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for LivePhotoView()
{
  result = type metadata singleton initialization cache for LivePhotoView;
  if (!type metadata singleton initialization cache for LivePhotoView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall LivePhotoView.addSubViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView];
  [v1 setContentMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView];
  [v3 setContentMode_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  [v0 addSubview_];
}

Swift::Void __swiftcall LivePhotoView.addConstraints()()
{
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant_];

  [v3 setActive_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 heightAnchor];
  v5 = [v4 constraintEqualToConstant_];

  [v5 setActive_];
  v6 = [v1 superview];
  if (v6)
  {
    v7 = v6;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [v1 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    [v10 setConstant_];
    [v10 setActive_];
  }

  v11 = [v1 superview];
  if (v11)
  {
    v15 = v11;
    [v1 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = [v1 topAnchor];
    v13 = [v15 topAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    [v14 setConstant_];
    [v14 setActive_];
  }
}

Swift::Void __swiftcall LivePhotoView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0x6F746F6870, 0xE500000000000000);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

id LivePhotoView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall LivePhotoView.releaseResources()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView) setImage_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);

  [v1 setLivePhoto_];
}

uint64_t LivePhotoView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = LivePhotoView.updateAndShowViews();

  return LivePhotoView.replaceLivePhoto()();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](LivePhotoView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  LivePhotoView.adjustCrop()();
  LivePhotoView.adjustLivePhotoAffordanceAndInteractability()();
  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t LivePhotoView.replaceLivePhoto()()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](LivePhotoView.replaceLivePhoto(), v3, v2);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
  *(v0 + 64) = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  *(v0 + 72) = v4;
  if (!v4)
  {

LABEL_9:

    goto LABEL_10;
  }

  v5 = v4;
  v6 = *(v0 + 24);
  v7 = *((*v1 & *v6) + 0x88);
  v8 = ((*v1 & *v6) + 136) & 0xFFFFFFFFFFFFLL | 0xEEF000000000000;
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v7();
  if (*(v0 + 200) == 6)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11PHLivePhotoCSgMd);
    v10 = static MainActor.shared.getter();
    *(v0 + 96) = v10;
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *(v11 + 16) = v3;
    *(v11 + 24) = v5;
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = LivePhotoView.replaceLivePhoto();
    v13 = MEMORY[0x277D85700];

    return MEMORY[0x282200600](v0 + 16, v9, v9, v10, v13, &async function pointer to partial apply for closure #1 in LivePhotoView.replaceLivePhoto(), v11, v9);
  }

  *(v0 + 160) = *(*(v0 + 24) + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView);
  ObjectType = swift_getObjectType();
  v16 = (*(v5 + 16))(ObjectType, v5);
  if (v16)
  {
    v17 = (*(*v16 + 96))(v16);
    *(v0 + 168) = v17;

    if (v17)
    {
      v19 = *(v0 + 24);
      v20 = (v7)(v18);
      v21 = (*((*v1 & *v19) + 0xD8))(v20);
      v22 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
      *(v0 + 176) = v22;
      v23 = v22;
      v24 = swift_task_alloc();
      *(v0 + 184) = v24;
      *v24 = v0;
      v24[1] = LivePhotoView.replaceLivePhoto();

      return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 201), 1, v21, v22, 0xD000000000000012, 0x8000000216581780);
    }
  }

  v25 = *(v0 + 64);
  [*(v0 + 160) setImage_];

LABEL_10:
  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](LivePhotoView.replaceLivePhoto(), v3, v2);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v3 = *(v2 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);
    [v3 setLivePhoto_];
    [v3 setDelegate_];

LABEL_9:
    v18 = *(v0 + 8);

    return v18();
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  [*(v5 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView) setLivePhoto_];
  *(v0 + 120) = *(v5 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView);
  ObjectType = swift_getObjectType();
  v7 = (*(v4 + 16))(ObjectType, v4);
  if (!v7 || (v8 = (*(*v7 + 96))(v7), *(v0 + 128) = v8, v9 = , !v8))
  {

    [*(v0 + 120) setImage_];
    goto LABEL_9;
  }

  v10 = *(v0 + 64);
  v11 = *(v0 + 24);
  v12 = (*(v0 + 80))(v9);
  v13 = (*((*MEMORY[0x277D85000] & *v11) + 0xD8))(v12);
  v14 = *(v10 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  *(v0 + 136) = v14;
  v15 = v14;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *v16 = v0;
  v16[1] = LivePhotoView.replaceLivePhoto();

  return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 202), 1, v13, v14, 0xD000000000000012, 0x8000000216581780);
}

{
  v1 = *(v0 + 152);

  [*(v0 + 120) setImage_];

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 64);
  [*(v0 + 160) setImage_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LivePhotoView.replaceLivePhoto()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 152) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LivePhotoView.replaceLivePhoto(), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 192) = a1;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);

  return MEMORY[0x2822009F8](LivePhotoView.replaceLivePhoto(), v6, v5);
}

Swift::Void __swiftcall LivePhotoView.adjustCrop()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v2)
  {
    return;
  }

  v161 = v2;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
    goto LABEL_69;
  }

  v4 = v3;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.views);
  v6 = v0;
  v7 = v161;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  oslog = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v175 = v154;
    *v10 = 134218498;
    (*((*v1 & v6->isa) + 0x88))(&v173);
    *(v10 + 4) = v173;

    *(v10 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v12 = *(v4 + 8);
    (*(v12 + 32))(&v165 + 1, ObjectType, v12);
    v13 = v7;
    if (v166)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v15 = CGRect.debugDescription.getter();
      v14 = v16;
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v175);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2080;
    v7 = v13;
    (*(v12 + 24))(&v167, ObjectType, v12);
    if (v168)
    {
      v18 = 0xE300000000000000;
      v6 = oslog;
      v19 = 7104878;
    }

    else
    {
      v19 = CGRect.debugDescription.getter();
      v18 = v20;
      v6 = oslog;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v175);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_21607C000, v8, v9, "[adjustCrop] (LivePhotoView) applying crop for viewStyle=%ld, squareCropRect=%s, landscapeCropRect=%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v154, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);

    v1 = MEMORY[0x277D85000];
  }

  else
  {
  }

  (*((*v1 & v6->isa) + 0x88))(&v165);
  v22 = &unk_27821E000;
  if (v165 > 7u)
  {
    goto LABEL_68;
  }

  if (((1 << v165) & 0x8B) == 0)
  {
    if (((1 << v165) & 0x14) == 0)
    {
      if (v165 == 6)
      {
        v43 = swift_getObjectType();
        v44 = *(*(v4 + 8) + 32);
        v153 = *(v4 + 8);
        v155 = v43;
        v44(&v169);
        v157 = v7;
        if ((v170 & 1) != 0 || ((width = v169.size.width, height = v169.size.height, x = v169.origin.x, y = v169.origin.y, v49 = CGRectGetWidth(v169), *&v50 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)()), (v51 & 1) == 0) ? (v52 = *&v50) : (v52 = 0.5), v49 <= v52 || ((v180.origin.x = x, v180.origin.y = y, v180.size.width = width, v180.size.height = height, v86 = CGRectGetHeight(v180), *&v87 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)()), (v88 & 1) == 0) ? (v89 = *&v87) : (v89 = 0.25), v86 <= v89)))
        {
          v112 = *(&v6->isa + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);
          [v112 setContentsRect_];
          v113 = v7;
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v114, v115))
          {
            v152 = v112;
            v116 = swift_slowAlloc();
            v151 = swift_slowAlloc();
            v175 = v151;
            *v116 = 136315394;
            v117 = (*(v153 + 40))(v155, v153);
            if (!v118)
            {
              v117 = 7104878;
            }

            v119 = 0xE300000000000000;
            if (v118)
            {
              v120 = v118;
            }

            else
            {
              v120 = 0xE300000000000000;
            }

            v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, &v175);

            *(v116 + 4) = v121;
            *(v116 + 12) = 2080;
            (v44)(&v171, v155, v153);
            v122 = 7104878;
            if ((v172 & 1) == 0)
            {
              v122 = CGRect.debugDescription.getter();
              v119 = v123;
            }

            v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v119, &v175);

            *(v116 + 14) = v124;
            _os_log_impl(&dword_21607C000, v114, v115, "[adjustCrop] unreasonable squareCropRect or no crop, cloudID=%s, crop=%s)", v116, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x21CE94770](v151, -1, -1);
            MEMORY[0x21CE94770](v116, -1, -1);

            v7 = v157;
            v22 = &unk_27821E000;
            v112 = v152;
          }

          else
          {

            v22 = &unk_27821E000;
          }
        }

        else
        {
          v112 = *(&v6->isa + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);
          [v112 setContentsRect_];
        }

        v125 = v22;
        v126 = [v112 v22[506]];
        [v126 setNeedsDisplay];

        v127 = v7;
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = 7104878;
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v164 = v132;
          *v131 = 136315394;
          (v44)(&v173, v155, v153);
          if (v174)
          {
            v133 = 0xE300000000000000;
            v134 = 7104878;
          }

          else
          {
            v134 = CGRect.debugDescription.getter();
            v133 = v135;
          }

          v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v133, &v164);

          *(v131 + 4) = v136;
          *(v131 + 12) = 2080;
          (*(v153 + 24))(&v175, v155);
          if (v176)
          {
            v137 = 0xE300000000000000;
          }

          else
          {
            v130 = CGRect.debugDescription.getter();
            v137 = v138;
          }

          v22 = v125;
          v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v137, &v164);

          *(v131 + 14) = v139;
          _os_log_impl(&dword_21607C000, v128, v129, "[adjustCrop] (LivePhotoView) applied crop for interstitial square, squareCropRect=%s, landscapeCropRect=%s", v131, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v132, -1, -1);
          MEMORY[0x21CE94770](v131, -1, -1);

          v7 = v157;
          v6 = oslog;
        }

        else
        {

          v7 = v157;
          v6 = oslog;
          v22 = v125;
        }
      }

      goto LABEL_68;
    }

    v33 = swift_getObjectType();
    v34 = *(v4 + 8);
    v35 = *(v34 + 24);
    v35(&v171, v33, v34);
    v162 = v35;
    if ((v172 & 1) == 0)
    {
      v37 = v171.size.width;
      v36 = v171.size.height;
      v39 = v171.origin.x;
      v38 = v171.origin.y;
      v40 = CGRectGetWidth(v171);
      v41 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v42)
      {
        if (v40 <= 0.5)
        {
          goto LABEL_57;
        }
      }

      else if (v40 <= v41)
      {
        goto LABEL_57;
      }

      v179.origin.x = v39;
      v179.origin.y = v38;
      v179.size.width = v37;
      v179.size.height = v36;
      v70 = CGRectGetHeight(v179);
      *&v71 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
      if (v72)
      {
        v73 = 0.25;
      }

      else
      {
        v73 = *&v71;
      }

      if (v70 > v73)
      {
        v90 = [*(&v6->isa + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView) layer];
        [v90 setContentsRect_];

        v91 = v7;
        osloga = Logger.logObject.getter();
        v92 = static os_log_type_t.info.getter();

        if (!os_log_type_enabled(osloga, v92))
        {

          v111 = osloga;
          goto LABEL_70;
        }

        v93 = 7104878;
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v96 = v33;
        v97 = v95;
        *&v169.origin.x = v95;
        *v94 = 136315394;
        v98 = v96;
        (*(v34 + 32))(&v173, v96, v34);
        if (v174)
        {
          v99 = 0xE300000000000000;
          v100 = 7104878;
        }

        else
        {
          v100 = CGRect.debugDescription.getter();
          v99 = v146;
        }

        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v99, &v169);

        *(v94 + 4) = v147;
        *(v94 + 12) = 2080;
        v162(&v175, v98, v34);
        if (v176)
        {
          v148 = 0xE300000000000000;
        }

        else
        {
          v93 = CGRect.debugDescription.getter();
          v148 = v149;
        }

        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v148, &v169);

        *(v94 + 14) = v150;
        _os_log_impl(&dword_21607C000, osloga, v92, "[adjustCrop] (LivePhotoView) applied crop for landscape, squareCropRect=%s, landscapeCropRect=%s", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v97, -1, -1);
        MEMORY[0x21CE94770](v94, -1, -1);

        v145 = osloga;
        goto LABEL_107;
      }
    }

LABEL_57:
    v158 = v7;
    v101 = v7;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v102 = 7104878;
      v103 = v33;
      v60 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v173 = v156;
      *v60 = 136315394;
      v104 = (*(v34 + 40))(v103, v34);
      if (!v105)
      {
        v104 = 7104878;
      }

      v106 = 0xE300000000000000;
      if (v105)
      {
        v107 = v105;
      }

      else
      {
        v107 = 0xE300000000000000;
      }

      v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v107, &v173);

      *(v60 + 4) = v108;
      *(v60 + 12) = 2080;
      v162(&v175, v103, v34);
      if ((v176 & 1) == 0)
      {
        v102 = CGRect.debugDescription.getter();
        v106 = v109;
      }

      v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v106, &v173);

      *(v60 + 14) = v110;
      v69 = "[adjustCrop] unreasonable landscapeCropRect or no crop, cloudID=%s, crop=%s)";
      goto LABEL_66;
    }

LABEL_67:

    v7 = v158;
    goto LABEL_68;
  }

  v23 = swift_getObjectType();
  v24 = *(v4 + 8);
  v25 = *(v24 + 32);
  v25(&v171, v23, v24);
  if (v172)
  {
    goto LABEL_32;
  }

  v27 = v171.size.width;
  v26 = v171.size.height;
  v29 = v171.origin.x;
  v28 = v171.origin.y;
  v30 = CGRectGetWidth(v171);
  v31 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if ((v32 & 1) == 0)
  {
    if (v30 <= v31)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (v30 > 0.5)
  {
LABEL_30:
    v178.origin.x = v29;
    v178.origin.y = v28;
    v178.size.width = v27;
    v178.size.height = v26;
    v53 = CGRectGetHeight(v178);
    v54 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
    if (v55)
    {
      if (v53 <= 0.25)
      {
        goto LABEL_32;
      }
    }

    else if (v53 <= v54)
    {
      goto LABEL_32;
    }

    v74 = [*(&v6->isa + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView) layer];
    [v74 setContentsRect_];

    v75 = v7;
    v161 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v161, v76))
    {

      goto LABEL_69;
    }

    v77 = 7104878;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = v23;
    v81 = v79;
    *&v169.origin.x = v79;
    *v78 = 136315394;
    v82 = v25;
    v83 = v80;
    v82(&v173, v80, v24);
    if (v174)
    {
      v84 = 0xE300000000000000;
      v85 = 7104878;
    }

    else
    {
      v85 = CGRect.debugDescription.getter();
      v84 = v140;
    }

    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, &v169);

    *(v78 + 4) = v141;
    *(v78 + 12) = 2080;
    (*(v24 + 24))(&v175, v83, v24);
    if (v176)
    {
      v142 = 0xE300000000000000;
    }

    else
    {
      v77 = CGRect.debugDescription.getter();
      v142 = v143;
    }

    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v142, &v169);

    *(v78 + 14) = v144;
    _os_log_impl(&dword_21607C000, v161, v76, "[adjustCrop] (LivePhotoView) applied crop for square, squareCropRect=%s, landscapeCropRect=%s", v78, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v81, -1, -1);
    MEMORY[0x21CE94770](v78, -1, -1);

    v145 = v161;
LABEL_107:

    return;
  }

LABEL_32:
  v163 = v25;
  v158 = v7;
  v56 = v7;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v57, v58))
  {
    goto LABEL_67;
  }

  v59 = v23;
  v60 = swift_slowAlloc();
  v156 = swift_slowAlloc();
  v173 = v156;
  *v60 = 136315394;
  v61 = (*(v24 + 40))(v59, v24);
  if (!v62)
  {
    v61 = 7104878;
  }

  v63 = 0xE300000000000000;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = 0xE300000000000000;
  }

  v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v64, &v173);

  *(v60 + 4) = v65;
  *(v60 + 12) = 2080;
  v163(&v175, v59, v24);
  v66 = 7104878;
  if ((v176 & 1) == 0)
  {
    v66 = CGRect.debugDescription.getter();
    v63 = v67;
  }

  v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v63, &v173);

  *(v60 + 14) = v68;
  v69 = "[adjustCrop] unreasonable squareCropRect or no crop, cloudID=%s, crop=%s)";
LABEL_66:
  _os_log_impl(&dword_21607C000, v57, v58, v69, v60, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CE94770](v156, -1, -1);
  MEMORY[0x21CE94770](v60, -1, -1);

  v7 = v158;
  v6 = oslog;
  v22 = &unk_27821E000;
LABEL_68:
  v161 = [*(&v6->isa + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView) v22[506]];
  [v161 setContentsRect:0.0, 0.0, 1.0, 1.0];

LABEL_69:
  v111 = v161;
LABEL_70:
}

Swift::Void __swiftcall LivePhotoView.adjustLivePhotoAffordanceAndInteractability()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v5);
  if (v5 == 6)
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);
    v2 = [v1 livePhoto];
    if (v2)
    {

      [*(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView) setHidden_];
      [v1 setHidden_];
      v3 = 1;
      goto LABEL_7;
    }

    [*(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView) setHidden_];
    [v1 setHidden_];
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView) setHidden_];
  }

  v3 = 0;
LABEL_7:
  v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView);

  [v4 setHidden_];
}

id LivePhotoView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void LivePhotoView.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView);
}

id LivePhotoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LivePhotoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance LivePhotoView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 288))(a1, &v6);
  *a3 = result;
  return result;
}

uint64_t closure #1 in LivePhotoView.replaceLivePhoto()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySo11PHLivePhotoCSg_GMd);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x2822009F8](closure #1 in LivePhotoView.replaceLivePhoto(), v7, v6);
}

uint64_t closure #1 in LivePhotoView.replaceLivePhoto()()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for TaskPriority();
  v7 = *(v0 + 40);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = v7;
  v5 = v7;
  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFSo11PHLivePhotoCSg_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in LivePhotoView.replaceLivePhoto(), v4);
  outlined destroy of TaskPriority?(v1);
  *(v0 + 120) = *v2;

  return MEMORY[0x2822009F8](closure #1 in LivePhotoView.replaceLivePhoto(), 0, 0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11PHLivePhotoCSgMd);
  TaskGroup.makeAsyncIterator()();
  v0[16] = 0;
  v1 = lazy protocol witness table accessor for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = closure #1 in LivePhotoView.replaceLivePhoto();
  v3 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[16];
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v7 = closure #1 in LivePhotoView.replaceLivePhoto();
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[2];
  v0[18] = v1;
  v2 = v0[16];
  if (v1 == 1)
  {
    v3 = v0[3];
    (*(v0[8] + 8))(v0[9], v0[7]);
    *v3 = v2;
    v4 = v0[13];
    v5 = v0[14];
    v6 = closure #1 in LivePhotoView.replaceLivePhoto();
  }

  else
  {

    v0[19] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v6 = closure #1 in LivePhotoView.replaceLivePhoto();
    v4 = v7;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{

  v0[16] = v0[18];
  v1 = lazy protocol witness table accessor for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = closure #1 in LivePhotoView.replaceLivePhoto();
  v3 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v3, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in LivePhotoView.replaceLivePhoto()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in LivePhotoView.replaceLivePhoto(), 0, 0);
}

uint64_t closure #1 in closure #1 in LivePhotoView.replaceLivePhoto()()
{
  v1 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  if ((*(v1 + 16))(ObjectType, v1))
  {
    v3 = PairedPhotoVideo.constructedLivePhoto.getter();
  }

  else
  {
    v3 = 0;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

void LivePhotoView.livePhotoView(_:willBeginPlaybackWith:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x70))();
  if (v6)
  {
    v7 = v6;
    (*((*v5 & *v6) + 0x158))(a3 & 1);
  }
}

void @objc LivePhotoView.livePhotoView(_:willBeginPlaybackWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x70);
  v10 = a1;
  v8 = v7();
  if (v8)
  {
    v9 = v8;
    (*((*v6 & *v8) + 0x158))(a5 & 1);
  }
}

void specialized LivePhotoView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_photoImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoAffordanceImageView;
  *(v0 + v2) = closure #1 in variable initialization expression of LivePhotoView.livePhotoAffordanceImageView();
  v3 = OBJC_IVAR____TtC9MomentsUI13LivePhotoView_livePhotoInteractiveView;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9D60]) init];
  [v4 setHidden_];
  [v4 setContentMode_];

  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in LivePhotoView.replaceLivePhoto()(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in LivePhotoView.replaceLivePhoto()(a1, a2, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in LivePhotoView.replaceLivePhoto()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in closure #1 in LivePhotoView.replaceLivePhoto()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVySo11PHLivePhotoCSg_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<PHLivePhoto?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t DBSuggestion.asSuggestion.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v294 = &v272 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v272 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v296 = &v272 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v272 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v295 = (&v272 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v293 = &v272 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v297 = &v272 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v291 = &v272 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v298 = &v272 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v272 - v28;
  (*(*v0 + 344))(v27);
  isa = v13[6].isa;
  if (isa(v11, 1, v12) == 1)
  {
    outlined destroy of UTType?(v11, &_s10Foundation4UUIDVSgMd);
    return 0;
  }

  v289 = v7;
  v301 = v13;
  v30 = v13[4].isa;
  v284 = v13 + 6;
  v285 = v13 + 4;
  v286 = v30;
  v31 = (v30)(v29, v11, v12);
  v32 = *(*v0 + 1208);
  v33 = v32(v31);
  if (v33 == 2)
  {
    v33 = (*(*v0 + 1232))(1, 0);
  }

  v34 = v32(v33);
  if (v34 == 2 || (v34 & 1) == 0)
  {
    v36 = v301;
    if (one-time initialization token for database != -1)
    {
      goto LABEL_201;
    }

    goto LABEL_13;
  }

  v35 = (*(*v0 + 1112))();
  v36 = v301;
  v290 = v29;
  if (!v35)
  {
    goto LABEL_210;
  }

  v37 = v35;
  v315 = MEMORY[0x277D84F90];
  v38 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
LABEL_205:
    v39 = __CocoaSet.count.getter();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v282 = v36 + 2;
  v283 = v12;
  v281 = v36 + 1;
  v302 = v1;
  if (!v39)
  {
    v280 = MEMORY[0x277D84F90];
    goto LABEL_85;
  }

  v29 = v39;
  v12 = 0;
  v299 = (v37 + 32);
  v300 = (v37 & 0xC000000000000001);
  v280 = MEMORY[0x277D84F90];
  v287 = v39;
  v288 = v38;
  while (1)
  {
LABEL_16:
    if (v300)
    {
      v58 = MEMORY[0x21CE93180](v12, v37);
      v59 = __OFADD__(v12++, 1);
      if (v59)
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v12 >= *(v38 + 16))
      {
        goto LABEL_196;
      }

      v58 = v299[v12];

      v59 = __OFADD__(v12++, 1);
      if (v59)
      {
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        swift_once();
LABEL_13:
        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static CommonLogger.database);
        (v36[2].isa)(v16, v29, v12);

        v41 = Logger.logObject.getter();
        v42 = v29;
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v290 = v42;
          v302 = v45;
          v310 = v45;
          *v44 = 136315394;
          LODWORD(v300) = v43;
          v46 = UUID.uuidString.getter();
          v48 = v47;
          v49 = v36[1].isa;
          v49(v16, v12);
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v310);

          *(v44 + 4) = v50;
          *(v44 + 12) = 2080;
          v52 = v298;
          (*(*v1 + 296))(v51);
          v53 = UUID.uuidString.getter();
          v55 = v54;
          v49(v52, v12);
          v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v310);

          *(v44 + 14) = v56;
          _os_log_impl(&dword_21607C000, v41, v300, "[asSuggestion] dropping suggestion due to lazily loaded assets, suggestionID=%s, uuid=%s", v44, 0x16u);
          v57 = v302;
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v57, -1, -1);
          MEMORY[0x21CE94770](v44, -1, -1);

          v49(v290, v12);
        }

        else
        {

          v153 = v36[1].isa;
          v153(v16, v12);
          v153(v29, v12);
        }

        return 0;
      }
    }

    v60 = DBAsset.asMutableAsset.getter();
    if (v60)
    {
      v16 = *(v60 + OBJC_IVAR____TtC9MomentsUI5Asset_representations);
      v61 = v60;

      if (v16)
      {
        v29 = v37;
        v36 = (v16 & 0xFFFFFFFFFFFFFF8);
        if (v16 >> 62)
        {
          v62 = __CocoaSet.count.getter();
        }

        else
        {
          v62 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v63 = 0;
        v1 = (v16 & 0xC000000000000001);
        while (v62 != v63)
        {
          if (v1)
          {
            v64 = MEMORY[0x21CE93180](v63, v16);
          }

          else
          {
            if (v63 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_149;
            }

            v64 = *(v16 + 8 * v63 + 32);
          }

          v65 = v64;
          if (__OFADD__(v63, 1))
          {
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          (*((*MEMORY[0x277D85000] & *v64) + 0x118))(&v310);

          ++v63;
          if (v310 != 2)
          {

            v36 = v301;
            v1 = v302;
            v37 = v29;
            v29 = v287;
            v38 = v288;
            if (v12 == v287)
            {
              goto LABEL_85;
            }

            goto LABEL_16;
          }
        }

        v36 = v301;
        v1 = v302;
        v37 = v29;
        v29 = v287;
        v38 = v288;
      }
    }

    v16 = *(v58 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
    if (v16)
    {
      break;
    }

    if (v12 == v29)
    {
      goto LABEL_85;
    }
  }

  v278 = v37;
  v29 = 0;
  v36 = MEMORY[0x277D84F90];
  v314 = MEMORY[0x277D84F90];
  v1 = *(v16 + 16);
  v66 = v16 + 32;
  v279 = v1;
  v280 = v16 + 32;
  while (v1 != v29)
  {
    if (v29 >= *(v16 + 16))
    {
      goto LABEL_197;
    }

    v67 = *(v66 + 8 * v29++);
    v68 = v67 >> 60;
    if (v67 >> 60)
    {
      if (v68 > 6)
      {
        if (v68 > 9)
        {
          if (v68 == 10)
          {
            v106 = objc_allocWithZone(type metadata accessor for ClientVideoViewModel());

            v77 = specialized ClientVideoViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v106);
            goto LABEL_71;
          }

          if (v68 == 11)
          {
            v80 = objc_allocWithZone(type metadata accessor for ClientContactViewModel());

            v77 = specialized ClientContactViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v80);
            goto LABEL_71;
          }

          *&v273 = v67 & 0xFFFFFFFFFFFFFFFLL;
          v130 = objc_allocWithZone(type metadata accessor for ClientPosterViewModel());
          v274 = type metadata accessor for DBPosterModel();
          v312 = v274;
          v313 = &protocol witness table for DBAssetModel;
          v310 = (v67 & 0xFFFFFFFFFFFFFFFLL);
          v277 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_dbPosterModel;
          swift_weakInit();
          v131 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
          v132 = type metadata accessor for Date();
          v133 = *(*(v132 - 8) + 56);
          v276 = v131;
          v133(&v130[v131], 1, 1, v132);
          v134 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate;
          v133(&v130[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate], 1, 1, v132);
          v275 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost;
          v130[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost] = 2;
          v135 = &v130[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_locationDisplayName];
          *v135 = 0;
          v135[1] = 0;
          v136 = &v130[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_spotlightIdentifier];
          *v136 = 0;
          v136[1] = 0;
          outlined init with copy of DBObject(&v310, v309);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
          if (!swift_dynamicCast())
          {
            goto LABEL_223;
          }

          v137 = v308;
          v274 = v308;
          *&v273 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate;
          v138 = v276;
          swift_beginAccess();
          outlined assign with copy of Date?(&v137[v273], v138 + v130);
          swift_endAccess();
          v139 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate;
          swift_beginAccess();
          v140 = v274;
          outlined assign with copy of Date?(&v274[v139], &v130[v134]);
          swift_endAccess();
          LODWORD(v276) = v140[OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost];
          v141 = v140;
          v142 = v275;
          swift_beginAccess();
          v130[v142] = v276;
          v143 = *&v140[OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName];
          v144 = *&v140[OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName + 8];
          swift_beginAccess();
          v276 = v135[1];
          *v135 = v143;
          v135[1] = v144;

          swift_weakAssign();
          specialized AssetViewModel.init(clientDBObject:)(v141, v130, type metadata accessor for DBPosterModel);
        }

        else
        {
          if (v68 == 7)
          {
            *&v272 = v67 & 0xFFFFFFFFFFFFFFFLL;
            v82 = objc_allocWithZone(type metadata accessor for ClientPhotoViewModel());
            *&v273 = type metadata accessor for DBPhotoModel();
            v312 = v273;
            v313 = &protocol witness table for DBAssetModel;
            v310 = (v67 & 0xFFFFFFFFFFFFFFFLL);
            v83 = &v82[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_localIdentifier];
            *v83 = 0;
            v83[1] = 0;
            v277 = v83;
            v84 = &v82[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_cloudIdentifier];
            *v84 = 0;
            v84[1] = 0;
            v276 = v84;
            v85 = &v82[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect];
            *v85 = 0u;
            *(v85 + 1) = 0u;
            v85[32] = 1;
            v86 = &v82[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect];
            *v86 = 0u;
            *(v86 + 1) = 0u;
            v275 = v86;
            v86[32] = 1;
            v87 = &v82[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect];
            *v87 = 0u;
            *(v87 + 1) = 0u;
            v87[32] = 1;
            v88 = v82;
            swift_weakInit();
            outlined init with copy of DBObject(&v310, v309);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
            if (!swift_dynamicCast())
            {
              goto LABEL_223;
            }

            v89 = v308;
            v274 = v88;
            swift_weakAssign();
            v90 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
            v91 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
            v273 = v91;
            swift_beginAccess();
            v92 = v272;
            *v87 = v273;
            *(v87 + 1) = v92;
            v87[32] = v90;
            v93 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
            v94 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
            v273 = v94;
            swift_beginAccess();
            v95 = v272;
            *v85 = v273;
            *(v85 + 1) = v95;
            v85[32] = v93;
            v96 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
            v97 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
            v273 = v97;
            v98 = v275;
            swift_beginAccess();
            v99 = v272;
            *v98 = v273;
            *(v98 + 16) = v99;
            *(v98 + 32) = v96;
            v101 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
            v100 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
            v102 = v276;
            swift_beginAccess();
            *v102 = v101;
            v102[1] = v100;

            v103 = v277;
            swift_beginAccess();
            *v103 = 0;
            v103[1] = 0;

            v104 = type metadata accessor for DBPhotoModel;
          }

          else
          {
            if (v68 == 8)
            {
              v78 = objc_allocWithZone(type metadata accessor for ClientReflectionViewModel());

              v77 = specialized ClientReflectionViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v78);
              goto LABEL_71;
            }

            *&v272 = v67 & 0xFFFFFFFFFFFFFFFLL;
            v108 = objc_allocWithZone(type metadata accessor for ClientLivePhotoViewModel());
            *&v273 = type metadata accessor for DBLivePhotoModel();
            v312 = v273;
            v313 = &protocol witness table for DBAssetModel;
            v310 = (v67 & 0xFFFFFFFFFFFFFFFLL);
            v109 = &v108[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_localIdentifier];
            *v109 = 0;
            v109[1] = 0;
            v277 = v109;
            v110 = &v108[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_cloudIdentifier];
            *v110 = 0;
            v110[1] = 0;
            v276 = v110;
            v111 = &v108[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect];
            *v111 = 0u;
            *(v111 + 1) = 0u;
            v111[32] = 1;
            v112 = &v108[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect];
            *v112 = 0u;
            *(v112 + 1) = 0u;
            v275 = v112;
            v112[32] = 1;
            v113 = &v108[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect];
            *v113 = 0u;
            *(v113 + 1) = 0u;
            v113[32] = 1;
            v114 = v108;
            swift_weakInit();
            outlined init with copy of DBObject(&v310, v309);

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
            if (!swift_dynamicCast())
            {
              goto LABEL_223;
            }

            v89 = v308;
            v274 = v114;
            swift_weakAssign();
            v115 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
            v116 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
            v273 = v116;
            swift_beginAccess();
            v117 = v272;
            *v113 = v273;
            *(v113 + 1) = v117;
            v113[32] = v115;
            v118 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
            v119 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
            v273 = v119;
            swift_beginAccess();
            v120 = v272;
            *v111 = v273;
            *(v111 + 1) = v120;
            v111[32] = v118;
            v121 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
            v122 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
            v272 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
            v273 = v122;
            v123 = v275;
            swift_beginAccess();
            v124 = v272;
            *v123 = v273;
            *(v123 + 16) = v124;
            *(v123 + 32) = v121;
            v126 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
            v125 = *(v89 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
            v127 = v276;
            swift_beginAccess();
            *v127 = v126;
            v127[1] = v125;

            v128 = v277;
            swift_beginAccess();
            *v128 = 0;
            v128[1] = 0;

            v104 = type metadata accessor for DBLivePhotoModel;
          }

          specialized AssetViewModel.init(dbObject:)(v89, v274, v104);
        }

        v77 = __swift_destroy_boxed_opaque_existential_1(&v310);
        v1 = v279;
        v66 = v280;
      }

      else if (v68 > 3)
      {
        if (v68 == 4)
        {
          v105 = objc_allocWithZone(type metadata accessor for ClientStateOfMindViewModel());

          v77 = specialized ClientStateOfMindViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v105);
        }

        else if (v68 == 5)
        {
          v79 = objc_allocWithZone(type metadata accessor for ClientMediaFirstPartyViewModel());

          v77 = specialized ClientMediaFirstPartyViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v79);
        }

        else
        {
          v129 = objc_allocWithZone(type metadata accessor for ClientMediaThirdPartyViewModel());

          v77 = specialized ClientMediaThirdPartyViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v129);
        }
      }

      else if (v68 == 1)
      {
        v81 = objc_allocWithZone(type metadata accessor for ClientMapViewModel());

        v77 = specialized ClientMapViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v81);
      }

      else if (v68 == 2)
      {
        v69 = (v67 & 0xFFFFFFFFFFFFFFFLL);
        v70 = objc_allocWithZone(type metadata accessor for ClientMotionActivityViewModel());
        v312 = type metadata accessor for DBMotionActivityModel();
        v313 = &protocol witness table for DBAssetModel;
        v310 = v69;
        swift_weakInit();
        outlined init with copy of DBObject(&v310, v309);
        v277 = v69;
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
        if (!swift_dynamicCast())
        {
          goto LABEL_223;
        }

        v71 = v308;
        v72 = *&v308[OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue];
        v73 = v308[OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8];
        if (v73)
        {
          v72 = 0;
        }

        v74 = &v70[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity];
        *v74 = v72;
        v74[8] = v73;
        *&v70[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_steps] = *(v71 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps);
        v75 = *(v71 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle + 8);
        v76 = &v70[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_subtitle];
        *v76 = *(v71 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
        v76[1] = v75;
        swift_weakAssign();

        specialized AssetViewModel.init(clientDBObject:)(v71, v70, type metadata accessor for DBMotionActivityModel);
        __swift_destroy_boxed_opaque_existential_1(&v310);

        v66 = v280;
      }

      else
      {
        v107 = objc_allocWithZone(type metadata accessor for ClientWorkoutViewModel());

        v77 = specialized ClientWorkoutViewModel.init(dbObject:)(v67 & 0xFFFFFFFFFFFFFFFLL, v107);
      }

LABEL_71:
      MEMORY[0x21CE92260](v77);
      if (*((v314 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v314 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36 = v314;
    }
  }

  v145 = v283;
  v277 = v282->isa;
  v146 = (v277)(v298, v58 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v283);
  v280 = (*(*v58 + 112))(v146);
  LODWORD(v279) = v147;
  v16 = type metadata accessor for Asset();
  v148 = objc_allocWithZone(v16);
  v149 = OBJC_IVAR____TtC9MomentsUI5Asset_styleDict;
  *&v148[v149] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v150 = &v148[OBJC_IVAR____TtC9MomentsUI5Asset_priorityScore];
  *v150 = 0;
  v150[8] = 1;
  v151 = v298;
  (v277)(&v148[OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID], v298, v145);
  *&v148[OBJC_IVAR____TtC9MomentsUI5Asset_representations] = v36;
  swift_beginAccess();
  *v150 = v280;
  v150[8] = v279 & 1;
  v307.receiver = v148;
  v307.super_class = v16;
  objc_msgSendSuper2(&v307, sel_init);

  v152 = (v281->isa)(v151, v145);
  MEMORY[0x21CE92260](v152);
  if (*((v315 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v315 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v280 = v315;
  v29 = v287;
  v38 = v288;
  v36 = v301;
  v1 = v302;
  v37 = v278;
  if (v12 != v287)
  {
    goto LABEL_16;
  }

LABEL_85:

  v29 = v280;
  v316 = v280;
  if (v280 >> 62)
  {
    v155 = __CocoaSet.count.getter();
    v156 = v155;
    v12 = v283;
    if (!v155)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v156 = *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v283;
    if (!v156)
    {
      goto LABEL_116;
    }
  }

  v157 = v29 & 0xC000000000000001;
  v36 = (v29 & 0xFFFFFFFFFFFFFF8);

  v16 = 0;
  while (2)
  {
    if (v157)
    {
      v158 = MEMORY[0x21CE93180](v16, v29);
      goto LABEL_92;
    }

    if (v16 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v158 = *(v29 + 8 * v16 + 32);
LABEL_92:
    v37 = v158;
    v38 = *&v158[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
    if (!v38)
    {
      goto LABEL_106;
    }

    v1 = (v38 & 0xFFFFFFFFFFFFFF8);
    if (!(v38 >> 62))
    {
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

LABEL_105:
      v1 = v302;
LABEL_106:

      v161 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_198;
      }

      ++v16;
      if (v161 == v156)
      {

        v36 = v301;
        goto LABEL_116;
      }

      continue;
    }

    break;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_105;
  }

LABEL_95:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v159 = MEMORY[0x21CE93180](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_200;
    }

    v159 = *(v38 + 32);
  }

  v38 = v159;

  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v160 = v38 == 0;
  }

  else
  {
    v160 = 1;
  }

  v1 = v302;
  if (v160)
  {
    v37 = v38;
    goto LABEL_106;
  }

  if (v157)
  {
    v162 = MEMORY[0x21CE93180](v16, v29);
  }

  else
  {
    if (v16 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_221;
    }

    v162 = *(v29 + 8 * v16 + 32);
  }

  v163 = v162;
  v36 = v301;

  if (v316 >> 62 && __CocoaSet.count.getter() < 0)
  {
    __break(1u);
    goto LABEL_219;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v163, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

LABEL_116:
  v164 = (*v1 + 440);
  v37 = *v164;
  v165 = v164;
  v166 = (*v164)(v155);
  v287 = v165;
  v288 = v37;
  if (v167)
  {
    (*(*v1 + 392))(&v310, v166);
  }

  else
  {
    DBSuggestion.SuggestionType.init(rawValue:)(v166);
  }

  v168 = v310;
  if (v310 == 13)
  {
    v168 = 0;
  }

  v29 = v290;
  LOBYTE(v310) = v168;
  DBSuggestion.SuggestionType.asMO.getter(v309);
  v16 = v316;
  if (v309[0] != 10)
  {
LABEL_154:
    if (v16 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_156;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_156:
      if (one-time initialization token for database != -1)
      {
        swift_once();
      }

      v175 = type metadata accessor for Logger();
      __swift_project_value_buffer(v175, static CommonLogger.database);
      v176 = v291;
      v295 = v282->isa;
      v295(v291, v29, v12);

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.debug.getter();

      v179 = os_log_type_enabled(v177, v178);
      v278 = v16;
      if (v179)
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v310 = v181;
        *v180 = 136315650;
        LODWORD(v302) = v178;
        v182 = UUID.uuidString.getter();
        v184 = v183;
        v185 = v281->isa;
        (v281->isa)(v176, v283);
        v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v184, &v310);

        *(v180 + 4) = v186;
        *(v180 + 12) = 2080;
        v188 = v298;
        (*(*v1 + 296))(v187);
        v189 = UUID.uuidString.getter();
        v191 = v190;
        v291 = v185;
        (v185)(v188, v283);
        v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v189, v191, &v310);

        *(v180 + 14) = v192;
        *(v180 + 22) = 2048;
        v194 = COERCE_DOUBLE((*(*v1 + 968))(v193));
        if (v195)
        {
          v194 = -1.0;
        }

        *(v180 + 24) = v194;
        _os_log_impl(&dword_21607C000, v177, v302, "[asSuggestion] converted, suggestionID=%s, uuid=%s, goodnessScore=%f", v180, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v181, -1, -1);
        v196 = v180;
        v12 = v283;
        MEMORY[0x21CE94770](v196, -1, -1);
      }

      else
      {

        v291 = v281->isa;
        (v291)(v176, v12);
      }

      v295(v297, v290, v12);
      v298 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
      v310 = v1;
      swift_getKeyPath();
      v197 = _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      v198 = _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
      lazy protocol witness table accessor for type String? and conformance <A> A?();
      PersistentModel.getValue<A>(forKey:)();

      if (v311)
      {
        v199 = v310;
      }

      else
      {
        v199 = 0;
      }

      if (v311)
      {
        v200 = v311;
      }

      else
      {
        v200 = 0xE000000000000000;
      }

      v201 = type metadata accessor for TemplatedString();
      v202 = objc_allocWithZone(v201);
      v203 = &v202[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
      *v203 = v199;
      *(v203 + 1) = v200;
      v306.receiver = v202;
      v306.super_class = v201;
      v302 = objc_msgSendSuper2(&v306, sel_init);
      v310 = v1;
      swift_getKeyPath();
      v279 = v197;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      v277 = v198;
      PersistentModel.getValue<A>(forKey:)();

      if (v311)
      {
        v204 = v310;
      }

      else
      {
        v204 = 0;
      }

      if (v311)
      {
        v205 = v311;
      }

      else
      {
        v205 = 0xE000000000000000;
      }

      v206 = objc_allocWithZone(v201);
      v207 = &v206[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
      *v207 = v204;
      *(v207 + 1) = v205;
      v305.receiver = v206;
      v305.super_class = v201;
      v208 = objc_msgSendSuper2(&v305, sel_init);
      v209 = DBSuggestion.uiDateRange.getter();
      v210 = DBSuggestion.uiRanking.getter();
      v211 = v288();
      if (v212)
      {
        (*(*v1 + 392))(&v310, v211);
      }

      else
      {
        DBSuggestion.SuggestionType.init(rawValue:)(v211);
      }

      v213 = v310;
      if (v310 == 13)
      {
        v213 = 0;
      }

      v309[0] = v213;
      DBSuggestion.SuggestionType.asMO.getter(&v316);
      LODWORD(v288) = v316;
      v214 = (*(*v1 + 488))();
      v299 = v209;
      v300 = v208;
      v280 = v210;
      if (v215)
      {
        v216 = 0;
      }

      else
      {
        DBSuggestion.SuggestionSubType.init(rawValue:)(v214);
        v216 = v310;
        if (v310 == 65)
        {
          v216 = 0;
        }
      }

      LOBYTE(v310) = v216;
      static SuggestionSubType.subscript.getter(&v315, &v310);
      LODWORD(v287) = v315;
      v310 = v1;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      if (v311)
      {
        v217 = v310;
      }

      else
      {
        v217 = 0;
      }

      if (v311)
      {
        v218 = v311;
      }

      else
      {
        v218 = 0xE000000000000000;
      }

      v219 = objc_allocWithZone(v201);
      v220 = &v219[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
      *v220 = v217;
      *(v220 + 1) = v218;
      v304.receiver = v219;
      v304.super_class = v201;
      v221 = objc_msgSendSuper2(&v304, sel_init);
      v222 = v301[7].isa;
      v223 = v296;
      v224 = v283;
      v225 = v222(v296, 1, 1, v283);
      v226 = v289;
      (*(*v1 + 296))(v225);
      v222(v226, 0, 1, v224);
      v301 = type metadata accessor for Suggestion();
      v227 = objc_allocWithZone(v301);
      v228 = OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking;
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_ranking] = 0;
      v295(&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID], v297, v224);
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_title] = v302;
      v229 = v299;
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle] = v300;
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange] = v229;
      swift_beginAccess();
      v230 = v280;
      *&v227[v228] = v280;
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_assets] = v278;
      v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType] = v288;
      v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType] = v287;
      v231 = v221;
      *&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt] = v221;
      outlined init with copy of DateInterval?(v223, &v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_transferID], &_s10Foundation4UUIDVSgMd);
      v232 = v226;
      v233 = v294;
      outlined init with copy of DateInterval?(v232, v294, &_s10Foundation4UUIDVSgMd);
      v234 = isa;
      if (isa(v233, 1, v224) == 1)
      {
        v235 = v302;
        v236 = v300;
        v237 = v299;
        v238 = v230;
        v239 = v231;
        v240 = v293;
        UUID.init()();
        v241 = v234(v233, 1, v224);
        v242 = v290;
        v243 = v231;
        if (v241 != 1)
        {
          outlined destroy of UTType?(v233, &_s10Foundation4UUIDVSgMd);
        }
      }

      else
      {
        v240 = v293;
        v286(v293, v233, v224);
        v244 = v302;
        v245 = v300;
        v246 = v299;
        v247 = v230;
        v248 = v231;
        v242 = v290;
        v243 = v231;
      }

      v286(&v227[OBJC_IVAR____TtC9MomentsUI10Suggestion_id], v240, v224);
      v303.receiver = v227;
      v303.super_class = v301;
      v249 = objc_msgSendSuper2(&v303, sel_init);

      outlined destroy of UTType?(v289, &_s10Foundation4UUIDVSgMd);
      outlined destroy of UTType?(v296, &_s10Foundation4UUIDVSgMd);
      v250 = v291;
      (v291)(v297, v224);
      v250(v242, v224);
      return v249;
    }

LABEL_210:
    v251 = v295;
    if (one-time initialization token for database != -1)
    {
      swift_once();
    }

    v252 = type metadata accessor for Logger();
    __swift_project_value_buffer(v252, static CommonLogger.database);
    (v36[2].isa)(v251, v29, v12);

    v253 = Logger.logObject.getter();
    v254 = v29;
    v255 = v12;
    v256 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v253, v256))
    {
      v257 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v310 = v302;
      *v257 = 136315394;
      v301 = v253;
      v258 = UUID.uuidString.getter();
      v260 = v259;
      v261 = v36[1].isa;
      v261(v251, v255);
      v262 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v258, v260, &v310);

      *(v257 + 4) = v262;
      *(v257 + 12) = 2080;
      v264 = v298;
      (*(*v1 + 296))(v263);
      v265 = UUID.uuidString.getter();
      v267 = v266;
      v261(v264, v255);
      v268 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v265, v267, &v310);

      *(v257 + 14) = v268;
      v269 = v301;
      _os_log_impl(&dword_21607C000, v301, v256, "[asSuggestion] dropping suggestion due to lack of renderable assets, suggestionID=%s, uuid=%s", v257, 0x16u);
      v270 = v302;
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v270, -1, -1);
      MEMORY[0x21CE94770](v257, -1, -1);

      v261(v290, v255);
    }

    else
    {

      v271 = v36[1].isa;
      v271(v251, v255);
      v271(v254, v255);
    }

    return 0;
  }

  if (v316 >> 62)
  {
    v169 = __CocoaSet.count.getter();
    if (v169)
    {
      goto LABEL_124;
    }

    goto LABEL_154;
  }

  v169 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v169)
  {
    goto LABEL_154;
  }

LABEL_124:
  v58 = 0;
  v12 = v16 & 0xC000000000000001;
  v36 = (v16 & 0xFFFFFFFFFFFFFF8);
  while (2)
  {
    if (v12)
    {
      v170 = MEMORY[0x21CE93180](v58, v16);
    }

    else
    {
      if (v58 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_204;
      }

      v170 = *(v16 + 8 * v58 + 32);
    }

    v37 = v170;
    v38 = *&v170[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
    if (!v38)
    {
      goto LABEL_141;
    }

    v1 = (v38 & 0xFFFFFFFFFFFFFF8);
    if (!(v38 >> 62))
    {
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_132;
      }

LABEL_141:

      v1 = v302;
LABEL_142:
      v173 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_199;
      }

      ++v58;
      if (v173 == v169)
      {
        v12 = v283;
        v36 = v301;
        goto LABEL_154;
      }

      continue;
    }

    break;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_141;
  }

LABEL_132:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v171 = MEMORY[0x21CE93180](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_203;
    }

    v171 = *(v38 + 32);
  }

  v38 = v171;
  v1 = v302;

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();

  if (v37)
  {
    v172 = v38 == 0;
  }

  else
  {
    v172 = 1;
  }

  if (v172)
  {
    goto LABEL_142;
  }

  if (v12)
  {
    v174 = MEMORY[0x21CE93180](v58, v16);
    goto LABEL_152;
  }

LABEL_150:
  if (v58 < v36[2].isa)
  {
    v174 = *(v16 + 8 * v58 + 32);
LABEL_152:
    v163 = v174;
    v12 = v283;
    v36 = v301;

    if (!(v316 >> 62))
    {
LABEL_153:
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v163, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

      v16 = v316;
      goto LABEL_154;
    }

LABEL_219:
    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_153;
    }

    __break(1u);
LABEL_221:
    __break(1u);
  }

  __break(1u);
LABEL_223:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double key path getter for DBSuggestion._prompt : DBSuggestion@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for DBSuggestion._prompt : DBSuggestion()
{
  swift_getKeyPath();
  _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t Suggestion.asDBSuggestion.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v109 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v109 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v109 - v8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v109 - v15;
  v17 = type metadata accessor for UUID();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v29 = v109 - v28;
  v30 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  if (!v30)
  {
    return 0;
  }

  v150 = v6;
  v151 = v26;
  if (v30 >> 62)
  {
LABEL_48:
    v148 = v16;
    v149 = v22;
    v105 = v25;
    v130 = v3;
    v106 = v27;
    v147 = v29;
    v107 = v23;
    v144 = v24;
    v108 = __CocoaSet.count.getter();
    v24 = v144;
    v23 = v107;
    v29 = v147;
    v16 = v148;
    v27 = v106;
    v3 = v130;
    v25 = v105;
    v31 = v108;
    v22 = v149;
    if (!v31)
    {
      return v31;
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      return v31;
    }
  }

  v148 = v16;
  v32 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_title);
  if (!v32)
  {
    return 0;
  }

  v33 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_dateRange);
  if (!v33)
  {
    return 0;
  }

  v144 = v24;
  v145 = v23;
  v130 = v3;
  v146 = v27;
  v147 = v29;
  v142 = v25;
  v143 = v14;
  v149 = v22;
  v137 = v9;
  v34 = *((*MEMORY[0x277D85000] & *v0) + 0xA8);
  v3 = v33;
  v35 = v32;
  v36 = v34();
  if (v36)
  {
    v134 = v36;
    v135 = v35;
    v136 = v3;
    v141 = v11;
    v138 = *(v145 + 16);
    v139 = v145 + 16;
    v138(v147, v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionID, v149);
    LODWORD(v129) = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionType);
    v131 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_subtitle);
    v132 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_prompt);
    v37 = *(v0 + OBJC_IVAR____TtC9MomentsUI10Suggestion_suggestionSubType);
    if (v37 == 65)
    {
      v37 = 0;
    }

    LODWORD(v133) = v37;
    v22 = UUID.init()();
    v16 = 0;
    v9 = MEMORY[0x277D84F90];
    v152[0] = MEMORY[0x277D84F90];
    v14 = (v30 & 0xC000000000000001);
    v11 = &OBJC_IVAR____TtC9MomentsUI5Asset_representations;
    v140 = v10;
    do
    {
      v0 = v16;
      while (1)
      {
        if (v14)
        {
          v22 = MEMORY[0x21CE93180](v0, v30);
          v16 = (v0 + 1);
          if (__OFADD__(v0, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v0 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v22 = *(v30 + 8 * v0 + 32);
          v16 = (v0 + 1);
          if (__OFADD__(v0, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v3 = *&v22[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
        if (v3)
        {
          break;
        }

        ++v0;
        if (v16 == v31)
        {
          goto LABEL_26;
        }
      }

      v38 = v22;
      v128 = type metadata accessor for DBAsset();
      v138(v144, v38 + OBJC_IVAR____TtC9MomentsUI5Asset_universalUUID, v149);
      v127 = *((*MEMORY[0x277D85000] & *v38) + 0x88);

      v40 = v127(v39);
      v3 = DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(v144, v3, v40, v41 & 1);

      MEMORY[0x21CE92260]();
      if (*((v152[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v22 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v152[0];
      v10 = v140;
    }

    while (v16 != v31);
LABEL_26:
    v43 = v149;
    v44 = v138;
    v138(v151, v146, v149);
    v44(v142, v147, v43);
    LOBYTE(v152[0]) = v129;
    static DBSuggestion.SuggestionType.subscript.getter(v152, &v154);
    v45 = v154;
    v46 = OBJC_IVAR____TtC9MomentsUI15TemplatedString_template;
    v47 = *&v135[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
    v48 = *&v135[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template + 8];
    if (v131)
    {
      v49 = *&v131[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template + 8];
      v115 = *&v131[OBJC_IVAR____TtC9MomentsUI15TemplatedString_template];
      v118 = v49;
    }

    else
    {
      v115 = 0;
      v118 = 0xE000000000000000;
    }

    v50 = v141;
    v51 = v137;
    v52 = v136;
    v128 = v9;
    v114 = v47;
    v113 = v48;
    v112 = v45;
    if (v132)
    {
      v53 = *(v132 + v46 + 8);
      v117 = *(v132 + v46);
      v119 = v53;
    }

    else
    {
      v117 = 0;
      v119 = 0xE000000000000000;
    }

    v54 = v50 + 2;
    v55 = v50[2];
    v116 = v54;
    v131 = v55;
    (v55)(v148, &v52[OBJC_IVAR____TtC9MomentsUI9DateRange_startDate], v10);
    (v55)(v143, &v52[OBJC_IVAR____TtC9MomentsUI9DateRange_endDate], v10);
    v121 = *&v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore];
    v120 = v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_rankingScore + 8];
    v123 = *&v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore];
    v122 = v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_baseScore + 8];
    v125 = *&v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore];
    v56 = v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_visibilityCategory];
    v124 = v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_goodnessScore + 8];
    v126 = qword_21659D2D8[v56];
    v57 = v134;
    if (v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab + 8])
    {
      v58 = -1;
    }

    else
    {
      v58 = *&v134[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_ordinalRankInRecommendedTab];
    }

    v129 = v58;
    LOBYTE(v152[0]) = v133;
    static DBSuggestion.SuggestionSubType.subscript.getter(v152, &v153);
    v111 = v153;
    v59 = type metadata accessor for URL();
    (*(*(v59 - 8) + 56))(v51, 1, 1, v59);
    LODWORD(v127) = v57[OBJC_IVAR____TtC9MomentsUI17SuggestionRanking_isSensitive] & 1;
    v60 = type metadata accessor for DBSuggestion();
    v31 = swift_allocObject();
    *(v31 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI12DBSuggestionC_AGQo_Md);
    v110 = type metadata accessor for DBSuggestion;
    v61 = _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion);
    v152[0] = v60;
    v152[1] = v60;
    v152[2] = v61;
    v152[3] = v61;
    *(v31 + 80) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1((v31 + 48));
    static PersistentModel.createBackingData<A>()();
    v62 = v144;
    UUID.init()();
    __swift_project_boxed_opaque_existential_1((v31 + 48), *(v31 + 72));
    swift_getKeyPath();
    _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v63 = v149;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v64 = *(v145 + 8);
    v132 = v145 + 8;
    v133 = v64;
    v64(v62, v63);
    *(v31 + 16) = 0x101010101010101;
    *(v31 + 24) = 0x101010101010101;
    __swift_project_boxed_opaque_existential_1((v31 + 48), *(v31 + 72));
    swift_getKeyPath();
    v65 = MEMORY[0x277D84F90];
    v152[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI7DBAssetCGSgMd);
    lazy protocol witness table accessor for type [DBAsset]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v31 + 32) = 0;
    __swift_project_boxed_opaque_existential_1((v31 + 48), *(v31 + 72));
    swift_getKeyPath();
    v152[0] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI11DBAssetDataCGSgMd);
    type metadata accessor for DBAssetData();
    lazy protocol witness table accessor for type [DBAssetData]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

    *(v31 + 33) = 256;
    __swift_project_boxed_opaque_existential_1((v31 + 48), *(v31 + 72));
    swift_getKeyPath();
    v152[0] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI10DBSnapshotCGSgMd);
    type metadata accessor for DBSnapshot();
    lazy protocol witness table accessor for type [DBSnapshot]? and conformance <A> A?();
    dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

    *(v31 + 35) = 0;
    *(v31 + 40) = 0;
    v66 = OBJC_IVAR____TtC9MomentsUI12DBSuggestion___observationRegistrar;
    ObservationRegistrar.init()();
    v67 = v62;
    v68 = v149;
    v69 = v138;
    v138(v62, v151, v149);
    v152[0] = v31;
    KeyPath = swift_getKeyPath();
    v109[1] = v109;
    MEMORY[0x28223BE20](KeyPath);
    v109[-2] = v31;
    v109[-1] = v62;
    v71 = _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, v110);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v72 = v68;
    v133(v67, v68);
    v73 = v150;
    v69(v150, v142, v72);
    (*(v145 + 56))(v73, 0, 1, v72);
    v152[0] = v31;
    v74 = swift_getKeyPath();
    MEMORY[0x28223BE20](v74);
    v109[-2] = v31;
    v109[-1] = v73;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v73, &_s10Foundation4UUIDVSgMd);
    v75 = v112 - 1;
    v152[0] = v31;
    v76 = swift_getKeyPath();
    MEMORY[0x28223BE20](v76);
    v109[-4] = v31;
    v109[-3] = v75;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v77 = qword_21659D308[v111];
    v152[0] = v31;
    v78 = swift_getKeyPath();
    MEMORY[0x28223BE20](v78);
    v109[-4] = v31;
    v109[-3] = v77;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v79 = swift_getKeyPath();
    MEMORY[0x28223BE20](v79);
    v80 = v114;
    v109[-4] = v31;
    v109[-3] = v80;
    v109[-2] = v113;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v81 = swift_getKeyPath();
    MEMORY[0x28223BE20](v81);
    v82 = v115;
    v109[-4] = v31;
    v109[-3] = v82;
    v109[-2] = v118;
    v110 = v71;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v83 = swift_getKeyPath();
    MEMORY[0x28223BE20](v83);
    v84 = v117;
    v109[-4] = v31;
    v109[-3] = v84;
    v109[-2] = v119;
    v109[2] = v66;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v85 = v130;
    v86 = v140;
    (v131)(v130, v148, v140);
    v150 = v141[7];
    (v150)(v85, 0, 1, v86);
    v152[0] = v31;
    v87 = swift_getKeyPath();
    MEMORY[0x28223BE20](v87);
    v109[-2] = v31;
    v109[-1] = v85;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v85, &_s10Foundation4DateVSgMd);
    (v131)(v85, v143, v86);
    (v150)(v85, 0, 1, v86);
    v152[0] = v31;
    v88 = swift_getKeyPath();
    MEMORY[0x28223BE20](v88);
    v109[-2] = v31;
    v109[-1] = v85;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of UTType?(v85, &_s10Foundation4DateVSgMd);
    if (v120)
    {
      v89 = 0xBFF0000000000000;
    }

    else
    {
      v89 = v121;
    }

    v152[0] = v31;
    v90 = swift_getKeyPath();
    MEMORY[0x28223BE20](v90);
    v109[-4] = v31;
    v109[-3] = v89;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v122)
    {
      v91 = 0xBFF0000000000000;
    }

    else
    {
      v91 = v123;
    }

    v152[0] = v31;
    v92 = swift_getKeyPath();
    MEMORY[0x28223BE20](v92);
    v109[-4] = v31;
    v109[-3] = v91;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (v124)
    {
      v93 = 0xBFF0000000000000;
    }

    else
    {
      v93 = v125;
    }

    v152[0] = v31;
    v94 = swift_getKeyPath();
    MEMORY[0x28223BE20](v94);
    v109[-4] = v31;
    v109[-3] = v93;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v95 = swift_getKeyPath();
    MEMORY[0x28223BE20](v95);
    v96 = v126;
    v109[-4] = v31;
    v109[-3] = v96;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v97 = swift_getKeyPath();
    MEMORY[0x28223BE20](v97);
    v109[-2] = v31;
    LOBYTE(v109[-1]) = v127;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v152[0] = v31;
    v98 = swift_getKeyPath();
    MEMORY[0x28223BE20](v98);
    v99 = v129;
    v109[-4] = v31;
    v109[-3] = v99;
    LOBYTE(v109[-2]) = 0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v100 = v137;
    DBSuggestion.updateAssetDataReferences(assetData:assets:blobFolderURL:modelContext:)(0, v128, v137, 0);

    outlined destroy of UTType?(v100, &_s10Foundation3URLVSgMd);
    v101 = v140;
    v102 = v141[1];
    v102(v143, v140);
    v102(v148, v101);
    v103 = v149;
    v104 = v133;
    v133(v142, v149);
    v104(v151, v103);
    v104(v146, v103);
    v104(v147, v103);
  }

  else
  {

    return 0;
  }

  return v31;
}

Swift::Void __swiftcall Array.prioritize(at:)(Swift::Int at)
{
  v2 = *(v1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](at);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  Array.subscript.getter();
  Array.remove(at:)();
  v9 = *(v3 + 8);
  v9(v6, v2);
  (*(v3 + 16))(v6, v8, v2);
  Array.insert(_:at:)();
  v9(v8, v2);
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t specialized AssetViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBPhotosFamilyModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBMediaFirstPartyModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBStateOfMindModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBMapModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBPhotoModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBVideoModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBPosterModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBContactModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBWorkoutModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBLivePhotoModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBReflectionModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBMotionActivityModel);
}

{
  return specialized AssetViewModel.init(dbObject:)(a1, a2, type metadata accessor for DBMediaThirdPartyModel);
}

uint64_t specialized AssetViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v31 - v7;
  v41[3] = a3(0);
  v41[4] = &protocol witness table for DBAssetModel;
  v41[0] = a1;
  v8 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v32 = v10;
  v31 = v13;
  v13(&a2[v10], 1, 1, v11);
  UUID.init()();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v33 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState;
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  outlined init with copy of DBObject(v41, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBAssetModel();
  if (swift_dynamicCast())
  {
    v14 = v39;
    v15 = *(v39 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport);
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v15;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = (*(*v14 + 224))(v15);
    v16 = (*(*v14 + 336))();
    swift_beginAccess();
    v17 = *&a2[v8];
    *&a2[v8] = v16;

    v19 = *(v14 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    v18 = *(v14 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8);
    swift_beginAccess();
    *v9 = v19;
    v9[1] = v18;

    v20 = v34;
    (*(v12 + 16))(v34, v14 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v11);
    v31(v20, 0, 1, v11);
    v21 = v32;
    swift_beginAccess();
    outlined assign with take of DateInterval?(v20, &a2[v21]);
    v22 = swift_endAccess();
    a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = *(v14 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    (*(*v14 + 200))(v38, v22);
    if (LOBYTE(v38[0]))
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v24 = v33;
    v25 = swift_beginAccess();
    a2[v24] = v23;
    (*(ObjectType + 328))(v38, v25);
    LOBYTE(v24) = v38[0];
    type metadata accessor for AssetViewModelRenderingActor();
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v26 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v26 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v26 + 112) = v24;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v26;
    v27 = v35;
    swift_beginAccess();
    *&a2[v27] = v14;

    v28 = type metadata accessor for AssetViewModel();
    v37.receiver = a2;
    v37.super_class = v28;
    v29 = objc_msgSendSuper2(&v37, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v29;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized AssetViewModel.init(clientDBObject:)(uint64_t a1, _BYTE *a2)
{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBWorkoutModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBMediaFirstPartyModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBMapModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBPosterModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBContactModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBStateOfMindModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBMotionActivityModel);
}

{
  return specialized AssetViewModel.init(clientDBObject:)(a1, a2, type metadata accessor for DBMediaThirdPartyModel);
}

uint64_t specialized AssetViewModel.init(clientDBObject:)(uint64_t a1, _BYTE *a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v26 = &v24 - v7;
  v31[3] = a3(0);
  v31[4] = &protocol witness table for DBAssetModel;
  v31[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v24 = *(v11 + 56);
  v25 = v9;
  v24(&a2[v9], 1, 1, v10);
  UUID.init()();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  v12 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel;
  *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  outlined init with copy of DBObject(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBAssetModel();
  if (swift_dynamicCast())
  {
    v13 = v29[0];
    v14 = *(v29[0] + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_maximumSupportedViewport);
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v14;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = (*(*v13 + 224))(v14);
    v16 = *(v13 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);
    v15 = *(v13 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle + 8);
    swift_beginAccess();
    *v8 = v16;
    v8[1] = v15;

    v17 = v26;
    (*(v11 + 16))(v26, v13 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseDateInterval, v10);
    v24(v17, 0, 1, v10);
    v18 = v25;
    swift_beginAccess();
    outlined assign with take of DateInterval?(v17, &a2[v18]);
    v19 = swift_endAccess();
    a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = *(v13 + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_assetClass);
    (*(ObjectType + 328))(v29, v19);
    LOBYTE(v18) = v29[0];
    type metadata accessor for AssetViewModelRenderingActor();
    v20 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v20 + 120) = 0;
    swift_unknownObjectWeakInit();
    *(v20 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v20 + 112) = v18;
    *&a2[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v20;
    swift_beginAccess();
    *&a2[v12] = v13;

    v21 = type metadata accessor for AssetViewModel();
    v28.receiver = a2;
    v28.super_class = v21;
    v22 = objc_msgSendSuper2(&v28, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v22;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientWorkoutViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v50[3] = type metadata accessor for DBWorkoutModel();
  v50[4] = &protocol witness table for DBAssetModel;
  v50[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel__routeLocations] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v4 = v48;
    v5 = (*(*v48 + 512))();
    if (v5)
    {
      v6 = v5;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        goto LABEL_40;
      }

      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v46 = v4;
      v47 = a2;
      if (v8)
      {
        v9 = 0;
        v10 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CE93180](v9, v6);
            a2 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v9 >= *(v7 + 16))
            {
              goto LABEL_39;
            }

            v11 = *(v6 + 8 * v9 + 32);

            a2 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              v8 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v12 = objc_allocWithZone(type metadata accessor for ClientWorkoutViewModel());
          v13 = specialized ClientWorkoutViewModel.init(dbObject:)(v11, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
          }

          v4 = v10[2];
          v14 = v10[3];
          if (v4 >= v14 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v4 + 1, 1, v10);
          }

          v10[2] = v4 + 1;
          v15 = &v10[2 * v4];
          v15[4] = v13;
          v15[5] = &protocol witness table for ClientWorkoutViewModel;
          ++v9;
          if (a2 == v8)
          {
            goto LABEL_21;
          }
        }
      }

      v10 = MEMORY[0x277D84F90];
LABEL_21:

      a2 = v47;
      v4 = v46;
    }

    else
    {
      v10 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_workoutViewModels] = v10;
    v16 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue + 8);
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activityTypeRawValue);
    }

    v18 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activityType];
    *v18 = v17;
    v18[8] = v16;
    if (*(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString + 8) && (*(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue + 8) & 1) == 0)
    {
      v20 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedDoubleValue);
      v21 = MEMORY[0x21CE91FC0](*(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedUnitString));
      v22 = [objc_opt_self() unitFromString_];

      v19 = [objc_opt_self() quantityWithUnit:v22 doubleValue:v20];
    }

    else
    {
      v19 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurned] = v19;
    v23 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString + 8);
    v24 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_activeEnergyBurnedLocalizedString];
    *v24 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_activeEnergyBurnedLocalizedString);
    v24[1] = v23;
    v25 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString + 8);
    if (v25 && (*(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue + 8) & 1) == 0)
    {
      v27 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceUnitString);
      v28 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceDoubleValue);

      v29 = MEMORY[0x21CE91FC0](v27, v25);
      v30 = [objc_opt_self() unitFromString_];

      v26 = [objc_opt_self() quantityWithUnit:v30 doubleValue:v28];
    }

    else
    {

      v26 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distance] = v26;
    v31 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString + 8);
    v32 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_distanceLocalizedString];
    *v32 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_distanceLocalizedString);
    v32[1] = v31;
    v33 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString + 8);
    if (v33 && (*(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue + 8) & 1) == 0)
    {
      v35 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateUnitString);
      v36 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateDoubleValue);

      v37 = MEMORY[0x21CE91FC0](v35, v33);
      v38 = [objc_opt_self() unitFromString_];

      v34 = [objc_opt_self() quantityWithUnit:v38 doubleValue:v36];
    }

    else
    {

      v34 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRate] = v34;
    v39 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString + 8);
    v40 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_averageHeartRateLocalizedString];
    *v40 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_averageHeartRateLocalizedString);
    v40[1] = v39;
    LOBYTE(v40) = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration + 8);
    v41 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_duration];
    *v41 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_duration);
    v41[8] = v40;
    v42 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString + 8);
    v43 = &a2[OBJC_IVAR____TtC9MomentsUI22ClientWorkoutViewModel_durationLocalizedString];
    *v43 = *(v4 + OBJC_IVAR____TtC9MomentsUI14DBWorkoutModel_durationLocalizedString);
    v43[1] = v42;
    swift_weakAssign();

    v44 = specialized AssetViewModel.init(clientDBObject:)(v4, a2, type metadata accessor for DBWorkoutModel);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return v44;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMapViewModel.init(dbObject:)(uint64_t a1, unint64_t a2)
{
  v29[3] = type metadata accessor for DBMapModel();
  v29[4] = &protocol witness table for DBAssetModel;
  v29[0] = a1;
  swift_weakInit();
  outlined init with copy of DBObject(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v4 = v27;
    v5 = *(v27 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle + 8);
    v6 = (a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_subtitle);
    *v6 = *(v27 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_subtitle);
    v6[1] = v5;
    v7 = *(*v27 + 536);

    *(a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_singularLocation) = v7(v8);
    (*(*v27 + 560))(v28);
    v9 = (a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_pinColor);
    v10 = v28[1];
    *v9 = v28[0];
    *(v9 + 1) = v10;
    v9[32] = 0;
    v11 = swift_weakAssign();
    v12 = (*(*v27 + 528))(v11);
    if (v12)
    {
      v13 = v12;
      v14 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v12 >> 62)
      {
        goto LABEL_21;
      }

      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = a2; v15; i = a2)
      {
        a2 = 0;
        v16 = MEMORY[0x277D84F90];
        while ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x21CE93180](a2, v13);
          v18 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            goto LABEL_19;
          }

LABEL_9:
          v19 = objc_allocWithZone(type metadata accessor for ClientMapViewModel());
          v20 = specialized ClientMapViewModel.init(dbObject:)(v17, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          }

          v22 = v16[2];
          v21 = v16[3];
          if (v22 >= v21 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
          }

          v16[2] = v22 + 1;
          v23 = &v16[2 * v22];
          v23[4] = v20;
          v23[5] = &protocol witness table for ClientMapViewModel;
          ++a2;
          if (v18 == v15)
          {
            goto LABEL_23;
          }
        }

        if (a2 >= *(v14 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(v13 + 8 * a2 + 32);

        v18 = (a2 + 1);
        if (!__OFADD__(a2, 1))
        {
          goto LABEL_9;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v15 = __CocoaSet.count.getter();
      }

      v16 = MEMORY[0x277D84F90];
LABEL_23:

      v4 = v27;
      a2 = i;
    }

    else
    {
      v16 = 0;
    }

    *(a2 + OBJC_IVAR____TtC9MomentsUI18ClientMapViewModel_mapViewModels) = v16;
    v24 = specialized AssetViewModel.init(clientDBObject:)(v4, a2, type metadata accessor for DBMapModel);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientContactViewModel.init(dbObject:)(uint64_t a1, unint64_t a2)
{
  v26[3] = type metadata accessor for DBContactModel();
  v26[4] = &protocol witness table for DBAssetModel;
  v26[0] = a1;
  v4 = (a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v5 = v24;
    v6 = *(v24 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v7 = *(v24 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    swift_beginAccess();
    *v4 = v6;
    v4[1] = v7;

    v9 = (*(*v24 + 408))(v8);
    if (v9)
    {
      v10 = v9;
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v22 = v5;
      v23 = a2;
      if (v12)
      {
        a2 = 0;
        v13 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x21CE93180](a2, v10);
            v5 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (a2 >= *(v11 + 16))
            {
              goto LABEL_24;
            }

            v14 = *(v10 + 8 * a2 + 32);

            v5 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v12 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v15 = objc_allocWithZone(type metadata accessor for ClientContactViewModel());
          v16 = specialized ClientContactViewModel.init(dbObject:)(v14, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
          }

          v18 = v13[2];
          v17 = v13[3];
          if (v18 >= v17 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v13);
          }

          v13[2] = v18 + 1;
          v19 = &v13[2 * v18];
          v19[4] = v16;
          v19[5] = &protocol witness table for ClientContactViewModel;
          ++a2;
          if (v5 == v12)
          {
            goto LABEL_21;
          }
        }
      }

      v13 = MEMORY[0x277D84F90];
LABEL_21:

      a2 = v23;
      v5 = v22;
    }

    else
    {
      v13 = 0;
    }

    *(a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contacts) = v13;
    swift_weakAssign();
    v20 = specialized AssetViewModel.init(clientDBObject:)(v5, a2, type metadata accessor for DBContactModel);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientPosterViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v19[3] = type metadata accessor for DBPosterModel();
  v19[4] = &protocol witness table for DBAssetModel;
  v19[0] = a1;
  swift_weakInit();
  v4 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_startDate;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v7 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate;
  v6(&a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_endDate], 1, 1, v5);
  v8 = OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost;
  a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_isHost] = 2;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_locationDisplayName];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI21ClientPosterViewModel_spotlightIdentifier];
  *v10 = 0;
  v10[1] = 0;
  outlined init with copy of DBObject(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v11 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_startDate;
    swift_beginAccess();
    outlined assign with copy of Date?(v17 + v11, &a2[v4]);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC9MomentsUI13DBPosterModel_endDate;
    swift_beginAccess();
    outlined assign with copy of Date?(v17 + v12, &a2[v7]);
    swift_endAccess();
    LOBYTE(v12) = *(v17 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_isHost);
    swift_beginAccess();
    a2[v8] = v12;
    v14 = *(v17 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName);
    v13 = *(v17 + OBJC_IVAR____TtC9MomentsUI13DBPosterModel_locationDisplayName + 8);
    swift_beginAccess();
    *v9 = v14;
    v9[1] = v13;

    swift_weakAssign();
    v15 = specialized AssetViewModel.init(clientDBObject:)(v17, a2, type metadata accessor for DBPosterModel);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientReflectionViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for DBReflectionModel();
  v25[4] = &protocol witness table for DBAssetModel;
  v5 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor] = 0;
  v25[3] = v4;
  v25[0] = a1;
  v6 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_prompts] = *(v23 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex] = 0;
    v7 = (v23 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
    if (*(v23 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      v8 = objc_opt_self();

      v9 = [v8 whiteColor];
    }

    else
    {
      v11 = v7[2];
      v10 = v7[3];
      v13 = *v7;
      v12 = v7[1];
      v14 = objc_allocWithZone(MEMORY[0x277D75348]);

      v9 = [v14 initWithRed:v13 green:v12 blue:v11 alpha:v10];
    }

    v15 = v9;
    swift_beginAccess();
    v16 = *&a2[v5];
    *&a2[v5] = v15;

    if (*(v23 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32))
    {
      v18 = [objc_opt_self() whiteColor];
    }

    else
    {
      v17 = (v23 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
      v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v17 green:v17[1] blue:v17[2] alpha:v17[3]];
    }

    v19 = v18;
    swift_beginAccess();
    v20 = *&a2[v6];
    *&a2[v6] = v19;

    swift_weakAssign();
    v21 = specialized AssetViewModel.init(dbObject:)(v23, a2, type metadata accessor for DBReflectionModel);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v21;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientVideoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v29[4] = &protocol witness table for DBAssetModel;
  v29[3] = type metadata accessor for DBVideoModel();
  v29[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_videoDurationSeconds];
  *v4 = 0;
  v4[8] = 1;
  v5 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_portraitCropRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_landscapeCropRect];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_squareCropRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_cloudIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientVideoViewModel_localIdentifier];
  *v9 = 0;
  v9[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v10 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v21 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v24 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v7 = v24;
    *(v7 + 1) = v21;
    v7[32] = v10;
    v11 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v22 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v25 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v5 = v25;
    *(v5 + 1) = v22;
    v5[32] = v11;
    v12 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v23 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v26 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v6 = v26;
    *(v6 + 1) = v23;
    v6[32] = v12;
    v14 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v13 = *(v27 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v8 = v14;
    v8[1] = v13;

    swift_beginAccess();
    *v9 = 0;
    v9[1] = 0;

    v16 = (*(*v27 + 456))(v15);
    v18 = v17;
    swift_beginAccess();
    *v4 = v16;
    v4[8] = v18 & 1;
    v19 = specialized AssetViewModel.init(dbObject:)(v27, a2, type metadata accessor for DBVideoModel);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v19;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientLivePhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v24[4] = &protocol witness table for DBAssetModel;
  v24[3] = type metadata accessor for DBLivePhotoModel();
  v24[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_localIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_cloudIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_portraitCropRect];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_landscapeCropRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI24ClientLivePhotoViewModel_squareCropRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v9 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v16 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v19 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v8 = v19;
    *(v8 + 1) = v16;
    v8[32] = v9;
    v10 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v17 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v20 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v6 = v20;
    *(v6 + 1) = v17;
    v6[32] = v10;
    v11 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v18 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v21 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v7 = v21;
    *(v7 + 1) = v18;
    v7[32] = v11;
    v13 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v12 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v5 = v13;
    v5[1] = v12;

    swift_beginAccess();
    *v4 = 0;
    v4[1] = 0;

    v14 = specialized AssetViewModel.init(dbObject:)(v22, a2, type metadata accessor for DBLivePhotoModel);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientPhotoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v24[4] = &protocol witness table for DBAssetModel;
  v24[3] = type metadata accessor for DBPhotoModel();
  v24[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_localIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_cloudIdentifier];
  *v5 = 0;
  v5[1] = 0;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_portraitCropRect];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_landscapeCropRect];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI20ClientPhotoViewModel_squareCropRect];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    swift_weakAssign();
    v9 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 32);
    v16 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect + 16);
    v19 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_squareCropRect);
    swift_beginAccess();
    *v8 = v19;
    *(v8 + 1) = v16;
    v8[32] = v9;
    v10 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 32);
    v17 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect + 16);
    v20 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_portraitCropRect);
    swift_beginAccess();
    *v6 = v20;
    *(v6 + 1) = v17;
    v6[32] = v10;
    v11 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 32);
    v18 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect + 16);
    v21 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_landscapeCropRect);
    swift_beginAccess();
    *v7 = v21;
    *(v7 + 1) = v18;
    v7[32] = v11;
    v13 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v12 = *(v22 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);
    swift_beginAccess();
    *v5 = v13;
    v5[1] = v12;

    swift_beginAccess();
    *v4 = 0;
    v4[1] = 0;

    v14 = specialized AssetViewModel.init(dbObject:)(v22, a2, type metadata accessor for DBPhotoModel);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for DBMediaThirdPartyModel();
  v5 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant;
  a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_colorVariant] = 4;
  v24[4] = &protocol witness table for DBAssetModel;
  v6 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_bundleIdentifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_subtitle];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_mediaCategory] = 3;
  v24[3] = v4;
  v24[0] = a1;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaThirdPartyViewModel_backgroundColor];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v24, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v10 = v22;
    v12 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    v11 = *(v22 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle + 8);
    swift_beginAccess();
    *v7 = v12;
    v7[1] = v11;

    if (*(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v13 = 3;
    }

    else if (*(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue) >= 3uLL)
    {
      v13 = 3;
    }

    else
    {
      v13 = *(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    }

    swift_beginAccess();
    a2[v8] = v13;
    v14 = *(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v19 = *(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v20 = *(v10 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    v15 = swift_beginAccess();
    *v9 = v20;
    *(v9 + 1) = v19;
    v9[32] = v14;
    (*(*v10 + 440))(&v21, v15);
    v16 = v21;
    swift_beginAccess();
    a2[v5] = v16;
    swift_weakAssign();
    v17 = specialized AssetViewModel.init(clientDBObject:)(v10, a2, type metadata accessor for DBMediaThirdPartyModel);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v17;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMediaFirstPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5];
  PartyModel = type metadata accessor for DBMediaFirstPartyModel();
  v32[4] = &protocol witness table for DBAssetModel;
  v32[3] = PartyModel;
  v32[0] = a1;
  *&a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v8 = v30;
    v9 = *(v30 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle + 8);
    v10 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_subtitle];
    *v10 = *(v30 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_subtitle);
    v10[1] = v9;
    v11 = *(v8 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier + 8);
    v12 = &a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier];
    *v12 = *(v8 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_trackIdentifier);
    v12[1] = v11;
    if (*(v8 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue + 8))
    {
      LOBYTE(v13) = 4;
    }

    else
    {
      v13 = *(v8 + OBJC_IVAR____TtC9MomentsUI22DBMediaFirstPartyModel_mediaCategoryRawValue);
      if (v13 >= 4)
      {
        LOBYTE(v13) = 4;
      }
    }

    a2[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_mediaCategory] = v13;
    swift_weakAssign();

    v14 = specialized AssetViewModel.init(clientDBObject:)(v8, a2, type metadata accessor for DBMediaFirstPartyModel);
    v16 = *&v14[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier];
    v15 = *&v14[OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_trackIdentifier + 8];
    v17 = type metadata accessor for MediaPlaybackListener();
    v18 = swift_allocObject();
    *(v18 + 48) = 0;
    *(v18 + 52) = 0;
    *(v18 + 24) = 0;
    *(v18 + 16) = 0;
    *(v18 + 56) = MEMORY[0x277D84F90];
    swift_beginAccess();
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    *(v18 + 32) = v14;
    *(v18 + 40) = &protocol witness table for ClientMediaFirstPartyViewModel;
    v19 = OBJC_IVAR____TtC9MomentsUI30ClientMediaFirstPartyViewModel_listener;
    swift_beginAccess();
    *&v14[v19] = v18;
    v20 = v14;

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v18;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ClientMediaFirstPartyViewModel.init(dbObject:), v22);

    swift_beginAccess();
    v23 = *&v14[v19];
    if (v23)
    {
      swift_endAccess();
      v24 = one-time initialization token for shared;

      if (v24 != -1)
      {
        swift_once();
      }

      v31[3] = v17;
      v31[4] = &protocol witness table for MediaPlaybackListener;
      v31[0] = v18;
      v25 = *(*static MusicPlaybackCoordinatorService.shared + 352);

      LOBYTE(v25) = v25(v31);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v26 = (*(*v23 + 176))(v31);
      *(v27 + 4) = v25 & 1;
      v26(v31, 0);

      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v32);
      swift_endAccess();
    }

    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientStateOfMindViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11StateOfMindVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v31[3] = type metadata accessor for DBStateOfMindModel();
  v31[4] = &protocol witness table for DBAssetModel;
  v31[0] = a1;
  swift_weakInit();
  outlined init with copy of DBObject(v31, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v7 = v29;
    outlined init with copy of DateInterval?(v29 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_stateOfMind, v6, &_s9MomentsUI11StateOfMindVSgMd);
    v8 = type metadata accessor for StateOfMind();
    if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
    {
      outlined destroy of UTType?(v6, &_s9MomentsUI11StateOfMindVSgMd);
      v9 = 0;
    }

    else
    {
      v9 = StateOfMind.hkStateOfMind.getter();
      outlined destroy of StateOfMind(v6);
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_stateOfMind] = v9;
    v10 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle + 8);
    v11 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortTitle];
    *v11 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortTitle);
    v11[1] = v10;
    v12 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle + 8);
    v13 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subtitle];
    *v13 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subtitle);
    v13[1] = v12;
    v14 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle + 8);
    v15 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_shortSubtitle];
    *v15 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_shortSubtitle);
    v15[1] = v14;
    v16 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading + 8);
    v17 = &a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_subheading];
    *v17 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_subheading);
    v17[1] = v16;
    v18 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_lightBackgroundColors);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v30[0] = MEMORY[0x277D84F90];
      v20 = *(v18 + 16);
      if (v20)
      {

        v21 = (v18 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v21 - 3) green:*(v21 - 2) blue:*(v21 - 1) alpha:*v21];
          MEMORY[0x21CE92260]();
          if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 += 4;
          --v20;
        }

        while (v20);
        v22 = v30[0];
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }
    }

    else
    {

      v22 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_lightBackgroundColors] = v22;
    v23 = *(v7 + OBJC_IVAR____TtC9MomentsUI18DBStateOfMindModel_darkBackgroundColors);
    if (v23)
    {
      v30[0] = v19;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = (v23 + 56);
        do
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v25 - 3) green:*(v25 - 2) blue:*(v25 - 1) alpha:*v25];
          MEMORY[0x21CE92260]();
          if (*((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v25 += 4;
          --v24;
        }

        while (v24);
        v19 = v30[0];
      }
    }

    else
    {
      v19 = 0;
    }

    *&a2[OBJC_IVAR____TtC9MomentsUI26ClientStateOfMindViewModel_darkBackgroundColors] = v19;
    swift_weakAssign();
    v26 = specialized AssetViewModel.init(clientDBObject:)(v7, a2, type metadata accessor for DBStateOfMindModel);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v26;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientMotionActivityViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2)
{
  v13[3] = type metadata accessor for DBMotionActivityModel();
  v13[4] = &protocol witness table for DBAssetModel;
  v13[0] = a1;
  swift_weakInit();
  outlined init with copy of DBObject(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  if (swift_dynamicCast())
  {
    v4 = *(v11 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue);
    v5 = *(v11 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_motionTypeRawValue + 8);
    if (v5)
    {
      v4 = 0;
    }

    v6 = &a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_motionActivity];
    *v6 = v4;
    v6[8] = v5;
    *&a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_steps] = *(v11 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_steps);
    v7 = *(v11 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle + 8);
    v8 = &a2[OBJC_IVAR____TtC9MomentsUI29ClientMotionActivityViewModel_subtitle];
    *v8 = *(v11 + OBJC_IVAR____TtC9MomentsUI21DBMotionActivityModel_subtitle);
    v8[1] = v7;
    swift_weakAssign();

    v9 = specialized AssetViewModel.init(clientDBObject:)(v11, a2, type metadata accessor for DBMotionActivityModel);
    __swift_destroy_boxed_opaque_existential_1(v13);
    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s9MomentsUI12DBSuggestionCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v9 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v3 >> 62))
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = __CocoaSet.count.getter();
  v11 = result;
  v12 = __OFSUB__(result, v9);
  v13 = result - v9;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v8)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, v11, v3);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

Swift::Int TipType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MomentsTipCoordinator.stateOfMindTip.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MomentsTipCoordinator.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  outlined assign with take of MomentsTipCoordinatorDelegate?(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t outlined assign with take of MomentsTipCoordinatorDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MomentsTipCoordinator.tipWasDisplayed.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_tipWasDisplayed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MomentsTipCoordinator.tipWasDisplayed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_tipWasDisplayed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MomentsTipCoordinator.__allocating_init(client:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MomentsTipCoordinator.init(client:)(a1);
  return v2;
}

uint64_t MomentsTipCoordinator.init(client:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_tipWasDisplayed) = 0;
  v3 = OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_client;
  outlined init with copy of Client(a1, v1 + OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_client);
  v4 = type metadata accessor for Client();
  v5 = 1;
  (*(*(v4 - 8) + 56))(v1 + v3, 0, 1, v4);
  v11 = &type metadata for MomentsStateOfMindTip;
  v12 = lazy protocol witness table accessor for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip();
  v10[0] = 0;
  MomentsTipCoordinator.observeTipStatusUpdates(tip:)(v10);
  outlined destroy of UTType?(v10, &_s6TipKit0A0_pSgMd);
  v6 = (a1 + *(v4 + 32));
  v7 = v6[1];
  if (v7)
  {
    if (*v6 == 0xD000000000000011 && v7 == 0x8000000216578900)
    {
      v5 = 0;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  outlined destroy of Client(a1);
  swift_beginAccess();
  *(v1 + 16) = v5 & 1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip()
{
  result = lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip;
  if (!lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip;
  if (!lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MomentsStateOfMindTip and conformance MomentsStateOfMindTip);
  }

  return result;
}

uint64_t MomentsTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  outlined init with copy of DateInterval?(a1, &v9, &_s6TipKit0A0_pSgMd);
  if (!v10)
  {
    return outlined destroy of UTType?(&v9, &_s6TipKit0A0_pSgMd);
  }

  outlined init with take of MusicPlaybackCoordinatorDelegate(&v9, v11);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DBObject(v11, &v9);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  outlined init with take of MusicPlaybackCoordinatorDelegate(&v9, (v7 + 4));
  v7[9] = v6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:), v7);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v5[40] = swift_task_alloc();
  v8 = type metadata accessor for Client();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v5[44] = v9;
  v10 = *(v9 - 8);
  v5[45] = v10;
  v5[46] = *(v10 + 64);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v5[49] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v5[50] = v11;
  v5[51] = *(v11 - 8);
  v5[52] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v5[53] = v12;
  v5[54] = *(v12 - 8);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:), 0, 0);
}

uint64_t closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:)()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1(*(v0 + 256), *(*(v0 + 256) + 24));
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v0 + 448) = v4;
  *v4 = v0;
  v4[1] = closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:);
  v5 = *(v0 + 424);
  v6 = *(v0 + 392);

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

{

  return MEMORY[0x2822009F8](closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:), 0, 0);
}

{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v3 + 32);
    v6(*(v0 + 384), v1, v2);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      outlined init with copy of DBObject(*(v0 + 256), v0 + 64);
      *(v0 + 136) = *(v0 + 96);
      v9 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 80);
      *(v0 + 104) = v9;
      if (*(v0 + 128))
      {
        outlined init with copy of DateInterval?(v0 + 104, v0 + 184, &_s6TipKit0A0_pSgMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pMd);
        v10 = swift_dynamicCast();
        __swift_destroy_boxed_opaque_existential_1(v0 + 184);
        v11 = v10 ^ 1;
      }

      else
      {
        v11 = 1;
      }

      v12 = *(v0 + 328);
      v13 = *(v0 + 336);
      v14 = *(v0 + 320);
      outlined destroy of UTType?(v0 + 104, &_s6TipKit0A0_pSgMd);
      outlined init with copy of DateInterval?(v8 + OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_client, v14, &_s9MomentsUI6ClientVSgMd);
      v15 = (*(v13 + 48))(v14, 1, v12);
      v16 = *(v0 + 320);
      if (v15 == 1)
      {
        v17 = *(v0 + 384);
        v18 = *(v0 + 352);
        v19 = *(v0 + 360);

        (*(v19 + 8))(v17, v18);
        outlined destroy of UTType?(v16, &_s9MomentsUI6ClientVSgMd);
      }

      else
      {
        v20 = *(v0 + 344);
        v21 = *(v0 + 328);
        outlined init with take of Client(*(v0 + 320), v20);
        v22 = (v20 + *(v21 + 24));
        v23 = *v22;
        v24 = *(v0 + 384);
        if (*v22)
        {
          v47 = *(v0 + 368);
          v42 = v11;
          v26 = *(v0 + 352);
          v25 = *(v0 + 360);
          v40 = *(v0 + 376);
          v53 = *(v0 + 344);
          v43 = *(v0 + 312);
          v51 = *(v0 + 304);
          v52 = *(v0 + 296);
          v45 = *(v0 + 288);
          v50 = *(v0 + 280);
          v46 = *(v0 + 272);
          v27 = *(v0 + 256);
          v41 = v22[1];
          type metadata accessor for OS_dispatch_queue();
          swift_unknownObjectRetain();
          v44 = static OS_dispatch_queue.main.getter();
          v49 = v25;
          (*(v25 + 16))(v40, v24, v26);
          outlined init with copy of DBObject(v27, v0 + 144);
          v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
          v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
          v48 = v24;
          v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
          v31 = swift_allocObject();
          v6(v31 + v28, v40, v26);
          *(v31 + v29) = v8;
          outlined init with take of MusicPlaybackCoordinatorDelegate((v0 + 144), v31 + v30);
          *(v31 + v30 + 40) = v42;
          v32 = (v31 + ((v29 + 63) & 0xFFFFFFFFFFFFFFF8));
          *v32 = v23;
          v32[1] = v41;
          *(v0 + 48) = partial apply for closure #1 in MomentsTipCoordinator.statusDidChange(status:for:);
          *(v0 + 56) = v31;
          *(v0 + 16) = MEMORY[0x277D85DD0];
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
          *(v0 + 40) = &block_descriptor_20;
          v33 = _Block_copy((v0 + 16));
          swift_unknownObjectRetain();

          static DispatchQoS.unspecified.getter();
          *(v0 + 248) = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x21CE92A50](0, v43, v45, v33);
          _Block_release(v33);

          swift_unknownObjectRelease();
          (*(v50 + 8))(v45, v46);
          (*(v51 + 8))(v43, v52);
          outlined destroy of Client(v53);
          (*(v49 + 8))(v48, v26);
        }

        else
        {
          v34 = *(v0 + 352);
          v35 = *(v0 + 360);
          v36 = *(v0 + 344);

          outlined destroy of Client(v36);
          (*(v35 + 8))(v24, v34);
        }
      }
    }

    else
    {
      (*(*(v0 + 360) + 8))(*(v0 + 384), *(v0 + 352));
    }

    v37 = swift_task_alloc();
    *(v0 + 448) = v37;
    *v37 = v0;
    v37[1] = closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:);
    v38 = *(v0 + 424);
    v39 = *(v0 + 392);

    return MEMORY[0x2822003E8](v39, 0, 0, v38);
  }
}

void closure #1 in MomentsTipCoordinator.statusDidChange(status:for:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v61 = a5;
  v62 = a6;
  v63 = a3;
  LODWORD(v8) = a4;
  v9 = type metadata accessor for Tips.Status();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277CE1A10];
  v14 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  v15 = *(v10 + 104);
  v15(v12, *MEMORY[0x277CE1A50], v9);
  v64 = a1;
  LOBYTE(v13) = static Tips.Status.== infix(_:_:)();
  v16 = *(v10 + 8);
  v17 = v16(v12, v9);
  if (v13)
  {
    v18 = v8;
    if ((*(*a2 + 160))(v17))
    {
      v19 = *(*a2 + 136);
      v60 = a2;
      v19(v69);
      if (v70)
      {
        outlined init with copy of DBObject(v69, v65);
        outlined destroy of UTType?(v69, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
        v20 = v66;
        v21 = v67;
        __swift_project_boxed_opaque_existential_1(v65, v66);
        (*(v21 + 16))(v63, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v65);
      }

      else
      {
        outlined destroy of UTType?(v69, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
      }

      if (one-time initialization token for tips != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static CommonLogger.tips);
      outlined init with copy of DBObject(v63, v69);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v58 = v23;
        v26 = v25;
        v59 = swift_slowAlloc();
        v65[0] = v59;
        *v26 = 136315394;
        v57 = v18;
        v68 = v18 & 1;
        v27 = String.init<A>(describing:)();
        v56 = v24;
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v65);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v30 = dispatch thunk of Tip.id.getter();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(v69);
        v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v65);

        *(v26 + 14) = v8;
        LOBYTE(v8) = v57;
        v33 = v58;
        _os_log_impl(&dword_21607C000, v58, v56, "[Tip] invalidated tipType: %s, for tipID: %s", v26, 0x16u);
        v34 = v59;
        swift_arrayDestroy();
        MEMORY[0x21CE94770](v34, -1, -1);
        MEMORY[0x21CE94770](v26, -1, -1);

        a2 = v60;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v69);
        a2 = v60;
        LOBYTE(v8) = v18;
      }
    }
  }

  v15(v12, *MEMORY[0x277CE1A58], v9);
  v35 = static Tips.Status.== infix(_:_:)();
  v16(v12, v9);
  if ((v35 & 1) != 0 && (v8 & 1) == 0)
  {
    v36 = [objc_opt_self() currentDevice];
    v37 = [v36 userInterfaceIdiom];

    if (!v37)
    {
      ObjectType = swift_getObjectType();
      if ((*(v62 + 96))(ObjectType))
      {
        (*(*a2 + 136))(v69);
        if (v70)
        {
          outlined init with copy of DBObject(v69, v65);
          outlined destroy of UTType?(v69, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
          v39 = a2;
          v40 = v66;
          v41 = v67;
          __swift_project_boxed_opaque_existential_1(v65, v66);
          v42 = *(v41 + 8);
          v43 = v41;
          a2 = v39;
          v42(v63, v40, v43);
          __swift_destroy_boxed_opaque_existential_1(v65);
        }

        else
        {
          outlined destroy of UTType?(v69, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
        }

        (*(*a2 + 168))(1);
        if (one-time initialization token for tips != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static CommonLogger.tips);
        outlined init with copy of DBObject(v63, v69);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v65[0] = v48;
          *v47 = 136315394;
          v68 = 0;
          v49 = String.init<A>(describing:)();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v65);

          *(v47 + 4) = v51;
          *(v47 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v69, v70);
          v52 = dispatch thunk of Tip.id.getter();
          v54 = v53;
          __swift_destroy_boxed_opaque_existential_1(v69);
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v65);

          *(v47 + 14) = v55;
          _os_log_impl(&dword_21607C000, v45, v46, "[Tip] available tipType: %s, for tipID: %s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x21CE94770](v48, -1, -1);
          MEMORY[0x21CE94770](v47, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v69);
        }
      }
    }
  }
}

uint64_t MomentsTipCoordinator.deinit()
{
  outlined destroy of UTType?(v0 + 24, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_client, &_s9MomentsUI6ClientVSgMd);
  return v0;
}

uint64_t MomentsTipCoordinator.__deallocating_deinit()
{
  outlined destroy of UTType?(v0 + 24, &_s9MomentsUI0A22TipCoordinatorDelegate_pSgMd);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI21MomentsTipCoordinator_client, &_s9MomentsUI6ClientVSgMd);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type TipType and conformance TipType()
{
  result = lazy protocol witness table cache variable for type TipType and conformance TipType;
  if (!lazy protocol witness table cache variable for type TipType and conformance TipType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TipType and conformance TipType);
  }

  return result;
}

uint64_t type metadata accessor for MomentsTipCoordinator()
{
  result = type metadata singleton initialization cache for MomentsTipCoordinator;
  if (!type metadata singleton initialization cache for MomentsTipCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MomentsTipCoordinator()
{
  type metadata accessor for Client?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Client?()
{
  if (!lazy cache variable for type metadata for Client?)
  {
    type metadata accessor for Client();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Client?);
    }
  }
}

uint64_t partial apply for closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MomentsTipCoordinator.observeTipStatusUpdates(tip:)(a1, v4, v5, (v1 + 4), v6);
}

void partial apply for closure #1 in MomentsTipCoordinator.statusDidChange(status:for:)()
{
  v1 = *(type metadata accessor for Tips.Status() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 40);
  v7 = (v0 + ((v3 + 63) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  closure #1 in MomentsTipCoordinator.statusDidChange(status:for:)(v0 + v2, v4, v5, v6, v8, v9);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *TransferPhotoFamilyViewModel.landscapeCropRect.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferPhotoFamilyViewModel.landscapeCropRect.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TransferPhotoFamilyViewModel.portraitCropRect.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferPhotoFamilyViewModel.portraitCropRect.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TransferPhotoFamilyViewModel.squareCropRect.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TransferPhotoFamilyViewModel.squareCropRect.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TransferPhotoFamilyViewModel.photoIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TransferPhotoFamilyViewModel.photoIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

MomentsUI::TransferPhotoFamilyViewModel::CodingKeys_optional __swiftcall TransferPhotoFamilyViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPhotoFamilyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t TransferPhotoFamilyViewModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x7243657261757173;
  if (a1 != 2)
  {
    v1 = 0x6564496F746F6870;
  }

  v2 = 0xD000000000000011;
  if (a1)
  {
    v2 = 0xD000000000000010;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferPhotoFamilyViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0074636552706FLL;
  v3 = 0x7243657261757173;
  v4 = *a1;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 0x7243657261757173;
    }

    else
    {
      v5 = 0x6564496F746F6870;
    }

    if (v4 == 2)
    {
      v6 = 0xEE0074636552706FLL;
    }

    else
    {
      v6 = 0xEF7265696669746ELL;
    }
  }

  else
  {
    if (*a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4)
    {
      v6 = 0x8000000216576570;
    }

    else
    {
      v6 = 0x8000000216576550;
    }
  }

  if (*a2 != 2)
  {
    v3 = 0x6564496F746F6870;
    v2 = 0xEF7265696669746ELL;
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000216576570;
  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v8 = 0x8000000216576550;
  }

  if (*a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (*a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferPhotoFamilyViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TransferPhotoFamilyViewModel.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferPhotoFamilyViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferPhotoFamilyViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPhotoFamilyViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferPhotoFamilyViewModel.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xEE0074636552706FLL;
  v3 = 0x7243657261757173;
  if (*v1 != 2)
  {
    v3 = 0x6564496F746F6870;
    v2 = 0xEF7265696669746ELL;
  }

  v4 = 0x8000000216576550;
  v5 = 0xD000000000000011;
  if (*v1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000216576570;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferPhotoFamilyViewModel.CodingKeys()
{
  v1 = 0x7243657261757173;
  if (*v0 != 2)
  {
    v1 = 0x6564496F746F6870;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferPhotoFamilyViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPhotoFamilyViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferPhotoFamilyViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferPhotoFamilyViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferPhotoFamilyViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect) = 0;
  v5 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect) = 0;
  v6 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *(v1 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect) = 0;
  v7 = (v1 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier);
  type metadata accessor for ScreenRect();
  *v7 = 0;
  v7[1] = 0;
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v9 = *(v2 + v4);
  *(v2 + v4) = v8;

  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v11 = *(v2 + v5);
  *(v2 + v5) = v10;

  v12 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v13 = *(v2 + v6);
  *(v2 + v6) = v12;

  type metadata accessor for NSString();
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  swift_beginAccess();
  *v7 = 0;
  v7[1] = 0;

  v15 = specialized AssetViewModel.init(coder:)(a1);

  return v15;
}

Swift::Void __swiftcall TransferPhotoFamilyViewModel.encode(with:)(NSCoder with)
{
  AssetViewModel.encode(with:)(with);
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x228);
  v5 = v4();
  v6 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216576550);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = (*((*v3 & *v1) + 0x240))();
  v8 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x8000000216576570);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = v4();
  v10 = MEMORY[0x21CE91FC0](0xD000000000000011, 0x8000000216576550);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = (*((*v3 & *v1) + 0x258))();
  v12 = MEMORY[0x21CE91FC0](0x7243657261757173, 0xEE0074636552706FLL);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = (*((*v3 & *v1) + 0x270))();
  if (v14)
  {
    v15 = MEMORY[0x21CE91FC0](v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x21CE91FC0](0x6564496F746F6870, 0xEF7265696669746ELL);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
  swift_unknownObjectRelease();
}

void TransferPhotoFamilyViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferPhotoFamilyViewModel.init(dbObject:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id TransferPhotoFamilyViewModel.init(baseTitle:baseDateInterval:landscapeCropRect:portraitCropRect:squareCropRect:photoIdentifier:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v10 = v9;
  v71 = a8;
  v70 = a7;
  v75 = a3;
  v74 = a2;
  v73 = a1;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect;
  *&v10[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_landscapeCropRect] = 0;
  v72 = *a9;
  v19 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect;
  *&v10[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_portraitCropRect] = 0;
  v20 = OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect;
  *&v10[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_squareCropRect] = 0;
  v21 = &v10[OBJC_IVAR____TtC9MomentsUI28TransferPhotoFamilyViewModel_photoIdentifier];
  *v21 = 0;
  v21[1] = 0;
  if (*(a4 + 32))
  {
    if (*(a5 + 32))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = *(a4 + 16);
    v48 = *(a4 + 24);
    v51 = *a4;
    v50 = *(a4 + 8);
    v52 = *a4;
    v83.origin.x = *a4;
    v83.origin.y = v50;
    v83.size.width = v49;
    v83.size.height = v48;
    Width = CGRectGetWidth(v83);
    v84.origin.x = v51;
    v84.origin.y = v50;
    v84.size.width = v49;
    v84.size.height = v48;
    *&v48 = CGRectGetHeight(v84);
    v55 = type metadata accessor for ScreenRect();
    v56 = objc_allocWithZone(v55);
    *&v56[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v52;
    v53 = v50;
    *&v56[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v53;
    *&v56[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = Width;
    *&v56[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v48);
    v76.receiver = v56;
    v76.super_class = v55;
    v57 = objc_msgSendSuper2(&v76, sel_init);
    swift_beginAccess();
    v58 = *&v10[v18];
    *&v10[v18] = v57;

    if (*(a5 + 32))
    {
LABEL_3:
      if (*(a6 + 32))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v60 = *(a5 + 16);
  v59 = *(a5 + 24);
  v62 = *a5;
  v61 = *(a5 + 8);
  v63 = *a5;
  v85.origin.x = *a5;
  v85.origin.y = v61;
  v85.size.width = v60;
  v85.size.height = v59;
  v65 = CGRectGetWidth(v85);
  v86.origin.x = v62;
  v86.origin.y = v61;
  v86.size.width = v60;
  v86.size.height = v59;
  *&v59 = CGRectGetHeight(v86);
  v66 = type metadata accessor for ScreenRect();
  v67 = objc_allocWithZone(v66);
  *&v67[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v63;
  v64 = v61;
  *&v67[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v64;
  *&v67[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v65;
  *&v67[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v59);
  v77.receiver = v67;
  v77.super_class = v66;
  v68 = objc_msgSendSuper2(&v77, sel_init);
  swift_beginAccess();
  v69 = *&v10[v19];
  *&v10[v19] = v68;

  if ((*(a6 + 32) & 1) == 0)
  {
LABEL_4:
    v23 = *(a6 + 16);
    v22 = *(a6 + 24);
    v25 = *a6;
    v24 = *(a6 + 8);
    v26 = *a6;
    v81.origin.x = *a6;
    v81.origin.y = v24;
    v81.size.width = v23;
    v81.size.height = v22;
    v28 = CGRectGetWidth(v81);
    v82.origin.x = v25;
    v82.origin.y = v24;
    v82.size.width = v23;
    v82.size.height = v22;
    *&v22 = CGRectGetHeight(v82);
    v29 = type metadata accessor for ScreenRect();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originX] = v26;
    v27 = v24;
    *&v30[OBJC_IVAR____TtC9MomentsUI10ScreenRect_originY] = v27;
    *&v30[OBJC_IVAR____TtC9MomentsUI10ScreenRect_width] = v28;
    *&v30[OBJC_IVAR____TtC9MomentsUI10ScreenRect_height] = LODWORD(v22);
    v78.receiver = v30;
    v78.super_class = v29;
    v31 = objc_msgSendSuper2(&v78, sel_init);
    swift_beginAccess();
    v32 = *&v10[v20];
    *&v10[v20] = v31;
  }

LABEL_5:
  swift_beginAccess();
  v33 = v71;
  *v21 = v70;
  v21[1] = v33;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v34 = static ScreenSize.zero;
  v35 = v75;
  outlined init with copy of DateInterval?(v75, v17);
  v36 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v37 = &v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v37 = 0;
  v37[1] = 0;
  v38 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v39 = type metadata accessor for DateInterval();
  (*(*(v39 - 8) + 56))(&v10[v38], 1, 1, v39);
  UUID.init()();
  v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v34;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v40 = *&v10[v36];
  *&v10[v36] = 0;
  v41 = v34;

  swift_beginAccess();
  v42 = v74;
  *v37 = v73;
  v37[1] = v42;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v17, &v10[v38]);
  v43 = swift_endAccess();
  v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v72;
  (*(ObjectType + 328))(v80, v43);
  LOBYTE(v38) = v80[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v44 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v44 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v44 + 112) = v38;
  *&v10[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v44;
  v45 = type metadata accessor for AssetViewModel();
  v79.receiver = v10;
  v79.super_class = v45;
  v46 = objc_msgSendSuper2(&v79, sel_init);
  outlined destroy of DateInterval?(v35);
  outlined destroy of DateInterval?(v17);
  return v46;
}

uint64_t TransferPhotoFamilyViewModel.__ivar_destroyer()
{
}

id TransferPhotoFamilyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferPhotoFamilyViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferPhotoFamilyViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPhotoFamilyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for TransferPhotoFamilyViewModel()
{
  result = type metadata singleton initialization cache for TransferPhotoFamilyViewModel;
  if (!type metadata singleton initialization cache for TransferPhotoFamilyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPhotoFamilyViewModel.CodingKeys and conformance TransferPhotoFamilyViewModel.CodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of TransferPhotoFamilyViewModel.__allocating_init(baseTitle:baseDateInterval:landscapeCropRect:portraitCropRect:squareCropRect:photoIdentifier:assetClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a4 + 32);
  v8 = *(a5 + 32);
  v9 = *(a6 + 32);
  v10 = *(v6 + 648);
  v11 = *(a4 + 16);
  v19[0] = *a4;
  v19[1] = v11;
  v20 = v7;
  v12 = *(a5 + 16);
  v17[0] = *a5;
  v17[1] = v12;
  v18 = v8;
  v13 = *(a6 + 16);
  v15[0] = *a6;
  v15[1] = v13;
  v16 = v9;
  return v10(a1, a2, a3, v19, v17, v15);
}

uint64_t CLLocation.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static LocationShifter.shared + 104))();
}

uint64_t LocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  LocationShifter.init()();
  return v0;
}

uint64_t *LocationShifter.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static LocationShifter.shared;
}

uint64_t static LocationShifter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

Swift::Bool __swiftcall LocationShifter.shiftNeeded(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  [(objc_class *)a1.super.isa coordinate];
  v3 = v2;
  [(objc_class *)isa coordinate];
  return [objc_opt_self() isLocationShiftRequiredForCoordinate_];
}

CLLocation __swiftcall LocationShifter.shiftedIfNecessary(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v74 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(objc_class *)isa coordinate];
  v13 = v12;
  [(objc_class *)isa coordinate];
  v15 = v14;
  if ([objc_opt_self() isLocationShiftRequiredForCoordinate_])
  {
    v79 = v7;
    v80 = v2;
    v81 = v1;
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    v17 = swift_allocObject();
    [(objc_class *)isa horizontalAccuracy];
    *(v17 + 16) = v18;
    v19 = *(v84 + 16);
    [(objc_class *)isa horizontalAccuracy];
    v82 = v17 + 16;
    v83 = v16 + 16;
    if ([v19 shiftCoordinate:v16 + 16 accuracy:v17 + 16 shiftedCoordinate:v13 shiftedAccuracy:{v15, v20}])
    {
      v21 = *(v16 + 16);
      v22 = *(v16 + 24);
      [(objc_class *)isa altitude];
      v24 = v23;
      v25 = *(v17 + 16);
      [(objc_class *)isa verticalAccuracy];
      v27 = v26;
      v28 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v29 initWithCoordinate:v30 altitude:v21 horizontalAccuracy:v22 verticalAccuracy:v24 timestamp:{v25, v27}];

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v76 = v11;
      v77 = v9;
      v78 = v8;
      v35 = dispatch_group_create();
      dispatch_group_enter(v35);
      [(objc_class *)isa horizontalAccuracy];
      v37 = v36;
      v38 = swift_allocObject();
      v38[2] = v16;
      v38[3] = v17;
      v38[4] = v35;
      v90 = partial apply for closure #1 in LocationShifter.shiftedIfNecessary(_:);
      v91 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v87 = 1107296256;
      v39 = v16;
      v88 = thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ();
      v89 = &block_descriptor_21;
      v40 = _Block_copy(&aBlock);
      v74 = v39;

      v75 = v17;

      v41 = v35;

      v90 = closure #2 in LocationShifter.shiftedIfNecessary(_:);
      v91 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed () -> ();
      v89 = &block_descriptor_9_0;
      v42 = _Block_copy(&aBlock);
      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      v90 = partial apply for closure #3 in LocationShifter.shiftedIfNecessary(_:);
      v91 = v43;
      aBlock = MEMORY[0x277D85DD0];
      v87 = 1107296256;
      v88 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
      v89 = &block_descriptor_15_2;
      v44 = _Block_copy(&aBlock);
      v45 = v41;

      [v19 shiftCoordinate:v40 accuracy:v42 withCompletionHandler:v44 mustGoToNetworkCallback:*(v84 + 24) errorHandler:v13 callbackQueue:{v15, v37}];
      _Block_release(v44);
      _Block_release(v42);
      _Block_release(v40);
      static DispatchTime.now()();
      v46 = v79;
      + infix(_:_:)();
      v47 = v81;
      v48 = *(v80 + 8);
      v48(v5, v81);
      MEMORY[0x21CE929D0](v46);
      v48(v46, v47);
      if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
      {
        if (one-time initialization token for assets != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        __swift_project_value_buffer(v49, static CommonLogger.assets);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_21607C000, v50, v51, "[LocationShifter] Timed out", v52, 2u);
          MEMORY[0x21CE94770](v52, -1, -1);
        }
      }

      if (one-time initialization token for assets != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, static CommonLogger.assets);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v78;
      v58 = v77;
      v59 = v76;
      v60 = v75;
      v61 = v74;
      if (v56)
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_21607C000, v54, v55, "[LocationShifter] Returning shifted location", v62, 2u);
        MEMORY[0x21CE94770](v62, -1, -1);
      }

      swift_beginAccess();
      v63 = *(v61 + 16);
      v64 = *(v61 + 24);
      [(objc_class *)isa altitude];
      v66 = v65;
      swift_beginAccess();
      v67 = *(v60 + 16);
      [(objc_class *)isa verticalAccuracy];
      v69 = v68;
      v70 = [(objc_class *)isa timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v72 = Date._bridgeToObjectiveC()().super.isa;
      v31 = [v71 initWithCoordinate:v72 altitude:v63 horizontalAccuracy:v64 verticalAccuracy:v66 timestamp:{v67, v69}];

      (*(v58 + 8))(v59, v57);
    }

    v33 = v31;
  }

  else
  {
    v32 = isa;

    v33 = v32;
  }

  result._internal = v34;
  result.super.isa = v33;
  return result;
}

void closure #1 in LocationShifter.shiftedIfNecessary(_:)(uint64_t a1, uint64_t a2, NSObject *a3, double a4, double a5, double a6)
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static CommonLogger.assets);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21607C000, v13, v14, "[LocationShifter] Shifted location async", v15, 2u);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  swift_beginAccess();
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  swift_beginAccess();
  *(a2 + 16) = a6;
  dispatch_group_leave(a3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned GEOLocationCoordinate2D, @unowned Double) -> ()(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

void closure #2 in LocationShifter.shiftedIfNecessary(_:)()
{
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static CommonLogger.assets);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21607C000, oslog, v1, "[LocationShifter] Needs to download shifting function", v2, 2u);
    MEMORY[0x21CE94770](v2, -1, -1);
  }
}

void closure #3 in LocationShifter.shiftedIfNecessary(_:)(void *a1, dispatch_group_t group)
{
  if (a1)
  {
    v4 = a1;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static CommonLogger.assets);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21607C000, v7, v8, "[LocationShifter] error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x21CE94770](v10, -1, -1);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    else
    {
    }
  }

  dispatch_group_leave(group);
}

__C::CLLocationCoordinate2D __swiftcall LocationShifter.shiftedIfNecessary(_:)(__C::CLLocationCoordinate2D a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:a1.latitude longitude:a1.longitude];
  v3 = (*(*v1 + 104))();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

uint64_t LocationShifter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LocationShifter.init()()
{
  v7[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v7[0] - 8);
  MEMORY[0x28223BE20](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D0EB88]) init];
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v7[0]);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CLLocationCoordinate2D.shiftedIfNecessary.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return (*(*static LocationShifter.shared + 112))();
}

uint64_t dispatch thunk of LocationShifter.shiftedIfNecessary(_:)()
{
  return (*(*v0 + 104))();
}

{
  return (*(*v0 + 112))();
}

char *InterstitialCarouselViewController.init(presenter:assetViewModels:)(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  *&v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter];
  *v7 = v4;
  *(v7 + 1) = v5;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for InterstitialCollectionViewController();
  isUniquelyReferenced_nonNull_native = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  if (a2 >> 62)
  {
LABEL_20:
    v23 = isUniquelyReferenced_nonNull_native;
    v9 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_native = v23;
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native;
  v10 = isUniquelyReferenced_nonNull_native;
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9 != v11)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x21CE93180](v11, a2);
    }

    else
    {
      if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      isUniquelyReferenced_nonNull_native = *(a2 + 8 * v11 + 32);
    }

    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    isUniquelyReferenced_nonNull_native = specialized Interstitial.Section.init(index:assetViewModel:)(v11++, isUniquelyReferenced_nonNull_native);
    if (v14)
    {
      v15 = v14;
      v24 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      v18 = v24;
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v12);
        v19 = v15;
        v12 = isUniquelyReferenced_nonNull_native;
        v18 = v24;
      }

      else
      {
        v19 = v15;
      }

      *(v12 + 16) = v17 + 1;
      v20 = v12 + 16 * v17;
      *(v20 + 32) = v18;
      *(v20 + 40) = v19;
      v11 = v13;
    }
  }

  v21 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  *&v10[v21] = v12;

  InterstitialCollectionViewController.reloadData()();

  return v10;
}

void InterstitialCarouselViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id InterstitialCarouselViewController.configurePageControl()()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl];
    [result addSubview_];

    v4 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
    swift_beginAccess();
    [v3 setNumberOfPages_];
    v5 = objc_opt_self();
    v6 = [v5 labelColor];
    [v3 setCurrentPageIndicatorTintColor_];

    v7 = [v5 grayColor];
    v8 = [v7 colorWithAlphaComponent_];

    [v3 setPageIndicatorTintColor_];
    [v3 setAccessibilityContainerType_];
    v9 = [objc_opt_self() sharedApplication];
    v10 = [v9 connectedScenes];
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIScene);
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = specialized Collection.first.getter(v11);

    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 interfaceOrientation];
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 1;
    }

    return [v3 setHidden_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall InterstitialCarouselViewController.viewDidLoad()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  if (*(*&v0[v1] + 16) >= 2uLL)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 1)
    {
      InterstitialCarouselViewController.configurePageControl()();
    }
  }

  v4 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v5 = *&v0[v4];
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v5 setContentInset_];
  v6 = *&v0[v4];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v6 setBouncesHorizontally_];
  v7 = *&v0[v4];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v7 setShowsHorizontalScrollIndicator_];
  v8 = *&v0[v4];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v8 setDecelerationRate_];
  v9 = *&v0[v4];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v9 setDirectionalLockEnabled_];
  v10 = *&v0[v4];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 _setHiddenPocketEdges_];
  v11 = *&v0[v4];
  if (v11)
  {
    [v11 setClipsToBounds_];
    return;
  }

LABEL_18:
  __break(1u);
}

id InterstitialCarouselViewController.willTransition(to:with:)(uint64_t a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  v5 = *&v2[OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = specialized Collection.first.getter(v8);

  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 interfaceOrientation];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return [v5 setHidden_];
}

Swift::Void __swiftcall InterstitialCarouselViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLayoutSubviews);
  v7 = *&v1[OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl];
  v8 = [v7 superview];
  if (v8)
  {

    [v7 frame];
    if (v9 == 0.0)
    {
      MEMORY[0x21CE90B80](0, 0);
      v10 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
      swift_beginAccess();
      v11 = *&v1[v10];
      if (v11)
      {
        v12 = v11;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v14 = [v12 layoutAttributesForItemAtIndexPath_];

        if (!v14)
        {
LABEL_7:
          (*(v4 + 8))(v6, v3);
          return;
        }

        [v14 frame];
        MaxY = CGRectGetMaxY(v28);
        v16 = [v1 view];
        if (v16)
        {
          v17 = v16;
          [v16 frame];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;

          v29.origin.x = v19;
          v29.origin.y = v21;
          v29.size.width = v23;
          v29.size.height = v25;
          [v7 setFrame_];

          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void __swiftcall InterstitialCarouselViewController.createLayout()(UICollectionViewLayout *__return_ptr retstr)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  [v2 setInterSectionSpacing_];
  [v2 setScrollDirection_];
  v3 = objc_allocWithZone(MEMORY[0x277D752B8]);
  v5[4] = partial apply for closure #1 in InterstitialCarouselViewController.createLayout();
  v5[5] = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
  v5[3] = &block_descriptor_22;
  v4 = _Block_copy(v5);
  [v3 initWithSectionProvider:v4 configuration:v2];

  _Block_release(v4);
}

id closure #1 in InterstitialCarouselViewController.createLayout()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v45 = a2;
  [objc_msgSend(a2 container)];
  v7 = v6;
  swift_unknownObjectRelease();
  v8 = v7 + -50.0;
  v9 = objc_opt_self();
  v10 = [v9 absoluteDimension_];
  v11 = [v9 absoluteDimension_];
  v12 = objc_opt_self();
  v13 = [v12 sizeWithWidthDimension:v10 heightDimension:v11];

  v14 = [objc_opt_self() itemWithLayoutSize_];
  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21658E210;
  *(v16 + 32) = v14;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem);
  v48 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v15 horizontalGroupWithLayoutSize:v13 subitems:isa];

  v47 = v18;
  v19 = [objc_opt_self() sectionWithGroup_];
  v20 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections;
  swift_beginAccess();
  v21 = *(*&v5[v20] + 16);
  v22 = v21 - 1;
  v49 = a1;
  if (v21 > 2)
  {
    if (v22 != a1)
    {
      v23 = 0;
      v24 = 0.0;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25 = v22 == a1;
  v26 = [v5 traitCollection];
  v27 = [v26 horizontalSizeClass];

  v23 = v27 == 2 || v25;
  v24 = 0.0;
  if (v22 == v49 && v27 != 2)
  {
LABEL_11:
    [v19 setContentInsets_];
    [v19 contentInsets];
    v23 = 0;
    v24 = 0.0 - v28;
  }

LABEL_12:
  v46 = v23;
  v29 = [objc_opt_self() layoutAnchorWithEdges:12 absoluteOffset:{v24, 0.0}];
  v30 = [v9 absoluteDimension_];
  v31 = [v9 absoluteDimension_];
  v32 = [v12 sizeWithWidthDimension:v30 heightDimension:v31];

  v33 = v32;
  v34 = v29;
  v35 = MEMORY[0x21CE91FC0](0x72616D6B63656843, 0xED0000776569566BLL);
  v36 = [objc_opt_self() supplementaryItemWithLayoutSize:v33 elementKind:v35 containerAnchor:v34];

  [v36 setPinToVisibleBounds_];
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21658E210;
  *(v37 + 32) = v36;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  v38 = v36;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v19 setBoundarySupplementaryItems_];

  if (!v46 || v49)
  {
    v43 = v13;
    v13 = v47;
    v42 = v48;
  }

  else
  {
    [objc_msgSend(v45 container)];
    v41 = v40;
    swift_unknownObjectRelease();
    [v19 setContentInsets_];
    v42 = v38;
    v43 = v34;
    v38 = v33;
    v34 = v5;
    v33 = v47;
    v5 = v48;
  }

  return v19;
}

uint64_t InterstitialCarouselViewController.createDataSource()()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI09CheckmarkB033_2F9C2B11DC3CDA640CA27914B2ED4132LLCGMd);
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v25[1] = v3;
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI020InterstitialCarouselbD0CSSGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InterstitialCarouselViewCell();
  UICollectionView.CellRegistration.init(handler:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CheckmarkView();
  v27 = v5;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  v13 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  result = swift_beginAccess();
  v15 = *(v0 + v13);
  if (v15)
  {
    (*(v7 + 16))(v10, v12, v6);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v16, v10, v6);
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCySiSSGMd));
    v18 = v15;
    v19 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v21 = v26;
    v20 = v27;
    v22 = v28;
    (*(v1 + 16))(v26, v27, v28);
    v23 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v24 = swift_allocObject();
    (*(v1 + 32))(v24 + v23, v21, v22);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    (*(v1 + 8))(v20, v22);
    (*(v7 + 8))(v12, v6);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in InterstitialCarouselViewController.createDataSource()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    InterstitialCollectionViewController.asset(at:)(v14);
    if (v14[5])
    {
      v7 = v14[6];
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = v9;
      *(v10 + 40) = 6;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in AssetView.performViewModelUpdate(style:), v10);

      outlined destroy of UTType?(v4, &_sScPSgMd);
      v11 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
      v12 = v7;
      v11(v7);
      outlined destroy of UTType?(v14, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }
  }
}

void closure #2 in InterstitialCarouselViewController.createDataSource()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_presenter + 8);
    v5 = objc_opt_self();
    v6 = &selRef_systemIndigoColor;
    if (v4)
    {
      v6 = &selRef_systemBlueColor;
    }

    v7 = [v5 *v6];
    v8 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_checkmarkColor;
    v9 = *(a1 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_checkmarkColor);
    *(a1 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_checkmarkColor) = v7;
    v10 = v7;

    v11 = CheckmarkView.buttonView.getter();
    v12 = *(a1 + v8);
    v13 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v11) + 0x70))(v12);

    InterstitialCollectionViewController.asset(at:)(v23);
    v14 = v24;
    if (v24)
    {
      v15 = &v3[OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        ObjectType = swift_getObjectType();
        v18 = (*(v16 + 24))(v14 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v16);
        outlined destroy of UTType?(v23, &_s9MomentsUI12InterstitialV5AssetVSgMd);
        swift_unknownObjectRelease();
LABEL_9:
        v19 = v18 & 1;
        *(a1 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_isSelected) = v18 & 1;
        v20 = *(a1 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView);
        v21 = *((*v13 & *v20) + 0x88);
        v22 = v20;
        v21(v19);

        return;
      }

      outlined destroy of UTType?(v23, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }

    v18 = 0;
    goto LABEL_9;
  }
}

uint64_t closure #3 in InterstitialCarouselViewController.createDataSource()()
{
  type metadata accessor for InterstitialCarouselViewCell();

  v0 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v0;
}

void InterstitialCarouselViewController.updateSelectionView(at:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = MEMORY[0x21CE91FC0](0x72616D6B63656843, 0xED0000776569566BLL);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v3 supplementaryViewForElementKind:v4 atIndexPath:isa];

  if (v6)
  {
    type metadata accessor for CheckmarkView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
LABEL_10:

      return;
    }

    v8 = v7;
    InterstitialCollectionViewController.asset(at:)(v16);
    v9 = v17;
    if (v17)
    {
      v10 = v0 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        v13 = (*(v11 + 24))(v9 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, ObjectType, v11);
        outlined destroy of UTType?(v16, &_s9MomentsUI12InterstitialV5AssetVSgMd);
        swift_unknownObjectRelease();
LABEL_9:
        v14 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_isSelected;
        *(v8 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_isSelected) = v13 & 1;
        v15 = CheckmarkView.buttonView.getter();
        (*((*MEMORY[0x277D85000] & *v15) + 0x88))(*(v8 + v14));

        v6 = v15;
        goto LABEL_10;
      }

      outlined destroy of UTType?(v16, &_s9MomentsUI12InterstitialV5AssetVSgMd);
    }

    v13 = 0;
    goto LABEL_9;
  }
}

id InterstitialCarouselViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGPoint_optional __swiftcall InterstitialCarouselViewController.scrollToIndex(index:shouldScroll:velocity:)(Swift::Int index, Swift::Bool shouldScroll, Swift::Double velocity)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (!v12 || index < 0 || (v13 = OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections, swift_beginAccess(), *(*(v3 + v13) + 16) <= index))
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static CommonLogger.interstitial);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = index;
      _os_log_impl(&dword_21607C000, v34, v35, "[InterstitialCarouselViewController Scroll] index out of bounds=%ld", v36, 0xCu);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    goto LABEL_22;
  }

  v14 = v3;
  v15 = v12;
  MEMORY[0x21CE90B60](0, index);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  v17 = [v15 layoutAttributesForItemAtIndexPath_];

  if (!v17)
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static CommonLogger.interstitial);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = index;
      _os_log_impl(&dword_21607C000, v38, v39, "[InterstitialCarouselViewController Scroll] layout nil for index=%ld", v40, 0xCu);
      MEMORY[0x21CE94770](v40, -1, -1);
    }

LABEL_22:
    v32 = 0;
    goto LABEL_28;
  }

  [v17 center];
  v19 = v18;
  [v15 frame];
  v20 = v19 + CGRectGetWidth(v43) * -0.5;
  if (v20 > 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  if (index)
  {
    v22 = v20 > 0.0;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = -50.0;
  }

  [v15 contentOffset];
  v25 = v24;
  if (shouldScroll)
  {
    v26 = objc_opt_self();
    v27 = swift_allocObject();
    *(v27 + 16) = v15;
    *(v27 + 24) = v23;
    *(v27 + 32) = v25;
    aBlock[4] = partial apply for closure #1 in InterstitialCarouselViewController.scrollToIndex(index:shouldScroll:velocity:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_14;
    v28 = _Block_copy(aBlock);
    v29 = v15;

    [v26 animateWithDuration:v28 animations:velocity];
    _Block_release(v28);
  }

  [*(v14 + OBJC_IVAR____TtC9MomentsUI34InterstitialCarouselViewController_pageControl) setCurrentPage_];

  v32 = LOBYTE(v23);
LABEL_28:
  result.value.y = v31;
  result.value.x = v30;
  result.is_nil = v32;
  return result;
}

void InterstitialCarouselViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, void *a2, double a3)
{
  v4 = v3;
  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.interstitial);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a3;
    *(v11 + 12) = 2048;
    *(v11 + 14) = *a2;
    _os_log_impl(&dword_21607C000, v9, v10, "[InterstitialCarouselViewController Scroll] velocity=%f, userTarget=%f", v11, 0x16u);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  v12 = [objc_opt_self() sharedApplication];
  v13 = [v12 connectedScenes];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIScene);
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = specialized Collection.first.getter(v14);

  if (v15)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [v16 interfaceOrientation];
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  if (!UIInterfaceOrientationIsLandscape(v17))
  {
    v18 = [v4 traitCollection];
    v19 = [v18 horizontalSizeClass];

    if (v19 != 2)
    {
      [a1 frame];
      v20 = CGRectGetWidth(v50) + -100.0;
      [a1 contentOffset];
      v22 = v21;
      v23 = v20 * 1.5;
      if (v21 >= v23 + v23)
      {
        [a1 contentSize];
        if (v25 - v23 >= v22)
        {
          goto LABEL_19;
        }

        v24 = -50.0;
      }

      else
      {
        v24 = 50.0;
      }

      v22 = v22 + v24;
LABEL_19:
      v26 = v22 / v20;
      v27 = round(v22 / v20);
      if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v27 > -9.22337204e18)
      {
        if (v27 < 9.22337204e18)
        {
          v28 = *a2;
          [a1 setDecelerationRate_];
          if (fabs(a3) < 0.7)
          {
            v29 = Logger.logObject.getter();
            v30 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              *v31 = 134217984;
              *(v31 + 4) = a3;
              _os_log_impl(&dword_21607C000, v29, v30, "[InterstitialCarouselViewController Scroll] Rejecting scroll due to small velocity =%f", v31, 0xCu);
              MEMORY[0x21CE94770](v31, -1, -1);
            }

            [a1 setDecelerationRate_];
          }

          if (v28 >= v22)
          {
            if (a3 < 0.0)
            {
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                *v34 = 134217984;
                *(v34 + 4) = a3;
                v35 = "[InterstitialCarouselViewController Scroll] Rejecting scroll due to invalid velocity (+) direction =%f";
                goto LABEL_33;
              }

LABEL_34:

              [a1 setDecelerationRate_];
              return;
            }

LABEL_41:
            v38 = v26;
            v37 = ceilf(v38);
            if ((LODWORD(v37) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              if (v37 > -9.2234e18)
              {
                if (v37 < 9.2234e18)
                {
LABEL_44:
                  v39 = v37;
                  v49 = InterstitialCarouselViewController.scrollToIndex(index:shouldScroll:velocity:)(v37, 0, 0.2);
                  if (v40)
                  {
                    v41 = Logger.logObject.getter();
                    v42 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v41, v42))
                    {
                      v43 = swift_slowAlloc();
                      *v43 = 134217984;
                      *(v43 + 4) = v28;
                      _os_log_impl(&dword_21607C000, v41, v42, "[InterstitialCarouselViewController Scroll] fall back to currentTargetOffset=%f", v43, 0xCu);
                      MEMORY[0x21CE94770](v43, -1, -1);
                    }

                    *a2 = v28;
                  }

                  else
                  {
                    v44 = *&v49.is_nil;
                    *a2 = *&v49.is_nil;
                    oslog = Logger.logObject.getter();
                    v45 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(oslog, v45))
                    {
                      v46 = swift_slowAlloc();
                      *v46 = 134218496;
                      *(v46 + 4) = v39;
                      *(v46 + 12) = 2048;
                      *(v46 + 14) = v22;
                      *(v46 + 22) = 2048;
                      *(v46 + 24) = v44;
                      _os_log_impl(&dword_21607C000, oslog, v45, "[InterstitialCarouselViewController Scroll] scrolling to index=%ld, currentTargetOffset=%f, newPoint=%f", v46, 0x20u);
                      MEMORY[0x21CE94770](v46, -1, -1);
                    }
                  }

                  return;
                }

LABEL_60:
                __break(1u);
                return;
              }

LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            goto LABEL_57;
          }

          if (a3 > 0.0)
          {
            v32 = Logger.logObject.getter();
            v33 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              *v34 = 134217984;
              *(v34 + 4) = a3;
              v35 = "[InterstitialCarouselViewController Scroll] Rejecting scroll due to invalid velocity (-) direction =%f";
LABEL_33:
              _os_log_impl(&dword_21607C000, v32, v33, v35, v34, 0xCu);
              MEMORY[0x21CE94770](v34, -1, -1);
              goto LABEL_34;
            }

            goto LABEL_34;
          }

          v36 = v26;
          v37 = floorf(v36);
          if ((LODWORD(v37) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (v37 <= -9.2234e18)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (v37 < 9.2234e18)
            {
              goto LABEL_44;
            }

            __break(1u);
            goto LABEL_41;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      __break(1u);
      goto LABEL_55;
    }
  }
}

id one-time initialization function for symbolTintColor()
{
  result = [objc_opt_self() whiteColor];
  static CheckmarkButtonView.Constants.symbolTintColor = result;
  return result;
}

void one-time initialization function for symbolBorderColor()
{
  if (one-time initialization token for symbolTintColor != -1)
  {
    swift_once();
  }

  v0 = static CheckmarkButtonView.Constants.symbolTintColor;
  v1 = [v0 CGColor];

  static CheckmarkButtonView.Constants.symbolBorderColor = v1;
}

id CheckmarkButtonView.checkmarkColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_checkmarkColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CheckmarkButtonView.checkmarkColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_checkmarkColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void CheckmarkButtonView.isSelected.didset()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button);
  if (v2 == 1)
  {
    if (one-time initialization token for symbolTintColor != -1)
    {
      swift_once();
    }

    [v3 setTintColor_];
    [v3 setHidden_];
    v4 = [v0 layer];
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x68))();
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button) setHidden_];
    v4 = [v0 layer];
    v5 = [objc_opt_self() clearColor];
  }

  v6 = v5;
  v7 = [v5 CGColor];

  [v4 setBackgroundColor_];
}

uint64_t CheckmarkButtonView.isSelected.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void CheckmarkButtonView.isSelected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  CheckmarkButtonView.isSelected.didset();
}

void (*CheckmarkButtonView.isSelected.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CheckmarkButtonView.isSelected.modify;
}

void CheckmarkButtonView.isSelected.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CheckmarkButtonView.isSelected.didset();
  }
}

id CheckmarkButtonView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CheckmarkButtonView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_checkmarkColor;
  *&v4[v9] = [objc_opt_self() systemBlueColor];
  v4[OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected] = 1;
  v10 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button;
  type metadata accessor for OversizedBoundsButton();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for CheckmarkButtonView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  CheckmarkButtonView.addButton()();

  return v11;
}

id CheckmarkButtonView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CheckmarkButtonView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_checkmarkColor;
  *(v0 + v1) = [objc_opt_self() systemBlueColor];
  *(v0 + OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_isSelected) = 1;
  v2 = OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button;
  type metadata accessor for OversizedBoundsButton();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CheckmarkButtonView.addButton()()
{
  v1 = [v0 layer];
  if (one-time initialization token for symbolBorderColor != -1)
  {
    swift_once();
  }

  [v1 setBorderColor_];

  v2 = [v0 layer];
  [v2 setBorderWidth_];

  v3 = [v0 layer];
  [v0 frame];
  [v3 setCornerRadius_];

  v5 = [v0 layer];
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 CGColor];

  [v5 setShadowColor_];
  v8 = [v0 layer];
  LODWORD(v9) = 1041865114;
  [v8 setShadowOpacity_];

  v10 = [v0 layer];
  [v10 setShadowRadius_];

  v11 = [v0 layer];
  [v11 setShadowOffset_];

  v12 = [v0 layer];
  [v12 setShadowPathIsBounds_];

  v13 = *&v0[OBJC_IVAR____TtC9MomentsUI19CheckmarkButtonView_button];
  [v0 addSubview_];
  [v0 frame];
  v14 = CGRectGetWidth(v40) + -11.0;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [v13 widthAnchor];
  v16 = [v15 constraintEqualToConstant_];

  [v16 setActive_];
  [v0 frame];
  v17 = CGRectGetHeight(v41) + -11.0;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [v13 heightAnchor];
  v19 = [v18 constraintEqualToConstant_];

  [v19 setActive_];
  v20 = [v13 superview];
  if (v20)
  {
    v21 = v20;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v22 = [v13 centerYAnchor];
    v23 = [v21 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    [v24 setConstant_];
    [v24 setActive_];
  }

  v25 = [v13 superview];
  if (v25)
  {
    v26 = v25;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v27 = [v13 centerXAnchor];
    v28 = [v26 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    [v29 setConstant_];
    [v29 setActive_];
  }

  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  v32 = [v31 fontDescriptor];
  v33 = [v32 fontDescriptorWithSymbolicTraits_];

  if (v33)
  {
    v34 = [v30 fontWithDescriptor:v33 size:0.0];

    v35 = [objc_opt_self() configurationWithFont_];
    v36 = v35;
    v37 = MEMORY[0x21CE91FC0](0x72616D6B63656863, 0xE90000000000006BLL);
    v38 = [objc_opt_self() systemImageNamed:v37 withConfiguration:v36];

    [v13 setImage:v38 forState:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CheckmarkButtonView.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CheckmarkButtonView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 bounds];
  v10 = CGRectGetHeight(v14) * 0.5;
  v11 = [objc_opt_self() bezierPathWithRoundedRect:v3 cornerRadius:{v5, v7, v9, v10}];
  v12 = [v11 CGPath];

  [v1 setShadowPath_];
}

id CheckmarkView.buttonView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CheckmarkButtonView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

{
  v1 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView;
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CheckmarkButtonView()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id CheckmarkView.__deallocating_deinit()
{
  return CheckmarkButtonView.__deallocating_deinit(0, type metadata accessor for CheckmarkView);
}

{
  return SelectableAssetView.__deallocating_deinit(0, type metadata accessor for CheckmarkView);
}

id CheckmarkButtonView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized Interstitial.Section.init(index:assetViewModel:)(uint64_t a1, void *a2)
{
  LOBYTE(v39) = 6;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a2) + 0x108))(&v39);
  LOBYTE(v39) = 6;
  v5 = (*((*v4 & *a2) + 0x1E0))(&v39);
  if (v5)
  {
    v6 = v5;
    v7 = a2;
    v8 = v6;
    specialized Interstitial.Asset.init(viewModel:view:)(v7, v8, &v39);
    v9 = v42;
    if (v42)
    {
      v10 = v39;
      v11 = v43 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21658CA50;
      *(v12 + 32) = v10;
      v13 = v40;
      *(v12 + 56) = v41;
      *(v12 + 40) = v13;
      *(v12 + 72) = v9;
      *(v12 + 80) = v11;

      return a1;
    }

    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static CommonLogger.interstitial);
    v27 = v7;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      v32 = v27;
      v33 = [v32 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v38);

      *(v30 + 4) = v37;
      _os_log_impl(&dword_21607C000, v28, v29, "Unable to create asset for asset view model=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x21CE94770](v31, -1, -1);
      MEMORY[0x21CE94770](v30, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (one-time initialization token for interstitial != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.interstitial);
  v16 = a2;
  v8 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v8, v17))
  {

LABEL_14:
    return 0;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v39 = v19;
  *v18 = 136315138;
  v20 = v16;
  v21 = [v20 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v39);

  *(v18 + 4) = v25;
  _os_log_impl(&dword_21607C000, v8, v17, "Unable to create view for asset view model=%s", v18, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v19);
  MEMORY[0x21CE94770](v19, -1, -1);
  MEMORY[0x21CE94770](v18, -1, -1);

  return 0;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CheckmarkView()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t partial apply for closure #3 in InterstitialCarouselViewController.createDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI020InterstitialCarouselbD0CSSGMd);

  return closure #3 in InterstitialCarouselViewController.createDataSource()();
}

uint64_t objectdestroy_4Tm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #4 in InterstitialCarouselViewController.createDataSource()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI09CheckmarkB033_2F9C2B11DC3CDA640CA27914B2ED4132LLCGMd);
  type metadata accessor for CheckmarkView();
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

char *specialized CheckmarkView.init(frame:)()
{
  *&v0[OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView] = 0;
  v1 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_checkmarkColor;
  v2 = objc_opt_self();
  *&v0[v1] = [v2 systemBlueColor];
  v0[OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView_isSelected] = 1;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CheckmarkView();
  v3 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  v5 = CheckmarkView.buttonView.getter();
  [v3 addSubview_];

  v6 = OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView;
  [*&v3[OBJC_IVAR____TtC9MomentsUIP33_2F9C2B11DC3CDA640CA27914B2ED413213CheckmarkView____lazy_storage___buttonView] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *&v3[v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v7 widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  [v9 setActive_];
  v10 = *&v3[v6];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  [v12 setActive_];
  v13 = *&v3[v6];
  v14 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  v15 = [v13 superview];
  if (v15)
  {
    v16 = v15;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    v14 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v19 0x1FAE0C992];
    [v19 setActive_];

    v13 = v16;
  }

  v20 = *&v3[v6];
  v21 = [v20 v14[5]];
  if (v21)
  {
    v22 = v21;
    [v20 &off_27821E5B8 + 2];
    v23 = [v20 centerXAnchor];
    v24 = [v22 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    [v25 0x1FAE0C992];
    [v25 &selRef:1 setPrefetchDataSource:?];

    v20 = v22;
  }

  [v3 setUserInteractionEnabled_];
  [*&v3[v6] setUserInteractionEnabled_];

  return v3;
}

{
  *&v0[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView] = 0;
  v1 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_checkmarkColor;
  v2 = objc_opt_self();
  *&v0[v1] = [v2 systemBlueColor];
  v0[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView_isSelected] = 1;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CheckmarkView();
  v3 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  v5 = CheckmarkView.buttonView.getter();
  [v3 addSubview_];

  v6 = OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView;
  [*&v3[OBJC_IVAR____TtC9MomentsUIP33_3E40B1F12D049C8973240F501557B24F13CheckmarkView____lazy_storage___buttonView] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = *&v3[v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v7 widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  [v9 setActive_];
  v10 = *&v3[v6];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = [v10 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  [v12 setActive_];
  v13 = *&v3[v6];
  v14 = &selRef_setDeliversTouchesForGesturesToSuperview_;
  v15 = [v13 superview];
  if (v15)
  {
    v16 = v15;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    v14 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    [v19 0x1FAE0C992];
    [v19 setActive_];

    v13 = v16;
  }

  v20 = *&v3[v6];
  v21 = [v20 v14[5]];
  if (v21)
  {
    v22 = v21;
    [v20 &off_27821E5B8 + 2];
    v23 = [v20 centerXAnchor];
    v24 = [v22 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    [v25 0x1FAE0C992];
    [v25 &selRef:1 setPrefetchDataSource:?];

    v20 = v22;
  }

  [v3 setUserInteractionEnabled_];
  [*&v3[v6] setUserInteractionEnabled_];

  return v3;
}

char *CollectionViewAssetCell.init(assetView:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_actor;
  type metadata accessor for CollectionViewCellReuseActor();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_suggestionID;
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_style] = 9;
  *&v1[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetView] = a1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for CollectionViewAssetCell();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v12 = [v10 layer];
  [v12 setCornerRadius_];

  v13 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  swift_beginAccess();
  [v11 addSubview_];
  v14 = *&v11[v13];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(2.0, 2.0);

  return v11;
}

id CollectionViewAssetCell.assetContainerView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CollectionViewAssetCell.assetContainerView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CollectionViewAssetCell.suggestionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_suggestionID;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s10Foundation4UUIDVSgMd);
}

uint64_t CollectionViewAssetCell.suggestionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_suggestionID;
  swift_beginAccess();
  outlined assign with take of UUID?(a1, v1 + v3);
  return swift_endAccess();
}

void CollectionViewAssetCell.viewModel.setter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = Strong;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v7;
  v10[5] = Strong;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CollectionViewAssetCell.viewModel.didset, v10);
}

void (*CollectionViewAssetCell.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_viewModel;
  v5[5] = v7;
  v5[6] = v8;
  swift_beginAccess();
  v5[3] = swift_unknownObjectWeakLoadStrong();
  return CollectionViewAssetCell.viewModel.modify;
}

void CollectionViewAssetCell.viewModel.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 40);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v10 = v3[5];
  if (a2)
  {
    v11 = v4;

    v12 = Strong;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v9;
    v14[5] = Strong;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in CollectionViewAssetCell.viewModel.didsetpartial apply, v14);
  }

  else
  {

    v16 = Strong;
    v17 = static MainActor.shared.getter();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v9;
    v18[5] = Strong;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &closure #1 in CollectionViewAssetCell.viewModel.didsetpartial apply, v18);
  }

  free(v10);

  free(v3);
}

uint64_t CollectionViewAssetCell.style.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_style;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t CollectionViewAssetCell.style.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_style;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t CollectionViewAssetCell.overflowDetail.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail);
  swift_beginAccess();
  return *v1;
}

void CollectionViewAssetCell.overflowDetail.setter(char a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  CollectionViewAssetCell.overflowDetail.didset();
}

void (*CollectionViewAssetCell.overflowDetail.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CollectionViewAssetCell.overflowDetail.modify;
}

void CollectionViewAssetCell.overflowDetail.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CollectionViewAssetCell.overflowDetail.didset();
  }
}

void CollectionViewAssetCell.addOverflowView()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView;
  if (!*&v0[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView])
  {
    v2 = MEMORY[0x277D85000];
    v3 = v0;
    (*((*MEMORY[0x277D85000] & *v0) + 0x108))();
    v5 = v4;
    v6 = [objc_allocWithZone(type metadata accessor for OverflowView()) initWithFrame_];
    v7 = *((*v2 & *v6) + 0xA0);
    v8 = v6;
    v7(v5);

    v9 = *&v3[v1];
    *&v3[v1] = v6;
    v10 = v8;

    v11 = v10;
    [v3 addSubview_];
    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v14 = [v11 trailingAnchor];
      v15 = [v13 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor_];

      [v16 setConstant_];
      if (v16)
      {
        [v16 setActive_];
      }
    }

    v17 = [v11 superview];
    if (v17)
    {
      v18 = v17;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v19 = [v11 bottomAnchor];
      v20 = [v18 bottomAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      if (v21)
      {
        [v21 setConstant_];
        [v21 setActive_];
      }
    }

    v22 = [v11 layer];

    [v22 setCornerRadius_];
    v23 = [v11 layer];

    [v23 setCornerCurve_];
  }
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of UTType?(a3, &_sScPSgMd);

      return v23;
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

  outlined destroy of UTType?(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      outlined destroy of UTType?(a3, &_sScPSgMd);

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

  outlined destroy of UTType?(a3, &_sScPSgMd);
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

uint64_t CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:), v3, 0);
}

uint64_t CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1A8);
    v17 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

    return v17();
  }

  else
  {
    v5 = v0[4];
    if (v5 && (v6 = v0[3]) != 0)
    {
      v7 = one-time initialization token for views;
      v8 = v5;
      v9 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static CommonLogger.views);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21607C000, v11, v12, "[CollectionViewCell] reusing cell", v13, 2u);
        MEMORY[0x21CE94770](v13, -1, -1);
      }

      v14 = *((*MEMORY[0x277D85000] & *v8) + 0xE0);
      v18 = (v14 + *v14);
      v15 = swift_task_alloc();
      v0[7] = v15;
      *v15 = v0;
      v15[1] = SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

      return v18(v9);
    }

    else
    {
      v16 = v0[1];

      return v16();
    }
  }
}

{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:), v1, 0);
}

{
  v1 = v0[4];
  if (v1 && (v2 = v0[3]) != 0)
  {
    v3 = one-time initialization token for views;
    v4 = v1;
    v5 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.views);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, "[CollectionViewCell] reusing cell", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    v10 = *((*MEMORY[0x277D85000] & *v4) + 0xE0);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[7] = v11;
    *v11 = v0;
    v11[1] = SuggestionCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:);

    return v14(v5);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

uint64_t CollectionViewCellReuseActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t CollectionViewCellReuseActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t type metadata accessor for CollectionViewAssetCell()
{
  result = type metadata singleton initialization cache for CollectionViewAssetCell;
  if (!type metadata singleton initialization cache for CollectionViewAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t one-time initialization function for baseRegistration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI010Collectionb5AssetD0CAF0iB5ModelCGMd);
  __swift_allocate_value_buffer(v0, static CollectionViewAssetCell.baseRegistration);
  __swift_project_value_buffer(v0, static CollectionViewAssetCell.baseRegistration);
  type metadata accessor for CollectionViewAssetCell();
  type metadata accessor for AssetViewModel();
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t static CollectionViewAssetCell.baseRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for baseRegistration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI010Collectionb5AssetD0CAF0iB5ModelCGMd);
  v3 = __swift_project_value_buffer(v2, static CollectionViewAssetCell.baseRegistration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t key path setter for CollectionViewAssetCell.suggestionID : CollectionViewAssetCell(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4UUIDVSgMd);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xB0))(v6);
}

uint64_t closure #1 in CollectionViewAssetCell.viewModel.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[7] = swift_task_alloc();
  v5[8] = type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](closure #1 in CollectionViewAssetCell.viewModel.didset, v7, v6);
}

uint64_t closure #1 in CollectionViewAssetCell.viewModel.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[13] = *(Strong + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_actor);
    v3 = *((*MEMORY[0x277D85000] & *Strong) + 0xC0);

    v5 = v3(v4);
    v0[14] = v5;
    v6 = *(v2 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetView);
    v0[15] = v6;
    v7 = v6;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = closure #1 in CollectionViewAssetCell.viewModel.didset;
    v9 = v0[6];

    return CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)(v9, v5, v6);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](closure #1 in CollectionViewAssetCell.viewModel.didset, v5, v4);
}

{
  v1 = v0[12];
  v2 = v0[7];

  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v1;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset, v6);

  v8 = v0[1];

  return v8();
}

uint64_t partial apply for closure #1 in CollectionViewAssetCell.viewModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in CollectionViewAssetCell.viewModel.didset(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_2Tm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #1 in CollectionViewAssetCell.viewModel.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in CollectionViewAssetCell.viewModel.didset(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v4[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset, v6, v5);
}

uint64_t closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset()
{
  v1 = v0[3];
  v2 = v0[2];

  v4 = *(v2 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetView);
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0xA8))(v3);
  (*((*v5 & *v4) + 0xA8))(v1);

  v6 = v0[1];

  return v6();
}

void CollectionViewAssetCell.overflowDetail.didset()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail;
  swift_beginAccess();
  if (*v1 == 1)
  {
    CollectionViewAssetCell.addOverflowView()();
  }

  else
  {
    v2 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView;
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView);
  if (v5)
  {
    v6 = *(v1 + 8);
    v7 = *((*MEMORY[0x277D85000] & *v5) + 0xA0);
    v8 = v5;
    v7(v6);
  }
}

id CollectionViewAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CollectionViewAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollectionViewAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewAssetCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id specialized CollectionViewAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_actor;
  type metadata accessor for CollectionViewCellReuseActor();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_suggestionID;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_style] = 9;
  *&v0[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView] = 0;
  v7 = &v0[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = [objc_allocWithZone(type metadata accessor for AssetView()) init];
  *&v0[OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetView] = v8;
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v11.receiver = v0;
  v11.super_class = type metadata accessor for CollectionViewAssetCell();
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void specialized CollectionViewAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_actor;
  type metadata accessor for CollectionViewCellReuseActor();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_assetContainerView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_suggestionID;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_style) = 9;
  *(v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowView) = 0;
  v7 = v0 + OBJC_IVAR____TtC9MomentsUI23CollectionViewAssetCell_overflowDetail;
  *v7 = 0;
  *(v7 + 8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t dispatch thunk of CollectionViewCellReuseActor.renderingWithNewViewModel(oldAssetViewModel:newAssetViewModel:assetView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 88) + **(*v3 + 88));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = static Exif.filterVideo(inputURL:outputURL:);

  return v10(a1, a2, a3);
}

void type metadata completion function for CollectionViewAssetCell()
{
  type metadata accessor for UUID?();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t partial apply for closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in CollectionViewAssetCell.viewModel.didset(a1, v4, v5, v6);
}

uint64_t UIView.uiImage.getter()
{
  [v0 bounds];
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds_];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in UIView.uiImage.getter;
  *(v7 + 24) = v6;
  v12[4] = _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v12[3] = &block_descriptor_23;
  v8 = _Block_copy(v12);
  v9 = v0;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void closure #1 in UIView.uiImage.getter(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TransferMediaFirstPartyViewModel.mediaCategoryRawValue.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue;
  swift_beginAccess();
  return *v1;
}

uint64_t TransferMediaFirstPartyViewModel.mediaCategoryRawValue.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI32TransferMediaFirstPartyViewModel_mediaCategoryRawValue;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

unint64_t TransferMediaFirstPartyViewModel.mediaCategory.getter@<X0>(char *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x238))();
  if (result >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = result;
  }

  if (v4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  *a1 = v6;
  return result;
}

MomentsUI::TransferMediaFirstPartyViewModel::CodingKeys_optional __swiftcall TransferMediaFirstPartyViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferMediaFirstPartyViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferMediaFirstPartyViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C746974627573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0x6564496B63617274;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferMediaFirstPartyViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000002165765A0;
  if (v2 == 1)
  {
    v5 = 0x80000002165765A0;
  }

  else
  {
    v3 = 0x6564496B63617274;
    v5 = 0xEF7265696669746ELL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C746974627573;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x6564496B63617274;
    v4 = 0xEF7265696669746ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974627573;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}