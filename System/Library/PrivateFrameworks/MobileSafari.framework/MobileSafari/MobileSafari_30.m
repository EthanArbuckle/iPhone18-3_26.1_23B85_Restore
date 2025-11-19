void (*sub_18BB816E4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_18BB81778;
}

void sub_18BB81778(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 80) + *(*a1 + 88));
  CACornerRadiiMake(v15, *(*a1 + 72), *(*a1 + 72), *(*a1 + 72), *(*a1 + 72));
  v3 = v15[0];
  v4 = v15[1];
  v5 = v15[2];
  v6 = v15[3];
  v7 = v15[4];
  v8 = v15[5];
  v9 = v15[6];
  v10 = v15[7];
  *v2 = v15[0];
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v2[6] = v9;
  v2[7] = v10;
  v11 = v9 == v7;
  if (v10 != v8)
  {
    v11 = 0;
  }

  if (v9 != v5)
  {
    v11 = 0;
  }

  if (v10 != v6)
  {
    v11 = 0;
  }

  if (v10 != v4)
  {
    v11 = 0;
  }

  if (v9 != v3)
  {
    v11 = 0;
  }

  v12 = v9 == v10 && v11;
  v13 = v1[10];
  v14 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
  swift_beginAccess();
  *(v13 + v14) = v12;

  free(v1);
}

void sub_18BB8190C(double a1)
{
  v2 = _SFRoundRectToPixels(a1);
  v3 = v1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame;
  *v3 = v2;
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
}

void (*sub_18BB81938(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  *v3 = *v5;
  *(v3 + 16) = v6;
  return sub_18BB819B0;
}

void sub_18BB819B0(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + *(*a1 + 5);
  *v2 = _SFRoundRectToPixels(**a1);
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;

  free(v1);
}

uint64_t sub_18BB81A48()
{
  v1 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_ignoresCornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB81AE0(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_ignoresCornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_18BB81B90()
{
  v1 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BB81C28(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_18BB81CD8()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18BB81DAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_18BB81E0C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_18BC1E3F8();
}

__n128 sub_18BB81ED8@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_18BB81F94(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

__n128 sub_18BB81FEC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  *(a2 + 32) = result;
  return result;
}

__n128 sub_18BB82048(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *a2 + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform;
  swift_beginAccess();
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

id SFCapsulePageLayoutInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_0@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t dispatch thunk of SFCapsulePageLayoutInfo.cornerRadii.setter(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

uint64_t dispatch thunk of SFCapsulePageLayoutInfo.transform.setter(_OWORD *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x158);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

double sub_18BB82808()
{
  result = 0.0;
  if (*(v0 + 32) == 1)
  {
    return *(v0 + 56) + *(v0 + 64);
  }

  return result;
}

uint64_t sub_18BB82824()
{
  if (*(v0 + 32) == 1)
  {
    return (*(v0 + 97) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BB82848()
{
  if (v0[33] == 1 && (v0[48] & 1) == 0 && v0[96] == 1)
  {
    return (v0[97] ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_18BB82880()
{
  if (v0[33] == 1 && (v0[48] & 1) == 0 && v0[96] == 1 && (v0[97] & 1) == 0)
  {
    sub_18B813E2C(v1);
  }
}

uint64_t sub_18BB82920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_18B8103B0();
  v8 = *(*&v6 + 96);
  *&v15.a = *(*&v6 + 80);
  *&v15.c = &type metadata for SFFluidTabOverviewSupplementary;
  *&v15.d = v8;
  *&v15.ty = v7;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  (*(*(v9 - 1) + 16))(a2, a1, v9);
  *(a2 + v9[17]) = 0;
  CGAffineTransformMakeScale(&v15, v3[14], v3[14]);
  SFFluidCollectionView.LayoutAttributes.transform.setter(&v15, v9);
  v10 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v10 = v3[13];
  }

  v11 = v9[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + v11);
  result = sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v10);
  *(a2 + v11) = v14;
  return result;
}

uint64_t sub_18BB82AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v29 = v1[10];
  sub_18B813E2C(v30);
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MinY = CGRectGetMinY(v31);
  sub_18B813E2C(&v33);
  v27 = v37;
  v8 = v30[0];
  sub_18B81393C();
  v10 = v9;
  v11 = v1[15];
  v26 = v1[16];
  v33 = 0uLL;
  v34 = 0;
  v35 = xmmword_18BC42B70;
  sub_18B84DA50(&v33);
  sub_18B833D9C(&v33);
  v12 = 0.0;
  if (*(v1 + 97) == 1 && *(v1 + 33) == 1)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    CGRectGetMaxY(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    CGRectGetMaxX(v39);
    v12 = SFChromeVisibilityForScrollDistance(y + v8 - v32);
  }

  v13 = UIEdgeInsetsInsetRect(0.0, MinY, v27, v29 + v8 + v10, -v11, -v26);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_18B8103B0();
  v21 = *(*&v3 + 96);
  v33 = *(*&v3 + 80);
  v35 = v21;
  v34 = &type metadata for SFFluidTabOverviewSupplementary;
  v36 = v20;
  v22 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  *(a1 + v22[17]) = v12;
  SFFluidCollectionView.LayoutAttributes.frame.setter(v22, v13, v15, v17, v19);
  *(a1 + v22[21]) = 0xBFF0000000000000;
  v23 = v22[23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = *(a1 + v23);
  result = sub_18B84E858(0xD000000000000010, 0x800000018BC62690, isUniquelyReferenced_nonNull_native, v29);
  *(a1 + v23) = v33;
  return result;
}

uint64_t SFFluidCollectionView.LargeTitleAndSearchBarLayout.deinit()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return v0;
}

uint64_t SFFluidCollectionView.LargeTitleAndSearchBarLayout.__deallocating_deinit()
{
  SFFluidCollectionView.LargeTitleAndSearchBarLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_18BB82E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BB82EE0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v11 = a1;
  sub_18B7F4394();
  v12 = a4;
  v13 = v11;
  LOBYTE(v11) = sub_18BC215C8();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  result = (a3 | a6) == 0;
  if (a3 && a6)
  {
    if (a2 == a5 && a3 == a6)
    {
      return 1;
    }

    else
    {

      return sub_18BC21FD8();
    }
  }

  return result;
}

uint64_t sub_18BB82FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB83024(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

char *sub_18BB8307C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v196 - v10;
  v12 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v13 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v14 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView;
  *&v4[v14] = [objc_allocWithZone(_SFSiteIconView) init];
  v15 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView;
  v16 = sub_18BC20B98();
  v17 = [objc_opt_self() systemImageNamed_];

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[v15] = v18;
  v19 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v20 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v21 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_textStackView;
  *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v22 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  IsPad = _SFDeviceIsPad();
  v24 = 72.0;
  if (IsPad)
  {
    v24 = 56.0;
  }

  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewSize] = v24;
  if (_SFDeviceIsPad())
  {
    v25 = 12.0;
  }

  else
  {
    v25 = 16.0;
  }

  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewInset] = v25;
  v26 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText];
  *v27 = 0;
  v27[1] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_image] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_linkMetadata] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_parentFolder] = 0;
  v28 = _s13DetailRowCellCMa();
  v206.receiver = v4;
  v206.super_class = v28;
  v29 = objc_msgSendSuper2(&v206, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F7A8();
  v30 = sub_18BC1F7B8();
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  MEMORY[0x18CFFC920](v11);
  v31 = [v29 contentView];
  UIEdgeInsetsMakeWithEdges();
  [v31 setLayoutMargins_];

  v32 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView;
  [*&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView] setCustomImageInset_];
  [*&v29[v32] setImageContentMode_];
  v33 = *&v29[v32];
  v198 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewSize;
  [v33 _setContinuousCornerRadius_];
  [*&v29[v32] setClipsToBounds_];
  v34 = *&v29[v32];
  v35 = v32;
  v203 = v32;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v29 &selRef_flattenedImageWithColor_];
  [v36 addSubview_];

  v37 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_textStackView;
  [*&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_textStackView] setAlignment_];
  [*&v29[v37] setAxis_];
  [*&v29[v37] setSpacing_];
  v38 = v37;
  [*&v29[v37] setTranslatesAutoresizingMaskIntoConstraints_];
  v39 = [v29 &selRef_flattenedImageWithColor_];
  [v39 addSubview_];

  v40 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel;
  v41 = *&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel];
  v42 = objc_opt_self();
  v43 = *MEMORY[0x1E69DDD80];
  v44 = v41;
  v45 = [v42 _sf_preferredFontForTextStyle_symbolicTraits_];
  [v44 setFont_];

  [*&v29[v40] setNumberOfLines_];
  [*&v29[v40] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v46) = 1148846080;
  [*&v29[v40] setContentCompressionResistancePriority:1 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [*&v29[v40] setContentHuggingPriority:1 forAxis:v47];
  v204 = v38;
  [*&v29[v38] addArrangedSubview_];
  v48 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer;
  [*&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v29[v38] &selRef_alwaysShowOverlayForDebug];
  v49 = *&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView];
  v50 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView;
  v197 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView;
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v29[v48] addSubview_];
  v51 = *&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView];
  v52 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView;
  v200 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView;
  [v51 _setContinuousCornerRadius_];
  [*&v29[v52] setClipsToBounds_];
  [*&v29[v52] setTranslatesAutoresizingMaskIntoConstraints_];
  v53 = *&v29[v48];
  v54 = v48;
  v202 = v48;
  [v53 addSubview_];
  v55 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel;
  v56 = *&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel];
  v57 = [v42 preferredFontForTextStyle_];
  [v56 setFont_];

  [*&v29[v55] setNumberOfLines_];
  [*&v29[v55] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v58) = 1148846080;
  [*&v29[v55] setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = *&v29[v55];
  v196 = v55;
  LODWORD(v60) = 1148846080;
  [v59 setContentHuggingPriority:1 forAxis:v60];
  [*&v29[v54] addSubview_];
  v61 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel;
  v62 = *MEMORY[0x1E69DDD90];
  v63 = *&v29[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel];
  v64 = [v42 preferredFontForTextStyle_];
  [v63 setFont_];

  [*&v29[v61] setNumberOfLines_];
  v65 = *&v29[v61];
  v66 = objc_opt_self();
  v67 = v65;
  v68 = [v66 secondaryLabelColor];
  [v67 setTextColor_];

  [*&v29[v61] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v69) = 1148846080;
  [*&v29[v61] setContentCompressionResistancePriority:1 forAxis:v69];
  LODWORD(v70) = 1148846080;
  [*&v29[v61] setContentHuggingPriority:1 forAxis:v70];
  v71 = *&v29[v204];
  v201 = v61;
  [v71 addArrangedSubview_];
  v72 = [v29 contentView];

  v73 = [v72 safeAreaLayoutGuide];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_18BC50450;
  v75 = v203;
  v76 = [*&v29[v203] leadingAnchor];
  v205 = v73;
  v77 = [v73 &selRef_initWithRow_itemRange_ + 1];
  v78 = v29;
  v79 = [v78 traitCollection];
  v80 = [v79 listEnvironment];

  v81 = 0.0;
  if (v80 != 5)
  {
    v81 = 16.0;
  }

  v82 = [v76 constraintEqualToAnchor:v77 constant:v81];

  *(v74 + 32) = v82;
  v83 = [*&v29[v75] topAnchor];
  v84 = [v73 &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v199 = v78;
  v85 = [v78 traitCollection];
  v86 = [v85 listEnvironment];

  if (v86 == 5)
  {
    v87 = 12.0;
  }

  else
  {
    v87 = 16.0;
  }

  v88 = [v83 constraintEqualToAnchor:v84 constant:v87];

  *(v74 + 40) = v88;
  v89 = [*&v29[v75] widthAnchor];
  v90 = [v89 constraintEqualToConstant_];

  *(v74 + 48) = v90;
  v91 = [*&v29[v75] heightAnchor];
  v92 = [*&v29[v75] widthAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v74 + 56) = v93;
  v94 = [*&v29[v75] bottomAnchor];
  v95 = v205;
  v96 = [v205 bottomAnchor];
  v97 = [v94 &selRef:v96 containsButtonType:? + 5];

  LODWORD(v98) = 1132068864;
  v99 = [v97 sf:v98 withPriority:?];

  *(v74 + 64) = v99;
  v100 = [*&v29[v75] bottomAnchor];
  v101 = [v95 bottomAnchor];
  v102 = [v78 traitCollection];
  v103 = [v102 listEnvironment];

  if (v103 == 5)
  {
    v104 = -12.0;
  }

  else
  {
    v104 = -16.0;
  }

  v105 = [v100 constraintLessThanOrEqualToAnchor:v101 constant:v104];

  *(v74 + 72) = v105;
  v106 = v197;
  v107 = [*&v29[v197] leadingAnchor];
  v108 = v202;
  v109 = [*&v29[v202] leadingAnchor];
  v110 = [v107 &selRef:v109 containsButtonType:? + 5];

  *(v74 + 80) = v110;
  v111 = v106;
  v112 = [*&v29[v106] lastBaselineAnchor];
  v113 = v196;
  v114 = [*&v29[v196] lastBaselineAnchor];
  v115 = [v112 &selRef:v114 containsButtonType:? + 5];

  *(v74 + 88) = v115;
  v116 = [*&v29[v106] widthAnchor];
  v117 = [v116 constraintEqualToConstant_];

  *(v74 + 96) = v117;
  v118 = [*&v29[v106] heightAnchor];
  v119 = [*&v29[v106] widthAnchor];
  v120 = [v118 &selRef:v119 containsButtonType:? + 5];

  *(v74 + 104) = v120;
  v121 = v200;
  v122 = [*&v29[v200] leadingAnchor];
  v123 = [*&v29[v108] leadingAnchor];
  v124 = [v122 &selRef:v123 containsButtonType:? + 5];

  *(v74 + 112) = v124;
  v125 = [*&v29[v121] centerXAnchor];
  v126 = [*&v29[v111] centerXAnchor];
  v127 = [v125 &selRef:v126 containsButtonType:? + 5];

  *(v74 + 120) = v127;
  v128 = [*&v29[v121] centerYAnchor];
  v129 = [*&v29[v111] &selRef_contentIsCentered];
  v130 = [v128 &selRef:v129 containsButtonType:? + 5];

  *(v74 + 128) = v130;
  v131 = [*&v29[v121] widthAnchor];
  v132 = [*&v29[v111] widthAnchor];
  v133 = [v131 &selRef:v132 containsButtonType:? + 5];

  *(v74 + 136) = v133;
  v134 = [*&v29[v121] heightAnchor];
  v135 = [*&v29[v121] widthAnchor];
  v136 = [v134 &selRef:v135 containsButtonType:? + 5];

  *(v74 + 144) = v136;
  v137 = [*&v29[v113] leadingAnchor];
  v138 = [*&v29[v121] trailingAnchor];
  v139 = [v137 constraintEqualToAnchor:v138 constant:5.0];

  *(v74 + 152) = v139;
  v140 = [*&v29[v113] trailingAnchor];
  v141 = v202;
  v142 = [*&v29[v202] trailingAnchor];
  v143 = [v140 &selRef:v142 containsButtonType:? + 5];

  *(v74 + 160) = v143;
  v144 = [*&v29[v113] topAnchor];
  v145 = [*&v29[v141] topAnchor];
  v146 = [v144 &selRef:v145 containsButtonType:? + 5];

  *(v74 + 168) = v146;
  v147 = [*&v29[v113] bottomAnchor];
  v148 = [*&v29[v141] bottomAnchor];
  v149 = [v147 &selRef:v148 containsButtonType:? + 5];

  *(v74 + 176) = v149;
  v150 = v204;
  v151 = [*&v29[v204] leadingAnchor];
  v152 = v203;
  v153 = [*&v29[v203] trailingAnchor];
  v154 = [v151 constraintEqualToAnchor:v153 constant:16.0];

  *(v74 + 184) = v154;
  v155 = [*&v29[v150] trailingAnchor];
  v156 = v205;
  v157 = [v205 trailingAnchor];
  v158 = [v155 &selRef:v157 containsButtonType:? + 5];

  *(v74 + 192) = v158;
  v159 = [*&v29[v150] topAnchor];
  v160 = [v156 topAnchor];
  v161 = v199;
  v162 = [v199 traitCollection];
  v163 = [v162 listEnvironment];

  if (v163 == 5)
  {
    v164 = 12.0;
  }

  else
  {
    v164 = 16.0;
  }

  v165 = [v159 constraintGreaterThanOrEqualToAnchor:v160 constant:v164];

  *(v74 + 200) = v165;
  v166 = [*&v29[v150] heightAnchor];
  v167 = [v166 constraintEqualToConstant_];

  LODWORD(v168) = 1132068864;
  v169 = [v167 sf:v168 withPriority:?];

  *(v74 + 208) = v169;
  v170 = [*&v29[v150] centerYAnchor];
  v171 = [*&v29[v152] centerYAnchor];
  v172 = [v170 constraintEqualToAnchor_];

  LODWORD(v173) = 1144750080;
  v174 = [v172 sf:v173 withPriority:?];

  *(v74 + 216) = v174;
  v175 = [*&v29[v150] bottomAnchor];
  v176 = [v156 bottomAnchor];
  v177 = [v161 traitCollection];
  v178 = [v177 listEnvironment];

  if (v178 == 5)
  {
    v179 = -12.0;
  }

  else
  {
    v179 = -16.0;
  }

  v180 = [v175 constraintEqualToAnchor:v176 constant:v179];

  LODWORD(v181) = 1132068864;
  v182 = [v180 sf:v181 withPriority:?];

  *(v74 + 224) = v182;
  v183 = [*&v29[v204] bottomAnchor];
  v184 = [v156 bottomAnchor];
  v185 = [v161 traitCollection];
  v186 = [v185 listEnvironment];

  v187 = objc_opt_self();
  if (v186 == 5)
  {
    v188 = -12.0;
  }

  else
  {
    v188 = -16.0;
  }

  v189 = [v183 constraintLessThanOrEqualToAnchor:v184 constant:v188];

  *(v74 + 232) = v189;
  sub_18BA497D0();
  v190 = sub_18BC20D88();

  [v187 activateConstraints_];

  v191 = [v161 traitCollection];
  v192 = [v191 listEnvironment];

  if (v192 == 5)
  {
    [v161 directionalLayoutMargins];
    [v161 setDirectionalLayoutMargins_];
  }

  v193 = *&v29[v201];
  if (*&v161[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText + 8])
  {
    sub_18BC1E3F8();
    v194 = sub_18BC20B98();

    [v193 setText_];

    [v193 setAlpha_];
    [v193 setHidden_];
  }

  else
  {
    [v193 setAlpha_];
    [v193 setHidden_];
  }

  return v161;
}

id sub_18BB84640()
{
  v11.receiver = v0;
  v11.super_class = _s13DetailRowCellCMa();
  objc_msgSendSuper2(&v11, sel_prepareForReuse);
  sub_18BB867D8(0);
  [*&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView] setImage_];
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  sub_18BB856F8();
  [*&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView] setImage_];
  [*&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel] setText_];
  result = [*&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel] setText_];
  v4 = &v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText];
  v5 = *&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel];
    [v6 setAlpha_];
    [v6 setHidden_];
  }

  v7 = &v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount];
  v8 = v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount + 8];
  *v7 = 0;
  v7[8] = 1;
  if ((v8 & 1) == 0)
  {
    result = sub_18BB84944();
  }

  v9 = v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable];
  v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable] = 0;
  if (v9)
  {
    result = sub_18BB84944();
  }

  v10 = v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable];
  v0[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable] = 0;
  if (v10 == 1)
  {
    return sub_18BB84944();
  }

  return result;
}

uint64_t sub_18BB84944()
{
  v1 = sub_18BC1F438();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v91 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1F4B8();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F538();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v86 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = v76 - v10;
  v11 = sub_18BC1F408();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1F418();
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_18BC1F598();
  v17 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  MEMORY[0x1EEE9AC00](v18);
  v95 = v76 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v94 = v76 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = v76 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v93 = v76 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v76 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = v76 - v31;
  v33 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount);
  v34 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount + 8);
  v92 = v1;
  v90 = v35;
  if (v34)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v96;
  }

  else
  {
    v81 = v7;
    v82 = v2;
    v38 = *v33;
    if (*v33)
    {
      v79 = v6;
      v80 = v0;
      v39 = objc_opt_self();
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v41 = [v39 localizedStringFromNumber:v40 numberStyle:1];

      v76[1] = sub_18BC20BD8();
      v42 = v97;
      v43 = *(v97 + 104);
      v78 = *MEMORY[0x1E69DBF20];
      v44 = v98;
      v77 = v43;
      (v43)(v16);
      v45 = sub_18BC1F448();
      (*(*(v45 - 8) + 56))(v99, 1, 1, v45);
      sub_18BC1F3F8();
      sub_18BC1F548();

      (*(v83 + 8))(v13, v84);
      (*(v42 + 8))(v16, v44);
      (*(v17 + 16))(v28, v32, v96);
      v36 = sub_18B9B58D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v47 = v36[2];
      v46 = v36[3];
      if (v47 >= v46 >> 1)
      {
        v36 = sub_18B9B58D8(v46 > 1, v47 + 1, 1, v36);
      }

      v6 = v79;
      v48 = v32;
      v37 = v96;
      (*(v17 + 8))(v48, v96);
      v36[2] = v47 + 1;
      (*(v17 + 32))(v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v47, v28, v37);
      v0 = v80;
      v49 = v97;
      v50 = v78;
      v51 = v77;
    }

    else
    {
      v50 = *MEMORY[0x1E69DBF20];
      v37 = v96;
      v49 = v97;
      v51 = *(v97 + 104);
      v36 = MEMORY[0x1E69E7CC0];
    }

    v52 = v98;
    v51(v16, v50, v98);
    v53 = sub_18BC1F448();
    (*(*(v53 - 8) + 56))(v99, 1, 1, v53);
    v54 = v86;
    sub_18BC1F528();
    v55 = v93;
    sub_18BC1F4C8();
    (*(v81 + 8))(v54, v6);
    (*(v49 + 8))(v16, v52);
    v56 = v85;
    (*(v17 + 16))(v85, v55, v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_18B9B58D8(0, v36[2] + 1, 1, v36);
    }

    v2 = v82;
    v58 = v36[2];
    v57 = v36[3];
    if (v58 >= v57 >> 1)
    {
      v36 = sub_18B9B58D8(v57 > 1, v58 + 1, 1, v36);
    }

    (*(v17 + 8))(v93, v37);
    v36[2] = v58 + 1;
    (*(v17 + 32))(v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v58, v56, v37);
  }

  v59 = MEMORY[0x1E69DBF18];
  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable) == 1)
  {
    v61 = v97;
    v60 = v98;
    (*(v97 + 104))(v16, *MEMORY[0x1E69DBF18], v98, v30);
    v62 = sub_18BC1F448();
    (*(*(v62 - 8) + 56))(v99, 1, 1, v62);
    v63 = v87;
    sub_18BC1F4A8();
    sub_18BC1F3E8();
    (*(v88 + 8))(v63, v89);
    (*(v61 + 8))(v16, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_18B9B58D8(0, v36[2] + 1, 1, v36);
    }

    v65 = v36[2];
    v64 = v36[3];
    v59 = MEMORY[0x1E69DBF18];
    if (v65 >= v64 >> 1)
    {
      v36 = sub_18B9B58D8(v64 > 1, v65 + 1, 1, v36);
    }

    v36[2] = v65 + 1;
    (*(v17 + 32))(v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v65, v94, v37);
  }

  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable) == 1)
  {
    v66 = sub_18BC1F448();
    (*(*(v66 - 8) + 56))(v99, 1, 1, v66);
    v67 = v91;
    sub_18BC1F428();
    v68 = *v59;
    v70 = v97;
    v69 = v98;
    (*(v97 + 104))(v16, v68, v98);
    v71 = v95;
    sub_18BC1F558();
    (*(v70 + 8))(v16, v69);
    (*(v2 + 8))(v67, v92);
    v72 = v90;
    (*(v17 + 16))(v90, v71, v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_18B9B58D8(0, v36[2] + 1, 1, v36);
    }

    v74 = v36[2];
    v73 = v36[3];
    if (v74 >= v73 >> 1)
    {
      v36 = sub_18B9B58D8(v73 > 1, v74 + 1, 1, v36);
    }

    (*(v17 + 8))(v95, v37);
    v36[2] = v74 + 1;
    (*(v17 + 32))(v36 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v74, v72, v37);
  }

  return sub_18BC21458();
}

uint64_t sub_18BB854E8(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount;
  v4 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount);
  v5 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount + 8);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  if (a2)
  {
    if (v5)
    {
      return result;
    }

    return sub_18BB84944();
  }

  if (v4 != result)
  {
    LOBYTE(v5) = 1;
  }

  if (v5)
  {
    return sub_18BB84944();
  }

  return result;
}

uint64_t (*sub_18BB85524(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = (v1 + v2);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_18BB85564;
}

uint64_t sub_18BB85564(uint64_t result)
{
  v1 = (*(result + 16) + *(result + 24));
  v2 = *result;
  v3 = *(result + 8);
  v4 = *v1;
  v5 = *(v1 + 8);
  *v1 = *result;
  *(v1 + 8) = v3;
  if (v3)
  {
    if (v5)
    {
      return result;
    }

    return sub_18BB84944();
  }

  if (v2 != v4)
  {
    v5 = 1;
  }

  if (v5)
  {
    return sub_18BB84944();
  }

  return result;
}

uint64_t sub_18BB855BC(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText);
  v4 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText);
  v5 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (!v5 || (v4 == result ? (v6 = v5 == a2) : (v6 = 0), !v6 && (sub_18BC21FD8() & 1) == 0))
    {
      v8 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel);
      sub_18BC1E3F8();
      v9 = sub_18BC20B98();

      [v8 setText_];

      [v8 setAlpha_];
      [v8 setHidden_];
    }
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    v7 = *(v2 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel);
    [v7 setAlpha_];
    [v7 setHidden_];
  }
}

id sub_18BB856F8()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return [*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView) setCustomImageInset_];
  }

  v3 = v2;
  if (![v3 isFolder])
  {

    goto LABEL_7;
  }

  v4 = WebBookmark.childrenCount.getter();
  if ((v5 & 1) != 0 || v4)
  {
    v12 = [v3 folderType];

    if (v12)
    {
      return [*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView) setCustomImageInset_];
    }

LABEL_7:
    v6 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView);
    v7 = *(v0 + v1);
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 secondarySystemFillColor];
    [v6 setBookmark:v9 withBackgroundColor:v10];

    return [v6 setCustomImageInset_];
  }

  return [*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView) setCustomImageInset_];
}

uint64_t (*sub_18BB85848(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_18BB86C00;
}

uint64_t (*sub_18BB8587C(uint64_t a1))()
{
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_18BB858B0;
}

uint64_t sub_18BB858B4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  v3 = *(*result + v1);
  *(*result + v1) = v2;
  if (v2 != v3)
  {
    return sub_18BB84944();
  }

  return result;
}

uint64_t (*sub_18BB858EC(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18BC20BD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_18BB86C04;
}

uint64_t (*sub_18BB8597C(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_18BC20BD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_18BB85A0C;
}

void sub_18BB85A10(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    if (v3)
    {
      sub_18BC1E3F8();
      v4 = sub_18BC20B98();
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 16) setText_];
  }

  else if (v3)
  {
    v4 = sub_18BC20B98();

    [*(a1 + 16) setText_];
  }

  else
  {
    v4 = 0;
    [*(a1 + 16) setText_];
  }
}

id sub_18BB85AE4()
{
  v2.receiver = v0;
  v2.super_class = _s13DetailRowCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_18BB85C5C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BB85524(v2);
  return sub_18BA75C58;
}

uint64_t sub_18BB85CCC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText);
  sub_18BC1E3F8();
  return v1;
}

uint64_t (*sub_18BB85D0C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText);
  a1[1] = v3;
  sub_18BC1E3F8();
  return sub_18BB85D68;
}

uint64_t sub_18BB85D68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_18BB855BC(*a1, v2);
  }

  sub_18BC1E3F8();
  sub_18BB855BC(v3, v2);
}

id sub_18BB85DDC()
{
  v1 = [*(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView) image];

  return v1;
}

void sub_18BB85E1C(void *a1)
{
  sub_18BB867D8(a1);
}

void (*sub_18BB85E54(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView) image];
  return sub_18BB85EB8;
}

void sub_18BB85EB8(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_18BB867D8(v4);

    v3 = v2;
  }

  else
  {
    sub_18BB867D8(*a1);
    v3 = v4;
  }
}

void *sub_18BB85F24()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BB85F70(void *a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView) setLeadingImage_];
}

void (*sub_18BB85FF0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_image;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_18BB86078;
}

void sub_18BB86078(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView) setLeadingImage_];
  }

  free(v3);
}

void *sub_18BB860DC()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BB86128(void *a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_18BB856F8();
}

id (*sub_18BB86190(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18BB861F4;
}

id sub_18BB861F4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_18BB856F8();
  }

  return result;
}

uint64_t sub_18BB86238(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable);
  *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable) = result;
  if (v2 != (result & 1))
  {
    return sub_18BB84944();
  }

  return result;
}

void (*sub_18BB8625C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BB85848(v2);
  return sub_18BA765E4;
}

uint64_t sub_18BB862DC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable);
  *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable) = result;
  if (v2 != (result & 1))
  {
    return sub_18BB84944();
  }

  return result;
}

void (*sub_18BB86300(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BB8587C(v2);
  return sub_18BA765E4;
}

void *sub_18BB86370()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_linkMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BB863BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_linkMetadata;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_18BB86474()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_parentFolder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BB864C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_parentFolder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*sub_18BB86590(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BB858EC(v2);
  return sub_18BA765E4;
}

uint64_t sub_18BB8660C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(v3 + *a3) text];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_18BC20BD8();

  return v6;
}

void sub_18BB86684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + *a5);
  if (a2)
  {
    v7 = sub_18BC20B98();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];
}

void (*sub_18BB866F8(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BB8597C(v2);
  return sub_18BA765E4;
}

void (*sub_18BB86768(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BA7633C(v2);
  return sub_18BA765E4;
}

id sub_18BB867D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if ([v5 isFolder])
  {
    v6 = WebBookmark.childrenCount.getter();
    if ((v7 & 1) == 0 && !v6)
    {

LABEL_10:
      v12 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView);
      v13 = [objc_opt_self() systemBlueColor];
      v14 = [v13 colorWithAlphaComponent_];

      [v12 setImage:a1 withBackgroundColor:v14];
      [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer) setHidden_];
      return [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView) setHidden_];
    }

    v11 = [v5 folderType];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView) setImage_];
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer);
  v9 = *(v1 + v3);
  if (v9)
  {
    v10 = [v9 isFolder];
  }

  else
  {
    v10 = 0;
  }

  [v8 setHidden_];
  return [*(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView) setHidden_];
}

void sub_18BB86990()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v2 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_iconView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v3 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageView;
  *(v0 + v3) = [objc_allocWithZone(_SFSiteIconView) init];
  v4 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_placeholderIconView;
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() systemImageNamed_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameContainer;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v9 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_siteNameLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v10 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_textStackView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v11 = OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_titleLabel;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  IsPad = _SFDeviceIsPad();
  v13 = 72.0;
  if (IsPad)
  {
    v13 = 56.0;
  }

  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewSize) = v13;
  v14 = _SFDeviceIsPad();
  v15 = 16.0;
  if (v14)
  {
    v15 = 12.0;
  }

  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewInset) = v15;
  v16 = v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_childrenCount;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_detailText);
  *v17 = 0;
  v17[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_image) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_imageViewBookmark) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isMultiSelectable) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_isReorderable) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_linkMetadata) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController13DetailRowCell_parentFolder) = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BB86C08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BB86C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

BOOL sub_18BB86CB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_18BB86D04(v5, v7);
}

id sub_18BB86EC0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3(0);
  return objc_msgSendSuper2(&v4, sel_isHighlighted);
}

void sub_18BB86F28(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5)
{
  v8 = a4(0);
  v14.receiver = a1;
  v14.super_class = v8;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v14, sel_isHighlighted);
  v13.receiver = v9;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, sel_setHighlighted_, a3);
  if (v10 != [v9 isHighlighted])
  {
    v11 = *&v9[*a5];
    v12 = sub_18BC1E1A8();
    v11(v12);
  }
}

id sub_18BB87024(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v13 = &a1[*a7];
  *v13 = a8;
  *(v13 + 1) = 0;
  v15.receiver = a1;
  v15.super_class = a9(0);
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_18BB870DC(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = &a1[*a4];
  *v7 = a5;
  *(v7 + 1) = 0;
  v11.receiver = a1;
  v11.super_class = a6(0);
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, v8);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_18BB871E4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18BC3E3E0;
    v7 = [v2 layoutMarginsGuide];
    v8 = [v7 trailingAnchor];

    v9 = [*&v2[*a2] trailingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v5 + 32) = v10;
    *&v2[v3] = v5;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v5;
}

uint64_t sub_18BB87304(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_isHovered];
  v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_isHovered] = result;
  if (v2 != (result & 1))
  {
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18BB8A2E4;
    v6[4] = v4;
    v14 = sub_18B7E767C;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_104_0;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_107_0;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }

  return result;
}

id sub_18BB874E4()
{
  v1 = OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___scrollPocketInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___scrollPocketInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___scrollPocketInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
    [v4 _setFindsParentScrollView_];
    [v4 _setActive_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BB87584()
{
  v1 = OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldBackgroundToDoneButtonConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldBackgroundToDoneButtonConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldBackgroundToDoneButtonConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_cancelButton) leadingAnchor];
    v5 = [*(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_18BB87658()
{
  v1 = OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField) heightAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_18BB87704()
{
  v1 = OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BB8D2B0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BB87764(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
  *v9 = CGRectMake;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndEditing];
  *v10 = CGRectMake;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndSearching];
  *v11 = CGRectMake;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_isEnabled] = 1;
  v12 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchQueryDidChange];
  *v13 = CGRectMake;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching];
  *v14 = sub_18B7E9C50;
  v14[1] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton] = 0;
  v15 = OBJC_IVAR____TtC12MobileSafari9SearchBar_cancelButton;
  type metadata accessor for BlurrableButton();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___constraintsForDoneButtonHidden] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___constraintsForDoneButtonShowing] = 0;
  v16 = OBJC_IVAR____TtC12MobileSafari9SearchBar_dictationButton;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_isHovered] = 0;
  v17 = [objc_opt_self() isSolariumEnabled];
  v18 = 7.0;
  if (v17)
  {
    v18 = 13.0;
  }

  v19 = 0x4024000000000000;
  if (v17)
  {
    v19 = 0;
  }

  v20 = 6.0;
  if (v17)
  {
    v20 = 12.0;
  }

  v21 = &v4[OBJC_IVAR____TtC12MobileSafari9SearchBar_metrics];
  *v21 = v18;
  v21[1] = v18;
  v21[2] = v18;
  v21[3] = v18;
  *(v21 + 4) = v19;
  *(v21 + 40) = v17;
  v21[6] = v20;
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___scrollPocketInteraction] = 0;
  v22 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
  *&v4[v22] = [objc_allocWithZone(type metadata accessor for SearchField()) initWithFrame_];
  v23 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView;
  type metadata accessor for SearchFieldBackgroundView();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldBackgroundToDoneButtonConstraint] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldHeightConstraint] = 0;
  v24 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchIconView;
  v25 = sub_18BC20B98();
  v26 = [objc_opt_self() systemImageNamed_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[v24] = v27;
  *&v4[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___blurRadius] = 0;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for SearchBar();
  v28 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BB87E24();

  return v28;
}

id sub_18BB87AD0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
  *v3 = CGRectMake;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndEditing];
  *v4 = CGRectMake;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndSearching];
  *v5 = CGRectMake;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_isEnabled] = 1;
  v6 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchQueryDidChange];
  *v7 = CGRectMake;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching];
  *v8 = sub_18B7E9C50;
  v8[1] = 0;
  v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton] = 0;
  v9 = OBJC_IVAR____TtC12MobileSafari9SearchBar_cancelButton;
  type metadata accessor for BlurrableButton();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___constraintsForDoneButtonHidden] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___constraintsForDoneButtonShowing] = 0;
  v10 = OBJC_IVAR____TtC12MobileSafari9SearchBar_dictationButton;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText] = 0;
  v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_isHovered] = 0;
  v11 = [objc_opt_self() isSolariumEnabled];
  v12 = 7.0;
  if (v11)
  {
    v12 = 13.0;
  }

  v13 = 0x4024000000000000;
  if (v11)
  {
    v13 = 0;
  }

  v14 = 6.0;
  if (v11)
  {
    v14 = 12.0;
  }

  v15 = &v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_metrics];
  *v15 = v12;
  v15[1] = v12;
  v15[2] = v12;
  v15[3] = v12;
  *(v15 + 4) = v13;
  *(v15 + 40) = v11;
  v15[6] = v14;
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___scrollPocketInteraction] = 0;
  v16 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
  *&v1[v16] = [objc_allocWithZone(type metadata accessor for SearchField()) initWithFrame_];
  v17 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView;
  type metadata accessor for SearchFieldBackgroundView();
  *&v1[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldBackgroundToDoneButtonConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___searchFieldHeightConstraint] = 0;
  v18 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchIconView;
  v19 = sub_18BC20B98();
  v20 = [objc_opt_self() systemImageNamed_];

  v21 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v1[v18] = v21;
  *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar____lazy_storage___blurRadius] = 0;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for SearchBar();
  v22 = objc_msgSendSuper2(&v26, sel_initWithCoder_, a1);
  v23 = v22;
  if (v22)
  {
    v24 = v22;
    sub_18BB87E24();
  }

  return v23;
}

void sub_18BB87E24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v97 - v3;
  v5 = sub_18BC1EE48();
  v6 = *(v5 - 1);
  v104 = v5;
  v105 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97 - v12;
  v14 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_dictationButton];
  v15 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = v15;
  v16 = sub_18BC215E8();
  [v14 addAction:v16 forControlEvents:0x2000];

  sub_18BB88E64(v13);
  sub_18BC21828();
  v100 = v14;
  [v14 setTintAdjustmentMode_];
  v17 = objc_opt_self();
  v18 = [v17 secondaryLabelColor];
  [v14 setTintColor_];

  v19 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_cancelButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_18BC215E8();
  [v19 addAction:v20 forControlEvents:0x2000];

  sub_18BC21798();
  sub_18BC1EE38();
  sub_18BC1EE28();
  v21 = *(v105 + 8);
  v105 += 8;
  v99 = v21;
  v21(v10, v104);
  sub_18BC217A8();
  sub_18BC1FF68();
  v22 = sub_18BC1FF58();
  (*(*(v22 - 8) + 56))(v4, 0, 1, v22);
  sub_18BC21748();
  sub_18BC21678();
  v23 = sub_18BC21808();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  v101 = v19;
  sub_18BC21828();
  [v19 setPointerInteractionEnabled_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setMaximumContentSizeCategory_];
  v106 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchIconView];
  v24 = v106;
  v25 = *MEMORY[0x1E69DDCF8];
  v26 = [objc_opt_self() configurationWithTextStyle_];
  [v24 setPreferredSymbolConfiguration_];

  [v24 setTintAdjustmentMode_];
  v27 = [v17 secondaryLabelColor];
  [v24 setTintColor_];

  [v24 &selRef:0 showPromptForExtensionDisabledBecauseItDoesNotSupportThisVersionOfSafariWithMessage:? extensionIdentifier:? + 2];
  v28 = swift_allocObject();
  v29 = v1;
  swift_unknownObjectWeakInit();
  v30 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_18BC215E8();
  [v30 addAction:v31 forControlEvents:0x20000];

  v32 = sub_18BC20B98();
  [v30 setAccessibilityIdentifier_];

  [v30 setAdjustsFontForContentSizeCategory_];
  [v30 setAutocorrectionType_];
  [v30 setDelegate_];
  [v30 setEnablesReturnKeyAutomatically_];
  v33 = [objc_opt_self() preferredFontForTextStyle_];
  [v30 setFont_];

  v34 = &v30[OBJC_IVAR____TtC12MobileSafariP33_3B1FB7CA3A8DA4948789A16DDC8A49E111SearchField_isHighlightedDidChange];
  *v34 = sub_18BB8A29C;
  v34[1] = v28;
  sub_18BC1E1A8();

  sub_18BC1EE38();
  v35 = v102;
  sub_18BC1EE38();
  sub_18BC1EE18();
  v36 = v35;
  v37 = v104;
  v38 = v99;
  v99(v36, v104);
  v38(v10, v37);
  v39 = sub_18BC20B98();

  [v30 setPlaceholder_];

  [v30 setReturnKeyType_];
  [v30 setRightView_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *&v29[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = sub_18BC215E8();
  [v40 addAction:v41 forControlEvents:64];

  v42 = [objc_allocWithZone(MEMORY[0x1E69DCAA0]) initWithTarget:v29 action:sel_didReceiveHover_];
  [v40 addGestureRecognizer_];

  v43 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  [v40 addInteraction_];

  v44 = &v40[OBJC_IVAR____TtC12MobileSafariP33_3B1FB7CA3A8DA4948789A16DDC8A49E125SearchFieldBackgroundView_isHighlightedDidChange];
  *v44 = sub_18BB8A29C;
  v44[1] = v28;
  v105 = v28;
  sub_18BC1E1A8();

  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = sub_18BB874E4();
  [v29 addInteraction_];

  [v29 addSubview_];
  v46 = v106;
  [v29 addSubview_];
  [v29 addSubview_];
  v47 = v101;
  [v29 addSubview_];
  LODWORD(v48) = 1144750080;
  [v46 setContentHuggingPriority:0 forAxis:v48];
  LODWORD(v49) = 1132068864;
  [v30 setContentCompressionResistancePriority:0 forAxis:v49];
  v98 = v29;
  v50 = [v29 layoutMarginsGuide];
  v103 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_18BC504D0;
  v52 = [v47 centerYAnchor];
  v53 = [v50 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v51 + 32) = v54;
  v55 = [v30 centerYAnchor];
  v56 = [v40 centerYAnchor];
  v57 = [v55 &selRef:v56 containsButtonType:? + 5];

  *(v51 + 40) = v57;
  v58 = [v30 leadingAnchor];
  v59 = [v106 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:4.0];

  *(v51 + 48) = v60;
  v61 = [v40 trailingAnchor];
  v62 = [v30 trailingAnchor];
  v63 = [v61 &selRef:v62 containsButtonType:? + 5];

  *(v51 + 56) = v63;
  *(v51 + 64) = sub_18BB87658();
  v64 = [v40 leadingAnchor];
  v65 = v50;
  v66 = [v50 leadingAnchor];
  v67 = [v64 &selRef:v66 containsButtonType:? + 5];

  *(v51 + 72) = v67;
  v68 = [v40 centerYAnchor];
  v69 = [v50 centerYAnchor];
  v70 = [v68 &selRef:v69 containsButtonType:? + 5];

  *(v51 + 80) = v70;
  v71 = [v40 topAnchor];
  v72 = [v50 topAnchor];
  v73 = [v71 &selRef:v72 containsButtonType:? + 5];

  LODWORD(v74) = 1132068864;
  [v73 setPriority_];
  *(v51 + 88) = v73;
  v75 = [v40 bottomAnchor];
  v76 = v98;
  v104 = v65;
  v77 = [v65 bottomAnchor];
  v78 = [v75 &selRef:v77 containsButtonType:? + 5];

  LODWORD(v79) = 1132068864;
  [v78 setPriority_];
  *(v51 + 96) = v78;
  v80 = [v40 heightAnchor];
  v81 = [v80 constraintGreaterThanOrEqualToConstant_];

  *(v51 + 104) = v81;
  *(v51 + 112) = sub_18BB87584();
  v82 = v106;
  v83 = [v106 lastBaselineAnchor];
  v84 = [v30 lastBaselineAnchor];
  v85 = [v83 &selRef:v84 containsButtonType:? + 5];

  *(v51 + 120) = v85;
  v86 = [v82 leadingAnchor];
  v87 = [v40 leadingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:*&v76[OBJC_IVAR____TtC12MobileSafari9SearchBar_metrics + 48]];

  *(v51 + 128) = v88;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v89 = sub_18BC20D88();

  v90 = v103;
  [v103 activateConstraints_];

  v91 = OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText;
  if (v76[OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText])
  {
    v92 = 0;
  }

  else
  {
    v92 = 2;
  }

  [v30 setRightViewMode_];
  if (v76[v91])
  {
    v93 = 3;
  }

  else
  {
    v93 = 1;
  }

  [v30 setClearButtonMode_];
  [v76 layoutMarginsDidChange];
  v94 = OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton;
  if (v76[OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton] == 1)
  {
    sub_18BB871BC();
  }

  else
  {
    sub_18BB871D0();
  }

  v95 = sub_18BC20D88();

  [v90 deactivateConstraints_];

  if (v76[v94] == 1)
  {
    sub_18BB871D0();
  }

  else
  {
    sub_18BB871BC();
  }

  v96 = sub_18BC20D88();

  [v90 activateConstraints_];

  [v76 setNeedsLayout];
  sub_18BB89BD8();
  [v30 setNeedsLayout];
}

uint64_t sub_18BB88E64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC21808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BC21798();
  [objc_opt_self() isSolariumEnabled];
  v6 = sub_18BC20B98();

  v7 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  v8 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  sub_18BC215F8();
  sub_18BC21678();
  v9 = [objc_opt_self() clearColor];
  v10 = sub_18BC21608();
  sub_18BC1F788();
  v10(v12, 0);
  (*(v3 + 32))(a1, v5, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_18BB890A0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
    v2 = *(result + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField);
    v3 = result;
    v4 = sub_18BC20B98();
    [v2 setText_];

    [*&v3[v1] resignFirstResponder];
    v5 = *&v3[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndSearching];
    v6 = sub_18BC1E1A8();
    v5(v6);
  }

  return result;
}

uint64_t sub_18BB89164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1E7F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_18B9EA798();
  return sub_18BC1E808();
}

uint64_t sub_18BB89218(uint64_t a1)
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v4[2] = inited;
  v4[3] = sub_18BB8A2DC;
  v4[4] = a1;
  v12 = sub_18B7D80AC;
  v13 = v4;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_18B7B0DB0;
  v11 = &block_descriptor_91_0;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  v12 = CGRectMake;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_18B8043A0;
  v11 = &block_descriptor_94;
  v6 = _Block_copy(&v8);

  [v3 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v6);
  _Block_release(v5);
}

void sub_18BB893C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18BB89BD8();
  }
}

void sub_18BB89418(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_18BB89474()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching);
    v3 = sub_18BC1E1A8();
    LOBYTE(v2) = v2(v3);

    if (v2)
    {
      [*&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField] becomeFirstResponder];
      v4 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
      v5 = sub_18BC1E1A8();
      v4(v5);
    }
  }
}

void sub_18BB8953C()
{
  sub_18BC20BD8();
  v1 = sub_18BC20B98();

  v2 = [objc_opt_self() dictationInputModeOptionsWithInvocationSource_];

  v3 = [objc_opt_self() sharedInputModeController];
  if (v3)
  {
    v4 = v3;
    [v3 toggleDictationForResponder:*(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField) WithOptions:v2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18BB89698()
{
  v1 = [*&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField] text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18BC20BD8();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v6 != 0;
  v8 = v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText];
  v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText] = v7;
  if (v8 != v7 && (v9 = swift_allocObject(), *(v9 + 16) = v0, v10 = objc_opt_self(), v11 = swift_allocObject(), *(v11 + 16) = sub_18BB8A1CC, *(v11 + 24) = v9, v12 = swift_allocObject(), *(v12 + 16) = sub_18B7D1EC4, *(v12 + 24) = v11, v17[4] = sub_18B7D1E94, v17[5] = v12, v17[0] = MEMORY[0x1E69E9820], v17[1] = 1107296256, v17[2] = sub_18B7E3BF4, v17[3] = &block_descriptor_53, v13 = _Block_copy(v17), v14 = v0, sub_18BC1E1A8(), sub_18BC1E1A8(), , [v10 performWithoutAnimation_], _Block_release(v13), LOBYTE(v10) = swift_isEscapingClosureAtFileLocation(), , , result = , (v10 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v16 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchQueryDidChange];
    sub_18BC1E1A8();
    v16(v3, v5);
  }

  return result;
}

id sub_18BB89950()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchBar();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  sub_18BB89CC0();
  v2 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_cancelButton];
  v3 = OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton;
  v4 = 1.0;
  if (!v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton])
  {
    v4 = 0.0;
  }

  [v2 setAlpha_];
  v5 = sub_18BC0F2C4();
  v6 = v5;
  v7 = 6.0;
  if (v1[v3])
  {
    v7 = 0.0;
  }

  [v5 setValue_];

  if (v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_metrics + 40])
  {
    v8 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView];
    [v8 bounds];
    v9 = CGRectGetHeight(v13) * 0.5;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_metrics + 32];
    v8 = *&v1[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView];
    [v8 bounds];
    v9 = CGRectGetHeight(v14) * 0.5;
    if (v9 >= v10)
    {
      v9 = v10;
    }
  }

  return [v8 _setContinuousCornerRadius_];
}

void sub_18BB89AD0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SearchBar();
  objc_msgSendSuper2(&v10, sel_updateConstraints);
  [v0 directionalLayoutMargins];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_18BB87584();
  [v7 setConstant_];

  if ((v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight + 8] & 1) == 0)
  {
    v8 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
    v9 = sub_18BB87658();
    [v9 setConstant_];
  }
}

void sub_18BB89BD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView);
  if (([v1 isHighlighted] & 1) != 0 || objc_msgSend(*(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField), sel_isHighlighted))
  {
    v2 = objc_opt_self();
    v3 = &selRef_systemFillColor;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC12MobileSafari9SearchBar_isHovered);
    v2 = objc_opt_self();
    v3 = &selRef_tertiarySystemFillColor;
    if (v4)
    {
      v3 = &selRef_secondarySystemFillColor;
    }
  }

  v5 = [v2 *v3];
  [v1 setBackgroundColor_];
}

void sub_18BB89CC0()
{
  if ((v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
    [v0 bounds];
    Height = CGRectGetHeight(v24);
    [v0 directionalLayoutMargins];
    v4 = v3;
    v6 = v5;
    [v0 directionalLayoutMargins];
    v9 = v1 - (v7 + v8);
    if (v9 > 0.0)
    {
      v10 = 1.0 - (Height - (v4 + v6)) / v9;
      if (v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_isEnabled])
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.35;
      }

      v12 = _SFUninterpolate(v10, 0.0, 0.2);
      if (v12 <= 1.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1.0;
      }

      v14 = 1.0 - v13;
      if (v12 > 0.0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1.0;
      }

      v16 = v11 * v15;
      [*&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchIconView] setAlpha_];
      [*&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField] setAlpha_];
      v17 = _SFUninterpolate(v10, 0.8, 0.95);
      if (v17 <= 1.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = 1.0 - v18;
      if (v17 > 0.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 1.0;
      }

      v21 = v11 * v20;
      v22 = *&v0[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchFieldBackgroundView];

      [v22 setAlpha_];
    }
  }
}

void sub_18BB89E7C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v6 = a1;
  v5 = sub_18BC1E1A8();
  v4(v5);
}

id sub_18BB89FA4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_18BB8A140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BB8A160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
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

  *(result + 56) = v3;
  return result;
}

id sub_18BB8A1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField);
  v3 = OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText;
  if (*(v1 + OBJC_IVAR____TtC12MobileSafari9SearchBar_hasText))
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [*(v1 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField) setRightViewMode_];
  if (*(v1 + v3))
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v2 setClearButtonMode_];

  return [v2 layoutIfNeeded];
}

id sub_18BB8A340(void *a1)
{
  v3 = &v1[OBJC_IVAR___SFCapsuleTabGroupView_configuration];
  *v3 = 0;
  v3[8] = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  *&v1[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___constraintsForDisclosureIndicatorWithoutImage] = 0;
  *&v1[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___defaultConstraints] = 0;
  v4 = OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator;
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() systemImageNamed_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v1[v4] = v7;
  v8 = OBJC_IVAR___SFCapsuleTabGroupView_imageView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v9 = OBJC_IVAR___SFCapsuleTabGroupView_stackView;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v10 = OBJC_IVAR___SFCapsuleTabGroupView_titleLabel;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1[OBJC_IVAR___SFCapsuleTabGroupView_isSelected] = 0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for CapsuleTabGroupView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithCoder_, a1);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    sub_18B7D08D4();
  }

  return v12;
}

id sub_18BB8A51C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CapsuleTabGroupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB8A5FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18BB8A658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t SFSiriLinkCoordinator.actionPerformer.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id SFSiriLinkCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = SFSiriLinkCoordinator;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for SFSiriLinkCoordinator()
{
  result = qword_1EA9DA518;
  if (!qword_1EA9DA518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9DA518);
  }

  return result;
}

uint64_t sub_18BB8A8C0()
{
  sub_18BC20C28();
}

void sub_18BB8AA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, id (*a6)(), void *a7)
{
  v27 = a7;
  v30 = a1;
  aBlock = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v13 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v29 = objc_opt_self();
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  v19 = v27;
  *(v18 + 6) = a6;
  *(v18 + 7) = v19;
  v20 = v28;
  *(v18 + 8) = v28;
  (*(v14 + 32))(&v18[v17], v16, v13);
  v35 = sub_18BB8B0AC;
  v36 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_18B7B0DB0;
  v34 = &block_descriptor_54;
  v21 = _Block_copy(&aBlock);
  v22 = v20;

  [v29 _performWithoutRetargetingAnimations_];
  _Block_release(v21);
  v23 = [v22 layer];
  if (*(SFFluidCollectionView.LayoutAttributes.customProperties.getter(v13) + 16) && (sub_18B831970(0x6964615272756C62, 0xEA00000000007375), (v24 & 1) != 0))
  {

    v25 = sub_18BC1EEA8();
  }

  else
  {

    v25 = 0;
  }

  v26 = sub_18BC20B98();
  [v23 setValue:v25 forKeyPath:v26];

  swift_unknownObjectRelease();
}

id SFFluidTabOverviewReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SFFluidTabOverviewReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SFFluidTabOverviewReusableView();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3E410;
  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  *(v11 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8);
  *(v11 + 32) = v12;
  v13 = sub_18BC20D88();

  [v10 setFilters_];

  return v9;
}

id SFFluidTabOverviewReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_18BB8AFF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v11 = *(a2 + *(v10 + 68));
  v12 = SFFluidCollectionView.LayoutAttributes.customProperties.getter(v10);
  if (*(v12 + 16) && (v13 = sub_18B831970(0xD000000000000018, 0x800000018BC65660), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);

    return [a1 setAlpha_];
  }

  else
  {

    __break(1u);
  }

  return result;
}

id sub_18BB8B0AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() - 8);
  v8 = v0[8];
  v9 = v0 + ((*(v7 + 80) + 72) & ~*(v7 + 80));

  return sub_18BB8AFF8(v8, v9, v1, v2, v3, v4, v5, v6);
}

id SFFluidTabOverviewReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFFluidTabOverviewReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BB8B1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18BC22158();
  sub_18BC215D8();
  sub_18BC20C28();
  v6 = sub_18BC221A8();

  return sub_18BB8BAF4(a1, a2, a3, v6);
}

unint64_t sub_18BB8B29C(uint64_t a1)
{
  sub_18BC22158();
  _s4ItemVMa();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v2 = sub_18BC221A8();

  return sub_18BB8BC48(a1, v2);
}

unint64_t sub_18BB8B348(uint64_t a1)
{
  v2 = sub_18BC22148();

  return sub_18BB8BDBC(a1, v2);
}

unint64_t sub_18BB8B3DC(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  _s7SectionVMa_1();
  sub_18BC22178();
  v2 = sub_18BC221A8();

  return sub_18BB8BE28(a1, v2);
}

unint64_t sub_18BB8B4D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_18BC22158();
  a2(0);
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v10 = sub_18BC221A8();
  return sub_18BB8BFCC(a1, v10, a3, a4, a5);
}

unint64_t sub_18BB8B5F0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  return sub_18BB8C12C(a1, v8, a2, a3, a4);
}

unint64_t sub_18BB8B6B4(uint64_t a1)
{
  sub_18BC20BD8();
  sub_18BC22158();
  sub_18BC20C28();
  v2 = sub_18BC221A8();

  return sub_18BB8C27C(a1, v2);
}

unint64_t sub_18BB8B744(unsigned __int8 a1)
{
  sub_18BC22158();
  sub_18BC20C28();

  v2 = sub_18BC221A8();

  return sub_18BB8C380(a1, v2);
}

unint64_t sub_18BB8B834(char a1)
{
  sub_18BC22158();
  sub_18BC20C28();

  v2 = sub_18BC221A8();

  return sub_18BB8C538(a1 & 1, v2);
}

unint64_t sub_18BB8B8DC(unsigned __int8 a1)
{
  sub_18BC22158();
  sub_18BB8A8C0();
  v2 = sub_18BC221A8();

  return sub_18BB8C684(a1, v2);
}

unint64_t sub_18BB8B948(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_18B82BA00(&qword_1EA9D9FE0);
      v15 = sub_18BC20AE8();
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

unint64_t sub_18BB8BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    sub_18B7B0AC0(0, &qword_1EA9D5BE0);
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *v9;
      sub_18BC1E3F8();
      if (sub_18BC215C8())
      {
        if (v10 == a2 && v11 == a3)
        {

          return v6;
        }

        v14 = sub_18BC21FD8();

        if (v14)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_18BB8BC48(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_18B815318(*(v2 + 48) + v11 * v9, v7, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B8154A0(v7, _s4ItemVMa);
      if (updated)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_18BB8BDBC(uint64_t a1, uint64_t a2)
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

unint64_t sub_18BB8BE28(uint64_t a1, uint64_t a2)
{
  v5 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_18B815318(*(v2 + 48) + v12 * v10, v8, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v13 = v8[*(v5 + 20)];
        sub_18B8154A0(v8, _s7SectionVMa_1);
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_18B8154A0(v8, _s7SectionVMa_1);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_18BB8BFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v19 = a5;
  v8 = a3(0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = -1 << *(v5 + 32);
  v13 = a2 & ~v12;
  if ((*(v5 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v9 + 72);
    do
    {
      sub_18B815318(*(v5 + 48) + v15 * v13, v11, a4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B8154A0(v11, v19);
      if (updated)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v5 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_18BB8C12C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = -1 << *(v5 + 32);
  v14 = a2 & ~v13;
  if ((*(v5 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v10 + 72);
    do
    {
      sub_18B815318(*(v5 + 48) + v16 * v14, v12, a4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B8154A0(v12, a5);
      if (updated)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v5 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_18BB8C27C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_18BC20BD8();
      v8 = v7;
      if (v6 == sub_18BC20BD8() && v8 == v9)
      {
        break;
      }

      v11 = sub_18BC21FD8();

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

unint64_t sub_18BB8C380(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000011 : 0x6F747369486C6C61;
      v8 = v6 == 2 ? 0x800000018BC60840 : 0xEA00000000007972;
      v9 = *(*(v2 + 48) + v4) ? 0x7961646F74 : 0x72756F487473616CLL;
      v10 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE800000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0xD000000000000011 : 0x6F747369486C6C61;
      v14 = v5 == 2 ? 0x800000018BC60840 : 0xEA00000000007972;
      v15 = v5 ? 0x7961646F74 : 0x72756F487473616CLL;
      v16 = v5 ? 0xE500000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_18BC21FD8();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

unint64_t sub_18BB8C538(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x70756F7247626174;
    }

    else
    {
      v6 = 0x656C69666F7270;
    }

    if (a1)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x70756F7247626174 : 0x656C69666F7270;
      v9 = *(*(v2 + 48) + v4) ? 0xE800000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_18BC21FD8();

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

unint64_t sub_18BB8C684(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 <= 3)
      {
        v9 = 0xE900000000000073;
        if (v6 == 2)
        {
          v10 = 0x4C676E6964616572;
        }

        else
        {
          v10 = 0x6957646572616873;
        }

        if (v6 == 2)
        {
          v11 = 0xEB00000000747369;
        }

        else
        {
          v11 = 0xED0000756F596874;
        }

        if (v6)
        {
          v12 = 0x79726F74736968;
        }

        else
        {
          v12 = 0x6B72616D6B6F6F62;
        }

        if (v6)
        {
          v9 = 0xE700000000000000;
        }

        v7 = v6 <= 1 ? v12 : v10;
        v8 = v6 <= 1 ? v9 : v11;
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        v7 = v6 == 4 ? 0x72616265646973 : 0x6761507472617473;
        v8 = v6 == 4 ? 0xE700000000000000 : 0xE900000000000065;
      }

      else if (v6 == 6)
      {
        v7 = 0x767265764F626174;
        v8 = 0xEB00000000776569;
      }

      else if (v6 == 7)
      {
        v7 = 0x6261546C61636F6CLL;
        v8 = 0xED000070756F7247;
      }

      else
      {
        v7 = 0x5465746176697270;
        v8 = 0xEF70756F72476261;
      }

      v13 = 0xE900000000000073;
      v14 = 0x6261546C61636F6CLL;
      if (v5 != 7)
      {
        v14 = 0x5465746176697270;
      }

      v15 = 0xEF70756F72476261;
      if (v5 == 7)
      {
        v15 = 0xED000070756F7247;
      }

      if (v5 == 6)
      {
        v14 = 0x767265764F626174;
        v15 = 0xEB00000000776569;
      }

      v16 = 0x6761507472617473;
      if (v5 == 4)
      {
        v16 = 0x72616265646973;
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xE900000000000065;
      }

      if (v5 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v5 == 2)
      {
        v18 = 0x4C676E6964616572;
      }

      else
      {
        v18 = 0x6957646572616873;
      }

      if (v5 == 2)
      {
        v19 = 0xEB00000000747369;
      }

      else
      {
        v19 = 0xED0000756F596874;
      }

      if (v5)
      {
        v20 = 0x79726F74736968;
      }

      else
      {
        v20 = 0x6B72616D6B6F6F62;
      }

      if (v5)
      {
        v13 = 0xE700000000000000;
      }

      if (v5 > 1)
      {
        v13 = v19;
      }

      else
      {
        v18 = v20;
      }

      v21 = v5 <= 3 ? v18 : v14;
      v22 = v5 <= 3 ? v13 : v15;
      if (v7 == v21 && v8 == v22)
      {
        break;
      }

      v23 = sub_18BC21FD8();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

uint64_t sub_18BB8C9F8()
{
  sub_18BC22158();
  sub_18BC20C28();
  v0 = sub_18BC221A8();

  return sub_18BB8C9CC(v0);
}

id sub_18BB8CA60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D900;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_62_0;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D930;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_66;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

id sub_18BB8CC74()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D750;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_55;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D780;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_6_1;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

id sub_18BB8CE88()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D8A0;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_42;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D8D0;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_46_3;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

id sub_18BB8D09C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D840;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_32_0;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D870;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_36_1;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

id sub_18BB8D2B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D7B0;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_12_1;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D7E0;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_16_1;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

void sub_18BB8D4C4(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2();
    [v5 presentationValue];
    v7 = v6;

    sub_18B801D6C(v7 >= 1.0, v4);
  }
}

id sub_18BB8D568()
{
  v1 = OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari16BlurrableToolbar____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BB8CC74();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BB8D6C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurrableToolbar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB8D9B0()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F8340);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F8340);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8F8();
  sub_18BC20B58();
  sub_18BC20B48();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v16, v15);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18BB8DE68(uint64_t a1)
{
  v2 = sub_18BA83618();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

uint64_t sub_18BB8DEB4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v16[1] = a1;
  v18 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v17 = v16 - v3;
  v16[0] = sub_18BC1EA98();
  v4 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_18BC1E8D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC1E9B8();
  (*(v4 + 8))(v6, v16[0]);
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v11 + 56))(v9, 0, 1, v10);
  v14 = sub_18BC1E398();
  (*(*(v14 - 8) + 56))(v17, 1, 1, v14);
  return sub_18BC1E3A8();
}

uint64_t sub_18BB8E28C(uint64_t a1)
{
  v2 = sub_18BB8FF2C();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18BB8E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18BC20F28();
  v3[5] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB8E374, v5, v4);
}

uint64_t sub_18BB8E374()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  **(v0 + 16) = sub_18BB91C30(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_18BB8E410(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_18BC20F28();
  *(v1 + 24) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB8E4A8, v3, v2);
}

uint64_t sub_18BB8E4A8()
{

  **(v0 + 16) = sub_18BB918E4(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18BB8E540(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18BB915FC(a1);
}

uint64_t sub_18BB8E5E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18B9EC2C0;

  return sub_18BB91D2C();
}

uint64_t sub_18BB8E68C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18BB8FD90();
  *v5 = v2;
  v5[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_18BB8E740()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8358);
  __swift_project_value_buffer(v6, qword_1EA9F8358);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

void (*sub_18BB8E998(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

id sub_18BB8EA0C(void *a1)
{
  result = [a1 canCreateReadingListItem];
  if (!result)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v2 = sub_18BC1DE48();
    v3 = __swift_project_value_buffer(v2, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v2 - 8) + 16))(v4, v3, v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18BB8EB44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB903E4();
  *a1 = result;
  return result;
}

uint64_t sub_18BB8EB6C()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8370);
  __swift_project_value_buffer(v6, qword_1EA9F8370);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

__n128 sub_18BB8ED5C@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18BB8EDA8()
{
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E0B8();
}

void (*sub_18BB8EE20(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

uint64_t sub_18BB8EECC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_18BB8EF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB91EFC();
  *a1 = result;
  return result;
}

uint64_t SFSiriLinkCoordinator.createReadingListItemInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC50738;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807638();
  return sub_18BC1F028();
}

uint64_t sub_18BB8F04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  sub_18BC20F28();
  v3[7] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB8F0E4, v5, v4);
}

uint64_t sub_18BB8F0E4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Create Reading List item", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 40);

    [v3 createReadingListItem];
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v8[4] = sub_18B7B0B08(&qword_1EA9D45B8, &qword_1EA9D45C0);
    __swift_allocate_boxed_opaque_existential_0Tm(v8);
    sub_18BC1DF98();
    swift_unknownObjectRelease();
    v9 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v10 = sub_18BC1DE48();
    v11 = __swift_project_value_buffer(v10, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v10 - 8) + 16))(v12, v11, v10);
    swift_willThrow();
    v9 = *(v0 + 8);
  }

  return v9();
}

uint64_t sub_18BB8F37C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB8F04C(a1, a2, v2);
}

uint64_t sub_18BB8F428(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return v8(a1, v5);
}

uint64_t sub_18BB8F52C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB8F428(a1, a2, v6);
}

uint64_t SFSiriLinkCoordinator.openReadingListItemInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC50758;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807C40();
  return sub_18BC1F028();
}

uint64_t sub_18BB8F6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB8F740, v5, v4);
}

uint64_t sub_18BB8F740()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "Open Reading List item", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v8 = *(v0 + 72);

    sub_18BC1E0A8();

    v9 = sub_18BC20B98();

    [v3 openBookmarkWithUUIDString_];

    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v8[4] = sub_18B7B0B08(&qword_1EA9D45B8, &qword_1EA9D45C0);
    __swift_allocate_boxed_opaque_existential_0Tm(v8);
    sub_18BC1DF98();
    swift_unknownObjectRelease();
    v10 = *(v0 + 8);
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v11 = sub_18BC1DE48();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    swift_willThrow();
    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_18BB8FA14(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BB8F6A4(a1, a2, v2);
}

uint64_t sub_18BB8FAC0(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BB8FBC4(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BB8FAC0(a1, a2, v6);
}

unint64_t sub_18BB8FC8C()
{
  result = qword_1EA9DA540;
  if (!qword_1EA9DA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA540);
  }

  return result;
}

unint64_t sub_18BB8FCE4()
{
  result = qword_1EA9DA548;
  if (!qword_1EA9DA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA548);
  }

  return result;
}

unint64_t sub_18BB8FD3C()
{
  result = qword_1EA9DA550;
  if (!qword_1EA9DA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA550);
  }

  return result;
}

unint64_t sub_18BB8FD90()
{
  result = qword_1EA9DA558;
  if (!qword_1EA9DA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA558);
  }

  return result;
}

unint64_t sub_18BB8FDE8()
{
  result = qword_1EA9DA560;
  if (!qword_1EA9DA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA560);
  }

  return result;
}

unint64_t sub_18BB8FE3C()
{
  result = qword_1EA9DA568;
  if (!qword_1EA9DA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA568);
  }

  return result;
}

unint64_t sub_18BB8FE90()
{
  result = qword_1EA9DA570;
  if (!qword_1EA9DA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA570);
  }

  return result;
}

unint64_t sub_18BB8FF2C()
{
  result = qword_1EA9DA588;
  if (!qword_1EA9DA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA588);
  }

  return result;
}

unint64_t sub_18BB8FF84()
{
  result = qword_1EA9DA590;
  if (!qword_1EA9DA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA590);
  }

  return result;
}

unint64_t sub_18BB8FFDC()
{
  result = qword_1EA9DA598;
  if (!qword_1EA9DA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA598);
  }

  return result;
}

unint64_t sub_18BB90034()
{
  result = qword_1EA9DA5A0;
  if (!qword_1EA9DA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5A0);
  }

  return result;
}

unint64_t sub_18BB9008C()
{
  result = qword_1EA9DA5A8;
  if (!qword_1EA9DA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5A8);
  }

  return result;
}

unint64_t sub_18BB900E4()
{
  result = qword_1EA9DA5B0;
  if (!qword_1EA9DA5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA5B8);
    sub_18BB8FE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5B0);
  }

  return result;
}

unint64_t sub_18BB9016C()
{
  result = qword_1EA9DA5C0;
  if (!qword_1EA9DA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5C0);
  }

  return result;
}

unint64_t sub_18BB901FC()
{
  result = qword_1EA9DA5D8;
  if (!qword_1EA9DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA5D8);
  }

  return result;
}

uint64_t sub_18BB9031C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BB8FAC0(a1, a2, v6);
}

uint64_t sub_18BB903E4()
{
  v0 = sub_18BC1E488();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = &v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = &v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22 = sub_18BC1E8D8();
  v14 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7438);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8E8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v24;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v22);
  v18 = sub_18BC20AF8();
  v30 = 0;
  v31 = 0;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v19 = sub_18BC1DF68();
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A4F8], v29);
  return sub_18BC1E168();
}

char *sub_18BB9093C(void *a1)
{
  v39 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v41 = &v33 - v2;
  v3 = sub_18BC1EA98();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v33 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v33 - v8;
  v9 = sub_18BC1E8B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
  sub_18BC20B18();
  sub_18BC1EC38();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v10 + 104);
  v17(v12, v16, v9);
  sub_18BC1E8E8();
  v40 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028);
  sub_18BC20B18();
  sub_18BC1EC38();
  v17(v12, v16, v9);
  v19 = v38;
  v18 = v39;
  v20 = v37;
  sub_18BC1E8E8();
  v36 = sub_18BC1E018();
  v21 = [v18 address];
  sub_18BC20BD8();

  v22 = v41;
  sub_18BC1EA68();

  if ((*(v20 + 48))(v22, 1, v19) == 1)
  {

    sub_18BACE6CC(v22);

    return 0;
  }

  else
  {
    v24 = v34;
    (*(v20 + 32))(v34, v22, v19);
    v25 = [v18 UUID];
    v41 = sub_18BC20BD8();

    sub_18BC1E3F8();
    v26 = [v18 title];
    v27 = sub_18BC20BD8();
    v29 = v28;

    v42 = v27;
    v43 = v29;
    sub_18BC1DFF8();
    v30 = *(v20 + 16);
    v31 = v35;
    v30(v35, v24, v19);
    v30(v33, v31, v19);
    sub_18BC1DFF8();

    v32 = *(v20 + 8);
    v32(v31, v19);
    v32(v24, v19);

    return v41;
  }
}

uint64_t sub_18BB90F24(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v36 - v3;
  v4 = sub_18BC1EA98();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - v9;
  v10 = sub_18BC1E8B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
  sub_18BC20B18();
  sub_18BC1EC38();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_18BC1E8E8();
  v45 = sub_18BC1E038();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9028);
  sub_18BC20B18();
  sub_18BC1EC38();
  v18(v13, v17, v10);
  sub_18BC1E8E8();
  sub_18BC1E018();
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v20 = [Strong bookmarkCollection], swift_unknownObjectRelease(), !v20))
  {

LABEL_11:

    return 0;
  }

  v21 = sub_18BC20B98();
  v22 = [v20 bookmarkWithUUID_];

  if (!v22)
  {

    goto LABEL_11;
  }

  v23 = [v22 address];
  sub_18BC20BD8();

  v24 = v39;
  sub_18BC1EA68();

  v25 = v41;
  v26 = v42;
  if ((*(v41 + 48))(v24, 1, v42) == 1)
  {

    sub_18BACE6CC(v24);

    return 0;
  }

  v28 = v40;
  (*(v25 + 32))(v40, v24, v26);
  sub_18BC1E3F8();
  v29 = [v22 title];
  v30 = sub_18BC20BD8();
  v32 = v31;

  v46 = v30;
  v47 = v32;
  sub_18BC1DFF8();
  v33 = *(v25 + 16);
  v34 = v38;
  v33(v38, v28, v26);
  v33(v37, v34, v26);
  sub_18BC1DFF8();

  v35 = *(v25 + 8);
  v35(v34, v26);
  v35(v40, v26);

  return v43;
}

uint64_t sub_18BB915FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_18BC20F28();
  *(v1 + 24) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB91694, v3, v2);
}

uint64_t sub_18BB91694()
{

  if (qword_1EA9D22B0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Matching Reading List item with identifiers", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = 0;
  v7 = *(v5 + 16);
  v8 = v5 + 40;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = (v8 + 16 * v6);
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    sub_18BC1E3F8();
    v14 = sub_18BB90F24(v13, v12);
    v10 += 2;
    ++v6;
    if (v15)
    {
      v33 = v0;
      v18 = v17;
      v19 = v16;
      v20 = v15;
      v21 = v14;
      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_18B9B64DC(0, *(v9 + 2) + 1, 1, v9);
      }

      v24 = *(v9 + 2);
      v23 = *(v9 + 3);
      if (v24 >= v23 >> 1)
      {
        v30 = sub_18B9B64DC((v23 > 1), v24 + 1, 1, v9);
        v28 = v18;
        v27 = v19;
        v26 = v20;
        v9 = v30;
        v25 = v21;
      }

      else
      {
        v25 = v21;
        v26 = v20;
        v27 = v19;
        v28 = v18;
      }

      *(v9 + 2) = v24 + 1;
      v29 = &v9[32 * v24];
      *(v29 + 4) = v25;
      *(v29 + 5) = v26;
      *(v29 + 6) = v27;
      *(v29 + 7) = v28;
      v6 = v11;
      v8 = v22;
      v0 = v33;
      goto LABEL_5;
    }
  }

  v31 = *(v0 + 8);

  return v31(v9);
}

char *sub_18BB918E4(uint64_t a1, unint64_t a2)
{
  if (qword_1EA9D24D8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v2 = Strong;
    v5 = [Strong bookmarkCollection];
    swift_unknownObjectRelease();
    if (!v5)
    {
      break;
    }

    if (a2)
    {
      v6 = sub_18BC20B98();
    }

    else
    {
      v6 = 0;
    }

    v10 = [v5 readingListWithUnreadOnly:0 filteredUsingString:{v6, v30}];

    v11 = [v10 bookmarkArray];
    sub_18BB1A89C();
    v12 = sub_18BC20D98();

    if (v12 >> 62)
    {
      v13 = sub_18BC219A8();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v13 == v14)
      {

        return v2;
      }

      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v15 = MEMORY[0x18CFFD010](v14, v12);
      a2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }

LABEL_17:
      v16 = sub_18BB9093C(v15);
      ++v14;
      if (v17)
      {
        v31 = v5;
        v32 = v19;
        v20 = v18;
        v33 = v17;
        v34 = v16;
        v30 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_18B9B64DC(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        v23 = v33;
        v24 = v34;
        v25 = v32;
        if (v22 >= v21 >> 1)
        {
          v28 = sub_18B9B64DC((v21 > 1), v22 + 1, 1, v2);
          v25 = v32;
          v23 = v33;
          v26 = v20;
          v2 = v28;
          v24 = v34;
        }

        else
        {
          v26 = v20;
        }

        *(v2 + 2) = v22 + 1;
        v27 = &v2[32 * v22];
        *(v27 + 4) = v24;
        *(v27 + 5) = v23;
        *(v27 + 6) = v26;
        *(v27 + 7) = v25;
        v14 = a2;
        v10 = v30;
        v5 = v31;
      }
    }

    if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v15 = *(v12 + 8 * v14 + 32);
    a2 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_17;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v7 = sub_18BC1DE48();
  v8 = __swift_project_value_buffer(v7, qword_1EA9F8578);
  sub_18B9A33F8();
  swift_allocError();
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  swift_willThrow();
  return v2;
}

char *sub_18BB91C30(uint64_t a1, unint64_t a2)
{
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v4 = sub_18BC1F2C8();
  __swift_project_value_buffer(v4, qword_1EA9F7EC8);
  v5 = sub_18BC1F2A8();
  v6 = sub_18BC21218();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_18B7AC000, v5, v6, "Matching Reading List item with string", v7, 2u);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
  }

  return sub_18BB918E4(a1, a2);
}

uint64_t sub_18BB91D2C()
{
  sub_18BC20F28();
  *(v0 + 16) = sub_18BC20F18();
  v2 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB91DC0, v2, v1);
}

uint64_t sub_18BB91DC0()
{

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Get all Reading List items", v4, 2u);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  v5 = sub_18BB918E4(0, 0);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_18BB91EFC()
{
  v0 = sub_18BC1E488();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v25 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = v21 - v7;
  v8 = sub_18BC1E8B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v21[0] = sub_18BC1E8D8();
  v14 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA5F0);
  sub_18BC20B18();
  sub_18BC1EC38();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_18BC1E8F8();
  sub_18BC20B18();
  sub_18BC1EC38();
  v16(v11, v15, v8);
  v17 = v22;
  sub_18BC1E8F8();
  (*(v14 + 56))(v17, 0, 1, v21[0]);
  v18 = sub_18BC1DF68();
  v28 = 0u;
  v29 = 0u;
  v19 = *(*(v18 - 8) + 56);
  v19(v23, 1, 1, v18);
  v19(v24, 1, 1, v18);
  (*(v26 + 104))(v25, *MEMORY[0x1E695A4F8], v27);
  sub_18BA83618();
  return sub_18BC1E118();
}

uint64_t sub_18BB92420(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB92468(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_18BB924C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18BB92524(v7, v9);
}

BOOL sub_18BB92524(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3];
  if (v5 && (sub_18B9A2928(), (sub_18BC215C8() & 1) != 0) && a1[5] == a2[5] && a1[6] == a2[6] && a1[7] == a2[7])
  {
    return a1[8] == a2[8];
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_18BB9260C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_18BC1F4B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1F418();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_address];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon] = 0;
  v21 = &v4[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_title];
  v22 = _s15HistoryItemCellCMa();
  *v21 = 0;
  *(v21 + 1) = 0;
  v27.receiver = v4;
  v27.super_class = v22;
  v23 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  (*(v17 + 104))(v19, *MEMORY[0x1E69DBF18], v16);
  v24 = sub_18BC1F448();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = v23;
  sub_18BC1F4A8();
  sub_18BC1F3E8();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  sub_18BC21458();

  return v25;
}

uint64_t sub_18BB92A90()
{
  v1 = v0;
  v2 = sub_18BC1FA08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F708();
  v7 = _s15HistoryItemCellCMa();
  v21.receiver = v1;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, sel__bridgedUpdateConfigurationUsingState_, v6);

  sub_18BC1F9A8();
  sub_18BC1E3F8();
  sub_18BC1F9B8();
  v8 = sub_18BC1F8A8();
  sub_18BC1F808();
  v8(v20, 0);
  sub_18BC1E3F8();
  sub_18BC1F7E8();
  v9 = sub_18BC1F938();
  sub_18BC1F808();
  v9(v20, 0);
  v10 = *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon];
  if (!v10)
  {
    v11 = sub_18BC20B98();
    v12 = [objc_opt_self() systemImageNamed_];
  }

  v13 = v10;
  sub_18BC1F9D8();
  v14 = sub_18BC1F918();
  sub_18BC1F8E8();
  v14(v20, 0);
  v15 = sub_18BC1F918();
  sub_18BC1F8F8();
  v15(v20, 0);
  v16 = sub_18BC1F918();
  sub_18BC1F8D8();
  (v16)(v20, 0);
  v20[3] = v2;
  v20[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v20);
  (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
  MEMORY[0x18CFFC900](v20);
  LOBYTE(v16) = sub_18BC1F6E8();
  [v1 safari:v16 & 1 updateVisualStateIsSelected:sub_18BC1F728() & 1 isEditing:?];
  return (*(v3 + 8))(v5, v2);
}

void sub_18BB92EA0(id a1)
{
  v3 = *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon];
  *&v1[OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon] = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_9;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
LABEL_9:
    [v1 setNeedsUpdateConfiguration];

    v7 = v8;
    goto LABEL_10;
  }

  v4 = v1;
  sub_18B7E7DC4();
  a1 = a1;
  v5 = v8;
  v6 = sub_18BC215C8();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    goto LABEL_9;
  }

  v7 = v5;
LABEL_10:
}

uint64_t sub_18BB92F98(uint64_t result, uint64_t a2, void *a3)
{
  v4 = &v3[*a3];
  v5 = *v4;
  v6 = v4[1];
  *v4 = result;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == result && v6 == a2;
      if (v7 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v6)
  {
    return result;
  }

  [v3 setNeedsUpdateConfiguration];
LABEL_11:
}

id sub_18BB93020()
{
  v2.receiver = v0;
  v2.super_class = _s15HistoryItemCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB930DC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_address);
  sub_18BC1E3F8();
  return v1;
}

uint64_t (*sub_18BB9311C(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_address + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_address);
  a1[1] = v3;
  sub_18BC1E3F8();
  return sub_18BB93178;
}

void *sub_18BB93190()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon);
  v2 = v1;
  return v1;
}

void (*sub_18BB931C4(void *a1))(id *a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_icon);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_18BB93218;
}

void sub_18BB93218(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_18BB92EA0(v2);
  }

  else
  {
    sub_18BB92EA0(*a1);
  }
}

uint64_t sub_18BB93280()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_title);
  sub_18BC1E3F8();
  return v1;
}

uint64_t (*sub_18BB932C0(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_title[0] + 8);
  *a1 = *(v1 + OBJC_IVAR____TtCC12MobileSafari35SFBookmarksCollectionViewController15HistoryItemCell_title[0]);
  a1[1] = v3;
  sub_18BC1E3F8();
  return sub_18BB9331C;
}

uint64_t sub_18BB93334(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  sub_18BC1E3F8();
  a3(v5, v4);
}

void sub_18BB933B4(uint64_t a1)
{
  v3 = sub_18BC20B98();
  [v1 safari:a1 annotateWithHistoryItem:v3 inProfile:?];
}

void (*sub_18BB93418(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BA7633C(v2);
  return sub_18B9ACD4C;
}

uint64_t sub_18BB93488()
{
  sub_18BC1E3F8();
  v0 = sub_18BC20FF8();
  swift_beginAccess();
  v1 = type metadata accessor for CountedSet();
  sub_18BA71868(v0, v1);
  swift_endAccess();

  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v2 = sub_18BC20FF8();

  swift_beginAccess();
  sub_18BA71880(v2, v1);
  swift_endAccess();
}

uint64_t sub_18BB935C8(uint64_t a1)
{
  *(v1 + 88) = a1;
  sub_18BB93488();
}

uint64_t sub_18BB93608()
{
  swift_beginAccess();
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D60);
  sub_18BC20A28();

  return v1;
}

uint64_t sub_18BB936C4()
{
  v2 = *(v0 + 88);
  sub_18BC210E8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  swift_getWitnessTable();
  sub_18BC210D8();
  *(v0 + 88) = v2;
  sub_18BB93488();
}

uint64_t sub_18BB9379C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    v4 = sub_18BB32DD8(v3, v2, *(v1 + 88));
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v0[11] = v4;
  sub_18BB93488();
}

uint64_t sub_18BB93868(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_18BC1E1A8();
  v3(a1);
}

uint64_t sub_18BB938C4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return v0;
}

uint64_t sub_18BB9392C()
{
  sub_18BB938C4();

  return swift_deallocClassInstance();
}

uint64_t sub_18BB93994()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v12[0] = v12 - v1;
  v2 = sub_18BC1E8B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC1E8D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v10, qword_1EA9F8398);
  __swift_project_value_buffer(v10, qword_1EA9F8398);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_18BC1E8E8();
  (*(v9 + 56))(v12[0], 1, 1, v8);
  return sub_18BC1E4E8();
}

uint64_t sub_18BB93C9C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6B72616D6B6F6F62;
    v6 = 0x4C676E6964616572;
    if (a1 != 2)
    {
      v6 = 0x6957646572616873;
    }

    if (a1)
    {
      v5 = 0x79726F74736968;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x767265764F626174;
    v2 = 0x6261546C61636F6CLL;
    if (a1 != 7)
    {
      v2 = 0x5465746176697270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x72616265646973;
    if (a1 != 4)
    {
      v3 = 0x6761507472617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_18BB93E00()
{
  result = qword_1EA9DA698;
  if (!qword_1EA9DA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA698);
  }

  return result;
}

uint64_t sub_18BB93E54()
{
  sub_18BC22158();
  sub_18BB8A8C0();
  return sub_18BC221A8();
}

uint64_t sub_18BB93EA4()
{
  sub_18BC22158();
  sub_18BB8A8C0();
  return sub_18BC221A8();
}

uint64_t sub_18BB93EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BB96634();
  *a1 = result;
  return result;
}

uint64_t sub_18BB93F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB93C9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18BB93F44()
{
  result = qword_1EA9DA6A0;
  if (!qword_1EA9DA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6A0);
  }

  return result;
}

unint64_t sub_18BB93F9C()
{
  result = qword_1EA9DA6A8;
  if (!qword_1EA9DA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6A8);
  }

  return result;
}

unint64_t sub_18BB93FF4()
{
  result = qword_1EA9DA6B0;
  if (!qword_1EA9DA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6B0);
  }

  return result;
}

unint64_t sub_18BB940A0()
{
  result = qword_1EA9DA6C8;
  if (!qword_1EA9DA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6C8);
  }

  return result;
}

unint64_t sub_18BB940F4()
{
  result = qword_1EA9DA6D0;
  if (!qword_1EA9DA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6D0);
  }

  return result;
}

unint64_t sub_18BB9414C()
{
  result = qword_1EA9DA6D8;
  if (!qword_1EA9DA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6D8);
  }

  return result;
}

unint64_t sub_18BB94220()
{
  result = qword_1EA9DA6E0;
  if (!qword_1EA9DA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6E0);
  }

  return result;
}

uint64_t sub_18BB94274(uint64_t a1)
{
  v2 = sub_18BB94220();

  return MEMORY[0x1EEDB2C18](a1, v2);
}

unint64_t sub_18BB942C4()
{
  result = qword_1EA9DA6E8;
  if (!qword_1EA9DA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6E8);
  }

  return result;
}

unint64_t sub_18BB9431C()
{
  result = qword_1EA9DA6F0;
  if (!qword_1EA9DA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6F0);
  }

  return result;
}

unint64_t sub_18BB94374()
{
  result = qword_1EA9DA6F8;
  if (!qword_1EA9DA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA6F8);
  }

  return result;
}

uint64_t sub_18BB943CC(uint64_t a1)
{
  v2 = sub_18BB9414C();

  return MEMORY[0x1EEDB3D70](a1, v2);
}

unint64_t sub_18BB9441C()
{
  result = qword_1EA9DA700;
  if (!qword_1EA9DA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA700);
  }

  return result;
}

unint64_t sub_18BB94474()
{
  result = qword_1EA9DA708;
  if (!qword_1EA9DA708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA6C0);
    sub_18BA3F6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA708);
  }

  return result;
}

uint64_t sub_18BB944F8(void *a1)
{
  if (*v1 == 1)
  {
    sub_18BA02470(&unk_1EFF1AE40);
  }

  if (_SFDeviceIsPad())
  {
    sub_18BA02470(&unk_1EFF1AE68);
  }

  *a1 = &unk_1EFF1AE18;
  v4 = *(v2 + 8);

  return v4();
}

unint64_t sub_18BB945AC()
{
  result = qword_1EA9DA710;
  if (!qword_1EA9DA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA710);
  }

  return result;
}

void (*sub_18BB94624(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C5B4;
}

uint64_t sub_18BB9471C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB9523C(1);
  *a1 = result;
  return result;
}

unint64_t sub_18BB9474C()
{
  result = qword_1EA9DA728;
  if (!qword_1EA9DA728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA728);
  }

  return result;
}

uint64_t sub_18BB947C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_18BC1E8B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  return sub_18BC1E8F8();
}

void (*sub_18BB949B0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BC1E098();
  return sub_18BB92404;
}

uint64_t sub_18BB94AF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_18BC20F28();
  *(v1 + 24) = sub_18BC20F18();
  v3 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB96684, v3, v2);
}

uint64_t sub_18BB94B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BB9523C(0);
  *a1 = result;
  return result;
}

uint64_t sub_18BB94BB4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_18BC1E0A8();
  if (v14 == 7)
  {
    goto LABEL_4;
  }

  v4 = sub_18BC21FD8();

  if (v4)
  {
LABEL_6:
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v6 = sub_18BC1DE48();
    v7 = __swift_project_value_buffer(v6, qword_1EA9F8578);
    sub_18B9A33F8();
    swift_allocError();
    (*(*(v6 - 8) + 16))(v8, v7, v6);
    return swift_willThrow();
  }

  sub_18BC1E0A8();
  if (v13 >= 8u)
  {
LABEL_4:

    goto LABEL_6;
  }

  v5 = sub_18BC21FD8();

  if (v5)
  {
    goto LABEL_6;
  }

  v10 = [a1 currentScene];
  if (v10)
  {
    *a2 = v10;
    v11 = *MEMORY[0x1E6985C00];
  }

  else
  {
    v11 = *MEMORY[0x1E6985BF8];
  }

  v12 = sub_18BC1F048();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_18BB95020(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_18BC20F28();
  v3[5] = sub_18BC20F18();
  v5 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BB950BC, v5, v4);
}

uint64_t sub_18BB950BC()
{
  v1 = v0[2];
  v2 = v0[3];

  sub_18BB94BB4(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t getEnumTagSinglePayload for ViewIdentityProvider(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_18BB9523C(int a1)
{
  v25 = a1;
  v26 = sub_18BC1E488();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = sub_18BC1E8B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_18BC1E8D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA740);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v11 + 104))(v13, *MEMORY[0x1E6968DF0], v10);
  sub_18BC1E8E8();
  (*(v17 + 56))(v9, 1, 1, v16);
  v28 = 9;
  v18 = sub_18BC1DF68();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  v27 = v25;
  (*(v24 + 104))(v23, *MEMORY[0x1E695A4F8], v26);
  sub_18BB956F8();
  sub_18BB94220();
  return sub_18BC1E0E8();
}

unint64_t sub_18BB956F8()
{
  result = qword_1EA9DA748;
  if (!qword_1EA9DA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA748);
  }

  return result;
}

unint64_t sub_18BB9574C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v72 = v55 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = v55 - v3;
  v71 = sub_18BC1E8B8();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_18BC1E8D8();
  v13 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA750);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7240);
  v16 = *(v70 - 8);
  v69 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v60 = 8 * v69;
  v18 = swift_allocObject();
  v59 = v18;
  *(v18 + 16) = xmmword_18BC510D0;
  v19 = (v18 + v17);
  *v19 = 0;
  sub_18BC20B18();
  sub_18BC1EC38();
  v75 = *MEMORY[0x1E6968DF0];
  v74 = *(v4 + 104);
  v76 = v4 + 104;
  v74(v6);
  v20 = v12;
  sub_18BC1E8E8();
  v21 = *(v13 + 56);
  v67 = v13 + 56;
  v63 = v21;
  v22 = v77;
  v21(v64, 1, 1, v77);
  v65 = sub_18BC1E398();
  v23 = *(v65 - 8);
  v68 = *(v23 + 56);
  v73 = v23 + 56;
  v24 = v72;
  v68(v72, 1, 1, v65);
  v66 = v19;
  sub_18BC1E3A8();
  v25 = v69;
  v57 = &v19[v69];
  v58 = *(v70 + 48);
  *v57 = 1;
  v26 = v20;
  sub_18BC20B18();
  v61 = v9;
  sub_18BC1EC38();
  v62 = v6;
  v27 = v71;
  (v74)(v62, v75, v71);
  v55[2] = v15;
  sub_18BC1E8E8();
  v28 = v64;
  v29 = v22;
  v30 = v63;
  v63(v64, 1, 1, v29);
  v31 = v65;
  v68(v24, 1, 1, v65);
  sub_18BC1E3A8();
  v58 = 2 * v25;
  v56 = &v66[2 * v25];
  v32 = v70;
  v57 = *(v70 + 48);
  *v56 = 2;
  sub_18BC20B18();
  sub_18BC1EC38();
  v33 = v62;
  (v74)(v62, v75, v27);
  sub_18BC1E8E8();
  v30(v28, 1, 1, v77);
  v68(v24, 1, 1, v31);
  sub_18BC1E3A8();
  v34 = v66;
  v57 = &v66[v58 + v69];
  v58 = *(v32 + 48);
  *v57 = 3;
  v55[1] = v26;
  sub_18BC20B18();
  sub_18BC1EC38();
  (v74)(v33, v75, v71);
  sub_18BC1E8E8();
  v35 = v77;
  v30(v28, 1, 1, v77);
  v36 = v65;
  v37 = v68;
  v68(v72, 1, 1, v65);
  sub_18BC1E3A8();
  v58 = 4 * v69;
  v56 = &v34[4 * v69];
  v57 = *(v70 + 48);
  v34[v58] = 4;
  sub_18BC20B18();
  sub_18BC1EC38();
  v38 = v62;
  (v74)(v62, v75, v71);
  sub_18BC1E8E8();
  v39 = v64;
  v30(v64, 1, 1, v35);
  v37(v72, 1, 1, v36);
  v40 = v39;
  sub_18BC1E3A8();
  v57 = &v66[v58 + v69];
  v41 = v70;
  v58 = *(v70 + 48);
  *v57 = 5;
  sub_18BC20B18();
  sub_18BC1EC38();
  v42 = v38;
  v43 = v38;
  v44 = v75;
  v45 = v74;
  (v74)(v43, v75, v71);
  sub_18BC1E8E8();
  v63(v40, 1, 1, v77);
  v68(v72, 1, 1, v65);
  sub_18BC1E3A8();
  v57 = &v66[6 * v69];
  v58 = *(v41 + 48);
  *v57 = 6;
  sub_18BC20B18();
  sub_18BC1EC38();
  v46 = v71;
  v45(v42, v44, v71);
  sub_18BC1E8E8();
  v47 = v63;
  v63(v40, 1, 1, v77);
  v48 = v68;
  v68(v72, 1, 1, v65);
  sub_18BC1E3A8();
  v49 = v66;
  v58 = &v66[v60 - v69];
  v69 = *(v70 + 48);
  *v58 = 7;
  sub_18BC20B18();
  sub_18BC1EC38();
  (v74)(v62, v75, v46);
  sub_18BC1E8E8();
  v50 = v64;
  v47(v64, 1, 1, v77);
  v51 = v72;
  v52 = v65;
  v48(v72, 1, 1, v65);
  sub_18BC1E3A8();
  v49[v60] = 8;
  sub_18BC20B18();
  sub_18BC1EC38();
  (v74)(v62, v75, v71);
  sub_18BC1E8E8();
  v63(v50, 1, 1, v77);
  v68(v51, 1, 1, v52);
  sub_18BC1E3A8();
  v53 = sub_18BA663E4(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v53;
}

uint64_t sub_18BB96634()
{
  v0 = sub_18BC21E28();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_18BB9669C(void *a1, char a2)
{
  if (!a2)
  {
    v4 = [v2 layer];
    v7 = [a1 layer];
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    v4 = [v2 layer];
    v9 = [a1 layer];
    v5 = [v9 presentationLayer];
    if (v5)
    {
      v6 = v5;

      v7 = v6;
    }

    else
    {
      v7 = v9;
    }

LABEL_10:
    v10 = v7;
    sub_18BAE348C(v7);

    return;
  }

  sub_18BB96BD8(a1);
}

UIEdgeInsets __swiftcall UIEdgeInsets.replacing(_:edges:)(UIEdgeInsets _, __C::UIRectEdge edges)
{
  UIEdgeInsetsReplace();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

uint64_t sub_18BB967F0(unint64_t a1)
{
  v23 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = i - 1;
    v6 = __OFSUB__(i, 1);
    v22 = v6;
    v21 = i;
    while (v4)
    {
      v8 = MEMORY[0x18CFFD010](v3, a1);
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_26;
      }

LABEL_12:
      v10 = v8;
      MEMORY[0x18CFFC270]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      if (v22)
      {
        goto LABEL_28;
      }

      v11 = v23;
      if (v4)
      {
        v12 = v10;
        v13 = MEMORY[0x18CFFD010](v5, a1);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v14 = *(a1 + 32 + 8 * v5);
        v15 = v10;
        v13 = v14;
      }

      v16 = v13;
      sub_18B7B0AC0(0, &unk_1EA9D35C0);
      v17 = sub_18BC215C8();

      if (v17)
      {

        v7 = v21;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_18BC3E3E0;
        *(v18 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
        sub_18BC213E8();

        MEMORY[0x18CFFC270](v19);
        v7 = v21;
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();

        v11 = v23;
      }

      ++v3;
      if (v9 == v7)
      {
        return v11;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v8 = *(a1 + 8 * v3 + 32);
    v9 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18BB96AD4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E3E0;
  v8 = a1();
  *(v7 + 32) = sub_18BB974A8(v8, a3, a4);
  return v7;
}

uint64_t sub_18BB96B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3E400;
  v1 = sub_18BC1FF28();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  result = sub_18BC1F6D8();
  v4 = MEMORY[0x1E69DC0A0];
  *(v0 + 48) = result;
  *(v0 + 56) = v4;
  qword_1EA9F83E8 = v0;
  return result;
}

void sub_18BB96BD8(void *a1)
{
  v2 = v1;
  v4 = [v1 window];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v4 windowScene];

  if (!v6)
  {
    return;
  }

  v7 = [v6 screen];

  v8 = [v7 maximumFramesPerSecond];
  v75 = [v2 superview];
  if (!v75)
  {
    return;
  }

  v9 = [a1 superview];
  if (v9)
  {
    v74 = v9;
    if (qword_1EA9D2288 != -1)
    {
      swift_once();
    }

    v10 = 1.0 / v8;
    v11 = sub_18BC1F2C8();
    v12 = __swift_project_value_buffer(v11, qword_1EA9F7E50);
    v13 = sub_18BC1F2A8();
    v14 = sub_18BC21228();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      *(v15 + 4) = v10;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v8;
      _os_log_impl(&dword_18B7AC000, v13, v14, "Estimating position using dt %f (from maximum fps %ld)", v15, 0x16u);
      MEMORY[0x18CFFEEE0](v15, -1, -1);
    }

    v16 = [a1 layer];
    v17 = [v16 presentationLayer];
    if (v17)
    {
      v18 = v17;

      v16 = v18;
    }

    [v16 position];
    v20 = v19;
    v22 = v21;
    v23 = sub_18BC20B98();
    v24 = [a1 _velocityForKey_];

    if (v24)
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v82 = v80;
    v83 = v81;
    if (*(&v81 + 1))
    {
      type metadata accessor for CGPoint(0);
      if (swift_dynamicCast())
      {
        v25 = v76;
        v26 = v77;
        goto LABEL_22;
      }
    }

    else
    {
      sub_18B7E0F80(&v82);
    }

    v25 = 0.0;
    v26 = 0.0;
LABEL_22:
    v27 = v20 + v10 * v25;
    v28 = v22 + v10 * v26;
    v29 = sub_18BC1F2A8();
    v30 = sub_18BC21228();
    v73 = v16;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v72 = v12;
      v32 = swift_slowAlloc();
      *&v80 = v32;
      *v31 = 136315650;
      *&v82 = v20;
      *(&v82 + 1) = v22;
      type metadata accessor for CGPoint(0);
      v33 = sub_18BC20BF8();
      v35 = sub_18B7EA850(v33, v34, &v80);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *&v82 = v25;
      *(&v82 + 1) = v26;
      v36 = sub_18BC20BF8();
      v38 = sub_18B7EA850(v36, v37, &v80);

      *(v31 + 14) = v38;
      *(v31 + 22) = 2080;
      *&v82 = v20 + v10 * v25;
      *(&v82 + 1) = v22 + v10 * v26;
      v39 = sub_18BC20BF8();
      v41 = sub_18B7EA850(v39, v40, &v80);

      *(v31 + 24) = v41;
      v16 = v73;
      _os_log_impl(&dword_18B7AC000, v29, v30, "Estimating position from original %s and velocity %s. Estimated %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x18CFFEEE0](v32, -1, -1);
      MEMORY[0x18CFFEEE0](v31, -1, -1);
    }

    [v16 bounds];
    v43 = v42;
    v45 = v44;
    v46 = sub_18BC20B98();
    v47 = [a1 _velocityForKey_];

    if (v47)
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
    }

    v82 = v80;
    v83 = v81;
    if (*(&v81 + 1))
    {
      v48 = v28;
      type metadata accessor for CGRect(0);
      if (swift_dynamicCast())
      {
        v50 = v78;
        v49 = v79;
LABEL_32:
        v51 = v10 * v49;
        v52 = v43 + v10 * v50;
        v53 = v45 + v51;
        v54 = sub_18BC1F2A8();
        v55 = sub_18BC21228();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v80 = v57;
          *v56 = 136315650;
          *&v82 = v43;
          *(&v82 + 1) = v45;
          type metadata accessor for CGSize(0);
          v58 = sub_18BC20BF8();
          v60 = sub_18B7EA850(v58, v59, &v80);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          *&v82 = v50;
          *(&v82 + 1) = v49;
          v61 = sub_18BC20BF8();
          v63 = sub_18B7EA850(v61, v62, &v80);

          *(v56 + 14) = v63;
          *(v56 + 22) = 2080;
          *&v82 = v52;
          *(&v82 + 1) = v53;
          v64 = sub_18BC20BF8();
          v66 = sub_18B7EA850(v64, v65, &v80);

          *(v56 + 24) = v66;
          v16 = v73;
          _os_log_impl(&dword_18B7AC000, v54, v55, "Estimating size from original %s and velocity %s. Estimated %s", v56, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x18CFFEEE0](v57, -1, -1);
          MEMORY[0x18CFFEEE0](v56, -1, -1);
        }

        [v74 convertPoint:v75 toCoordinateSpace:{v27, v48}];
        v68 = v67;
        v70 = v69;
        if (CGFloatIsValid() && CGFloatIsValid())
        {
          [v2 bounds];
          [v2 setBounds_];
          [v2 setCenter_];
        }

        else
        {
          v71 = [v2 sf:a1 commonAncestrySummaryWithView:v72];
        }

        return;
      }
    }

    else
    {
      v48 = v28;
      sub_18B7E0F80(&v82);
    }

    v50 = 0.0;
    v49 = 0.0;
    goto LABEL_32;
  }
}

void sub_18BB9737C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18BC20B98();
  v6 = [a3 _velocityForKey_];

  v7 = sub_18BC20B98();
  [v3 _setVelocity_forKey_];
  swift_unknownObjectRelease();

  v8 = sub_18BC20B98();
  v9 = [a3 _targetVelocityForKey_];

  v10 = sub_18BC20B98();
  [v3 _setTargetVelocity_forKey_];
  swift_unknownObjectRelease();
}

id sub_18BB974A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18BAB0DB8(a1, 1);
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() systemImageNamed_];

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  sub_18BC1E1A8();
  v8 = sub_18BC215E8();
  v9 = sub_18BC20B98();
  [v8 setAccessibilityIdentifier_];

  return v8;
}

id SFCapsulePageLayoutMinibar.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_buttonPadding] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_minimumCapsuleHeight] = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutMinibar.init(container:)()
{
  *&v0[OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_buttonPadding] = 0x4020000000000000;
  *&v0[OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_minimumCapsuleHeight] = 0x4048000000000000;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutMinibar();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_18BB978D8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18BB97938(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari26SFCapsulePageLayoutMinibar_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

void sub_18BB97A8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    swift_unknownObjectRelease();
    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

uint64_t sub_18BB97B2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9040);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3FC60;
  *(v0 + 32) = sub_18BC20BD8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_18BC20BD8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_18BC20BD8();
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_18BB97BB8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, sub_18B7BB640(a1), v7 = v6, v9 = v8, (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    [v10 bounds];
    [a1 capsuleHeightForWidth:0 defaultHeight:CGRectGetWidth(v41) state:44.0];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = fmax(v12, 48.0);
    v14 = sub_18BC20B98();
    LODWORD(v15) = 1112014848;
    LODWORD(v16) = 1148846080;
    [a1 preferredSizeForSupplementaryWithIdentifier:v14 fittingSize:v13 horizontalFittingPriority:v13 verticalFittingPriority:{v15, v16}];

    v17 = sub_18BC20B98();
    v18 = [v5 prefersHiddenForSupplementaryWithIdentifier_];

    v19 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    if (a2 != 2)
    {
      [v5 bounds];
      v7 = CGRectGetWidth(v42) - v13 - v9;
    }

    [v5 bounds];
    CGRectGetHeight(v43);
    v20 = _SFRoundRectToPixels(v7);
    v21 = &v19[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v21 = v20;
    *(v21 + 1) = v22;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    CACornerRadiiMake(v40, v13 * 0.5, v13 * 0.5, v13 * 0.5, v13 * 0.5);
    v26 = v40[0];
    v25 = v40[1];
    v28 = v40[2];
    v27 = v40[3];
    v30 = v40[4];
    v29 = v40[5];
    v32 = v40[6];
    v31 = v40[7];
    swift_unknownObjectRelease();
    v33 = &v19[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v33 = v26;
    v33[1] = v25;
    v33[2] = v28;
    v33[3] = v27;
    v33[4] = v30;
    v33[5] = v29;
    v33[6] = v32;
    v33[7] = v31;
    v34 = 0;
    if (v32 == v31 && v32 == v26 && v31 == v25)
    {
      v35 = v32 == v30;
      if (v31 != v29)
      {
        v35 = 0;
      }

      if (v32 != v28)
      {
        v35 = 0;
      }

      v34 = v31 == v27 && v35;
    }

    v36 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v19[v36] = v34;
    if (v18)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = 1.0;
    }

    v38 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
    swift_beginAccess();
    *&v19[v38] = v37;
    return v19;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BB97EF0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7BB7E0(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [a1 lockdownStatusBar];
    v10 = v9;
    if (v9)
    {
      [v9 preferredSize];
    }

    v11 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v21.origin.x = v5;
    v21.origin.y = v6;
    v21.size.width = v7;
    v21.size.height = v8;
    CGRectGetMinY(v21);
    [v3 bounds];
    CGRectGetWidth(v22);
    v12 = _SFRoundRectToPixels(0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v19 = v12;
    *(v19 + 1) = v14;
    *(v19 + 2) = v16;
    *(v19 + 3) = v18;
    return v11;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutMinibar.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutMinibar.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutMinibar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB9833C()
{
  v1[24] = v0;
  v2 = sub_18BC1E8B8();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  sub_18BC1EC48();
  v1[28] = swift_task_alloc();
  sub_18BC20B88();
  v1[29] = swift_task_alloc();
  sub_18BC1E8D8();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BB98480, 0, 0);
}

uint64_t sub_18BB98480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_15:
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v27 = sub_18BC1F2C8();
    v0[31] = __swift_project_value_buffer(v27, qword_1EA9F7EC8);
    v28 = sub_18BC1F2A8();
    v29 = sub_18BC21258();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_18B7AC000, v28, v29, "Awaiting profile entity dictionaries from SBSA", v30, 2u);
      MEMORY[0x18CFFEEE0](v30, -1, -1);
    }

    v31 = SiriLinkDataSource.connection.getter();
    v32 = [v31 remoteObjectProxy];

    if (v32)
    {
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_18BB98A30;
      v33 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA820);
      v0[10] = MEMORY[0x1E69E9820];
      v0[11] = 1107296256;
      v0[12] = sub_18BB99EA0;
      v0[13] = &block_descriptor_9;
      v0[14] = v33;
      [v32 fetchProfileEntitiesWithCompletion_];
      swift_unknownObjectRelease();
      v6 = (v0 + 2);

      return MEMORY[0x1EEE6DEC8](v6);
    }

    goto LABEL_25;
  }

  v2 = [Strong tabGroupManager];
  swift_unknownObjectRelease();
  if (![v2 hasMultipleProfiles])
  {

    goto LABEL_15;
  }

  v3 = [v2 profiles];
  sub_18B7B0AC0(0, &qword_1EA9DA830);
  v4 = sub_18BC20D98();

  if (v4 >> 62)
  {
    v5 = sub_18BC219A8();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_5:
      v36 = v2;
      v42 = MEMORY[0x1E69E7CC0];
      v6 = sub_18B9B688C(0, v5 & ~(v5 >> 63), 0);
      if ((v5 & 0x8000000000000000) == 0)
      {
        v7 = v0[26];
        v8 = v42;
        v39 = v4 & 0xC000000000000001;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
        v9 = v4;
        v10 = 0;
        v38 = *MEMORY[0x1E6968DF0];
        v37 = (v7 + 104);
        v40 = v5;
        v41 = v4;
        do
        {
          if (v39)
          {
            v11 = MEMORY[0x18CFFD010](v10, v9);
          }

          else
          {
            v11 = *(v9 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v0[27];
          v14 = v0[25];
          sub_18BC20B18();
          sub_18BC1EC38();
          (*v37)(v13, v38, v14);
          sub_18BC1E8F8();
          v15 = sub_18BC1E038();
          sub_18BC1E1A8();
          v16 = [v12 identifier];
          v17 = sub_18BC20BD8();
          v19 = v18;

          sub_18BC1E3F8();
          v20 = [v12 title];
          v21 = sub_18BC20BD8();
          v23 = v22;

          v0[21] = v21;
          v0[22] = v23;
          sub_18BC1DFF8();

          v25 = *(v42 + 16);
          v24 = *(v42 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_18B9B688C((v24 > 1), v25 + 1, 1);
          }

          ++v10;
          *(v42 + 16) = v25 + 1;
          v26 = (v42 + 24 * v25);
          v26[4] = v17;
          v26[5] = v19;
          v26[6] = v15;
          v9 = v41;
        }

        while (v40 != v10);

        goto LABEL_26;
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v6);
    }
  }

LABEL_25:
  v8 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v34 = v0[1];

  return v34(v8);
}

uint64_t sub_18BB98A30()
{

  return MEMORY[0x1EEE6DFA0](sub_18BB98B10, 0, 0);
}

void sub_18BB98B10()
{
  v20 = v0;
  v1 = *(v0 + 184);
  if (!v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v14 = *(v0 + 8);

    v14(v5);
    return;
  }

  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();
  v15 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_18B7AC000, v2, v3, "Received %ld profile entity dictionaries", v4, 0xCu);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 16);
  if (!v6)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v0 = v15;
    goto LABEL_18;
  }

  v7 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v7 < *(v1 + 16))
  {
    v17 = *(v1 + 32 + 8 * v7);
    sub_18BB99F2C(&v17, "Creating entity for profile %{sensitive,mask.hash}s with identifier %s", sub_18B9ECD9C, &v18);
    if (v19)
    {
      v16 = v19;
      v9 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_18B9B5D9C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      v12 = v16;
      if (v11 >= v10 >> 1)
      {
        v13 = sub_18B9B5D9C((v10 > 1), v11 + 1, 1, v5);
        v12 = v16;
        v5 = v13;
      }

      *(v5 + 2) = v11 + 1;
      v8 = &v5[24 * v11];
      *(v8 + 4) = v9;
      *(v8 + 40) = v12;
    }

    if (v6 == ++v7)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_18BB98D88()
{
  v1[24] = v0;
  v2 = sub_18BC1E8B8();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  sub_18BC1EC48();
  v1[28] = swift_task_alloc();
  sub_18BC20B88();
  v1[29] = swift_task_alloc();
  sub_18BC1E8D8();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18BB98ECC, 0, 0);
}

uint64_t sub_18BB98ECC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EA9D22B0 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  v2 = [Strong tabGroupManager];
  swift_unknownObjectRelease();
  v3 = [v2 namedTabGroupsInDefaultProfile];

  sub_18B7B0AC0(0, &unk_1EA9DA810);
  v4 = sub_18BC20D98();

  if (v4 >> 62)
  {
    v5 = sub_18BC219A8();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_21:

LABEL_22:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v33 = v0[1];

    return v33(v7);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_4:
  v41 = MEMORY[0x1E69E7CC0];
  sub_18B9B6904(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v0[26];
    v7 = v41;
    v38 = v4 & 0xC000000000000001;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
    v8 = v4;
    v9 = 0;
    v37 = (v6 + 104);
    v36 = *MEMORY[0x1E6968DF0];
    v39 = v5;
    v40 = v4;
    do
    {
      if (v38)
      {
        v10 = MEMORY[0x18CFFD010](v9, v8);
      }

      else
      {
        v10 = *(v8 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v0[27];
      v13 = v0[25];
      sub_18BC20B18();
      sub_18BC1EC38();
      (*v37)(v12, v36, v13);
      LOWORD(v35) = 2;
      sub_18BC1E8E8();
      v14 = sub_18BC1E038();
      sub_18BC1E1A8();
      v15 = [v11 uuid];
      v16 = sub_18BC20BD8();
      v18 = v17;

      sub_18BC1E3F8();
      v19 = [v11 title];
      v20 = sub_18BC20BD8();
      v22 = v21;

      v0[21] = v20;
      v0[22] = v22;
      sub_18BC1DFF8();

      v24 = *(v41 + 16);
      v23 = *(v41 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_18B9B6904((v23 > 1), v24 + 1, 1);
      }

      ++v9;
      *(v41 + 16) = v24 + 1;
      v25 = (v41 + 24 * v24);
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v14;
      v8 = v40;
    }

    while (v39 != v9);

    goto LABEL_23;
  }

  __break(1u);
LABEL_27:
  swift_once();
LABEL_14:
  v26 = sub_18BC1F2C8();
  v0[31] = __swift_project_value_buffer(v26, qword_1EA9F7EC8);
  v27 = sub_18BC1F2A8();
  v28 = sub_18BC21258();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_18B7AC000, v27, v28, "Awaiting tab group entity dictionaries from SBSA", v29, 2u);
    MEMORY[0x18CFFEEE0](v29, -1, -1);
  }

  v30 = SiriLinkDataSource.connection.getter();
  v31 = [v30 remoteObjectProxy];

  if (!v31)
  {
    goto LABEL_22;
  }

  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_18BB99464;
  v32 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA820);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_18BB99EA0;
  v0[13] = &block_descriptor_6_2;
  v0[14] = v32;
  [v31 fetchTabGroupEntitiesWithCompletion_];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_18BB99464()
{

  return MEMORY[0x1EEE6DFA0](sub_18BB99544, 0, 0);
}

void sub_18BB99544()
{
  v20 = v0;
  v1 = *(v0 + 184);
  if (!v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v14 = *(v0 + 8);

    v14(v5);
    return;
  }

  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();
  v15 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_18B7AC000, v2, v3, "Received %ld tab group entity dictionaries", v4, 0xCu);
    MEMORY[0x18CFFEEE0](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 16);
  if (!v6)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v0 = v15;
    goto LABEL_18;
  }

  v7 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v7 < *(v1 + 16))
  {
    v17 = *(v1 + 32 + 8 * v7);
    sub_18BB99F2C(&v17, "Creating entity for tab group %{sensitive,mask.hash}s with UUID %s", sub_18BA6B52C, &v18);
    if (v19)
    {
      v16 = v19;
      v9 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_18B9B5FEC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      v12 = v16;
      if (v11 >= v10 >> 1)
      {
        v13 = sub_18B9B5FEC((v10 > 1), v11 + 1, 1, v5);
        v12 = v16;
        v5 = v13;
      }

      *(v5 + 2) = v11 + 1;
      v8 = &v5[24 * v11];
      *(v8 + 4) = v9;
      *(v8 + 40) = v12;
    }

    if (v6 == ++v7)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t SiriLinkDataSource.deleteTabGroups(uuids:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_18BC20F28();
  v2[20] = sub_18BC20F18();
  v4 = sub_18BC20ED8();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x1EEE6DFA0](sub_18BB99854, v4, v3);
}

uint64_t sub_18BB99854()
{
  if (*(v0[18] + 16) && (v1 = SiriLinkDataSource.connection.getter(), v2 = [v1 remoteObjectProxy], v0[23] = v2, v1, v2))
  {
    v3 = sub_18BC20D88();
    v0[24] = v3;
    v0[2] = v0;
    v0[3] = sub_18BB99A00;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA788);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_18BB9A1D8;
    v0[13] = &block_descriptor_56;
    v0[14] = v4;
    [v2 deleteTabGroupEntitiesWithUUIDStrings:v3 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_18BB99A00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_18BB99BA0;
  }

  else
  {
    v5 = sub_18BB99B30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18BB99B30()
{
  v1 = *(v0 + 192);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18BB99BA0()
{
  v1 = v0[24];

  swift_willThrow();
  swift_unknownObjectRelease();

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = sub_18BC1F2C8();
  __swift_project_value_buffer(v3, qword_1EA9F7EC8);
  v4 = v2;
  v5 = sub_18BC1F2A8();
  v6 = sub_18BC21238();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_18B7AC000, v5, v6, "Unable to delete tab groups with error: : %@", v9, 0xCu);
    sub_18BB9A308(v10);
    MEMORY[0x18CFFEEE0](v10, -1, -1);
    MEMORY[0x18CFFEEE0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

id SiriLinkDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SiriLinkDataSource.shared.getter()
{
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA9DA780;

  return v1;
}

id SiriLinkDataSource.connection.getter()
{
  v1 = OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari18SiriLinkDataSource____lazy_storage___connection);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69C8A00]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18BB99EA0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA828);
    v4 = sub_18BC20D98();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return swift_continuation_resume();
}

uint64_t sub_18BB99F2C@<X0>(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, unint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = sub_18BC20BD8();
  if (!*(v7 + 16))
  {
    goto LABEL_9;
  }

  v10 = sub_18B831970(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_10:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v14 = (*(v7 + 56) + 16 * v10);
  v16 = *v14;
  v15 = v14[1];
  v17 = sub_18BC20BD8();
  v19 = v18;
  if (!*(v7 + 16) || (v20 = v17, v41 = v16, sub_18BC1E3F8(), v21 = sub_18B831970(v20, v19), v23 = v22, , (v23 & 1) == 0))
  {
LABEL_9:

    goto LABEL_10;
  }

  v24 = (*(v7 + 56) + 16 * v21);
  v25 = *v24;
  v26 = v24[1];
  v27 = qword_1EA9D22B0;
  sub_18BC1E3F8();
  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_18BC1F2C8();
  __swift_project_value_buffer(v28, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v29 = sub_18BC1F2A8();
  v30 = sub_18BC21258();

  if (os_log_type_enabled(v29, v30))
  {
    v40 = v25;
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v31 = 141558531;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2085;
    *(v31 + 14) = sub_18B7EA850(v40, v26, &v42);
    *(v31 + 22) = 2080;
    v38 = v26;
    v32 = v30;
    v33 = v41;
    *(v31 + 24) = sub_18B7EA850(v41, v15, &v42);
    v34 = v32;
    v26 = v38;
    _os_log_impl(&dword_18B7AC000, v29, v34, a2, v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v39, -1, -1);
    v35 = v31;
    v25 = v40;
    MEMORY[0x18CFFEEE0](v35, -1, -1);
  }

  else
  {

    v33 = v41;
  }

  result = a3(v33, v15, v25, v26);
  *a4 = result;
  a4[1] = v36;
  a4[2] = v37;
  return result;
}

uint64_t sub_18BB9A1D8(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A48);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

id SiriLinkDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BB9A308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_18BB9A380()
{
  type metadata accessor for AnimationPredicate();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = v1;
  result[2] = sub_18B7E9C50;
  qword_1EA9F83F8 = result;
  return result;
}

uint64_t sub_18BB9A3CC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {
      v4 = *(v3 - 8);
      v5 = sub_18BC1E1A8();
      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_18BB9A4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = sub_18BC20588();
  v16[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA840);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  swift_beginAccess();
  v16[2] = off_1EA9D6560;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6570);
  sub_18B7B0B08(&qword_1EA9DA848, &qword_1EA9D6570);
  sub_18BB9A8AC();
  sub_18BB9BA94(&qword_1EA9DA858, type metadata accessor for WBSReaderTheme);
  sub_18BC207C8();
  sub_18BC20578();
  sub_18BB9A900();
  sub_18BB9BA94(&qword_1EA9DA868, MEMORY[0x1E697C720]);
  sub_18BC20698();
  (*(v16[0] + 8))(v9, v7);
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_18BB9A7C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA870);
  sub_18BC207B8();
  result = v5;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_18BB9A834@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *a1 = sub_18BC204A8();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA838);
  return sub_18BB9A4B0(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_18BB9A8AC()
{
  result = qword_1EA9DA850;
  if (!qword_1EA9DA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA850);
  }

  return result;
}

unint64_t sub_18BB9A900()
{
  result = qword_1EA9DA860;
  if (!qword_1EA9DA860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA840);
    sub_18BB9A8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA860);
  }

  return result;
}

uint64_t sub_18BB9A984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB9A9CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BB9AA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA888);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v10 = &v43 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA890);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v43 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA898);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v43 - v17;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v45 = a2;
  v18[4] = a3;
  v18[5] = a4;
  v46 = a4;
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v44 = a3;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA8A0);
  sub_18BB9B7E8();
  sub_18BC20758();
  v19 = sub_18BC20B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC3E410;
  *(inited + 32) = 0x656D656874;
  *(inited + 40) = 0xE500000000000000;
  v21 = WBSReaderThemeAccessibilityIdentifier();
  v22 = sub_18BC20BD8();
  v24 = v23;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  sub_18BA64DB8(inited);
  swift_setDeallocating();
  sub_18BA13828(inited + 32);
  v25 = sub_18BC20998();

  v26 = WBSMakeAccessibilityIdentifier();

  sub_18BC20BD8();
  sub_18B7B0B08(&qword_1EA9DA8E8, &qword_1EA9DA888);
  v27 = v47;
  sub_18BC206E8();

  (*(v49 + 8))(v10, v27);
  v28 = WBSReaderThemeLocalizedName();
  v29 = sub_18BC20BD8();
  v31 = v30;

  v60 = v29;
  v61 = v31;
  sub_18B7B0B50();
  v32 = v48;
  sub_18BC20448();

  sub_18B988BAC(v12, &qword_1EA9DA890);
  v33 = v45;
  v34 = v44;
  v60 = v45;
  v61 = v44;
  v35 = v46;
  v62 = v46;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA870);
  MEMORY[0x18CFFBC80](&v59);
  sub_18BB9B9AC();
  v37 = v51;
  sub_18BC206D8();
  sub_18B988BAC(v32, &qword_1EA9DA890);
  v60 = v33;
  v61 = v34;
  v62 = v35;
  MEMORY[0x18CFFBC80](&v59, v36);
  v38 = v52;
  sub_18BC20458();
  sub_18B988BAC(v37, &qword_1EA9DA898);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA900);
  v40 = v54;
  v41 = (v54 + *(v39 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA908);
  sub_18BC20478();
  *v41 = 0;
  return sub_18B7CF39C(v38, v40, &qword_1EA9DA898);
}

uint64_t sub_18BB9B038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA870);
  MEMORY[0x18CFFBC80](v17, v7);
  v8 = v17[0] == a1;
  v9 = WBSReaderThemeColor();
  v10 = sub_18BC20708();
  v11 = sub_18BC20858();
  v13 = v12;
  v14 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA8B8) + 36);
  sub_18BB9B174(a1, v8, v14);
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA8D8) + 36));
  *v15 = v11;
  v15[1] = v13;
  *a5 = v10;
  *(a5 + 8) = 256;
  LOBYTE(v8) = WBSReaderThemeIsDark();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA8A0);
  *(a5 + *(result + 36)) = v8;
  return result;
}

uint64_t sub_18BB9B174@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v52 = a2;
  v51 = a1;
  v53 = a3;
  v3 = sub_18BC20438();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA910) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v45 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA918) - 8;
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - v13;
  v14 = sub_18BC20548();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA920);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v45 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v45 - v21);
  sub_18BC20538();
  v23 = 1.0;
  sub_18BC20358();
  v24 = v57;
  v25 = v59;
  v26 = v60;
  v27 = v61;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA928);
  v29 = v58;
  (*(v15 + 16))(v22 + *(v28 + 52), v17, v14);
  *v22 = v24 * 0.5;
  v22[1] = v24;
  *(v22 + 2) = v29;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  *(v22 + 5) = v27;
  *(v22 + *(v28 + 56)) = 256;
  v30 = sub_18BC20858();
  v32 = v31;
  (*(v15 + 8))(v17, v14);
  v33 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA930) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_18BC20738();
  sub_18BC205D8();
  sub_18BC205C8();
  v35 = sub_18BC205E8();

  KeyPath = swift_getKeyPath();
  v54 = v34;
  v55 = KeyPath;
  v56 = v35;
  (*(v4 + 104))(v6, *MEMORY[0x1E697E6E8], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA938);
  sub_18BB9BADC();
  sub_18BC206B8();
  (*(v4 + 8))(v6, v3);

  v37 = WBSReaderThemeCheckmarkColor();
  *&v8[*(v50 + 44)] = sub_18BC20708();
  if ((v52 & 1) == 0)
  {
    v23 = 0.0;
  }

  v38 = v46;
  sub_18B7CF39C(v8, v46, &qword_1EA9DA910);
  *(v38 + *(v48 + 44)) = v23;
  v39 = v47;
  sub_18B7CF39C(v38, v47, &qword_1EA9DA918);
  v40 = v45;
  sub_18B7CA054(v22, v45, &qword_1EA9DA920);
  v41 = v49;
  sub_18B7CA054(v39, v49, &qword_1EA9DA918);
  v42 = v53;
  sub_18B7CA054(v40, v53, &qword_1EA9DA920);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA958);
  sub_18B7CA054(v41, v42 + *(v43 + 48), &qword_1EA9DA918);
  sub_18B988BAC(v39, &qword_1EA9DA918);
  sub_18B988BAC(v22, &qword_1EA9DA920);
  sub_18B988BAC(v41, &qword_1EA9DA918);
  return sub_18B988BAC(v40, &qword_1EA9DA920);
}

unint64_t sub_18BB9B7E8()
{
  result = qword_1EA9DA8A8;
  if (!qword_1EA9DA8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA8A0);
    sub_18BB9B874();
    sub_18BB9B958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA8A8);
  }

  return result;
}

unint64_t sub_18BB9B874()
{
  result = qword_1EA9DA8B0;
  if (!qword_1EA9DA8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA8B8);
    sub_18B7B0B08(&qword_1EA9DA8C0, &qword_1EA9DA8C8);
    sub_18B7B0B08(&qword_1EA9DA8D0, &qword_1EA9DA8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA8B0);
  }

  return result;
}

unint64_t sub_18BB9B958()
{
  result = qword_1EA9DA8E0;
  if (!qword_1EA9DA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA8E0);
  }

  return result;
}

unint64_t sub_18BB9B9AC()
{
  result = qword_1EA9DA8F0;
  if (!qword_1EA9DA8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA890);
    sub_18B7B0B08(&qword_1EA9DA8E8, &qword_1EA9DA888);
    sub_18BB9BA94(&qword_1EA9DA8F8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA8F0);
  }

  return result;
}

uint64_t sub_18BB9BA94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18BB9BADC()
{
  result = qword_1EA9DA940;
  if (!qword_1EA9DA940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA938);
    sub_18B7B0B08(&qword_1EA9DA948, &qword_1EA9DA950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA940);
  }

  return result;
}

unint64_t sub_18BB9BB94()
{
  result = qword_1EA9DA960;
  if (!qword_1EA9DA960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA900);
    sub_18BB9BC4C();
    sub_18B7B0B08(&qword_1EA9DA970, &qword_1EA9DA908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA960);
  }

  return result;
}

unint64_t sub_18BB9BC4C()
{
  result = qword_1EA9DA968;
  if (!qword_1EA9DA968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9DA898);
    sub_18BB9B9AC();
    sub_18BB9BA94(&qword_1EA9DA8F8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA968);
  }

  return result;
}

char *sub_18BB9BD14(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___SFBookmarksCollectionViewControllerSegmentedControlCell_segmentedControl;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DCF38]) initWithItems_];
  v35.receiver = v4;
  v35.super_class = _s20SegmentedControlCellCMa();
  v10 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR___SFBookmarksCollectionViewControllerSegmentedControlCell_segmentedControl;
  v12 = *&v10[OBJC_IVAR___SFBookmarksCollectionViewControllerSegmentedControlCell_segmentedControl];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v13 contentView];
  [v14 addSubview_];

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_18BC42C20;
  v17 = [*&v10[v11] leadingAnchor];
  v18 = [v13 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v16 + 32) = v20;
  v21 = [*&v10[v11] trailingAnchor];
  v22 = [v13 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v16 + 40) = v24;
  v25 = [*&v10[v11] topAnchor];
  v26 = [v13 contentView];
  v27 = [v26 topAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  *(v16 + 48) = v28;
  v29 = [*&v10[v11] bottomAnchor];
  v30 = [v13 contentView];

  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-1.0];

  *(v16 + 56) = v32;
  sub_18BA497D0();
  v33 = sub_18BC20D88();

  [v15 activateConstraints_];

  return v13;
}

id sub_18BB9C26C()
{
  v2.receiver = v0;
  v2.super_class = _s20SegmentedControlCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_18BB9C2FC(double *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v113 = a1;
  v11 = sub_18BC1FA08();
  v111 = *(v11 - 8);
  v112 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1E988();
  v108 = *(v13 - 8);
  v109 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA9C0);
  v17 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v19 = &v106 - v18;
  v20 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider;
  *&v6[v20] = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v21 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_textLabel;
  *&v6[v21] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef_isStandalone];
  v106 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueFormat;
  sub_18BC1EC28();
  sub_18BB37FA0();
  sub_18BC1E918();
  v116 = 0;
  v115[0] = xmmword_18BC51AF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9678);
  sub_18B7B0B08(&qword_1EA9D8F08, &qword_1EA9D8F00);
  sub_18B7B0B08(qword_1EA9D9680, &qword_1EA9D9678);
  sub_18BC1E978();
  v22 = v107;
  MEMORY[0x18CFF9E30](v15, v107);
  (*(v108 + 8))(v15, v109);
  (*(v17 + 8))(v19, v22);
  v23 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel;
  *&v6[v23] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v24 = &v6[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration];
  v25 = v113;
  v26 = *(v113 + 3);
  *(v24 + 2) = *(v113 + 2);
  *(v24 + 3) = v26;
  v27 = *(v25 + 1);
  *v24 = *v25;
  *(v24 + 1) = v27;
  sub_18BA2D634(v25, v115);
  v28 = type metadata accessor for SFSliderCellContentView();
  v114.receiver = v6;
  v114.super_class = v28;
  v29 = objc_msgSendSuper2(&v114, sel_initWithFrame_, a2, a3, a4, a5);
  v30 = v110;
  sub_18BC1F9A8();
  sub_18BC1F958();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  (*(v111 + 8))(v30, v112);
  [v29 setDirectionalLayoutMargins_];
  v39 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider;
  [*&v29[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider] setTranslatesAutoresizingMaskIntoConstraints_];
  v40 = *&v29[v39];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v41 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  v43 = *(v25 + 1);
  *(v42 + 24) = *v25;
  *(v42 + 40) = v43;
  v44 = *(v25 + 3);
  *(v42 + 56) = *(v25 + 2);
  *(v42 + 72) = v44;
  sub_18BA2D634(v25, v115);
  v45 = v40;
  v46 = sub_18BC215E8();
  [v45 addAction:v46 forControlEvents:4096];

  [v29 addSubview_];
  v47 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_textLabel;
  [*&v29[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_textLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v48 = *&v29[v47];
  v49 = v47;
  v111 = v47;
  v50 = objc_opt_self();
  v51 = v48;
  v52 = [v50 labelColor];
  [v51 setTextColor_];

  [v29 addSubview_];
  v53 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel;
  [*&v29[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  v54 = *&v29[v53];
  v55 = v53;
  v112 = v53;
  v56 = v54;
  v57 = [v50 secondaryLabelColor];
  [v56 setTextColor_];

  [v29 addSubview_];
  v110 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_18BC51B00;
  v59 = [*&v29[v39] bottomAnchor];
  v60 = [v29 layoutMarginsGuide];
  v61 = [v60 bottomAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v58 + 32) = v62;
  v63 = [*&v29[v39] leadingAnchor];
  v64 = [v29 &selRef_initWithConfiguration_checkIntegrity_ + 1];
  v65 = [v64 &selRef_initWithRow_itemRange_ + 1];

  v66 = [v63 constraintEqualToAnchor_];
  *(v58 + 40) = v66;
  v67 = [*&v29[v39] trailingAnchor];
  v68 = [v29 &selRef_initWithConfiguration_checkIntegrity_ + 1];
  v69 = [v68 &selRef_stringByAppendingPathExtension_ + 4];

  v70 = [v67 constraintEqualToAnchor_];
  *(v58 + 48) = v70;
  v71 = [*&v29[v39] topAnchor];
  v72 = v111;
  v73 = [*&v29[v111] bottomAnchor];
  v74 = [v71 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v73 multiplier:1.0];

  *(v58 + 56) = v74;
  v75 = [*&v29[v39] &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v76 = [*&v29[v112] bottomAnchor];
  v77 = [v75 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v76 multiplier:1.0];

  *(v58 + 64) = v77;
  v78 = [*&v29[v39] &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v79 = [v29 &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v80 = [v78 constraintEqualToAnchor_];

  LODWORD(v81) = 1112014848;
  v82 = [v80 sf:v81 withPriority:?];

  *(v58 + 72) = v82;
  v83 = [*&v29[v72] leadingAnchor];
  v84 = [v29 layoutMarginsGuide];
  v85 = [v84 leadingAnchor];

  v86 = [v83 constraintEqualToAnchor_];
  *(v58 + 80) = v86;
  v87 = [*&v29[v72] topAnchor];
  v88 = [v29 layoutMarginsGuide];
  v89 = [v88 topAnchor];

  v90 = [v87 constraintEqualToAnchor_];
  *(v58 + 88) = v90;
  v91 = v112;
  v92 = [*&v29[v112] trailingAnchor];
  v93 = [v29 &selRef_initWithConfiguration_checkIntegrity_ + 1];
  v94 = [v93 trailingAnchor];

  v95 = [v92 constraintEqualToAnchor_];
  *(v58 + 96) = v95;
  v96 = [*&v29[v91] topAnchor];
  v97 = [v29 &selRef_initWithConfiguration_checkIntegrity_ + 1];

  v98 = [v97 topAnchor];
  v99 = [v96 constraintEqualToAnchor_];

  *(v58 + 104) = v99;
  v100 = [*&v29[v91] &selRef_initWithRow_itemRange_ + 1];
  v101 = [*&v29[v111] trailingAnchor];
  v102 = [v100 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v101 multiplier:1.0];

  *(v58 + 112) = v102;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v103 = sub_18BC20D88();

  [v110 activateConstraints_];

  v104 = v113;
  sub_18BB9D460(v113);
  sub_18BA2D690(v104);

  return v29;
}

void sub_18BB9CF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA9C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - v6;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = *&Strong[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider];

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = *&v10[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider];

  [v11 value];
  v13 = v12;

  v14 = *(a3 + 16);
  *&v14 = v14;
  *&v14 = roundf(v13 / *&v14) * *&v14;
  [v9 setValue_];

  v15 = swift_unknownObjectUnownedLoadStrong();
  v16 = *&v15[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration + 48];
  sub_18BC1E1A8();

  v17 = swift_unknownObjectUnownedLoadStrong();
  v18 = *&v17[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider];

  [v18 value];
  v20 = v19;

  v16(v20);

  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = *&v21[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel];

  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = *&v23[OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider];

  [v24 value];
  v26 = v25;

  v29[3] = v26;
  v27 = swift_unknownObjectUnownedLoadStrong();
  (*(v5 + 16))(v7, v27 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueFormat, v4);

  sub_18BB9DBCC();
  sub_18B7B0B08(&qword_1EA9DA9D0, &qword_1EA9DA9C0);
  sub_18BB37FA0();
  sub_18BC20988();
  (*(v5 + 8))(v7, v4);
  v28 = sub_18BC20B98();

  [v22 setText_];
}

void (*sub_18BB9D278(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x120uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration;
  *(v3 + 272) = v1;
  *(v3 + 280) = v4;
  v5 = (v1 + v4);
  v6 = *(v1 + v4);
  v7 = *(v1 + v4 + 16);
  v8 = *(v1 + v4 + 48);
  *(v3 + 32) = *(v1 + v4 + 32);
  *(v3 + 48) = v8;
  *v3 = v6;
  *(v3 + 16) = v7;
  *(v3 + 216) = &type metadata for SFSliderCellContentConfiguration;
  v9 = v3;
  *(v3 + 224) = sub_18BA2D5E0();
  v10 = swift_allocObject();
  *(v9 + 192) = v10;
  v11 = v5[1];
  v10[1] = *v5;
  v10[2] = v11;
  v12 = v5[3];
  v10[3] = v5[2];
  v10[4] = v12;
  sub_18BA2D634(v9, v9 + 64);
  return sub_18BB9D350;
}

void sub_18BB9D350(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(v2 + 272) + *(v2 + 280));
  if (a2)
  {
    sub_18B80DBC4(v2 + 192, v2 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0);
    swift_dynamicCast();
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v2 + 96) = v3[2];
    *(v2 + 112) = v4;
    *(v2 + 64) = v6;
    *(v2 + 80) = v5;
    v7 = *(v2 + 128);
    v8 = *(v2 + 144);
    v9 = *(v2 + 176);
    v3[2] = *(v2 + 160);
    v3[3] = v9;
    *v3 = v7;
    v3[1] = v8;
    sub_18BA2D690(v2 + 64);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 192);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0);
    swift_dynamicCast();
    v10 = v3[3];
    v12 = *v3;
    v11 = v3[1];
    *(v2 + 96) = v3[2];
    *(v2 + 112) = v10;
    *(v2 + 64) = v12;
    *(v2 + 80) = v11;
    v13 = *(v2 + 128);
    v14 = *(v2 + 144);
    v15 = *(v2 + 176);
    v3[2] = *(v2 + 160);
    v3[3] = v15;
    *v3 = v13;
    v3[1] = v14;
    sub_18BA2D690(v2 + 64);
  }

  free(v2);
}

void sub_18BB9D460(double *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider);
  v5 = *a1;
  v4 = a1[1];
  *&v4 = v4;
  [v3 setMaximumValue_];
  *&v6 = v5;
  [v3 setMinimumValue_];
  v7 = a1[2] * round(a1[5] / a1[2]);
  *&v7 = v7;
  [v3 setValue_];
  v8 = *(v1 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_textLabel);
  v9 = sub_18BC20B98();
  [v8 setText_];

  v10 = *(v1 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA9C0);
  sub_18BB37FA0();
  sub_18B7B0B08(&qword_1EA9DA9D0, &qword_1EA9DA9C0);
  sub_18BC20978();
  v11 = sub_18BC20B98();

  [v10 setText_];
}

id sub_18BB9D620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSliderCellContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SFSliderCellContentView()
{
  result = qword_1EA9DA9A0;
  if (!qword_1EA9DA9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18BB9D774()
{
  sub_18BB9D820();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18BB9D820()
{
  if (!qword_1EA9DA9B0)
  {
    sub_18BB37FA0();
    v0 = sub_18BC1E948();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9DA9B0);
    }
  }
}

uint64_t sub_18BB9D87C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18BB9D8C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18BB9D924@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration);
  v4 = v3[1];
  v11[0] = *v3;
  v11[1] = v4;
  v5 = v3[3];
  v11[2] = v3[2];
  v11[3] = v5;
  a1[3] = &type metadata for SFSliderCellContentConfiguration;
  a1[4] = sub_18BA2D5E0();
  v6 = swift_allocObject();
  *a1 = v6;
  v7 = v3[1];
  v6[1] = *v3;
  v6[2] = v7;
  v8 = v3[3];
  v6[3] = v3[2];
  v6[4] = v8;
  return sub_18BA2D634(v11, &v10);
}

uint64_t sub_18BB9D9B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0);
  swift_dynamicCast();
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration);
  v9[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_sliderConfiguration + 32);
  v9[3] = v3;
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  return sub_18BA2D690(v9);
}

void (*sub_18BB9DA3C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_18BB9D278(v2);
  return sub_18B9ACD4C;
}

char *sub_18BB9DAB0()
{
  v1 = v0[1];
  v7[0] = *v0;
  v7[1] = v1;
  v2 = v0[3];
  v7[2] = v0[2];
  v7[3] = v2;
  v3 = objc_allocWithZone(type metadata accessor for SFSliderCellContentView());
  sub_18BA2D634(v7, &v6);
  v4 = sub_18BB9C2FC(v7, 0.0, 0.0, 0.0, 0.0);
  sub_18BB9DB68();
  return v4;
}

uint64_t sub_18BB9DB28@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_18BA2D634(v7, &v6);
}

unint64_t sub_18BB9DB68()
{
  result = qword_1EA9DA9B8;
  if (!qword_1EA9DA9B8)
  {
    type metadata accessor for SFSliderCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA9B8);
  }

  return result;
}

unint64_t sub_18BB9DBCC()
{
  result = qword_1EA9DA9C8;
  if (!qword_1EA9DA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA9C8);
  }

  return result;
}

void sub_18BB9DC20()
{
  v1 = sub_18BC1E988();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA9C0);
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_slider;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCF60]) init];
  v9 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_textLabel;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) &selRef_isStandalone];
  v12 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueFormat;
  sub_18BC1EC28();
  sub_18BB37FA0();
  sub_18BC1E918();
  v17 = 0;
  v16 = xmmword_18BC51AF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9678);
  sub_18B7B0B08(&qword_1EA9D8F08, &qword_1EA9D8F00);
  sub_18B7B0B08(qword_1EA9D9680, &qword_1EA9D9678);
  sub_18BC1E978();
  v10 = v13;
  MEMORY[0x18CFF9E30](v3, v13);
  (*(v14 + 8))(v3, v15);
  (*(v5 + 8))(v7, v10);
  v11 = OBJC_IVAR____TtC12MobileSafari23SFSliderCellContentView_valueLabel;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BB9DF7C(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  v13 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v14 = v8;
  v15 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  if (v13 != (v2 & 1) || ((BYTE1(v13) ^ (v2 >> 8) & 1) & 1) != 0 || ((BYTE2(v13) ^ (v2 >> 16) & 1) & 1) != 0 || ((BYTE3(v13) ^ (v2 >> 24) & 1) & 1) != 0 || *(&v13 + 1) != v3)
  {
    goto LABEL_12;
  }

  v9 = v14;
  sub_18B9B0118(&v13, v12);
  if (sub_18B86E84C(v9, v4) & 1) == 0 || ((BYTE8(v14) ^ v5) & 1) != 0 || ((BYTE9(v14) ^ (v5 >> 8) & 1) & 1) != 0 || ((BYTE10(v14) ^ (v5 >> 16) & 1) & 1) != 0 || ((BYTE11(v14) ^ (v5 >> 24) & 1))
  {
    goto LABEL_11;
  }

  if (*(&v15 + 1))
  {
    if (!v7)
    {
LABEL_11:
      sub_18B9B0174(&v13);
LABEL_12:
      v12[0] = v2;
      v12[1] = v3;
      v12[2] = v4;
      v12[3] = v5;
      v12[4] = v6;
      v12[5] = v7;
      return sub_18BB9EA44(v12);
    }

    if (v15 == __PAIR128__(v7, v6))
    {
      return sub_18B9B0174(&v13);
    }

    else
    {
      v11 = sub_18BC21FD8();
      result = sub_18B9B0174(&v13);
      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    result = sub_18B9B0174(&v13);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  return result;
}

id sub_18BB9E104(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR___SFTabOverviewItemView_metrics];
  v5 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics];
  v4 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 8];
  v6 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 16];
  v7 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 136];
  v8 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 168];
  v40[8] = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 152];
  v40[9] = v8;
  v41 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 184];
  v9 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 72];
  v10 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 104];
  v40[4] = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 88];
  v40[5] = v10;
  v40[6] = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 120];
  v40[7] = v7;
  v11 = v5 == *a1;
  v12 = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 40];
  v40[0] = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 24];
  v40[1] = v12;
  v40[2] = *&v1[OBJC_IVAR___SFTabOverviewItemView_metrics + 56];
  v40[3] = v9;
  if (!v11 || v4 != *(a1 + 8) || v6 != *(a1 + 16) || (v14 = v3[24], v13 = v3[25], v15 = v3[26], v16 = *(a1 + 136), v17 = *(a1 + 168), v34[8] = *(a1 + 152), v34[9] = v17, v35 = *(a1 + 184), v18 = *(a1 + 72), v19 = *(a1 + 104), v34[4] = *(a1 + 88), v34[5] = v19, v34[6] = *(a1 + 120), v34[7] = v16, v20 = *(a1 + 40), v34[0] = *(a1 + 24), v34[1] = v20, v34[2] = *(a1 + 56), v34[3] = v18, result = sub_18BA1A2E4(v40, v34), (result & 1) == 0) || v14 != *(a1 + 192) || v13 != *(a1 + 200) || v15 != *(a1 + 208))
  {
    v23 = *&v2[OBJC_IVAR___SFTabOverviewItemView_thumbnailView] + OBJC_IVAR___SFTabThumbnailView_metrics;
    v24 = *(v23 + 144);
    v38[8] = *(v23 + 128);
    v38[9] = v24;
    v39 = *(v23 + 160);
    v25 = *(v23 + 80);
    v38[4] = *(v23 + 64);
    v38[5] = v25;
    v26 = *(v23 + 112);
    v38[6] = *(v23 + 96);
    v38[7] = v26;
    v27 = *(v23 + 16);
    v38[0] = *v23;
    v38[1] = v27;
    v28 = *(v23 + 48);
    v38[2] = *(v23 + 32);
    v38[3] = v28;
    memmove(v23, v3 + 3, 0xA8uLL);
    v29 = *(v23 + 144);
    v36[8] = *(v23 + 128);
    v36[9] = v29;
    v37 = *(v23 + 160);
    v30 = *(v23 + 80);
    v36[4] = *(v23 + 64);
    v36[5] = v30;
    v31 = *(v23 + 112);
    v36[6] = *(v23 + 96);
    v36[7] = v31;
    v32 = *(v23 + 16);
    v36[0] = *v23;
    v36[1] = v32;
    v33 = *(v23 + 48);
    v36[2] = *(v23 + 32);
    v36[3] = v33;
    if (!sub_18BA1A2E4(v36, v38))
    {
      sub_18BA18DB4();
    }

    return [v2 setNeedsLayout];
  }

  return result;
}

id sub_18BB9E32C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___SFTabOverviewItemView_closingBackgroundView;
  _s21ClosingBackgroundViewCMa();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = &v4[OBJC_IVAR___SFTabOverviewItemView_configuration];
  *v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 1) = 0;
  *(v10 + 2) = v11;
  *(v10 + 6) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0;
  v12 = &v4[OBJC_IVAR___SFTabOverviewItemView_metrics];
  v20 = 1;
  v19 = 1;
  *v12 = xmmword_18BC42B80;
  *(v12 + 2) = 0x4008000000000000;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  v12[56] = 1;
  *(v12 + 8) = 0;
  *(v12 + 9) = 0;
  v12[80] = 1;
  *(v12 + 88) = xmmword_18BC42B90;
  *(v12 + 104) = xmmword_18BC42BA0;
  *(v12 + 120) = vdupq_n_s64(0x404E000000000000uLL);
  *(v12 + 136) = xmmword_18BC42BB0;
  *(v12 + 152) = xmmword_18BC42BC0;
  *(v12 + 168) = xmmword_18BC42BD0;
  *(v12 + 184) = xmmword_18BC42BE0;
  *(v12 + 200) = xmmword_18BC42BF0;
  v13 = OBJC_IVAR___SFTabOverviewItemView_thumbnailView;
  type metadata accessor for TabThumbnailView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR___SFTabOverviewItemView_tintedSelectionBorderView;
  *&v4[v14] = [objc_allocWithZone(SFBorderView) init];
  v15 = OBJC_IVAR___SFTabOverviewItemView_titleView;
  *&v4[v15] = [objc_allocWithZone(_s9TitleViewCMa()) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for TabOverviewItemView();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BB9E718();

  return v16;
}

id sub_18BB9E530(void *a1)
{
  v3 = OBJC_IVAR___SFTabOverviewItemView_closingBackgroundView;
  _s21ClosingBackgroundViewCMa();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v1[OBJC_IVAR___SFTabOverviewItemView_configuration];
  *v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 1) = 0;
  *(v4 + 2) = v5;
  *(v4 + 6) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  v6 = &v1[OBJC_IVAR___SFTabOverviewItemView_metrics];
  v16 = 1;
  v15 = 1;
  *v6 = xmmword_18BC42B80;
  *(v6 + 2) = 0x4008000000000000;
  *(v6 + 40) = 0u;
  *(v6 + 24) = 0u;
  v6[56] = 1;
  *(v6 + 8) = 0;
  *(v6 + 9) = 0;
  v6[80] = 1;
  *(v6 + 88) = xmmword_18BC42B90;
  *(v6 + 104) = xmmword_18BC42BA0;
  *(v6 + 120) = vdupq_n_s64(0x404E000000000000uLL);
  *(v6 + 136) = xmmword_18BC42BB0;
  *(v6 + 152) = xmmword_18BC42BC0;
  *(v6 + 168) = xmmword_18BC42BD0;
  *(v6 + 184) = xmmword_18BC42BE0;
  *(v6 + 200) = xmmword_18BC42BF0;
  v7 = OBJC_IVAR___SFTabOverviewItemView_thumbnailView;
  type metadata accessor for TabThumbnailView();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR___SFTabOverviewItemView_tintedSelectionBorderView;
  *&v1[v8] = [objc_allocWithZone(SFBorderView) init];
  v9 = OBJC_IVAR___SFTabOverviewItemView_titleView;
  *&v1[v9] = [objc_allocWithZone(_s9TitleViewCMa()) init];
  v14.receiver = v1;
  v14.super_class = type metadata accessor for TabOverviewItemView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    sub_18BB9E718();
  }

  return v11;
}