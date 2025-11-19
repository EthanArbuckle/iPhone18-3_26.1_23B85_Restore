void (*sub_190A17D18(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  *(v3 + 120) = v1;
  *(v3 + 128) = v4;
  swift_beginAccess();
  return sub_190A17DA0;
}

void sub_190A17DA0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[15];
    v5 = v3[16];
    v6 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if (v9 >= v7)
    {
      v9 = v7;
    }

    if (*(v4 + v5) < v9)
    {
      v9 = *(v4 + v5);
    }

    [*(v4 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel) setAlpha_];
    v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
    swift_beginAccess();
    v11 = *(v4 + v10);
    v12 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
    swift_beginAccess();
    v13 = *(v4 + v12);
    if (v13 >= v11)
    {
      v13 = v11;
    }

    if (*(v4 + v5) >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(v4 + v5);
    }

    [*(v4 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView) setAlpha_];
    v15 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
    swift_beginAccess();
    v17 = *(v4 + v15);
    if (v17)
    {
      *&v16 = v14;
      [v17 setOpacity_];
    }
  }

  free(v3);
}

void sub_190A17F0C()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for SendMenuCollectionViewCell();
  objc_msgSendSuper2(&v51, sel_prepareForReuse);
  v2 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity;
  swift_beginAccess();
  *&v0[v2] = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity;
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity;
  swift_beginAccess();
  v6 = *&v0[v5];
  if (v6 >= v4)
  {
    v6 = v4;
  }

  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  v7 = *&v0[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabel];
  [v7 setAlpha_];
  v8 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity;
  swift_beginAccess();
  v11 = *&v1[v10];
  if (v11 >= v9)
  {
    v11 = v9;
  }

  if (*&v1[v2] >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *&v1[v2];
  }

  v13 = *&v1[OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageView];
  [v13 setAlpha_];
  v14 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer;
  swift_beginAccess();
  v16 = *&v1[v14];
  if (v16)
  {
    *&v15 = v12;
    [v16 setOpacity_];
  }

  *&v1[v8] = 0x3FF0000000000000;
  v17 = *&v1[v10];
  v18 = *&v1[v2];
  v19 = fmin(v18, 1.0);
  if (v18 >= v17)
  {
    v18 = *&v1[v10];
  }

  if (v17 >= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  [v13 setAlpha_];
  v22 = *&v1[v14];
  if (v22)
  {
    *&v21 = v20;
    [v22 setOpacity_];
  }

  *&v1[v10] = 0x3FF0000000000000;
  v23 = *&v1[v8];
  v24 = *&v1[v2];
  v25 = fmin(v24, 1.0);
  if (v24 >= v23)
  {
    v24 = *&v1[v8];
  }

  if (v23 <= 1.0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [v13 setAlpha_];
  v28 = *&v1[v14];
  if (v28)
  {
    *&v27 = v26;
    [v28 setOpacity_];
  }

  *&v1[v3] = 0x3FF0000000000000;
  v29 = *&v1[v5];
  v30 = *&v1[v2];
  v31 = fmin(v30, 1.0);
  if (v30 >= v29)
  {
    v30 = *&v1[v5];
  }

  if (v29 >= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  [v7 setAlpha_];
  *&v1[v5] = 0x3FF0000000000000;
  v33 = *&v1[v3];
  v34 = *&v1[v2];
  v35 = fmin(v34, 1.0);
  if (v34 >= v33)
  {
    v34 = *&v1[v3];
  }

  if (v33 <= 1.0)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  [v7 setAlpha_];
  v37 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *&v1[v37] = 0;
  v38 = 0.0;
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v40 = 0.0;
  if (!IsReduceTransparencyEnabled)
  {
    v41 = *&v1[v37];
    v42 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v40 = *&v1[v42];
    if (v41 > v40)
    {
      v40 = v41;
    }
  }

  sub_190A18960(v40);
  v43 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  *&v1[v43] = 0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (*&v1[v37] > *&v1[v43])
    {
      v38 = *&v1[v37];
    }

    else
    {
      v38 = *&v1[v43];
    }
  }

  sub_190A18960(v38);
  v44 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius;
  swift_beginAccess();
  *&v1[v44] = 0;
  v45 = 0.0;
  v46 = UIAccessibilityIsReduceTransparencyEnabled();
  v47 = 0.0;
  if (!v46)
  {
    v48 = *&v1[v44];
    v49 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
    swift_beginAccess();
    v47 = *&v1[v49];
    if (v48 > v47)
    {
      v47 = v48;
    }
  }

  sub_190A18960(v47);
  v50 = OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius;
  swift_beginAccess();
  *&v1[v50] = 0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (*&v1[v44] > *&v1[v50])
    {
      v45 = *&v1[v44];
    }

    else
    {
      v45 = *&v1[v50];
    }
  }

  sub_190A18960(v45);
}

UIPointerRegion_optional __swiftcall SendMenuCollectionViewCell.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v4 = defaultRegion.super.isa;
  isa = defaultRegion.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v5;
  return result;
}

id sub_190A18658()
{
  v1 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView____lazy_storage___blurFilter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v5 = sub_190D574E0();
    [v4 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_190A18710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for SendMenuCellBlurContainerView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

double sub_190A18840()
{
  v1 = 0.0;
  if (*(v0 + OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter) == 1)
  {
    v2 = [v0 layer];
    v3 = sub_190D56ED0();
    v4 = [v2 valueForKeyPath_];

    if (v4)
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
      sub_19021E7D8(v9);
    }
  }

  return v1;
}

void sub_190A18960(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
  if (a1 > 0.0 && (v1[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter] & 1) == 0)
  {
    v4 = [v1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD1D90;
    v6 = sub_190A18658();
    *(v5 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
    *(v5 + 32) = v6;
    v7 = sub_190D57160();

    [v4 setFilters_];

    v1[v3] = 1;
    v3 = OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_hasActiveBlurFilter;
  }

  if (v1[v3] == 1)
  {
    v8 = [v1 layer];
    v9 = sub_190D51C70();
    v10 = sub_190D56ED0();
    [v8 setValue:v9 forKeyPath:v10];
  }

  else
  {
    v9 = sub_190A18658();
    v10 = sub_190D51C70();
    [v9 setValue:v10 forKey:*MEMORY[0x1E6979BA8]];
  }

  if (a1 == 0.0 && v1[v3] == 1 && !*&v1[OBJC_IVAR____TtC7ChatKitP33_2F1F921A47D32DD8F36483D8E0A5FA2529SendMenuCellBlurContainerView_activeAnimationCount] && sub_190A18840() == 0.0)
  {
    v11 = [v1 layer];
    v12 = sub_190D57160();
    [v11 setFilters_];

    v1[v3] = 0;
  }
}

id sub_190A18BC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_190A18C08()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToEdgeHorizontalConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToLabelHorizontalConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconToBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_touchRecognitionRectIsInset) = 1;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_selectionStateScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForLightMode) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuCustomIconLayer) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageForDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForLightMode) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageCompositingFilterForDarkMode) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemImageInsets);
  v2 = *(MEMORY[0x1E69DC5C0] + 16);
  *v1 = *MEMORY[0x1E69DC5C0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelSendMenuAppearanceAnimationBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewSendMenuAppearanceAnimationBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeBlurFilterRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewAppearanceAnimationOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_iconImageViewScrollViewEdgeOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelScrollViewEdgeOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_titleLabelAppearanceAnimationOpacity) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit26SendMenuCollectionViewCell_sendMenuItemEnabledOpacity) = 0x3FF0000000000000;
  sub_190D58510();
  __break(1u);
}

uint64_t _s7ChatKit26SendMenuCollectionViewCellC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56A78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_190D53120();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A560);
  v14 = v13[12];
  v15 = v13[16];
  v16 = v13[20];
  *v11 = v12;
  v17 = *MEMORY[0x1E69DBF80];
  v18 = sub_190D53110();
  (*(*(v18 - 8) + 104))(&v11[v14], v17, v18);
  v11[v15] = 0;
  v11[v16] = 1;
  (*(v6 + 104))(v11, *MEMORY[0x1E69DBF78], v5);
  sub_1902188FC(0, &unk_1EAD56A80);
  (*(v6 + 16))(v8, v11, v5);
  v19 = sub_190D530A0();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = sub_190D576F0();
  (*(v6 + 8))(v11, v5);
  return v20;
}

id keypath_set_41Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  return sub_190A175F8();
}

uint64_t CKSuggestedActionsHandler.composeText(_:)(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 phoneNumber];
    if (!v4)
    {
      sub_190D56F10();
      v4 = sub_190D56ED0();
    }

    v5 = [a1 text];
    if (!v5)
    {
      sub_190D56F10();
      v5 = sub_190D56ED0();
    }

    [v3 didRequestComposeText:v4 text:v5];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_190A1A06C(void *a1, SEL *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = [a1 phoneNumber];
    if (!v6)
    {
      sub_190D56F10();
      v6 = sub_190D56ED0();
    }

    [v5 *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CKMaterialPlatterView.MaterialConfiguration.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x193AF4110](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x193AF4110](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x193AF4110](v2);
  }

  MEMORY[0x193AF4110](3);
  return sub_190D57DA0();
}

uint64_t CKMaterialPlatterView.MaterialConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x193AF4110](3);
        sub_190D57DA0();
        return sub_190D588C0();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x193AF4110](v2);
  return sub_190D588C0();
}

uint64_t sub_190A1A228()
{
  v1 = *v0;
  sub_190D58870();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x193AF4110](3);
        sub_190D57DA0();
        return sub_190D588C0();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x193AF4110](v2);
  return sub_190D588C0();
}

uint64_t sub_190A1A2AC()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x193AF4110](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x193AF4110](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x193AF4110](v2);
  }

  MEMORY[0x193AF4110](3);
  return sub_190D57DA0();
}

uint64_t sub_190A1A324()
{
  v1 = *v0;
  sub_190D58870();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x193AF4110](3);
        sub_190D57DA0();
        return sub_190D588C0();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x193AF4110](v2);
  return sub_190D588C0();
}

id sub_190A1A3A4@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_190A1C228(v4);
}

void sub_190A1A3FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_190A1C228(v4);
  sub_190A1C238(v4);
  v5 = *(v1 + v3);
  if (!v5)
  {
    if (!v4)
    {
      v6 = 0;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    if (v4 == 1)
    {
      v6 = 1;
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    if (v4 >= 3)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      sub_190A1C228(v5);
      sub_190A1C228(v4);
      sub_190A1C228(v5);
      v7 = sub_190D57D90();
      sub_190A1C238(v5);
      sub_190A1C238(v4);
      sub_190A1C238(v5);
      if (v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_190A1C228(*(v1 + v3));
LABEL_13:
    sub_190A1C228(v4);
    sub_190A1C238(v5);
    sub_190A1C238(v4);
LABEL_14:
    sub_190A1AB50();
    goto LABEL_15;
  }

  if (v4 != 2)
  {
    goto LABEL_13;
  }

  v6 = 2;
LABEL_10:
  sub_190A1C238(v6);
LABEL_15:
  sub_190A1C238(v4);
}

void (*sub_190A1A554(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  sub_190A1C228(v6);
  return sub_190A1A5EC;
}

void sub_190A1A5EC(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *v4;
  if (a2)
  {
    sub_190A1C228(v3);
    sub_190A1A3FC(&v5);
    sub_190A1C238(*v4);
  }

  else
  {
    sub_190A1A3FC(&v5);
  }

  free(v2);
}

id CKMaterialPlatterView.init(materialConfiguration:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration] = *a1;
  v2 = &v1[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0x8000000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CKMaterialPlatterView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190A1AB50();
  sub_1902188FC(0, &qword_1EAD45048);
  sub_190D578B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  v5 = sub_190919AB4();
  *(inited + 32) = &type metadata for CKTranscriptBackgroundActiveTrait;
  *(inited + 40) = v5;
  sub_190CAA1AC(inited);
  v6 = v3;
  sub_190D57CE0();

  swift_unknownObjectRelease();
  v7 = [v6 layer];

  [v7 setMasksToBounds_];
  return v6;
}

void sub_190A1A880(uint64_t a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for CKMaterialPlatterView();
  objc_msgSendSuper2(&v21, sel_layoutSublayersOfLayer_, a1);
  [v1 bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v7 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v8 = CGRectGetHeight(v23);
  if (v8 >= v7)
  {
    v8 = v7;
  }

  v9 = [objc_opt_self() _bezierPathWithPillRect_cornerRadius_];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 CGPath];
    v12 = *&v1[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
    v13 = *&v1[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 8];
    v14 = *&v1[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 16];
    if (v14 >> 62)
    {
      if (v14 >> 62 == 1)
      {
        v15 = v12;
        [v15 setFrame_];
        [v15 setPath_];

        sub_190A1C26C(v12, v13, v14);
        sub_190A1C26C(v12, v13, v14);
      }

      else
      {
      }
    }

    else
    {
      v16 = v12;
      v17 = v13;
      v18 = v14;
      [v16 setFrame_];
      [v17 setFrame_];
      v19 = v11;
      [v17 setPath_];
      [v18 setFrame_];
      v20 = v18;
      [v20 setPath_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190A1AB50()
{
  v1 = &v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 16] >> 62;
  v3 = [v0 traitCollection];
  v4 = [v3 isTranscriptBackgroundActive];

  if (!v2)
  {
    if (v4)
    {

      sub_190A1AEFC();
      return;
    }

    v8 = *(v1 + 2);
    if (!(v8 >> 62))
    {
      v9 = *v1;
      v10 = v8;
      [v9 removeFromSuperlayer];
      [v10 removeFromSuperlayer];

      v11 = *v1;
      v12 = *(v1 + 1);
      v13 = *(v1 + 2);
      *v1 = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0x8000000000000000;
      sub_190A1C26C(v11, v12, v13);
    }

LABEL_19:
    v14 = [objc_allocWithZone(type metadata accessor for CKMaterialPlatterViewColorShapeLayer()) init];
    v15 = [v0 layer];
    [v15 addSublayer_];

    v16 = *v1;
    v17 = *(v1 + 1);
    v18 = *(v1 + 2);
    *v1 = v14;
    *(v1 + 8) = xmmword_190DE7CB0;
    v19 = v14;
    sub_190A1C26C(v16, v17, v18);
    sub_190A1B350();

    return;
  }

  if (v2 != 1)
  {
    if (v4)
    {
LABEL_11:

      sub_190A1ADB0();
      return;
    }

    goto LABEL_19;
  }

  if (v4)
  {
    if (*(v1 + 2) >> 62 == 1)
    {
      [*v1 removeFromSuperlayer];
      v5 = *v1;
      v6 = *(v1 + 1);
      v7 = *(v1 + 2);
      *v1 = 0;
      *(v1 + 1) = 0;
      *(v1 + 2) = 0x8000000000000000;
      sub_190A1C26C(v5, v6, v7);
    }

    goto LABEL_11;
  }

  sub_190A1B350();
}

void sub_190A1ADB0()
{
  v1 = [objc_allocWithZone(type metadata accessor for CKMaterialPlatterViewBackdropLayer()) init];
  v2 = [objc_allocWithZone(type metadata accessor for CKMaterialPlatterViewMaskShapeLayer()) init];
  [v1 setMask_];
  v3 = [objc_allocWithZone(type metadata accessor for CKMaterialPlatterViewVibrantOuterStrokeLayer()) init];
  v4 = [v0 layer];
  [v4 addSublayer_];

  v5 = [v0 layer];
  [v5 addSublayer_];

  v6 = &v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
  v7 = *&v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
  v8 = *&v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 8];
  v9 = *&v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 16];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  v10 = v1;
  v11 = v2;
  v12 = v3;
  sub_190A1C26C(v7, v8, v9);
  sub_190A1AEFC();
}

uint64_t sub_190A1AEFC()
{
  v1 = sub_190D56A60();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D56B90();
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 16);
  if (!(v10 >> 62))
  {
    v39 = v7;
    v40 = result;
    v11 = *(v0 + OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState);
    v12 = v10;
    sub_190A1B4BC();
    v38 = v9;
    v13 = sub_190D56B70();
    v14 = *(v13 + 16);
    v41 = v4;
    if (v14)
    {
      v35 = v11;
      v36 = v12;
      v42 = MEMORY[0x1E69E7CC0];
      sub_190D58390();
      v37 = v2;
      v16 = v2 + 16;
      v15 = *(v2 + 16);
      v17 = (*(v16 + 64) + 32) & ~*(v16 + 64);
      v34[1] = v13;
      v18 = v13 + v17;
      v19 = *(v16 + 56);
      do
      {
        v15(v4, v18, v1);
        sub_190D56A50();
        (*(v16 - 8))(v4, v1);
        sub_190D58360();
        sub_190D583B0();
        v4 = v41;
        sub_190D583C0();
        sub_190D58370();
        v18 += v19;
        --v14;
      }

      while (v14);

      v20 = v42;
      v12 = v36;
      v2 = v37;
      v11 = v35;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = v11;
    sub_1908A1E3C(v20);

    v22 = sub_190D57160();

    [v21 setFilters_];

    v23 = v21;
    v24 = v38;
    sub_190D56B40();
    [v23 setScale_];

    v25 = v12;
    [v25 setFillColor_];
    v26 = [objc_opt_self() redColor];
    v27 = [v26 CGColor];

    [v25 setStrokeColor_];
    [v25 setLineWidth_];

    v28 = v41;
    sub_190D56B50();
    v29 = sub_190D56A50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_190DD1D90;
    *(v30 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
    *(v30 + 32) = v29;
    v31 = v25;
    v32 = v29;
    v33 = sub_190D57160();

    [v31 setFilters_];

    (*(v2 + 8))(v28, v1);
    return (*(v39 + 8))(v24, v40);
  }

  return result;
}

void sub_190A1B350()
{
  v1 = &v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_layerState + 16];
  if (v2 >> 62 == 1)
  {
    v3 = *v1;
    v4 = *(v1 + 1);
    v5 = *v1;
    v6 = [v0 traitCollection];
    v7 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
    swift_beginAccess();
    v8 = *&v0[v7];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 0;
      }

      else
      {
        if (v8 != 2)
        {
          v10 = v8;
          goto LABEL_10;
        }

        v9 = -1;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_190A1BA68(v9);
LABEL_10:
    sub_190A1C228(v8);
    v11 = [v10 resolvedColorWithTraitCollection_];
    v12 = [v11 CGColor];
    [v5 setFillColor_];

    sub_190A1C26C(v3, v4, v2);
  }
}

uint64_t sub_190A1B4BC()
{
  v1 = sub_190D56BB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = [v0 traitCollection];
  [v8 transcriptBackgroundLuminosity];
  v9 = OBJC_IVAR____TtC7ChatKit21CKMaterialPlatterView_materialConfiguration;
  swift_beginAccess();
  v10 = *&v0[v9];
  if (v10)
  {
    if (v10 == 1)
    {
      sub_190D56B30();
    }

    else if (v10 == 2)
    {
      sub_190D56B10();
    }

    else
    {
      v11 = [v10 resolvedColorWithTraitCollection_];
      v12 = [v11 CGColor];
      sub_190D56B20();
      sub_190A1C238(v10);
    }
  }

  else
  {
    sub_190D56B00();
  }

  (*(v2 + 32))(v7, v5, v1);
  sub_190D56BA0();

  return (*(v2 + 8))(v7, v1);
}

id CKMaterialPlatterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id static CKMaterialPlatterView.materialPlatterViewWithGrayMaterial()()
{
  v2 = 2;
  v0 = objc_allocWithZone(type metadata accessor for CKMaterialPlatterView());
  return CKMaterialPlatterView.init(materialConfiguration:)(&v2);
}

id static CKMaterialPlatterView.materialPlatterView(withColor:)(void *a1)
{
  v5 = a1;
  v2 = objc_allocWithZone(type metadata accessor for CKMaterialPlatterView());
  v3 = a1;
  return CKMaterialPlatterView.init(materialConfiguration:)(&v5);
}

Swift::Void __swiftcall CKMaterialPlatterView.configureMaterial(forColor:)(UIColor forColor)
{
  isa = forColor.super.isa;
  v1 = forColor.super.isa;
  sub_190A1A3FC(&isa);
}

unint64_t sub_190A1BA68(char a1)
{
  result = [objc_opt_self() sharedBehaviors];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = result;
  result = [result theme];
  if (result)
  {
    v4 = result;
    v5 = [result balloonColorsForColorType_];
    if (v5)
    {
      v6 = v5;
      sub_1902188FC(0, &qword_1EAD46520);
      v7 = sub_190D57180();

      if (!(v7 >> 62))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_5:
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_14;
      }
    }

    v8 = sub_190D581C0();
    if (v8)
    {
LABEL_6:
      v9 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (v9)
      {
        __break(1u);
      }

      else if ((v7 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v10 = *(v7 + 8 * result + 32);
LABEL_11:
          v11 = v10;

          return v11;
        }

        __break(1u);
        goto LABEL_19;
      }

      v10 = MEMORY[0x193AF3B90](result, v7);
      goto LABEL_11;
    }

LABEL_14:

    v12 = [objc_opt_self() systemGrayColor];

    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_190A1BFD8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  v6 = sub_19021834C(v14, v13);
  v7 = a4(v6);
  swift_dynamicCast();
  v8 = v12;
  v11.receiver = a1;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_initWithLayer_, v12);

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v9;
}

id sub_190A1C108(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s7ChatKit21CKMaterialPlatterViewC21MaterialConfigurationO2eeoiySbAE_AEtFZ_0(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      sub_190A1C228(v3);
      sub_190A1C228(v2);
      v4 = sub_190D57D90();
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_190A1C228(*a2);
    sub_190A1C228(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_190A1C238(v2);
  sub_190A1C238(v3);
  return v4 & 1;
}

id sub_190A1C228(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

void sub_190A1C238(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_190A1C26C(void *a1, void *a2, unint64_t a3)
{
  if (a3 >> 62 != 1)
  {
    if (a3 >> 62)
    {
      return;
    }

    a1 = a3;
  }
}

unint64_t sub_190A1C2CC()
{
  result = qword_1EAD5A578;
  if (!qword_1EAD5A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A578);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7ChatKit21CKMaterialPlatterViewC21MaterialConfigurationO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190A1C400(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190A1C45C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_190A1C4AC(void *result, int a2)
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

unint64_t get_enum_tag_for_layout_string_7ChatKit21CKMaterialPlatterViewC10LayerState33_D42AA3BF6F9A5AC319A28A565F2802FDLLO(void *a1)
{
  v1 = a1[2];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_190A1C58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFD && *(a1 + 24))
  {
    return (*a1 + 2097150);
  }

  if (((((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF) >= 0x1FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = (((*(a1 + 16) >> 43) >> 19) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) | (*(a1 + 16) >> 43) & 0x60000 | ((*(a1 + 16) & 7) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_190A1C614(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2097150;
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FFFF) - (a2 << 19);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      v4 = vdupq_n_s64(v3);
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_190DE30A0), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_190DE30B0), vdupq_n_s64(0xF000000000000000)));
    }
  }

  return result;
}

int8x16_t sub_190A1C6CC(uint64_t a1, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    result = vandq_s8(*a1, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *a1 = result;
    *(a1 + 16) = v3;
  }

  else
  {
    *a1 = 8 * (a2 - 2);
    result.i64[0] = 0;
    *(a1 + 8) = xmmword_190DE7CC0;
  }

  return result;
}

void __swiftcall CKConversationListCollectionViewController.spamContextMenu(collectionView:indexPaths:point:)(UIMenu_optional *__return_ptr retstr, UICollectionView *collectionView, Swift::OpaquePointer indexPaths, CGPoint point)
{
  if (!*(indexPaths._rawValue + 2))
  {
    return;
  }

  y = point.y;
  x = point.x;
  sub_190D51C00();
  v9 = sub_190D57160();
  v10 = [v4 conversationsAtIndexPaths_];

  sub_1902188FC(0, &qword_1EAD466B0);
  v11 = sub_190D57180();

  v12 = sub_190D56ED0();
  v13 = objc_opt_self();
  [v13 systemImageNamed_];

  v14 = CKIsRunningInMacCatalyst();
  v15 = CKFrameworkBundle();
  v16 = v15;
  v39 = v13;
  if (v14)
  {
    if (!v15)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  else if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_190D56F10();
  sub_1902188FC(0, &qword_1EAD464F0);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2]._rawValue = v20;
  v21[3]._rawValue = v11;
  v21[4]._rawValue = collectionView;
  v21[5]._rawValue = indexPaths._rawValue;
  *&v21[6]._rawValue = x;
  *&v21[7]._rawValue = y;
  sub_190D52690();
  v22 = collectionView;
  sub_190D52690();
  v38 = v21;
  v23 = sub_190D57DC0();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v25[2]._rawValue = v24;
  v25[3]._rawValue = v11;
  v25[4]._rawValue = v22;
  v25[5]._rawValue = indexPaths._rawValue;
  *&v25[6]._rawValue = x;
  *&v25[7]._rawValue = y;
  sub_190D52690();
  v26 = v22;
  sub_190D52690();
  sub_190D50920();
  LODWORD(v20) = CKIsRunningInMacCatalyst();
  v27 = CKFrameworkBundle();
  v28 = v27;
  if (v20)
  {
    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if (!v27)
  {
LABEL_17:
    __break(1u);
    return;
  }

LABEL_11:
  v29 = sub_190D56ED0();
  v30 = sub_190D56ED0();
  v31 = [v28 localizedStringForKey:v29 value:0 table:{v30, 0, 0, 0, sub_190A1D584, v38}];

  sub_190D56F10();
  v32 = sub_190D56ED0();
  v33 = [v39 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 16) = sub_190A1DCD8;
  *(v34 + 24) = v25;
  v35 = v33;
  sub_190D50920();
  v36 = sub_190D57DC0();
  if (!CKIsRunningInMacCatalyst())
  {
    [v36 setAttributes_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_190DD5CE0;
  *(v37 + 32) = v23;
  *(v37 + 40) = v36;
  sub_1902188FC(0, &unk_1EAD44ED0);
  sub_190D57C90();
}

void CKConversationListCollectionViewController.toolbarPresentPermanentDeletionConfirmations(spamConversations:sender:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
  [v6 setPresentationViewController_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v7 = sub_190D57160();
  [v6 setTargetConversations_];

  if (a2)
  {
    swift_unknownObjectRetain();
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (!v8)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 0;
  }

  [v6 setSourceItem_];
  swift_unknownObjectRelease();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_190A1DFAC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_59;
  v11 = _Block_copy(aBlock);
  sub_190D52690();

  [v6 setAlertsCompletedBlock_];
  _Block_release(v11);
  v12 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
  [v12 presentPermanentJunkConversationDeletionConfirmations];
}

void sub_190A1CF28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1902188FC(0, &qword_1EAD466B0);
    v2 = sub_190D57160();
    [v1 permanentSpamDeletionConfirmed_];
  }
}

void sub_190A1D050(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v46 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v17 = sub_190D51C00();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
    [v26 setPresentationViewController_];
    sub_1902188FC(0, &qword_1EAD466B0);
    v48 = a5;
    v27 = sub_190D57160();
    [v26 setTargetConversations_];

    v45 = a6;
    v28 = [a6 indexPathForItemAtPoint_];
    v47 = v25;
    if (v28)
    {
      v29 = v28;
      sub_190D51BC0();

      v30 = *(v18 + 32);
      v30(v13, v20, v17);
      v31 = *(v18 + 56);
      v31(v13, 0, 1, v17);
      v30(v16, v13, v17);
      v31(v16, 0, 1, v17);
      v32 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v33 = *(v18 + 56);
      v34 = 1;
      v33(v13, 1, 1, v17);
      if (*(v46 + 16))
      {
        (*(v18 + 16))(v16, v46 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);
        v34 = 0;
      }

      v33(v16, v34, 1, v17);
      v35 = *(v18 + 48);
      if (v35(v13, 1, v17) != 1)
      {
        sub_19098D840(v13);
      }

      v32 = v35(v16, 1, v17);
    }

    if (v32 == 1)
    {
      sub_19098D840(v16);
      v36 = v47;
    }

    else
    {
      (*(v18 + 32))(v23, v16, v17);
      v37 = sub_190D51BB0();
      v38 = [v45 cellForItemAtIndexPath_];

      v36 = v47;
      if (v38)
      {
        [v26 setSourceView_];
      }

      (*(v18 + 8))(v23, v17);
    }

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v41 = v48;
    *(v40 + 16) = v39;
    *(v40 + 24) = v41;
    aBlock[4] = sub_190A1E024;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_28;
    v42 = _Block_copy(aBlock);
    sub_190D52690();

    [v26 setAlertsCompletedBlock_];
    _Block_release(v42);
    v43 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
    [v43 presentRecoverJunkConversationConfirmations];
  }
}

id sub_190A1D594(unint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CF0 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E100);
  sub_190D52690();
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (a1 >> 62)
    {
      v8 = sub_190D581C0();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_19020E000, v5, v6, "Confirmed junk conversation recovery: %ld", v7, 0xCu);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  result = [v2 conversationList];
  if (result)
  {
    v10 = result;
    sub_1902188FC(0, &qword_1EAD466B0);
    v11 = sub_190D57160();
    [v10 recoverJunkMessagesInConversations_];

    return [v2 leaveJunkFilterIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190A1D754(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v45 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = sub_190D51C00();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = [objc_allocWithZone(CKConversationConfirmationAlertsDisplayConfiguration) init];
    [v25 setPresentationViewController_];
    sub_1902188FC(0, &qword_1EAD466B0);
    v47 = a4;
    v26 = sub_190D57160();
    [v25 setTargetConversations_];

    v44 = a5;
    v27 = [a5 indexPathForItemAtPoint_];
    v46 = v24;
    if (v27)
    {
      v28 = v27;
      sub_190D51BC0();

      v29 = *(v17 + 32);
      v29(v12, v19, v16);
      v30 = *(v17 + 56);
      v30(v12, 0, 1, v16);
      v29(v15, v12, v16);
      v30(v15, 0, 1, v16);
      v31 = (*(v17 + 48))(v15, 1, v16);
    }

    else
    {
      v32 = *(v17 + 56);
      v33 = 1;
      v32(v12, 1, 1, v16);
      if (*(v45 + 16))
      {
        (*(v17 + 16))(v15, v45 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
        v33 = 0;
      }

      v32(v15, v33, 1, v16);
      v34 = *(v17 + 48);
      if (v34(v12, 1, v16) != 1)
      {
        sub_19098D840(v12);
      }

      v31 = v34(v15, 1, v16);
    }

    if (v31 == 1)
    {
      sub_19098D840(v15);
      v35 = v46;
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
      v36 = sub_190D51BB0();
      v37 = [v44 cellForItemAtIndexPath_];

      v35 = v46;
      if (v37)
      {
        [v25 setSourceView_];
      }

      (*(v17 + 8))(v22, v16);
    }

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v40 = v47;
    *(v39 + 16) = v38;
    *(v39 + 24) = v40;
    aBlock[4] = sub_190A1DFB4;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_21_0;
    v41 = _Block_copy(aBlock);
    sub_190D52690();

    [v25 setAlertsCompletedBlock_];
    _Block_release(v41);
    v42 = [objc_allocWithZone(CKConversationConfirmationAlertsController) initWithConfiguration_];
    [v42 presentPermanentJunkConversationDeletionConfirmations];
  }
}

uint64_t objectdestroy_2Tm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_190A1DCE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a2);
  }
}

id sub_190A1DD58(unint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CF0 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E100);
  sub_190D52690();
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (a1 >> 62)
    {
      v8 = sub_190D581C0();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&dword_19020E000, v5, v6, "Confirmed junk conversation deletion: %ld", v7, 0xCu);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  v9 = [v2 delegate];
  if (!v9 || (v10 = [v9 isCollapsed], swift_unknownObjectRelease(), (v10 & 1) == 0))
  {
    v11 = [v2 collectionView];
    [v2 _deselectSelectedIndexPathsInCollectionView_animated_];
  }

  [v2 setEditingMode:0 animated:1];
  result = [v2 conversationList];
  if (result)
  {
    v13 = result;
    sub_1902188FC(0, &qword_1EAD466B0);
    v14 = sub_190D57160();
    [v13 deleteConversations_];

    return [v2 leaveJunkFilterIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_190A1E064(double a1, double a2)
{
  v5 = *(v2 + 16);
  [*(v2 + 8) ck_constrainedSizeThatFits_];
  return [v5 ck:a1 constrainedSizeThatFits:a2];
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_190A1E128(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190A1E170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s14LayoutResolverV7ContextVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s14LayoutResolverV7ContextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRTranslationIssueView()
{
  result = qword_1EAD5A5E0;
  if (!qword_1EAD5A5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A1E398@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1909645C0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190A1E580@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FF0);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FF8);
  v30 = *(v8 - 8);
  v9 = v30;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A000);
  sub_190233640(&qword_1EAD5A008, &qword_1EAD5A000);
  v29 = v14;
  sub_190D562E0();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v27 = v7;
  sub_190D562E0();
  v15 = *(v9 + 16);
  v28 = v11;
  v15(v11, v14, v8);
  v16 = *(v3 + 16);
  v17 = v31;
  v18 = v7;
  v19 = v32;
  v16(v31, v18, v32);
  v20 = v33;
  v15(v33, v11, v8);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A010) + 48)];
  v22 = v17;
  v16(v21, v17, v19);
  v23 = *(v3 + 8);
  v23(v27, v19);
  v24 = *(v30 + 8);
  v24(v29, v8);
  v23(v22, v19);
  return (v24)(v28, v8);
}

uint64_t sub_190A1E904@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for TTRTranslationIssueView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v47 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v38 - v21;
  sub_190A1FC88(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_190A1FCEC(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_190D56030();
  sub_190A1FC88(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_190A1FCEC(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v22);
  sub_190D56030();
  sub_190A1FC88(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_190A1FCEC(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v22);
  sub_190D56030();
  sub_190A1FC88(a1, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_190A1FCEC(&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22);
  v27 = v47;
  sub_190D56030();
  v28 = *(v44 + 16);
  v29 = v38;
  v28(v38, v43, v6);
  v30 = v39;
  v28(v39, v46, v6);
  v31 = v40;
  v32 = v45;
  v28(v40, v45, v6);
  v33 = v41;
  v28(v41, v27, v6);
  v34 = v42;
  v28(v42, v29, v6);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A018);
  v28(&v34[v35[12]], v30, v6);
  v28(&v34[v35[16]], v31, v6);
  v28(&v34[v35[20]], v33, v6);
  v36 = *(v44 + 8);
  v36(v47, v6);
  v36(v32, v6);
  v36(v46, v6);
  v36(v43, v6);
  v36(v33, v6);
  v36(v31, v6);
  v36(v30, v6);
  return (v36)(v29, v6);
}

uint64_t sub_190A1EECC()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A1EFB4(0xD000000000000018, 0x8000000190E6D5B0);
  sub_190A1E398(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

id sub_190A1EFB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = sub_190D53D10();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_190D515F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v13 = type metadata accessor for TTRTranslationIssueView();
  MEMORY[0x193AF28B0](*(v3 + v13[7]), *(v3 + v13[7] + 8));
  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v14 = *(v2 + v13[5]);
  result = [v14 guid];
  if (result)
  {
    v16 = result;
    v17 = sub_190D56F10();
    v19 = v18;

    MEMORY[0x193AF28B0](v17, v19);

    MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
    MEMORY[0x193AF28B0](*(v3 + v13[6]), *(v3 + v13[6] + 8));
    MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
    v20 = [v14 description];
    v21 = sub_190D56F10();
    v23 = v22;

    MEMORY[0x193AF28B0](v21, v23);

    v24 = v36;
    v25 = v37;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD000000000000027, 0x8000000190E6D490);
    MEMORY[0x193AF28B0](v32, v33);
    MEMORY[0x193AF28B0](0xD00000000000006ELL, 0x8000000190E6D4C0);
    MEMORY[0x193AF28B0](v24, v25);

    MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
    sub_190D515E0();

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_19084CF50(v9);
    }

    else
    {
      v26 = v31;
      (*(v11 + 32))(v31, v9, v10);
      v27 = [objc_opt_self() sharedApplication];
      v28 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190964630();
      v29 = sub_190D56D60();

      [v27 openURL:v28 options:v29 completionHandler:0];

      (*(v11 + 8))(v26, v10);
    }

    sub_190A1E398(v6);
    sub_190D53D00();
    return (*(v34 + 8))(v6, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A1F470@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A1F4E8()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A1EFB4(0xD000000000000019, 0x8000000190E6D590);
  sub_190A1E398(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A1F5D0@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A1F648()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A1EFB4(0xD000000000000025, 0x8000000190E6D560);
  sub_190A1E398(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A1F730@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A1F7A8()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A1EFB4(0xD000000000000021, 0x8000000190E6D530);
  sub_190A1E398(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A1F890@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A1F908(uint64_t a1)
{
  v2 = type metadata accessor for TTRTranslationIssueView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190A1FC88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190A1FCEC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_190D56030();
}

uint64_t sub_190A1FA34()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A1EFB4(0xD00000000000001ELL, 0x8000000190E6C420);
  sub_190A1E398(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A1FB1C@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190A1FB94@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FD8);
  sub_190233640(&qword_1EAD59FE0, &qword_1EAD59FD8);
  sub_190D554D0();
  v2 = sub_190D55E00();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59FE8);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_190A1FC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTranslationIssueView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A1FCEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTranslationIssueView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for TTRTranslationIssueView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53D10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A1FF08(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TTRTranslationIssueView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t type metadata accessor for TTRSheetButtonView()
{
  result = qword_1EAD5A5F0;
  if (!qword_1EAD5A5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A1FFF0()
{
  sub_190A2015C(319, &qword_1EAD5A600, &type metadata for ViewType, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1902188FC(319, &qword_1EAD57B70);
    if (v1 <= 0x3F)
    {
      sub_190960770();
      if (v2 <= 0x3F)
      {
        sub_1902188FC(319, &qword_1EAD5A608);
        if (v3 <= 0x3F)
        {
          sub_19081C950();
          if (v4 <= 0x3F)
          {
            sub_190A2015C(319, &qword_1EAD55F80, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1909606CC();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_190A2015C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_190A201C8()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v16 - v7;
  v9 = [*(v0 + 24) time];
  if (!v9)
  {
    return 0x206E776F6E6B6E55;
  }

  v10 = v9;
  sub_190D517E0();

  (*(v2 + 32))(v8, v4, v1);
  v11 = *(v0 + 56);
  v12 = sub_190D51780();
  v13 = [v11 stringFromDate_];

  v14 = sub_190D56F10();
  (*(v2 + 8))(v8, v1);
  return v14;
}

uint64_t sub_190A20364@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TTRSheetButtonView();
  sub_19022FD14(v1 + *(v10 + 44), v9, &qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190A2056C()
{
  v1 = v0;
  v2 = sub_190D53D10();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v11 = sub_190A201C8();
  MEMORY[0x193AF28B0](v11);

  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v12 = *(v0 + 24);
  result = [v12 guid];
  if (result)
  {
    v14 = result;
    v15 = sub_190D56F10();
    v17 = v16;

    MEMORY[0x193AF28B0](v15, v17);

    MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
    v18 = *(v1 + 32);
    if (v18)
    {
      v19 = [v18 guid];
      v20 = sub_190D56F10();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    MEMORY[0x193AF28B0](v20, v22);

    MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
    v23 = [v12 description];
    v24 = sub_190D56F10();
    v26 = v25;

    MEMORY[0x193AF28B0](v24, v26);

    v27 = v37;
    v28 = v38;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD00000000000006CLL, 0x8000000190E6D620);
    MEMORY[0x193AF28B0](v27, v28);

    MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
    sub_190D515E0();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_19022EEA4(v6, &unk_1EAD55F20);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v29 = [objc_opt_self() sharedApplication];
      v30 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190A26374(&qword_1EAD53638, type metadata accessor for OpenExternalURLOptionsKey);
      v31 = sub_190D56D60();

      [v29 openURL:v30 options:v31 completionHandler:0];

      v32 = v34;
      sub_190A20364(v34);
      sub_190D53D00();
      (*(v35 + 8))(v32, v36);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A20A84()
{
  v1 = v0;
  v2 = sub_190D53D10();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v11 = sub_190A201C8();
  MEMORY[0x193AF28B0](v11);

  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v12 = v0[3];
  result = [v12 guid];
  if (result)
  {
    v14 = result;
    v15 = sub_190D56F10();
    v17 = v16;

    MEMORY[0x193AF28B0](v15, v17);

    MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
    v18 = v1[4];
    if (v18)
    {
      v19 = [v18 guid];
      v20 = sub_190D56F10();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    MEMORY[0x193AF28B0](v20, v22);

    MEMORY[0x193AF28B0](0x3A726F7272450A0ALL, 0xE900000000000020);
    MEMORY[0x193AF28B0](v1[5], v1[6]);
    MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
    v23 = [v12 description];
    v24 = sub_190D56F10();
    v26 = v25;

    MEMORY[0x193AF28B0](v24, v26);

    v27 = v37;
    v28 = v38;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD00000000000008ELL, 0x8000000190E6D6B0);
    MEMORY[0x193AF28B0](v27, v28);

    MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
    sub_190D515E0();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_19022EEA4(v6, &unk_1EAD55F20);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v29 = [objc_opt_self() sharedApplication];
      v30 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190A26374(&qword_1EAD53638, type metadata accessor for OpenExternalURLOptionsKey);
      v31 = sub_190D56D60();

      [v29 openURL:v30 options:v31 completionHandler:0];

      v32 = v34;
      sub_190A20364(v34);
      sub_190D53D00();
      (*(v35 + 8))(v32, v36);
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A20FC0()
{
  v1 = v0;
  v2 = sub_190D53D10();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - v5;
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v68 - v12;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD00000000000003CLL, 0x8000000190E6D8E0);
  v14 = sub_190A201C8();
  MEMORY[0x193AF28B0](v14);

  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v15 = *(v0 + 24);
  result = [v15 guid];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v17 = result;
  v69 = v10;
  v75 = v7;
  v18 = sub_190D56F10();
  v20 = v19;

  MEMORY[0x193AF28B0](v18, v20);

  MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
  v21 = *(v1 + 32);
  v74 = v8;
  if (v21)
  {
    v22 = [v21 guid];
    v23 = sub_190D56F10();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x193AF28B0](v23, v25);

  MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
  v26 = [v15 description];
  v27 = sub_190D56F10();
  v29 = v28;

  MEMORY[0x193AF28B0](v27, v29);

  v30 = v77;
  v73 = v76;
  v31 = [v15 description];
  v32 = sub_190D56F10();
  v34 = v33;

  v76 = v32;
  v77 = v34;
  v80 = 0x3A656D2D6D6F7266;
  v81 = 0xE900000000000020;
  v35 = sub_190D519C0();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_19081E484();
  sub_190D580F0();
  v37 = v36;
  v39 = v38;
  sub_19022EEA4(v13, &qword_1EAD54C10);

  if (v39)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = v75;
  }

  else
  {
    v43 = [v15 description];
    v44 = sub_190D56F10();
    v46 = v45;

    v47 = sub_190C84B54(v37, v44, v46);
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v76 = v47;
    v77 = v49;
    v78 = v51;
    v79 = v53;
    v80 = 32;
    v81 = 0xE100000000000000;
    sub_190A26454();
    v54 = sub_190D580A0();

    if (v54[2])
    {
      v56 = v54[4];
      v55 = v54[5];
      if (v56 != 5457241 || v55 != 0xE300000000000000)
      {
        v66 = sub_190D58760();
        v42 = v75;
        if (v66)
        {
          v40 = 1953391955;

          v41 = 0xE400000000000000;
        }

        else
        {
          v40 = 0x6465766965636552;
          sub_190D52690();

          if (v56 == 20302 && v55 == 0xE200000000000000)
          {

            v41 = 0xE800000000000000;
          }

          else
          {
            v67 = sub_190D58760();

            if (v67)
            {
              v41 = 0xE800000000000000;
            }

            else
            {
              v40 = 0;
              v41 = 0xE000000000000000;
            }
          }
        }

        goto LABEL_13;
      }

      v40 = 1953391955;

      v41 = 0xE400000000000000;
    }

    else
    {

      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v42 = v75;
  }

LABEL_13:
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD0000000000000F6, 0x8000000190E6D920);
  MEMORY[0x193AF28B0](v73, v30);

  MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
  if ((v41 & 0xF00000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_190DD1D90;
    v76 = v40;
    v77 = v41;
    MEMORY[0x193AF28B0](32, 0xE100000000000000);
    v59 = v76;
    v58 = v77;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = sub_19081EA10();
    *(v57 + 32) = v59;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_190DD1D90;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = sub_19081EA10();
    *(v57 + 32) = 0x206567617373654DLL;
    v58 = 0xE800000000000000;
  }

  v60 = v74;
  *(v57 + 40) = v58;
  sub_190D56F20();

  sub_190D515E0();

  if ((*(v60 + 48))(v6, 1, v42) == 1)
  {
    return sub_19022EEA4(v6, &unk_1EAD55F20);
  }

  v61 = v69;
  (*(v60 + 32))(v69, v6, v42);
  v62 = [objc_opt_self() sharedApplication];
  v63 = sub_190D51570();
  sub_19082233C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_190A26374(&qword_1EAD53638, type metadata accessor for OpenExternalURLOptionsKey);
  v64 = sub_190D56D60();

  [v62 openURL:v63 options:v64 completionHandler:0];

  v65 = v70;
  sub_190A20364(v70);
  sub_190D53D00();
  (*(v71 + 8))(v65, v72);
  return (*(v60 + 8))(v61, v42);
}

id sub_190A21910()
{
  v1 = sub_190D53D10();
  v66 = *(v1 - 8);
  v67 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v65 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v63 - v4;
  v6 = sub_190D515F0();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v11 = sub_190A201C8();
  MEMORY[0x193AF28B0](v11);

  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v12 = *(v0 + 24);
  result = [v12 guid];
  if (result)
  {
    v14 = result;
    v15 = sub_190D56F10();
    v17 = v16;

    MEMORY[0x193AF28B0](v15, v17);

    MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
    v18 = *(v0 + 32);
    v68 = v6;
    v69 = v0;
    if (v18)
    {
      v19 = [v18 guid];
      v20 = sub_190D56F10();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    MEMORY[0x193AF28B0](v20, v22);

    MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
    v23 = [v12 description];
    v24 = sub_190D56F10();
    v26 = v25;

    MEMORY[0x193AF28B0](v24, v26);

    v28 = v71;
    v27 = v72;
    v29 = [v12 description];
    v30 = sub_190D56F10();
    v32 = v31;

    v71 = v30;
    v72 = v32;
    v75 = 0x3D65636976726573;
    v76 = 0xE800000000000000;
    v33 = sub_190D519C0();
    (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
    sub_19081E484();
    sub_190D580F0();
    v35 = v34;
    v37 = v36;
    sub_19022EEA4(v10, &qword_1EAD54C10);

    if (v37)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      v40 = v68;
    }

    else
    {
      v41 = [v12 description];
      v42 = sub_190D56F10();
      v44 = v43;

      v45 = sub_190C84B54(v35, v42, v44);
      v47 = v46;
      v49 = v48;
      v51 = v50;

      v71 = v45;
      v72 = v47;
      v73 = v49;
      v74 = v51;
      v75 = 59;
      v76 = 0xE100000000000000;
      sub_190A26454();
      v52 = sub_190D580A0();

      if (v52[2])
      {
        v38 = v52[4];
        v39 = v52[5];
        sub_190D52690();
      }

      else
      {
        v38 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = v68;
    }

    v71 = 0;
    v72 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD0000000000000B7, 0x8000000190E6D760);
    MEMORY[0x193AF28B0](v28, v27);

    MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
    v53 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v53 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v53)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_190DD1D90;
      v71 = v38;
      v72 = v39;
      MEMORY[0x193AF28B0](32, 0xE100000000000000);
      v56 = v71;
      v55 = v72;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_19081EA10();
      *(v54 + 32) = v56;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_190DD1D90;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_19081EA10();
      *(v54 + 32) = 0x206567617373654DLL;
      v55 = 0xE800000000000000;
    }

    *(v54 + 40) = v55;
    sub_190D56F20();

    sub_190D515E0();

    v57 = v70;
    if ((*(v70 + 48))(v5, 1, v40) == 1)
    {
      return sub_19022EEA4(v5, &unk_1EAD55F20);
    }

    else
    {
      v58 = v64;
      (*(v57 + 32))(v64, v5, v40);
      v59 = [objc_opt_self() sharedApplication];
      v60 = sub_190D51570();
      sub_19082233C(MEMORY[0x1E69E7CC0]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_190A26374(&qword_1EAD53638, type metadata accessor for OpenExternalURLOptionsKey);
      v61 = sub_190D56D60();

      [v59 openURL:v60 options:v61 completionHandler:0];

      v62 = v65;
      sub_190A20364(v65);
      sub_190D53D00();
      (*(v66 + 8))(v62, v67);
      return (*(v57 + 8))(v58, v40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A22144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v125 = type metadata accessor for TTRFilteringIssueView();
  MEMORY[0x1EEE9AC00](v125);
  v107 = (&v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for TTRNotificationIssueView();
  MEMORY[0x1EEE9AC00](v114);
  v108 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v106 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A620);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v106 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A628);
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v106 - v8;
  v112 = type metadata accessor for TTRTranslationIssueView();
  MEMORY[0x1EEE9AC00](v112);
  v106 = (&v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v106 - v11;
  v12 = type metadata accessor for TTRWrongServiceTypeView();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v106 - v16;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A630);
  MEMORY[0x1EEE9AC00](v121);
  v123 = &v106 - v18;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A638);
  MEMORY[0x1EEE9AC00](v116);
  v118 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A640);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v106 - v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A648);
  MEMORY[0x1EEE9AC00](v117);
  v24 = &v106 - v23;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A650);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A658);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v106 - v27;
  v29 = *(a1 + 8);
  v30 = *(a1 + 16);
  v126 = *a1;
  v127 = v29;
  LOBYTE(v128) = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A660);
  v32 = MEMORY[0x193AF1A80](&v129, v31);
  if (v129 <= 1u)
  {
    v113 = v26;
    v114 = v20;
    v115 = v24;
    if (!v129)
    {
      MEMORY[0x1EEE9AC00](v32);
      *(&v106 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6B8);
      sub_190233640(&qword_1EAD5A6C0, &qword_1EAD5A6B8);
      sub_190D554D0();
      v47 = sub_190D55E00();
      KeyPath = swift_getKeyPath();
      v49 = &v28[*(v113 + 36)];
      *v49 = KeyPath;
      v49[1] = v47;
      sub_19022FD14(v28, v22, &qword_1EAD5A658);
      swift_storeEnumTagMultiPayload();
      sub_190A2603C();
      sub_190A26374(&qword_1EAD5A690, type metadata accessor for TTRWrongServiceTypeView);
      v50 = v115;
      sub_190D54C50();
      sub_19022FD14(v50, v118, &qword_1EAD5A648);
      swift_storeEnumTagMultiPayload();
      sub_190A25F80();
      sub_190A26120();
      v51 = v120;
      sub_190D54C50();
      sub_19022EEA4(v50, &qword_1EAD5A648);
      sub_19022FD14(v51, v123, &qword_1EAD5A650);
      swift_storeEnumTagMultiPayload();
      sub_190A25EF4();
      sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
      sub_190D54C50();
      sub_19022EEA4(v51, &qword_1EAD5A650);
      return sub_19022EEA4(v28, &qword_1EAD5A658);
    }

    v66 = *(a1 + 24);
    v65 = *(a1 + 32);
    v67 = v22;
    v68 = v66;
    if (v65)
    {
      v69 = [v65 guid];
      v70 = sub_190D56F10();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0xE000000000000000;
    }

    v96 = sub_190A201C8();
    v98 = v97;
    *&v14[v12[6]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v129) = 0;
    sub_190D55FC0();
    v99 = v127;
    *v14 = v126;
    *(v14 + 1) = v99;
    LOBYTE(v129) = 0;
    sub_190D53B20();
    v100 = v127;
    v101 = v128;
    v14[16] = v126;
    *(v14 + 3) = v100;
    *(v14 + 2) = v101;
    *&v14[v12[7]] = v66;
    v102 = &v14[v12[8]];
    *v102 = v70;
    v102[1] = v72;
    v103 = &v14[v12[9]];
    *v103 = v96;
    v103[1] = v98;
    v81 = v17;
    sub_190A262F4(v14, v17, type metadata accessor for TTRWrongServiceTypeView);
    sub_190A2628C(v17, v67, type metadata accessor for TTRWrongServiceTypeView);
    swift_storeEnumTagMultiPayload();
    sub_190A2603C();
    sub_190A26374(&qword_1EAD5A690, type metadata accessor for TTRWrongServiceTypeView);
    v104 = v115;
    sub_190D54C50();
    sub_19022FD14(v104, v118, &qword_1EAD5A648);
    swift_storeEnumTagMultiPayload();
    sub_190A25F80();
    sub_190A26120();
    v105 = v120;
    sub_190D54C50();
    sub_19022EEA4(v104, &qword_1EAD5A648);
    sub_19022FD14(v105, v123, &qword_1EAD5A650);
    swift_storeEnumTagMultiPayload();
    sub_190A25EF4();
    sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
    sub_190D54C50();
    sub_19022EEA4(v105, &qword_1EAD5A650);
    v84 = type metadata accessor for TTRWrongServiceTypeView;
  }

  else
  {
    if (v129 != 2)
    {
      if (v129 == 3)
      {
        v33 = *(a1 + 24);
        v34 = *(a1 + 32);
        v35 = swift_getKeyPath();
        v36 = v107;
        *v107 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
        swift_storeEnumTagMultiPayload();
        v37 = v125;
        v38 = v36 + *(v125 + 20);
        LOBYTE(v129) = 0;
        v39 = v34;
        v40 = v33;
        sub_190D55FC0();
        v41 = v127;
        *v38 = v126;
        *(v38 + 8) = v41;
        v42 = v36 + v37[6];
        LOBYTE(v129) = 0;
        sub_190D55FC0();
        v43 = v127;
        *v42 = v126;
        *(v42 + 8) = v43;
        v44 = v37[7];
        *(v36 + v44) = [objc_opt_self() isTimeSensitiveCustomModelAvailable];
        *(v36 + v37[8]) = v40;
        *(v36 + v37[9]) = v34;
        sub_190A2628C(v36, v123, type metadata accessor for TTRFilteringIssueView);
        swift_storeEnumTagMultiPayload();
        sub_190A25EF4();
        sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
        sub_190D54C50();
        v45 = type metadata accessor for TTRFilteringIssueView;
        v46 = v36;
      }

      else
      {
        v60 = *(a1 + 24);
        v59 = *(a1 + 32);
        v61 = v60;
        if (v59)
        {
          v62 = [v59 guid];
          v59 = sub_190D56F10();
          v64 = v63;
        }

        else
        {
          v64 = 0xE000000000000000;
        }

        v85 = sub_190A201C8();
        v87 = v86;
        v88 = swift_getKeyPath();
        v89 = v108;
        *v108 = v88;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
        swift_storeEnumTagMultiPayload();
        v90 = v114;
        *(v89 + *(v114 + 20)) = v60;
        v91 = (v89 + *(v90 + 24));
        *v91 = v59;
        v91[1] = v64;
        v92 = (v89 + *(v90 + 28));
        *v92 = v85;
        v92[1] = v87;
        v93 = v110;
        sub_190A262F4(v89, v110, type metadata accessor for TTRNotificationIssueView);
        sub_190A2628C(v93, v113, type metadata accessor for TTRNotificationIssueView);
        swift_storeEnumTagMultiPayload();
        sub_190A26374(&qword_1EAD5A6A0, type metadata accessor for TTRTranslationIssueView);
        sub_190A26374(&qword_1EAD5A6A8, type metadata accessor for TTRNotificationIssueView);
        v94 = v115;
        sub_190D54C50();
        sub_19022FD14(v94, v118, &qword_1EAD5A628);
        swift_storeEnumTagMultiPayload();
        sub_190A25F80();
        sub_190A26120();
        v95 = v120;
        sub_190D54C50();
        sub_19022EEA4(v94, &qword_1EAD5A628);
        sub_19022FD14(v95, v123, &qword_1EAD5A650);
        swift_storeEnumTagMultiPayload();
        sub_190A25EF4();
        sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
        sub_190D54C50();
        sub_19022EEA4(v95, &qword_1EAD5A650);
        v45 = type metadata accessor for TTRNotificationIssueView;
        v46 = v93;
      }

      return sub_190A2620C(v46, v45);
    }

    v54 = *(a1 + 24);
    v53 = *(a1 + 32);
    v55 = v54;
    if (v53)
    {
      v56 = [v53 guid];
      v53 = sub_190D56F10();
      v58 = v57;
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    v73 = sub_190A201C8();
    v75 = v74;
    v76 = swift_getKeyPath();
    v77 = v106;
    *v106 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    *(v77 + *(v112 + 20)) = v54;
    v79 = (v77 + *(v78 + 24));
    *v79 = v53;
    v79[1] = v58;
    v80 = (v77 + *(v78 + 28));
    *v80 = v73;
    v80[1] = v75;
    v81 = v109;
    sub_190A262F4(v77, v109, type metadata accessor for TTRTranslationIssueView);
    sub_190A2628C(v81, v113, type metadata accessor for TTRTranslationIssueView);
    swift_storeEnumTagMultiPayload();
    sub_190A26374(&qword_1EAD5A6A0, type metadata accessor for TTRTranslationIssueView);
    sub_190A26374(&qword_1EAD5A6A8, type metadata accessor for TTRNotificationIssueView);
    v82 = v115;
    sub_190D54C50();
    sub_19022FD14(v82, v118, &qword_1EAD5A628);
    swift_storeEnumTagMultiPayload();
    sub_190A25F80();
    sub_190A26120();
    v83 = v120;
    sub_190D54C50();
    sub_19022EEA4(v82, &qword_1EAD5A628);
    sub_19022FD14(v83, v123, &qword_1EAD5A650);
    swift_storeEnumTagMultiPayload();
    sub_190A25EF4();
    sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
    sub_190D54C50();
    sub_19022EEA4(v83, &qword_1EAD5A650);
    v84 = type metadata accessor for TTRTranslationIssueView;
  }

  v45 = v84;
  v46 = v81;
  return sub_190A2620C(v46, v45);
}

uint64_t sub_190A232A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6C8);
  v46 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v31 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6D0);
  v43 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6D8);
  v37 = *(v42 - 8);
  v10 = v37;
  MEMORY[0x1EEE9AC00](v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6E0);
  sub_190233640(&qword_1EAD5A6E8, &qword_1EAD5A6E0);
  v36 = v15;
  sub_190D562E0();
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A6F0);
  sub_190233640(&qword_1EAD5A6F8, &qword_1EAD5A6F0);
  v34 = v9;
  sub_190D562E0();
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A700);
  sub_190233640(&qword_1EAD5A708, &qword_1EAD5A700);
  v16 = v45;
  sub_190D562E0();
  v31 = *(v10 + 16);
  v35 = v12;
  v17 = v42;
  v31(v12, v15, v42);
  v33 = *(v43 + 16);
  v18 = v44;
  v19 = v38;
  v33(v44, v9, v38);
  v32 = *(v46 + 16);
  v20 = v39;
  v21 = v16;
  v22 = v40;
  v32(v39, v21, v40);
  v23 = v41;
  v31(v41, v12, v17);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A710);
  v33(&v23[*(v24 + 48)], v18, v19);
  v25 = v20;
  v32(&v23[*(v24 + 64)], v20, v22);
  v26 = *(v46 + 8);
  v26(v45, v22);
  v27 = *(v43 + 8);
  v27(v34, v19);
  v28 = *(v37 + 8);
  v29 = v42;
  v28(v36, v42);
  v26(v25, v22);
  v27(v44, v19);
  return (v28)(v35, v29);
}

uint64_t sub_190A23818@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A748);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v46 - v6;
  v7 = type metadata accessor for TTRSheetButtonView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A750);
  v56 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  sub_190A2628C(a1, v10, type metadata accessor for TTRSheetButtonView);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v54 = v9;
  v24 = swift_allocObject();
  sub_190A262F4(v10, v24 + v23, type metadata accessor for TTRSheetButtonView);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A758);
  sub_190233640(&qword_1EAD5A760, &qword_1EAD5A758);
  v57 = v22;
  v55 = v25;
  sub_190D56030();
  v53 = a1;
  v26 = *(a1 + 32);
  if (v26)
  {
    v27 = v26;
    if (([v27 filterCategory] | 2) != 2)
    {
      sub_190A2628C(v53, v10, type metadata accessor for TTRSheetButtonView);
      v29 = swift_allocObject();
      sub_190A262F4(v10, v29 + v23, type metadata accessor for TTRSheetButtonView);
      v30 = v60;
      sub_190D56030();

      (*(v56 + 32))(v61, v30, v52);
      v28 = 0;
      goto LABEL_6;
    }
  }

  v28 = 1;
LABEL_6:
  v31 = v56;
  v32 = v52;
  (*(v56 + 56))(v61, v28, 1, v52);
  v47 = type metadata accessor for TTRSheetButtonView;
  v33 = v53;
  sub_190A2628C(v53, v10, type metadata accessor for TTRSheetButtonView);
  v34 = swift_allocObject();
  sub_190A262F4(v10, v34 + v23, type metadata accessor for TTRSheetButtonView);
  sub_190D56030();
  sub_190A2628C(v33, v10, v47);
  v35 = swift_allocObject();
  sub_190A262F4(v10, v35 + v23, type metadata accessor for TTRSheetButtonView);
  v36 = v48;
  sub_190D56030();
  v37 = *(v31 + 16);
  v38 = v58;
  v37(v58, v57, v32);
  v39 = v59;
  sub_19022FD14(v61, v59, &qword_1EAD5A748);
  v40 = v49;
  v37(v49, v60, v32);
  v41 = v50;
  v37(v50, v36, v32);
  v42 = v51;
  v37(v51, v38, v32);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A768);
  sub_19022FD14(v39, &v42[v43[12]], &qword_1EAD5A748);
  v37(&v42[v43[16]], v40, v32);
  v37(&v42[v43[20]], v41, v32);
  v44 = *(v31 + 8);
  v44(v36, v32);
  v44(v60, v32);
  sub_19022EEA4(v61, &qword_1EAD5A748);
  v44(v57, v32);
  v44(v41, v32);
  v44(v40, v32);
  sub_19022EEA4(v59, &qword_1EAD5A748);
  return (v44)(v58, v32);
}

uint64_t sub_190A23FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_190D55EA0();
  v12 = sub_190D54EB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8 & 1;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_19081E474(v4, v6, v8 & 1);
}

double sub_190A241AC@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548D0();
  v20 = 1;
  a1(&v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 12) = *(v18 + 12);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 12) = *(v18 + 12);
  sub_19022FD14(&v21, &v11, &qword_1EAD5A770);
  sub_19022EEA4(v28, &qword_1EAD5A770);
  *&v19[71] = v25;
  *&v19[87] = v26;
  *&v19[103] = v27[0];
  *&v19[115] = *(v27 + 12);
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[55] = v24;
  v5 = *&v19[64];
  *(a2 + 97) = *&v19[80];
  v6 = *&v19[112];
  *(a2 + 113) = *&v19[96];
  *(a2 + 129) = v6;
  v7 = *v19;
  *(a2 + 33) = *&v19[16];
  result = *&v19[32];
  v9 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v10 = v20;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 144) = *&v19[127];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_190A242FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_190D55EA0();
  v12 = sub_190D54EB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8 & 1;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_19081E474(v4, v6, v8 & 1);
}

uint64_t sub_190A244F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_190D55EA0();
  v12 = sub_190D54EB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8 & 1;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_19081E474(v4, v6, v8 & 1);
}

uint64_t sub_190A246E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_190D55EA0();
  v12 = sub_190D54EB0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v4;
  *(a1 + 72) = v6;
  *(a1 + 80) = v8 & 1;
  *(a1 + 88) = v10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v11;
  *(a1 + 120) = v12;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8 & 1);
  sub_190D52690();
  sub_19081E474(v4, v6, v8 & 1);
}

uint64_t sub_190A248B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for TTRSheetButtonView();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = v5;
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A700);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A730);
  v62 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v43 - v19;
  v52 = type metadata accessor for TTRSheetButtonView;
  sub_190A2628C(a1, v6, type metadata accessor for TTRSheetButtonView);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v50 = type metadata accessor for TTRSheetButtonView;
  sub_190A262F4(v6, v21 + v20, type metadata accessor for TTRSheetButtonView);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A718);
  v46 = sub_190233640(&qword_1EAD5A720, &qword_1EAD5A718);
  v22 = v16;
  sub_190D56030();
  v23 = *(a1 + 88);
  v64 = *(a1 + 80);
  v65 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FF0();
  v63 = a1;
  v44 = a1;
  sub_190233640(&qword_1EAD5A708, &qword_1EAD5A700);
  v24 = v59;
  sub_190D55B20();

  v48 = *(v60 + 8);
  v49 = v60 + 8;
  v48(v22, v24);
  v25 = v52;
  sub_190A2628C(a1, v6, v52);
  v26 = swift_allocObject();
  v27 = v50;
  sub_190A262F4(v6, v26 + v20, v50);
  v45 = v22;
  sub_190D56030();
  sub_190A2628C(v44, v6, v25);
  v28 = swift_allocObject();
  sub_190A262F4(v6, v28 + v20, v27);
  v29 = v61;
  sub_190D56030();
  v30 = *(v62 + 16);
  v31 = v53;
  v32 = v54;
  v30(v53, v58, v54);
  v33 = *(v60 + 16);
  v34 = v55;
  v35 = v59;
  v33(v55, v22, v59);
  v36 = v56;
  v33(v56, v29, v35);
  v37 = v57;
  v30(v57, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A738);
  v33(&v37[*(v38 + 48)], v34, v35);
  v33(&v37[*(v38 + 64)], v36, v35);
  v39 = v48;
  v48(v61, v35);
  v39(v45, v35);
  v40 = v39;
  v41 = *(v62 + 8);
  v41(v58, v32);
  v40(v36, v35);
  v40(v34, v35);
  return (v41)(v31, v32);
}

uint64_t sub_190A2501C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7 & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8);
  sub_190D52690();
  sub_19081E474(v4, v6, v8);
}

uint64_t sub_190A251C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for TTRSheetButtonView();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_190D55CD0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  MEMORY[0x1EEE9AC00](v6);
  sub_190D549E0();
  v7 = sub_190D555D0();
  v26 = v8;
  v27 = v7;
  v24 = v9;
  v25 = v10;
  sub_190D549E0();
  v11 = sub_190D555D0();
  v22[2] = v12;
  v22[3] = v11;
  v22[1] = v13;
  sub_190D549E0();
  v14 = sub_190D555D0();
  v16 = v15;
  v18 = v17;
  sub_190A2628C(a1, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRSheetButtonView);
  v19 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v20 = swift_allocObject();
  sub_190A262F4(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for TTRSheetButtonView);
  sub_190D55CC0();
  sub_19081E474(v14, v16, v18 & 1);

  sub_190D55CB0();
  return sub_190D55CA0();
}

double sub_190A254F0@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548D0();
  v18 = 1;
  a1(&v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 9) = *(v16 + 9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 9) = *(v16 + 9);
  sub_19022FD14(&v19, &v10, &qword_1EAD5A728);
  sub_19022EEA4(v25, &qword_1EAD5A728);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[96] = *(v24 + 9);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[32];
  *(a2 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v17[96];
  result = *v17;
  v8 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v8;
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 49) = v5;
  return result;
}

uint64_t sub_190A25650@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7 & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8);
  sub_190D52690();
  sub_19081E474(v4, v6, v8);
}

uint64_t sub_190A25814@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EA0();
  v3 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v4 = sub_190D555D0();
  v6 = v5;
  v8 = v7 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7 & 1;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v4, v6, v8);
  sub_190D52690();
  sub_19081E474(v4, v6, v8);
}

uint64_t sub_190A259BC(uint64_t a1)
{
  v2 = type metadata accessor for TTRSheetButtonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190A2628C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRSheetButtonView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190A262F4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TTRSheetButtonView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A718);
  sub_190233640(&qword_1EAD5A720, &qword_1EAD5A718);
  return sub_190D56030();
}

uint64_t sub_190A25B68@<X0>(uint64_t a1@<X8>)
{
  v16 = sub_190D55EA0();
  v2 = sub_190D55DD0();
  sub_190D56500();
  sub_190D53C60();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D54E80();
  v8 = sub_190D55580();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v16;
  *(a1 + 8) = v2;
  *(a1 + 16) = v17;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v20;
  *(a1 + 48) = v21;
  *(a1 + 56) = v22;
  *(a1 + 64) = v8;
  *(a1 + 72) = v10;
  *(a1 + 80) = v12 & 1;
  *(a1 + 88) = v14;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  sub_190D50920();
  sub_190D50920();
  sub_19081BE48(v8, v10, v12 & 1);
  sub_190D52690();
  sub_19081E474(v8, v10, v12 & 1);
}

uint64_t sub_190A25D70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54000();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_190A22144(v2, a1);
  sub_190D53FF0();
  (*(v5 + 16))(v7, v10, v4);
  sub_190A26374(&qword_1EAD5A610, MEMORY[0x1E697E470]);
  v11 = sub_190D53CF0();
  (*(v5 + 8))(v10, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A618);
  *(a1 + *(result + 36)) = v11;
  return result;
}

unint64_t sub_190A25EF4()
{
  result = qword_1EAD5A668;
  if (!qword_1EAD5A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A650);
    sub_190A25F80();
    sub_190A26120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A668);
  }

  return result;
}

unint64_t sub_190A25F80()
{
  result = qword_1EAD5A670;
  if (!qword_1EAD5A670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A648);
    sub_190A2603C();
    sub_190A26374(&qword_1EAD5A690, type metadata accessor for TTRWrongServiceTypeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A670);
  }

  return result;
}

unint64_t sub_190A2603C()
{
  result = qword_1EAD5A678;
  if (!qword_1EAD5A678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A658);
    sub_190233640(&qword_1EAD5A680, &qword_1EAD5A688);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A678);
  }

  return result;
}

unint64_t sub_190A26120()
{
  result = qword_1EAD5A698;
  if (!qword_1EAD5A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A628);
    sub_190A26374(&qword_1EAD5A6A0, type metadata accessor for TTRTranslationIssueView);
    sub_190A26374(&qword_1EAD5A6A8, type metadata accessor for TTRNotificationIssueView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A698);
  }

  return result;
}

uint64_t sub_190A2620C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190A2628C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A262F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A26374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A263BC()
{
  type metadata accessor for TTRSheetButtonView();

  return sub_190A24FA4();
}

unint64_t sub_190A26454()
{
  result = qword_1EAD5A740;
  if (!qword_1EAD5A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A740);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{
  v1 = type metadata accessor for TTRSheetButtonView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 64))
  {
  }

  v5 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A266A4(uint64_t a1)
{
  v3 = type metadata accessor for TTRSheetButtonView();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = *(v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 64);
  if (v6)
  {
    return v6(a1);
  }

  return result;
}

unint64_t sub_190A26718()
{
  result = qword_1EAD5A778;
  if (!qword_1EAD5A778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A618);
    sub_190A267D0();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A778);
  }

  return result;
}

unint64_t sub_190A267D0()
{
  result = qword_1EAD5A780;
  if (!qword_1EAD5A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A788);
    sub_190A26854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A780);
  }

  return result;
}

unint64_t sub_190A26854()
{
  result = qword_1EAD5A790;
  if (!qword_1EAD5A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A798);
    sub_190A25EF4();
    sub_190A26374(&qword_1EAD5A6B0, type metadata accessor for TTRFilteringIssueView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A790);
  }

  return result;
}

uint64_t type metadata accessor for TTRWrongServiceTypeView()
{
  result = qword_1EAD5A7A0;
  if (!qword_1EAD5A7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A26994()
{
  sub_190A26AA0(319, &qword_1EAD5A7B0, &type metadata for MessageType, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_190A26AA0(319, &qword_1EAD5A7B8, MEMORY[0x1E69E6370], MEMORY[0x1E697BF20]);
    if (v1 <= 0x3F)
    {
      sub_1909606CC();
      if (v2 <= 0x3F)
      {
        sub_1909FFA04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190A26AA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_190A26AF4()
{
  result = qword_1EAD5A7C0;
  if (!qword_1EAD5A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A7C0);
  }

  return result;
}

uint64_t sub_190A26B48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TTRWrongServiceTypeView();
  sub_1909645C0(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190A26D38()
{
  v1 = v0;
  v2 = sub_190D53D10();
  v93 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v83 - v5;
  v6 = sub_190D515F0();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v83 - v9;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000022, 0x8000000190E6C440);
  v11 = type metadata accessor for TTRWrongServiceTypeView();
  MEMORY[0x193AF28B0](*(v1 + v11[9]), *(v1 + v11[9] + 8));
  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  v12 = *(v0 + v11[7]);
  result = [v12 guid];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v88 = v2;
  v15 = sub_190D56F10();
  v17 = v16;

  MEMORY[0x193AF28B0](v15, v17);

  MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
  v18 = v11[8];
  v87 = v1;
  MEMORY[0x193AF28B0](*(v1 + v18), *(v1 + v18 + 8));
  MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
  v19 = [v12 description];
  v20 = sub_190D56F10();
  v22 = v21;

  MEMORY[0x193AF28B0](v20, v22);

  v85 = v94;
  v86 = v95;
  v23 = [v12 description];
  v24 = sub_190D56F10();
  v26 = v25;

  v94 = v24;
  v95 = v26;
  v100 = 0x3D65636976726573;
  v101 = 0xE800000000000000;
  v27 = sub_190D519C0();
  v84 = *(*(v27 - 8) + 56);
  v84(v10, 1, 1, v27);
  sub_19081E484();
  sub_190D580F0();
  v29 = v28;
  LOBYTE(v17) = v30;
  sub_19022EEA4(v10, &qword_1EAD54C10);

  if (v17)
  {
    goto LABEL_6;
  }

  v31 = [v12 description];
  v32 = sub_190D56F10();
  v34 = v33;

  v35 = sub_190C84B54(v29, v32, v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v94 = v35;
  v95 = v37;
  v96 = v39;
  v97 = v41;
  v100 = 59;
  v101 = 0xE100000000000000;
  sub_190A26454();
  v42 = sub_190D580A0();

  if (!v42[2])
  {

LABEL_6:
    v45 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_7;
  }

  v44 = v42[4];
  v43 = v42[5];
  sub_190D52690();

  v45 = v44 & 0xFFFFFFFFFFFFLL;
LABEL_7:

  v46 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v46 = v45;
  }

  if (v46)
  {
    v100 = 544432416;
    v101 = 0xE400000000000000;
    v47 = [v12 description];
    v48 = sub_190D56F10();
    v50 = v49;

    v94 = v48;
    v95 = v50;
    v98 = 0x3D65636976726573;
    v99 = 0xE800000000000000;
    v84(v10, 1, 1, v27);
    sub_190D580F0();
    v52 = v51;
    LOBYTE(v48) = v53;
    sub_19022EEA4(v10, &qword_1EAD54C10);

    if (v48)
    {
      v54 = 0;
      v55 = 0xE000000000000000;
    }

    else
    {
      v58 = [v12 description];
      v59 = sub_190D56F10();
      v61 = v60;

      v62 = sub_190C84B54(v52, v59, v61);
      v64 = v63;
      v66 = v65;
      v68 = v67;

      v94 = v62;
      v95 = v64;
      v96 = v66;
      v97 = v68;
      v98 = 59;
      v99 = 0xE100000000000000;
      sub_190A26454();
      v69 = sub_190D580A0();

      if (v69[2])
      {
        v54 = v69[4];
        v55 = v69[5];
        sub_190D52690();
      }

      else
      {
        v54 = 0;
        v55 = 0xE000000000000000;
      }
    }

    MEMORY[0x193AF28B0](v54, v55);

    v56 = v100;
    v57 = v101;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  v94 = 0;
  v95 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000037, 0x8000000190E6DB50);
  v70 = *(v87 + 8);
  LOBYTE(v100) = *v87;
  v101 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A818);
  sub_190D55FD0();
  if (v98 > 2u)
  {
    v74 = 0x8000000190E6DC20;
    if (v98 != 4)
    {
      v74 = 0x8000000190E6DB90;
    }

    if (v98 == 3)
    {
      v72 = 0x100000000000001BLL;
    }

    else
    {
      v72 = 0x1000000000000015;
    }

    if (v98 == 3)
    {
      v73 = 0x8000000190E6DC40;
    }

    else
    {
      v73 = v74;
    }

    v71 = v90;
  }

  else
  {
    v71 = v90;
    if (v98)
    {
      if (v98 == 1)
      {
        v72 = 0x6567617373654D69;
      }

      else
      {
        v72 = 0x1000000000000016;
      }

      if (v98 == 1)
      {
        v73 = 0xE800000000000000;
      }

      else
      {
        v73 = 0x8000000190E6DC60;
      }
    }

    else
    {
      v73 = 0xE90000000000002ELL;
      v72 = 0x2E2E65736F6F6843;
    }
  }

  MEMORY[0x193AF28B0](v72, v73);

  MEMORY[0x193AF28B0](0x2074692074756220, 0xEC000000746E6573);
  MEMORY[0x193AF28B0](v56, v57);

  MEMORY[0x193AF28B0](0xD00000000000006CLL, 0x8000000190E6DBB0);
  MEMORY[0x193AF28B0](v85, v86);

  MEMORY[0x193AF28B0](0xD00000000000003ALL, 0x8000000190E6C520);
  v75 = v89;
  sub_190D515E0();

  v76 = v91;
  if ((*(v71 + 48))(v75, 1, v91) == 1)
  {
    sub_19022EEA4(v75, &unk_1EAD55F20);
  }

  else
  {
    v77 = v83;
    (*(v71 + 32))(v83, v75, v76);
    v78 = [objc_opt_self() sharedApplication];
    v79 = sub_190D51570();
    sub_19082233C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_190964630();
    v80 = sub_190D56D60();

    [v78 openURL:v79 options:v80 completionHandler:0];

    (*(v71 + 8))(v77, v76);
  }

  v81 = v88;
  v82 = v92;
  sub_190A26B48(v92);
  sub_190D53D00();
  return (*(v93 + 8))(v82, v81);
}

uint64_t sub_190A27778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BD0);
  v50 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v49 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v33[-v5];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A7F0);
  v36 = *(v46 - 8);
  v6 = v36;
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v40 = sub_190D54AD0();
  sub_190A27CC8(a1, &v53);
  v39 = v53;
  v43 = v54;
  v11 = v55;
  v48 = v56;
  v53 = sub_190D55DA0();
  v47 = sub_190D561E0();
  v58 = 0;
  v57 = v11;
  v38 = sub_190D549E0();
  v37 = v12;
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A7F8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A800);
  v14 = sub_190D541B0();
  v15 = sub_190233640(&qword_1EAD5A808, &qword_1EAD5A800);
  v53 = v13;
  v54 = v14;
  v55 = v15;
  v56 = MEMORY[0x1E697C178];
  swift_getOpaqueTypeConformance2();
  v35 = v10;
  sub_190D562A0();
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C48);
  sub_190964164();
  v16 = v45;
  sub_190D562E0();
  v17 = v58;
  v38 = *(v6 + 16);
  v18 = v57;
  v34 = v57;
  v19 = v44;
  v20 = v46;
  v38(v44, v10, v46);
  v37 = *(v50 + 16);
  v21 = v49;
  v22 = v41;
  v37(v49, v16, v41);
  v23 = v42;
  *v42 = v40;
  v23[1] = 0x4020000000000000;
  *(v23 + 16) = v17;
  v24 = v39;
  v25 = v43;
  v23[3] = v39;
  v23[4] = v25;
  *(v23 + 40) = v18;
  v26 = v47;
  v23[6] = v48;
  v23[7] = v26;
  v27 = v23;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A810);
  v38(v27 + *(v28 + 48), v19, v20);
  v37(v27 + *(v28 + 64), v21, v22);
  LOBYTE(v21) = v34;
  sub_19081BE48(v24, v25, v34 & 1);
  v29 = *(v50 + 8);
  sub_190D52690();
  sub_190D50920();
  v29(v45, v22);
  v30 = *(v36 + 8);
  v31 = v46;
  v30(v35, v46);
  v29(v49, v22);
  v30(v44, v31);
  sub_19081E474(v24, v43, v21 & 1);
}

uint64_t sub_190A27CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_190D549C0();
  sub_190D549B0();
  v8 = *(a1 + *(type metadata accessor for TTRWrongServiceTypeView() + 28));
  v9 = [v8 description];
  v10 = sub_190D56F10();
  v12 = v11;

  v48 = v10;
  v49 = v12;
  v52 = 0x3D65636976726573;
  v53 = 0xE800000000000000;
  v13 = sub_190D519C0();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_19081E484();
  sub_190D580F0();
  v15 = v14;
  v17 = v16;
  sub_19022EEA4(v6, &qword_1EAD54C10);

  if ((v17 & 1) == 0)
  {
    v18 = [v8 description];
    v19 = sub_190D56F10();
    v21 = v20;

    v22 = sub_190C84B54(v15, v19, v21);
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v48 = v22;
    v49 = v24;
    v50 = v26;
    v51 = v28;
    v52 = 59;
    v53 = 0xE100000000000000;
    sub_190A26454();
    v29 = sub_190D580A0();

    if (*(v29 + 16))
    {
      sub_190D52690();
    }
  }

  sub_190D549A0();

  sub_190D549B0();
  sub_190D549F0();
  v30 = sub_190D555D0();
  v32 = v31;
  v34 = v33;
  sub_190D55360();
  v35 = sub_190D555B0();
  v37 = v36;
  v39 = v38;

  sub_19081E474(v30, v32, v34 & 1);

  LODWORD(v48) = sub_190D54EB0();
  v40 = sub_190D55580();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_19081E474(v35, v37, v39 & 1);

  *a2 = v40;
  *(a2 + 8) = v42;
  *(a2 + 16) = v44 & 1;
  *(a2 + 24) = v46;
  return result;
}

uint64_t sub_190A280D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v14 = sub_190D541B0();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A800);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v13 = sub_190D549E0();
  v10 = *(a1 + 1);
  v16 = *a1;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A818);
  sub_190D55FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A820);
  sub_190A26AF4();
  sub_190A292BC();
  sub_190D56130();
  sub_190D541A0();
  sub_190233640(&qword_1EAD5A808, &qword_1EAD5A800);
  v11 = v14;
  sub_190D55790();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_190A28380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A830);
  sub_190233640(&qword_1EAD5A838, &qword_1EAD5A7D0);
  sub_190A26AF4();
  swift_getOpaqueTypeConformance2();
  sub_190A29380();
  return sub_190D56290();
}

uint64_t sub_190A284B0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_19081E484();
  result = sub_190D555F0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_190A285D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for TTRWrongServiceTypeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_190A29190(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_190A291F4(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v27 = a1;
  sub_190D56030();
  v14 = *a1;
  v15 = *(a1 + 8);
  LOBYTE(v29) = *a1;
  v30 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A818);
  sub_190D55FD0();
  if (v28 > 2u || v28)
  {
    v16 = sub_190D58760();
  }

  else
  {
    v16 = 1;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16 & 1;
  (*(v6 + 32))(v11, v8, v25);
  v19 = &v11[*(v9 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_1908D9D28;
  v19[2] = v18;
  LOBYTE(v29) = v14;
  v30 = v15;
  sub_190D55FD0();
  if (v28 <= 2u && !v28)
  {

    goto LABEL_10;
  }

  v20 = sub_190D58760();

  if (v20)
  {
LABEL_10:
    sub_190D55DD0();
    v21 = sub_190D55DF0();

    goto LABEL_11;
  }

  v21 = sub_190D55DD0();
LABEL_11:
  v29 = v21;
  v22 = sub_190D561E0();
  v23 = v26;
  sub_190964550(v11, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C48);
  *(v23 + *(result + 36)) = v22;
  return result;
}

uint64_t sub_190A28B34@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = sub_190D555D0();
  v4 = v3;
  v6 = v5;
  sub_190D55DC0();
  v7 = sub_190D55570();
  v9 = v8;
  v11 = v10;

  sub_19081E474(v2, v4, v6 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A818);
  sub_190D55FD0();
  if (v21 <= 2u && !v21)
  {

    goto LABEL_6;
  }

  v12 = sub_190D58760();

  if (v12)
  {
LABEL_6:
    sub_190D553C0();
    goto LABEL_7;
  }

  sub_190D553A0();
LABEL_7:
  v13 = sub_190D55540();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_19081E474(v7, v9, v11 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_190A28DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A7E0);
  sub_190233640(&qword_1EAD5A7E8, &qword_1EAD5A7E0);
  return sub_190D554D0();
}

uint64_t sub_190A28E70()
{
  sub_190D56FC0();
}

uint64_t sub_190A28F94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190A293D4();
  *a1 = result;
  return result;
}

void sub_190A28FC4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657463;
  v4 = 0x656C6553656E6F6ELL;
  v5 = 0x8000000190E5AED0;
  v6 = 0xD000000000000014;
  v7 = 0xEE00534D53656761;
  if (v2 != 4)
  {
    v7 = 0xEE00534352656761;
  }

  if (v2 != 3)
  {
    v6 = 0x7373654D74786574;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6567617373656D69;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x8000000190E5AEB0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_190A29108()
{
  result = qword_1EAD5A7D8;
  if (!qword_1EAD5A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A7D8);
  }

  return result;
}

uint64_t sub_190A29190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWrongServiceTypeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A291F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWrongServiceTypeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190A292BC()
{
  result = qword_1EAD5A828;
  if (!qword_1EAD5A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A820);
    sub_190A26AF4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A828);
  }

  return result;
}

unint64_t sub_190A29380()
{
  result = qword_1EAD5A840;
  if (!qword_1EAD5A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A840);
  }

  return result;
}

uint64_t sub_190A293D4()
{
  v0 = sub_190D585F0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for TTRSheetView()
{
  result = qword_1EAD5A860;
  if (!qword_1EAD5A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A29494()
{
  sub_1902188FC(319, &qword_1EAD57B70);
  if (v0 <= 0x3F)
  {
    sub_190A29608();
    if (v1 <= 0x3F)
    {
      sub_190A2966C(319, &qword_1EAD5A880, MEMORY[0x1E697C0B0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_190960724(319, &qword_1EAD5A888);
        if (v3 <= 0x3F)
        {
          sub_190960724(319, &qword_1EAD55F80);
          if (v4 <= 0x3F)
          {
            sub_190A2966C(319, &qword_1EAD562D0, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_190A29608()
{
  if (!qword_1EAD5A870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A878);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5A870);
    }
  }
}

void sub_190A2966C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_190A296EC()
{
  v0 = [objc_opt_self() sharedRegistry];
  v1 = [v0 cachedChats];

  sub_1902188FC(0, &qword_1EAD44EE0);
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    goto LABEL_42;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_43:

    return;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v25 = v2 + 32;
  v26 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = &selRef_green_chevronImage;
  v30 = v2;
  v27 = v2 & 0xC000000000000001;
  v28 = v3;
  while (v5)
  {
    v7 = MEMORY[0x193AF3B90](v4, v2);
    v8 = __OFADD__(v4, 1);
    v9 = v4 + 1;
    if (v8)
    {
      goto LABEL_41;
    }

LABEL_11:
    v31 = v9;
    v32 = v7;
    v2 = [v7 _items];
    sub_1902188FC(0, &unk_1EAD54F90);
    v10 = sub_190D57180();

    if (v10 >> 62)
    {
      v11 = sub_190D581C0();
      if (!v11)
      {
        goto LABEL_4;
      }

LABEL_13:
      v12 = 0;
      v34 = *v29;
      v33 = v11;
      while (2)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x193AF3B90](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v3 = sub_190D581C0();
          if (!v3)
          {
            goto LABEL_43;
          }

          goto LABEL_3;
        }

        v16 = [v13 v6[53]];
        if (v16)
        {
          v2 = v16;
          v17 = sub_190D56F10();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = v6;
        v21 = [v34 v6[53]];
        if (v21)
        {
          v22 = v21;
          v2 = sub_190D56F10();
          v24 = v23;

          if (v19)
          {
            v6 = v20;
            if (v24)
            {
              if (v17 == v2 && v19 == v24)
              {

                return;
              }

              v2 = sub_190D58760();

              if (v2)
              {
                goto LABEL_37;
              }

              goto LABEL_16;
            }

LABEL_33:
          }

          else
          {

            v6 = v20;
            if (!v24)
            {
              goto LABEL_37;
            }
          }

LABEL_16:
          ++v12;
          if (v15 == v33)
          {
            goto LABEL_4;
          }

          continue;
        }

        break;
      }

      if (!v19)
      {

LABEL_37:

        return;
      }

      goto LABEL_33;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_13;
    }

LABEL_4:

    v5 = v27;
    v2 = v30;
    v4 = v31;
    if (v31 == v28)
    {
      goto LABEL_43;
    }
  }

  if (v4 < *(v26 + 16))
  {
    v7 = *(v25 + 8 * v4);
    v8 = __OFADD__(v4, 1);
    v9 = v4 + 1;
    if (v8)
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_190A29A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v81 = sub_190D54870();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRSheetView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = v6;
  v89 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TTRSheetButtonView();
  MEMORY[0x1EEE9AC00](v88);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8C0);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v68 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8B8);
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v74 = &v68 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8A8);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v91 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A898);
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v68 - v14;
  LOBYTE(v100) = 0;
  sub_190D56240();
  v15 = v93;
  v69 = v94;
  v16 = v95;
  v17 = *a1;
  v100 = *(a1 + 8);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FD0();
  v19 = v99;
  v90 = a1;
  v20 = sub_190A2ADC8(a1);
  v22 = v21;
  v23 = a1;
  v24 = v89;
  sub_190A2C12C(v23, v89);
  v71 = *(v5 + 80);
  v25 = (v71 + 16) & ~v71;
  v70 = v25;
  v26 = swift_allocObject();
  sub_190A2C190(v24, v26 + v25);
  KeyPath = swift_getKeyPath();
  v28 = v88;
  *&v8[*(v88 + 44)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v29 = v69;
  *v8 = v15;
  *(v8 + 1) = v29;
  v8[16] = v16;
  *(v8 + 3) = v18;
  *(v8 + 4) = v19;
  *(v8 + 5) = v20;
  *(v8 + 6) = v22;
  v30 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v31 = sub_190D56ED0();
  [v30 setDateFormat_];

  *(v8 + 7) = v30;
  *(v8 + 8) = sub_190A2C254;
  *(v8 + 9) = v26;
  LOBYTE(v99) = 0;
  sub_190D55FC0();
  v32 = *(&v100 + 1);
  v8[80] = v100;
  *(v8 + 11) = v32;
  sub_190D549E0();
  v33 = sub_190A2C080();
  v34 = v73;
  sub_190D558B0();

  sub_190A2C2C4(v8);
  v35 = v80;
  v36 = v78;
  v37 = v81;
  (*(v80 + 104))(v78, *MEMORY[0x1E697C428], v81);
  v93 = v28;
  v94 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v74;
  v40 = v75;
  sub_190D55AE0();
  (*(v35 + 8))(v36, v37);
  (*(v76 + 8))(v34, v40);
  sub_190D549E0();
  v93 = v40;
  v94 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v77;
  sub_190D559D0();

  (*(v79 + 8))(v39, v42);
  v43 = v89;
  sub_190A2C12C(v90, v89);
  v44 = v70;
  v45 = swift_allocObject();
  sub_190A2C190(v43, v45 + v44);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8B0);
  v93 = v42;
  v94 = v41;
  v47 = swift_getOpaqueTypeConformance2();
  v89 = sub_190A2C0D8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8D8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8E0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8E8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8F0);
  v52 = sub_19081E484();
  v93 = v88;
  v94 = MEMORY[0x1E69E6158];
  v95 = v33;
  v96 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v93 = v51;
  v94 = v53;
  v54 = swift_getOpaqueTypeConformance2();
  v93 = v50;
  v94 = v54;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8F8);
  v57 = sub_190233640(&qword_1EAD5A900, &qword_1EAD5A8F8);
  v93 = v56;
  v94 = v57;
  v58 = swift_getOpaqueTypeConformance2();
  v93 = v48;
  v94 = v49;
  v95 = v55;
  v96 = v58;
  v67 = swift_getOpaqueTypeConformance2();
  v59 = v82;
  v60 = v83;
  v61 = v89;
  v62 = v91;
  sub_190D55A70();

  (*(v84 + 8))(v62, v60);
  v92 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8A0);
  v93 = v60;
  v94 = &type metadata for ViewType;
  v95 = v46;
  v96 = v47;
  v97 = v61;
  v98 = v67;
  swift_getOpaqueTypeConformance2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A908);
  v64 = sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  v93 = v63;
  v94 = v64;
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  sub_190D55BF0();
  return (*(v86 + 8))(v59, v65);
}

uint64_t sub_190A2A564()
{
  v0 = sub_190D53FB0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for TTRSheetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A858);
  sub_190D55FD0();
  sub_190A2C0D8();
  sub_190D53F90();
  return sub_190D55FE0();
}

uint64_t sub_190A2A644@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_190D54870();
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TTRSheetButtonView();
  MEMORY[0x1EEE9AC00](v66);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8F0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v52 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8E8);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8D8);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v12;
  LOBYTE(v72) = *a1;
  v13 = v72;
  sub_190D56240();
  v14 = v67;
  v15 = v68;
  v16 = v69;
  v17 = *a2;
  v72 = *(a2 + 8);
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FD0();
  v19 = v71;
  v64 = a2;
  v20 = sub_190A2ADC8(a2);
  v22 = v21;
  *&v8[*(v66 + 44)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  *v8 = v14;
  *(v8 + 1) = v15;
  v8[16] = v16;
  *(v8 + 3) = v18;
  *(v8 + 4) = v19;
  *(v8 + 5) = v20;
  *(v8 + 6) = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v24 = sub_190D56ED0();
  [v23 setDateFormat_];

  *(v8 + 7) = v23;
  *(v8 + 8) = nullsub_10;
  *(v8 + 9) = 0;
  LOBYTE(v71) = 0;
  sub_190D55FC0();
  v25 = *(&v72 + 1);
  v8[80] = v72;
  *(v8 + 11) = v25;
  v26 = 0x646172676E776F44;
  v27 = 0xEB000000006E6F69;
  v28 = 0x74616C736E617254;
  v29 = 0xE900000000000067;
  v30 = 0x6E697265746C6946;
  if (v13 != 3)
  {
    v30 = 0x6163696669746F4ELL;
    v29 = 0xED0000736E6F6974;
  }

  if (v13 != 2)
  {
    v28 = v30;
    v27 = v29;
  }

  v31 = 0x8000000190E6DD00;
  if (v13)
  {
    v31 = 0xE900000000000065;
  }

  else
  {
    v26 = 0xD000000000000010;
  }

  if (v13 <= 1)
  {
    v32 = v31;
  }

  else
  {
    v26 = v28;
    v32 = v27;
  }

  v67 = v26;
  v68 = v32;
  v33 = sub_190A2C080();
  v34 = sub_19081E484();
  v35 = MEMORY[0x1E69E6158];
  v36 = v52;
  v37 = v66;
  sub_190D558C0();

  sub_190A2C2C4(v8);
  v39 = v57;
  v38 = v58;
  v40 = v59;
  (*(v58 + 104))(v57, *MEMORY[0x1E697C428], v59);
  v67 = v37;
  v68 = v35;
  v69 = v33;
  v70 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v54;
  v42 = v55;
  sub_190D55AE0();
  (*(v38 + 8))(v39, v40);
  (*(v53 + 8))(v36, v42);
  sub_190D549E0();
  v67 = v42;
  v68 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = v61;
  sub_190D559D0();

  v47 = (*(v56 + 8))(v43, v45);
  MEMORY[0x1EEE9AC00](v47);
  *(&v52 - 2) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8E0);
  v67 = v45;
  v68 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8F8);
  v49 = sub_190233640(&qword_1EAD5A900, &qword_1EAD5A8F8);
  v67 = v48;
  v68 = v49;
  swift_getOpaqueTypeConformance2();
  v50 = v63;
  sub_190D55BF0();
  return (*(v62 + 8))(v46, v50);
}

id sub_190A2ADC8(id *a1)
{
  result = [*a1 error];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    sub_1902188FC(0, &qword_1EAD5A930);
    if (swift_dynamicCast())
    {
      [v6 code];
      v2 = _NSStringFromIMMessageError();
      if (v2)
      {
        v3 = v2;
        v4 = sub_190D56F10();
      }

      else
      {
        v4 = 0x206E776F6E6B6E55;
      }

      MEMORY[0x193AF28B0](10272, 0xE200000000000000);
      [v6 code];
      v5 = sub_190D58720();
      MEMORY[0x193AF28B0](v5);

      MEMORY[0x193AF28B0](41, 0xE100000000000000);

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190A2AF40(uint64_t a1)
{
  v2 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A8F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_190D54D30();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563A8);
  sub_190233640(&unk_1EAD451C0, &qword_1EAD563A8);
  sub_190D53AE0();
  v7 = sub_190233640(&qword_1EAD5A900, &qword_1EAD5A8F8);
  MEMORY[0x193AF0690](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190A2B12C(uint64_t a1)
{
  v2 = type metadata accessor for TTRSheetView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190A2C12C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190A2C190(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_190D56030();
}

uint64_t sub_190A2B258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190A2B290(uint64_t a1)
{
  v2 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A908);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_190D54D30();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190D53AE0();
  v7 = sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  MEMORY[0x193AF0690](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190A2B47C(uint64_t a1)
{
  v2 = type metadata accessor for TTRSheetView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190D549E0();
  sub_190A2C12C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_190A2C190(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_190D56070();
}

uint64_t sub_190A2B5C0(uint64_t a1)
{
  v2 = sub_190D54800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_190D53D10();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRSheetView();
  sub_1909645C0(a1 + *(v13 + 36), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_190D53D00();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_190A2B834()
{
  sub_190A296EC();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FE0();
  sub_190D55FD0();
  if (v3)
  {
    v1 = [v3 guid];

    sub_190D56F10();
  }

  type metadata accessor for TTRSheetView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  return sub_190D55FE0();
}

uint64_t sub_190A2B948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D53FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - v9;
  *a2 = a1;
  v18[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A878);
  sub_190D55FC0();
  *(a2 + 8) = v19;
  v11 = type metadata accessor for TTRSheetView();
  sub_190D53FA0();
  (*(v5 + 16))(v7, v10, v4);
  sub_190D55FC0();
  (*(v5 + 8))(v10, v4);
  v12 = a2 + v11[7];
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_190D55FC0();
  v13 = v20;
  *v12 = v19;
  *(v12 + 16) = v13;
  v14 = a2 + v11[8];
  LOBYTE(v18[0]) = 0;
  sub_190D55FC0();
  v15 = *(&v19 + 1);
  *v14 = v19;
  *(v14 + 8) = v15;
  v16 = v11[9];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_190A2BB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v47 = *(a1 - 8);
  v46 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v36 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A858);
  v43 = v2;
  sub_190D55FF0();
  v48 = v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A890);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A898);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8A0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8A8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8B0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8B8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8C0);
  v8 = type metadata accessor for TTRSheetButtonView();
  v9 = sub_190A2C080();
  v49 = v8;
  v50 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v7;
  v50 = OpaqueTypeConformance2;
  v11 = swift_getOpaqueTypeConformance2();
  v49 = v6;
  v50 = v11;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = sub_190A2C0D8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8D8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8E0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8E8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8F0);
  v18 = sub_19081E484();
  v49 = v8;
  v50 = MEMORY[0x1E69E6158];
  v51 = v9;
  v52 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v49 = v17;
  v50 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v49 = v16;
  v50 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A8F8);
  v23 = sub_190233640(&qword_1EAD5A900, &qword_1EAD5A8F8);
  v49 = v22;
  v50 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v49 = v14;
  v50 = v15;
  v51 = v21;
  v52 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v49 = v38;
  v50 = &type metadata for ViewType;
  v51 = v37;
  v52 = v12;
  v53 = v13;
  v54 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A908);
  v28 = sub_190233640(&qword_1EAD5A910, &qword_1EAD5A908);
  v49 = v27;
  v50 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v49 = v40;
  v50 = v39;
  v51 = v26;
  v52 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v45;
  sub_190D54210();
  v31 = v44;
  sub_190A2C12C(v43, v44);
  v32 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v33 = swift_allocObject();
  sub_190A2C190(v31, v33 + v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A918);
  v35 = (v30 + *(result + 36));
  *v35 = sub_190A2C1F4;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

unint64_t sub_190A2C080()
{
  result = qword_1EAD5A8C8;
  if (!qword_1EAD5A8C8)
  {
    type metadata accessor for TTRSheetButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A8C8);
  }

  return result;
}

unint64_t sub_190A2C0D8()
{
  result = qword_1EAD5A8D0;
  if (!qword_1EAD5A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A8D0);
  }

  return result;
}

uint64_t sub_190A2C12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSheetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A2C190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSheetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A2C1F4()
{
  type metadata accessor for TTRSheetView();

  return sub_190A2B834();
}

uint64_t sub_190A2C254()
{
  type metadata accessor for TTRSheetView();

  return sub_190A2A564();
}

uint64_t sub_190A2C2C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRSheetButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A2C320@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRSheetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190A2A644(a1, v6, a2);
}

uint64_t objectdestroyTm_20()
{
  v1 = (type metadata accessor for TTRSheetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_190D53FB0();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A858);

  v7 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D53D10();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_190A2C5E4()
{
  result = qword_1EAD5A938;
  if (!qword_1EAD5A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5A918);
    sub_190233640(&qword_1EAD5A940, &qword_1EAD5A948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A938);
  }

  return result;
}

unint64_t sub_190A2C6A0()
{
  result = qword_1EAD5A950;
  if (!qword_1EAD5A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5A950);
  }

  return result;
}

void sub_190A2C6F8(uint64_t a1)
{
  if (qword_1EAD46248 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v3 = sub_190D53040();
    v4 = __swift_project_value_buffer(v3, qword_1EAD9D790);
    v5 = a1;
    v6 = sub_190D53020();
    inited = sub_190D576C0();
    if (os_log_type_enabled(v6, inited))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v84[0] = v9;
      *v8 = 136315138;
      v10 = [v5 IMChatItem];
      if (!v10)
      {
        goto LABEL_117;
      }

      v11 = v10;
      v12 = [v10 guid];

      if (!v12)
      {
        goto LABEL_118;
      }

      v13 = sub_190D56F10();
      v15 = v14;

      v1 = sub_19021D9F8(v13, v15, v84);

      *(v8 + 4) = v1;
      _os_log_impl(&dword_19020E000, v6, inited, "Consolidating Tapback suggestions for chatItem guid: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x193AF7A40](v9, -1, -1);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    else
    {
    }

    v16 = sub_190A2FCC0(v5);
    v17 = v16;
    v18 = (v16 >> 62);
    if (!(v16 >> 62))
    {
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_29;
      }

      v20 = 1;
LABEL_10:
      a1 = v20 != 0;
      if (v19 < a1)
      {
        goto LABEL_70;
      }

      if ((v17 & 0xC000000000000001) != 0 && v20)
      {
        sub_1902188FC(0, &qword_1EAD55560);
        sub_190D52690();
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          sub_190D582F0();
          v21 = v22;
        }

        while (a1 != v22);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_190D52690();
        if (!v18)
        {
LABEL_16:
          inited = 0;
          v23 = (v17 & 0xFFFFFFFFFFFFFF8);
          v24 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
          if (v20)
          {
            v25 = 3;
          }

          else
          {
            v25 = 1;
          }

LABEL_22:
          v18 = v24;
          sub_190D58780();
          swift_unknownObjectRetain_n();
          v30 = swift_dynamicCastClass();
          if (!v30)
          {
            swift_unknownObjectRelease();
            v30 = MEMORY[0x1E69E7CC0];
          }

          v31 = *(v30 + 16);

          if (__OFSUB__(v25 >> 1, inited))
          {
LABEL_110:
            __break(1u);
          }

          else if (v31 == (v25 >> 1) - inited)
          {
            v32 = swift_dynamicCastClass();

            v17 = v32;
            if (!v32)
            {
              swift_unknownObjectRelease();
              v17 = MEMORY[0x1E69E7CC0];
            }

            goto LABEL_28;
          }

          swift_unknownObjectRelease();
          v24 = v18;
LABEL_21:
          sub_190C22B38(v23, v24, inited, v25);
          v29 = v28;

          v17 = v29;
LABEL_28:
          swift_unknownObjectRelease();
          goto LABEL_29;
        }
      }

      v23 = sub_190D58550();
      inited = v26;
      v25 = v27;
      if ((v27 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    if (sub_190D581C0())
    {
      v49 = sub_190D581C0();
      if (v49 < 0)
      {
        goto LABEL_119;
      }

      v20 = v49;
      if (sub_190D581C0() < 0)
      {
        goto LABEL_120;
      }

      v19 = sub_190D581C0();
      goto LABEL_10;
    }

LABEL_29:
    v85 = v17;
    sub_190D52690();
    a1 = sub_190D53020();
    LOBYTE(inited) = sub_190D576C0();
    if (os_log_type_enabled(a1, inited))
    {
      v1 = swift_slowAlloc();
      *v1 = 134217984;
      if (v17 >> 62)
      {
LABEL_106:
        v33 = sub_190D581C0();
      }

      else
      {
        v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v1 + 4) = v33;
      _os_log_impl(&dword_19020E000, a1, inited, "Suggesting %ld sent tapbacks", v1, 0xCu);
      MEMORY[0x193AF7A40](v1, -1, -1);
    }

    v34 = [objc_opt_self() sharedInstance];
    if (!v34)
    {
      break;
    }

    a1 = v34;
    v1 = [v34 isInternalInstall];

    if (v1)
    {
      v1 = sub_190A2FE58();
      swift_beginAccess();
      a1 = &v85;
      sub_190CA9CF0(v1);
      swift_endAccess();
    }

    type metadata accessor for EmojiPreferences();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    swift_beginAccess();
    v17 = v85;
    if (v85 >> 62)
    {
      v35 = sub_190D581C0();
    }

    else
    {
      v35 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = 3 - v35;
    if (__OFSUB__(3, v35))
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_190DD55F0;
    *(v37 + 32) = v5;
    v25 = v37 + 32;
    v18 = v5;
    sub_190D52690();
    v38 = sub_190A2D768(v37, v17, inited);

    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = sub_190A2D518(v36, v38, &qword_1EAD55560, 0x1E69A82E8, sub_190C22B38);

    swift_beginAccess();
    v39 = sub_190D52690();
    sub_190CA9CF0(v39);
    swift_endAccess();
    sub_190D52690();
    v23 = sub_190D53020();
    v40 = sub_190D576C0();
    if (os_log_type_enabled(v23, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      if (v5 >> 62)
      {
        v76 = v18;
        v77 = v41;
        v42 = sub_190D581C0();
        v41 = v77;
        v18 = v76;
      }

      else
      {
        v42 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v41 + 4) = v42;
      v43 = v41;

      _os_log_impl(&dword_19020E000, v23, v40, "Suggesting %ld from message", v43, 0xCu);
      MEMORY[0x193AF7A40](v43, -1, -1);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      while (1)
      {
        if (!CKIsScreenLocked())
        {
          goto LABEL_83;
        }

        while (1)
        {
          v63 = [objc_opt_self() sharedBehaviors];
          if (!v63)
          {
            goto LABEL_116;
          }

          v64 = v63;

          v1 = [v64 suggestedAcknowledgementCount];

          a1 = v85;
          if (v85 >> 62)
          {
            v75 = sub_190D581C0();
            v66 = &v1[-v75];
            if (!__OFSUB__(v1, v75))
            {
LABEL_94:
              if (v66 >= 1)
              {
                v67 = sub_190D52690();
                v68 = sub_190A302D8(v67, inited, v66);

                swift_beginAccess();
                v69 = sub_190D52690();
                sub_190CA9CF0(v69);
                swift_endAccess();
                sub_190D52690();
                v70 = sub_190D53020();
                v71 = sub_190D576C0();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  *v72 = 134217984;
                  if (v68 >> 62)
                  {
                    v73 = sub_190D581C0();
                  }

                  else
                  {
                    v73 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  *(v72 + 4) = v73;

                  _os_log_impl(&dword_19020E000, v70, v71, "Suggesting %ld from keyboard", v72, 0xCu);
                  MEMORY[0x193AF7A40](v72, -1, -1);
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }
              }

              v74 = v85;
              sub_190D52690();
              sub_190A2D518(v1, v74, &qword_1EAD55560, 0x1E69A82E8, sub_190C22B38);

              swift_setDeallocating();

              return;
            }
          }

          else
          {
            v65 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v66 = &v1[-v65];
            if (!__OFSUB__(v1, v65))
            {
              goto LABEL_94;
            }
          }

          __break(1u);
LABEL_104:
          v50 = sub_190D581C0();
LABEL_75:
          inited = v80;
          v4 = v81;
          v18 = v78;
          v5 = v79;
          v25 = 5 - v50;
          if (__OFSUB__(5, v50))
          {
            __break(1u);
            goto LABEL_106;
          }

          sub_190D52690();
          v51 = sub_190A2D768(v36, v40, v80);

          v40 = sub_190A2D518(v25, v51, &qword_1EAD55560, 0x1E69A82E8, sub_190C22B38);

          swift_beginAccess();
          v52 = sub_190D52690();
          sub_190CA9CF0(v52);
          swift_endAccess();
          sub_190D52690();
          v23 = sub_190D53020();
          v36 = sub_190D576C0();
          if (os_log_type_enabled(v23, v36))
          {
            break;
          }

          swift_bridgeObjectRelease_n();
          if (!CKIsScreenLocked())
          {
LABEL_83:
            v40 = v85;
            if (v85 >> 62)
            {
              v55 = sub_190D581C0();
            }

            else
            {
              v55 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v56 = 6 - v55;
            if (__OFSUB__(6, v55))
            {
              __break(1u);
              goto LABEL_110;
            }

            sub_190D52690();
            sub_190A2EA4C(v18, v40);
            v58 = v57;

            v59 = sub_190A2D518(v56, v58, &qword_1EAD55560, 0x1E69A82E8, sub_190C22B38);

            swift_beginAccess();
            v60 = sub_190D52690();
            sub_190CA9CF0(v60);
            swift_endAccess();
            sub_190D52690();
            v61 = sub_190D53020();
            v62 = sub_190D576C0();
            if (os_log_type_enabled(v61, v62))
            {
              v40 = swift_slowAlloc();
              *v40 = 134217984;
              if (v59 >> 62)
              {
                v36 = sub_190D581C0();
              }

              else
              {
                v36 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              *(v40 + 4) = v36;

              _os_log_impl(&dword_19020E000, v61, v62, "Suggesting %ld from smart replies", v40, 0xCu);
              MEMORY[0x193AF7A40](v40, -1, -1);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }
          }
        }

        v53 = swift_slowAlloc();
        *v53 = 134217984;
        if (v40 >> 62)
        {
          v54 = sub_190D581C0();
        }

        else
        {
          v54 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v53 + 4) = v54;

        _os_log_impl(&dword_19020E000, v23, v36, "Suggesting %ld from chat", v53, 0xCu);
        MEMORY[0x193AF7A40](v53, -1, -1);

        v4 = v81;
      }
    }

    a1 = Strong;
    v78 = v18;
    v81 = v4;
    v1 = *(v82 + 24);
    ObjectType = swift_getObjectType();
    v17 = (*(v1 + 1))(ObjectType, v1);
    swift_unknownObjectRelease();
    v83 = MEMORY[0x1E69E7CC0];
    v18 = (v17 & 0xFFFFFFFFFFFFFF8);
    if (!(v17 >> 62))
    {
      v46 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v79 = v5;
      v80 = inited;
      if (!v46)
      {
        goto LABEL_72;
      }

      goto LABEL_47;
    }

LABEL_71:
    v46 = sub_190D581C0();
    v79 = v5;
    v80 = inited;
    if (!v46)
    {
LABEL_72:
      v36 = MEMORY[0x1E69E7CC0];
      goto LABEL_73;
    }

LABEL_47:
    v47 = 0;
    v36 = MEMORY[0x1E69E7CC0];
LABEL_48:
    a1 = v47;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x193AF3B90](a1, v17);
      }

      else
      {
        if (a1 >= v18[2].isa)
        {
          goto LABEL_62;
        }

        v48 = *(v17 + 8 * a1 + 32);
      }

      v1 = v48;
      v47 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x193AF29E0]();
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_190D571A0();
        }

        a1 = &v83;
        sub_190D571E0();
        v36 = v83;
        if (v47 == v46)
        {
LABEL_73:

          v40 = v85;
          if (!(v85 >> 62))
          {
            v50 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_75;
          }

          goto LABEL_104;
        }

        goto LABEL_48;
      }

      ++a1;
      if (v47 == v46)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
  }

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
}

unint64_t sub_190A2D518(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a2;
  v8 = a2 >> 62;
  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      v10 = 0;
      if (v9 >= a1)
      {
        v11 = a1;
      }

      else
      {
        v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 >= v11)
      {
LABEL_8:
        v12 = !v10;
        if ((v6 & 0xC000000000000001) == 0)
        {
          v12 = 0;
        }

        if (v12)
        {
          sub_1902188FC(0, a3);
          sub_190D52690();
          v13 = 0;
          do
          {
            v14 = v13 + 1;
            sub_190D582F0();
            v13 = v14;
          }

          while (v11 != v14);
        }

        else
        {
          sub_190D52690();
        }

        if (v8)
        {

          v16 = sub_190D58550();
          v15 = v18;
          v17 = v19;
          if ((v19 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v15 = 0;
          v16 = v6 & 0xFFFFFFFFFFFFFF8;
          v17 = (2 * v11) | 1;
        }

        sub_190D58780();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x1E69E7CC0];
        }

        v23 = *(v22 + 16);

        if (__OFSUB__(v17 >> 1, v15))
        {
          __break(1u);
        }

        else if (v23 == (v17 >> 1) - v15)
        {
          v6 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v6)
          {
            return v6;
          }

          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        swift_unknownObjectRelease();
LABEL_17:
        v20 = a5(v16);
        swift_unknownObjectRelease();
        return v20;
      }

      goto LABEL_31;
    }

LABEL_32:
    sub_190D52690();
    return v6;
  }

  v11 = a1;
  v24 = a3;
  if (!sub_190D581C0())
  {
    goto LABEL_32;
  }

  result = sub_190D581C0();
  if (result < v11)
  {
    v11 = result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v25 = result;
    result = sub_190D581C0();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = sub_190D581C0();
      v10 = v25 == 0;
      a3 = v24;
      if (v26 >= v11)
      {
        goto LABEL_8;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190A2D768(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v165 = a3;
  v168 = sub_190D51840();
  v7 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v167 = v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1908212D8(MEMORY[0x1E69E7CC0]);
  v10 = a1;
  v155 = a1;
  if (a1 >> 62)
  {
    goto LABEL_164;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v12 = 0;
      v156 = v10 & 0xC000000000000001;
      v153 = v10 & 0xFFFFFFFFFFFFFF8;
      v152 = v10 + 32;
      v13 = a2 & 0xFFFFFFFFFFFFFF8;
      v179 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v13 = a2;
      }

      v151[1] = v13;
      v178 = a2 & 0xC000000000000001;
      v166 = (v7 + 8);
      v14 = &selRef_systemFontOfSize_weight_design_;
      v164 = v4;
      v161 = a2;
      v154 = v11;
      while (1)
      {
        v177 = v9;
        if (v156)
        {
          v15 = v12;
          v9 = MEMORY[0x193AF3B90](v12);
        }

        else
        {
          if (v12 >= *(v153 + 16))
          {
            goto LABEL_163;
          }

          v15 = v12;
          v9 = *(v152 + 8 * v12);
        }

        v158 = v9;
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_162;
        }

        v157 = v17;
        v9 = sub_190A2F754(v158);
        v18 = v9;
        v180 = MEMORY[0x1E69E7CC0];
        if (v9 >> 62)
        {
          break;
        }

        v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_14;
        }

LABEL_117:
        v172 = MEMORY[0x1E69E7CC0];
LABEL_118:

        v79 = v172;
        if (v172 >> 62)
        {
          v128 = v172;
          v9 = sub_190D581C0();
          v79 = v128;
          v80 = v9;
          if (!v9)
          {
            goto LABEL_6;
          }

LABEL_120:
          v81 = 0;
          v175 = v80;
          v176 = v79 & 0xC000000000000001;
          v174 = (v79 & 0xFFFFFFFFFFFFFF8);
          while (2)
          {
            if (v176)
            {
              v9 = MEMORY[0x193AF3B90](v81);
            }

            else
            {
              if (v81 >= v174[2])
              {
                goto LABEL_160;
              }

              v9 = *(v79 + 8 * v81 + 32);
            }

            v82 = v9;
            v4 = (v81 + 1);
            if (__OFADD__(v81, 1))
            {
              goto LABEL_156;
            }

            v83 = [v9 v14[67]];
            if (v83)
            {
              v84 = v83;
              objc_opt_self();
              v85 = swift_dynamicCastObjCClass();
              if (v85)
              {
                v86 = v85;
                v87 = v84;
                v88 = sub_190C2260C(v86);

                a2 = v87;
                v89 = sub_190C2260C(v86);
                v90 = [v89 associatedMessageEmoji];

                v91 = sub_190D56F10();
                v93 = v92;
              }

              else
              {
                objc_opt_self();
                v94 = swift_dynamicCastObjCClass();
                v95 = v84;
                v88 = v95;
                if (v94)
                {
                  v88 = v95;
                  v96 = [v94 stickerIdentifier];
                  v91 = sub_190D56F10();
                  v93 = v97;
                }

                else
                {
                  v91 = sub_190900050();
                  v93 = v98;
                }
              }

              v99 = v177;
              v100 = 0.0;
              if (v177[2] && (v101 = sub_19022DCEC(v91, v93), (v102 & 1) != 0))
              {
                v103 = v99[7] + 16 * v101;
                v100 = *(v103 + 8);
                v104 = *v103;
              }

              else
              {
                v104 = 0;
              }

              v105 = [v82 time];
              if (!v105)
              {
                goto LABEL_187;
              }

              v106 = v105;
              v107 = v167;
              sub_190D517E0();

              sub_190D517B0();
              v109 = v108;
              (*v166)(v107, v168);
              v110 = exp(v109 * 0.000192540883);
              v111 = v88;
              v7 = v177;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v180 = v7;
              v9 = sub_19022DCEC(v91, v93);
              v114 = *(v7 + 16);
              v115 = (v113 & 1) == 0;
              v16 = __OFADD__(v114, v115);
              v116 = v114 + v115;
              if (v16)
              {
                goto LABEL_159;
              }

              a2 = v113;
              if (*(v7 + 24) >= v116)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_144;
                }

                v7 = &v180;
                v122 = v9;
                sub_190B67820();
                v9 = v122;
                v118 = v100 + v110;
                if ((a2 & 1) == 0)
                {
                  goto LABEL_147;
                }

LABEL_145:
                v119 = v9;

                v177 = v180;
                v120 = *(v180 + 56) + 16 * v119;
                v121 = *v120;
                *v120 = v111;
                *(v120 + 8) = v118;
              }

              else
              {
                sub_190B62058(v116, isUniquelyReferenced_nonNull_native);
                v7 = v180;
                v9 = sub_19022DCEC(v91, v93);
                if ((a2 & 1) != (v117 & 1))
                {
                  goto LABEL_188;
                }

LABEL_144:
                v118 = v100 + v110;
                if (a2)
                {
                  goto LABEL_145;
                }

LABEL_147:
                v123 = v180;
                *(v180 + 8 * (v9 >> 6) + 64) |= 1 << v9;
                v124 = (v123[6] + 16 * v9);
                *v124 = v91;
                v124[1] = v93;
                v125 = v123[7] + 16 * v9;
                *v125 = v111;
                *(v125 + 8) = v118;

                v126 = v123[2];
                v16 = __OFADD__(v126, 1);
                v127 = v126 + 1;
                if (v16)
                {
                  goto LABEL_161;
                }

                v177 = v123;
                v123[2] = v127;
              }

              v14 = &selRef_systemFontOfSize_weight_design_;
              v80 = v175;
            }

            else
            {
            }

            ++v81;
            v79 = v172;
            if (v4 == v80)
            {
              goto LABEL_6;
            }

            continue;
          }
        }

        v80 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_120;
        }

LABEL_6:

        v12 = v157;
        v9 = v177;
        v4 = v164;
        if (v157 == v154)
        {
          goto LABEL_165;
        }
      }

      v9 = sub_190D581C0();
      v19 = v9;
      if (!v9)
      {
        goto LABEL_117;
      }

LABEL_14:
      a2 = 0;
      v20 = v18 & 0xC000000000000001;
      v170 = v18 + 32;
      v171 = v18 & 0xFFFFFFFFFFFFFF8;
      v172 = MEMORY[0x1E69E7CC0];
      v163 = v18;
      v169 = v19;
      v162 = v18 & 0xC000000000000001;
LABEL_19:
      if (v20)
      {
        v9 = MEMORY[0x193AF3B90](a2, v18);
      }

      else
      {
        if (a2 >= *(v171 + 16))
        {
          goto LABEL_158;
        }

        v9 = *(v170 + 8 * a2);
      }

      v7 = v9;
      v16 = __OFADD__(a2++, 1);
      if (v16)
      {
        goto LABEL_157;
      }

      v21 = [v9 v14[67]];
      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      v175 = v7;
      v176 = v22;
      if (v23)
      {
        break;
      }

LABEL_55:
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
        v52 = v22;
        v53 = [v51 associatedMessageEmoji];
        if (!v53)
        {
          sub_190D56F10();
          v53 = sub_190D56ED0();
        }

        v54 = [objc_opt_self() emojiTokenWithString:v53 localeData:0];

        v55 = v165;
        if (v54)
        {
          if ([v54 supportsSkinToneVariants])
          {
            v56 = sub_190C22970();
            v57 = [v56 hasLastUsedVariantForEmoji_];

            if (v57)
            {
              v58 = [*(v55 + 16) lastUsedVariantEmojiForEmoji_];
              if ([v58 presentationStyle] == 2)
              {
                v59 = v54;

                v58 = v59;
              }

LABEL_105:
              sub_1902188FC(0, &qword_1EAD46500);
              if ((sub_190D57D90() & 1) != 0 || (v75 = [v58 string]) == 0)
              {

                v77 = v51;
              }

              else
              {
                v76 = v75;
                v77 = [objc_allocWithZone(MEMORY[0x1E69A8060]) initWithEmoji:v75 isRemoved:0];

                v58 = v52;
                if (!v77)
                {
                  goto LABEL_111;
                }
              }

              v51 = v77;
              goto LABEL_111;
            }

            v58 = [v54 copyWithSkinToneVariant_];
            if (v58)
            {
              goto LABEL_105;
            }
          }

          v58 = v54;
          goto LABEL_105;
        }

LABEL_111:
        v78 = sub_190A300B4(v51, v161);

        v4 = v164;
        v14 = &selRef_systemFontOfSize_weight_design_;
        v19 = v169;
        if (v78)
        {
          v18 = v163;
          v7 = v175;
          goto LABEL_18;
        }

        goto LABEL_97;
      }

      objc_opt_self();
      v174 = swift_dynamicCastObjCClass();
      if (!v174)
      {
        goto LABEL_96;
      }

      v181 = MEMORY[0x1E69E7CC0];
      v60 = v161;
      if (v161 >> 62)
      {
        v61 = sub_190D581C0();
      }

      else
      {
        v61 = *(v179 + 16);
      }

      v9 = v22;
      v160 = v9;
      if (!v61)
      {
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_82;
      }

      v4 = 0;
      v7 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v62 = v4;
      while (1)
      {
        if (v178)
        {
          v9 = MEMORY[0x193AF3B90](v62, v60);
        }

        else
        {
          if (v62 >= *(v179 + 16))
          {
            goto LABEL_153;
          }

          v9 = *(v60 + 8 * v62 + 32);
        }

        v63 = v9;
        v4 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x193AF29E0]();
          if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          v9 = sub_190D571E0();
          v7 = v181;
          if (v4 == v61)
          {
LABEL_82:
            v159 = a2;
            v173 = v7 & 0xFFFFFFFFFFFFFF8;
            if (v7 >> 62)
            {
              v9 = sub_190D581C0();
              v64 = v9;
            }

            else
            {
              v64 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v22 = v176;
            v65 = 0;
            while (v64 != v65)
            {
              if ((v7 & 0xC000000000000001) != 0)
              {
                v9 = MEMORY[0x193AF3B90](v65, v7);
              }

              else
              {
                if (v65 >= *(v173 + 16))
                {
                  goto LABEL_155;
                }

                v9 = *(v7 + 8 * v65 + 32);
              }

              a2 = v9;
              if (__OFADD__(v65, 1))
              {
                goto LABEL_154;
              }

              v67 = [v9 stickerIdentifier];
              v68 = sub_190D56F10();
              v70 = v69;

              v71 = [v174 stickerIdentifier];
              v72 = sub_190D56F10();
              v4 = v73;

              if (v68 == v72 && v70 == v4)
              {

                v74 = v160;

                v22 = v74;

                goto LABEL_102;
              }

              v66 = sub_190D58760();

              ++v65;
              v22 = v176;
              if (v66)
              {

                v22 = v160;

LABEL_102:
                v4 = v164;
                v14 = &selRef_systemFontOfSize_weight_design_;
                v18 = v163;
                v19 = v169;
                a2 = v159;
                v20 = v162;
                v7 = v175;
LABEL_17:

LABEL_18:
                if (a2 == v19)
                {
                  goto LABEL_118;
                }

                goto LABEL_19;
              }
            }

            v4 = v164;
            v14 = &selRef_systemFontOfSize_weight_design_;
            a2 = v159;
            v20 = v162;
LABEL_96:

            v19 = v169;
LABEL_97:
            v7 = &v180;
            MEMORY[0x193AF29E0]();
            if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_190D571A0();
            }

            v9 = sub_190D571E0();
            v172 = v180;
            v18 = v163;
            if (a2 == v19)
            {
              goto LABEL_118;
            }

            goto LABEL_19;
          }

          goto LABEL_68;
        }

        ++v62;
        if (v4 == v61)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      v129 = v9;
      v130 = sub_190D581C0();
      v10 = v155;
      v11 = v130;
      v9 = v129;
      if (!v11)
      {
        goto LABEL_165;
      }
    }

    v24 = v23;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      v7 = v175;
      goto LABEL_16;
    }

    v25 = a2;
    v26 = v4[3];
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    v29 = v22;
    LOBYTE(v26) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if ((v26 & 1) == 0)
    {

      v4 = v164;
      v18 = v163;
      a2 = v25;
      v20 = v162;
      v7 = v175;
LABEL_38:
      v22 = v29;
LABEL_16:
      v19 = v169;
      goto LABEL_17;
    }

    a2 = v25;
    if ((sub_190D577B0() & 1) == 0)
    {

      v22 = v29;
      v7 = v29;
      v4 = v164;
      v18 = v163;
      v20 = v162;
      goto LABEL_16;
    }

    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    v31 = v29;
    v32 = v31;
    v20 = v162;
    if (!v30)
    {
      v30 = [v24 stickerIdentifier];
      v29 = v32;
      v4 = v164;
      v22 = v176;
LABEL_50:

      v45 = [objc_opt_self() sharedManager];
      if (v45 && (v46 = v45, v47 = [v45 isFeatureEnabled], v46, v47))
      {
        v48 = [v24 commSafetySensitivityState];

        v49 = v48 == 1;
        v18 = v163;
        v7 = v175;
        if (v49)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      goto LABEL_55;
    }

    v29 = v31;
    v33 = [v30 associatedMessageEmoji];
    v22 = v176;
    if (!v33)
    {
      sub_190D56F10();
      v33 = sub_190D56ED0();
    }

    v34 = [objc_opt_self() emojiTokenWithString:v33 localeData:0];

    v4 = v164;
    if (!v34)
    {
      v40 = v24;
LABEL_49:
      v32 = [v30 associatedMessageEmoji];

      v14 = &selRef_systemFontOfSize_weight_design_;
      goto LABEL_50;
    }

    v174 = v30;
    if (![v34 supportsSkinToneVariants])
    {
      goto LABEL_43;
    }

    v35 = v165;
    v36 = sub_190C22970();
    v37 = [v36 hasLastUsedVariantForEmoji_];

    if (v37)
    {
      v38 = [*(v35 + 16) lastUsedVariantEmojiForEmoji_];
      if ([v38 presentationStyle] == 2)
      {
        v39 = v34;

        v38 = v39;
      }

      v22 = v176;
      goto LABEL_44;
    }

    v38 = [v34 copyWithSkinToneVariant_];
    v22 = v176;
    if (!v38)
    {
LABEL_43:
      v38 = v34;
    }

LABEL_44:
    sub_1902188FC(0, &qword_1EAD46500);
    if ((sub_190D57D90() & 1) != 0 || (v41 = [v38 string]) == 0)
    {
      v44 = v24;

      v30 = v174;
      v20 = v162;
    }

    else
    {
      v42 = v41;
      v30 = [objc_allocWithZone(MEMORY[0x1E69A8060]) initWithEmoji:v41 isRemoved:0];

      v20 = v162;
      if (!v30)
      {
        v43 = v24;
        v30 = v174;
      }
    }

    goto LABEL_49;
  }

LABEL_165:
  v131 = *(v9 + 16);
  v132 = MEMORY[0x1E69E7CC0];
  v133 = v9;
  if (!v131)
  {
    v135 = MEMORY[0x1E69E7CC0];
    goto LABEL_169;
  }

  v134 = v9;
  v135 = sub_190A929CC(*(v9 + 16), 0);
  v4 = sub_190C8322C(&v180, v135 + 4, v131, v134);
  sub_190D52690();
  sub_190219C78();
  if (v4 == v131)
  {
    v132 = MEMORY[0x1E69E7CC0];
LABEL_169:
    v180 = v135;
    sub_190A2EE4C(&v180);
    v136 = v180;
    v180 = v132;
    v137 = v136[2];
    v4 = v133;
    if (!v137)
    {
      goto LABEL_183;
    }

    v138 = 0;
    v139 = v136 + 6;
    v179 = v136;
    v177 = v136 + 6;
    while (1)
    {
      v178 = v132;
      v140 = &v139[4 * v138];
      v141 = v138;
      while (1)
      {
        if (v141 >= v137)
        {
          __break(1u);
LABEL_185:
          __break(1u);
          goto LABEL_186;
        }

        v138 = v141 + 1;
        if (__OFADD__(v141, 1))
        {
          goto LABEL_185;
        }

        if (v4[2])
        {
          break;
        }

LABEL_173:
        ++v141;
        v140 += 4;
        if (v138 == v137)
        {
          v132 = v178;
          goto LABEL_183;
        }
      }

      v142 = *(v140 - 2);
      v143 = *(v140 - 1);
      v144 = *v140;
      sub_190D52690();
      v145 = v144;
      v146 = sub_19022DCEC(v142, v143);
      if ((v147 & 1) == 0)
      {
        break;
      }

      v148 = *(v133[7] + 16 * v146);

      MEMORY[0x193AF29E0](v149);
      if (*((v180 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v180 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v132 = v180;
      v4 = v133;
      v139 = v177;
      if (v138 == v137)
      {
LABEL_183:

        return v132;
      }
    }

    v4 = v133;
    goto LABEL_173;
  }

LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  sub_190D587C0();
  __break(1u);

  __break(1u);
  return result;
}

void sub_190A2EA4C(NSObject *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EAD46248 != -1)
  {
LABEL_24:
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D790);
  v6 = a1;
  a1 = sub_190D53020();
  v7 = sub_190D576C0();
  if (!os_log_type_enabled(a1, v7))
  {

    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v31 = v9;
  *v8 = 136315138;
  v10 = [v6 IMChatItem];
  if (!v10)
  {

    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 guid];

  if (!v12)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  v16 = sub_19021D9F8(v13, v15, &v31);

  *(v8 + 4) = v16;
  _os_log_impl(&dword_19020E000, a1, v7, "Consolidating smart Tapback suggestions for chatItem guid: %s", v8, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x193AF7A40](v9, -1, -1);
  MEMORY[0x193AF7A40](v8, -1, -1);
LABEL_7:

  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    a1 = Strong;
    v19 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 24))(v3, v6, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v31 = v18;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v21 + 40;
    while (1)
    {
      v25 = v24 + 16 * v23;
      v3 = v23;
      while (1)
      {
        if (v3 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v26 = objc_allocWithZone(MEMORY[0x1E69A8060]);
        sub_190D52690();
        v27 = sub_190D56ED0();
        a1 = [v26 initWithEmoji:v27 isRemoved:0];

        if (a1)
        {
          break;
        }

LABEL_14:
        ++v3;
        v25 += 16;
        if (v22 == v3)
        {
          goto LABEL_22;
        }
      }

      v28 = a1;
      a1 = sub_190C2260C(v28);
      v29 = sub_190A300B4(a1, a2);

      if (v29)
      {
        break;
      }

      MEMORY[0x193AF29E0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      v23 = v3 + 1;
      a1 = &v31;
      sub_190D571E0();
      v24 = v21 + 40;
      if (v22 - 1 == v3)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_14;
  }

LABEL_22:
}

uint64_t sub_190A2EDCC()
{
  sub_19024C978(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_190A2EE4C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E3980(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_190D58710();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 7;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = v12[1];
          v15 = *(v12 + 1);
          v16 = *(v12 - 1);
          *(v12 + 1) = *(v12 - 3);
          *(v12 + 3) = v16;
          *(v12 - 3) = v14;
          *(v12 - 1) = v15;
          *v12 = v13;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CB8);
      v7 = sub_190D571D0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_190A2EFB0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_190A2EFB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1909E383C(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_190A2F550((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 24);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 24);
      v14 = v9 + 2;
      v15 = (v12 + 88);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 8;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *v22;
            v25 = v22[3];
            v26 = *(v22 + 1);
            v27 = *(v23 - 1);
            *v22 = *(v23 - 3);
            *(v22 + 1) = v27;
            *(v23 - 3) = v24;
            *(v23 - 1) = v26;
            *v23 = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_190835714((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_190A2F550((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 24);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 8) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 24) = v36;
    *(v34 - 8) = v32;
    *(v34 - 32) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_190A2F550(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[3] < v6[3])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

char *sub_190A2F754(void *a1)
{
  v1 = [a1 visibleAssociatedMessageChatItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1902188FC(0, &qword_1EAD44F88);
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
LABEL_65:
    v4 = sub_190D581C0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_60:

    v42 = sub_19086D20C(v52);

    return v42;
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v8 = v3 & 0xFFFFFFFFFFFFFF8;
  v9 = v3 + 32;
  v52 = MEMORY[0x1E69E7CC0];
  v43 = v4;
  v44 = v3;
  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v48 = v3 & 0xC000000000000001;
  v46 = v3 + 32;
  while (1)
  {
    if (v7)
    {
      v10 = MEMORY[0x193AF3B90](v6, v3);
    }

    else
    {
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_64;
      }

      v10 = *(v9 + 8 * v6);
    }

    v11 = v10;
    if (__OFADD__(v6++, 1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      break;
    }

LABEL_47:
    v39 = v5;
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1908356F0(0, *(v52 + 2) + 1, 1, v52);
    }

    v41 = *(v52 + 2);
    v40 = *(v52 + 3);
    if (v41 >= v40 >> 1)
    {
      v52 = sub_1908356F0((v40 > 1), v41 + 1, 1, v52);
    }

    *(v52 + 2) = v41 + 1;
    *&v52[8 * v41 + 32] = v39;
    if (v6 == v4)
    {
      goto LABEL_60;
    }
  }

  v14 = v13;
  v15 = v11;
  v16 = [v14 acknowledgments];

  if (!v16)
  {

    goto LABEL_47;
  }

  v50 = v15;
  v51 = v6;
  sub_1902188FC(0, &qword_1EAD5E5E0);
  v17 = sub_190D57180();

  v53 = v5;
  if (v17 >> 62)
  {
    v18 = sub_190D581C0();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = &selRef_systemFontOfSize_weight_design_;
  v20 = &selRef_chatItemsChanged_;
  if (!v18)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
LABEL_49:

    v6 = v51;
    v8 = v47;
    v7 = v48;
    v9 = v46;
    goto LABEL_50;
  }

  v21 = 0;
  v22 = v17 & 0xC000000000000001;
  v3 = v17 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v22)
    {
      v23 = MEMORY[0x193AF3B90](v21, v17);
    }

    else
    {
      if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v23 = *(v17 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v26 = [v23 v19[67]];
    if (!v26)
    {
      goto LABEL_17;
    }

    v27 = v26;
    if (([v26 v20[152]] & 1) == 0)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }
    }

LABEL_17:
LABEL_18:
    ++v21;
    if (v25 == v18)
    {
      v39 = v53;
      v4 = v43;
      v3 = v44;
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_49;
    }
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = [v28 associatedMessageEmoji];
    if (!v29)
    {
      sub_190D56F10();
      v29 = sub_190D56ED0();
    }

    IsSingleEmoji = CEMStringIsSingleEmoji();

    if (!IsSingleEmoji)
    {
      goto LABEL_41;
    }

LABEL_39:
    sub_190D58360();
    sub_190D583B0();
    sub_190D583C0();
    sub_190D58370();
    goto LABEL_42;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {

    goto LABEL_39;
  }

  v32 = [v31 transferGUID];
  if (!v32)
  {
    sub_190D56F10();
    v33 = sub_190D56ED0();

    v32 = v33;
  }

  v34 = [v24 chatContext];
  v49 = [v24 message];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v36 = result;
    v45 = v34;
    v37 = [result mediaObjectWithTransferGUID:v32 imMessage:v49 chatContext:v34];

    if (!v37)
    {

      goto LABEL_41;
    }

    v38 = [v37 transcoderPreviewGenerationFailed];

    if ((v38 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_41:

LABEL_42:
    v19 = &selRef_systemFontOfSize_weight_design_;
    v20 = &selRef_chatItemsChanged_;
    v22 = v17 & 0xC000000000000001;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_190A2FCC0(void *a1)
{
  v1 = sub_190A2F754(a1);
  v2 = v1;
  v12 = MEMORY[0x1E69E7CC0];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_21:
    v4 = sub_190D581C0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if ([v8 isFromMe])
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v10 = [v9 tapback];

    if (!v10)
    {
      goto LABEL_6;
    }

    MEMORY[0x193AF29E0]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v6 = v12;
  }

  while (v5 != v4);
LABEL_23:

  return v6;
}

uint64_t sub_190A2FE58()
{
  v0 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_190D56ED0();
  v3 = [v1 arrayForKey_];

  if (v3)
  {
    v4 = sub_190D57180();

    v5 = sub_19088097C(v4);

    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        for (i = (v5 + 40); ; i += 2)
        {
          v9 = HIBYTE(*i) & 0xFLL;
          if ((*i & 0x2000000000000000) == 0)
          {
            v9 = *(i - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (!v9)
          {
            goto LABEL_6;
          }

          sub_190D52690();
          v10 = sub_190D56ED0();
          IsSingleEmoji = CEMStringIsSingleEmoji();

          if (IsSingleEmoji)
          {
            v12 = objc_allocWithZone(MEMORY[0x1E69A8060]);
            v13 = sub_190D56ED0();

            v14 = [v12 initWithEmoji:v13 isRemoved:0];

            if (!v14)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v15 = objc_allocWithZone(MEMORY[0x1E69A82C8]);
            v16 = sub_190D56ED0();

            v14 = [v15 initWithTransferGUID:v16 isRemoved:0];

            if (!v14)
            {
              goto LABEL_6;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_190DD55F0;
          *(inited + 32) = v14;
          sub_190CA9CF0(inited);
LABEL_6:
          if (!--v6)
          {

            return v18;
          }
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v0;
}

BOOL sub_190A300B4(void *a1, unint64_t a2)
{
  v18 = MEMORY[0x1E69E7CC0];
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_190D581C0();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v8, a2);
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v7 = v18;
  }

  while (v6 != v5);
LABEL_21:
  if (v7 >> 62)
  {
LABEL_35:
    v11 = sub_190D581C0();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v13 = v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x193AF3B90](v12, v7);
    }

    else
    {
      if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v14 = *(v7 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = [a1 isEqualIgnoringModifiersToEmojiTapback_];

    v12 = v13 + 1;
  }

  while (!v16);

  return v11 != v13;
}