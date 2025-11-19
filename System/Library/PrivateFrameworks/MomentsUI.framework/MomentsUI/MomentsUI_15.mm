uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for UIFont()
{
  result = lazy cache variable for type metadata for UIFont;
  if (!lazy cache variable for type metadata for UIFont)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFont);
  }

  return result;
}

id closure #1 in variable initialization expression of MapView.labelView()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  [v0 setContentMode_];
  v1 = [objc_opt_self() secondaryLabelColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setTextColor_];
  return v0;
}

__int128 *MapView.Constants.accessibilityString.unsafeMutableAddressor()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  return &static MapView.Constants.accessibilityString;
}

uint64_t static MapView.Constants.accessibilityString.getter()
{
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v0 = static MapView.Constants.accessibilityString;

  return v0;
}

void *MapView.init(viewModel:style:)(void *a1, char *a2)
{
  v33 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v5 = OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for MapPOIAnnotationView()) init];
  *&v2[OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView;
  v7 = [objc_opt_self() effectWithStyle_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&v2[v6] = v8;
  v9 = OBJC_IVAR____TtC9MomentsUI7MapView_labelView;
  *&v2[v9] = closure #1 in variable initialization expression of MapView.labelView();
  v10 = OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView;
  *&v2[v10] = closure #1 in variable initialization expression of MapView.labelView();
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v11 = *MEMORY[0x277D76560];
    if (one-time initialization token for accessibilityString != -1)
    {
      swift_once();
    }

    v12 = static MapView.Constants.accessibilityString;
    v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v14 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v15 = a1;
    *&v2[v13] = [v14 init];
    swift_unknownObjectWeakInit();
    v16 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v17 = type metadata accessor for UUID();
    (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v2[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v33;
    v34.receiver = v2;
    v34.super_class = type metadata accessor for AssetView();
    v18 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v19 = *((*MEMORY[0x277D85000] & *v18) + 0xE8);
    v20 = v18;
    v19();
    AssetView.setFallBackView()();
    [v20 setIsAccessibilityElement_];
    v21 = [v20 accessibilityTraits];
    if ((v11 & ~v21) != 0)
    {
      v22 = v11;
    }

    else
    {
      v22 = 0;
    }

    [v20 setAccessibilityTraits_];
    v23 = MEMORY[0x21CE91FC0](v12, *(&v12 + 1));
    [v20 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21658CA50;
    v25 = type metadata accessor for UITraitUserInterfaceStyle();
    v26 = MEMORY[0x277D74BF0];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    v27 = v20;
    MEMORY[0x21CE92C30](v24, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v27 handleTraitChange];
    [v27 setTranslatesAutoresizingMaskIntoConstraints_];

    [v27 setClipsToBounds_];
    v28 = v27;
    MapView.addSubViews()();
    MapView.addConstraints()();
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
    v30 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
    v31 = [objc_opt_self() systemImageNamed_];

    [v29 setImage_];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    return v18;
  }

  else
  {

    type metadata accessor for MapView();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t type metadata accessor for MapView()
{
  result = type metadata singleton initialization cache for MapView;
  if (!type metadata singleton initialization cache for MapView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall MapView.addSubViews()()
{
  v1 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView];
  [v0 addSubview_];
  [v1 setContentMode_];
  v2 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView];
  [v1 addSubview_];
  [v2 setContentMode_];
  [v1 addSubview_];
  [v1 addSubview_];
  v3 = *&v0[OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView];

  [v1 addSubview_];
}

Swift::Void __swiftcall MapView.addConstraints()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setTranslatesAutoresizingMaskIntoConstraints_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x168);

  v1();
}

Swift::Void __swiftcall MapView.configureFallback()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

uint64_t MapView.__allocating_init(intendedWidth:intendedHeight:intendedStyle:location:dateInterval:)(char *a1, uint64_t a2, char *a3, float a4, float a5)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  v17 = *a1;
  v18 = type metadata accessor for ScreenSize();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC9MomentsUI10ScreenSize_width] = a4;
  *&v19[OBJC_IVAR____TtC9MomentsUI10ScreenSize_height] = a5;
  v31.receiver = v19;
  v31.super_class = v18;
  v20 = objc_msgSendSuper2(&v31, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  *(v21 + 32) = v17;
  v22 = *(v11 + 16);
  v22(v16, a3, v10);
  v22(v14, v16, v10);
  memset(v29, 0, sizeof(v29));
  v30 = 1;
  objc_allocWithZone(type metadata accessor for MutableMapViewModel());

  v23 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v20, v21, a2, v14, 0, v29);

  v24 = v23;
  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  v25 = *(v11 + 8);
  v25(v16, v10);
  LOBYTE(v29[0]) = 1;
  v26 = (*(v28[1] + 344))(v24, v29);

  v25(a3, v10);
  return v26;
}

id MapView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t closure #1 in MapView.handleTraitLight()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitLight(), v6, v5);
}

uint64_t closure #1 in MapView.handleTraitLight()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x160);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MapView.handleTraitLight();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitLight(), v3, v2);
}

{
  v11 = v0;
  v1 = *(v0 + 72);

  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(&v10, v2);
  v3 = *(v0 + 72);
  if (v10 - 1 >= 2)
  {
    v4 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 effectWithStyle_];
    [v6 setEffect_];

    v3 = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t MapView.handleTraitLight()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, a2, v9);
}

uint64_t closure #1 in MapView.handleTraitDark()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitDark(), v6, v5);
}

uint64_t closure #1 in MapView.handleTraitDark()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x160);
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = closure #1 in MapView.handleTraitDark();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in MapView.handleTraitDark(), v3, v2);
}

{
  v11 = v0;
  v1 = *(v0 + 72);

  (*((*MEMORY[0x277D85000] & *v1) + 0x88))(&v10, v2);
  v3 = *(v0 + 72);
  if (v10 - 1 >= 2)
  {
    v4 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 effectWithStyle_];
    [v6 setEffect_];

    v3 = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

Swift::Void __swiftcall MapView.hideViews()()
{
  [*(v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView) setHidden_];
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setHidden_];
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);

  [v1 setHidden_];
}

Swift::Void __swiftcall MapView.showViews()()
{
  AssetView.showViews()();
  [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) setHidden_];
  MapView.handleBaseMapViewZoomRect()();
  if (MapView.shouldOnlyShowBaseMap.getter())
  {
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setHidden_];
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);

    [v1 setHidden_];
  }

  else
  {
    MapView.handleLabelUpdate()();
    MapView.handleLabelFontAndText()();
    (*((*MEMORY[0x277D85000] & *v0) + 0x168))();

    MapView.handleGradientUpdate()();
  }
}

Swift::Void __swiftcall MapView.handleBaseMapViewZoomRect()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v12);
  if (v12 == 7 || v12 == 0)
  {
    v5 = (*((*v2 & *v0) + 0x70))(v3);
    if (v5)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && ((*(v8 + 64))(ObjectType, v8) & 1) != 0)
      {
        v11 = [*(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
        [v11 setContentsRect_];

        goto LABEL_13;
      }
    }

    v11 = [*(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
    v9 = 0.3;
    v10 = 0.05;
  }

  else
  {
    v11 = [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView) layer];
    v9 = 0.0;
    v10 = 0.0;
  }

  [v11 setContentsRect_];
LABEL_13:
}

uint64_t MapView.shouldOnlyShowBaseMap.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v3 = v2();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  (*((*v1 & *v3) + 0xD0))();
  v6 = v5;

  if (!v6)
  {
    return 1;
  }

  result = (v2)(v7);
  if (result)
  {
    v9 = result;
    v10 = (*((*v1 & *result) + 0xD0))();
    v12 = v11;

    if (v12)
    {

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      return v13 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall MapView.handleLabelUpdate()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x88))(&v5);
  if (v5 > 5u)
  {
    if (v5 == 6)
    {
      [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView) setHidden_];
      [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView) setHidden_];
      return;
    }

    if (v5 != 7)
    {
LABEL_11:
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
      [v4 setNumberOfLines_];
      [v4 setHidden_];
      return;
    }

LABEL_6:
    v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    v3 = 1;
    goto LABEL_7;
  }

  if (v5 - 3 >= 3)
  {
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
  [v1 setNumberOfLines_];
  v2 = v1;
  v3 = 0;
LABEL_7:

  [v2 setHidden_];
}

Swift::Void __swiftcall MapView.handleLabelFontAndText()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v3)
  {
    return;
  }

  v59 = v3;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v4;
    (*((*v2 & *v0) + 0x88))(&v61);
    if (v61 <= 2u)
    {
      if (v61 == 1)
      {
        v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v26 setAttributedText_];
        ObjectType = swift_getObjectType();
        v32 = (*(*(v5 + 8) + 8))(ObjectType);
        if (v33)
        {
          v34 = MEMORY[0x21CE91FC0](v32);
        }

        else
        {
          v34 = 0;
        }

        [v26 setText_];

        specialized static CommonTheme.Font.caption1BoldTightLeading.getter();
        v44 = v48;
LABEL_37:
        [v26 setFont_];
LABEL_44:

LABEL_45:
        return;
      }

      if (v61 == 2)
      {
        v12 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v12 setAttributedText_];
        v13 = swift_getObjectType();
        v14 = (*(*(v5 + 8) + 8))(v13);
        if (v15)
        {
          v16 = MEMORY[0x21CE91FC0](v14);
        }

        else
        {
          v16 = 0;
        }

        [v12 setText_];

        v45 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
        v46 = [v45 fontDescriptorWithSymbolicTraits_];

        if (v46)
        {
          v47 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];
        }

        else
        {
          v47 = 0;
        }

        [v12 setFont_];

        goto LABEL_45;
      }
    }

    else
    {
      if (v61 - 3 < 3)
      {
        v6 = MapView.formattedOneLineText.getter();
        if (v7)
        {
          specialized MapView.attributedStringWithSeparator(_:separator:)(v6, v7, 10649826, 0xA300000000000000);
          v9 = v8;

          if (v9)
          {
            v10 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
            v11 = v9;
            [v10 setAttributedText_];

            goto LABEL_24;
          }
        }

        v17 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v17 setAttributedText_];
        v18 = MapView.formattedOneLineText.getter();
        if (v19)
        {
          v20 = MEMORY[0x21CE91FC0](v18);
        }

        else
        {
          v20 = 0;
        }

        [v17 setText_];

        v35 = objc_opt_self();
        v36 = [v35 preferredFontForTextStyle_];
        v37 = [v36 fontDescriptor];
        v38 = [v37 fontDescriptorWithSymbolicTraits_];

        if (v38)
        {
          v39 = [v35 fontWithDescriptor:v38 size:0.0];

          [v17 setFont_];
          goto LABEL_24;
        }

        __break(1u);
        goto LABEL_48;
      }

      if (v61 == 6)
      {
        v21 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
        [v21 setAttributedText_];
        v22 = swift_getObjectType();
        v23 = (*(*(v5 + 8) + 8))();
        if (v24)
        {
          v25 = MEMORY[0x21CE91FC0](v23);
        }

        else
        {
          v25 = 0;
        }

        [v21 setText_];

        [v21 setNumberOfLines_];
        v49 = objc_opt_self();
        v50 = *MEMORY[0x277D76968];
        v51 = [v49 preferredFontForTextStyle_];
        v52 = [v51 fontDescriptor];
        v53 = [v52 fontDescriptorWithSymbolicTraits_];

        if (!v53)
        {
          goto LABEL_49;
        }

        v54 = [v49 fontWithDescriptor:v53 size:0.0];

        [v21 setFont_];
        v55 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
        v56 = (*(v5 + 24))(v22, v5);
        if (v57)
        {
          v58 = MEMORY[0x21CE91FC0](v56);
        }

        else
        {
          v58 = 0;
        }

        [v55 setText_];

        [v55 setNumberOfLines_];
        v44 = [v49 preferredFontForTextStyle_];
        [v55 setFont_];
        goto LABEL_44;
      }
    }

    v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    [v26 setAttributedText_];
    v27 = swift_getObjectType();
    v28 = (*(*(v5 + 8) + 8))(v27);
    if (v29)
    {
      v30 = MEMORY[0x21CE91FC0](v28);
    }

    else
    {
      v30 = 0;
    }

    [v26 setText_];

    v40 = objc_opt_self();
    v41 = [v40 preferredFontForTextStyle_];
    v42 = [v41 fontDescriptor];
    v43 = [v42 fontDescriptorWithSymbolicTraits_];

    if (!v43)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v44 = [v40 fontWithDescriptor:v43 size:0.0];

    goto LABEL_37;
  }

LABEL_24:
}

Swift::Void __swiftcall MapView.handleGradientUpdate()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1((&v5 + 1));
  if (BYTE1(v5) <= 2u)
  {
    if (BYTE1(v5) - 1 < 2)
    {
      v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
      [v4 setHidden_];
      v2 = [v4 _setCornerRadius_];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (BYTE1(v5) - 3 < 4)
  {
    [v0 handleTraitChange];
    v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
    [v3 setHidden_];
    v2 = [v3 _setCornerRadius_];
    goto LABEL_8;
  }

  if (BYTE1(v5) == 7)
  {
LABEL_7:
    v2 = [*(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView) setHidden_];
  }

LABEL_8:
  (v1)(&v5, v2);
  if (v5 - 1 > 1)
  {

    [v0 handleTraitChange];
  }

  else
  {

    MapView.updateGradient()();
  }
}

uint64_t MapView.updateData()()
{
  v1[8] = v0;
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](MapView.updateData(), v3, v2);
}

{
  v66 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 64)) + 0x70))();
  *(v0 + 96) = v2;
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  *(v0 + 104) = v4;
  if (!v4)
  {

LABEL_10:

    goto LABEL_11;
  }

  v5 = v4;
  *(v0 + 112) = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
  *(v0 + 120) = swift_getObjectType();
  v6 = (*(v5 + 48))();
  *(v0 + 128) = v6;
  if (v6)
  {
    v7 = *(v0 + 64);
    (*((*v1 & *v7) + 0x88))();
    *(v0 + 202) = *(v0 + 201);
    v8 = [v7 traitCollection];
    v9 = [v8 userInterfaceStyle];

    v10 = (*((*v1 & *v7) + 0xD8))();
    v11 = *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport];
    *(v0 + 136) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = MapView.updateData();
    v14 = (v0 + 202);
    v15 = v9;
    v16 = v10;
    v17 = v11;
LABEL_5:

    return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)(v14, v15, v16, v17, 0x6144657461647075, 0xEC00000029286174);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 104);
  [*(v0 + 112) setImage_];
  if ((*(v21 + 64))(v20, v21))
  {
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v24 = *(v0 + 64);

    [*(v24 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setHidden_];
    MapView.handleMultiPinMap(_:)(v22, v23);
    v25 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    result = swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26 >> 62)
    {
      result = __CocoaSet.count.getter();
      v27 = result;
      if (result)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_17:
        if (v27 >= 1)
        {

          for (i = 0; i != v27; ++i)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              v29 = MEMORY[0x21CE93180](i, v26);
            }

            else
            {
              v29 = *(v26 + 8 * i + 32);
            }

            v30 = v29;
            [v29 setHidden_];
          }

          v39 = *(v0 + 96);

          goto LABEL_11;
        }

        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }
    }

    goto LABEL_11;
  }

  v31 = *(v0 + 64);
  v32 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  result = swift_beginAccess();
  v33 = *(v31 + v32);
  if (v33 >> 62)
  {
    result = __CocoaSet.count.getter();
    v34 = result;
    v35 = &unk_27821E000;
    if (!result)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = &unk_27821E000;
    if (!v34)
    {
      goto LABEL_33;
    }
  }

  if (v34 < 1)
  {
    goto LABEL_43;
  }

  for (j = 0; j != v34; ++j)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x21CE93180](j, v33);
    }

    else
    {
      v37 = *(v33 + 8 * j + 32);
    }

    v38 = v37;
    [v37 v35[450]];
  }

LABEL_33:
  v40 = *(v0 + 120);
  v41 = *(v0 + 104);
  v42 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
  *(v0 + 160) = v42;
  [v42 v35[450]];
  v43 = (*(v41 + 40))(v40, v41);
  *(v0 + 168) = v43;
  if (v43)
  {
    v44 = *(v0 + 96);
    v45 = *(v0 + 64);
    v46 = (*((*v1 & *v45) + 0x88))();
    v47 = (*((*v1 & *v45) + 0xD8))(v46);
    v48 = *(v44 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
    *(v0 + 176) = v48;
    v49 = v48;
    v50 = swift_task_alloc();
    *(v0 + 184) = v50;
    *v50 = v0;
    v50[1] = MapView.updateData();
    v14 = (v0 + 200);
    v15 = 1;
    v16 = v47;
    v17 = v48;
    goto LABEL_5;
  }

  v51 = *(v0 + 120);
  v52 = *(v0 + 104);
  (*((*v1 & **(v0 + 160)) + 0xB8))(0);
  (*(v52 + 56))(v64, v51, v52);
  if ((v65 & 1) == 0)
  {
    v53 = *(v0 + 160);
    v54 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v64[0] green:v64[1] blue:v64[2] alpha:v64[3]];
    v55 = *(v53 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    v56 = v54;
    v57 = [v55 layer];
    v58 = [v56 CGColor];
    [v57 setBackgroundColor_];

    v59 = [*(v53 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
    v60 = [v56 CGColor];
    [v59 setBackgroundColor_];
  }

  v61 = *(v0 + 160);
  v62 = *(v0 + 96);
  v63 = (*(*(v0 + 104) + 32))(*(v0 + 120));
  (*(*v63 + 240))(v64);

  (*((*v1 & *v61) + 0xD0))(LOBYTE(v64[0]) != 3);

LABEL_11:
  v19 = *(v0 + 8);

  return v19();
}

{
  v51 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  [*(v0 + 112) setImage_];

  if ((*(v3 + 64))(v2, v3))
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 64);

    [*(v6 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView) setHidden_];
    MapView.handleMultiPinMap(_:)(v4, v5);
    v7 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    result = swift_beginAccess();
    v9 = *(v6 + v7);
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
      v10 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        if (v10 >= 1)
        {

          for (i = 0; i != v10; ++i)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x21CE93180](i, v9);
            }

            else
            {
              v12 = *(v9 + 8 * i + 32);
            }

            v13 = v12;
            [v12 setHidden_];
          }

          v22 = *(v0 + 96);

          goto LABEL_29;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }
    }

    v22 = *(v0 + 96);
LABEL_29:

    v48 = *(v0 + 8);

    return v48();
  }

  v14 = *(v0 + 64);
  v15 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  result = swift_beginAccess();
  v16 = *(v14 + v15);
  if (v16 >> 62)
  {
    result = __CocoaSet.count.getter();
    v17 = result;
    v18 = &unk_27821E000;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = &unk_27821E000;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (v17 < 1)
  {
    goto LABEL_35;
  }

  for (j = 0; j != v17; ++j)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x21CE93180](j, v16);
    }

    else
    {
      v20 = *(v16 + 8 * j + 32);
    }

    v21 = v20;
    [v20 v18[450]];
  }

LABEL_20:
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);
  v25 = *(*(v0 + 64) + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
  *(v0 + 160) = v25;
  [v25 v18[450]];
  v26 = (*(v24 + 40))(v23, v24);
  *(v0 + 168) = v26;
  if (!v26)
  {

    v35 = *(v0 + 120);
    v36 = *(v0 + 104);
    v37 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & **(v0 + 160)) + 0xB8))(0);
    (*(v36 + 56))(v49, v35, v36);
    if ((v50 & 1) == 0)
    {
      v38 = *(v0 + 160);
      v39 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v49[0] green:v49[1] blue:v49[2] alpha:v49[3]];
      v40 = *(v38 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
      v41 = v39;
      v42 = [v40 layer];
      v43 = [v41 CGColor];
      [v42 setBackgroundColor_];

      v44 = [*(v38 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
      v45 = [v41 CGColor];
      [v44 setBackgroundColor_];
    }

    v46 = *(v0 + 160);
    v22 = *(v0 + 96);
    v47 = (*(*(v0 + 104) + 32))(*(v0 + 120));
    (*(*v47 + 240))(v49);

    (*((*v37 & *v46) + 0xD0))(LOBYTE(v49[0]) != 3);
    goto LABEL_29;
  }

  v27 = *(v0 + 96);
  v28 = *(v0 + 64);
  v29 = MEMORY[0x277D85000];
  v30 = (*((*MEMORY[0x277D85000] & *v28) + 0x88))();
  v31 = (*((*v29 & *v28) + 0xD8))(v30);
  v32 = *(v27 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  *(v0 + 176) = v32;
  v33 = v32;
  v34 = swift_task_alloc();
  *(v0 + 184) = v34;
  *v34 = v0;
  v34[1] = MapView.updateData();

  return Image.preparedForDisplayOffMainThread(viewStyle:interfaceStyle:sizeClass:maximumSupportedViewport:caller:)((v0 + 200), 1, v31, v32, 0x6144657461647075, 0xEC00000029286174);
}

{
  v19 = v0;

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & **(v0 + 160)) + 0xB8))(*(v0 + 192));
  (*(v2 + 56))(v17, v1, v2);
  if ((v18 & 1) == 0)
  {
    v4 = *(v0 + 160);
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v17[0] green:v17[1] blue:v17[2] alpha:v17[3]];
    v6 = *(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_baseView);
    v7 = v5;
    v8 = [v6 layer];
    v9 = [v7 CGColor];
    [v8 setBackgroundColor_];

    v10 = [*(v4 + OBJC_IVAR____TtC9MomentsUI20MapPOIAnnotationView_holeReplacementView) layer];
    v11 = [v7 CGColor];
    [v10 setBackgroundColor_];
  }

  v12 = *(v0 + 160);
  v13 = *(v0 + 96);
  v14 = (*(*(v0 + 104) + 32))(*(v0 + 120));
  (*(*v14 + 240))(v17);

  (*((*v3 & *v12) + 0xD0))(LOBYTE(v17[0]) != 3);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t MapView.updateData()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 152) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](MapView.updateData(), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  *(*v1 + 192) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](MapView.updateData(), v6, v5);
}

void MapView.handleMultiPinMap(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if ((*(a2 + 64))(ObjectType, a2))
  {
    v6 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
    v7 = v6((&v11 + 1));
    if (BYTE1(v11) > 7u || ((1 << SBYTE1(v11)) & 0x83) == 0)
    {
      (v6)(&v11, v7);
      v9 = (*(a2 + 16))(ObjectType, a2);
      v10 = static MapsUtilities.canFitIn(viewStyle:mapViewModels:)(&v11, v9);

      if (v10 == 2 || (v10 & 1) == 0)
      {
        MapView.renderSingleConsolidatedPin(_:)(a1, a2);
      }

      else
      {
        MapView.renderMultiplePins(_:)(a1, a2);
      }
    }

    else
    {

      MapView.renderSingleConsolidatedPin(_:)(a1, a2);
    }
  }
}

Swift::Void __swiftcall MapView.setMultiPinAnnotations(isHidden:)(Swift::Bool isHidden)
{
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CE93180](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setHidden_];
    }
  }
}

uint64_t MapView.updateAndShowViews()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = MapView.updateAndShowViews();

  return v5();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MapView.updateAndShowViews(), v1, v0);
}

{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v2);
  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall MapView.updateDynamicConstraints()()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (!v3)
  {
    return;
  }

  v118 = v3;
  swift_getObjectType();
  if (swift_conformsToProtocol2() && ((*((*v2 & *v118) + 0x1D8))() & 1) != 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView);
    isa = [v4 constraints];
    if (!isa)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v4 removeConstraints_];

    v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView);
    v7 = [v6 constraints];
    if (!v7)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v6 removeConstraints_];

    v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_labelView);
    v9 = [v6 constraints];
    if (!v9)
    {
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v8 removeConstraints_];

    v116 = *((*v2 & *v1) + 0x88);
    v116((&v119 + 2));
    v117 = v6;
    if (BYTE2(v119) - 3 < 2)
    {
      v17 = [v4 widthAnchor];
      v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
      v18 = [v11 heightAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 multiplier:0.2];

      [v19 setActive_];
      v14 = [v4 heightAnchor];
      v15 = [v11 heightAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.2];
    }

    else
    {
      if (!BYTE2(v119))
      {
        v20 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v21 = [v11 heightAnchor];
        v22 = [v20 constraintEqualToAnchor:v21 multiplier:0.6];

        [v22 setActive_];
        v23 = [v4 heightAnchor];
        v24 = [v11 heightAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 multiplier:0.6];

        [v25 setActive_];
        v26 = &selRef_centerYAnchor;
        goto LABEL_21;
      }

      if (BYTE2(v119) == 6)
      {
        v10 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v12 = [v11 heightAnchor];
        v13 = [v10 constraintEqualToAnchor:v12 multiplier:0.25];

        [v13 setActive_];
        v14 = [v4 heightAnchor];
        v15 = [v11 heightAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.25];
      }

      else
      {
        v27 = [v4 widthAnchor];
        v11 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
        v28 = [v11 heightAnchor];
        v29 = [v27 constraintEqualToAnchor:v28 multiplier:0.4];

        [v29 setActive_];
        v14 = [v4 heightAnchor];
        v15 = [v11 heightAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.4];
      }
    }

    v30 = v16;

    [v30 setActive_];
    v26 = &selRef_bottomAnchor;
LABEL_21:
    v31 = [v4 centerXAnchor];
    v32 = [v11 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    [v33 &selRef:1 setPrefetchDataSource:?];
    v34 = [v4 *v26];
    v35 = [v11 centerYAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    [v36 &selRef:1 setPrefetchDataSource:?];
    v116((&v119 + 1));
    v115 = v1;
    if (BYTE1(v119) > 5u)
    {
      if (BYTE1(v119) == 6)
      {
        v95 = [v6 superview];
        if (v95)
        {
          v96 = v95;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v97 = [v6 bottomAnchor];
          v98 = [v96 bottomAnchor];
          v99 = [v97 constraintEqualToAnchor_];

          if (v99)
          {
            [v99 setConstant_];
            [v99 setActive_];
          }
        }

        v100 = [v6 superview];
        if (v100)
        {
          v101 = v100;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v102 = [v6 centerXAnchor];
          v103 = [v101 centerXAnchor];
          v104 = [v102 constraintEqualToAnchor_];

          [v104 setConstant_];
          [v104 setActive_];
        }

        v105 = [v6 superview];
        if (v105)
        {
          v106 = v105;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v107 = [v6 leadingAnchor];
          v108 = [v106 leadingAnchor];
          v109 = [v107 constraintGreaterThanOrEqualToAnchor_];

          [v109 setConstant_];
          [v109 setActive_];
        }

        v110 = [v6 superview];
        if (v110)
        {
          v111 = v110;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v112 = [v6 trailingAnchor];
          v113 = [v111 trailingAnchor];
          v114 = [v112 constraintLessThanOrEqualToAnchor_];

          [v114 setConstant_];
          if (v114)
          {
            [v114 setActive_];

            v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
            goto LABEL_44;
          }
        }

        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        goto LABEL_44;
      }
    }

    else
    {
      if (BYTE1(v119) - 3 < 3)
      {
        v37 = [v6 superview];
        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (v37)
        {
          v39 = v37;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v40 = [v6 bottomAnchor];
          v41 = [v39 bottomAnchor];
          v42 = [v40 constraintEqualToAnchor_];

          if (v42)
          {
            [v42 setConstant_];
            [v42 &selRef:1 setPrefetchDataSource:?];
          }
        }

        v43 = [v6 superview];
        if (v43)
        {
          v44 = v43;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v45 = [v6 leadingAnchor];
          v46 = [v44 leadingAnchor];
          v47 = [v45 constraintEqualToAnchor_];

          [v47 setConstant_];
          [v47 &selRef:1 setPrefetchDataSource:?];
        }

        v48 = [v6 superview];
        v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (!v48)
        {
          goto LABEL_45;
        }

        v50 = v48;
        [v117 setTranslatesAutoresizingMaskIntoConstraints_];
        v51 = [v117 trailingAnchor];
        v52 = [v50 trailingAnchor];
        v53 = [v51 constraintEqualToAnchor_];

        [v53 setConstant_];
        goto LABEL_42;
      }

      if (BYTE1(v119) - 1 < 2)
      {
        v54 = [v6 topAnchor];
        v55 = [v11 centerYAnchor];
        v56 = [v54 constraintEqualToAnchor_];

        v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        [v56 &selRef:1 setPrefetchDataSource:?];

        v57 = [v6 superview];
        if (v57)
        {
          v58 = v57;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v59 = [v6 bottomAnchor];
          v60 = [v58 bottomAnchor];
          v61 = [v59 constraintEqualToAnchor_];

          if (v61)
          {
            [v61 setConstant_];
            [v61 &selRef:1 setPrefetchDataSource:?];
          }
        }

        v62 = [v6 superview];
        if (v62)
        {
          v63 = v62;
          [v6 setTranslatesAutoresizingMaskIntoConstraints_];
          v64 = [v6 leadingAnchor];
          v65 = [v63 leadingAnchor];
          v66 = [v64 constraintEqualToAnchor_];

          [v66 setConstant_];
          [v66 &selRef:1 setPrefetchDataSource:?];
        }

        v67 = [v6 superview];
        v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
        if (!v67)
        {
          goto LABEL_45;
        }

        v50 = v67;
        [v117 setTranslatesAutoresizingMaskIntoConstraints_];
        v68 = [v117 trailingAnchor];
        v69 = [v50 trailingAnchor];
        v53 = [v68 constraintEqualToAnchor_];

        [v53 setConstant_];
LABEL_42:
        [v53 &selRef:1 setPrefetchDataSource:?];

LABEL_45:
        v70 = [v8 leadingAnchor];
        v71 = [v117 leadingAnchor];
        v72 = [v70 constraintEqualToAnchor:v71 constant:8.0];

        [v72 v38[8]];
        v73 = [v8 trailingAnchor];
        v74 = [v117 trailingAnchor];
        v75 = [v73 constraintEqualToAnchor:v74 constant:-8.0];

        [v75 v38[8]];
        v76 = [v8 topAnchor];
        v77 = [v117 topAnchor];
        v78 = [v76 constraintEqualToAnchor:v77 constant:8.0];

        [v78 v38[8]];
        v116(&v119);
        v79 = v119;
        v80 = [v8 v49[15]];
        if (v79 == 6)
        {
          v81 = *(v115 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
          v82 = [v81 topAnchor];
          v83 = [v80 &selRef:v82 setZPosition:0.0 + 6];

          [v83 v38[8]];
          v84 = [v81 leadingAnchor];
          v85 = [v8 leadingAnchor];
          v86 = [v84 constraintEqualToAnchor_];

          [v86 v38[8]];
          v87 = [v81 trailingAnchor];
          v88 = [v8 trailingAnchor];
          v89 = [v87 constraintEqualToAnchor_];

          [v89 v38[8]];
          v90 = [v81 v49[15]];
          v91 = [v117 v49[15]];
          v92 = [v90 &selRef:v91 setZPosition:-8.0 + 6];

          [v92 v38[8]];
        }

        else
        {
          v93 = [v117 v49[15]];
          v94 = [v80 &selRef:v93 setZPosition:-8.0 + 6];

          [v94 v38[8]];
        }

        return;
      }
    }

    v38 = &selRef_setDeliversTouchesForGesturesToSuperview_;
LABEL_44:
    v49 = &selRef_setDeliversTouchesForGesturesToSuperview_;
    goto LABEL_45;
  }
}

id MapView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void MapView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView);
}

id MapView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for AssetViewBase.init(viewModel:style:) in conformance MapView@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  result = (*(v3 + 344))(a1, &v6);
  *a3 = result;
  return result;
}

void protocol witness for AssetViewBase.configureFallback() in conformance MapView()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView);
  v2 = MEMORY[0x21CE91FC0](0xD000000000000012, 0x800000021657D200);
  v3 = [objc_opt_self() systemImageNamed_];

  [v1 setImage_];
}

Swift::Void __swiftcall MapView.updateGradient()()
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41 = v6;
    *v5 = 136315138;
    [v2 frame];
    v7 = CGRect.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v41);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21607C000, v3, v4, "[MapView] updateGradient with frame: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CE94770](v6, -1, -1);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v10 setStartPoint_];
  [v10 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2165965F0;
  v14 = objc_opt_self();
  v15 = [v14 clearColor];
  v16 = [v15 CGColor];

  type metadata accessor for CGColorRef(0);
  v18 = v17;
  *(v13 + 56) = v17;
  *(v13 + 32) = v16;
  v19 = [v14 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v20 CGColor];
  *(v13 + 88) = v18;
  *(v13 + 64) = v21;
  v22 = [v14 whiteColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v23 CGColor];
  *(v13 + 120) = v18;
  *(v13 + 96) = v24;
  v25 = [v14 whiteColor];
  v26 = [v25 colorWithAlphaComponent_];

  v27 = [v26 CGColor];
  *(v13 + 152) = v18;
  *(v13 + 128) = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_216590220;
  *(v29 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v29 + 56) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setLocations_];

  v31 = v10;
  [v2 frame];
  Width = CGRectGetWidth(v43);
  [v2 frame];
  [v31 setFrame_];
  v33 = *&v2[OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView];
  v34 = [v33 layer];
  [v34 setMask_];

  v35 = [v33 layer];
  [v35 setMasksToBounds_];

  v36 = objc_opt_self();
  v37 = [objc_opt_self() mainScreen];
  [v37 scale];
  v39 = v38;

  v40 = [v36 _effectWithBlurRadius_scale_];
  [v33 setEffect_];
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t MapView.formattedOneLineText.getter(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  if (result)
  {
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && (v9 = v8, v10 = (*(*(v8 + 8) + 8))(ObjectType), v11))
    {
      v12 = v10;
      v13 = (*(v9 + 24))(ObjectType, v9);
      if (v14)
      {
        v15 = v14;
        v16 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v16 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v18 = v12;
          v17 = v13;

          MEMORY[0x21CE92100](a1, a2);

          MEMORY[0x21CE92100](v17, v15);

          return v18;
        }
      }

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void MapView.renderMultiplePins(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  if (!v6)
  {
    if (one-time initialization token for views != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_57;
  }

  v7 = v6;
  [v2 frame];
  Height = CGRectGetHeight(v106);
  [v2 frame];
  Width = CGRectGetWidth(v107);
  v10 = *((*MEMORY[0x277D85000] & *v2) + 0x88);
  (v10)(v103);
  v11 = static MapsUtilities.dedupedConsolidatedMapViewModels(viewport:viewStyle:mapViewModels:)(v103, v7, Width, Height);

  if (v11)
  {
    MapView.removeAllpins()();
    v12 = *(v11 + 16);
    v13 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
    swift_beginAccess();
    v14 = *&v3[v13];
    if (v14 >> 62)
    {
      goto LABEL_84;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v12 - v15;
    if (__OFSUB__(v12, v15))
    {
      goto LABEL_86;
    }

LABEL_5:
    v96 = v13;
    v97 = v11;
    v94 = v10;
    if (v16 >= 1)
    {
      v17 = *&v3[OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView];
      v18 = type metadata accessor for MultiPinMapPOIAnnotationView();
      v11 = &unk_27821E000;
      do
      {
        v19 = [objc_allocWithZone(v18) init];
        swift_beginAccess();
        v20 = v19;
        MEMORY[0x21CE92260]();
        if (*((*&v3[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v13 = v96;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v12 = v20;
        [v17 addSubview_];
        [v12 setTranslatesAutoresizingMaskIntoConstraints_];

        --v16;
      }

      while (v16);
    }

    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI11MapLocationC_AC0E9ViewModel_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = v97;
    v13 = v97[2];
    if (v13)
    {
      v22 = 0;
      v23 = v97 + 4;
      while (1)
      {
        if (v22 >= v10[2])
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        *oslog = *&v23[2 * v22];
        v25 = v23[2 * v22];
        v26 = swift_getObjectType();
        v11 = &oslog[1][4];
        isa = oslog[1][4].isa;
        v28 = v25;
        v29 = isa(v26, oslog[1]);
        v10 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v103[0] = v21;
        v12 = v21;
        v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v33 = v21[2];
        v34 = (v32 & 1) == 0;
        v35 = __OFADD__(v33, v34);
        v36 = v33 + v34;
        if (v35)
        {
          goto LABEL_79;
        }

        v11 = v32;
        if (v21[3] < v36)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v12 = v103;
        v40 = v31;
        specialized _NativeDictionary.copy()();
        v31 = v40;
        v21 = *&v103[0];
        if (v11)
        {
LABEL_12:
          v24 = v21[7];
          v12 = *(v24 + 16 * v31);
          *(v24 + 16 * v31) = *oslog;

          goto LABEL_13;
        }

LABEL_21:
        v21[(v31 >> 6) + 8] |= 1 << v31;
        *(v21[6] + 8 * v31) = v29;
        *(v21[7] + 16 * v31) = *oslog;

        v38 = v21[2];
        v35 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v35)
        {
          goto LABEL_80;
        }

        v21[2] = v39;
LABEL_13:
        ++v22;
        v10 = v97;
        if (v13 == v22)
        {
          goto LABEL_25;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
      v12 = *&v103[0];
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
      if ((v11 & 1) != (v37 & 1))
      {
        type metadata accessor for MapLocation();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

LABEL_20:
      v21 = *&v103[0];
      if (v11)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

LABEL_25:
    (v94)(v103);
    v41 = static MapsUtilities.normalizedPositionsWithin(viewStyle:mapViewModels:)(v103, v10);

    if (v41)
    {
      v42 = *&v3[v96];
      if (v42 >> 62)
      {
LABEL_89:
        v43 = __CocoaSet.count.getter();
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v43 == *(v41 + 16))
      {
        v11 = 0;
        v44 = 0;
        v10 = (v41 + 64);
        v45 = 1 << *(v41 + 32);
        v46 = -1;
        if (v45 < 64)
        {
          v46 = ~(-1 << v45);
        }

        v47 = v46 & *(v41 + 64);
        v13 = (v45 + 63) >> 6;
        while (1)
        {
          while (1)
          {
            do
            {
              v12 = v11;
              if (!v47)
              {
                while (1)
                {
                  v65 = v44 + 1;
                  if (__OFADD__(v44, 1))
                  {
                    break;
                  }

                  if (v65 >= v13)
                  {

                    return;
                  }

                  v47 = v10[v65];
                  ++v44;
                  if (v47)
                  {
                    v44 = v65;
                    ++v11;
                    if (__OFADD__(v12, 1))
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_34;
                  }
                }

LABEL_81:
                __break(1u);
LABEL_82:
                __break(1u);
LABEL_83:
                __break(1u);
LABEL_84:
                v89 = __CocoaSet.count.getter();
                v16 = v12 - v89;
                if (!__OFSUB__(v12, v89))
                {
                  goto LABEL_5;
                }

LABEL_86:
                __break(1u);
LABEL_87:
                swift_once();
LABEL_57:
                v78 = type metadata accessor for Logger();
                __swift_project_value_buffer(v78, static CommonLogger.views);
                osloga = Logger.logObject.getter();
                v79 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(osloga, v79))
                {
                  v80 = swift_slowAlloc();
                  *v80 = 0;
                  v81 = "[renderMultiplePins] ineligible map type";
                  goto LABEL_63;
                }

                goto LABEL_64;
              }

              ++v11;
              if (__OFADD__(v12, 1))
              {
                goto LABEL_82;
              }

LABEL_34:
              v48 = (*(v41 + 56) + 16 * (__clz(__rbit64(v47)) | (v44 << 6)));
              v50 = *v48;
              v49 = v48[1];
              v51 = *&v3[v96];
              if (v51 >> 62)
              {
                v52 = __CocoaSet.count.getter();
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v47 &= v47 - 1;
            }

            while (v12 >= v52);
            if ((v51 & 0xC000000000000001) == 0)
            {
              break;
            }

            v54 = MEMORY[0x21CE93180](v12, v51);

            if (v21[2])
            {
              goto LABEL_40;
            }

LABEL_55:
          }

          if (v12 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_89;
          }

          v53 = *(v51 + 8 * v12 + 32);

          v54 = v53;
          if (!v21[2])
          {
            goto LABEL_55;
          }

LABEL_40:
          v98 = v54;

          v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
          if (v57)
          {
            v92 = v11;
            v58 = v21[7] + 16 * v56;
            v59 = *(v58 + 8);
            v60 = *v58;

            v61 = v60;
            v90 = specialized MultiPinMapPOIAnnotationView.Style.init(from:)(v61, v59);
            v62 = swift_getObjectType();
            v95 = v61;
            v63 = (*(v59 + 16))(v62, v59);
            v64 = v63;
            v91 = v41;
            if (v63)
            {
              v93 = *(v63 + 16);
            }

            else
            {
              v93 = 0;
            }

            (*(v59 + 56))(v103, v62, v59);
            v101[0] = v103[0];
            v101[1] = v103[1];
            v102 = v104;
            v66 = (*(v59 + 40))(v62, v59);
            MultiPinMapPOIAnnotationView.update(style:count:countColor:poiIcon:)(v90, v93, v64 == 0, v101, v66);

            v67 = v98;
            [v67 setHidden_];
            [v67 setTranslatesAutoresizingMaskIntoConstraints_];
            v68 = [v67 widthAnchor];
            v69 = [v68 constraintEqualToConstant_];

            [v69 setActive_];
            [v67 setTranslatesAutoresizingMaskIntoConstraints_];
            v70 = [v67 heightAnchor];
            v71 = [v70 constraintEqualToConstant_];

            [v71 setActive_];
            v72 = [v67 centerXAnchor];
            v73 = [v3 leadingAnchor];
            v74 = [v72 constraintEqualToAnchor:v73 constant:Width * v50];

            [v74 setActive_];
            v75 = [v67 centerYAnchor];

            v76 = [v3 topAnchor];
            v77 = [v75 constraintEqualToAnchor:v76 constant:Height * v49];

            [v77 setActive_];

            v41 = v91;
            v11 = v92;
          }

          else
          {
          }
        }
      }

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static CommonLogger.views);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_76;
      }

      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "[renderMultiplePins] mismatched normalized positions";
    }

    else
    {

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Logger();
      __swift_project_value_buffer(v83, static CommonLogger.views);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v84, v85))
      {
        goto LABEL_76;
      }

      v86 = swift_slowAlloc();
      *v86 = 0;
      v87 = "[renderMultiplePins] could not compute normalized positions";
    }

    _os_log_impl(&dword_21607C000, v84, v85, v87, v86, 2u);
    MEMORY[0x21CE94770](v86, -1, -1);
LABEL_76:

    return;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static CommonLogger.views);
  osloga = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    v81 = "[renderMultiplePins] no consolidatedViewModels";
LABEL_63:
    _os_log_impl(&dword_21607C000, osloga, v79, v81, v80, 2u);
    MEMORY[0x21CE94770](v80, -1, -1);
  }

LABEL_64:
}

void MapView.renderSingleConsolidatedPin(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = v6(ObjectType, a2);
  if (!v7)
  {
    if (one-time initialization token for views == -1)
    {
LABEL_14:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static CommonLogger.views);
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21607C000, oslog, v23, "[renderSingleConsolidatedPin] ineligible count", v24, 2u);
        MEMORY[0x21CE94770](v24, -1, -1);
      }

      return;
    }

LABEL_45:
    swift_once();
    goto LABEL_14;
  }

  v8 = *(v7 + 16);

  MapView.removeAllpins()();
  v9 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (__CocoaSet.count.getter() <= 0)
  {
LABEL_4:
    MapView.createMultiPinImageView()();
  }

LABEL_5:
  v11 = *(v2 + v9);
  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = MEMORY[0x21CE93180](0, v11);

LABEL_10:
      v13 = v6(ObjectType, a2);
      v14 = 0.0;
      if (v13)
      {
        if (*(v13 + 16))
        {
          v15 = *(v13 + 40);
          v16 = *(v13 + 32);

          v17 = swift_getObjectType();
          (*(v15 + 56))(v55, v17, v15);

          v14 = *v55;
          v18 = *&v55[1];
          v19 = *&v55[2];
          v20 = *&v55[3];
          v21 = v56;
LABEL_21:
          v25 = MEMORY[0x277D85000];
          (*((*MEMORY[0x277D85000] & *v12) + 0x80))(1);
          if ((v21 & 1) == 0)
          {
            v26 = OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel;
            [*(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_numberLabel) setHidden_];
            v27 = *(v12 + v26);
            v55[0] = v8;
            v28 = dispatch thunk of CustomStringConvertible.description.getter();
            v29 = MEMORY[0x21CE91FC0](v28);

            [v27 setText_];

            v30 = *(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_baseView);
            v31 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v14 green:v18 blue:v19 alpha:v20];
            [v30 setBackgroundColor_];

            [*(v12 + OBJC_IVAR____TtC9MomentsUI28MultiPinMapPOIAnnotationView_poiIconView) setImage_];
          }

          v32 = v12;
          (*((*v25 & *v3) + 0x88))(v55, [v32 setHidden_]);
          if (LOBYTE(v55[0]) != 7 && LOBYTE(v55[0]))
          {
            v38 = [v32 bottomAnchor];

            v39 = [v3 centerYAnchor];
            v40 = [v38 constraintEqualToAnchor_];

            [v40 setActive_];
          }

          else
          {

            v33 = [v32 superview];
            if (v33)
            {
              v34 = v33;
              [v32 setTranslatesAutoresizingMaskIntoConstraints_];
              v35 = [v32 centerYAnchor];
              v36 = [v34 centerYAnchor];
              v37 = [v35 constraintEqualToAnchor_];

              [v37 setConstant_];
              if (v37)
              {
                [v37 setActive_];
              }
            }
          }

          v41 = [v32 superview];
          if (v41)
          {
            v42 = v41;
            [v32 setTranslatesAutoresizingMaskIntoConstraints_];
            v43 = [v32 centerXAnchor];
            v44 = [v42 centerXAnchor];
            v45 = [v43 constraintEqualToAnchor_];

            [v45 setConstant_];
            if (v45)
            {
              [v45 setActive_];
            }
          }

          [v32 setTranslatesAutoresizingMaskIntoConstraints_];
          v46 = [v32 widthAnchor];
          v47 = [v46 constraintEqualToConstant_];

          [v47 setActive_];
          [v32 setTranslatesAutoresizingMaskIntoConstraints_];
          v48 = [v32 heightAnchor];
          v49 = [v48 constraintEqualToConstant_];

          [v49 setActive_];
          return;
        }
      }

      v21 = 1;
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      goto LABEL_21;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static CommonLogger.views);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_21607C000, v51, v52, "[renderSingleConsolidatedPin] no re-usable views", v53, 2u);
    MEMORY[0x21CE94770](v53, -1, -1);
  }
}

Swift::Void __swiftcall MapView.removeAllpins()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v0 + v1) = MEMORY[0x277D84F90];

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      [v5 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void MapView.createMultiPinImageView()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for MultiPinMapPOIAnnotationView()) init];
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews;
  swift_beginAccess();
  v4 = v2;
  MEMORY[0x21CE92260]();
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView);
  v6 = v4;
  [v5 addSubview_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
}

void specialized MapView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7MapView_baseMapImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = OBJC_IVAR____TtC9MomentsUI7MapView_pinImageView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for MapPOIAnnotationView()) init];
  *(v0 + OBJC_IVAR____TtC9MomentsUI7MapView_multiPinImageViews) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC9MomentsUI7MapView_platterBlurView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v0 + v3) = v5;
  v6 = OBJC_IVAR____TtC9MomentsUI7MapView_labelView;
  *(v0 + v6) = closure #1 in variable initialization expression of MapView.labelView();
  v7 = OBJC_IVAR____TtC9MomentsUI7MapView_subtitleLabelView;
  *(v0 + v7) = closure #1 in variable initialization expression of MapView.labelView();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in MapView.handleTraitLight()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MapView.handleTraitLight()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MapView.handleTraitDark()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in MapView.handleTraitDark()(a1, v4, v5, v6);
}

void specialized MapView.attributedStringWithSeparator(_:separator:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = String.subscript.getter();
    specialized Collection<>.firstIndex(of:)(v7, v8, a1, a2);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v29 = String.distance(from:to:)();
      v28 = String.distance(from:to:)();
      v11 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v12 = MEMORY[0x21CE91FC0](a1, a2);
      v13 = [v11 initWithString_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21658CA50;
      v15 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v16 = objc_opt_self();
      v17 = *MEMORY[0x277D76968];
      v27 = v15;
      v18 = [v16 preferredFontForTextStyle_];
      v19 = [v18 fontDescriptor];
      v20 = [v19 fontDescriptorWithSymbolicTraits_];

      if (v20)
      {
        v21 = [v16 fontWithDescriptor:v20 size:0.0];

        v22 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIFont);
        *(inited + 64) = v22;
        *(inited + 40) = v21;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v13 addAttributes:isa range:{0, v29}];

        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_21658CA50;
        *(v24 + 32) = v27;
        v25 = [v16 preferredFontForTextStyle_];
        *(v24 + 64) = v22;
        *(v24 + 40) = v25;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v24);
        swift_setDeallocating();
        outlined destroy of (NSAttributedStringKey, Any)(v24 + 32);
        v26 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v13 addAttributes:v26 range:{v29, v28}];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t dispatch thunk of MapView.updateData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterImage(imageSource:outputURL:);

  return v5();
}

void CloudSyncAssetData.assetClass.setter(_BYTE *a1)
{
  if (*a1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 98;
  }

  v3 = MEMORY[0x21CE91FC0](v2, 0xE100000000000000);

  [v1 setProtectionClass_];
}

void CloudSyncAssetData.ckAsset.setter(void *a1)
{
  [v1 setCkAssetData_];
}

id CloudSyncAssetData.assetClass.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 protectionClass];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20._countAndFlagsBits = v17;
    v20._object = v19;
    v21 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CloudSyncAssetData.assetClass.getter, v20);

    v23 = v21 == 1;
  }

  else
  {
    result = [v2 filePath];
    if (result)
    {
      v24 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = a1;

      (*(v12 + 56))(v10, 1, 1, v11);
      (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
      a1 = v30;
      URL.init(filePath:directoryHint:relativeTo:)();
      v25 = URL.pathExtension.getter();
      v27 = v26;
      (*(v12 + 8))(v14, v11);

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      v23 = v28 != 0;
    }

    else
    {
      v23 = 0;
    }
  }

  *a1 = v23;
  return result;
}

id CloudSyncAssetData.ckAsset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CloudSyncAssetData.fileURL.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3);
    v8 = [v0 inlineData];
    if (v8)
    {
      v9 = v8;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = objc_allocWithZone(MEMORY[0x277CBC190]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v15 = MEMORY[0x21CE91FC0](1635017060, 0xE400000000000000);
      v16 = [v13 initWithAssetContent:isa itemTypeHint:v15];

      outlined consume of Data._Representation(v10, v12);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v17 = objc_allocWithZone(MEMORY[0x277CBC190]);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v16 = [v17 initWithFileURL_];

    (*(v5 + 8))(v7, v4);
  }

  return v16;
}

uint64_t CloudSyncAssetData.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 filePath];
  if (!v3)
  {
    v12 = type metadata accessor for URL();
    v8 = *(*(v12 - 8) + 56);
    v9 = v12;
    v10 = a1;
    v11 = 1;
    goto LABEL_5;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 fileExistsAtPath_];

  if (v6)
  {
    URL.init(fileURLWithPath:)();

    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 0;
LABEL_5:

    return v8(v10, v11, 1, v9);
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t CloudSyncAssetData.assetLoaded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 inlineData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    outlined consume of Data._Representation(v10, v12);
    return 1;
  }

  CloudSyncAssetData.fileURL.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v14 = [objc_opt_self() defaultManager];
    v15 = URL.path.getter();
    v16 = MEMORY[0x21CE91FC0](v15);

    v17 = [v14 fileExistsAtPath_];

    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CloudSyncAssetData.loadAssetData()()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudSyncAssetData.loadAssetData(), 0, 0);
}

{
  if (CloudSyncAssetData.assetLoaded.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v0[5] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = xmmword_21658E210;
    v5 = [v3 id];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [v3 zoneName];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v0[7] = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID);
    v14 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID);
    v15 = *MEMORY[0x277CBBF28];
    v0[8] = v14;
    v0[9] = v15;
    v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16._object = v17;
    v18._countAndFlagsBits = v11;
    v18._object = v13;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
    v20._countAndFlagsBits = v6;
    v20._object = v8;
    *(v4 + 32) = CKRecordID.init(recordName:zoneID:)(v20, isa);
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = CloudSyncAssetData.loadAssetData();

    return CloudManager.records(ids:desiredKeys:loadAssets:)(v4, 0, 1);
  }
}

{
  v1 = v0[3];
  v2 = [v1 id];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 zoneName];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = v0[11];
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = v8;
  v14._object = v10;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v16._countAndFlagsBits = v3;
  v16._object = v5;
  v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
  v18 = v17.super.isa;
  if (*(v11 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17.super.isa), (v20 & 1) != 0))
  {
    v21 = *(v0[11] + 56) + 16 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Result<CKRecord, Error>(*v21);

    v24 = v0[5];
    if (v23)
    {
      v0[2] = v22;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      swift_willThrowTypedImpl();

      outlined consume of Result<CKRecord, Error>(v22);

      v26 = v0[1];
      goto LABEL_10;
    }

    v28 = v0[4];
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v30 = lazy protocol witness table accessor for type CloudManager and conformance CloudManager();

    specialized CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(v22, 0, v28, v24, v30);

    outlined consume of Result<CKRecord, Error>(v22);

    outlined destroy of URL?(v28);
  }

  else
  {
  }

  v26 = v0[1];
LABEL_10:

  return v26();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudSyncAssetData.loadAssetData()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = CloudSyncAssetData.loadAssetData();
  }

  else
  {

    v4 = CloudSyncAssetData.loadAssetData();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void (*CloudSyncAssetData.ckAsset.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudSyncAssetData.ckAsset.getter();
  return CloudSyncAssetData.ckAsset.modify;
}

void CloudSyncAssetData.ckAsset.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    [v3 setCkAssetData_];
    v4 = *a1;
  }

  else
  {
    v5 = *a1;
    [v3 setCkAssetData_];
    v4 = v5;
  }
}

uint64_t CloudSyncAssetData.data.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [v0 inlineData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    CloudSyncAssetData.fileURL.getter(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      outlined destroy of URL?(v3);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v10 = Data.init(contentsOf:options:)();
      (*(v5 + 8))(v7, v4);
    }
  }

  return v10;
}

void key path setter for CloudSyncAssetData.assetClass : CloudSyncAssetData(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = 99;
  }

  else
  {
    v3 = 98;
  }

  v4 = MEMORY[0x21CE91FC0](v3, 0xE100000000000000);

  [v2 setProtectionClass_];
}

void (*CloudSyncAssetData.assetClass.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  CloudSyncAssetData.assetClass.getter((a1 + 8));
  return CloudSyncAssetData.assetClass.modify;
}

void CloudSyncAssetData.assetClass.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    v2 = 99;
  }

  else
  {
    v2 = 98;
  }

  v3 = MEMORY[0x21CE91FC0](v2, 0xE100000000000000);

  [v1 setProtectionClass_];
}

unint64_t lazy protocol witness table accessor for type CloudManager and conformance CloudManager()
{
  result = lazy protocol witness table cache variable for type CloudManager and conformance CloudManager;
  if (!lazy protocol witness table cache variable for type CloudManager and conformance CloudManager)
  {
    type metadata accessor for CloudManager();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManager and conformance CloudManager);
  }

  return result;
}

uint64_t MutableContactViewModel.contacts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MutableContactViewModel.__allocating_init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v12;
}

id static MutableContactViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableContactViewModel.empty;

  return v1;
}

void *MutableContactViewModel.profilePicture.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for MutableContactViewModel.profilePicture : MutableContactViewModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t MutableContactViewModel.name.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t key path setter for MutableContactViewModel.name : MutableContactViewModel(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

BOOL MutableContactViewModel.isSingleContact.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  return *(v0 + v1) == 0;
}

uint64_t MutableContactViewModel.contactIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);

  return v1;
}

id MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v6;
}

id MutableContactViewModel.__allocating_init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

id MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v8;
}

unint64_t MutableContactViewModel.init(intendedViewport:supportedStyles:viewModels:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v104 = a2;
  v105 = a1;
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for DateInterval();
  v7 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v97 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Date();
  v99 = *(v100 - 8);
  v9 = MEMORY[0x28223BE20](v100);
  v95 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v94 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v96 = &v87 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v17);
  v98 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v87 - v26;
  MEMORY[0x28223BE20](v25);
  v106 = &v87 - v28;
  v29 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v30 = a3 >> 62;
  v102 = v7;
  if (a3 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_3:
    v101 = ObjectType;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CE93180](0, a3);
      goto LABEL_6;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(a3 + 32);
LABEL_6:
      v32 = v31;

      swift_beginAccess();
      *&v4[v29] = 0;

      v33 = *&v32[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier + 8];
      v34 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
      *v34 = *&v32[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
      v34[1] = v33;
      *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
      v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v36 = *&v32[v35];
      v37 = &v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
      swift_beginAccess();
      v38 = *v37;
      v39 = *(v37 + 1);
      v99 = v38;
      v40 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
      swift_beginAccess();
      outlined init with copy of DateInterval?(&v32[v40], v106, &_s10Foundation12DateIntervalVSgMd);
      LODWORD(v100) = v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];
      v41 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
      v42 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
      *v42 = 0;
      v42[1] = 0;
      v43 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
      (*(v102 + 56))(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v103);

      v44 = v36;
      UUID.init()();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
      v45 = v105;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v105;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v104;
      swift_beginAccess();
      v46 = *&v4[v41];
      *&v4[v41] = v36;
      v47 = v44;
      v48 = v45;

      swift_beginAccess();
      *v42 = v99;
      v42[1] = v39;

      swift_beginAccess();
      v49 = v106;
      outlined assign with copy of DateInterval?(v106, &v4[v43]);
      v50 = swift_endAccess();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v100;
      (*(v101 + 328))(v108, v50);
      LOBYTE(v41) = v108[0];
      type metadata accessor for AssetViewModelRenderingActor();
      v51 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v51 + 120) = 0;
      swift_unknownObjectWeakInit();
      *(v51 + 144) = 0;
      swift_unknownObjectWeakInit();
      *(v51 + 112) = v41;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v51;
      v52 = type metadata accessor for AssetViewModel();
      v107.receiver = v4;
      v107.super_class = v52;
      v53 = objc_msgSendSuper2(&v107, sel_init);

      outlined destroy of UTType?(v49, &_s10Foundation12DateIntervalVSgMd);
      return v53;
    }

    __break(1u);
    goto LABEL_31;
  }

  v55 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v55 = 0;
  v55[1] = 0;
  v56 = specialized _arrayForceCast<A, B>(_:)(a3);
  swift_beginAccess();
  *&v4[v29] = v56;

  if (!v30)
  {
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_26;
  }

  result = __CocoaSet.count.getter();
  v30 = result;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_11:
  v101 = ObjectType;
  v92 = v55;
  v91 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v57 = MEMORY[0x21CE93180](0, a3);
    goto LABEL_14;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v57 = *(a3 + 32);
LABEL_14:
  v58 = v57;
  v59 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v58 + v59, v27, &_s10Foundation12DateIntervalVSgMd);
  v60 = *(v102 + 48);
  if (!v60(v27, 1, v103))
  {
    v89 = v60;
    v90 = v58;
    DateInterval.start.getter();
    outlined destroy of UTType?(v27, &_s10Foundation12DateIntervalVSgMd);
    v61 = v99[4];
    v61(v98, v19, v100);
    result = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      v88 = v61;
      v62 = v103;
      if (v91)
      {
        v63 = MEMORY[0x21CE93180](result, a3);
LABEL_24:

        v64 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v63 + v64, v24, &_s10Foundation12DateIntervalVSgMd);
        if (!v89(v24, 1, v62))
        {
          v92 = v63;
          v66 = v93;
          v67 = v62;
          DateInterval.end.getter();
          outlined destroy of UTType?(v24, &_s10Foundation12DateIntervalVSgMd);
          v68 = v96;
          v69 = v100;
          v88(v96, v66, v100);
          v70 = v99[2];
          v70(v94, v98, v69);
          v70(v95, v68, v69);
          v71 = v97;
          DateInterval.init(start:end:)();
          *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
          v72 = v102;
          v73 = v106;
          (*(v102 + 16))(v106, v71, v67);
          v74 = *(v72 + 56);
          v74(v73, 0, 1, v67);
          LODWORD(v95) = v90[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];

          v75 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
          v76 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
          *v76 = 0;
          v76[1] = 0;
          v77 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
          v74(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v67);
          UUID.init()();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
          v78 = v105;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v105;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v104;
          swift_beginAccess();
          v79 = *&v4[v75];
          *&v4[v75] = 0;
          v80 = v78;

          swift_beginAccess();
          *v76 = 0;
          v76[1] = 0;

          swift_beginAccess();
          outlined assign with copy of DateInterval?(v73, &v4[v77]);
          v81 = swift_endAccess();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v95;
          (*(v101 + 328))(v110, v81);
          LOBYTE(v77) = v110[0];
          type metadata accessor for AssetViewModelRenderingActor();
          v82 = swift_allocObject();
          swift_defaultActor_initialize();
          *(v82 + 120) = 0;
          swift_unknownObjectWeakInit();
          *(v82 + 144) = 0;
          swift_unknownObjectWeakInit();
          *(v82 + 112) = v77;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v82;
          v83 = type metadata accessor for AssetViewModel();
          v109.receiver = v4;
          v109.super_class = v83;
          v84 = objc_msgSendSuper2(&v109, sel_init);

          outlined destroy of UTType?(v73, &_s10Foundation12DateIntervalVSgMd);
          (*(v72 + 8))(v97, v67);
          v85 = v99[1];
          v86 = v100;
          v85(v96, v100);
          v85(v98, v86);
          return v84;
        }

        v65 = v90;

        (v99[1])(v98, v100);
        outlined destroy of UTType?(v24, &_s10Foundation12DateIntervalVSgMd);
        goto LABEL_26;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (result < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v63 = *(a3 + 8 * result + 32);
          goto LABEL_24;
        }

LABEL_35:
        __break(1u);
        return result;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  outlined destroy of UTType?(v27, &_s10Foundation12DateIntervalVSgMd);
LABEL_26:

  swift_deallocPartialClassInstance();
  return 0;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x21CE93180](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v18 + 16) = v8 + 1;
        v9 = v18 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for MutableContactViewModel;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v18 + 16);
        v13 = *(v18 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v15 = v18 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = &protocol witness table for MutableContactViewModel;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t MutableContactViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableContactViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t MutableContactViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableContactViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableContactViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableContactViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableContactViewModel.render()()
{
  *(v1 + 136) = v0;
  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[18] = v3;
  if (v3)
  {
    v4 = *(v0[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
    v0[21] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[22] = v5;
      *(v5 + 16) = v3;

      v6 = v4;
      v7 = swift_task_alloc();
      v0[23] = v7;
      *v7 = v0;
      v7[1] = MutableContactViewModel.render();
      v8 = MEMORY[0x277D84F78] + 8;
      v9 = MEMORY[0x277D84F78] + 8;
      v10 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600](v7, v8, v9, 0, 0, &async function pointer to partial apply for closure #1 in MutableContactViewModel.render(), v5, v10);
    }

    else
    {
      v12 = v0[1];

      return v12();
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = MutableContactViewModel.render();

    return MutableContactViewModel.getProfilePicture()();
  }
}

{
  v1 = v0[20];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = MutableContactViewModel.getFullName()();
  v6 = (v0[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v6 = v5;

  v7 = v0[1];

  return v7();
}

{

  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

uint64_t MutableContactViewModel.render()(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

void MutableContactViewModel.render()()
{
  v54 = v0;
  v1 = *(v0 + 144);
  v2 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 0;
  v5 = v1 + 40;
  do
  {
    v50 = v2;
    v6 = (v5 + 16 * v4);
    v7 = v4;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
LABEL_28:
        __break(1u);
        return;
      }

      v9 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v11 = *(v8 + 32);
      v12 = v9;
      v13 = v11(ObjectType, v8);
      if (v13)
      {
        break;
      }

LABEL_5:
      ++v7;
      v6 += 2;
      if (v3 == v7)
      {
        v2 = v50;
        goto LABEL_14;
      }
    }

    v14 = v13;
    v15 = Image.uiImage.getter();

    if (!v15)
    {
      goto LABEL_5;
    }

    MEMORY[0x21CE92260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v4 = v7 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v52;
    v5 = v1 + 40;
  }

  while (v3 - 1 != v7);
LABEL_14:
  v16 = v49[21];
  v18 = v49[17];
  v17 = v49[18];
  type metadata accessor for Image();
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v16) + 0x60))();
  v21 = (*((*v19 & *v16) + 0x78))();
  v22 = specialized static SnowGlobeEffect.image(for:targetSize:)(v2, v20, v21);

  v53 = *(v18 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v23 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v22, 0, &v53);
  v24 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v25 = *(v18 + v24);
  *(v18 + v24) = v23;

  v26 = 0;
  v27 = v17 + 40;
  v51 = MEMORY[0x277D84F90];
  v48 = v17 + 40;
LABEL_15:
  v28 = (v27 + 16 * v26);
  while (v3 != v26)
  {
    if (v26 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v29 = v28 + 2;
    ++v26;
    v30 = *(v28 - 1);
    v31 = *v28;
    v32 = swift_getObjectType();
    v33 = *(v31 + 24);
    v34 = v30;
    v35 = v33(v32, v31);
    v37 = v36;

    v28 = v29;
    if (v37)
    {
      v38 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v51 = v38;
      v41 = &v38[16 * v40];
      *(v41 + 4) = v35;
      *(v41 + 5) = v37;
      v27 = v48;
      goto LABEL_15;
    }
  }

  v42 = v49[21];

  v43 = specialized static MutableContactViewModel.combinedNames(_:)(v51);
  v45 = v44;

  v46 = (v49[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v46 = v43;
  v46[1] = v45;

  v47 = v49[1];

  v47();
}

uint64_t MutableContactViewModel.getProfilePicture()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](MutableContactViewModel.getProfilePicture(), v3, v2);
}

{
  v1 = *(v0[4] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (v1 && (v2 = MEMORY[0x277D85000], v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))(), v4 = (*((*v2 & *v1) + 0x78))(), v5 = MutableContactViewModel.contact.getter(), (v0[9] = v5) != 0))
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 userInterfaceLayoutDirection];

    v9 = v8 == 1;
    v10 = objc_opt_self();
    v11 = [objc_opt_self() mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v10 scopeWithPointSize:v9 scale:0 rightToLeft:v3 style:{v4, v13}];
    v0[10] = v14;
    v15 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
    v0[11] = v15;
    v0[2] = 0;
    v16 = static MainActor.shared.getter();
    v0[12] = v16;
    v17 = swift_task_alloc();
    v0[13] = v17;
    v17[2] = v0 + 2;
    v17[3] = v15;
    v17[4] = v6;
    v17[5] = v14;
    v18 = swift_task_alloc();
    v0[14] = v18;
    v19 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIImage);
    *v18 = v0;
    v18[1] = MutableContactViewModel.getProfilePicture();
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 3, v16, v20, 0xD000000000000013, 0x800000021657D350, partial apply for closure #1 in MutableContactViewModel.getProfilePicture(), v17, v19);
  }

  else
  {

    v21 = v0[1];

    return v21(0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](MutableContactViewModel.getProfilePicture(), v3, v2);
}

{
  v10 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];

  v4 = v0[3];
  type metadata accessor for Image();
  v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v5 = v4;
  v6 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v4, 0, &v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7(v6);
}

Swift::String_optional __swiftcall MutableContactViewModel.getFullName()()
{
  v0 = MutableContactViewModel.contact.getter();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v2 setStyle_];
  v3 = [v2 stringFromContact_];
  if (!v3)
  {

    v0 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v7;
  v0 = v5;
LABEL_6:
  result.value._object = v8;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MutableContactViewModel.render(), 0, 0);
}

uint64_t closure #1 in MutableContactViewModel.render()()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v22 = *(v5 + 56);
    v21 = (v5 + 48);
    v20 = (v5 + 8);
    v23 = v4;
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v25 = *v3;
      v22(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v25;
      outlined init with copy of DateInterval?(v8, v9, &_sScPSgMd);
      LODWORD(v9) = (*v21)(v9, 1, v4);
      v12 = v25;
      v13 = *(v0 + 88);
      if (v9 == 1)
      {
        outlined destroy of UTType?(*(v0 + 88), &_sScPSgMd);
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v20)(v13, v4);
        if (*v11)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = dispatch thunk of Actor.unownedExecutor.getter();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v17 = swift_allocObject();
      *(v17 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in MutableContactViewModel.render();
      *(v17 + 24) = v10;

      if (v15 | v14)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v24;
      swift_task_create();

      outlined destroy of UTType?(v7, &_sScPSgMd);
      ++v3;
      --v2;
      v4 = v23;
    }

    while (v2);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x277D85000] & *a4) + 0x1C0);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return v8();
}

void MutableContactViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = Image.uiImage.getter();

    if (v5)
    {

      v6 = v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
      swift_beginAccess();
      if (*(v6 + 8))
      {
        v7 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
        swift_beginAccess();
        v8 = *(v1 + v7);
        if (v8)
        {
          v9 = *(v8 + 16);

          v10 = -v9;
          v11 = -1;
          v12 = 32;
          v13 = MEMORY[0x277D85000];
          while (1)
          {
            if (v10 + v11 == -1)
            {
LABEL_9:

              return;
            }

            if (++v11 >= *(v8 + 16))
            {
              break;
            }

            v14 = *(v8 + v12);
            v15 = v12 + 16;
            v16 = *((*v13 & *v14) + 0x1D8);
            v17 = v14;
            LOBYTE(v16) = v16();

            v12 = v15;
            if ((v16 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

Swift::Bool __swiftcall MutableContactViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutableContactViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for ContactView());
  return ContactView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutableContactViewModel.__ivar_destroyer()
{
}

id MutableContactViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ContactViewModel.name.getter in conformance MutableContactViewModel()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t protocol witness for ContactViewModel.contactIdentifier.getter in conformance MutableContactViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);

  return v1;
}

BOOL protocol witness for ContactViewModel.isSingleContact.getter in conformance MutableContactViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  return *(v0 + v1) == 0;
}

id MutableContactViewModel.contact.getter()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v5 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v6 = MEMORY[0x21CE91FC0](v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658E210;
  *(v7 + 32) = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22[0] = 0;
  v9 = [v4 unifiedContactWithIdentifier:v6 keysToFetch:isa error:v22];

  v10 = v22[0];
  if (!v9)
  {
    v11 = v10;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static CommonLogger.viewModel);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_21607C000, v15, v16, "[MutableContactViewModel] Failed to load contact: %@", v17, 0xCu);
      outlined destroy of UTType?(v18, &_sSo8NSObjectCSgMd);
      MEMORY[0x21CE94770](v18, -1, -1);
      MEMORY[0x21CE94770](v17, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t closure #1 in MutableContactViewModel.getProfilePicture()(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v22 = a3;
  v23 = a5;
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21658E210;
  *(v13 + 32) = a4;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CNContact);
  v14 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v11;
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in MutableContactViewModel.getProfilePicture();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  aBlock[3] = &block_descriptor_15;
  v18 = _Block_copy(aBlock);

  v19 = [v22 renderAvatarsForContacts:isa scope:v23 imageHandler:v18];
  _Block_release(v18);

  *v24 = v19;

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd);
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t specialized MutableContactViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a3;
  v15[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  outlined init with copy of DBObject(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBContactModel();
  if (swift_dynamicCast())
  {
    v8 = *(v13 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    v9 = &a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
    *v9 = *(v13 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v9[1] = v8;
    *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = v13;

    v11 = specialized AssetViewModel.init(dbObject:)(v10, a2);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a5;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v15 = &v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  *&v6[v14] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a5, v16);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, v16);
  type metadata accessor for DBAssetModel();
  static DBAssetModel.subscript.getter(ObjectType, &v37);
  HIDWORD(v31) = v37;
  v19 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v20 = &v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v18(&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v16);
  UUID.init()();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v23 = v32;
  v22 = v33;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v32;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v22;
  swift_beginAccess();
  v24 = *&v6[v19];
  *&v6[v19] = 0;
  v25 = v23;

  swift_beginAccess();
  *v20 = 0;
  v20[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v6[v21]);
  v26 = swift_endAccess();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = BYTE4(v31);
  (*(ObjectType + 328))(v36, v26);
  LOBYTE(v21) = v36[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 112) = v21;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v27;
  v28 = type metadata accessor for AssetViewModel();
  v35.receiver = v6;
  v35.super_class = v28;
  v29 = objc_msgSendSuper2(&v35, sel_init);
  (*(v17 + 8))(v34, v16);
  outlined destroy of UTType?(v13, &_s10Foundation12DateIntervalVSgMd);
  return v29;
}

uint64_t specialized static MutableContactViewModel.combinedNames(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  v3 = *(a1 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v1 - 1) > *(v2 + 3) >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v1, 1, v2);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  v10 = v3;
  v5 = *(v2 + 2);
  if (v5)
  {
    v6 = (v2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      MEMORY[0x21CE92100](v7, v8);

      MEMORY[0x21CE92100](8236, 0xE200000000000000);

      v6 += 2;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
  }

  return v3;
}

uint64_t specialized MutableContactViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableContactViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v32 = a3;
  v35 = a1;
  v36 = a2;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v15 = &v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v15 = 0;
  v15[1] = 0;
  swift_beginAccess();
  *&v7[v14] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a6, v16);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, v16);
  type metadata accessor for DBAssetModel();
  v33 = a3;
  static DBAssetModel.subscript.getter(ObjectType, &v42);
  v34 = v42;
  v19 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v20 = &v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v18(&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v16);
  UUID.init()();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v23 = v35;
  v22 = v36;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v35;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v22;
  swift_beginAccess();
  v24 = *&v7[v19];
  *&v7[v19] = v32;
  v36 = v33;
  v25 = v23;

  swift_beginAccess();
  v26 = v38;
  *v20 = v37;
  v20[1] = v26;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v7[v21]);
  v27 = swift_endAccess();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v34;
  (*(ObjectType + 328))(v41, v27);
  LOBYTE(v19) = v41[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 112) = v19;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
  v29 = type metadata accessor for AssetViewModel();
  v40.receiver = v7;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_init);

  (*(v17 + 8))(v39, v16);
  outlined destroy of UTType?(v13, &_s10Foundation12DateIntervalVSgMd);
  return v30;
}

uint64_t partial apply for closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MutableContactViewModel.render()(a1, a2, v6);
}

uint64_t type metadata accessor for MutableContactViewModel()
{
  result = type metadata singleton initialization cache for MutableContactViewModel;
  if (!type metadata singleton initialization cache for MutableContactViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(a1, v3, v4);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in MutableContactViewModel.render()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in MutableContactViewModel.render()(a1, v4, v5, v6);
}

void static NewOnboardedSyncAlert.show(deviceName:)(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v52 - v4;
  error = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2165965F0;
  v6 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = inited;
  *(inited + 32) = v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = v6;
  v11 = [v9 bundleForClass_];
  v57._object = 0x800000021657D450;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x800000021657D430;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v57);

  v14 = static String.localizedStringWithFormat(_:_:)();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  *(v7 + 64) = MEMORY[0x277D837D0];
  *(v7 + 40) = v14;
  *(v7 + 48) = v16;
  v18 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v7 + 72) = v18;
  v19 = v18;
  v20 = [v9 bundleForClass_];
  v58._object = 0x800000021657D4D0;
  v21._countAndFlagsBits = 0xD00000000000005CLL;
  v21._object = 0x800000021657D470;
  v58._countAndFlagsBits = 0xD000000000000016;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v58);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21658CA50;
  *(v23 + 56) = v17;
  *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 32) = v53;
  *(v23 + 40) = a2;

  v24 = static String.localizedStringWithFormat(_:_:)();
  v26 = v25;

  *(v7 + 104) = v17;
  *(v7 + 80) = v24;
  *(v7 + 88) = v26;
  v27 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  *(v7 + 112) = v27;
  v28 = v27;
  v29 = [v9 bundleForClass_];
  v59._object = 0xE90000000000006ELL;
  v59._countAndFlagsBits = 0x6F69746361204B4FLL;
  v30._countAndFlagsBits = 19279;
  v30._object = 0xE200000000000000;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v59);

  *(v7 + 144) = v17;
  *(v7 + 120) = v32;
  v33 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_20;
  }

  *(v7 + 152) = v33;
  v34 = v33;
  v35 = [v9 bundleForClass_];
  v60._object = 0xEE0073676E697474;
  v36._countAndFlagsBits = 0x73676E6974746553;
  v60._countAndFlagsBits = 0x6573206F74206F47;
  v36._object = 0xE800000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v60);

  *(v7 + 184) = v17;
  *(v7 + 160) = v38;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v40 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, isa);

  if (!v40)
  {

    if (one-time initialization token for cloud != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static CommonLogger.cloud);
    v40 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_21607C000, v40, v42, "[NewOnboardedSyncAlert] cannot show alert", v43, 2u);
      MEMORY[0x21CE94770](v43, -1, -1);
    }

    goto LABEL_16;
  }

  responseFlags = 0;
  CFUserNotificationReceiveResponse(v40, 0.0, &responseFlags);
  if (responseFlags != 1)
  {

LABEL_16:

    return;
  }

  v44 = [objc_opt_self() defaultWorkspace];
  if (v44)
  {
    v45 = v44;

    v46 = v52;
    URL.init(string:)();
    v47 = type metadata accessor for URL();
    v48 = *(v47 - 8);
    v50 = 0;
    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      URL._bridgeToObjectiveC()(v49);
      v50 = v51;
      (*(v48 + 8))(v46, v47);
    }

    [v45 openSensitiveURL:v50 withOptions:0];

    goto LABEL_16;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t dispatch thunk of SharedServer.didSendUserSelection(suggestion:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharedServer.refreshBundlesIfNecessary()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of SharedServer.performRealTimeCheck(significantLocationEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v9(a1, a2, a3);
}

void closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for IneligibleForSyncOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v12._object = 0x800000021657D740;
  v3._object = 0x8000000216577C20;
  v12._countAndFlagsBits = 0xD000000000000024;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  v6 = MEMORY[0x21CE91FC0](v5._countAndFlagsBits, v5._object);

  [v0 setText_];

  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];

    [v0 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for IneligibleForSyncOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v11._object = 0x800000021657D740;
  v3._object = 0x800000021657D680;
  v3._countAndFlagsBits = 0x10000000000000B7;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000024;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v6 = MEMORY[0x21CE91FC0](v5._countAndFlagsBits, v5._object);

  [v0 setText_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  v8 = [objc_opt_self() labelColor];
  v9 = [v8 colorWithAlphaComponent_];

  [v0 setTextColor_];
  return v0;
}

uint64_t IneligibleForSyncOnboardingViewController.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  swift_beginAccess();
  return outlined init with copy of IneligibleForSyncOnboardingViewControllerDelegate?(v1 + v3, a1);
}

uint64_t outlined init with copy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IneligibleForSyncOnboardingViewController.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  swift_beginAccess();
  outlined assign with take of IneligibleForSyncOnboardingViewControllerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *IneligibleForSyncOnboardingViewController.init(delegate:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel;
  closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel();
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel;
  *&v1[v7] = closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel();
  v8 = &v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate];
  v9 = type metadata accessor for IneligibleForSyncOnboardingViewController();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v16.receiver = v1;
  v16.super_class = v9;
  v10 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  result = [v10 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() systemBackgroundColor];
    [v12 setBackgroundColor_];

    v14 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
    swift_beginAccess();
    outlined assign with copy of IneligibleForSyncOnboardingViewControllerDelegate?(a1, v10 + v14);
    v15 = swift_endAccess();
    (*((*MEMORY[0x277D85000] & *v10) + 0x90))(v15);

    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(a1);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined assign with copy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for IneligibleForSyncOnboardingViewController();
  v3 = objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1);
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v9, v3);
  if (v9[3])
  {
    outlined init with copy of DBObject(v9, v6);
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
  }
}

id IneligibleForSyncOnboardingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.addViewsAndLayout()()
{
  v1 = v0;
  swift_getObjectType();
  v55 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_cancelSheet];
  v2 = [objc_opt_self() systemIndigoColor];
  [v55 setTintColor_];

  v3 = [v0 navigationItem];
  [v3 setLeftBarButtonItem_];

  v4 = *&v0[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x800000021657D550);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  [v4 setImage_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *&v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel];
  [v11 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = *&v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel];
  [v14 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v4 topAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 topAnchor];
  v22 = [v17 constraintEqualToAnchor:v21 constant:50.0];

  [v22 setActive_];
  v23 = [v4 superview];
  if (v23)
  {
    v24 = v23;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v25 = [v4 leadingAnchor];
    v26 = [v24 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    [v27 setConstant_];
    [v27 setActive_];
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v4 widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  [v29 setActive_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v4 heightAnchor];
  v31 = [v30 constraintEqualToConstant_];

  [v31 setActive_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v13 leadingAnchor];
  v33 = [v4 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  [v34 setConstant_];
  [v34 setActive_];

  v35 = [v13 centerYAnchor];
  v36 = [v4 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = [v13 superview];
  if (v38)
  {
    v39 = v38;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v13 trailingAnchor];
    v41 = [v39 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    [v42 setConstant_];
    [v42 setActive_];
  }

  v43 = [v16 leadingAnchor];
  v44 = [v4 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  [v45 setActive_];
  v46 = [v16 topAnchor];
  v47 = [v4 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:10.0];

  [v48 setActive_];
  v49 = [v16 superview];
  if (v49)
  {
    v50 = v49;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = [v16 trailingAnchor];
    v52 = [v50 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor_];

    [v53 setConstant_];
    [v53 setActive_];

    v54 = v50;
  }

  else
  {
    v54 = v55;
  }
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.cancelSheet()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v6);
  if (v6[3])
  {
    outlined init with copy of DBObject(v6, v3);
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v6);
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v6);
  }
}

id IneligibleForSyncOnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id IneligibleForSyncOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IneligibleForSyncOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized IneligibleForSyncOnboardingViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setContentMode_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel;
  closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel;
  *(v0 + v5) = closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel();
  v6 = v0 + OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ClientReflectionViewModel.promptIndex.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ClientReflectionViewModel.promptIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *ClientReflectionViewModel.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ClientReflectionViewModel.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ClientReflectionViewModel.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ClientReflectionViewModel.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ClientReflectionViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientReflectionViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientReflectionViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientReflectionViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientReflectionViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ClientReflectionViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for ReflectionView());
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  v5 = objc_allocWithZone(MEMORY[0x277D75220]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *&v3[v7] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *&v3[v8] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = *MEMORY[0x277D76560];
    v11 = one-time initialization token for accessibilityString;
    v12 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = static ReflectionView.Constants.accessibilityString;
    v14 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v15 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v16 = v12;
    *&v3[v14] = [v15 init];
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
    v36.receiver = v3;
    v36.super_class = type metadata accessor for AssetView();
    v19 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0xE8);
    v21 = v19;
    v20();
    AssetView.setFallBackView()();
    [v21 setIsAccessibilityElement_];
    v22 = [v21 accessibilityTraits];
    if ((v10 & ~v22) != 0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 0;
    }

    [v21 setAccessibilityTraits_];
    v24 = MEMORY[0x21CE91FC0](v13, *(&v13 + 1));
    [v21 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21658CA50;
    v26 = type metadata accessor for UITraitUserInterfaceStyle();
    v27 = MEMORY[0x277D74BF0];
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = v21;
    MEMORY[0x21CE92C30](v25, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v28 handleTraitChange];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    [v28 setClipsToBounds_];
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
    v30 = v28;
    v31 = v29;
    v32 = [v31 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = String.uppercased()();

      v35 = MEMORY[0x21CE91FC0](v34._countAndFlagsBits, v34._object);
    }

    else
    {
      v35 = 0;
    }

    [v31 setText_];

    ReflectionView.setupShuffleButton()();
    ReflectionView.setupText()();
    ReflectionView.addConstraints()();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClientReflectionViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientReflectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientReflectionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ReflectionViewModel.promptIndex.modify in conformance ClientReflectionViewModel(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x240))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

uint64_t specialized ClientReflectionViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBReflectionModel();
  if (swift_dynamicCast())
  {
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_prompts] = *(v26 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex] = 0;
    v10 = (v26 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
    if (*(v26 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      v11 = objc_opt_self();

      v12 = [v11 whiteColor];
    }

    else
    {
      v14 = v10[2];
      v13 = v10[3];
      v16 = *v10;
      v15 = v10[1];
      v17 = objc_allocWithZone(MEMORY[0x277D75348]);

      v12 = [v17 initWithRed:v16 green:v15 blue:v14 alpha:v13];
    }

    v18 = v12;
    swift_beginAccess();
    v19 = *&a2[v8];
    *&a2[v8] = v18;

    if (*(v26 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32))
    {
      v21 = [objc_opt_self() whiteColor];
    }

    else
    {
      v20 = (v26 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
      v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v20 green:v20[1] blue:v20[2] alpha:v20[3]];
    }

    v22 = v21;
    swift_beginAccess();
    v23 = *&a2[v9];
    *&a2[v9] = v22;

    swift_weakAssign();
    v24 = specialized AssetViewModel.init(dbObject:)(v26, a2);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientReflectionViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientReflectionViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientReflectionViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientReflectionViewModel()
{
  result = type metadata singleton initialization cache for ClientReflectionViewModel;
  if (!type metadata singleton initialization cache for ClientReflectionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientContactViewModel.name.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t ClientContactViewModel.profilePicture.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientContactViewModel.contactIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ClientContactViewModel.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t ClientContactViewModel.__allocating_init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientContactViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t ClientContactViewModel.init(dbObject:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientContactViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientContactViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientContactViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for ContactView());
  return ContactView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientContactViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientContactViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientContactViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized ClientContactViewModel.init(dbObject:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[3] = a3;
  v30[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = (a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v8 = 0;
  v8[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd);
  type metadata accessor for DBContactModel();
  if (swift_dynamicCast())
  {
    v9 = v28;
    v10 = *(v28 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v11 = *(v28 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    swift_beginAccess();
    *v8 = v10;
    v8[1] = v11;

    v13 = (*(*v28 + 408))(v12);
    if (v13)
    {
      v14 = v13;
      v15 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        goto LABEL_25;
      }

      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v26 = v9;
      v27 = a2;
      if (v16)
      {
        a2 = 0;
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x21CE93180](a2, v14);
            v9 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (a2 >= *(v15 + 16))
            {
              goto LABEL_24;
            }

            v18 = *(v14 + 8 * a2 + 32);

            v9 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v16 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v19 = objc_allocWithZone(type metadata accessor for ClientContactViewModel());
          v20 = specialized ClientContactViewModel.init(dbObject:)(v18, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v23[4] = v20;
          v23[5] = &protocol witness table for ClientContactViewModel;
          ++a2;
          if (v9 == v16)
          {
            goto LABEL_21;
          }
        }
      }

      v17 = MEMORY[0x277D84F90];
LABEL_21:

      a2 = v27;
      v9 = v26;
    }

    else
    {
      v17 = 0;
    }

    *(a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contacts) = v17;
    swift_weakAssign();
    v24 = specialized AssetViewModel.init(clientDBObject:)(v9, a2);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ClientContactViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientContactViewModel());
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientContactViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientContactViewModel()
{
  result = type metadata singleton initialization cache for ClientContactViewModel;
  if (!type metadata singleton initialization cache for ClientContactViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TipSuggestionViewModel.tip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s6TipKit0A0_pSgMd);
}

uint64_t TipSuggestionViewModel.tip.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  swift_beginAccess();
  outlined assign with take of Tip?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Tip?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TipSuggestionViewModel.__allocating_init(title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:tip:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v57 = a8;
  v66 = a7;
  v67 = a6;
  v68 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v51 = a1;
  v64 = a10;
  v65 = a13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v50 - v28;
  v30 = swift_allocObject();
  v60 = *a9;
  v61 = *v64;
  v31 = v30 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  v58 = a14;
  outlined init with copy of DBObject(a14, v70);
  swift_beginAccess();
  outlined assign with take of Tip?(v70, v31);
  swift_endAccess();
  outlined init with copy of DateInterval?(v68, v29, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v67, v27, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v66, v23, &_s10Foundation4UUIDVSgMd);
  v64 = v20;
  outlined init with copy of Client(v65, v20);
  UUID.init()();
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  (*(v15 + 56))(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v14);
  v33 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v34 = 0;
  v34[1] = 0;
  v56 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v52 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v59 = v15;
  v35 = *(v15 + 16);
  v62 = v17;
  v63 = v14;
  v35(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v17, v14);
  swift_beginAccess();
  v36 = v53;
  *v33 = v51;
  v33[1] = v36;
  swift_beginAccess();
  v37 = v55;
  *v34 = v54;
  v34[1] = v37;
  outlined init with copy of DateInterval?(v29, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  v38 = v57;
  outlined init with copy of DateInterval?(v27, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(v23, v30 + v32);
  swift_endAccess();
  if (v38)
  {
    v53 = v27;
    v39 = v59;
    v54 = v29;
    v40 = v58;
    v55 = v23;
    v41 = v65;
    v42 = v66;
    v43 = v67;
    v44 = v68;

    v69[0] = specialized Array._copyToContiguousArray()(v45);
    specialized MutableCollection<>.sort(by:)(v69);

    __swift_destroy_boxed_opaque_existential_1(v40);
    outlined destroy of Client(v41);
    outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v43, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd);
    (*(v39 + 8))(v62, v63);
    outlined destroy of UTType?(v55, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd);
    v46 = v69[0];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    outlined destroy of Client(v65);
    outlined destroy of UTType?(v66, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v67, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v68, &_s10Foundation4DateVSgMd);
    (*(v59 + 8))(v62, v63);
    outlined destroy of UTType?(v23, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd);
    v46 = 0;
  }

  v47 = v52;
  swift_beginAccess();
  *(v30 + v47) = v46;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v60;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v61;
  v48 = v56;
  swift_beginAccess();
  *(v30 + v48) = a11;
  outlined init with take of Client(v64, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a12;
  return v30;
}

uint64_t TipSuggestionViewModel.init(title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:tip:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v56 = a8;
  v65 = a7;
  v66 = a6;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v63 = a10;
  v64 = a13;
  v16 = type metadata accessor for UUID();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Client();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  v60 = *a9;
  v61 = *v63;
  v31 = v14 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  v58 = a14;
  outlined init with copy of DBObject(a14, v69);
  swift_beginAccess();
  outlined assign with take of Tip?(v69, v31);
  swift_endAccess();
  v59 = a5;
  outlined init with copy of DateInterval?(a5, v30, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v66, v28, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v65, v24, &_s10Foundation4UUIDVSgMd);
  v63 = v21;
  outlined init with copy of Client(v64, v21);
  UUID.init()();
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v33 = v67;
  (*(v67 + 56))(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v16);
  v34 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v35 = 0;
  v35[1] = 0;
  v57 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v51 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v36 = *(v33 + 16);
  v62 = v16;
  v36(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v18, v16);
  swift_beginAccess();
  v37 = v53;
  *v34 = v52;
  v34[1] = v37;
  swift_beginAccess();
  v38 = v55;
  *v35 = v54;
  v35[1] = v38;
  v39 = v56;
  outlined init with copy of DateInterval?(v30, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd);
  outlined init with copy of DateInterval?(v28, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd);
  swift_beginAccess();
  outlined assign with copy of UUID?(v24, v14 + v32);
  swift_endAccess();
  if (v39)
  {
    v52 = v28;
    v53 = v30;
    v40 = v58;
    v54 = v24;
    v41 = v64;
    v42 = v65;
    v55 = v18;
    v43 = v66;
    v44 = v59;

    v68[0] = specialized Array._copyToContiguousArray()(v45);
    specialized MutableCollection<>.sort(by:)(v68);

    __swift_destroy_boxed_opaque_existential_1(v40);
    outlined destroy of Client(v41);
    outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v43, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd);
    (*(v67 + 8))(v55, v62);
    outlined destroy of UTType?(v54, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v52, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd);
    v46 = v68[0];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    outlined destroy of Client(v64);
    outlined destroy of UTType?(v65, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v59, &_s10Foundation4DateVSgMd);
    (*(v67 + 8))(v18, v62);
    outlined destroy of UTType?(v24, &_s10Foundation4UUIDVSgMd);
    outlined destroy of UTType?(v28, &_s10Foundation4DateVSgMd);
    outlined destroy of UTType?(v30, &_s10Foundation4DateVSgMd);
    v46 = 0;
  }

  v47 = v51;
  swift_beginAccess();
  *(v14 + v47) = v46;

  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v60;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v61;
  v48 = v57;
  swift_beginAccess();
  v49 = *(v14 + v48);
  *(v14 + v48) = a11;

  outlined init with take of Client(v63, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a12;
  return v14;
}

uint64_t TipSuggestionViewModel.deinit()
{
  v0 = SuggestionViewModel.deinit();
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip, &_s6TipKit0A0_pSgMd);
  return v0;
}

uint64_t TipSuggestionViewModel.__deallocating_deinit()
{
  v0 = SuggestionViewModel.deinit();
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip, &_s6TipKit0A0_pSgMd);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipSuggestionViewModel()
{
  result = type metadata singleton initialization cache for TipSuggestionViewModel;
  if (!type metadata singleton initialization cache for TipSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MutablePhotoViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for DateInterval();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v17)
  {
    return 0;
  }

  v50 = v5;
  v51 = v17;
  v18 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v18, v12);
  v19 = v53;
  if ((*(v53 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v12);
    return 0;
  }

  (*(v19 + 32))(v15, v12, v13);
  (*(v2 + 16))(v52, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v21 = v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v49 = *v21;
  (*(v19 + 16))(v10, v15, v13);
  (*(v19 + 56))(v10, 0, 1, v13);
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v24 = *(v0 + v23);
  v25 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v26 = *(v25 + 16);
  v55[0] = *v25;
  v55[1] = v26;
  v56 = *(v25 + 32);
  v27 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v28 = *(v27 + 16);
  v57[0] = *v27;
  v57[1] = v28;
  v58 = *(v27 + 32);
  v29 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v30 = *(v29 + 16);
  v59[0] = *v29;
  v59[1] = v30;
  v60 = *(v29 + 32);
  v31 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  swift_beginAccess();
  v32 = v31[1];
  v47 = *v31;
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  swift_beginAccess();
  v34 = v33[1];
  v46 = *v33;
  v48 = v24;
  if (v24)
  {
    v43 = v34;

    v35 = v24;
    v36 = v16;

    v44 = v32;

    v37 = Image.uiImage.getter();
    v38 = v50;
    v45 = v35;
    if (v37)
    {

      v39 = 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = v43;
    v32 = v44;
  }

  else
  {
    v40 = v34;

    v41 = v16;

    v45 = 0;
    v39 = 0;
    v38 = v50;
  }

  v54[0] = v39;
  UUID.init()();
  type metadata accessor for DBPhotoModel();
  swift_allocObject();
  v42 = specialized DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(v38, v52, v16, v51, v49, v22, v10, v48, v55, v57, v59, v47, v32, v46, v40, v54);

  (*(v53 + 8))(v15, v13);
  return v42;
}

void one-time initialization function for localizedAppName()
{
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657D970;
  v2._object = 0x8000000216577C20;
  v5._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName = v4;
}

__int128 *SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName.unsafeMutableAddressor()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  return &static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;
}

uint64_t static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName.getter()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  v0 = static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;

  return v0;
}

uint64_t SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()()
{
  v1[10] = v0;
  v1[11] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v6;
  v1[25] = v5;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v6, v5);
}

{
  v1 = static MainActor.shared.getter();
  *(v0 + 208) = v1;
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *v2 = v0;
  v2[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  v3 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 272, v1, v3, 0xD000000000000024, 0x800000021657D940, closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), 0, &type metadata for ProtectedAppChallengeResult);
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v3, v2);
}

{
  if (*(v0 + 272))
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[showProtectedContentBannerIfNeeded] shield not needed", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    goto LABEL_14;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x800000021657D550);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];
  *(v0 + 224) = v8;

  if (!v8)
  {

LABEL_14:

    v22 = *(v0 + 8);

    return v22();
  }

  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 80);
  v10 = static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;
  v11 = objc_allocWithZone(MEMORY[0x277CEBEC8]);
  v12 = v8;
  v13 = MEMORY[0x21CE91FC0](v10, *(&v10 + 1));
  v14 = [v11 initWithLocalizedApplicationName:v13 iconImage:v12];
  *(v0 + 232) = v14;

  [v14 setDelegate_];
  v15 = v14;
  [v15 setHidden_];
  v16 = [v9 view];
  if (v16)
  {
    v19 = v16;
    [v16 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v20 = MEMORY[0x21CE91FC0](0x6569566E6F63695FLL, 0xE900000000000077);
    v21 = [v15 valueForKey_];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    *(v0 + 16) = v42;
    *(v0 + 32) = v43;
    if (*(v0 + 40))
    {
      type metadata accessor for UIImageView();
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 72);
        [v24 setTranslatesAutoresizingMaskIntoConstraints_];
        v25 = [v24 widthAnchor];
        v26 = [v25 constraintEqualToConstant_];

        [v26 setActive_];
        [v24 setTranslatesAutoresizingMaskIntoConstraints_];
        v27 = [v24 heightAnchor];
        v28 = [v27 constraintEqualToConstant_];

        [v28 setActive_];
      }
    }

    else
    {
      outlined destroy of Any?(v0 + 16);
    }

    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = *(v0 + 80);
    v33 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor_];

    v34 = [v15 layer];
    [v34 setZPosition_];

    v35 = (*MEMORY[0x277D85000] & *v32) + 464;
    v36 = *((*MEMORY[0x277D85000] & *v32) + 0x1D0);
    *(v0 + 240) = v36;
    *(v0 + 248) = v35 & 0xFFFFFFFFFFFFLL | 0x27F8000000000000;
    v37 = v36();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();

    specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v39, partial apply for closure #1 in ProtectedAppsManager.authenticate(), v38);

    v40 = v36();
    (*((*MEMORY[0x277D85000] & *v40) + 0xD0))();

    v41 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd);
    MEMORY[0x21CE912F0](v31, v41);
    (*(v30 + 8))(v29, v31);
    v16 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v17 = 0;
    v18 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  v3 = v0[12];

  return MEMORY[0x282200308](v0 + 273, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[13];
    v3 = v2[14];
    v5 = v2[12];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = *(v0 + 273);
  *(v0 + 274) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    (*(v4 + 8))(v2, v3);
    v5 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  }

  else
  {
    *(v0 + 264) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v7 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v5 = v8;
    v6 = v10;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), 0, 0);
}

{
  if (*(v0 + 274))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    (*(v3 + 8))(v1, v2);
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);

    return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v4, v5);
  }

  else
  {
    v6 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd);
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v8 = *(v0 + 96);

    return MEMORY[0x282200308](v0 + 273, v8, v6);
  }
}

{
  v13 = v0;
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[10];

  v5 = v1([v2 removeFromSuperview]);
  v12[3] = type metadata accessor for SuggestionCollectionViewController(0);
  v12[4] = &protocol witness table for SuggestionCollectionViewController;
  v12[0] = v4;
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
  v4;
  v6(v12);

  v8 = v1(v7);

  ProtectedAppsManager.subscribeToChanges(apps:)(v9);

  v10 = v0[1];

  return v10();
}

uint64_t closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  (*(v3 + 16))(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  swift_beginAccess();

  specialized static ProtectedAppsManager.requiresChallenge(appSources:completion:)(v8, partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v7);
}

uint64_t SuggestionCollectionViewController.shieldViewUnlockButtonPressed(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();

  specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v3, closure #1 in ProtectedAppsManager.authenticate()partial apply, v2);
}

unint64_t type metadata accessor for UIImageView()
{
  result = lazy cache variable for type metadata for UIImageView;
  if (!lazy cache variable for type metadata for UIImageView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImageView);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Suggestion.urlsForTransfer()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  *(v0 + 136) = v1;
  if (!v1)
  {
    v3 = 0;
LABEL_35:

    v24 = *(v0 + 8);

    return v24(v3);
  }

  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  *(v0 + 144) = result;
  v3 = MEMORY[0x277D84F90];
  if (!result)
  {
    goto LABEL_35;
  }

  if (result >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D85000];
    while (1)
    {
      *(v0 + 152) = v4;
      *(v0 + 160) = v3;
      v8 = *(v0 + 136);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180]();
      }

      else
      {
        v9 = *(v8 + 8 * v4 + 32);
      }

      v7 = v9;
      *(v0 + 168) = v9;
      v10 = *&v9[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v10)
      {
        goto LABEL_9;
      }

      if (v10 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_9;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CE93180](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_48:
          result = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;
      *(v0 + 176) = v11;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        type metadata accessor for TransferPhotoViewModel();
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          v6 = (*((*v5 & *v14) + 0x298))();
          *(v0 + 184) = v6;
          if (v6)
          {
            v25 = *((*v5 & *v6) + 0x90);
            v35 = (v25 + *v25);
            v26 = swift_task_alloc();
            *(v0 + 192) = v26;
            *v26 = v0;
            v26[1] = Suggestion.urlsForTransfer();
            v30 = *(v0 + 48);
LABEL_39:
            v27 = v35;

            return v27(v30);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel();
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = (*((*v5 & *v15) + 0x298))();
            *(v0 + 200) = v16;
            if (v16)
            {
              v28 = *((*v5 & *v16) + 0xA8);
              v36 = (v28 + *v28);
              v29 = swift_task_alloc();
              *(v0 + 208) = v29;
              *v29 = v0;
              v29[1] = Suggestion.urlsForTransfer();
              v30 = *(v0 + 40);
LABEL_43:
              v27 = v36;

              return v27(v30);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel();
            v17 = swift_dynamicCastClass();
            *(v0 + 216) = v17;
            if (v17)
            {
              v18 = *((*v5 & *v17) + 0x2A0);
              v19 = v12;
              v20 = v18();
              *(v0 + 224) = v20;

              if (v20)
              {
                v31 = *((*v5 & *v20) + 0xA8);
                v36 = (v31 + *v31);
                v32 = swift_task_alloc();
                *(v0 + 232) = v32;
                *v32 = v0;
                v32[1] = Suggestion.urlsForTransfer();
                v30 = *(v0 + 32);
                goto LABEL_43;
              }

              *(v0 + 240) = v3;
              v21 = *((*v5 & **(v0 + 216)) + 0x2B8);
              v22 = *(v0 + 176);
              v23 = v21();
              *(v0 + 248) = v23;

              if (v23)
              {
                v33 = *((*v5 & *v23) + 0x90);
                v35 = (v33 + *v33);
                v34 = swift_task_alloc();
                *(v0 + 256) = v34;
                *v34 = v0;
                v34[1] = Suggestion.urlsForTransfer();
                v30 = *(v0 + 24);
                goto LABEL_39;
              }

              v7 = *(v0 + 168);
              v12 = *(v0 + 176);
            }
          }
        }
      }

      v7 = v12;
LABEL_9:

      v4 = *(v0 + 152) + 1;
      if (v4 == *(v0 + 144))
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
  return result;
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 160);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v6);
          }

          v12 = *(v0 + 184);
          v13 = *(v0 + 168);
          v15 = *(v0 + 120);
          v14 = *(v0 + 128);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel();
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 176);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 160);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v6);
          }

          v12 = *(v0 + 200);
          v13 = *(v0 + 168);
          v15 = *(v0 + 104);
          v14 = *(v0 + 112);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel();
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(v3);
    v4 = *(v0 + 160);
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_50:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v10 = v4[2];
    v9 = v4[3];
    if (v10 >= v9 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v10 + 1, 1, v4);
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);

    (*(v14 + 8))(v11, v13);
    v4[2] = v10 + 1;
    v7(v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12, v13);
  }

  v15 = MEMORY[0x277D85000];
LABEL_8:
  *(v0 + 240) = v4;
  v16 = *(v0 + 216);
  v17 = *((*v15 & *v16) + 0x2B8);
  v7 = ((*v15 & *v16) + 696);
  v18 = *(v0 + 176);
  v19 = v17();
  *(v0 + 248) = v19;

  if (!v19)
  {
    v20 = *(v0 + 176);

    while (1)
    {
      v22 = *(v0 + 152) + 1;
      if (v22 == *(v0 + 144))
      {

        v39 = *(v0 + 8);

        return v39(v4);
      }

      *(v0 + 152) = v22;
      *(v0 + 160) = v4;
      v23 = *(v0 + 136);
      v24 = (v23 & 0xC000000000000001) != 0 ? MEMORY[0x21CE93180]() : *(v23 + 8 * v22 + 32);
      v25 = v24;
      *(v0 + 168) = v24;
      v26 = *&v24[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        break;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          break;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_50;
        }

        v27 = *(v26 + 32);
      }

      v21 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v28 = v21 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        type metadata accessor for TransferPhotoViewModel();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = (*((*v15 & *v29) + 0x298))();
          *(v0 + 184) = v30;
          if (v30)
          {
            v41 = *((*v15 & *v30) + 0x90);
            v49 = (v41 + *v41);
            v42 = swift_task_alloc();
            *(v0 + 192) = v42;
            *v42 = v0;
            v42[1] = Suggestion.urlsForTransfer();
            v43 = *(v0 + 48);
            goto LABEL_46;
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v15 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v44 = *((*v15 & *v32) + 0xA8);
              v50 = (v44 + *v44);
              v45 = swift_task_alloc();
              *(v0 + 208) = v45;
              *v45 = v0;
              v45[1] = Suggestion.urlsForTransfer();
              v43 = *(v0 + 40);
LABEL_42:
              v46 = v50;

              return v46(v43);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel();
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v15 & *v33) + 0x2A0);
              v35 = v21;
              v36 = v34();
              *(v0 + 224) = v36;

              if (!v36)
              {
                goto LABEL_8;
              }

              v37 = *((*v15 & *v36) + 0xA8);
              v50 = (v37 + *v37);
              v38 = swift_task_alloc();
              *(v0 + 232) = v38;
              *v38 = v0;
              v38[1] = Suggestion.urlsForTransfer();
              v43 = *(v0 + 32);
              goto LABEL_42;
            }
          }
        }
      }

LABEL_11:
    }

    v21 = v25;
    goto LABEL_11;
  }

  v47 = *((*v15 & *v19) + 0x90);
  v49 = (v47 + *v47);
  v48 = swift_task_alloc();
  *(v0 + 256) = v48;
  *v48 = v0;
  v48[1] = Suggestion.urlsForTransfer();
  v43 = *(v0 + 24);
LABEL_46:
  v46 = v49;

  return v46(v43);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 176);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 240);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v6);
          }

          v12 = *(v0 + 248);
          v13 = *(v0 + 168);
          v15 = *(v0 + 72);
          v14 = *(v0 + 80);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel();
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel();
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

Swift::OpaquePointer_optional __swiftcall Suggestion.urlBasedAssetsForTransfer()()
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  if (v2)
  {
    if (v2 >> 62)
    {
      goto LABEL_52;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      do
      {
        if (v3 < 1)
        {
          __break(1u);
          goto LABEL_56;
        }

        v4 = 0;
        v5 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CE93180](v4, v2);
          }

          else
          {
            v7 = *(v2 + 8 * v4 + 32);
          }

          v8 = v7;
          v9 = *&v7[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
          if (!v9)
          {
            goto LABEL_7;
          }

          if (v9 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_7;
            }
          }

          else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_7;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CE93180](0, v9);
            goto LABEL_18;
          }

          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v10 = *(v9 + 32);
LABEL_18:
          v11 = v10;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            type metadata accessor for TransferPhotoViewModel();
            v13 = swift_dynamicCastClass();
            if (v13)
            {
              v14 = (*((*MEMORY[0x277D85000] & *v13) + 0x298))();
              if (v14)
              {
                v15 = v14;
                goto LABEL_25;
              }
            }

            else
            {
              type metadata accessor for TransferVideoViewModel();
              v21 = swift_dynamicCastClass();
              if (v21)
              {
                v22 = (*((*MEMORY[0x277D85000] & *v21) + 0x298))();
                if (v22)
                {
                  v15 = v22;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                  }

                  v17 = v5[2];
                  v23 = v5[3];
                  v18 = v17 + 1;
                  if (v17 >= v23 >> 1)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 1, 1, v5);
                  }

                  v19 = type metadata accessor for URLBasedVideo();
                  v20 = &protocol witness table for URLBasedVideo;
                  goto LABEL_37;
                }
              }

              else
              {
                type metadata accessor for TransferLivePhotoViewModel();
                v24 = swift_dynamicCastClass();
                if (v24)
                {
                  v25 = v24;
                  v26 = *((*MEMORY[0x277D85000] & *v24) + 0x2A0);
                  v27 = v11;
                  v28 = v26();

                  if (v28)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                    }

                    v30 = v5[2];
                    v29 = v5[3];
                    if (v30 >= v29 >> 1)
                    {
                      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v5);
                    }

                    v33 = type metadata accessor for URLBasedVideo();
                    v34 = &protocol witness table for URLBasedVideo;
                    *&v32 = v28;
                    v5[2] = v30 + 1;
                    outlined init with take of MusicPlaybackCoordinatorDelegate(&v32, &v5[5 * v30 + 4]);
                  }

                  v31 = *((*MEMORY[0x277D85000] & *v25) + 0x2B8);
                  v11 = v27;
                  v15 = v31();

                  if (!v15)
                  {

                    goto LABEL_8;
                  }

LABEL_25:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                  }

                  v17 = v5[2];
                  v16 = v5[3];
                  v18 = v17 + 1;
                  if (v17 >= v16 >> 1)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
                  }

                  v19 = type metadata accessor for URLBasedImage();
                  v20 = &protocol witness table for URLBasedImage;
LABEL_37:
                  v33 = v19;
                  v34 = v20;
                  *&v32 = v15;
                  v5[2] = v18;
                  outlined init with take of MusicPlaybackCoordinatorDelegate(&v32, &v5[5 * v17 + 4]);
                  goto LABEL_8;
                }
              }
            }
          }

LABEL_7:
LABEL_8:
          if (v3 == ++v4)
          {
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_52:
        v0 = __CocoaSet.count.getter();
        v3 = v0;
      }

      while (v0);
    }

    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = 0;
  }

LABEL_54:
  v0 = v5;
LABEL_56:
  result.value._rawValue = v0;
  result.is_nil = v6;
  return result;
}

uint64_t MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t MediaPlaybackListener.trackIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MediaPlaybackListener.trackIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *MediaPlaybackListener.viewModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void MediaPlaybackListener.viewModel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

float MediaPlaybackListener.playbackState.getter@<S0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 52);
  *a1 = result;
  *(a1 + 4) = v4;
  return result;
}

uint64_t MediaPlaybackListener.playbackState.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 52) = v3;
  return result;
}

uint64_t MediaPlaybackListener.observers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t MediaPlaybackListener.init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized MediaPlaybackListener.init(viewModel:trackIdentifier:)(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t MediaPlaybackListener.deinit()
{

  return v0;
}

uint64_t MediaPlaybackListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MediaPlaybackListener.didReceiveShouldPlayNotification()(char *a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = v2;
  if (one-time initialization token for viewModel != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.viewModel);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, a1, v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    a1 = v25;
    v10 = (*(*v5 + 176))(v25);
    *(v11 + 4) = v3;
    v12 = v10(v25, 0);
    result = (*(*v5 + 184))(v12);
    if (!result)
    {
      break;
    }

    v3 = result;
    v22 = *(result + 16);
    if (!v22)
    {
    }

    v14 = 0;
    v15 = (result + 40);
    while (v14 < *(v3 + 16))
    {
      ++v14;
      a1 = *v15;
      ObjectType = swift_getObjectType();
      v17 = *(*v5 + 136);
      v18 = swift_unknownObjectRetain();
      v19 = v17(v18);
      v21 = v20;
      (*(*v5 + 160))(v25);
      v23 = v25[0];
      v24 = BYTE4(v25[0]);
      (*(a1 + 1))(v19, v21, &v23, ObjectType, a1);

      swift_unknownObjectRelease();
      v15 += 2;
      if (v22 == v14)
      {
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  return result;
}

Swift::Void __swiftcall MediaPlaybackListener.didReceiveProgressNotification(_:)(Swift::Float a1)
{
  v3 = (*(*v1 + 176))(v20);
  *v4 = a1;
  v5 = v3(v20, 0);
  v6 = (*(*v1 + 184))(v5);
  if (v6)
  {
    v7 = v6;
    v17 = *(v6 + 16);
    if (v17)
    {
      v8 = 0;
      v9 = (v6 + 40);
      while (v8 < *(v7 + 16))
      {
        ++v8;
        v10 = *v9;
        ObjectType = swift_getObjectType();
        v12 = *(*v1 + 136);
        v13 = swift_unknownObjectRetain();
        v14 = v12(v13);
        v16 = v15;
        (*(*v1 + 160))(v20);
        v18 = v20[0];
        v19 = BYTE4(v20[0]);
        (*(v10 + 8))(v14, v16, &v18, ObjectType, v10);

        swift_unknownObjectRelease();
        v9 += 2;
        if (v17 == v8)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t specialized MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for MediaPlaybackListener();
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 52) = 0;
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 56) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a6;
  return v10;
}

uint64_t specialized MediaPlaybackListener.init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 48) = 0;
  *(a4 + 52) = 0;
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  v11 = (a4 + 16);
  *(a4 + 56) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *v11 = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = a1;
  *(a4 + 40) = a6;
  return a4;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x21CE93020](v3, v5, v6, v7);
    outlined consume of Set<UIScene>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t SuggestionCollectionViewSection.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SuggestionCollectionViewSection.items.getter()
{
  type metadata accessor for SuggestionCollectionViewSection(0);
}

uint64_t SuggestionCollectionViewSection.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v1 + *(type metadata accessor for SuggestionCollectionViewSection(0) + 20));
  if (v3 >> 62)
  {
    v8 = __CocoaSet.count.getter();
    MEMORY[0x21CE937C0](v8);
    result = __CocoaSet.count.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x21CE937C0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CE93180](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      (*(*v7 + 336))(a1);
    }
  }

  return result;
}

uint64_t SuggestionCollectionViewSection.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for SuggestionCollectionViewSection(0) + 20));
  if (!(v1 >> 62))
  {
    result = MEMORY[0x21CE937C0](*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x21CE937C0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      (*(*v5 + 336))(v7);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewSection.init(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  result = type metadata accessor for SuggestionCollectionViewSection(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionCollectionViewSection(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (!(v4 >> 62))
  {
    result = MEMORY[0x21CE937C0](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v9 = __CocoaSet.count.getter();
  MEMORY[0x21CE937C0](v9);
  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      (*(*v8 + 336))(v10);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewController.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sessionUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *SuggestionCollectionViewController.dataSource.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewController.dataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *SuggestionCollectionViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewController.collectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SuggestionCollectionViewController.sections.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SuggestionCollectionViewController.cloudManager.setter()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*SuggestionCollectionViewController.cloudManager.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_cloudManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SuggestionCollectionViewController.cloudManager.modify;
}

void SuggestionCollectionViewController.cloudManager.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t SuggestionCollectionViewController.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
}

uint64_t SuggestionCollectionViewController.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate;
  swift_beginAccess();
  outlined assign with take of SuggestionCollectionViewControllerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of SuggestionCollectionViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SuggestionCollectionViewController.protectedContentManager.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SuggestionCollectionViewController.protectedContentManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id closure #1 in variable initialization expression of SuggestionCollectionViewController.suggestionSegmentedControl()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658CA60;
  type metadata accessor for SuggestionCollectionViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4._object = 0xEB00000000646564;
  v16._object = 0xEB00000000646564;
  v4._countAndFlagsBits = 0x6E656D6D6F636552;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x6E656D6D6F636552;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v7 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = v6;
  v8 = [v2 bundleForClass_];
  v17._object = 0xE600000000000000;
  v9._countAndFlagsBits = 0x746E65636552;
  v9._object = 0xE600000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x746E65636552;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v17);

  *(v0 + 88) = v7;
  *(v0 + 64) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277D75A08]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithItems_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setSelectedSegmentIndex_];
  [v14 setEnabled_];
  [v14 _setUseGlass_];
  return v14;
}

uint64_t SuggestionCollectionViewController.contentStateSubscription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.downloadingContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3._countAndFlagsBits = 0xD00000000000004ALL;
  v12._object = 0x800000021657D9F0;
  v3._object = 0x800000021657E250;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v5 = [v1 bundleForClass_];
  v6._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x800000021657D9F0;
  v6._object = 0x800000021657E2A0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.text.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.upgradingContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v12._object = 0x800000021657E210;
  v3._object = 0x800000021657E1E0;
  v12._countAndFlagsBits = 0xD000000000000037;
  v3._countAndFlagsBits = 0xD000000000000020;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.text.setter();
  v5 = [v1 bundleForClass_];
  v13._object = 0x800000021657E1B0;
  v6._countAndFlagsBits = 0xD00000000000004ELL;
  v6._object = 0x800000021657E160;
  v13._countAndFlagsBits = 0xD000000000000027;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.firstTimeContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v12._object = 0x800000021657E130;
  v3._object = 0x800000021657E100;
  v12._countAndFlagsBits = 0xD000000000000029;
  v3._countAndFlagsBits = 0xD000000000000021;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.text.setter();
  v5 = [v1 bundleForClass_];
  v13._object = 0x800000021657E1B0;
  v6._countAndFlagsBits = 0xD00000000000004ELL;
  v6._object = 0x800000021657E160;
  v13._countAndFlagsBits = 0xD000000000000027;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

Swift::Void __swiftcall SuggestionCollectionViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for SuggestionCollectionViewController(0);
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 connectedScenes];
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIScene);
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Collection.first.getter(v6);

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 interfaceOrientation];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }

    if (UIInterfaceOrientationIsLandscape(v9))
    {
      v10 = 0.6;
    }

    else
    {
      v10 = 0.85;
    }

    v11 = [v3 sharedApplication];
    v12 = [v11 connectedScenes];
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Collection.first.getter(v13);

    if (v14)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 interfaceOrientation];
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 1;
    }

    if (UIInterfaceOrientationIsLandscape(v16))
    {
      v17 = 0.85;
    }

    else
    {
      v17 = 0.6;
    }

    v18 = [v0 view];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = v27;
      Width = CGRectGetWidth(v41);
      v29 = [v0 view];
      if (v29)
      {
        v30 = v29;
        v31 = v10 * Width;
        [v29 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v42.origin.x = v33;
        v42.origin.y = v35;
        v42.size.width = v37;
        v42.size.height = v39;
        [v0 setPreferredContentSize_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v62 = a2;
  v63 = a3;
  v65 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v59 - v10;
  v11 = type metadata accessor for Client();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sections] = MEMORY[0x277D84F90];
  swift_weakInit();
  v15 = &v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for PrivacyBadgeView()) initWithFrame_];
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView] = 0;
  v17 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  *&v5[v17] = [objc_allocWithZone(type metadata accessor for ProtectedAppsManager()) init];
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
  *&v5[v18] = closure #1 in variable initialization expression of SuggestionCollectionViewController.suggestionSegmentedControl();
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel] = 0;
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription] = 0;
  static UIContentUnavailableConfiguration.loading()();
  static UIContentUnavailableConfiguration.empty()();
  v19 = type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v68._object = 0x800000021657D9F0;
  v22._countAndFlagsBits = 0x6567677553206F4ELL;
  v22._object = 0xEE00736E6F697473;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v68);

  v24 = v62;
  UIContentUnavailableConfiguration.text.setter();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.downloadingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.upgradingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.firstTimeContentConfiguration();
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasPresentedOnboarding] = 0;
  outlined init with copy of Client(v24, &v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client], type metadata accessor for Client);
  swift_unknownObjectWeakAssign();
  v67.receiver = v5;
  v67.super_class = v19;
  v25 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v27 = v25;
  v28 = [v26 initWithBarButtonSystemItem:24 target:v27 action:sel_cancelSheet];
  (*((*MEMORY[0x277D85000] & *v27) + 0x378))();
  v29 = v27;
  v30 = [v29 navigationItem];
  [v30 setLeftBarButtonItem_];

  v31 = [v29 navigationItem];
  v32 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
  [v31 setTitleView_];

  v33 = *(v29 + v32);
  [v33 addTarget:v29 action:sel_pressedSegmentControl forControlEvents:4096];

  v34 = (v24 + *(v12 + 36));
  v35 = *v34;
  v36 = v34[1];
  v37 = objc_allocWithZone(type metadata accessor for PrivacyOnboardingView());

  PrivacyOnboardingView.init(clientDisplayName:)(v35, v36);
  v38 = *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView) = v39;

  outlined init with copy of Client(v24, v14, type metadata accessor for Client);
  type metadata accessor for SuggestionCollectionViewModel();
  swift_allocObject();
  v40 = v63;

  v41 = a4;
  v42 = SuggestionCollectionViewModel.init(suggestionViewModels:client:cloudManager:options:)(0, v14, v40, a4);
  v43 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel;
  *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel) = v42;

  v44 = *(v29 + v43);
  if (v44)
  {

    (*(*v44 + 800))([v29 traitCollection]);

    v44 = *(v29 + v43);
    if (v44)
    {
      v45 = v24;
      v66[3] = v19;
      v66[4] = &protocol witness table for SuggestionCollectionViewController;
      v66[0] = v29;
      v46 = *(*v44 + 376);
      v47 = v29;

      v46(v66);

      v44 = *(v29 + v43);
      if (v44)
      {
        v48 = *(*v44 + 896);

        v50 = v59;
        v48(v49);

        *(swift_allocObject() + 16) = v47;
        lazy protocol witness table accessor for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher();
        v51 = v47;
        v52 = v61;
        v44 = Publisher<>.sink(receiveValue:)();

        (*(v60 + 8))(v50, v52);
      }

      v24 = v45;
    }
  }

  v53 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription;
  swift_beginAccess();
  *(v29 + v53) = v44;

  SuggestionCollectionViewController.configureViewsAndLayouts()();
  SuggestionCollectionViewController.configureDataSource()();
  v54 = type metadata accessor for TaskPriority();
  v55 = v64;
  (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v29;
  v57 = v29;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v56);

  _s9MomentsUI6ClientVWOhTm_0(v24, type metadata accessor for Client);
  outlined destroy of UTType?(v55, &_sScPSgMd);
  return v57;
}

uint64_t closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v6);
}

uint64_t closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v6, v5);
}

uint64_t closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewController] received contentState update", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setNeedsUpdateContentUnavailableConfiguration];
  }

  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureViewsAndLayouts()()
{
  SuggestionCollectionViewController.createLayout()(v0);
  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{v7, v9, v11, v13}];
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v16 = v14;
  v15(v14);
  [v16 setDelegate_];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  [v20 insertSubview:v18 atIndex:0];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  if (_UISolariumEnabled())
  {
    v24 = [v17 whiteColor];
    v25 = [v24 colorWithAlphaComponent_];
  }

  else
  {
    v25 = [v17 systemBackgroundColor];
  }

  [v23 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_216590220;
  v27 = [v18 topAnchor];
  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v31;
  v32 = [v18 bottomAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v26 + 40) = v36;
  v37 = [v18 leadingAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v26 + 48) = v41;
  v42 = [v18 trailingAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v42 constraintEqualToAnchor_];
  *(v26 + 56) = v47;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints_];
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureDataSource()()
{
  v1 = v0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v93 = *(v103 - 8);
  v89 = *(v93 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v90 = *(v3 - 8);
  v87 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = &v67 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v88 = *(v108 - 8);
  v85 = *(v88 + 64);
  MEMORY[0x28223BE20](v108);
  v101 = &v67 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd);
  v86 = *(v107 - 8);
  v83 = *(v86 + 64);
  MEMORY[0x28223BE20](v107);
  v100 = &v67 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd);
  v84 = *(v106 - 8);
  v82 = *(v84 + 64);
  MEMORY[0x28223BE20](v106);
  v99 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI014ShowMoreFooterB0CGMd);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  MEMORY[0x28223BE20](v9);
  v105 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI017SectionDateHeaderB0CGMd);
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = v23;
    v28 = v1;
    v29 = v16;
    v30 = v3;
    v31 = v18;
    v32 = v17;
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v25, v26, v34, "UIService_FetchCollectionViewDataSource", "", v33, 2u);
    v35 = v33;
    v17 = v32;
    v18 = v31;
    v3 = v30;
    v16 = v29;
    v1 = v28;
    v23 = v27;
    MEMORY[0x21CE94770](v35, -1, -1);
  }

  (*(v18 + 16))(v21, v23, v17);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v36 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = (*((*MEMORY[0x277D85000] & *v1) + 0x128))();
  if (v37)
  {
    v38 = v37;
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v73 = __swift_project_value_buffer(v107, static MosaicCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v75 = v23;
    v72 = __swift_project_value_buffer(v106, static SuggestionListCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v74 = v36;
    v76 = v18;
    v71 = __swift_project_value_buffer(v108, static EvergreenCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v77 = v17;
    v70 = __swift_project_value_buffer(v3, static MessageCollectionViewCell.registration);
    v97 = v3;
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v39 = v103;
    v68 = __swift_project_value_buffer(v103, static TipCollectionViewCell.registration);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for SectionDateHeaderView();
    v96 = v16;
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    v69 = v1;
    swift_unknownObjectWeakInit();
    type metadata accessor for ShowMoreFooterView();
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    swift_unknownObjectWeakInit();
    v98 = v38;
    MEMORY[0x21CE948B0](v109);
    v40 = v84;
    (*(v84 + 16))(v99, v72, v106);
    v41 = v86;
    (*(v86 + 16))(v100, v73, v107);
    v42 = v88;
    (*(v88 + 16))(v101, v71, v108);
    v43 = v90;
    (*(v90 + 16))(v102, v70, v97);
    v44 = v93;
    (*(v93 + 16))(v104, v68, v39);
    v45 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v46 = (v82 + *(v41 + 80) + v45) & ~*(v41 + 80);
    v47 = (v83 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v48 = (v85 + *(v43 + 80) + v47) & ~*(v43 + 80);
    v87 = (v87 + *(v44 + 80) + v48) & ~*(v44 + 80);
    v49 = swift_allocObject();
    (*(v40 + 32))(v49 + v45, v99, v106);
    (*(v41 + 32))(v49 + v46, v100, v107);
    (*(v42 + 32))(v49 + v47, v101, v108);
    (*(v43 + 32))(v49 + v48, v102, v97);
    (*(v44 + 32))(v49 + v87, v104, v103);
    v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy9MomentsUI020SuggestionCollectionC7SectionVAD0iC5ModelCGMd));
    v51 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v52 = v69;
    v53 = MEMORY[0x277D85000];
    v54 = (*((*MEMORY[0x277D85000] & *v69) + 0x118))(v51);
    v55 = (*((*v53 & *v52) + 0x110))(v54);
    if (v55)
    {
      v56 = v55;
      v58 = v91;
      v57 = v92;
      v59 = v79;
      (*(v91 + 16))(v79, v96, v92);
      v61 = v94;
      v60 = v95;
      v62 = v81;
      (*(v94 + 16))(v81, v105, v95);
      v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v64 = (v78 + *(v61 + 80) + v63) & ~*(v61 + 80);
      v65 = swift_allocObject();
      (*(v58 + 32))(v65 + v63, v59, v57);
      (*(v61 + 32))(v65 + v64, v62, v60);
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

      v66 = v105;
      v36 = v74;
    }

    else
    {
      v61 = v94;
      v60 = v95;
      v66 = v105;
      v58 = v91;
      v57 = v92;
      v36 = v74;
      v56 = v98;
    }

    (*(v61 + 8))(v66, v60);
    (*(v58 + 8))(v96, v57);
    v17 = v77;
    v18 = v76;
    v23 = v75;
  }

  $defer #1 () in SuggestionCollectionViewController.configureDataSource()(v36, "UIService_FetchCollectionViewDataSource");

  (*(v18 + 8))(v23, v17);
}