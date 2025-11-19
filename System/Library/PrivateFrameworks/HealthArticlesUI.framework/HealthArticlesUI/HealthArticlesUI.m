uint64_t sub_251319EBC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25133F754();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_251319EE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251319F08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_251319F34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A008()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131A114()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25131A14C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A194()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131A1D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_251324914();
  *a2 = result;
  return result;
}

uint64_t sub_25131A1FC(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  *(*a2 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = *a1;
}

id sub_25131A248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_25131A2B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_25132AC74();
  a2[1] = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_25131A2F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return sub_251328998(v5, v3);
}

__n128 sub_25131A33C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25131A378@<X0>(uint64_t *a1@<X8>)
{
  sub_25133EED4();
  result = sub_25133EEC4();
  *a1 = result;
  return result;
}

uint64_t sub_25131A498(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2513326D8(0, &qword_27F42B3C0, sub_25132B81C, MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2513326D8(0, &qword_27F42B3C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_2513326D8(0, &qword_27F42B3D0, MEMORY[0x277D10E70], MEMORY[0x277CDF468]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_25131A680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2513326D8(0, &qword_27F42B3C0, sub_25132B81C, MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2513326D8(0, &qword_27F42B3C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2513326D8(0, &qword_27F42B3D0, MEMORY[0x277D10E70], MEMORY[0x277CDF468]);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_25131A864()
{
  sub_2513332EC();
  sub_2513328F8();
  sub_25133327C(&qword_280DE6E40, sub_2513328F8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25131A91C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25133F0F4();
  *a2 = v5;
  return result;
}

uint64_t sub_25131A948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25133F104();
}

uint64_t sub_25131A970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25133F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_25131A99C(uint64_t *a1)
{
  v1 = *a1;

  return sub_25133F3B4();
}

uint64_t sub_25131A9C8()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131AADC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16HealthArticlesUI9VideoView_accessibilityVideoDescription);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25131AB38()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25131AB84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25131ABBC()
{
  v1 = sub_25133EFC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_25131ACF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_25131AD00()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setNumberOfLines_];
    [v4 setText_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_25131ADD4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label] = 0;
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes] = 7;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for DynamicHeightLabelView();
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 setPreservesSuperviewLayoutMargins_];
  (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(v11);
  [v10 setLayoutMargins_];
  v12 = sub_25131AD00();
  [v10 addSubview_];

  v13 = objc_opt_self();
  v14 = *(v10 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView____lazy_storage___label);
  sub_25132BDC8(v14, v10, 0, 1);

  sub_25131C1BC();
  v15 = sub_25133F844();

  [v13 activateConstraints_];

  sub_25131C208();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251340BD0;
  v17 = sub_25133F2B4();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x2530722E0](v16, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v10;
}

unint64_t sub_25131B180()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes);
    if (v2 != 7)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text);
      v5 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes);

      sub_25131C1AC(v2);
      sub_25131B2C8(v3, v1, 0, &v5);

      return sub_25131BE80(v2);
    }
  }

  return result;
}

void sub_25131B2C8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  v7 = *a4;
  v8 = &v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text];
  v9 = *&v4[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_text + 8];
  *v8 = a1;
  *(v8 + 1) = a2;

  v10 = *&v5[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes];
  *&v5[OBJC_IVAR____TtC16HealthArticlesUI22DynamicHeightLabelView_attributes] = v7;
  sub_25131BE70(v7);
  sub_25131BE80(v10);
  v46 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v11 = HealthArticleTextAttributes.textAttributes.getter();
  if (*(v11 + 16) && (v12 = sub_251328050(*MEMORY[0x277D740A8]), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
    swift_unknownObjectRetain();

    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v15 = sub_25131AD00();
  v16 = [v15 font];

  v45 = v16;
  if (!v16)
  {
    __break(1u);
    return;
  }

LABEL_7:
  v17 = [v5 effectiveUserInterfaceLayoutDirection];
  if (v17 != 1)
  {
    if (!a3)
    {
      goto LABEL_17;
    }

    v22 = a3;
LABEL_12:
    v25 = [objc_opt_self() textAttachmentWithImage_];
    [v25 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v26 = [v25 image];
    if (v26)
    {
      v27 = v26;
      [v45 capHeight];
      v29 = v28;
      [v27 size];
      v31 = round(v29 - v30) * 0.5;
      [v27 size];
      v33 = v32;
      [v27 size];
      [v25 setBounds_];
    }

    v35 = [objc_opt_self() attributedStringWithAttachment_];
    [v46 appendAttributedString_];

    if (v17 == 1)
    {

LABEL_18:
      goto LABEL_19;
    }

    v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v37 = sub_25133F724();
    v38 = [v36 initWithString_];

    [v46 appendAttributedString_];
LABEL_17:
    v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v40 = sub_25133F724();
    v22 = [v39 initWithString_];

    [v46 appendAttributedString_];
    goto LABEL_18;
  }

  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_25133F724();
  v20 = [v18 initWithString_];

  [v46 appendAttributedString_];
  if (a3)
  {
    v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v22 = a3;
    v23 = sub_25133F724();
    v24 = [v21 initWithString_];

    [v46 appendAttributedString_];
    goto LABEL_12;
  }

LABEL_19:

  v41 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v41);

  type metadata accessor for Key(0);
  sub_25131BDE0(&qword_27F42B2B0, type metadata accessor for Key);
  v42 = sub_25133F6E4();

  [v46 addAttributes:v42 range:{0, objc_msgSend(v46, sel_length)}];

  v43 = sub_25131AD00();
  [v43 setAttributedText_];

  [v5 setNeedsLayout];
}

id sub_25131B7C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicHeightLabelView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25131B8CC(uint64_t a1, id *a2)
{
  result = sub_25133F734();
  *a2 = 0;
  return result;
}

uint64_t sub_25131B944(uint64_t a1, id *a2)
{
  v3 = sub_25133F744();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25131B9C4@<X0>(uint64_t *a1@<X8>)
{
  sub_25133F754();
  v2 = sub_25133F724();

  *a1 = v2;
  return result;
}

uint64_t sub_25131BA08()
{
  v1 = *v0;
  v2 = sub_25133F754();
  v3 = MEMORY[0x253072090](v2);

  return v3;
}

uint64_t sub_25131BA44()
{
  v1 = *v0;
  sub_25133F754();
  sub_25133F7B4();
}

uint64_t sub_25131BA98()
{
  v1 = *v0;
  sub_25133F754();
  sub_25133FCF4();
  sub_25133F7B4();
  v2 = sub_25133FD24();

  return v2;
}

uint64_t sub_25131BB14(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x2530721B0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_25131BB68(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x2530721C0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

void *sub_25131BBFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25131BC0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25133F754();
  v6 = v5;
  if (v4 == sub_25133F754() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25133FCB4();
  }

  return v9 & 1;
}

uint64_t sub_25131BC94()
{
  sub_25131BDE0(&qword_27F42B2B0, type metadata accessor for Key);
  sub_25131BDE0(&qword_27F42AE38, type metadata accessor for Key);

  return sub_25133FC74();
}

uint64_t sub_25131BDE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25131BE70(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

unint64_t sub_25131BE80(unint64_t result)
{
  if (result != 7)
  {
    return sub_25131BE90(result);
  }

  return result;
}

unint64_t sub_25131BE90(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_25131BEA0()
{
  sub_25131BDE0(&qword_27F42AEC8, type metadata accessor for FeatureKey);
  sub_25131BDE0(&qword_27F42AED0, type metadata accessor for FeatureKey);

  return sub_25133FC74();
}

uint64_t sub_25131BF5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25133F724();

  *a2 = v5;
  return result;
}

uint64_t sub_25131BFA4()
{
  sub_25131BDE0(&qword_27F42AEB8, type metadata accessor for AttributeName);
  sub_25131BDE0(&qword_27F42AEC0, type metadata accessor for AttributeName);

  return sub_25133FC74();
}

_DWORD *sub_25131C060@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_25131C070@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_25131C07C()
{
  v2 = *v0;
  sub_25131BDE0(&qword_27F42AED8, type metadata accessor for UILayoutPriority);
  sub_25131BDE0(&unk_27F42AEE0, type metadata accessor for UILayoutPriority);
  return sub_25133FC74();
}

unint64_t sub_25131C1AC(unint64_t result)
{
  if (result != 7)
  {
    return sub_25131BE70(result);
  }

  return result;
}

unint64_t sub_25131C1BC()
{
  result = qword_280DE7280;
  if (!qword_280DE7280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE7280);
  }

  return result;
}

void sub_25131C208()
{
  if (!qword_27F42AE40)
  {
    sub_25131C260();
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42AE40);
    }
  }
}

unint64_t sub_25131C260()
{
  result = qword_27F42B1F0;
  if (!qword_27F42B1F0)
  {
    sub_25131C2A8();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27F42B1F0);
  }

  return result;
}

unint64_t sub_25131C2A8()
{
  result = qword_27F42AE48;
  if (!qword_27F42AE48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42AE48);
  }

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

uint64_t sub_25131C348(uint64_t a1, int a2)
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

uint64_t sub_25131C368(uint64_t result, int a2, int a3)
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

void sub_25131C3DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

char *sub_25131C6E4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v10 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  v11 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_rangeOfLink];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for LinkedTextView();
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = sub_25132D310();
  [v14 setDelegate_];

  v15 = *&v13[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  [v15 setUserInteractionEnabled_];

  return v13;
}

void sub_25131CA44(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v68 = a4;
  v69 = a5;
  v63 = a3;
  LODWORD(v66) = *(a1 + 32);
  v9 = sub_25133EFC4();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20]();
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v67 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v59 - v18;
  v64 = *a2;
  v65 = a1;
  v20 = &v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  v22 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat];
  v21 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 8];
  v23 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 16];
  v24 = *&v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 24];
  v25 = *(a1 + 16);
  v59 = *a1;
  *v20 = v59;
  *(v20 + 1) = v25;
  v26 = v20[32];
  v20[32] = v66;
  sub_25131DDC4(a1, &v70);
  sub_25131DD4C(v22, v21, v23, v24, v26);
  sub_25131DC8C(v69, v19);
  v27 = *(v13 + 56);
  v66 = v12;
  v27(v19, 0, 1, v12);
  v28 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  swift_beginAccess();
  sub_25131DDFC(v19, &v6[v28]);
  swift_endAccess();
  if (v68)
  {
    v29 = sub_25133F724();
  }

  else
  {
    v29 = 0;
  }

  [v6 setAccessibilityIdentifier_];

  v30 = v65;
  v32 = *v65;
  v31 = *(v65 + 8);
  if (*(v65 + 32))
  {
    if (*(v65 + 32) == 1)
    {
      sub_25131D498(*v65, *(v65 + 8), &v70);
      v34 = v72;
      v33 = v73;
      v35 = v74;
    }

    else
    {
      v36 = *(v65 + 24);
      v70 = *(v65 + 16);
      v71 = v36;

      MEMORY[0x253072050](10, 0xE100000000000000);
      v37 = v70;
      v38 = v71;

      MEMORY[0x253072050](v32, v31);
      v34 = MEMORY[0x253072070](v37, v38);

      v33 = MEMORY[0x253072070](v32, v31);
      v35 = 0;
    }
  }

  else
  {

    v33 = MEMORY[0x253072070](v32, v31);
    v34 = 0;
    v35 = 0;
  }

  v39 = &v6[OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_rangeOfLink];
  *v39 = v34;
  *(v39 + 1) = v33;
  v39[16] = v35;
  v40 = sub_25133F724();
  v68 = v6;
  [v6 setAccessibilityLabel_];

  v70 = v64;
  v41 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v41);

  v42 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v43 = sub_25133F724();

  type metadata accessor for Key(0);
  sub_25131DE90();
  v44 = sub_25133F6E4();

  v45 = [v42 initWithString:v43 attributes:v44];

  v46 = v67;
  sub_25131DC8C(v69, v67);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25131DCF0(v46);
  }

  else
  {
    v47 = v60;
    v48 = v61;
    v49 = v46;
    v50 = v62;
    (*(v61 + 32))(v60, v49, v62);
    sub_25133EF94();
    (*(v48 + 8))(v47, v50);
  }

  if (v39[16] == 1)
  {
  }

  else
  {
    v52 = *v39;
    v51 = *(v39 + 1);
    v53 = *MEMORY[0x277D740E8];
    v54 = sub_25133F724();

    [v45 addAttribute:v53 value:v54 range:{v52, v51}];

    if (*(v30 + 32) != 1)
    {
      v55 = *MEMORY[0x277D74078];
      v56 = sub_25133F984();
      [v45 addAttribute:v55 value:v56 range:{v52, v51}];
    }
  }

  v57 = v68;
  v58 = sub_25132D310();
  [v58 setAttributedText_];

  [v57 setNeedsLayout];
}

double sub_25131D00C()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

uint64_t sub_25131D054()
{
  sub_25131DD4C(*(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 8), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 16), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 24), *(v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkFormat + 32));
  v1 = v0 + OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;

  return sub_25131DB9C(v1);
}

id sub_25131D0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LinkedTextView()
{
  result = qword_280DE7090;
  if (!qword_280DE7090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25131D184()
{
  sub_25131DEE8(319, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25131D3EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25131D434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_25131D498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25131DEE8(0, &qword_27F42AF60, sub_25131DF4C, MEMORY[0x277D85AB8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v32 - v10;
  sub_25131DF4C();
  sub_25133F0B4();
  v38 = a1;
  v39 = a2;
  sub_25131DFAC();
  sub_25131E000();
  v12 = sub_25133F704();
  if (v14)
  {
    (*(v8 + 8))(v11, v7);

    v16 = 0;
    v17 = 0;
    v18 = 1;
LABEL_12:
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v16;
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    return result;
  }

  v33 = v8;
  v34 = v7;
  v36 = a2;
  v37 = a3;
  v32[1] = v12;
  v32[2] = v13;
  v35 = a1;
  v19 = sub_25133F824();
  v21 = v20 >> 14;
  v22 = v19 >> 14;
  if (v19 >> 14 == v20 >> 14)
  {
LABEL_8:

    (*(v33 + 8))(v11, v34);
    a2 = v36;

    v16 = 0;
    v17 = 0;
    v18 = 1;
    a3 = v37;
    a1 = v35;
    goto LABEL_12;
  }

  while (sub_25133FAE4() != 93 || v23 != 0xE100000000000000)
  {
    v24 = sub_25133FCB4();

    if (v24)
    {
      goto LABEL_10;
    }

    v22 = sub_25133FAC4() >> 14;
    if (v22 == v21)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  result = sub_25133FAD4();
  if (v22 >= result >> 14)
  {
    v25 = sub_25133FAF4();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v42 = v35;
    v43 = v36;
    v38 = v25;
    v39 = v27;
    v40 = v29;
    v41 = v31;
    sub_25131E088();

    sub_25133F7A4();
    sub_25133F824();
    v16 = sub_25133F804();

    v17 = sub_25133F804();
    (*(v33 + 8))(v11, v34);

    v18 = 0;
    a1 = v42;
    a2 = v43;
    a3 = v37;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25131D838()
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v26 - v4;
  v6 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR____TtC16HealthArticlesUI14LinkedTextView_linkContent;
  swift_beginAccess();
  sub_25131DB08(v0 + v16, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25131DB9C(v5);
  }

  else
  {
    sub_25131DC28(v5, v15);
    sub_25131DC8C(v15, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v12;
      v17 = v12[1];
      v19 = [v0 viewController];
      if (v19)
      {
        v20 = v19;
        v18();

        sub_25131DCF0(v15);
      }

      else
      {
        sub_25131DCF0(v15);
      }
    }

    else
    {
      v21 = [objc_opt_self() defaultWorkspace];
      if (v21)
      {
        v22 = v21;
        v23 = sub_25133EFA4();
        sub_25132FB60(MEMORY[0x277D84F90]);
        v24 = sub_25133F6E4();

        [v22 openSensitiveURL:v23 withOptions:v24];
      }

      sub_25131DCF0(v15);
      sub_25131DCF0(v12);
    }
  }

  return 0;
}

uint64_t sub_25131DB08(uint64_t a1, uint64_t a2)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DB9C(uint64_t a1)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25131DC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25131DCF0(uint64_t a1)
{
  v2 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25131DD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_25131DD60(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_25131DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_25131DDFC(uint64_t a1, uint64_t a2)
{
  sub_25131DEE8(0, qword_280DE7110, type metadata accessor for HealthArticleComponent.LinkContent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25131DE90()
{
  result = qword_27F42B2B0;
  if (!qword_27F42B2B0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2B0);
  }

  return result;
}

void sub_25131DEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25131DF4C()
{
  if (!qword_27F42AF68)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F42AF68);
    }
  }
}

unint64_t sub_25131DFAC()
{
  result = qword_27F42AF70;
  if (!qword_27F42AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF70);
  }

  return result;
}

unint64_t sub_25131E000()
{
  result = qword_27F42AF78;
  if (!qword_27F42AF78)
  {
    sub_25131DEE8(255, &qword_27F42AF60, sub_25131DF4C, MEMORY[0x277D85AB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF78);
  }

  return result;
}

unint64_t sub_25131E088()
{
  result = qword_27F42AF80;
  if (!qword_27F42AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42AF80);
  }

  return result;
}

id sub_25131E2C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25131E8C4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  v8 = 0.0;
  v9 = 0.0;
  if (a2)
  {
    (*(a4 + 32))(a3, a4, 0.0);
  }

  [v7 setAlpha_];

  v10 = (*(a4 + 16))(a3, a4);
  if (a2)
  {
    v8 = (*(a4 + 40))(a3, a4);
  }

  [v10 setAlpha_];
}

void sub_25131E9EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  [v7 setHidden_];

  v8 = (*(a4 + 16))(a3, a4);
  [v8 setHidden_];
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_25131EB4C(uint64_t (*a1)(uint64_t, void))
{
  v3 = *(v1 + 24);
  v4 = *(*(v1 + 16) - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  return a1(v5, *(v5 + *(v4 + 64)));
}

uint64_t sub_25131EBB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25131EC0C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_25131ECC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void __swiftcall HealthArticleHighlightProviding.makeHighlightedImageOverlay()(UIView *__return_ptr retstr)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_25131EE18();
  v2 = objc_opt_self();
  v3 = [v2 systemBlackColor];
  v4 = [v2 systemWhiteColor];
  v5 = sub_25133FA74();

  [v1 setBackgroundColor_];
  [v1 setHidden_];
}

unint64_t sub_25131EE18()
{
  result = qword_280DE7270;
  if (!qword_280DE7270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE7270);
  }

  return result;
}

void __swiftcall HealthArticleHighlightProviding.makeHighlightedSashUnderlay(highlightColor:)(UIView *__return_ptr retstr, UIColor highlightColor)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setBackgroundColor_];
  [v3 setHidden_];
}

void sub_25131EF94()
{
  sub_25131F694(319, &qword_27F42B060, sub_25131F160);
  if (v0 <= 0x3F)
  {
    sub_25131F1C8();
    if (v1 <= 0x3F)
    {
      sub_25131F984(319, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_25131F22C();
        if (v3 <= 0x3F)
        {
          sub_25131F2B8();
          if (v4 <= 0x3F)
          {
            sub_25131F334();
            if (v5 <= 0x3F)
            {
              sub_25131F3EC();
              if (v6 <= 0x3F)
              {
                sub_25131F39C();
                if (v7 <= 0x3F)
                {
                  sub_25131F458();
                  if (v8 <= 0x3F)
                  {
                    sub_25131F558();
                    if (v9 <= 0x3F)
                    {
                      sub_25131F694(319, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent);
                      if (v10 <= 0x3F)
                      {
                        sub_25131F704();
                        if (v11 <= 0x3F)
                        {
                          sub_25131F804();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25131F160()
{
  if (!qword_27F42B068)
  {
    sub_251322098(255, &qword_27F42B070, 0x277D755B8);
    v0 = sub_25133FAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B068);
    }
  }
}

void sub_25131F1C8()
{
  if (!qword_27F42B078)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B078);
    }
  }
}

void sub_25131F22C()
{
  if (!qword_27F42B088)
  {
    sub_25131F984(255, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B088);
    }
  }
}

void sub_25131F2B8()
{
  if (!qword_27F42B090)
  {
    sub_251322098(255, &qword_27F42B070, 0x277D755B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B090);
    }
  }
}

void sub_25131F334()
{
  if (!qword_27F42B098)
  {
    sub_25131F39C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B098);
    }
  }
}

unint64_t sub_25131F39C()
{
  result = qword_280DE6DD0;
  if (!qword_280DE6DD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280DE6DD0);
  }

  return result;
}

void sub_25131F3EC()
{
  if (!qword_27F42B0A0)
  {
    sub_25131F39C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B0A0);
    }
  }
}

void sub_25131F458()
{
  if (!qword_27F42B0A8)
  {
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    type metadata accessor for HealthArticleComponent.LinkContent(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F42B0A8);
    }
  }
}

uint64_t sub_25131F520(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25131F558()
{
  if (!qword_27F42B0B8)
  {
    MEMORY[0x28223BE20]();
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    type metadata accessor for HealthArticleComponent.LinkContent(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F42B0B8);
    }
  }
}

void sub_25131F694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_25131F704()
{
  if (!qword_27F42B0C8)
  {
    sub_25131F7A0(255, &qword_27F42B0D0, MEMORY[0x277CC8BB8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B0C8);
    }
  }
}

void sub_25131F7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25131F804()
{
  if (!qword_27F42B0D8)
  {
    MEMORY[0x28223BE20]();
    sub_25131F7A0(255, &qword_27F42B0E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v0 = MEMORY[0x277D83D88];
    sub_25131F984(255, &qword_27F42B0B0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_25131F984(255, &qword_27F42B0E8, MEMORY[0x277D839F8], v0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F42B0D8);
    }
  }
}

void sub_25131F984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25131FA24()
{
  result = sub_25133EFC4();
  if (v1 <= 0x3F)
  {
    result = sub_25131F39C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_25131FA98()
{
  v1 = *(*(type metadata accessor for HealthArticleComponent(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251321D18(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for TitleView();
      goto LABEL_19;
    case 2u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for SectionHeaderView();
      goto LABEL_19;
    case 3u:
      v11 = *(v3 + 1);
      v12 = v3[16];

      if (v12 != 1)
      {
        goto LABEL_3;
      }

      type metadata accessor for LastParagraphInSectionView();
      goto LABEL_19;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 0xCu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      goto LABEL_3;
    case 8u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for ImageView();
      goto LABEL_19;
    case 9u:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for ButtonView();
      goto LABEL_19;
    case 0xAu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for CustomContentView();
      goto LABEL_19;
    case 0xBu:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for CustomContentViewControllerView();
      goto LABEL_19;
    case 0xDu:
      v25 = *(v3 + 1);

      v26 = *(v3 + 3);

      sub_25131F458();
      v10 = 64;
      goto LABEL_18;
    case 0xEu:
      v6 = *(v3 + 1);

      v7 = *(v3 + 3);

      v8 = *(v3 + 5);

      sub_25131F558();
      v10 = 80;
      goto LABEL_18;
    case 0xFu:
      v13 = *(v3 + 1);

      sub_25131F694(0, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent);
      v10 = 48;
LABEL_18:
      sub_251322128(&v3[*(v9 + v10)], type metadata accessor for HealthArticleComponent.LinkContent);
      type metadata accessor for LinkedTextView();
      goto LABEL_19;
    case 0x10u:
      v4 = *(v3 + 1);

      sub_25131F704();
      sub_251322028(&v3[*(v5 + 48)], &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
LABEL_3:
      type metadata accessor for ParagraphView();
LABEL_19:
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      break;
    case 0x11u:
      sub_25131F804();
      v22 = v21;
      v23 = *&v3[*(v21 + 64) + 8];

      v24 = *&v3[*(v22 + 80) + 8];

      type metadata accessor for VideoView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v15 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_251322028(v3, &qword_27F42B0E0, MEMORY[0x277CC9260]);
      break;
    default:
      sub_251322128(v3, type metadata accessor for HealthArticleComponent);
      type metadata accessor for TitleView();
      v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      [v14 setTranslatesAutoresizingMaskIntoConstraints_];
      v28 = 0;
      v29 = 0xE000000000000000;
      v15 = v14;
      sub_25133FB94();
      v16 = *MEMORY[0x277D12788];
      v17 = sub_25133F754();
      v19 = v18;

      v28 = v17;
      v29 = v19;
      MEMORY[0x253072050](0xD000000000000012, 0x8000000251342A60);
      v20 = sub_25133F724();

      [v15 setAccessibilityIdentifier_];

      break;
  }

  return v15;
}

void sub_25131FF30(void *a1)
{
  v270 = a1;
  v260 = sub_25133F274();
  v259 = *(v260 - 8);
  v1 = *(v259 + 64);
  MEMORY[0x28223BE20](v260, v2);
  v264 = &v226 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_25133F674();
  v238 = *(v239 - 8);
  v4 = *(v238 + 64);
  MEMORY[0x28223BE20](v239, v5);
  v237 = &v226 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_25133F694();
  v235 = *(v236 - 8);
  v7 = *(v235 + 64);
  MEMORY[0x28223BE20](v236, v8);
  v234 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_25133F6B4();
  v261 = *(v256 - 8);
  v10 = *(v261 + 64);
  v12 = MEMORY[0x28223BE20](v256, v11);
  v232 = &v226 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v255 = &v226 - v15;
  v16 = sub_25133EFC4();
  v17 = *(v16 - 8);
  v266 = v16;
  v267 = v17;
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v233 = &v226 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v21;
  MEMORY[0x28223BE20](v20, v22);
  v254 = &v226 - v23;
  v229 = sub_25133EEF4();
  v228 = *(v229 - 8);
  v24 = *(v228 + 64);
  MEMORY[0x28223BE20](v229, v25);
  v227 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D83D88];
  sub_25131F7A0(0, &qword_27F42B0F0, MEMORY[0x277CC8CC0], MEMORY[0x277D83D88]);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28 - 8, v30);
  v240 = &v226 - v31;
  v242 = sub_25133EF74();
  v241 = *(v242 - 8);
  v32 = *(v241 + 64);
  MEMORY[0x28223BE20](v242, v33);
  v226 = &v226 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_25133EF04();
  v250 = *(v251 - 8);
  v35 = *(v250 + 64);
  MEMORY[0x28223BE20](v251, v36);
  v249 = &v226 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_25133EF14();
  v246 = *(v247 - 8);
  v38 = *(v246 + 64);
  MEMORY[0x28223BE20](v247, v39);
  v248 = &v226 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25131F7A0(0, &qword_27F42B0E0, MEMORY[0x277CC9260], v27);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8, v43);
  v253 = &v226 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v265 = &v226 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v245 = &v226 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v244 = &v226 - v53;
  v54 = sub_25133EF34();
  v262 = *(v54 - 8);
  v263 = v54;
  v55 = *(v262 + 64);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v243 = &v226 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = &v226 - v61;
  MEMORY[0x28223BE20](v60, v63);
  v65 = &v226 - v64;
  v252 = sub_25133EF54();
  v258 = *(v252 - 8);
  v66 = *(v258 + 64);
  v68 = MEMORY[0x28223BE20](v252, v67);
  v230 = &v226 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v73 = &v226 - v72;
  v75 = MEMORY[0x28223BE20](v71, v74);
  v77 = &v226 - v76;
  MEMORY[0x28223BE20](v75, v78);
  v257 = &v226 - v79;
  sub_25131F7A0(0, &qword_27F42B0D0, MEMORY[0x277CC8BB8], v27);
  v81 = *(*(v80 - 8) + 64);
  v83 = MEMORY[0x28223BE20](v80 - 8, v82);
  v85 = &v226 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83, v86);
  v268 = &v226 - v87;
  v88 = type metadata accessor for HealthArticleComponent.LinkContent(0);
  v89 = *(*(v88 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v88 - 8, v90);
  v93 = &v226 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x28223BE20](v91, v94);
  v97 = &v226 - v96;
  MEMORY[0x28223BE20](v95, v98);
  v100 = &v226 - v99;
  v101 = type metadata accessor for HealthArticleComponent(0);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101, v103);
  v105 = &v226 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251321D18(v269, v105);
  v269 = v101;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v106 = *(v105 + 1);
      type metadata accessor for TitleView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v107 = *v105;
      aBlock = 1;
      goto LABEL_28;
    case 2u:
      v138 = *(v105 + 1);
      v137 = *(v105 + 2);
      type metadata accessor for SectionHeaderView();
      if (swift_dynamicCastClass())
      {
        v139 = *v105;
        aBlock = 2;
        sub_25131B2C8(v139, v138, v137, &aBlock);
      }

      return;
    case 3u:
      v130 = *(v105 + 1);
      type metadata accessor for ParagraphView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v131 = *v105;
      v132 = 3;
      goto LABEL_23;
    case 4u:
      v126 = *v105;
      type metadata accessor for ParagraphView();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_62;
      }

      v128 = v127;
      sub_251322098(0, &qword_27F42B120, 0x277CCA898);
      v129 = sub_251322524(0, 0, v126);
      goto LABEL_39;
    case 5u:
      v165 = *v105;
      type metadata accessor for ParagraphView();
      v166 = swift_dynamicCastClass();
      if (!v166)
      {
        goto LABEL_62;
      }

      v167 = v166;
      v168 = sub_251323CA8(0, 0, v165);

      v169 = sub_25132D310();
      [v169 setAttributedText_];

      [v167 setNeedsLayout];
      return;
    case 6u:
      v175 = *(v105 + 1);
      v176 = *(v105 + 2);
      type metadata accessor for ParagraphView();
      v177 = swift_dynamicCastClass();
      if (!v177)
      {
        goto LABEL_54;
      }

      v128 = v177;
      v178 = *v105;
      sub_251322098(0, &qword_27F42B120, 0x277CCA898);
      v129 = sub_251322524(v178, v175, v176);

LABEL_39:

      v179 = sub_25132D310();
      [v179 setAttributedText_];

      [v128 setNeedsLayout];
      goto LABEL_40;
    case 7u:
      v143 = *(v105 + 1);
      v144 = *(v105 + 2);
      type metadata accessor for ParagraphView();
      v145 = swift_dynamicCastClass();
      if (!v145)
      {
        goto LABEL_48;
      }

      v146 = v145;
      v129 = sub_251323CA8(*v105, v143, v144);

      v147 = sub_25132D310();
      [v147 setAttributedText_];

      [v146 setNeedsLayout];
LABEL_40:

      return;
    case 8u:
      v183 = *v105;
      type metadata accessor for ImageView();
      if (swift_dynamicCastClass())
      {
        sub_25132CFC4(v183, v105[8]);
      }

      return;
    case 9u:
      v133 = *(v105 + 1);
      v134 = *(v105 + 3);
      type metadata accessor for ButtonView();
      if (swift_dynamicCastClass())
      {
        v135 = *(v105 + 2);
        v136 = *v105;
        aBlock = 4;

        sub_251334514(v136, v133, &aBlock, v135, v134);
      }

      else
      {

LABEL_50:
      }

      return;
    case 0xAu:
      v180 = *(v105 + 1);
      type metadata accessor for CustomContentView();
      if (swift_dynamicCastClass())
      {
        v181 = v105[16];
        v182 = (*v105)();
        sub_25133551C(v182, v181);
      }

      goto LABEL_50;
    case 0xBu:
      v124 = *(v105 + 1);
      type metadata accessor for CustomContentViewControllerView();
      if (swift_dynamicCastClass())
      {
        v125 = (*v105)();
        sub_2513358F0(v125);
      }

      goto LABEL_50;
    case 0xCu:
      v130 = *(v105 + 1);
      type metadata accessor for ParagraphView();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_62;
      }

      v131 = *v105;
      v132 = 5;
LABEL_23:
      aBlock = v132;
      sub_25132D400(v131, v130, &aBlock);
      goto LABEL_62;
    case 0xDu:
      v171 = *v105;
      v170 = *(v105 + 1);
      v172 = *(v105 + 2);
      v173 = *(v105 + 3);
      sub_25131F458();
      sub_25131DC28(&v105[*(v174 + 64)], v100);
      type metadata accessor for LinkedTextView();
      if (swift_dynamicCastClass())
      {
        aBlock = v171;
        v273 = v170;
        v274 = 0;
        v275 = 0;
        LOBYTE(v276) = 0;
        v271 = 3;
        sub_25131CA44(&aBlock, &v271, v172, v173, v100);

        sub_251322128(v100, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v100, type metadata accessor for HealthArticleComponent.LinkContent);
LABEL_54:

      goto LABEL_62;
    case 0xEu:
      v118 = *v105;
      v117 = *(v105 + 1);
      v120 = *(v105 + 2);
      v119 = *(v105 + 3);
      v122 = *(v105 + 4);
      v121 = *(v105 + 5);
      sub_25131F558();
      sub_25131DC28(&v105[*(v123 + 80)], v97);
      type metadata accessor for LinkedTextView();
      if (swift_dynamicCastClass())
      {
        aBlock = v120;
        v273 = v119;
        v274 = v118;
        v275 = v117;
        LOBYTE(v276) = 2;
        v271 = 3;
        sub_25131CA44(&aBlock, &v271, v122, v121, v97);

        sub_251322128(v97, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v97, type metadata accessor for HealthArticleComponent.LinkContent);

LABEL_48:

      goto LABEL_62;
    case 0xFu:
      v141 = *v105;
      v140 = *(v105 + 1);
      sub_25131F694(0, &qword_27F42B0C0, type metadata accessor for HealthArticleComponent.LinkContent);
      sub_25131DC28(&v105[*(v142 + 48)], v93);
      type metadata accessor for LinkedTextView();
      if (swift_dynamicCastClass())
      {
        aBlock = v141;
        v273 = v140;
        v274 = 0;
        v275 = 0;
        LOBYTE(v276) = 1;
        v271 = 3;
        sub_25131CA44(&aBlock, &v271, 0, 0, v93);

        sub_251322128(v93, type metadata accessor for HealthArticleComponent.LinkContent);
        return;
      }

      sub_251322128(v93, type metadata accessor for HealthArticleComponent.LinkContent);
      goto LABEL_62;
    case 0x10u:
      v109 = *v105;
      v108 = *(v105 + 1);
      sub_25131F704();
      v111 = MEMORY[0x277CC8BB8];
      v112 = &v105[*(v110 + 48)];
      v113 = v268;
      sub_251321EE0(v112, v268, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
      sub_251321F60(v113, v85, &qword_27F42B0D0, v111);
      v115 = v262;
      v114 = v263;
      v116 = (*(v262 + 48))(v85, 1, v263);
      v265 = v109;
      if (v116 == 1)
      {
        sub_251322028(v85, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
        (*(v267 + 56))(v245, 1, 1, v266);
        (*(v246 + 104))(v248, *MEMORY[0x277CC8BB0], v247);
        (*(v250 + 104))(v249, *MEMORY[0x277CC8B98], v251);

        sub_25133EF24();
        sub_25133EF44();
        v77 = v73;
      }

      else
      {
        (*(v115 + 32))(v65, v85, v114);
        (*(v115 + 16))(v62, v65, v114);
        (*(v267 + 56))(v244, 1, 1, v266);

        sub_25133EF44();
        (*(v115 + 8))(v65, v114);
      }

      v210 = v77;
      v211 = v252;
      (*(v258 + 32))(v257, v210, v252);
      aBlock = 3;
      v212 = v240;
      HealthArticleTextAttributes.attributeContainer.getter(v240);
      v213 = v241;
      v214 = v242;
      if ((*(v241 + 48))(v212, 1, v242) == 1)
      {
        sub_251322028(v212, &qword_27F42B0F0, MEMORY[0x277CC8CC0]);
      }

      else
      {
        v215 = v226;
        (*(v213 + 32))(v226, v212, v214);
        v216 = v228;
        v217 = v227;
        v218 = v229;
        (*(v228 + 104))(v227, *MEMORY[0x277CC8B80], v229);
        sub_25133EEE4();
        (*(v216 + 8))(v217, v218);
        v219 = v215;
        v211 = v252;
        (*(v213 + 8))(v219, v214);
      }

      type metadata accessor for ParagraphView();
      v220 = swift_dynamicCastClass();
      v221 = v258;
      if (v220)
      {
        v222 = v220;
        sub_251322098(0, &qword_27F42B120, 0x277CCA898);
        v223 = v257;
        (*(v221 + 16))(v230, v257, v211);
        swift_getKeyPath();
        sub_25133EEC4();
        sub_2513220E0(&qword_27F42B128, MEMORY[0x277D74A38]);
        v224 = sub_25133FA24();

        v225 = sub_25132D310();
        [v225 setAttributedText_];

        [v222 setNeedsLayout];
      }

      else
      {

        v223 = v257;
      }

      (*(v221 + 8))(v223, v211);
      sub_251322028(v268, &qword_27F42B0D0, MEMORY[0x277CC8BB8]);
      return;
    case 0x11u:
      sub_25131F804();
      v149 = *&v105[v148[12]];
      v150 = &v105[v148[16]];
      v151 = v150[1];
      v269 = *v150;
      v152 = &v105[v148[20]];
      v154 = *v152;
      v153 = v152[1];
      v155 = &v105[v148[24]];
      v156 = *v155;
      v157 = v155[8];
      v158 = v265;
      sub_251321EE0(v105, v265, &qword_27F42B0E0, MEMORY[0x277CC9260]);
      type metadata accessor for VideoView();
      v159 = swift_dynamicCastClass();
      if (v159)
      {
        v160 = v159;
        LODWORD(v264) = v157;
        v268 = v156;
        v161 = v253;
        sub_251321F60(v158, v253, &qword_27F42B0E0, MEMORY[0x277CC9260]);
        v162 = v266;
        v163 = v267;
        if ((*(v267 + 48))(v161, 1, v266) == 1)
        {
          v164 = MEMORY[0x277CC9260];
          sub_251322028(v158, &qword_27F42B0E0, MEMORY[0x277CC9260]);

          sub_251322028(v161, &qword_27F42B0E0, v164);
        }

        else
        {
          v260 = v151;
          v258 = *(v163 + 32);
          v259 = v149;
          v184 = v254;
          (v258)();
          sub_251322098(0, &qword_27F42B0F8, 0x277D85C78);
          v262 = sub_25133F9F4();
          v185 = v232;
          sub_25133F6A4();
          sub_25133F6C4();
          v186 = *(v261 + 8);
          v261 += 8;
          v263 = v186;
          v186(v185, v256);
          v187 = *(v163 + 16);
          v188 = v233;
          v257 = v153;
          v189 = v162;
          v187(v233, v184, v162);
          v190 = *(v163 + 80);
          v253 = v154;
          v191 = (v190 + 24) & ~v190;
          v192 = (v231 + v191 + 7) & 0xFFFFFFFFFFFFFFF8;
          v193 = (v192 + 15) & 0xFFFFFFFFFFFFFFF8;
          v194 = (v193 + 23) & 0xFFFFFFFFFFFFFFF8;
          v195 = swift_allocObject();
          *(v195 + 16) = v160;
          v196 = v195 + v191;
          v197 = v189;
          (v258)(v196, v188, v189);
          *(v195 + v192) = v259;
          v198 = (v195 + v193);
          v199 = v260;
          *v198 = v269;
          v198[1] = v199;
          v200 = (v195 + v194);
          v201 = v257;
          *v200 = v253;
          v200[1] = v201;
          v202 = v195 + ((v194 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v202 = v268;
          *(v202 + 8) = v264;
          v276 = sub_251321D7C;
          v277 = v195;
          aBlock = MEMORY[0x277D85DD0];
          v273 = 1107296256;
          v274 = sub_25131EBB0;
          v275 = &block_descriptor_0;
          v203 = _Block_copy(&aBlock);
          v204 = v270;
          v205 = v234;
          sub_25133F684();
          v271 = MEMORY[0x277D84F90];
          sub_2513220E0(&qword_27F42B100, MEMORY[0x277D85198]);
          sub_25131F7A0(0, &qword_27F42B108, MEMORY[0x277D85198], MEMORY[0x277D83940]);
          sub_251321E58();
          v206 = v237;
          v207 = v239;
          sub_25133FB34();
          v208 = v255;
          v209 = v262;
          MEMORY[0x253072260](v255, v205, v206, v203);
          _Block_release(v203);

          (*(v238 + 8))(v206, v207);
          (*(v235 + 8))(v205, v236);
          v263(v208, v256);
          (*(v267 + 8))(v254, v197);
          sub_251322028(v265, &qword_27F42B0E0, MEMORY[0x277CC9260]);
        }
      }

      else
      {
        sub_251322028(v158, &qword_27F42B0E0, MEMORY[0x277CC9260]);

LABEL_62:
      }

      return;
    default:
      v106 = *(v105 + 1);
      type metadata accessor for TitleView();
      if (swift_dynamicCastClass())
      {
        v107 = *v105;
        aBlock = 0;
LABEL_28:
        sub_25131B2C8(v107, v106, 0, &aBlock);
      }

      goto LABEL_62;
  }
}

uint64_t sub_251321D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthArticleComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251321D7C()
{
  v1 = *(sub_25133EFC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_251336D64(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251321E58()
{
  result = qword_27F42B110;
  if (!qword_27F42B110)
  {
    sub_25131F7A0(255, &qword_27F42B108, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B110);
  }

  return result;
}

uint64_t sub_251321EE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25131F7A0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251321F60(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25131F7A0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_251321FE0()
{
  result = qword_27F42B118;
  if (!qword_27F42B118)
  {
    type metadata accessor for HealthArticleComponent(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F42B118);
  }

  return result;
}

uint64_t sub_251322028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25131F7A0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251322098(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2513220E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251322128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_251322190()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

double sub_25132224C()
{
  [v0 layoutMargins];
  [v0 layoutMargins];
  return 6.0;
}

id sub_2513222B0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v17.receiver = a1;
  v17.super_class = a8(isCurrentExecutor);
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a2, a3, a4, a5);

  return v15;
}

id sub_2513223C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v12.receiver = a1;
  v12.super_class = a5(isCurrentExecutor);
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, v9);

  if (v10)
  {
  }

  return v10;
}

id sub_2513224C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_251322524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v42 = a2;
  sub_2513244B4(0, &qword_27F42B130, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v40 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v9 = v8;
  v47 = *(a3 + 16);
  if (v47)
  {
    v10 = 0;
    v46 = v47 - 1;
    v11 = *MEMORY[0x277D740A8];
    v44 = v51;
    v45 = v11;
    v12 = (a3 + 40);
    v43 = v8;
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      v15 = sub_2513234D8(v10, v13, v14);
      v17 = v16;
      v51[6] = v15;
      v51[7] = v16;
      aBlock = v15;
      v50 = v16;
      v51[4] = v13;
      v51[5] = v14;
      v18 = sub_25133EFF4();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      sub_2513236B4();

      sub_25133FB14();
      v20 = v19;
      sub_251323708(v7);
      if (v20)
      {

        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        aBlock = v15;
        v50 = v17;
        sub_25133F794();
        v21 = aBlock;
        v22 = v50;
      }

      v23 = swift_allocObject();
      v23[2] = v48;
      v23[3] = v21;
      v23[4] = v22;

      v24 = sub_2513237A0(sub_251323794);

      if (v10 < v46)
      {
        MEMORY[0x253072050](10, 0xE100000000000000);
      }

      sub_25132E788(v24);

      v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v26 = sub_25133F724();

      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
      v27 = sub_25133F6E4();

      v28 = [v25 initWithString:v26 attributes:v27];

      v29 = sub_25133F7C4();

      v30 = swift_allocObject();
      *(v30 + 16) = v48;
      *(v30 + 24) = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_2513239AC;
      *(v31 + 24) = v30;
      v51[2] = sub_2513239B4;
      v51[3] = v31;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51[0] = sub_251322D50;
      v51[1] = &block_descriptor_1;
      v32 = _Block_copy(&aBlock);
      v33 = v28;

      [v33 enumerateAttribute:v45 inRange:0 options:v29 usingBlock:{0, v32}];
      _Block_release(v32);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        break;
      }

      ++v10;
      v9 = v43;
      [v43 appendAttributedString_];

      v12 += 2;
      if (v47 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    if (v42)
    {
      aBlock = v41;
      v50 = v42;

      MEMORY[0x253072050](10, 0xE100000000000000);
      v35 = sub_2513237A0(0);
      sub_25132E788(v35);

      v36 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v37 = sub_25133F724();

      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
      v38 = sub_25133F6E4();

      v39 = [v36 initWithString:v37 attributes:v38];

      [v39 appendAttributedString_];
      return v39;
    }

    return v9;
  }

  return result;
}

void sub_251322B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_251323A64(a1, v18);
  if (v19)
  {
    v9 = sub_251322098(0, &qword_280DE7278, 0x277D74300);
    v10 = MEMORY[0x277D84F70];
    if (swift_dynamicCast())
    {
      v11 = sub_25132416C(v17);
      sub_251324458(0, &qword_27F42B140, &qword_27F42B148, type metadata accessor for Key);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251340BD0;
      v13 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      *(inited + 64) = v9;
      *(inited + 40) = v11;
      v14 = v13;
      v15 = v11;
      sub_25132FE54(inited);
      swift_setDeallocating();
      sub_2513239F4(inited + 32, &qword_27F42B148, type metadata accessor for Key, v10 + 8, sub_2513246F8);
      type metadata accessor for Key(0);
      sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
      v16 = sub_25133F6E4();

      [a6 addAttributes:v16 range:{a2, a3}];
    }
  }

  else
  {
    sub_2513239F4(v18, &qword_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2513248B0);
  }
}

uint64_t sub_251322D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_251323A54(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_2513239F4(v14, &unk_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2513248B0);
}

double sub_251322E28(uint64_t a1)
{
  v2 = *(a1 + 16);

  if (v2)
  {
    v3 = *MEMORY[0x277D740A8];
    v4 = sub_251328050(*MEMORY[0x277D740A8]);
    if (v5)
    {
      v6 = *(*(a1 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v3;
        v10 = sub_25132416C(v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_25132309C(v10, v9, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v12 = sub_25133F724();
  sub_25132E788(a1);

  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
  v13 = sub_25133F6E4();

  [v12 sizeWithAttributes_];
  v15 = v14;

  return v15;
}

double sub_251322FC4(uint64_t a1)
{
  v2 = sub_25133F724();
  sub_25132E788(a1);
  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
  v3 = sub_25133F6E4();

  [v2 sizeWithAttributes_];
  v5 = v4;

  return v5;
}

uint64_t sub_25132309C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_251328050(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_251327200(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_251328050(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for Key(0);
        sub_25133FCC4();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_251327714();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;

  return swift_unknownObjectRelease();
}

char *sub_251323208(char *a1, int64_t a2, char a3)
{
  result = sub_251323228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251323228(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2513248B0(0, &qword_27F42B1B8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25132334C(uint64_t a1)
{
  v2 = sub_25133EFF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25133EFE4();
  v8 = sub_25133EFD4();
  (*(v3 + 8))(v6, v2);
  [v7 setLocale_];

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v10 = [v7 stringFromNumber_];

    if (v10)
    {
      sub_25133F754();
    }

    else
    {
    }
  }
}

uint64_t sub_2513234D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HealthArticleViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_25133EF64();

  sub_25132334C(a1);
  v9 = v8;
  v11 = v10;
  sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
  v12 = sub_25133F724();

  sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_251341600;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2513247D8();
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a2;
  *(v13 + 80) = a3;

  v16 = sub_25133FAA4();

  v17 = sub_25133F754();
  return v17;
}

unint64_t sub_2513236B4()
{
  result = qword_280DE6DF0;
  if (!qword_280DE6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6DF0);
  }

  return result;
}

uint64_t sub_251323708(uint64_t a1)
{
  sub_2513244B4(0, &qword_27F42B130, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_251323794(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_251322E28(a1);
}

unint64_t sub_2513237A0(void (*a1)(unint64_t))
{
  sub_251324458(0, &qword_27F42B188, &qword_27F42B190, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251341600;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76918];
  v6 = v3;
  v7 = [v4 preferredFontForTextStyle_];
  v8 = *MEMORY[0x277D740C0];
  *(inited + 40) = v7;
  *(inited + 48) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  *(inited + 56) = [v9 labelColor];
  v11 = sub_25132F924(inited);
  swift_setDeallocating();
  sub_2513246F8(0, &qword_27F42B190, type metadata accessor for Key);
  swift_arrayDestroy();
  v12 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (a1)
  {

    a1(v11);
    [v12 setHeadIndent_];
    sub_251324764(a1);
  }

  [v12 setParagraphSpacing_];
  v13 = *MEMORY[0x277D74118];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25132309C(v12, v13, isUniquelyReferenced_nonNull_native);

  return v11;
}

uint64_t sub_2513239B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2513239F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

_OWORD *sub_251323A54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_251323A64(uint64_t a1, uint64_t a2)
{
  sub_2513248B0(0, &qword_27F42B138, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251323AF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthArticleViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_25133EF64();

  sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
  v6 = sub_25133F724();

  sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251340BD0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2513247D8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_25133FAA4();

  v9 = sub_25133F754();
  return v9;
}

id sub_251323CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  if (v4)
  {
    v37 = MEMORY[0x277D84F90];
    sub_251323208(0, v4, 0);
    type metadata accessor for HealthArticleViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    sub_251322098(0, &qword_27F42B198, 0x277CCACA8);
    v6 = (a3 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = [v35 bundleForClass_];
      sub_25133EF64();

      v10 = sub_25133F724();

      sub_2513244B4(0, &qword_27F42B1A0, sub_251324774, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_251340BD0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2513247D8();
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;

      v12 = sub_25133FAA4();

      v13 = sub_25133F754();
      v15 = v14;

      v17 = *(v37 + 16);
      v16 = *(v37 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_251323208((v16 > 1), v17 + 1, 1);
      }

      *(v37 + 16) = v17 + 1;
      v18 = v37 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v6 += 2;
      --v4;
    }

    while (v4);
    v3 = a2;
  }

  sub_2513248B0(0, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_25132482C();
  sub_25133F714();

  v19 = sub_251323AF0(0, 0xE000000000000000);
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v21;
  v23 = sub_2513237A0(sub_2513248A8);

  sub_25132E788(v23);

  v24 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v25 = sub_25133F724();

  type metadata accessor for Key(0);
  sub_2513245B4(&qword_27F42B2B0, type metadata accessor for Key);
  v26 = sub_25133F6E4();

  v27 = [v24 initWithString:v25 attributes:v26];

  if (v3)
  {

    MEMORY[0x253072050](10, 0xE100000000000000);
    v28 = sub_2513237A0(0);
    sub_25132E788(v28);

    v29 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v30 = sub_25133F724();

    v31 = sub_25133F6E4();

    v32 = [v29 initWithString:v30 attributes:v31];

    [v32 appendAttributedString_];
    return v32;
  }

  return v27;
}

id sub_25132416C(void *a1)
{
  v2 = [a1 fontDescriptor];
  v3 = MEMORY[0x277D84560];
  sub_2513244B4(0, &qword_27F42B150, sub_251324518, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_251340BD0;
  sub_251324458(0, &qword_27F42B160, &qword_27F42B168, type metadata accessor for FeatureKey);
  inited = swift_initStackObject();
  v6 = MEMORY[0x277D76908];
  *(inited + 16) = xmmword_251341600;
  v7 = *v6;
  *(inited + 32) = v7;
  v8 = *MEMORY[0x277D76900];
  *(inited + 40) = 6;
  *(inited + 48) = v8;
  *(inited + 56) = 0;
  v9 = v7;
  v10 = v8;
  v11 = sub_25132FC88(inited);
  swift_setDeallocating();
  sub_2513246F8(0, &qword_27F42B168, type metadata accessor for FeatureKey);
  swift_arrayDestroy();
  *(v4 + 32) = v11;
  sub_2513244B4(0, &qword_27F42B170, sub_2513245FC, v3);
  v12 = swift_initStackObject();
  v13 = MEMORY[0x277D74338];
  *(v12 + 16) = xmmword_251340BD0;
  v14 = *v13;
  *(v12 + 32) = v14;
  *(v12 + 40) = v4;
  v15 = v14;
  v16 = sub_25132FD68(v12);
  swift_setDeallocating();
  sub_25132469C(v12 + 32);
  sub_25132EA44(v16);

  type metadata accessor for AttributeName(0);
  sub_2513245B4(&qword_27F42AEB8, type metadata accessor for AttributeName);
  v17 = sub_25133F6E4();

  v18 = [v2 fontDescriptorByAddingAttributes_];

  [a1 pointSize];
  v20 = [objc_opt_self() fontWithDescriptor:v18 size:v19];

  return v20;
}

void sub_251324458(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2513246F8(255, a3, a4);
    v5 = sub_25133FCA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2513244B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251324518()
{
  if (!qword_27F42B158)
  {
    type metadata accessor for FeatureKey(255);
    sub_2513245B4(&qword_27F42AEC8, type metadata accessor for FeatureKey);
    v0 = sub_25133F6F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B158);
    }
  }
}

uint64_t sub_2513245B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2513245FC()
{
  if (!qword_27F42B178)
  {
    type metadata accessor for AttributeName(255);
    sub_2513244B4(255, &qword_27F42B180, sub_251324518, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B178);
    }
  }
}

uint64_t sub_25132469C(uint64_t a1)
{
  sub_2513245FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2513246F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251324764(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_251324774()
{
  result = qword_27F42B1A8;
  if (!qword_27F42B1A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B1A8);
  }

  return result;
}

unint64_t sub_2513247D8()
{
  result = qword_280DE6DE8;
  if (!qword_280DE6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE6DE8);
  }

  return result;
}

unint64_t sub_25132482C()
{
  result = qword_27F42B1B0;
  if (!qword_27F42B1B0)
  {
    sub_2513248B0(255, &qword_27F42B080, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B1B0);
  }

  return result;
}

double sub_2513248A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_251322FC4(a1);
}

void sub_2513248B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251324914()
{
  v1 = type metadata accessor for HealthArticleComponent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews;
  v8 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components);
    v11 = *(v10 + 16);
    v8 = MEMORY[0x277D84F90];
    if (v11)
    {
      v19 = MEMORY[0x277D84F90];
      sub_25133FBE4();
      v12 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v13 = *(v2 + 72);
      do
      {
        sub_251321D18(v12, v6);
        v14 = sub_25131FA98();
        sub_25131FF30(v14);
        sub_251327CBC(v6, type metadata accessor for HealthArticleComponent);
        sub_25133FBC4();
        v15 = *(v19 + 16);
        sub_25133FBF4();
        sub_25133FC04();
        sub_25133FBD4();
        v12 += v13;
        --v11;
      }

      while (v11);
      v8 = v19;
      v16 = *(v0 + v7);
    }

    *(v0 + v7) = v8;
  }

  return v8;
}

id sub_251324AC0()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView);
  }

  else
  {
    v4 = sub_251324B24(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_251324B24(uint64_t a1)
{
  sub_251324914();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_251322098(0, &qword_27F42B270, 0x277D75D18);
  v3 = sub_25133F844();

  v16 = [v2 initWithArrangedSubviews_];

  v4 = *(a1 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews);
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25133FB54())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x253072420](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_14;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = v5;
      v12 = [v8 widthAnchor];
      v13 = [v16 widthAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      v5 = v11;
      [v14 setActive_];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAxis_];
  [v16 setAlignment_];
  [v16 setDistribution_];
  [v16 setSpacing_];
  return v16;
}

uint64_t sub_251324D60()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState;
  if (*(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState);
  }

  else
  {
    v2 = sub_251324DC8();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_251324DC8()
{
  v0 = sub_25132FF64(MEMORY[0x277D84F90]);
  v1 = sub_251324914();
  isUniquelyReferenced_nonNull_native = v1;
  if (v1 >> 62)
  {
LABEL_28:
    v3 = sub_25133FB54();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:

    return v0;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v4 = 0;
  v5 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v22 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v23 = v3;
  v24 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v5)
    {
      v6 = MEMORY[0x253072420](v4, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v4 >= *(v22 + 16))
      {
        goto LABEL_26;
      }

      v6 = *(isUniquelyReferenced_nonNull_native + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v27 = v6;
    sub_251322098(0, &qword_27F42B270, 0x277D75D18);
    sub_251327C60(0, &qword_27F42B278);
    v9 = v7;
    if (swift_dynamicCast())
    {
      break;
    }

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_251327CBC(v25, sub_251327D1C);
LABEL_5:
    ++v4;
    if (v8 == v3)
    {
      goto LABEL_29;
    }
  }

  sub_251327CBC(v25, sub_251327D1C);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25[0] = v0;
  v11 = sub_251326F2C(v9);
  v12 = v0[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_25;
  }

  v15 = v10;
  if (v0[3] >= v14)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v0 = *&v25[0];
      if (v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_25132786C();
      v0 = *&v25[0];
      if (v15)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v0[(v11 >> 6) + 8] |= 1 << v11;
    *(v0[6] + 8 * v11) = v9;
    *(v0[7] + 8 * v11) = 0;
    v18 = v0[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_27;
    }

    v0[2] = v20;
    goto LABEL_23;
  }

  sub_2513274BC(v14, isUniquelyReferenced_nonNull_native);
  v16 = sub_251326F2C(v9);
  if ((v15 & 1) == (v17 & 1))
  {
    v11 = v16;
    v0 = *&v25[0];
    if ((v15 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_19:
    *(v0[7] + 8 * v11) = 0;

LABEL_23:
    v3 = v23;
    isUniquelyReferenced_nonNull_native = v24;
    goto LABEL_5;
  }

  result = sub_25133FCC4();
  __break(1u);
  return result;
}

void sub_251325070(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2513250D0()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id HealthArticleViewController.init(title:components:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for HealthArticleViewController();

  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  v5 = sub_25133F724();
  [v4 setTitle_];

  result = [v4 view];
  if (result)
  {
    v7 = result;

    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor_];

    [v4 setModalPresentationStyle_];
    sub_251325938();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HealthArticleViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HealthArticleViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___componentViews) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState) = 0;
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView) = 0;
  sub_25133FC14();
  __break(1u);
}

uint64_t sub_251325938()
{
  v1 = type metadata accessor for HealthArticleComponent(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5, v8);
  v11 = &v30 - v10;
  v31 = v0;
  v12 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_components];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_25133F8F4();
    v15 = v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v33 = *(v2 + 72);
    v16 = v13 - 1;
    v17 = MEMORY[0x277D85700];
    while (1)
    {
      sub_251321D18(v15, v11);
      v18 = sub_25133F8E4();
      sub_25133F894();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_251321D18(v11, v7);
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v19 = *(v7 + 1);
        v20 = (*v7)();
        v32 = v18;
        v21 = v7;
        v22 = v16;
        v23 = v15;
        v24 = v11;
        v25 = v14;
        v26 = v17;
        v27 = v1;
        v28 = v31;
        [v31 addChildViewController_];
        v29 = v28;
        v1 = v27;
        v17 = v26;
        v14 = v25;
        v11 = v24;
        v15 = v23;
        v16 = v22;
        v7 = v21;
        [v20 didMoveToParentViewController_];

        sub_251327CBC(v11, type metadata accessor for HealthArticleComponent);

        if (!v16)
        {
          return result;
        }
      }

      else
      {
        sub_251327CBC(v11, type metadata accessor for HealthArticleComponent);
        sub_251327CBC(v7, type metadata accessor for HealthArticleComponent);

        if (!v16)
        {
          return result;
        }
      }

      --v16;
      v15 += v33;
    }
  }

  return result;
}

void sub_251325BCC()
{
  v1 = v0;
  sub_251322098(0, &qword_27F42B298, 0x277D759D8);
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = v2;
  [v3 setPreservesSuperviewLayoutMargins_];
  v4 = [v1 title];
  if (v4)
  {
    v5 = v4;
    sub_25133F754();

    v70 = sub_2513236B4();
    v69 = MEMORY[0x277D837D0];
    v6 = sub_25133FB04();
    v8 = v7;

    sub_25133FB94();
    v9 = *MEMORY[0x277D12788];
    sub_25133F754();

    MEMORY[0x253072050](0x656C63697472412ELL, 0xED00002E77656956);
    MEMORY[0x253072050](v6, v8);

    v10 = sub_25133F724();

    [v3 setAccessibilityIdentifier_];
  }

  else
  {
  }

  v11 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v12 = *&v1[v11];
  *&v1[v11] = v3;
  v13 = v3;

  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  [v14 addSubview_];

  v16 = sub_251324AC0();
  [v13 addSubview_];

  sub_251327F10();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_251341610;
  v18 = [v13 frameLayoutGuide];
  v19 = [v18 topAnchor];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v23;
  v24 = [v13 frameLayoutGuide];
  v25 = [v24 leadingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v17 + 40) = v29;
  v30 = [v13 frameLayoutGuide];
  v31 = [v30 trailingAnchor];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  v72 = v11;
  v34 = [v32 trailingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v17 + 48) = v35;
  v36 = [v13 frameLayoutGuide];
  v37 = [v36 bottomAnchor];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v39 = v38;
  v71 = objc_opt_self();
  v40 = [v39 bottomAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v17 + 56) = v41;
  v42 = [v13 contentLayoutGuide];
  v43 = [v42 topAnchor];

  v44 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView;
  v45 = [*&v1[OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___contentView] topAnchor];
  v46 = [v43 constraintEqualToAnchor_];

  *(v17 + 64) = v46;
  v47 = [v13 contentLayoutGuide];
  v48 = [v47 leadingAnchor];

  v49 = [*&v1[v44] leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v17 + 72) = v50;
  v51 = [v13 contentLayoutGuide];
  v52 = [v51 trailingAnchor];

  v53 = [*&v1[v44] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v17 + 80) = v54;
  v55 = [v13 contentLayoutGuide];
  v56 = [v55 bottomAnchor];

  v57 = [*&v1[v44] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v17 + 88) = v58;
  v59 = [v13 frameLayoutGuide];
  v60 = [v59 widthAnchor];

  v61 = [*&v1[v44] widthAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v17 + 96) = v62;
  sub_251322098(0, &qword_280DE7280, 0x277CCAAD0);
  v63 = sub_25133F844();

  [v71 activateConstraints_];

  if (_UISolariumEnabled())
  {
    v64 = [v1 navigationController];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 navigationBar];

      v67 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v13 edge:1 style:0];
      [v66 addInteraction_];
    }
  }

  v68 = *&v1[v72];
  if (v68)
  {
    [v68 setDelegate_];
  }

  sub_2513264D8(0);
}

uint64_t sub_2513264D8(char a1)
{
  v2 = v1;
  v4 = sub_251324D60();
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v76 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController____lazy_storage___trackingViewToState;
  v79 = v4;
  v80 = OBJC_IVAR____TtC16HealthArticlesUI27HealthArticleViewController_scrollView;
  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  v75 = a1;
  v77 = a1 & 1 | 2;
  v78 = a1 & 1;
  v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
  v72 = v2;
  if (v8)
  {
    while (1)
    {
LABEL_10:
      v13 = (v9 << 9) | (8 * __clz(__rbit64(v8)));
      v14 = *(*(v79 + 48) + v13);
      v15 = *(*(v79 + 56) + v13);
      v16 = *(v2 + v80);
      if (v16)
      {
        v17 = v14;
        [v16 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v17 v11[147]];
        v90.origin.x = v26;
        v90.origin.y = v27;
        v90.size.width = v28;
        v90.size.height = v29;
        v87.origin.x = v19;
        v87.origin.y = v21;
        v87.size.width = v23;
        v87.size.height = v25;
        v30 = CGRectContainsRect(v87, v90);
        v32 = v77;
        v31 = v78;
        if (v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v33 = v14;
        if ((v75 & 1) == 0)
        {
          v32 = 0;
          goto LABEL_17;
        }

        v31 = 1;
      }

      v32 = v31;
LABEL_17:
      v8 &= v8 - 1;
      v83 = v14;
      sub_251322098(0, &qword_27F42B270, 0x277D75D18);
      sub_251327C60(0, &qword_27F42B278);
      v34 = v14;
      if (swift_dynamicCast())
      {
        sub_251327E68(v81, v84);
        if (v15 != v32)
        {
          v35 = v2;
          v37 = v85;
          v36 = v86;
          __swift_project_boxed_opaque_existential_1(v84, v85);
          v74 = v32;
          *&v81[0] = v32;
          (*(v36 + 8))(v81, v37, v36);
          v38 = *(v35 + v76);
          v73 = v34;
          v32 = v34;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v81[0] = v38;
          v41 = sub_251326F2C(v32);
          v42 = *(v38 + 16);
          v43 = (v40 & 1) == 0;
          v44 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            goto LABEL_39;
          }

          v45 = v40;
          if (*(v38 + 24) >= v44)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_25132786C();
            }
          }

          else
          {
            sub_2513274BC(v44, isUniquelyReferenced_nonNull_native);
            v46 = sub_251326F2C(v32);
            if ((v45 & 1) != (v47 & 1))
            {
              goto LABEL_41;
            }

            v41 = v46;
          }

          v2 = v72;
          v48 = *&v81[0];
          if (v45)
          {
            *(*(*&v81[0] + 56) + 8 * v41) = v74;

            LOBYTE(v32) = v74;
          }

          else
          {
            *(*&v81[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
            *(v48[6] + 8 * v41) = v32;
            LOBYTE(v32) = v74;
            *(v48[7] + 8 * v41) = v74;
            v49 = v48[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              goto LABEL_40;
            }

            v48[2] = v51;
          }

          v52 = *(v72 + v76);
          *(v72 + v76) = v48;

          v34 = v73;
        }

        v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
        if ((v32 & 1) == 0)
        {
          v53 = *(v2 + v80);
          if (v53)
          {
            [v53 bounds];
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;
            [v34 frame];
            v91.origin.x = v62;
            v91.origin.y = v63;
            v91.size.width = v64;
            v91.size.height = v65;
            v88.origin.x = v55;
            v88.origin.y = v57;
            v88.size.width = v59;
            v88.size.height = v61;
            v89 = CGRectIntersection(v88, v91);
          }

          else
          {
            v89.origin.x = 0.0;
            v89.origin.y = 0.0;
            v89.size.width = 0.0;
            v89.size.height = 0.0;
          }

          Height = CGRectGetHeight(v89);
          [v34 frame];
          v67 = v85;
          v68 = v86;
          v70 = Height / v69;
          __swift_project_boxed_opaque_existential_1(v84, v85);
          (*(v68 + 16))(v67, v68, v70);
        }

        __swift_destroy_boxed_opaque_existential_1(v84);
        if (!v8)
        {
          break;
        }
      }

      else
      {

        v82 = 0;
        memset(v81, 0, sizeof(v81));
        sub_251327CBC(v81, sub_251327D1C);
        v11 = &_swift_FORCE_LOAD___swift_Builtin_float___HealthArticlesUI;
        if (!v8)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v9;
    if (v8)
    {
      v9 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_25133FCC4();
  __break(1u);
  return result;
}

void sub_2513269B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1;
  sub_2513264D8(a5 & 1);
}

uint64_t sub_251326A84(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_2513264D8(0);
  }

  return result;
}

id HealthArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25133F724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HealthArticleViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthArticleViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251326E24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25133FCF4();
  sub_25133F7B4();
  v6 = sub_25133FD24();

  return sub_251326F70(a1, a2, v6);
}

unint64_t sub_251326E9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_25133F754();
  sub_25133FCF4();
  sub_25133F7B4();
  v4 = sub_25133FD24();

  return sub_251327028(a1, v4);
}

unint64_t sub_251326F2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25133FA84();

  return sub_25132712C(a1, v5);
}

unint64_t sub_251326F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25133FCB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251327028(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25133F754();
      v9 = v8;
      if (v7 == sub_25133F754() && v9 == v10)
      {
        break;
      }

      v12 = sub_25133FCB4();

      if ((v12 & 1) == 0)
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

unint64_t sub_25132712C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_251322098(0, &qword_27F42B270, 0x277D75D18);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25133FA94();

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

uint64_t sub_251327200(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251327F64();
  v37 = a2;
  result = sub_25133FC44();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
        swift_unknownObjectRetain();
      }

      v25 = *(v8 + 40);
      sub_25133F754();
      sub_25133FCF4();
      sub_25133F7B4();
      v26 = sub_25133FD24();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2513274BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_251327D84();
  result = sub_25133FC44();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_25133FA84();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void *sub_251327714()
{
  v1 = v0;
  sub_251327F64();
  v2 = *v0;
  v3 = sub_25133FC34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_25132786C()
{
  v1 = v0;
  sub_251327D84();
  v2 = *v0;
  v3 = sub_25133FC34();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2513279BC(void *a1)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  sub_25133FA14();

  sub_25133FA34();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_251324AC0();
  [v11 setDirectionalLayoutMargins_];
}

uint64_t sub_251327C60(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251327CBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251327D1C()
{
  if (!qword_27F42B280)
  {
    sub_251327C60(255, &qword_27F42B278);
    v0 = sub_25133FAB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B280);
    }
  }
}

void sub_251327D84()
{
  if (!qword_27F42B288)
  {
    sub_251322098(255, &qword_27F42B270, 0x277D75D18);
    sub_251327E00();
    v0 = sub_25133FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B288);
    }
  }
}

unint64_t sub_251327E00()
{
  result = qword_27F42B290;
  if (!qword_27F42B290)
  {
    sub_251322098(255, &qword_27F42B270, 0x277D75D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B290);
  }

  return result;
}

uint64_t sub_251327E68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_251327F10()
{
  if (!qword_27F42B2A0)
  {
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B2A0);
    }
  }
}

void sub_251327F64()
{
  if (!qword_27F42B2A8)
  {
    type metadata accessor for Key(255);
    sub_251328004(&qword_27F42B2B0, type metadata accessor for Key);
    v0 = sub_25133FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B2A8);
    }
  }
}

uint64_t sub_251328004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251328054()
{
  result = sub_25133F724();
  qword_280DE7358 = result;
  return result;
}

id static NSNotificationName.articleWasReadByUser.getter()
{
  if (qword_280DE7350 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE7358;

  return v1;
}

uint64_t _s11UserInfoKeyOwet(unsigned int *a1, int a2)
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

_WORD *_s11UserInfoKeyOwst(_WORD *result, int a2, int a3)
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

uint64_t sub_2513281FC()
{
  sub_25133FCF4();
  MEMORY[0x253072580](0);
  return sub_25133FD24();
}

uint64_t sub_251328268()
{
  sub_25133FCF4();
  MEMORY[0x253072580](0);
  return sub_25133FD24();
}

uint64_t sub_2513282C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000251342E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25133FCB4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_251328370(uint64_t a1)
{
  v2 = sub_251328534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2513283AC(uint64_t a1)
{
  v2 = sub_251328534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleContentConfigurationProviderViewModel.encode(to:)(void *a1)
{
  sub_25132870C(0, &qword_280DE6DD8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD44();
  sub_25133FC94();
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_251328534()
{
  result = qword_280DE72C8[0];
  if (!qword_280DE72C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280DE72C8);
  }

  return result;
}

uint64_t ArticleContentConfigurationProviderViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25132870C(0, &qword_280DE6DE0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD34();
  if (!v2)
  {
    v13 = sub_25133FC84();
    v15 = v14;
    (*(v7 + 8))(v11, v6);
    *a2 = v13;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_25132870C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251328534();
    v7 = a3(a1, &type metadata for ArticleContentConfigurationProviderViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251328788(void *a1)
{
  sub_25132870C(0, &qword_280DE6DD8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251328534();
  sub_25133FD44();
  sub_25133FC94();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_251328998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t ArticleContentConfigurationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t ArticleContentConfigurationProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_251328A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v77 = a3;
  v81 = a2;
  v82 = a4;
  v72 = *v4;
  v6 = v72;
  sub_25132ACA8();
  v8 = v7;
  v79 = *(v7 - 8);
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25133F274();
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v80 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25132ACF8();
  v76 = v16;
  v75 = *(v16 - 8);
  v17 = *(v75 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v73 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v74 = &v70 - v23;
  v24 = *(v6 + 80);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22, v27);
  v29 = &v70 - v28;
  v30 = *(v6 + 88);
  (*(v30 + 8))(v24, v30);
  sub_25133F0D4();
  (*(v30 + 16))(&v83, v88, v89, v81, v24, v30);

  (*(v25 + 8))(v29, v24);
  if (v84)
  {
    sub_25132AF18(&v83, &v85);
    v31 = v86;
    v32 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v33 = (*(v32 + 24))(v31, v32);
    v35 = v34;
    v36 = v86;
    v37 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v38 = (*(v37 + 32))(v36, v37);
    v40 = v39;
    v41 = v86;
    v42 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v43 = (*(v42 + 40))(v41, v42);
    v44 = v86;
    v45 = v87;
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    v46 = (*(v45 + 72))(v44, v45);
    v88 = v33;
    v89 = v35;
    v90 = v38;
    v91 = v40;
    v47 = v77;
    v92 = v43;
    v93 = v77;
    v94 = v46;
    v95 = v48;
    MEMORY[0x28223BE20](v46, v48);
    *(&v70 - 2) = &v88;
    *(&v70 - 1) = v47;
    type metadata accessor for ArticleTileView();
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView);

    v49 = v73;
    sub_25133F404();
    sub_25133F4F4();
    v50 = v74;
    v51 = v76;
    sub_25133F3F4();
    v52 = *(v75 + 8);
    v52(v49, v51);
    sub_25132AF40();
    v53 = v82;
    v82[3] = v54;
    v53[4] = sub_25132B8AC(&qword_280DE6EA0, sub_25132AF40);
    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_25133F164();
    sub_25132B8AC(&qword_280DE6F50, MEMORY[0x277D11038]);
    sub_25133F3E4();
    sub_25132B02C(&v88);
    v52(v50, v51);
    return __swift_destroy_boxed_opaque_existential_1(&v85);
  }

  else
  {
    v56 = v72;
    v57 = v71;
    v58 = v12;
    sub_25132B6C0(&v83, sub_25132ADA8);
    sub_25133F244();
    (*(v79 + 16))(v78, a1, v8);
    v59 = sub_25133F264();
    v60 = sub_25133F994();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v85 = v62;
      *v61 = 136446466;
      v88 = v56;
      swift_getMetatypeMetadata();
      v63 = sub_25133F764();
      v65 = sub_25132F394(v63, v64, &v85);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v66 = v78;
      sub_25133F0D4();
      (*(v79 + 8))(v66, v8);
      v67 = sub_25132F394(v88, v89, &v85);

      *(v61 + 14) = v67;
      _os_log_impl(&dword_251318000, v59, v60, "[%{public}s] No article data provider was found in updateLayout using identifier %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v62, -1, -1);
      MEMORY[0x253072C40](v61, -1, -1);
    }

    else
    {

      (*(v79 + 8))(v78, v8);
    }

    (*(v57 + 8))(v80, v58);
    v68 = v82;
    sub_25132AE48();
    v68[3] = v69;
    v68[4] = sub_25132B8AC(&qword_27F42B2D8, sub_25132AE48);
    __swift_allocate_boxed_opaque_existential_1(v68);
    return sub_25133F404();
  }
}

uint64_t sub_251329344()
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2513293D4@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = swift_getKeyPath();
  v4 = MEMORY[0x277CDF458];
  sub_25132B754(0, &qword_280DE6F40, sub_25132B81C, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for ArticleTileView();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  sub_25132B754(0, &qword_280DE6F48, MEMORY[0x277CDFA28], v4);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_25132B754(0, &qword_27F42B300, MEMORY[0x277D10E70], v4);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v5[7]);
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = (a2 + v5[8]);
  sub_25132B850(a1, &v16);
  sub_25133F114();
  sub_25132B8AC(&qword_280DE6F58, MEMORY[0x277D10F38]);

  v12 = sub_25133F304();
  v14 = v13;

  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_25132960C()
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25133F154();
}

uint64_t sub_2513296C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25133F2A4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ArticleContentConfigurationProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArticleContentConfigurationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2513297E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v5 = *(a2 + 88);
  v7 = type metadata accessor for ArticleContentConfigurationProvider();

  return MEMORY[0x282169C78](a1, v7, a3);
}

void (*sub_25132983C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2513289EC();
  return sub_2513298AC;
}

void sub_2513298AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2513298F4@<X0>(void *a1@<X8>)
{
  v2 = sub_25133F204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25133F1A4();
  sub_25133F1F4();
  (*(v3 + 8))(v7, v2);
  if (v12)
  {
    sub_251327E68(&v11, v13);
    sub_251327E68(v13, &v11);
    sub_25132B7B8();
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v10[1];
      *a1 = v10[0];
      a1[1] = v9;
      return result;
    }
  }

  else
  {
    result = sub_25132B6C0(&v11, sub_25132B720);
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t sub_251329A44()
{
  v1 = *v0;
  v2 = sub_25133F274();
  v60 = *(v2 - 8);
  v3 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v59 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v7);
  v58 = &v54[-v8];
  v9 = sub_25133F204();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = v1;
  v16 = *(v1 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v13, v19);
  v21 = &v54[-v20];
  v62 = v0;
  sub_2513298F4(v65);
  v22 = *(&v65[0] + 1);
  if (*(&v65[0] + 1))
  {
    v59 = v17;
    v56 = v2;
    v23 = *&v65[0];
    v24 = *(v61 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler + 8);
    (*(v24 + 8))(v16, v24);
    sub_25133F1A4();
    v25 = sub_25133F1D4();
    v57 = *(v10 + 8);
    v57(v15, v9);
    (*(v24 + 16))(&v63, v23, v22, v25, v16, v24);

    if (v64)
    {
      sub_25132AF18(&v63, v65);
      sub_25132A6B0(v65);
      sub_25133F1A4();
      v26 = sub_25133F1E4();
      v57(v15, v9);
      sub_25132A0B8(v65, v26);

      (*(v24 + 32))(v65, v16, v24);
      __swift_destroy_boxed_opaque_existential_1(v65);
      return (*(v59 + 1))(v21, v16);
    }

    else
    {
      v57 = v9;
      sub_25132B6C0(&v63, sub_25132ADA8);
      v39 = v58;
      sub_25133F244();

      v40 = sub_25133F264();
      v41 = sub_25133F994();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v59;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v55 = v41;
        v45 = v44;
        v46 = swift_slowAlloc();
        *&v65[0] = v46;
        *v45 = 136315394;
        v47 = sub_25133FD74();
        v49 = v40;
        v50 = sub_25132F394(v47, v48, v65);

        *(v45 + 4) = v50;
        *(v45 + 12) = 2080;
        sub_25133F1A4();
        v51 = sub_25133F764();
        v53 = sub_25132F394(v51, v52, v65);

        *(v45 + 14) = v53;
        _os_log_impl(&dword_251318000, v49, v55, "[%s]: Received tap for article without underlying article: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253072C40](v46, -1, -1);
        MEMORY[0x253072C40](v45, -1, -1);
      }

      else
      {
      }

      (*(v60 + 8))(v39, v56);
      return (*(v43 + 1))(v21, v16);
    }
  }

  else
  {
    v28 = v59;
    sub_25133F244();

    v29 = sub_25133F264();
    v30 = sub_25133F994();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v65[0] = v32;
      *v31 = 136315394;
      v33 = sub_25133FD74();
      v35 = sub_25132F394(v33, v34, v65);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      sub_25133F1A4();
      v36 = sub_25133F764();
      v38 = sub_25132F394(v36, v37, v65);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_251318000, v29, v30, "[%s]: Received tap for article without identifier: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v32, -1, -1);
      MEMORY[0x253072C40](v31, -1, -1);
    }

    return (*(v60 + 8))(v28, v2);
  }
}

void sub_25132A0B8(void *a1, void *a2)
{
  v61 = a2;
  v4 = *v2;
  v5 = sub_25133F274();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v60 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_25133F204();
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v62, v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v4;
  v15 = *(v4 + class metadata base offset for ArticleContentConfigurationProvider.ActionHandler);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v12, v18);
  v20 = &v57 - v19;
  v22 = *(v21 + 8);
  (*(v22 + 8))(v15, v22);
  v23 = a1[3];
  v24 = a1[5];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = (*(v24 + 8))(v23, v24);
  v27 = v26;
  sub_25133F1A4();
  v28 = sub_25133F1D4();
  (*(v9 + 8))(v14, v62);
  v29 = (*(v22 + 24))(v25, v27, v28, v15, v22);

  (*(v16 + 8))(v20, v15);
  if (v29)
  {
    v30 = v63[3];
    v31 = v63[5];
    __swift_project_boxed_opaque_existential_1(v63, v30);
    v32 = (*(v31 + 16))(v30, v31);
    v34 = v33;
    v35 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());
    v36 = HealthArticleViewController.init(title:components:)(v32, v34, v29);
    v37 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
    [v37 setDelegate_];
    [v37 setModalPresentationStyle_];
    v38 = [v61 navigationController];
    if (v38)
    {
      v39 = v38;
      [v38 presentViewController:v37 animated:1 completion:0];
    }
  }

  else
  {
    v41 = v58;
    v40 = v59;
    v42 = v57;
    v43 = v60;
    sub_25133F244();
    sub_25132B608(v63, v65);
    v44 = sub_25133F264();
    v45 = sub_25133F994();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v46 = 136446466;
      v68 = v40;
      swift_getMetatypeMetadata();
      v48 = sub_25133F764();
      v50 = sub_25132F394(v48, v49, &v64);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = v66;
      v52 = v67;
      __swift_project_boxed_opaque_existential_1(v65, v66);
      v53 = (*(v52 + 8))(v51, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(v65);
      v56 = sub_25132F394(v53, v55, &v64);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_251318000, v44, v45, "[%{public}s] No article components were found in presentArticle using identifier %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253072C40](v47, -1, -1);
      MEMORY[0x253072C40](v46, -1, -1);

      (*(v42 + 8))(v43, v41);
    }

    else
    {

      (*(v42 + 8))(v43, v41);
      __swift_destroy_boxed_opaque_existential_1(v65);
    }
  }
}

uint64_t sub_25132A634@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_25133F144();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_25132A6B0(uint64_t a1)
{
  v48 = *v1;
  v3 = sub_25133F274();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25133F0C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25133F204();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25132B608(a1, v50);
  sub_25133F1A4();
  v20 = sub_25133F1E4();
  (*(v15 + 8))(v19, v14);
  v21 = [v20 traitCollection];

  sub_25133FA04();
  ArticleTapAnalyticsEvent.init(article:articleLocation:)(v50, v13, &v53);
  v22 = v53;
  v23 = v54;
  v24 = v55;
  v25 = v56;
  sub_25133F254();
  v26 = v22;

  v27 = v24;
  v28 = v25;
  v49 = v8;
  v29 = sub_25133F264();
  v30 = sub_25133F9B4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v47 = v4;
    v32 = v31;
    v33 = swift_slowAlloc();
    v46 = v3;
    v34 = v33;
    v53 = v33;
    *v32 = 136446466;
    v50[0] = v48;
    swift_getMetatypeMetadata();
    v35 = sub_25133F764();
    v37 = sub_25132F394(v35, v36, &v53);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v50[0] = v26;
    v50[1] = v23;
    v50[2] = v27;
    v51 = v28;
    v38 = v26;

    v39 = v27;
    v40 = v28;
    v41 = sub_25133F764();
    v43 = sub_25132F394(v41, v42, &v53);

    *(v32 + 14) = v43;
    _os_log_impl(&dword_251318000, v29, v30, "[%{public}s]: Submitting article tap analytics for: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253072C40](v34, -1, -1);
    MEMORY[0x253072C40](v32, -1, -1);

    (*(v47 + 8))(v49, v46);
  }

  else
  {

    (*(v4 + 8))(v49, v3);
  }

  v53 = v26;
  v54 = v23;
  v55 = v27;
  v56 = v28;
  v44 = sub_25133F054();
  v45 = sub_25133F044();
  v51 = v44;
  v52 = MEMORY[0x277D10CD0];
  v50[0] = v45;
  sub_25132B66C();
  sub_25133F064();
  __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t ArticleContentConfigurationProvider.ActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return ArticleContentConfigurationProvider.ActionHandler.init(content:)(a1);
}

uint64_t ArticleContentConfigurationProvider.ActionHandler.init(content:)(uint64_t a1)
{
  v2 = sub_25133F204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = sub_25133F1B4();
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t ArticleContentConfigurationProvider.ActionHandler.__deallocating_deinit()
{
  v0 = _s16HealthArticlesUI35ArticleContentConfigurationProviderC13ActionHandlerCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_25132AC74()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_25132ACA8()
{
  if (!qword_280DE6F60[0])
  {
    v0 = sub_25133F0E4();
    if (!v1)
    {
      atomic_store(v0, qword_280DE6F60);
    }
  }
}

void sub_25132ACF8()
{
  if (!qword_280DE6E90)
  {
    type metadata accessor for ArticleTileView();
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView);
    v0 = sub_25133F414();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E90);
    }
  }
}

unint64_t sub_25132ADDC()
{
  result = qword_27F42B2C8;
  if (!qword_27F42B2C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B2C8);
  }

  return result;
}

void sub_25132AE48()
{
  if (!qword_27F42B2D0)
  {
    v0 = sub_25133F414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B2D0);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_25132AF18(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_25132AF40()
{
  if (!qword_280DE6E98)
  {
    type metadata accessor for ArticleTileView();
    sub_25133F164();
    sub_25132B8AC(&qword_280DE7088, type metadata accessor for ArticleTileView);
    sub_25132B8AC(&qword_280DE6F50, MEMORY[0x277D11038]);
    v0 = sub_25133F414();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE6E98);
    }
  }
}

unint64_t sub_25132B080()
{
  result = qword_280DE72A8;
  if (!qword_280DE72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72A8);
  }

  return result;
}

unint64_t sub_25132B0D8()
{
  result = qword_280DE7298;
  if (!qword_280DE7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE7298);
  }

  return result;
}

unint64_t sub_25132B130()
{
  result = qword_280DE72A0;
  if (!qword_280DE72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72A0);
  }

  return result;
}

uint64_t sub_25132B1A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25132B1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25132B4B0()
{
  result = qword_27F42B2E0;
  if (!qword_27F42B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2E0);
  }

  return result;
}

unint64_t sub_25132B508()
{
  result = qword_280DE72B8;
  if (!qword_280DE72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72B8);
  }

  return result;
}

unint64_t sub_25132B560()
{
  result = qword_280DE72C0;
  if (!qword_280DE72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72C0);
  }

  return result;
}

unint64_t sub_25132B5B4()
{
  result = qword_280DE72B0;
  if (!qword_280DE72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE72B0);
  }

  return result;
}

uint64_t sub_25132B608(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25132B66C()
{
  result = qword_27F42B2E8;
  if (!qword_27F42B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B2E8);
  }

  return result;
}

uint64_t sub_25132B6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25132B754(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25132B7B8()
{
  result = qword_27F42B2F8;
  if (!qword_27F42B2F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F42B2F8);
  }

  return result;
}

uint64_t sub_25132B8AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25132B92C(uint64_t a1, uint64_t a2)
{
  sub_25132BAF4(a1, a2);
  v3 = [v2 image];
  if (v3)
  {
    v15 = v3;
    [v3 size];
    if (v5 == 0.0 && v4 == 0.0)
    {
    }

    else
    {
      [v15 size];
      v7 = v6;
      [v15 size];
      v9 = v7 / v8;
      v10 = [v2 widthAnchor];
      v11 = [v2 heightAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 multiplier:v9];

      v13 = sub_25133F724();
      [v12 setIdentifier_];

      type metadata accessor for UILayoutPriority(0);
      sub_25132BD58();
      sub_25133F294();
      LODWORD(v14) = v16;
      [v12 setPriority_];
      [v12 setActive_];
    }
  }
}

void sub_25132BAF4(uint64_t a1, uint64_t a2)
{
  v3 = [v2 constraints];
  sub_25131C1BC();
  v4 = sub_25133F854();

  if (v4 >> 62)
  {
LABEL_24:
    v5 = sub_25133FB54();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_25:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253072420](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v17 = v7;
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_25133F8F4();
    sub_25133F8E4();
    sub_25133F894();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v9 = [v17 identifier];
    if (!v9)
    {

      goto LABEL_5;
    }

    v10 = v9;
    v11 = sub_25133F754();
    v13 = v12;

    if (v11 == a1 && v13 == a2)
    {
      break;
    }

    v14 = sub_25133FCB4();

    if (v14)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_25;
    }
  }

LABEL_19:

  [v17 setActive_];
}

unint64_t sub_25132BD58()
{
  result = qword_280DE7290;
  if (!qword_280DE7290)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE7290);
  }

  return result;
}

uint64_t sub_25132BDC8(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 layoutMarginsGuide];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [a1 leftAnchor];
  v14 = [a2 layoutMarginsGuide];
  v15 = [v14 leftAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [a2 layoutMarginsGuide];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [a1 rightAnchor];
  v22 = [a2 layoutMarginsGuide];
  v23 = [v22 rightAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  if ((a4 & 1) == 0)
  {
    v25 = *&a3;
    v26 = [a1 heightAnchor];
    v27 = [v26 constraintEqualToConstant_];

    LODWORD(v28) = 1144750080;
    MEMORY[0x2530720B0]([v27 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

uint64_t sub_25132C0DC(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [a1 leftAnchor];
  v13 = [a2 layoutMarginsGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v8 + 40) = v15;
  v16 = [a1 bottomAnchor];
  v17 = [a2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v8 + 48) = v18;
  v19 = [a1 rightAnchor];
  v20 = [a2 layoutMarginsGuide];
  v21 = [v20 rightAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v8 + 56) = v22;
  if ((a4 & 1) == 0)
  {
    v23 = *&a3;
    v24 = [a1 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    LODWORD(v26) = 1144750080;
    MEMORY[0x2530720B0]([v25 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

uint64_t sub_25132C3C0(void *a1, void *a2, uint64_t a3, char a4)
{
  sub_251327F10();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_251341AB0;
  v9 = [a1 topAnchor];
  v10 = [a2 topAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v8 + 32) = v11;
  v12 = [a1 leftAnchor];
  v13 = [a2 leftAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v8 + 40) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [a2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v8 + 48) = v17;
  v18 = [a1 rightAnchor];
  v19 = [a2 rightAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v8 + 56) = v20;
  if ((a4 & 1) == 0)
  {
    v21 = *&a3;
    v22 = [a1 heightAnchor];
    v23 = [v22 constraintEqualToConstant_];

    LODWORD(v24) = 1144750080;
    MEMORY[0x2530720B0]([v23 setPriority_]);
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25133F864();
    }

    sub_25133F874();
  }

  return v8;
}

unint64_t sub_25132C69C()
{
  result = qword_27F42B308;
  if (!qword_27F42B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B308);
  }

  return result;
}

unint64_t sub_25132C6F4()
{
  result = qword_27F42B310;
  if (!qword_27F42B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B310);
  }

  return result;
}

unint64_t sub_25132C758()
{
  result = qword_27F42B318;
  if (!qword_27F42B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B318);
  }

  return result;
}

unint64_t sub_25132C7B0()
{
  result = qword_27F42B320;
  if (!qword_27F42B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B320);
  }

  return result;
}

BOOL sub_25132C848(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25132C878@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_25132C8A4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for MovementVisibilityState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MovementVisibilityState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

id sub_25132CBCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_25132CC24(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints] = v9;
  v10 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setContentMode_];
  [v11 setClipsToBounds_];

  [v11 setImage_];
  *&v4[v10] = v11;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for ImageView();
  v12 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setPreservesSuperviewLayoutMargins_];
  v13 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  [v12 addSubview_];
  v14 = *&v12[v13];
  v15 = sub_25132BDC8(v14, v12, 0, 1);

  v16 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints;
  v17 = *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints];
  *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints] = v15;

  v18 = *&v12[v13];
  v19 = sub_25132C3C0(v18, v12, 0, 1);

  v20 = *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints];
  *&v12[OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints] = v19;

  v21 = objc_opt_self();
  v22 = *&v12[v16];
  sub_25131C1BC();

  v23 = sub_25133F844();

  [v21 activateConstraints_];

  return v12;
}

void sub_25132CFC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView);
  [v5 setImage_];
  sub_25132B92C(0xD000000000000043, 0x8000000251342FD0);
  v6 = objc_opt_self();
  sub_25131C1BC();
  v7 = (a2 & 1) == 0;
  if (a2)
  {
    v8 = 3.0;
  }

  else
  {
    v8 = 0.0;
  }

  if (a2)
  {
    v9 = &OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints;
  }

  v10 = *v9;
  v11 = *(v3 + v10);
  if (v7)
  {
    v12 = &OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints;
  }

  else
  {
    v12 = &OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints;
  }

  v13 = *(v3 + v10);

  v14 = sub_25133F844();

  [v6 deactivateConstraints_];

  v15 = *(v3 + *v12);

  v16 = sub_25133F844();

  [v6 activateConstraints_];

  v17 = [v5 layer];
  [v17 setCornerRadius_];
}

id sub_25132D148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25132D1FC()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_insetConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16HealthArticlesUI9ImageView_edgeToEdgeConstraints) = v1;
  v2 = OBJC_IVAR____TtC16HealthArticlesUI9ImageView_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setContentMode_];
  [v3 setClipsToBounds_];

  [v3 setImage_];
  *(v0 + v2) = v3;
  sub_25133FC14();
  __break(1u);
}

id sub_25132D310()
{
  v1 = OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView;
  v2 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView];
  }

  else
  {
    v4 = sub_25132D5B8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_25132D374()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text + 8);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes);
    if (v2 != 7)
    {
      v3 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text);
      v5 = *(v0 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes);

      sub_25131C1AC(v2);
      sub_25132D400(v3, v1, &v5);

      return sub_25131BE80(v2);
    }
  }

  return result;
}

void sub_25132D400(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = v3;
  v5 = *a3;
  v6 = &v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text];
  v7 = *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text + 8];
  *v6 = a1;
  *(v6 + 1) = a2;

  v8 = *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes];
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes] = v5;
  sub_25131BE70(v5);
  sub_25131BE80(v8);
  v9 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v9);

  v10 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v11 = sub_25133F724();
  type metadata accessor for Key(0);
  sub_25131DE90();
  v12 = sub_25133F6E4();

  v14 = [v10 initWithString:v11 attributes:v12];

  v13 = sub_25132D310();
  [v13 setAttributedText_];

  [v4 setNeedsLayout];
}

double sub_25132D568()
{
  [v0 layoutMargins];
  v2 = v1;
  [v0 layoutMargins];
  return v2;
}

id sub_25132D5B8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75C40]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsFontForContentSizeCategory_];
  [v2 setBackgroundColor_];
  v3 = v2;
  [v3 setScrollEnabled_];
  [v3 setUserInteractionEnabled_];

  [v3 setEditable_];
  v4 = [a1 effectiveUserInterfaceLayoutDirection];
  if (v4 == 1)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = -5.0;
  }

  if (v4 == 1)
  {
    v6 = -5.0;
  }

  else
  {
    v6 = 5.0;
  }

  [v3 setContentInset_];

  [v3 setTextContainerInset_];
  [v3 setAccessibilityTraits_];
  return v3;
}

void *sub_25132D704(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView] = 0;
  v9 = &v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_text];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView_attributes] = 7;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for DynamicHeightTextView();
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 setPreservesSuperviewLayoutMargins_];
  (*((*MEMORY[0x277D85000] & *v10) + 0xC8))(v11);
  [v10 setLayoutMargins_];
  v12 = sub_25132D310();
  [v10 addSubview_];

  v13 = objc_opt_self();
  v14 = *(v10 + OBJC_IVAR____TtC16HealthArticlesUI21DynamicHeightTextView____lazy_storage___textView);
  sub_25132BDC8(v14, v10, 0, 1);

  sub_25131C1BC();
  v15 = sub_25133F844();

  [v13 activateConstraints_];

  sub_25131C208();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_251340BD0;
  v17 = sub_25133F2B4();
  v18 = MEMORY[0x277D74DB8];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x2530722E0](v16, sel_preferredContentSizeCategoryDidChange);

  swift_unknownObjectRelease();

  return v10;
}

id sub_25132DB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicHeightTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HealthArticlesUI::HealthArticleView __swiftcall HealthArticleView.init(title:components:)(Swift::String title, Swift::OpaquePointer components)
{
  *v2 = title;
  *(v2 + 16) = components;
  result.title = title;
  result.components = components;
  return result;
}

uint64_t HealthArticleView.init(articleProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id HealthArticleView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());

  v5 = HealthArticleViewController.init(title:components:)(v1, v2, v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];

  return v6;
}

unint64_t sub_25132DD7C()
{
  result = qword_27F42B358;
  if (!qword_27F42B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B358);
  }

  return result;
}

id sub_25132DDD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for HealthArticleViewController());

  v5 = HealthArticleViewController.init(title:components:)(v1, v2, v3);
  v6 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];

  return v6;
}

uint64_t sub_25132DEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25132E068();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25132DF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25132E068();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25132DF94()
{
  sub_25132E068();
  sub_25133F4A4();
  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25132DFD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25132E018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25132E068()
{
  result = qword_27F42B360;
  if (!qword_27F42B360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F42B360);
  }

  return result;
}

unint64_t HealthArticleTextAttributes.textAttributes.getter()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    switch(v1)
    {
      case 0:
        v27 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
        LODWORD(v28) = 1045220557;
        [v27 setHyphenationFactor_];
        [v27 setLineBreakStrategy_];
        sub_25132E71C();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_251341E10;
        v30 = *MEMORY[0x277D740A8];
        *(inited + 32) = *MEMORY[0x277D740A8];
        sub_251322098(0, &qword_280DE7278, 0x277D74300);
        v31 = *MEMORY[0x277D769A8];
        v32 = v30;
        v33 = sub_25133FA54();
        v34 = *MEMORY[0x277D740C0];
        *(inited + 40) = v33;
        *(inited + 48) = v34;
        v35 = objc_opt_self();
        v36 = v34;
        v37 = [v35 labelColor];
        v38 = *MEMORY[0x277D74118];
        *(inited + 56) = v37;
        *(inited + 64) = v38;
        *(inited + 72) = v27;
        v39 = v38;
        v40 = sub_25132F924(inited);
        swift_setDeallocating();
        sub_2513303E0(0, &qword_27F42B190);
LABEL_19:
        swift_arrayDestroy();
        goto LABEL_20;
      case 1:
        sub_25132E71C();
        v2 = swift_initStackObject();
        *(v2 + 16) = xmmword_251341600;
        v57 = *MEMORY[0x277D740A8];
        *(v2 + 32) = *MEMORY[0x277D740A8];
        sub_251322098(0, &qword_280DE7278, 0x277D74300);
        v58 = *MEMORY[0x277D76A08];
        v59 = v57;
        v60 = sub_25133FA54();
        v61 = *MEMORY[0x277D740C0];
        *(v2 + 40) = v60;
        *(v2 + 48) = v61;
        v62 = objc_opt_self();
        v63 = v61;
        v11 = [v62 labelColor];
        goto LABEL_18;
      case 2:
        sub_25132E71C();
        v2 = swift_initStackObject();
        *(v2 + 16) = xmmword_251341600;
        v12 = *MEMORY[0x277D740A8];
        *(v2 + 32) = *MEMORY[0x277D740A8];
        sub_251322098(0, &qword_280DE7278, 0x277D74300);
        v13 = *MEMORY[0x277D76A20];
        v14 = v12;
        v15 = sub_25133FA54();
        v16 = *MEMORY[0x277D740C0];
        *(v2 + 40) = v15;
        *(v2 + 48) = v16;
        v17 = objc_opt_self();
        v18 = v16;
        v11 = [v17 labelColor];
        goto LABEL_18;
    }
  }

  else if (v1 > 4)
  {
    if (v1 == 5)
    {
      sub_25132E71C();
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v49 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v50 = objc_opt_self();
      v51 = *MEMORY[0x277D76938];
      v52 = v49;
      v53 = [v50 preferredFontForTextStyle_];
      v54 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v53;
      *(v2 + 48) = v54;
      v55 = objc_opt_self();
      v56 = v54;
      v11 = [v55 secondaryLabelColor];
      goto LABEL_18;
    }

    if (v1 == 6)
    {
      sub_25132E71C();
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v19 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v20 = objc_opt_self();
      v21 = *MEMORY[0x277D76918];
      v22 = v19;
      v23 = [v20 preferredFontForTextStyle_];
      v24 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v23;
      *(v2 + 48) = v24;
      v25 = objc_opt_self();
      v26 = v24;
      v11 = [v25 systemBlueColor];
      goto LABEL_18;
    }
  }

  else
  {
    if (v1 == 3)
    {
      sub_25132E71C();
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v41 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v42 = objc_opt_self();
      v43 = *MEMORY[0x277D76918];
      v44 = v41;
      v45 = [v42 preferredFontForTextStyle_];
      v46 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v45;
      *(v2 + 48) = v46;
      v47 = objc_opt_self();
      v48 = v46;
      v11 = [v47 labelColor];
      goto LABEL_18;
    }

    if (v1 == 4)
    {
      sub_25132E71C();
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_251341600;
      v3 = *MEMORY[0x277D740A8];
      *(v2 + 32) = *MEMORY[0x277D740A8];
      v4 = objc_opt_self();
      v5 = *MEMORY[0x277D76918];
      v6 = v3;
      v7 = [v4 preferredFontForTextStyle_];
      v8 = *MEMORY[0x277D740C0];
      *(v2 + 40) = v7;
      *(v2 + 48) = v8;
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 whiteColor];
LABEL_18:
      *(v2 + 56) = v11;
      v40 = sub_25132F924(v2);
      swift_setDeallocating();
      sub_2513303E0(0, &qword_27F42B190);
      goto LABEL_19;
    }
  }

  v40 = *v0;
LABEL_20:
  sub_25131BE70(v1);
  return v40;
}

void sub_25132E71C()
{
  if (!qword_27F42B188)
  {
    sub_2513303E0(255, &qword_27F42B190);
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B188);
    }
  }
}

uint64_t sub_25132E788(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330284(0, &qword_27F42B390);
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_251323A54((v26 + 8), v24);
    sub_251323A54(v24, v26);
    v14 = *(v1 + 40);
    sub_25133F754();
    sub_25133FCF4();
    sub_25133F7B4();
    v15 = sub_25133FD24();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_251323A54(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25132EA44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330448();
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v25 = *(*(a1 + 56) + v11);
    sub_2513304E8();
    v13 = v12;

    swift_dynamicCast();
    sub_251323A54((v26 + 8), v24);
    sub_251323A54(v24, v26);
    v14 = *(v1 + 40);
    sub_25133F754();
    sub_25133FCF4();
    sub_25133F7B4();
    v15 = sub_25133FD24();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_251323A54(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25132ECE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_251330230(0, &qword_27F42B380);
    v1 = sub_25133FC54();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = (v8 << 10) | (16 * __clz(__rbit64(v4)));
    v13 = (*(a1 + 48) + v12);
    v14 = v13[1];
    v15 = (*(a1 + 56) + v12);
    v17 = *v15;
    v16 = v15[1];
    *&v35[0] = *v13;
    *(&v35[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_251323A54(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_251323A54(v34, v35);
    v18 = *(v1 + 40);
    result = sub_25133FB74();
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v6 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v6 + 8 * v21);
        if (v25 != -1)
        {
          v9 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v20) & ~*(v6 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 40 * v9;
    *v10 = v27;
    *(v10 + 16) = v28;
    *(v10 + 32) = v29;
    result = sub_251323A54(v35, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t HealthArticleTextAttributes.attributeContainer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_25133F274() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *v1;
  v4 = HealthArticleTextAttributes.textAttributes.getter();
  sub_25132E788(v4);

  swift_getKeyPath();
  sub_25133EEC4();
  sub_251330320(&qword_27F42B128, MEMORY[0x277D74A38]);
  sub_25133EF84();
  v5 = sub_25133EF74();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_25132F364@<X0>(uint64_t *a1@<X8>)
{
  sub_25133EED4();
  result = sub_25133EEC4();
  *a1 = result;
  return result;
}

uint64_t sub_25132F394(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25132F460(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251330688(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25132F460(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25132F56C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25133FBB4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25132F56C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25132F5B8(a1, a2);
  sub_25132F6E8(&unk_28635DA10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25132F5B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25132F7D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25133FBB4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25133F7E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25132F7D4(v10, 0);
        result = sub_25133FB84();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25132F6E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25132F83C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25132F7D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2513306E4();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25132F83C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2513306E4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25132F924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330284(0, &qword_27F42B2A8);
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_251328050(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FA24()
{
  result = qword_27F42B368;
  if (!qword_27F42B368)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27F42B368);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthArticlesUI0A21ArticleTextAttributesO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25132FA84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25132FAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

void *sub_25132FB30(void *result, int a2)
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

unint64_t sub_25132FB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330230(0, &qword_27F42B370);
    v3 = sub_25133FC54();
    v4 = a1 + 32;

    while (1)
    {
      sub_251330044(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_251326E24(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_251323A54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FC88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2513305EC();
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_251328050(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FD68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330540();
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_251328050(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330284(0, &qword_27F42B390);
    v3 = sub_25133FC54();
    v4 = a1 + 32;

    while (1)
    {
      sub_251330368(v4, &v11);
      v5 = v11;
      result = sub_251328050(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251323A54(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25132FF64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251327D84();
    v3 = sub_25133FC54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_251326F2C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_251330044(uint64_t a1, uint64_t a2)
{
  sub_2513300A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2513300A8()
{
  if (!qword_27F42B378)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F42B378);
    }
  }
}

unint64_t sub_25133010C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_251330230(0, &qword_27F42B388);
    v3 = sub_25133FC54();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_251326E24(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_251330230(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25133FC64();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251330284(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Key(255);
    sub_251330320(&qword_27F42B2B0, type metadata accessor for Key);
    v3 = sub_25133FC64();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_251330320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251330368(uint64_t a1, uint64_t a2)
{
  sub_2513303E0(0, &qword_27F42B148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2513303E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_251330448()
{
  if (!qword_27F42B398)
  {
    type metadata accessor for AttributeName(255);
    sub_251330320(&qword_27F42AEB8, type metadata accessor for AttributeName);
    v0 = sub_25133FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B398);
    }
  }
}

void sub_2513304E8()
{
  if (!qword_27F42B180)
  {
    sub_251324518();
    v0 = sub_25133F884();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B180);
    }
  }
}

void sub_251330540()
{
  if (!qword_27F42B3A0)
  {
    type metadata accessor for AttributeName(255);
    sub_2513304E8();
    sub_251330320(&qword_27F42AEB8, type metadata accessor for AttributeName);
    v0 = sub_25133FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B3A0);
    }
  }
}

void sub_2513305EC()
{
  if (!qword_27F42B3A8)
  {
    type metadata accessor for FeatureKey(255);
    sub_251330320(&qword_27F42AEC8, type metadata accessor for FeatureKey);
    v0 = sub_25133FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B3A8);
    }
  }
}

uint64_t sub_251330688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2513306E4()
{
  if (!qword_27F42B3B0)
  {
    v0 = sub_25133FCA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F42B3B0);
    }
  }
}

uint64_t static ArticleMutualExclusionPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25133FCB4();
  }
}

uint64_t sub_25133078C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_25133FCB4();
  }

  return 1;
}

uint64_t HealthArticleInformationProviding.articleAutomationIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D12788];
  v7 = sub_25133F754();
  MEMORY[0x253072050](0x656C63697472412ELL, 0xE90000000000002ELL);
  v5 = (*(a2 + 8))(a1, a2);
  MEMORY[0x253072050](v5);

  return v7;
}

uint64_t HealthArticleInformationProviding.feedItemIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8))(a2, a3);
  MEMORY[0x253072050](95, 0xE100000000000000);
  v3 = sub_25133F034();
  MEMORY[0x253072050](v3);

  return v5;
}

uint64_t get_enum_tag_for_layout_string_16HealthArticlesUI28ArticleMutualExclusionPolicyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_251330950(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2513309A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_251330A00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t ArticleTileView.ViewModel.init(title:description:backgroundImage:cellState:automationIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t ArticleTileView.init(_:cellState:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  v4 = MEMORY[0x277CDF458];
  sub_2513326D8(0, &qword_280DE6F40, sub_25132B81C, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for ArticleTileView();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  sub_2513326D8(0, &qword_280DE6F48, MEMORY[0x277CDFA28], v4);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  *(a2 + v7) = swift_getKeyPath();
  sub_2513326D8(0, &qword_27F42B300, MEMORY[0x277D10E70], v4);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v5[7]);
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[3];
  v8[2] = a1[2];
  v8[3] = v10;
  v11 = (a2 + v5[8]);
  sub_25133F114();
  sub_25133327C(&qword_280DE6F58, MEMORY[0x277D10F38]);
  result = sub_25133F304();
  *v11 = result;
  v11[1] = v13;
  return result;
}

uint64_t ArticleTileView.ViewModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArticleTileView.ViewModel.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArticleTileView.ViewModel.baseIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ArticleTileView.ViewModel.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ArticleTileView.viewModel.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleTileView() + 28));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_25132B850(v9, &v8);
}

uint64_t ArticleTileView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_25133F434();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513328F8();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2513332EC();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_25133F3D4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  sub_251333800(0, &qword_280DE6F20, sub_25133298C);
  sub_2513310BC(v1, &v13[*(v21 + 44)]);
  v22 = sub_25133327C(&qword_280DE6E40, sub_2513328F8);
  sub_25133F584();
  sub_2513337A0(v13, sub_2513328F8);
  sub_25133F424();
  v24[2] = v9;
  v24[3] = v22;
  swift_getOpaqueTypeConformance2();
  sub_25133F5C4();
  (*(v3 + 8))(v7, v2);
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_2513310BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  sub_251332CF8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v104 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251332CD0(0);
  v103 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v110 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332C44(0);
  v109 = v11;
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v112 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v107 = &v96 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v111 = &v96 - v20;
  sub_251332A94(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A6C(0);
  *&v102 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26, v28);
  v101 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A38(0);
  v100 = v30;
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v108 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v99 = &v96 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v105 = &v96 - v39;
  sub_25133F8F4();
  v106 = sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v40 = type metadata accessor for ArticleTileView();
  v41 = (a1 + *(v40 + 28));
  v42 = v41[1];
  v43 = v41[3];
  v121 = v41[2];
  v122 = v43;
  v44 = v41[1];
  v120[0] = *v41;
  v120[1] = v44;
  v127 = v120[0];
  v128 = v42;
  v45 = v41[3];
  v129 = v121;
  v130 = v45;
  sub_25132B850(v120, v123);
  sub_251331A2C(&v127);
  v123[0] = v127;
  v123[1] = v128;
  v123[2] = v129;
  v123[3] = v130;
  sub_25132B02C(v123);
  v46 = (a1 + *(v40 + 32));
  v96 = *v46;
  v97 = v25;
  v47 = v46[1];
  sub_25133F114();
  sub_25133327C(&qword_280DE6F58, MEMORY[0x277D10F38]);
  sub_25133F314();
  swift_getKeyPath();
  v98 = a1;
  sub_25133F324();

  v118 = v127;
  v119 = v128;
  sub_2513336E8(0, &qword_280DE6E30, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  v49 = v48;
  MEMORY[0x253071EC0](&v117);

  sub_25133F314();
  swift_getKeyPath();
  sub_25133F324();

  v115 = v124;
  v116 = v125;
  MEMORY[0x253071EC0](&v114, v49);

  sub_25133F664();
  sub_25133F2E4();
  v50 = v101;
  sub_251333680(v97, v101, sub_251332A94);
  v51 = (v50 + *(v102 + 36));
  v52 = v125;
  *v51 = v124;
  v51[1] = v52;
  v51[2] = v126;
  v53 = v50;
  v54 = v99;
  sub_251333680(v53, v99, sub_251332A6C);
  *(v54 + *(v100 + 36)) = 0;
  v55 = v105;
  sub_251333680(v54, v105, sub_251332A38);
  v56 = v41[1];
  v127 = *v41;
  v128 = v56;
  v57 = v41[3];
  v129 = v41[2];
  v130 = v57;
  v58 = sub_25133F3C4();
  v59 = v104;
  *v104 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  sub_251333800(0, &qword_280DE6F30, sub_251332D8C);
  sub_251331C64(&v127, v98, v59 + *(v60 + 44));
  sub_2513336E8(0, &qword_27F42B3E0, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v102 = xmmword_251341600;
  *(inited + 16) = xmmword_251341600;
  LOBYTE(v49) = sub_25133F504();
  *(inited + 32) = v49;
  v62 = sub_25133F514();
  *(inited + 33) = v62;
  v63 = sub_25133F534();
  sub_25133F534();
  if (sub_25133F534() != v49)
  {
    v63 = sub_25133F534();
  }

  sub_25133F534();
  if (sub_25133F534() != v62)
  {
    v63 = sub_25133F534();
  }

  v64 = v110;
  sub_25133F2C4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_251333738(v59, v64, sub_251332CF8);
  v73 = v64 + *(v103 + 36);
  *v73 = v63;
  *(v73 + 8) = v66;
  *(v73 + 16) = v68;
  *(v73 + 24) = v70;
  *(v73 + 32) = v72;
  *(v73 + 40) = 0;
  v74 = swift_initStackObject();
  *(v74 + 16) = v102;
  v75 = sub_25133F524();
  *(v74 + 32) = v75;
  v76 = sub_25133F544();
  *(v74 + 33) = v76;
  v77 = sub_25133F534();
  sub_25133F534();
  if (sub_25133F534() != v75)
  {
    v77 = sub_25133F534();
  }

  sub_25133F534();
  if (sub_25133F534() != v76)
  {
    v77 = sub_25133F534();
  }

  sub_25133F2C4();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v107;
  sub_251333738(v64, v107, sub_251332CD0);
  v87 = v86 + *(v109 + 36);
  *v87 = v77;
  *(v87 + 8) = v79;
  *(v87 + 16) = v81;
  *(v87 + 24) = v83;
  *(v87 + 32) = v85;
  *(v87 + 40) = 0;
  v88 = v111;
  sub_251333738(v86, v111, sub_251332C44);
  v89 = v108;
  sub_251333944(v55, v108, sub_251332A38);
  v90 = v112;
  sub_25133386C(v88, v112, sub_251332C44);
  v91 = v113;
  sub_251333944(v89, v113, sub_251332A38);
  sub_2513329C0();
  v93 = v92;
  sub_25133386C(v90, v91 + *(v92 + 48), sub_251332C44);
  v94 = v91 + *(v93 + 64);
  *v94 = 0;
  *(v94 + 8) = 1;
  sub_2513337A0(v88, sub_251332C44);
  sub_2513338E4(v55, sub_251332A38);
  sub_2513337A0(v90, sub_251332C44);
  sub_2513338E4(v89, sub_251332A38);
}

uint64_t sub_251331A2C(uint64_t a1)
{
  v3 = sub_25133F604();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332A94(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  sub_25133F5F4();
  (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v3);
  v15 = sub_25133F614();

  (*(v4 + 8))(v8, v3);
  v19[3] = v15;
  v19[4] = 0;
  v20 = 257;
  v16 = v1 + *(type metadata accessor for ArticleTileView() + 28);
  v17 = *(v16 + 56);
  v19[1] = *(v16 + 48);
  v19[2] = v17;

  MEMORY[0x253072050](0x6567616D492ELL, 0xE600000000000000);
  sub_251332B3C();
  sub_2513339AC();
  sub_25133F5D4();

  sub_25133F344();
  return sub_2513338E4(v13, sub_251332A94);
}

uint64_t sub_251331C64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251332E28();
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - v13;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v14 = sub_25133F3D4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  sub_251333800(0, &qword_280DE6F28, sub_251332EBC);
  sub_251331E3C(a1, a2, &v14[*(v15 + 44)]);
  sub_25133386C(v14, v11, sub_251332E28);
  sub_25133386C(v11, a3, sub_251332E28);
  sub_251332DC0();
  v17 = a3 + *(v16 + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_2513337A0(v14, sub_251332E28);
  sub_2513337A0(v11, sub_251332E28);
}

uint64_t sub_251331E3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  sub_2513332C4(0);
  v67 = v5;
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v69 = &v62 - v11;
  sub_25133300C(0);
  v64 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251332F60(0);
  v63 = v17;
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v68 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v65 = &v62 - v23;
  sub_25133F8F4();
  v66 = sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = a1[1];
  *&v74 = *a1;
  *(&v74 + 1) = v24;
  v62 = sub_2513236B4();

  v25 = sub_25133F574();
  v27 = v26;
  *&v74 = v25;
  *(&v74 + 1) = v26;
  v29 = v28 & 1;
  LOBYTE(v75) = v28 & 1;
  *(&v75 + 1) = v30;
  v31 = a2 + *(type metadata accessor for ArticleTileView() + 28);
  v32 = *(v31 + 56);
  v72 = *(v31 + 48);
  v33 = v72;
  v73 = v32;

  MEMORY[0x253072050](0x656C7469542ELL, 0xE600000000000000);
  sub_25133F5D4();

  sub_2513338D4(v25, v27, v29);

  v34 = sub_25133F564();
  KeyPath = swift_getKeyPath();
  v36 = v64;
  v37 = &v16[*(v64 + 36)];
  *v37 = KeyPath;
  v37[1] = v34;
  sub_25133311C();
  v38 = v65;
  sub_25133F5E4();
  sub_2513338E4(v16, sub_25133300C);
  LOBYTE(v34) = sub_25133F514();
  sub_25133F2C4();
  v39 = v38 + *(v63 + 36);
  *v39 = v34;
  *(v39 + 8) = v40;
  *(v39 + 16) = v41;
  *(v39 + 24) = v42;
  *(v39 + 32) = v43;
  *(v39 + 40) = 0;
  v44 = a1[3];
  *&v74 = a1[2];
  *(&v74 + 1) = v44;

  v45 = sub_25133F574();
  v47 = v46;
  *&v74 = v45;
  *(&v74 + 1) = v46;
  v49 = v48 & 1;
  LOBYTE(v75) = v48 & 1;
  *(&v75 + 1) = v50;
  v72 = v33;
  v73 = v32;

  MEMORY[0x253072050](0x706972637365442ELL, 0xEC0000006E6F6974);
  v51 = v69;
  sub_25133F5D4();

  sub_2513338D4(v45, v47, v49);

  v52 = sub_25133F554();
  v53 = swift_getKeyPath();
  v54 = (v51 + *(v36 + 36));
  *v54 = v53;
  v54[1] = v52;
  sub_25133F654();
  sub_25133F2E4();
  v55 = v68;
  v56 = (v51 + *(v67 + 36));
  v57 = v75;
  *v56 = v74;
  v56[1] = v57;
  v56[2] = v76;
  sub_25133386C(v38, v55, sub_251332F60);
  v58 = v71;
  sub_251333944(v51, v71, sub_2513332C4);
  v59 = v70;
  sub_25133386C(v55, v70, sub_251332F60);
  sub_251332EF0();
  sub_251333944(v58, v59 + *(v60 + 48), sub_2513332C4);
  sub_2513338E4(v51, sub_2513332C4);
  sub_2513337A0(v38, sub_251332F60);
  sub_2513338E4(v58, sub_2513332C4);
  sub_2513337A0(v55, sub_251332F60);
}