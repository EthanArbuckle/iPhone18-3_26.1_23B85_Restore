id EmojiForegroundLayersViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiForegroundLayersViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundLayersViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_set_5Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

uint64_t sub_249FECCF8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_249FECD58(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_249FECDC0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_249FECE84()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;

  return v4;
}

void sub_249FECEF4()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;

    *&v0[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius] = (v4 + 40.0) * 0.5;
  }
}

id sub_249FED008()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24A0214A8();
  v4 = [objc_opt_self() layoutAttributesForCellWithIndexPath_];

  v5 = v2;
  [v5 bounds];
  MidX = CGRectGetMidX(v39);
  [v5 bounds];
  MidY = CGRectGetMidY(v40);
  v8 = 195.0 / [v5 numberOfItemsInSection_];
  v9 = sub_24A0214D8();
  [v4 setSize_];
  v10 = [v5 numberOfItemsInSection_];
  if (v10 > 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius;
  v13 = *&v0[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius];
  v14 = v13 * sub_24A0214D8() / v11;
  v15 = sub_24A0214D8();
  v16 = v14 * cos(v15 * -3.14159265 / v11);
  v17 = *&v0[v12];
  v18 = v17 * sub_24A0214D8() / v11;
  v19 = sub_24A0214D8();
  v20 = MidX + v16;
  v21 = MidY + v18 * sin(v19 * -3.14159265 / v11);
  [v5 bounds];
  v22 = CGRectGetMidX(v41);
  [v5 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v42.origin.x = v24;
  v42.origin.y = v26;
  v42.size.width = v28;
  v42.size.height = v30;
  v31 = CGRectGetMidY(v42);
  v32 = 360.0 / [v5 numberOfSections];
  v33 = v32 * sub_24A0214E8() + *&v0[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle];
  if (v33 > 0.0)
  {
    v34 = v21 - v31;
    v35 = sqrt((v20 - v22) * (v20 - v22) + v34 * v34);
    v36 = atan2(v34, v20 - v22);
    v37 = __sincos_stret(v33 * 0.0174532925 + v36);
    v20 = v22 + v35 * v37.__cosval;
    v21 = v31 + v35 * v37.__sinval;
  }

  [v4 setCenter_];

  return v4;
}

id sub_249FED434(double a1, double a2, CGFloat a3, CGFloat a4)
{
  result = [v4 collectionView];
  if (result)
  {
    v8 = result;
    [result bounds];
    v12.width = v9;
    v12.height = v10;
    v13.width = a3;
    v13.height = a4;
    v11 = CGSizeEqualToSize(v12, v13);

    return !v11;
  }

  return result;
}

id EmojiSpiralLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiSpiralLayout.init()()
{
  *&v0[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiSpiralLayout();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmojiSpiralLayout.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiSpiralLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_radius] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster17EmojiSpiralLayout_startingAngle] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EmojiSpiralLayout();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EmojiSpiralLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiSpiralLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_249FED7B0()
{
  v1 = v0;
  v2 = sub_24A0214F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 collectionView];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v24 = MEMORY[0x277D84F90];
  if ([v6 numberOfSections] < 1)
  {

    return 0;
  }

  result = [v7 numberOfSections];
  v9 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_31;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = (v3 + 8);
    v12 = MEMORY[0x277D84F90];
    v13 = &off_278FC2000;
    v22 = result - 1;
    v23 = v7;
    while (1)
    {
      v14 = v13;
      if ([v7 v13[95]] < 1)
      {
        v13 = v14;
        if (v10 == v9)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      result = [v7 v14 + 638];
      v15 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        break;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v16 = 0;
      while (1)
      {
        MEMORY[0x24C20C180](v16, v10);
        v17 = sub_24A0214A8();
        v18 = [v1 layoutAttributesForItemAtIndexPath_];

        if (v18)
        {
          break;
        }

        result = (*v11)(v5, v2);
        if (v15 == v16)
        {
          goto LABEL_19;
        }

LABEL_16:
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      v19 = v18;
      MEMORY[0x24C20C470]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();

      result = (*v11)(v5, v2);
      v12 = v24;
      if (v15 != v16)
      {
        goto LABEL_16;
      }

LABEL_19:
      v9 = v22;
      v7 = v23;
      v13 = &off_278FC2000;
      if (v10 == v22)
      {
LABEL_25:

        return v12;
      }

LABEL_22:
      v20 = __OFADD__(v10++, 1);
      if (v20)
      {
        __break(1u);
        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_249FEDA9C()
{
  result = qword_27EF2E228;
  if (!qword_27EF2E228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2E228);
  }

  return result;
}

id sub_249FEDB38(double a1, double a2, double a3, double a4)
{
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ColorWellView();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setBorderWidth_];

  v11 = [v9 layer];
  v12 = [objc_opt_self() whiteColor];
  v13 = [v12 CGColor];

  [v11 setBorderColor_];
  return v9;
}

id sub_249FEDC84(void *a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ColorWellView();
  v3 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v6 setBorderWidth_];

    v7 = [v5 layer];
    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 CGColor];

    [v7 setBorderColor_];
    a1 = v9;
  }

  return v4;
}

void sub_249FEDE80()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor;
  [*(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView) setBackgroundColor_];
  v2 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor;
  [*(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView) setBackgroundColor_];
  v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E130);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A024720;
  v5 = [*(v0 + v1) CGColor];
  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v4 + 56) = v6;
  *(v4 + 32) = v5;
  v8 = [*(v0 + v2) CGColor];
  *(v4 + 88) = v7;
  *(v4 + 64) = v8;
  v9 = sub_24A0217C8();

  [v3 setColors_];
}

id sub_249FEDFD0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor;
  v10 = objc_opt_self();
  *&v4[v9] = [v10 whiteColor];
  v11 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor;
  *&v4[v11] = [v10 blackColor];
  *&v4[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorOffset] = 0;
  *&v4[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset] = 0x3FF0000000000000;
  v12 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v13 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView;
  type metadata accessor for ColorWellView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView;
  *&v4[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorTapGesture;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v17 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorTapGesture;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v18 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorPanGesture;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  v19 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorPanGesture;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  *&v4[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startLeftColorOffset] = 0;
  *&v4[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startRightColorOffset] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for GradientColorSlider();
  v20 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  sub_249FEE414();

  return v20;
}

id sub_249FEE1FC(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 whiteColor];
  v5 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor;
  *&v1[v5] = [v4 blackColor];
  *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorOffset] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset] = 0x3FF0000000000000;
  v6 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView;
  type metadata accessor for ColorWellView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v7] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView;
  *&v1[v9] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorTapGesture;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v11 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorTapGesture;
  *&v1[v11] = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  v12 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorPanGesture;
  *&v1[v12] = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  v13 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorPanGesture;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startLeftColorOffset] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startRightColorOffset] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for GradientColorSlider();
  v14 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    sub_249FEE414();
  }

  return v15;
}

id sub_249FEE414()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer];
  [v1 setCornerCurve_];
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  [v2 commit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E130);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24A024720;
  v4 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor;
  v5 = [*&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor] CGColor];
  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor;
  v9 = [*&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor] CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  v10 = sub_24A0217C8();

  [v1 setColors_];

  v11 = *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView];
  [v11 setBackgroundColor_];
  v12 = *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView];
  [v12 setBackgroundColor_];
  sub_249FEE654();
  v13 = [v0 layer];
  [v13 addSublayer_];

  [v0 addSubview_];

  return [v0 addSubview_];
}

id sub_249FEE654()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorPanGesture);
  [v1 addTarget:v0 action:sel_leftColorDidPanWithGr_];
  v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorTapGesture);
  [v2 addTarget:v0 action:sel_leftColorWasTappedWithGr_];
  v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView);
  [v3 addGestureRecognizer_];
  [v3 addGestureRecognizer_];
  v4 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorPanGesture);
  [v4 addTarget:v0 action:sel_rightColorDidPanWithGr_];
  v5 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorTapGesture);
  [v5 addTarget:v0 action:sel_rightColorWasTappedWithGr_];
  v6 = *(v0 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView);
  [v6 addGestureRecognizer_];

  return [v6 addGestureRecognizer_];
}

id sub_249FEE77C()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer];
  [v0 bounds];
  [v1 setFrame_];
  [v1 frame];
  [v1 setCornerRadius_];
  [v0 bounds];
  v4 = v3;
  [v0 bounds];
  v6 = v5 - v4;
  [*&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView] setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView];
  v8 = v6 * *&v0[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset];

  return [v7 setFrame_];
}

id sub_249FEE8D4(void *a1)
{
  result = [a1 state];
  if (result == 2)
  {
    [a1 translationInView_];
    v7 = v6 + *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startLeftColorOffset];
    v8 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView];
    [v8 bounds];
    MidX = CGRectGetMidX(v23);
    if (v7 > MidX)
    {
      v10 = v7;
    }

    else
    {
      v10 = MidX;
    }

    [v1 bounds];
    Width = CGRectGetWidth(v24);
    [v8 bounds];
    v12 = Width - CGRectGetMidX(v25);
    if (v12 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    [v8 center];
    [v8 setCenter_];
    [v8 frame];
    v15 = v14;
    [v1 bounds];
    v17 = v16;
    [v8 bounds];
    v19 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorOffset;
    *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorOffset] = v15 / (v17 - v18);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setDisableActions_];
    v21 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer];
    [v21 setStartPoint_];
    [v21 setEndPoint_];
    [v20 commit];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_249FF6FCC(*&v1[v19]);

      return swift_unknownObjectRelease();
    }
  }

  else if (result == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorView];
    [v4 center];
    *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startLeftColorOffset] = v5;

    return [v1 bringSubviewToFront_];
  }

  return result;
}

id sub_249FEEB98(void *a1)
{
  result = [a1 state];
  if (result == 2)
  {
    [a1 translationInView_];
    v7 = v6 + *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startRightColorOffset];
    v8 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView];
    [v8 bounds];
    MidX = CGRectGetMidX(v23);
    if (v7 > MidX)
    {
      v10 = v7;
    }

    else
    {
      v10 = MidX;
    }

    [v1 bounds];
    Width = CGRectGetWidth(v24);
    [v8 bounds];
    v12 = Width - CGRectGetMidX(v25);
    if (v12 >= v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    [v8 center];
    [v8 setCenter_];
    [v8 frame];
    v15 = v14;
    [v1 bounds];
    v17 = v16;
    [v8 bounds];
    v19 = OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset;
    *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset] = v15 / (v17 - v18);
    v20 = objc_opt_self();
    [v20 begin];
    [v20 setDisableActions_];
    v21 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_gradientLayer];
    [v21 setStartPoint_];
    [v21 setEndPoint_];
    [v20 commit];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_249FF7164(*&v1[v19]);

      return swift_unknownObjectRelease();
    }
  }

  else if (result == 1)
  {
    v4 = *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorView];
    [v4 center];
    *&v1[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_startRightColorOffset] = v5;

    return [v1 bringSubviewToFront_];
  }

  return result;
}

void sub_249FEEE8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a1;
    a4();
    swift_unknownObjectRelease();
  }
}

id sub_249FEEF30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_249FEF084()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for EmojiForegroundReplicatorViewController();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  v4 = sub_249FEF8E4();
  v5 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiLayer];
  v6 = [v4 CGImage];
  [v5 setContents_];

  [v4 size];
  [v5 frame];
  [v5 setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_horizontalReplicatorLayer];
  [v7 addSublayer_];
  v8 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_verticalReplicatorLayer];
  [v8 addSublayer_];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = v9;
  v11 = [v9 layer];

  [v11 addSublayer_];
  v12 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_secondaryEmojiLayer];
  v13 = [v4 CGImage];
  [v12 setContents_];

  [v4 size];
  [v12 frame];
  [v12 setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetHorizontalReplicatorLayer];
  [v14 addSublayer_];
  v15 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetVerticalReplicatorLayer];
  [v15 addSublayer_];
  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 layer];

    [v18 addSublayer_];
    sub_249FEF3CC();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_249FEF3CC()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scale] * 100.0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  v3 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiLayer];
  [v3 frame];
  [v3 setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_secondaryEmojiLayer];
  [v4 frame];
  [v4 setFrame_];
  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;

  v9 = ceil(v8 / v1);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = [v0 view];
  if (!v11)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;

  v15 = ceil(v14 / v1);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = [v0 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v60 = v2;
  [v17 bounds];
  v20 = v19;

  v21 = [v0 view];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = v21;
  v23 = v10 | 1;
  v24 = v20 * 0.5 - (v1 * ((v10 | 1) / 2 + 1) - v1 * 0.5 + (v1 * 1.8 - v1) * (((v10 | 1) / 2 + 1) + -1.0));
  [v21 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_verticalReplicatorLayer];
  [v33 setFrame_];
  v34 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_horizontalReplicatorLayer];
  [v34 setFrame_];
  [v34 setInstanceCount_];
  CATransform3DMakeTranslation(&v61, v1 * 1.8, 0.0, 0.0);
  [v34 setInstanceTransform_];
  [v33 setInstanceCount_];
  v59 = v1 * 1.8;
  CATransform3DMakeTranslation(&v61, 0.0, v1 * 1.8, 0.0);
  [v33 setInstanceTransform_];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  [v35 bounds];
  v57 = v38;
  v58 = v37;
  v40 = v39;
  v42 = v41;

  v43 = [v0 view];
  if (v43)
  {
    v44 = v43;
    v45 = v1 * 0.9;
    v46 = v42 - v1 * 0.9;
    [v43 bounds];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v55 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetHorizontalReplicatorLayer];
    [v55 setFrame_];
    v56 = *&v0[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetVerticalReplicatorLayer];
    [v56 setFrame_];
    [v55 setInstanceCount_];
    CATransform3DMakeTranslation(&v61, v59, 0.0, 0.0);
    [v55 setInstanceTransform_];
    [v56 setInstanceCount_];
    CATransform3DMakeTranslation(&v61, 0.0, v59, 0.0);
    [v56 setInstanceTransform_];
    [v60 commit];
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_249FEF8E4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v1 setOpaque_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v1 format:{100.0, 100.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_249FF0338;
  *(v4 + 24) = v3;
  v9[4] = sub_249FF0340;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_249FEA0AC;
  v9[3] = &block_descriptor_3;
  v5 = _Block_copy(v9);
  v6 = v0;

  v7 = [v2 imageWithActions_];

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

void sub_249FEFAAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24A0246F0;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  *(inited + 64) = sub_249FEA210();
  *(inited + 40) = v4;
  sub_24A020404(inited);
  swift_setDeallocating();
  sub_249FEA25C(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_24A021658();
  type metadata accessor for Key(0);
  sub_249FEA2C4();
  v7 = sub_24A021608();

  v8 = [v5 initWithString:v6 attributes:v7];

  [v8 size];
  [v8 drawInRect_];
}

void sub_249FEFC58(void *a1)
{
  v3 = [a1 state];
  if (v3 <= 2 && (v3 == 1 || v3 == 2))
  {
    [a1 scale];
    *(v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scale) = v4;

    sub_249FEF3CC();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scaleDelta) = 0x3FF0000000000000;
  }
}

id EmojiForegroundReplicatorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiForegroundReplicatorViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emoji];
  *v6 = 3113983984;
  *(v6 + 1) = 0xA400000000000000;
  *&v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_spacingFactor] = 0x3FFCCCCCCCCCCCCDLL;
  *&v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scale] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scaleDelta] = 0x3FF0000000000000;
  v7 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_secondaryEmojiLayer;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_horizontalReplicatorLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v10 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetHorizontalReplicatorLayer;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v11 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_verticalReplicatorLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v12 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetVerticalReplicatorLayer;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  *&v3[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_pinchGestureRecognizer] = 0;
  if (a2)
  {
    v13 = sub_24A021658();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for EmojiForegroundReplicatorViewController();
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id EmojiForegroundReplicatorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiForegroundReplicatorViewController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emoji];
  *v3 = 3113983984;
  *(v3 + 1) = 0xA400000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_spacingFactor] = 0x3FFCCCCCCCCCCCCDLL;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_scaleDelta] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_emojiLayer;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v5 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_secondaryEmojiLayer;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_horizontalReplicatorLayer;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetHorizontalReplicatorLayer;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_verticalReplicatorLayer;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_offsetVerticalReplicatorLayer;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CD9F48]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster39EmojiForegroundReplicatorViewController_pinchGestureRecognizer] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EmojiForegroundReplicatorViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id EmojiForegroundReplicatorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundReplicatorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249FF03C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FF0480(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = *(a1 + 128);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  v28 = *a1;
  v29 = v5;
  swift_beginAccess();
  v37 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v40 = *(v6 + 48);
  v41 = v9;
  v38 = v7;
  v39 = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v45 = *(v6 + 128);
  v43 = v11;
  v44 = v12;
  v42 = v10;
  v46[0] = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 64);
  v46[3] = *(v6 + 48);
  v46[4] = v15;
  v46[1] = v13;
  v46[2] = v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  v47 = *(v6 + 128);
  v46[6] = v17;
  v46[7] = v18;
  v46[5] = v16;
  *v6 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  *(v6 + 48) = v31;
  *(v6 + 64) = v21;
  *(v6 + 16) = v19;
  *(v6 + 32) = v20;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(v6 + 128) = v36;
  *(v6 + 96) = v23;
  *(v6 + 112) = v24;
  *(v6 + 80) = v22;
  sub_249FE1E80(&v28, v26);
  sub_249FE1E80(&v37, v26);
  sub_249FE2008(v46);
  v26[6] = v43;
  v26[7] = v44;
  v27 = v45;
  v26[2] = v39;
  v26[3] = v40;
  v26[4] = v41;
  v26[5] = v42;
  v26[0] = v37;
  v26[1] = v38;
  sub_249FF05E0(v26);
  return sub_249FE2008(&v37);
}

uint64_t sub_249FF05E0(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v5 = *(v3 + 7);
  v30 = *(v3 + 6);
  v31 = v5;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v26 = *(v3 + 2);
  v27 = v7;
  v8 = *(v3 + 3);
  v9 = *(v3 + 5);
  v28 = *(v3 + 4);
  v29 = v9;
  v10 = *(v3 + 1);
  v24 = *v3;
  v25 = v10;
  v11 = *(v3 + 7);
  v33[6] = v30;
  v33[7] = v11;
  v33[2] = v26;
  v33[3] = v8;
  v33[4] = v28;
  v33[5] = v4;
  v32 = v3[128];
  v34 = v3[128];
  v33[0] = v24;
  v33[1] = v6;
  result = sub_249FE499C(v33);
  if (result != 1)
  {
    v22[6] = v30;
    v22[7] = v31;
    v23 = v32;
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v22[5] = v29;
    v22[0] = v24;
    v22[1] = v25;
    sub_249FDE288(v22, v20);
    if (![v1 isViewLoaded])
    {
      return sub_249FE2008(&v24);
    }

    v13 = *(a1 + 112);
    v20[6] = *(a1 + 96);
    v20[7] = v13;
    v21 = *(a1 + 128);
    v14 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v14;
    v15 = *(a1 + 80);
    v20[4] = *(a1 + 64);
    v20[5] = v15;
    v16 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v16;
    if (sub_249FE499C(v20) == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = EmojiPosterConfiguration.emojis.getter();
    }

    v18 = EmojiPosterConfiguration.emojis.getter();
    sub_249FE2008(&v24);
    if (v17)
    {
      v19 = sub_24A007030(v17, v18);

      if (v19)
      {
        return result;
      }
    }

    else
    {
    }

    sub_249FF24B8();
    return sub_249FF1BCC();
  }

  return result;
}

uint64_t sub_249FF07E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_249FE1E80(v17, &v16);
}

uint64_t sub_249FF0894(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration);
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[7];
  v25 = v3[6];
  v26 = v5;
  v6 = v3[1];
  v7 = v3[3];
  v21 = v3[2];
  v22 = v7;
  v8 = v3[3];
  v9 = v3[5];
  v23 = v3[4];
  v24 = v9;
  v10 = v3[1];
  v19 = *v3;
  v20 = v10;
  v11 = v3[7];
  v28[6] = v25;
  v28[7] = v11;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v23;
  v28[5] = v4;
  v27 = *(v3 + 128);
  v29 = *(v3 + 128);
  v28[0] = v19;
  v28[1] = v6;
  v12 = a1[5];
  v3[4] = a1[4];
  v3[5] = v12;
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  *(v3 + 128) = *(a1 + 128);
  v14 = a1[3];
  v3[2] = a1[2];
  v3[3] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  sub_249FE1E80(&v19, v17);
  sub_249FE2008(v28);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_249FF05E0(v17);
  return sub_249FE2008(&v19);
}

void (*sub_249FF09AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 976) = v1;
  v5 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  *(v3 + 984) = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  *(v4 + 48) = *(v6 + 48);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  *(v4 + 128) = *(v6 + 128);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 48);
  *(v4 + 200) = *(v6 + 64);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  *(v4 + 264) = *(v6 + 128);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_249FE1E80(v4, v4 + 272);
  return sub_249FF0AB8;
}

void sub_249FF0AB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *(v2 + 976) + *(v2 + 984);
  if (a2)
  {
    v5 = *(v2 + 200);
    v6 = *(v2 + 184);
    *(v2 + 712) = *(v2 + 168);
    *(v2 + 728) = v6;
    v7 = *(v2 + 152);
    *(v2 + 808) = *(v2 + 264);
    v8 = *(v2 + 248);
    *(v2 + 776) = *(v2 + 232);
    *(v2 + 792) = v8;
    v9 = *(v2 + 216);
    *(v2 + 744) = v5;
    *(v2 + 760) = v9;
    *(v2 + 680) = *(v2 + 136);
    *(v2 + 696) = v7;
    *(v2 + 544) = *v4;
    v10 = *(v4 + 16);
    v11 = *(v4 + 32);
    v12 = *(v4 + 64);
    *(v2 + 592) = *(v4 + 48);
    *(v2 + 608) = v12;
    *(v2 + 560) = v10;
    *(v2 + 576) = v11;
    v13 = *(v4 + 80);
    v14 = *(v4 + 96);
    v15 = *(v4 + 112);
    *(v2 + 672) = *(v4 + 128);
    *(v2 + 640) = v14;
    *(v2 + 656) = v15;
    *(v2 + 624) = v13;
    *v3 = *v4;
    v16 = *(v4 + 16);
    v17 = *(v4 + 32);
    v18 = *(v4 + 64);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v18;
    *(v3 + 16) = v16;
    *(v3 + 32) = v17;
    v19 = *(v4 + 80);
    v20 = *(v4 + 96);
    v21 = *(v4 + 112);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v20;
    *(v3 + 112) = v21;
    *(v3 + 80) = v19;
    *v4 = *(v2 + 136);
    v22 = *(v2 + 152);
    v23 = *(v2 + 168);
    v24 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v24;
    *(v4 + 16) = v22;
    *(v4 + 32) = v23;
    v25 = *(v2 + 216);
    v26 = *(v2 + 232);
    v27 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v26;
    *(v4 + 112) = v27;
    *(v4 + 80) = v25;
    sub_249FE1E80(v2 + 680, v2 + 816);
    sub_249FE1E80(v2 + 544, v2 + 816);
    sub_249FE2008(v3);
    v28 = *(v2 + 656);
    v65 = *(v2 + 640);
    v66 = v28;
    v67 = *(v2 + 672);
    v29 = *(v2 + 592);
    v61 = *(v2 + 576);
    v62 = v29;
    v30 = *(v2 + 624);
    v63 = *(v2 + 608);
    v64 = v30;
    v31 = *(v2 + 560);
    v59 = *(v2 + 544);
    v60 = v31;
    sub_249FF05E0(&v59);
    sub_249FE2008(v2 + 544);
    v32 = *(v2 + 216);
    v33 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v33;
    *(v2 + 400) = *(v2 + 264);
    v34 = *(v2 + 152);
    v35 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v35;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v32;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v34;
    v36 = v2 + 272;
  }

  else
  {
    *v3 = *v4;
    v37 = *(v4 + 64);
    v39 = *(v4 + 16);
    v38 = *(v4 + 32);
    *(v3 + 48) = *(v4 + 48);
    *(v3 + 64) = v37;
    *(v3 + 16) = v39;
    *(v3 + 32) = v38;
    v41 = *(v4 + 96);
    v40 = *(v4 + 112);
    v42 = *(v4 + 80);
    *(v3 + 128) = *(v4 + 128);
    *(v3 + 96) = v41;
    *(v3 + 112) = v40;
    *(v3 + 80) = v42;
    v43 = *(v4 + 80);
    v44 = *(v4 + 96);
    v45 = *(v4 + 112);
    *(v2 + 400) = *(v4 + 128);
    *(v2 + 368) = v44;
    *(v2 + 384) = v45;
    *(v2 + 352) = v43;
    v46 = *(v4 + 16);
    v47 = *(v4 + 32);
    v48 = *(v4 + 64);
    *(v2 + 320) = *(v4 + 48);
    *(v2 + 336) = v48;
    *(v2 + 288) = v46;
    *(v2 + 304) = v47;
    *(v2 + 272) = *v4;
    *v4 = *(v2 + 136);
    v49 = *(v2 + 152);
    v50 = *(v2 + 168);
    v51 = *(v2 + 200);
    *(v4 + 48) = *(v2 + 184);
    *(v4 + 64) = v51;
    *(v4 + 16) = v49;
    *(v4 + 32) = v50;
    v52 = *(v2 + 216);
    v53 = *(v2 + 232);
    v54 = *(v2 + 248);
    *(v4 + 128) = *(v2 + 264);
    *(v4 + 96) = v53;
    *(v4 + 112) = v54;
    *(v4 + 80) = v52;
    sub_249FE1E80(v3, v2 + 544);
    sub_249FE2008(v2 + 272);
    v55 = *(v3 + 112);
    v65 = *(v3 + 96);
    v66 = v55;
    v67 = *(v3 + 128);
    v56 = *(v3 + 48);
    v61 = *(v3 + 32);
    v62 = v56;
    v57 = *(v3 + 80);
    v63 = *(v3 + 64);
    v64 = v57;
    v58 = *(v3 + 16);
    v59 = *v3;
    v60 = v58;
    sub_249FF05E0(&v59);
    v36 = v3;
  }

  sub_249FE2008(v36);

  free(v2);
}

double sub_249FF0D70()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_249FF0DC0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FF0E24;
}

double sub_249FF0E28()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_249FF0E78(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  return sub_249FF1BCC();
}

uint64_t (*sub_249FF0EC8(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FF3CC4;
}

uint64_t sub_249FF0F2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_249FF1BCC();
  }

  return result;
}

id EmojiForegroundSpiralLayersViewController.init(emojiRenderer:)(uint64_t a1)
{
  sub_24A021528();
  v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_shouldRotateEmojiWithDevice] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_deviceOrientation] = 1;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration];
  sub_249FE389C(v11);
  v4 = v11[7];
  *(v3 + 6) = v11[6];
  *(v3 + 7) = v4;
  v3[128] = v12;
  v5 = v11[3];
  *(v3 + 2) = v11[2];
  *(v3 + 3) = v5;
  v6 = v11[5];
  *(v3 + 4) = v11[4];
  *(v3 + 5) = v6;
  v7 = v11[1];
  *v3 = v11[0];
  *(v3 + 1) = v7;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController__layoutProvider] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiSize] = vdupq_n_s64(0x4064000000000000uLL);
  v8 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImages] = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_unlockProgress] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiRenderer] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

id EmojiForegroundSpiralLayersViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiForegroundSpiralLayersViewController.init(coder:)(void *a1)
{
  sub_24A021528();
  v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_shouldRotateEmojiWithDevice] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_deviceOrientation] = 1;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration];
  sub_249FE389C(v14);
  v4 = v14[7];
  *(v3 + 6) = v14[6];
  *(v3 + 7) = v4;
  v3[128] = v15;
  v5 = v14[3];
  *(v3 + 2) = v14[2];
  *(v3 + 3) = v5;
  v6 = v14[5];
  *(v3 + 4) = v14[4];
  *(v3 + 5) = v6;
  v7 = v14[1];
  *v3 = v14[0];
  *(v3 + 1) = v7;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController__layoutProvider] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiSize] = vdupq_n_s64(0x4064000000000000uLL);
  v8 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImages] = v8;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_unlockProgress] = 0;
  type metadata accessor for EmojiRenderer();
  v9 = swift_allocObject();
  *(v9 + 16) = 10;
  v10 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v9 + 24) = v10;
  [v10 setCountLimit_];
  *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiRenderer] = v9;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_249FF1308()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result setClipsToBounds_];

    result = [v0 view];
    if (result)
    {
      v3 = result;
      v4 = [objc_opt_self() clearColor];
      [v3 setBackgroundColor_];

      return sub_249FF1580();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_249FF1434(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  objc_msgSendSuper2(&v3, sel_viewIsAppearing_, a1 & 1);
  sub_249FF1754();
}

uint64_t sub_249FF14E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  objc_msgSendSuper2(&v2, sel_viewDidLayoutSubviews);
  return sub_249FF1BCC();
}

uint64_t sub_249FF1580()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration);
  swift_beginAccess();
  v3 = v2[7];
  v32 = v2[6];
  v33 = v3;
  v34 = *(v2 + 128);
  v4 = v2[3];
  v28 = v2[2];
  v29 = v4;
  v5 = v2[5];
  v30 = v2[4];
  v31 = v5;
  v6 = v2[1];
  v26 = *v2;
  v27 = v6;
  result = sub_249FE499C(&v26);
  if (result != 1)
  {
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v17 = v26;
    v18 = v27;
    v16 = EmojiPosterConfiguration.emojis.getter();
    v8 = *(v16 + 16);
    if (v8)
    {
      v9 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImages;
      v10 = (v16 + 48);
      do
      {
        v11 = *(v10 - 2);
        v12 = *(v10 - 1);
        v13 = *v10;
        *&v17 = v11;
        *(&v17 + 1) = v12;
        LOBYTE(v18) = v13;
        sub_249FE4E60(v11, v12, v13);

        v14 = sub_249FE9AD4(&v17);

        swift_beginAccess();
        v15 = v14;
        MEMORY[0x24C20C470]();
        if (*((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24A021808();
        }

        sub_24A021828();
        swift_endAccess();

        sub_249FE4EC4(v11, v12, v13);
        v10 += 24;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void sub_249FF1754()
{
  v2 = v0;
  v3 = &v0[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v5 = *(v3 + 7);
  v46 = *(v3 + 6);
  v47 = v5;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v42 = *(v3 + 2);
  v43 = v7;
  v8 = *(v3 + 3);
  v9 = *(v3 + 5);
  v44 = *(v3 + 4);
  v45 = v9;
  v10 = *(v3 + 1);
  v40 = *v3;
  v41 = v10;
  v11 = *(v3 + 7);
  v49[6] = v46;
  v50 = v11;
  v49[2] = v42;
  v49[3] = v8;
  v49[4] = v44;
  v49[5] = v4;
  v48 = v3[128];
  v51 = v3[128];
  v49[0] = v40;
  v49[1] = v6;
  if (sub_249FE499C(v49) != 1)
  {
    v12 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImages;
    v13 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews;
    v38[6] = v46;
    v38[7] = v47;
    v39 = v48;
    v38[2] = v42;
    v38[3] = v43;
    v38[4] = v44;
    v38[5] = v45;
    v38[0] = v40;
    v38[1] = v41;
    sub_249FDE288(v38, v37);
    swift_beginAccess();
    sub_249FF3B8C();
    v14 = 0;
    v15 = 0;
    v33 = v13;
    v34 = v2;
    v32 = v12;
    do
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
      v18 = *&v2[v12];
      if ((v18 & 0xC000000000000001) != 0)
      {

        v1 = MEMORY[0x24C20C690](v15, v18);
      }

      else
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v1 = *(v18 + v15 + 4);
      }

      [v17 setImage:v1, v32, v33, v34];

      [v17 setContentMode:1];
      v19 = [v2 view];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 addSubview_];

      swift_beginAccess();
      v18 = v17;
      MEMORY[0x24C20C470]();
      if (*((*&v2[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      v17 = &v2[v13];
      sub_24A021828();
      swift_endAccess();
      v21 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_33;
      }

      v22 = *(&v50 + 1);
      if (*(&v50 + 1))
      {
      }

      else
      {
        v23 = v50;
        v24 = *(v50 + 16);
        if (v24)
        {
          v35 = v18;
          v36 = MEMORY[0x277D84F90];
          sub_249FDCC00(0, v24, 0);
          v22 = v36;
          v25 = (v23 + 40);
          do
          {
            v26 = *(v25 - 1);
            v1 = *v25;
            v27 = *(v36 + 16);
            v28 = *(v36 + 24);

            if (v27 >= v28 >> 1)
            {
              sub_249FDCC00((v28 > 1), v27 + 1, 1);
            }

            *(v36 + 16) = v27 + 1;
            v29 = v36 + 24 * v27;
            *(v29 + 32) = v26;
            *(v29 + 40) = v1;
            *(v29 + 48) = 0;
            v25 += 2;
            --v24;
          }

          while (v24);

          v13 = v33;
          v2 = v34;
          v12 = v32;
        }

        else
        {

          v22 = MEMORY[0x277D84F90];
        }
      }

      ++v14;
      v16 = *(v22 + 16);

      if (v21 == v16)
      {
        v15 = 0;
      }

      else
      {
        v15 = v21;
      }

      sub_249FF3B8C();
    }

    while (v14 != 400);
    sub_249FE2008(&v40);
    v15 = v2;
    v17 = sub_24A021518();
    LOBYTE(v18) = sub_24A021878();
    if (os_log_type_enabled(v17, v18))
    {
      v1 = swift_slowAlloc();
      *v1 = 134217984;
      swift_beginAccess();
      v30 = *&v2[v13];
      if (!(v30 >> 62))
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
        *(v1 + 1) = v31;

        _os_log_impl(&dword_249FC9000, v17, v18, "[createEmojiViews] created %ld emoji views", v1, 0xCu);
        MEMORY[0x24C20D580](v1, -1, -1);

        return;
      }

LABEL_34:
      v31 = sub_24A021A98();
      goto LABEL_28;
    }
  }
}

uint64_t sub_249FF1BCC()
{
  sub_249FF3B8C();
  v1 = *(v0 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_deviceOrientation) - 2;
  v2 = 0.0;
  if (v1 <= 2)
  {
    v2 = dbl_24A026B78[v1];
  }

  CGAffineTransformMakeRotation(&t1, v2);
  v16 = *&t1.a;
  v17 = *&t1.c;
  ty = t1.ty;
  tx = t1.tx;
  v4 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews;
  result = swift_beginAccess();
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_24A021A98();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_unlockProgress;
    v9 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_wakeProgress;

    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C20C690](i, v6);
      }

      else
      {
        v11 = *(v6 + 8 * i + 32);
      }

      v12 = v11;
      CGAffineTransformMakeRotation(&t1, (i * -29.135 + 180.0 + i * 0.000192159 + 106.479) * -0.0174532925);
      *&t2.c = v17;
      *&t2.a = v16;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v18, &t1, &t2);
      t1 = v18;
      [v12 setTransform_];
      sub_24A0143DC(i, *(v0 + v8), *(v0 + v9));
      [v12 setCenter_];
      sub_24A0145D0(i);
      v14 = v13;
      [v12 bounds];
      [v12 setBounds_];
      [v12 setHidden_];
    }
  }

  return result;
}

uint64_t type metadata accessor for EmojiForegroundSpiralLayersViewController()
{
  result = qword_2810DA590;
  if (!qword_2810DA590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249FF1EE0()
{
  v3 = v1;
  sub_249FF3B8C();
  v4 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24A021A98())
  {
    v7 = *&v3[v4];
    v8 = v7 >> 62;
    if (i > 399)
    {
      if (!v8)
      {
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result < 401)
        {
          return result;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if (v8)
      {
        v9 = sub_24A021A98();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v0 = 400 - v9;
      if (!__OFSUB__(400, v9))
      {

        v10 = sub_24A021518();
        v11 = sub_24A021878();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = v0;
          _os_log_impl(&dword_249FC9000, v10, v11, "[updateEmojiViews] creating %ld new emoji views", v12, 0xCu);
          MEMORY[0x24C20D580](v12, -1, -1);
        }

        if (v0 < 1)
        {
        }

        v13 = v9 - 400;
        while (1)
        {
          v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
          [v14 setContentMode_];
          result = [v3 view];
          if (!result)
          {
            break;
          }

          v16 = result;
          [result addSubview_];

          swift_beginAccess();
          v17 = v14;
          MEMORY[0x24C20C470]();
          if (*((*&v3[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24A021808();
          }

          sub_24A021828();
          swift_endAccess();

          if (__CFADD__(v13++, 1))
          {
          }
        }

        goto LABEL_81;
      }

      __break(1u);
    }

    result = sub_24A021A98();
    if (result < 401)
    {
      return result;
    }

LABEL_19:
    v19 = *&v3[v4];
    if (v19 >> 62)
    {
      break;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v20 - 400;
    if (__OFSUB__(v20, 400))
    {
      goto LABEL_65;
    }

LABEL_21:
    v0 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_logger;

    v22 = sub_24A021518();
    v23 = sub_24A021878();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_249FC9000, v22, v23, "[updateEmojiViews] removing %ld emoji views", v24, 0xCu);
      MEMORY[0x24C20D580](v24, -1, -1);
    }

    v25 = *&v3[v4];
    if (v25 >> 62)
    {
      goto LABEL_66;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v26 - v21;
    if (__OFSUB__(v26, v21))
    {
      goto LABEL_68;
    }

LABEL_25:
    v28 = *&v3[v4];
    if (v28 >> 62)
    {
      goto LABEL_69;
    }

    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 < v27)
    {
      goto LABEL_70;
    }

LABEL_27:
    v2 = *&v3[v4];
    v0 = v2 >> 62;
    if (v2 >> 62)
    {
      goto LABEL_71;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < v27)
    {
      goto LABEL_72;
    }

LABEL_29:
    if (v27 < 0)
    {
      goto LABEL_73;
    }

    if (v0)
    {
      result = sub_24A021A98();
    }

    else
    {
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v29)
    {
      goto LABEL_74;
    }

    if ((v2 & 0xC000000000000001) == 0 || v27 == v29)
    {
      swift_bridgeObjectRetain_n();
      if (!v0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v27 >= v29)
      {
        goto LABEL_80;
      }

      sub_249FE4E14();
      swift_bridgeObjectRetain_n();
      v30 = v27;
      do
      {
        v31 = v30 + 1;
        sub_24A0219C8();
        v30 = v31;
      }

      while (v29 != v31);
      if (!v0)
      {
LABEL_41:
        v32 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_44;
      }
    }

    sub_24A021AA8();
    v32 = v33;
    v27 = v34;
    v29 = v35 >> 1;
LABEL_44:
    swift_unknownObjectRetain();

    v0 = v29 - v27;
    if (v29 == v27)
    {
LABEL_51:
      swift_unknownObjectRelease();
      v40 = *&v3[v4];
      if (v40 >> 62)
      {
        goto LABEL_75;
      }

      result = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = result - v21;
      if (!__OFSUB__(result, v21))
      {
        goto LABEL_53;
      }

      goto LABEL_77;
    }

    if (v27 <= v29)
    {
      v36 = v29;
    }

    else
    {
      v36 = v27;
    }

    v37 = v36 - v27;
    v38 = (v32 + 8 * v27);
    v2 = &off_278FC2000;
    while (v37)
    {
      v39 = *v38++;
      [v39 removeFromSuperview];
      --v37;
      if (!--v0)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_58:
    ;
  }

  v44 = sub_24A021A98();
  v21 = v44 - 400;
  if (!__OFSUB__(v44, 400))
  {
    goto LABEL_21;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v45 = sub_24A021A98();
  v27 = v45 - v21;
  if (!__OFSUB__(v45, v21))
  {
    goto LABEL_25;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  v29 = sub_24A021A98();
  if (v29 >= v27)
  {
    goto LABEL_27;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  if (sub_24A021A98() >= v27)
  {
    goto LABEL_29;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_24A021A98();
  v41 = result - v21;
  if (__OFSUB__(result, v21))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    result = sub_24A021A98();
    v43 = result;
    if (result >= v41)
    {
      goto LABEL_55;
    }

    goto LABEL_79;
  }

LABEL_53:
  v42 = *&v3[v4];
  if (v42 >> 62)
  {
    goto LABEL_78;
  }

  v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v43 >= v41)
  {
LABEL_55:
    swift_beginAccess();
    sub_249FF3AB4(v41, v43);
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

void sub_249FF24B8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 112);
  v55 = *(v2 + 96);
  v56 = v4;
  v5 = *(v2 + 16);
  v6 = *(v2 + 48);
  v51 = *(v2 + 32);
  v52 = v6;
  v7 = *(v2 + 48);
  v8 = *(v2 + 80);
  v53 = *(v2 + 64);
  v54 = v8;
  v9 = *(v2 + 16);
  v50[0] = *v2;
  v50[1] = v9;
  v10 = *(v2 + 112);
  v58[6] = v55;
  v59 = v10;
  v58[2] = v51;
  v58[3] = v7;
  v58[4] = v53;
  v58[5] = v3;
  v57 = *(v2 + 128);
  v60 = *(v2 + 128);
  v58[0] = v50[0];
  v58[1] = v5;
  if (sub_249FE499C(v58) == 1)
  {
    return;
  }

  sub_249FE1E80(v50, v49);
  v11 = sub_249FF3B8C();
  sub_249FE1E80(v50, v49);
  v40 = v11;

  v12 = sub_24A021518();
  v13 = sub_24A021878();
  sub_249FE2008(v50);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DF68);
    sub_249FE4DB0();
    v16 = sub_24A021628();
    v18 = v17;

    v19 = sub_249FF336C(v16, v18, v49);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_249FC9000, v12, v13, "Updating for changed emoji: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x24C20D580](v15, -1, -1);
    MEMORY[0x24C20D580](v14, -1, -1);
  }

  v20 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImages;
  swift_beginAccess();
  *(v1 + v20) = MEMORY[0x277D84F90];

  sub_249FF1580();
  sub_249FF1EE0();
  v22 = *(&v59 + 1);
  v21 = v59;
  v23 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_emojiImageViews;
  swift_beginAccess();
  v24 = 0;
  v25 = 0;
  v45 = v1;
  v46 = v21;
  v41 = (v21 + 40);
  v42 = v23;
  v43 = v22;
  v44 = v20;
  while (1)
  {
    v28 = *(v1 + v23);
    if ((v28 & 0xC000000000000001) == 0)
    {
      break;
    }

    v29 = MEMORY[0x24C20C690](v25, v28);

LABEL_13:
    v30 = *(v1 + v20);
    if ((v30 & 0xC000000000000001) != 0)
    {

      v31 = MEMORY[0x24C20C690](v24, v30);
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (v24 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v31 = *(v30 + 8 * v24 + 32);
    }

    [v29 setImage_];

    v32 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_32;
    }

    if (v22)
    {

      v26 = v22;
    }

    else
    {
      v33 = *(v46 + 16);
      if (v33)
      {
        v47 = v29;
        v48 = MEMORY[0x277D84F90];
        sub_249FDCC00(0, v33, 0);
        v26 = v48;
        v34 = v41;
        do
        {
          v35 = *(v34 - 1);
          v36 = *v34;
          v38 = *(v48 + 16);
          v37 = *(v48 + 24);

          if (v38 >= v37 >> 1)
          {
            sub_249FDCC00((v37 > 1), v38 + 1, 1);
          }

          *(v48 + 16) = v38 + 1;
          v39 = v48 + 24 * v38;
          *(v39 + 32) = v35;
          *(v39 + 40) = v36;
          *(v39 + 48) = 0;
          v34 += 2;
          --v33;
        }

        while (v33);

        v20 = v44;
        v1 = v45;
        v23 = v42;
        v22 = v43;
      }

      else
      {

        v26 = MEMORY[0x277D84F90];
      }
    }

    ++v25;
    v27 = *(v26 + 16);

    if (v32 == v27)
    {
      v24 = 0;
    }

    else
    {
      v24 = v32;
    }

    if (v25 == 400)
    {

      sub_249FE2008(v50);
      return;
    }
  }

  if (v25 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 8 * v25 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id EmojiForegroundSpiralLayersViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiForegroundSpiralLayersViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiForegroundSpiralLayersViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249FF2B20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v11;
  v12 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v12;
  v13 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v13;
  return sub_249FE1E80(v16, &v15);
}

uint64_t sub_249FF2BD8(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_configuration;
  swift_beginAccess();
  v23 = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v26 = *(v3 + 48);
  v27 = v6;
  v24 = v4;
  v25 = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v31 = *(v3 + 128);
  v29 = v8;
  v30 = v9;
  v28 = v7;
  v32[0] = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v12 = *(v3 + 64);
  v32[3] = *(v3 + 48);
  v32[4] = v12;
  v32[1] = v10;
  v32[2] = v11;
  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = *(v3 + 112);
  v33 = *(v3 + 128);
  v32[6] = v14;
  v32[7] = v15;
  v32[5] = v13;
  v16 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v16;
  *(v3 + 128) = *(a1 + 128);
  v17 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v17;
  v18 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v18;
  v19 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v19;
  sub_249FE1E80(&v23, v21);
  sub_249FE2008(v32);
  v21[6] = v29;
  v21[7] = v30;
  v22 = v31;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_249FF05E0(v21);
  return sub_249FE2008(&v23);
}

void (*sub_249FF2D00(uint64_t **a1))(void *a1)
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
  v2[4] = sub_249FF09AC(v2);
  return sub_249FE4784;
}

double sub_249FF2D74()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*sub_249FF2DC8(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FF0E24;
}

double sub_249FF2E30()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_249FF2E84(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  *(v6 + v7) = a1;
  return sub_249FF1BCC();
}

uint64_t (*sub_249FF2ED8(uint64_t a1))()
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FF3CC4;
}

uint64_t keypath_set_3Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  return sub_249FF1BCC();
}

uint64_t sub_249FF2F9C()
{
  result = sub_24A021538();
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

uint64_t sub_249FF3310(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_249FF336C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_249FF336C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249FF3438(v11, 0, 0, 1, a1, a2);
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
    sub_249FF3C68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_249FF3438(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_249FF3544(a5, a6);
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
    result = sub_24A021A18();
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

uint64_t sub_249FF3544(uint64_t a1, unint64_t a2)
{
  v3 = sub_249FF3590(a1, a2);
  sub_249FF36C0(&unk_285D25AA0);
  return v3;
}

uint64_t sub_249FF3590(uint64_t a1, unint64_t a2)
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

  v6 = sub_249FF37AC(v5, 0);
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

  result = sub_24A021A18();
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
        v10 = sub_24A021758();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249FF37AC(v10, 0);
        result = sub_24A021998();
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

uint64_t sub_249FF36C0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_249FF3820(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_249FF37AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2E300);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_249FF3820(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2E300);
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

uint64_t sub_249FF3914(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24A021A98();
LABEL_9:
  result = sub_24A0219E8();
  *v1 = result;
  return result;
}

uint64_t sub_249FF39B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_249FE4E14();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24A021A98();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_24A021A98();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_249FF3AB4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_24A021A98();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_24A021A98();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_249FF3914(result);

  return sub_249FF39B4(v4, v2, 0);
}

double *sub_249FF3B8C()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;

  v8 = OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController__layoutProvider;
  result = *&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController__layoutProvider];
  if (!result || (result[2] == v5 ? (v9 = result[3] == v7) : (v9 = 0), !v9 && (*&v1[OBJC_IVAR____TtC11EmojiPoster41EmojiForegroundSpiralLayersViewController__layoutProvider] = 0, , (result = *&v1[v8]) == 0)))
  {
    type metadata accessor for NewSpiralLayoutProvider();
    swift_allocObject();
    *&v1[v8] = sub_24A01430C(v5, v7);

    result = *&v1[v8];
    if (!result)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_249FF3C68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_249FF3D18()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249FF3D98(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_249FF3F2C(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_249FF417C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v16 - v8;
  v22 = type metadata accessor for DecodableDefault.Wrapper();
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v16 - v10;
  (*(a3 + 24))(a2, a3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v20;
  sub_24A021CF8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v9 + 8))(v11, v22);
  }

  else
  {
    v20 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    swift_getAssociatedConformanceWitness();
    v13 = v19;
    sub_24A021C48();
    (*(v17 + 40))(v11, v13, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v14 = v22;
    (*(v9 + 16))(v18, v11, v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v9 + 8))(v11, v14);
  }
}

uint64_t sub_249FF4500()
{
  swift_getAssociatedTypeWitness();

  return sub_24A021618();
}

uint64_t sub_249FF4568()
{
  sub_24A021CB8();
  swift_getAssociatedTypeWitness();
  sub_24A021618();
  return sub_24A021CE8();
}

uint64_t sub_249FF45FC()
{
  sub_24A021CB8();
  sub_249FF4500();
  return sub_24A021CE8();
}

uint64_t sub_249FF4650(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24A021D18();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  swift_getAssociatedTypeWitness();
  sub_24A021C58();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t GradientStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24A021CB8();
  MEMORY[0x24C20C980](v1);
  return sub_24A021CE8();
}

void sub_249FF47F0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ColorButton();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 layer];
  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 CGColor];

  [v1 setBorderColor_];
  v4 = [v0 layer];
  [v4 setBorderWidth_];

  v5 = [v0 layer];
  [v0 bounds];
  [v5 setCornerRadius_];
}

id ColorButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ColorButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for ColorButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id ColorButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ColorButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ColorButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_249FF4C04@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_249FF4C58(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_249FF4D08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a2 = *v3;
  *(a2 + 8) = *(v3 + 8);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
}

void sub_249FF4D88(char *a1, void *a2)
{
  v2 = *a1;
  v7 = *(a1 + 8);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
  swift_beginAccess();
  *v6 = v2;
  *(v6 + 8) = v7;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;

  sub_249FF619C();
}

uint64_t sub_249FF4E40@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

void sub_249FF4EBC(char *a1)
{
  v3 = *a1;
  v6 = *(a1 + 8);
  v4 = *(a1 + 3);
  v5 = v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v6;
  *(v5 + 24) = v4;
  *(v5 + 32) = *(a1 + 2);

  sub_249FF619C();
}

void (*sub_249FF4F58(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_249FF4FBC;
}

void sub_249FF4FBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_249FF619C();
  }
}

uint64_t sub_249FF5040(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_249FF50AC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_249FF514C;
}

void sub_249FF514C(uint64_t a1, char a2)
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

id sub_249FF51D4()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker;
  v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75360]) init];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id GradientConfigurationController.init(gradientProperties:)(uint64_t a1)
{
  v3 = *a1;
  v15 = *(a1 + 8);
  v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type] = 0;
  v4 = *(a1 + 24);
  v5 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties];
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v6 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingRadialGradientProperties];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *&v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_verticalStackView;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_styleSegmentedControl;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v9 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorSlider;
  type metadata accessor for GradientColorSlider();
  *&v1[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_attributeSlider;
  *&v1[v10] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker] = 0;
  v11 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties];
  *v12 = v3;
  *(v12 + 8) = v15;
  *(v12 + 3) = v4;
  *(v12 + 2) = *(a1 + 32);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GradientConfigurationController();
  v13 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  sub_249FF561C();

  return v13;
}

id GradientConfigurationController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type] = 0;
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties];
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingRadialGradientProperties];
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  *&v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_verticalStackView;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  v6 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_styleSegmentedControl;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277D75A08]) init];
  v7 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorSlider;
  type metadata accessor for GradientColorSlider();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_attributeSlider;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D75A30]) init];
  *&v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker] = 0;
  v9 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
  *v9 = 0;
  v9[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v10 = swift_allocObject();
  __asm { FMOV            V1.2D, #1.0 }

  *(v10 + 16) = xmmword_24A024720;
  *(v10 + 32) = _Q1;
  *(v10 + 48) = _Q1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0x3FF0000000000000;
  v16 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x3FF0000000000000;
  *(v16 + 4) = v10;
  *(v16 + 5) = &unk_285D25B98;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for GradientConfigurationController();
  v17 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    sub_249FF561C();
  }

  return v18;
}

uint64_t sub_249FF561C()
{
  v1 = (v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
  swift_beginAccess();
  v3 = *(v1 + 3);
  v2 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties;
  v6 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties);
  v7 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties + 8);
  v8 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties + 16);
  v9 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties + 24);
  v10 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingLinearGradientProperties + 32);
  v11 = *(v1 + 8);
  *v5 = *v1;
  *(v5 + 8) = v11;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;

  sub_249FDE484(v6, v7, v8, v9, v10);
  v12 = *(v1 + 4);
  v13 = (v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingRadialGradientProperties);
  v14 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingRadialGradientProperties);
  v15 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_editingRadialGradientProperties + 8);
  v16 = v13[2];
  v17 = v13[3];
  v18 = v13[4];
  *v13 = 1;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = v12;
  v13[5] = &unk_285D25B68;

  return sub_249FDE484(v14, v15, v16, v17, v18);
}

void sub_249FF5738()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for GradientConfigurationController();
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  sub_249FF5DBC();
  sub_249FECDC0(0, &qword_27EF2E370);
  type metadata accessor for BackgroundViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_24A021418();

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = v0;
  v40 = v4;
  v6 = sub_24A021908();
  v7 = *&v5[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_styleSegmentedControl];
  [v7 insertSegmentWithAction:v6 atIndex:0 animated:{0, 0, 0, 0, sub_249FF6C7C, v40}];
  v8 = [v2 bundleForClass_];
  sub_24A021418();

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = v5;
  v11 = sub_24A021908();
  [v7 insertSegmentWithAction:v11 atIndex:1 animated:{0, 0, 0, 0, sub_249FF6C84, v9}];
  [v7 sizeToFit];
  [v7 setSelectedSegmentIndex_];

  v12 = *&v10[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorSlider];
  *&v12[OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_delegate + 8] = &off_285D27E48;
  swift_unknownObjectWeakAssign();
  v13 = *&v10[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_attributeSlider];
  [v13 addTarget:v10 action:sel_attributeSliderValueChangedWithSlider_ forControlEvents:4096];
  sub_249FF619C();
  v14 = *&v10[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_verticalStackView];
  [v14 addArrangedSubview_];
  [v14 addArrangedSubview_];
  [v14 addArrangedSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_24A026CF0;
  v16 = [v10 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v14 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v15 + 32) = v20;
  v21 = [v10 view];
  if (!v21)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v21 trailingAnchor];

  v24 = [v14 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v15 + 40) = v25;
  v26 = [v10 view];
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v14 topAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v15 + 48) = v30;
  v31 = [v10 view];
  if (v31)
  {
    v32 = v31;
    v33 = objc_opt_self();
    v34 = [v32 bottomAnchor];

    v35 = [v14 bottomAnchor];
    v36 = [v34 constraintEqualToAnchor_];

    *(v15 + 56) = v36;
    v37 = [v12 heightAnchor];
    v38 = [v37 constraintEqualToConstant_];

    *(v15 + 64) = v38;
    sub_249FECDC0(0, &qword_2810D9B80);
    v39 = sub_24A0217C8();

    [v33 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_249FF5DBC()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_verticalStackView];
  [v1 setAxis_];
  [v1 setDistribution_];
  [v1 setLayoutMarginsRelativeArrangement_];
  [v1 setSpacing_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

_OWORD *sub_249FF5E98(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    v6 = a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
    swift_beginAccess();
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    v9 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    result = swift_allocObject();
    result[1] = xmmword_24A024720;
    v10 = *(v6 + 32);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v10 + 48);
      result[2] = *(v10 + 32);
      result[3] = v12;
      if (v11 != 1)
      {
        v13 = *(v10 + 80);
        result[4] = *(v10 + 64);
        result[5] = v13;
        v14 = *(v6 + 40);
        *v6 = 0;
        *(v6 + 32) = result;
        v15 = result;

        sub_249FF619C();
        ObjectType = swift_getObjectType();
        v17[0] = 0;
        v18 = v7;
        v19 = v8;
        v20 = v9;
        v21 = v15;
        v22 = v14;
        (*(v5 + 16))(a2, v17, ObjectType, v5);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_249FF6018(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    v6 = a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties;
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    result = swift_allocObject();
    result[1] = xmmword_24A024720;
    v9 = *(v6 + 32);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 48);
      result[2] = *(v9 + 32);
      result[3] = v11;
      if (v10 != 1)
      {
        v12 = *(v9 + 80);
        result[4] = *(v9 + 64);
        result[5] = v12;
        v13 = *(v6 + 40);
        *v6 = 1;
        *(v6 + 8) = 0;
        *(v6 + 32) = result;
        v14 = result;

        sub_249FF619C();
        ObjectType = swift_getObjectType();
        v16[0] = 1;
        v17 = 0;
        v18 = v7;
        v19 = v8;
        v20 = v14;
        v21 = v13;
        (*(v5 + 16))(a2, v16, ObjectType, v5);

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_249FF619C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorSlider];
  v3 = &v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties];
  swift_beginAccess();
  v4 = *(v3 + 4);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v4 + 32) green:*(v4 + 40) blue:*(v4 + 48) alpha:*(v4 + 56)];
  v6 = *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor);
  *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColor) = v5;
  v7 = v5;

  sub_249FEF080();
  v8 = *(v3 + 4);
  if (*(v8 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v8 + 64) green:*(v8 + 72) blue:*(v8 + 80) alpha:*(v8 + 88)];
  v10 = *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor);
  *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColor) = v9;
  v11 = v9;

  sub_249FEF080();
  *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_leftColorOffset) = *(v3 + 2);
  *(v2 + OBJC_IVAR____TtC11EmojiPoster19GradientColorSlider_rightColorOffset) = *(v3 + 3);
  LOBYTE(v11) = *v3;
  v12 = *&v1[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_attributeSlider];
  [v12 setMinimumValue_];
  if ((v11 & 1) == 0)
  {
    LODWORD(v13) = 1135869952;
    [v12 setMaximumValue_];
    v17 = *(v3 + 1);
    v19 = &selRef_setValue_;
    goto LABEL_7;
  }

  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;

    v19 = &selRef_setMaximumValue_;
LABEL_7:
    *&v18 = v17;
    [v12 *v19];
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_249FF63D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  v12 = swift_allocObject();
  v12[1] = xmmword_24A024720;
  EmojiPosterBackgroundColor.init(_:)(a1);
  v13 = *(v7 + 4);
  if (*(v13 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 80);
    v12[4] = *(v13 + 64);
    v12[5] = v14;
    v15 = *(v7 + 5);
    *v7 = v8;
    *(v7 + 1) = v9;
    *(v7 + 2) = v10;
    *(v7 + 3) = v11;
    *(v7 + 4) = v12;

    sub_249FF619C();
    ObjectType = swift_getObjectType();
    v17[0] = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v15;
    (*(a4 + 16))(a2, v17, ObjectType, a4);
  }
}

_OWORD *sub_249FF6530(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  result = swift_allocObject();
  result[1] = xmmword_24A024720;
  v13 = *(v7 + 4);
  if (*(v13 + 16))
  {
    v14 = *(v13 + 48);
    result[2] = *(v13 + 32);
    result[3] = v14;
    v15 = result;
    EmojiPosterBackgroundColor.init(_:)(a1);
    v16 = *(v7 + 5);
    *v7 = v8;
    *(v7 + 1) = v9;
    *(v7 + 2) = v10;
    *(v7 + 3) = v11;
    *(v7 + 4) = v15;

    sub_249FF619C();
    ObjectType = swift_getObjectType();
    v18[0] = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v15;
    v23 = v16;
    (*(a4 + 16))(a2, v18, ObjectType, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_249FF668C(void *a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_type;
  result = swift_beginAccess();
  if ((*(v1 + v3) & 1) == 0)
  {
    v5 = (v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
    swift_beginAccess();
    v6 = *v5;
    [a1 value];
    v8 = v7;
    v9 = *(v5 + 2);
    v10 = *(v5 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
    result = swift_allocObject();
    result[1] = xmmword_24A024720;
    v11 = *(v5 + 4);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = result;
      v14 = *(v11 + 48);
      result[2] = *(v11 + 32);
      result[3] = v14;
      if (v12 != 1)
      {
        v15 = v8;
        v16 = *(v11 + 80);
        result[4] = *(v11 + 64);
        result[5] = v16;
        v17 = *(v5 + 5);
        *v5 = v6;
        *(v5 + 1) = v15;
        *(v5 + 4) = result;

        sub_249FF619C();
        v18 = v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 8);
          ObjectType = swift_getObjectType();
          v21[0] = v6;
          v22 = v15;
          v23 = v9;
          v24 = v10;
          v25 = v13;
          v26 = v17;
          (*(v19 + 16))(v1, v21, ObjectType, v19);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_249FF68C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  if (v3)
  {

    v3(a2);

    sub_249FF6C8C(v3);
  }
}

uint64_t sub_249FF69E8()
{
  v1 = (v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  v2 = *(v0 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater);
  *v1 = 0;
  v1[1] = 0;
  return sub_249FF6C8C(v2);
}

id GradientConfigurationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_249FF6B50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_249FF6C8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_249FF6CA0()
{
  result = qword_27EF2E378;
  if (!qword_27EF2E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E378);
  }

  return result;
}

uint64_t sub_249FF6FBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_249FF6FCC(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  result = swift_allocObject();
  result[1] = xmmword_24A024720;
  v8 = *(v3 + 4);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v11 = *(v8 + 48);
  result[2] = *(v8 + 32);
  result[3] = v11;
  if (v9 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = *(v8 + 80);
  result[4] = *(v8 + 64);
  result[5] = v12;
  v13 = *(v3 + 5);
  *v3 = v4;
  *(v3 + 2) = a1;
  *(v3 + 4) = result;

  sub_249FF619C();
  v14 = v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v4;
    v18 = v5;
    v19 = a1;
    v20 = v6;
    v21 = v10;
    v22 = v13;
    (*(v15 + 16))(v1, v17, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

_OWORD *sub_249FF7164(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2DFF0);
  result = swift_allocObject();
  result[1] = xmmword_24A024720;
  v8 = *(v3 + 4);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v11 = *(v8 + 48);
  result[2] = *(v8 + 32);
  result[3] = v11;
  if (v9 == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = *(v8 + 80);
  result[4] = *(v8 + 64);
  result[5] = v12;
  v13 = *(v3 + 5);
  *v3 = v4;
  *(v3 + 3) = a1;
  *(v3 + 4) = result;

  sub_249FF619C();
  v14 = v1 + OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v4;
    v18 = v5;
    v19 = v6;
    v20 = a1;
    v21 = v10;
    v22 = v13;
    (*(v15 + 16))(v1, v17, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_249FF72F8()
{
  v1 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + 1);
    v5 = sub_249FF51D4();
    v6 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties];
    swift_beginAccess();
    v7 = *(v6 + 4);
    if (*(v7 + 16))
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v7 + 32) green:*(v7 + 40) blue:*(v7 + 48) alpha:*(v7 + 56)];
      [v5 setSelectedColor_];

      v9 = swift_allocObject();
      *(v9 + 2) = v0;
      *(v9 + 3) = v3;
      *(v9 + 4) = v4;
      v10 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
      v11 = *&v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
      *v10 = sub_249FF76B8;
      v10[1] = v9;
      v12 = v0;
      swift_unknownObjectRetain();
      sub_249FF6C8C(v11);
      ObjectType = swift_getObjectType();
      v14 = *(v4 + 8);
      v15 = *&v12[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker];
      v14(v12, v15, ObjectType, v4);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_249FF74B0()
{
  v1 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v1 + 1);
    v5 = sub_249FF51D4();
    v6 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_gradientProperties];
    swift_beginAccess();
    v7 = *(v6 + 4);
    if (*(v7 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v7 + 64) green:*(v7 + 72) blue:*(v7 + 80) alpha:*(v7 + 88)];
      [v5 setSelectedColor_];

      v9 = swift_allocObject();
      v9[2] = v0;
      v9[3] = v3;
      v9[4] = v4;
      v10 = &v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
      v11 = *&v0[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController_colorUpdater];
      *v10 = sub_249FF766C;
      *(v10 + 1) = v9;
      v12 = v0;
      swift_unknownObjectRetain();
      sub_249FF6C8C(v11);
      ObjectType = swift_getObjectType();
      v14 = *(v4 + 8);
      v15 = *&v12[OBJC_IVAR____TtC11EmojiPoster31GradientConfigurationController____lazy_storage___colorPicker];
      v14(v12, v15, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t objectdestroy_38Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s11EmojiPoster8FeaturesV14genmojiEnabledSbvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24A021658();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24A021658();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_24A021948();

    swift_unknownObjectRelease();
  }

  else
  {

    v9 = 0u;
    v10 = 0u;
  }

  v7[0] = v9;
  v7[1] = v10;
  if (*(&v10 + 1))
  {
    sub_249FF7BBC(v7, v8);
    sub_249FF7BBC(v8, v7);
    return swift_dynamicCast() & v6;
  }

  else
  {
    sub_249FF7B54(v7);
    return 1;
  }
}

uint64_t _s11EmojiPoster8FeaturesV18emojiSearchEnabledSbvgZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_24A021658();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_24A021658();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_24A021948();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    sub_249FF7AE4(v15, &v11);
    if (v12)
    {
      sub_249FF7B54(v15);

      sub_249FF7BBC(&v11, &v13);
      sub_249FF7BBC(&v13, &v11);
      v5 = swift_dynamicCast() & v10;
    }

    else
    {
      sub_249FF7B54(&v11);
      v6 = [objc_opt_self() currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 == 1)
      {
        sub_249FF7B54(v15);

        v5 = 0;
      }

      else
      {
        v8 = sub_24A021598();

        sub_249FF7B54(v15);
        v5 = v8 ^ 1;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t getEnumTagSinglePayload for Features(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Features(_WORD *result, int a2, int a3)
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

uint64_t sub_249FF7AE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249FF7B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_249FF7BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_249FF7BCC(char *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;

    if (v8 >= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v9 >= 768.0)
    {
      if (v9 <= 820.0)
      {
        v10 = 2;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
}

EmojiPoster::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_249FF7CDC()
{
  result = qword_27EF2E448;
  if (!qword_27EF2E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2E448);
  }

  return result;
}

void sub_249FF7D78(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant;
  swift_beginAccess();
  *(v1 + v3) = v2;
  type metadata accessor for SpiralLayoutProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v1 + OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider) = v4;

  v5 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
  swift_beginAccess();
  sub_249FF8AEC(v6, *(v1 + v7));
}

void (*sub_249FF7E48(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_249FF7ED0;
}

void sub_249FF7ED0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + v3[7]);
    type metadata accessor for SpiralLayoutProvider();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v4 + OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider) = v6;

    v7 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
    swift_beginAccess();
    v8 = *(v4 + v7);
    v9 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
    swift_beginAccess();
    sub_249FF8AEC(v8, *(v4 + v9));
  }

  free(v3);
}

void sub_249FF7FA4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_249FF99EC;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_249FF8178;
  v8[3] = &block_descriptor_4;
  v3 = _Block_copy(v8);
  v4 = v0;

  v5 = [v1 customActionWithDuration:v3 actionBlock:1.0];
  _Block_release(v3);
  [v5 setTimingMode_];
  v6 = [v4 scene];
  if (v6)
  {
    v7 = v6;
    [v6 runAction_];

    v5 = v7;
  }
}

void sub_249FF80EC(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
  swift_beginAccess();
  if (*(a3 + v5) != 1.0)
  {
    a1 = 1.0 - a1;
  }

  v6 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
  swift_beginAccess();
  sub_249FF8AEC(a1, *(a3 + v6));
}

void sub_249FF8178(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

id sub_249FF81F0(void *a1)
{
  v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant] = 1;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emoji] = &unk_285D25BC8;
  v3 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v4 = swift_allocObject();
  *(v4 + 16) = 10;
  v5 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v4 + 24) = v5;
  [v5 setCountLimit_];
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiTextures] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider;
  type metadata accessor for SpiralLayoutProvider();
  v7 = swift_allocObject();
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_itemPositions] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_startingRadius] = 0x4024000000000000;
  *(v7 + 16) = 1;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_radius] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_minRadius] = 0;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress] = 0x3FF0000000000000;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ExpandingSpiralScene();
  v8 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 clearColor];
    [v10 setBackgroundColor_];

    a1 = v11;
  }

  return v8;
}

id sub_249FF83DC(double a1, double a2)
{
  v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant] = 1;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emoji] = &unk_285D25C00;
  v5 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiRenderer;
  type metadata accessor for EmojiRenderer();
  v6 = swift_allocObject();
  *(v6 + 16) = 10;
  v7 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v6 + 24) = v7;
  [v7 setCountLimit_];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiTextures] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider;
  type metadata accessor for SpiralLayoutProvider();
  v9 = swift_allocObject();
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_itemPositions] = 0;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_startingRadius] = 0x4024000000000000;
  *(v9 + 16) = 1;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_radius] = 0;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_minRadius] = 0;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress] = 0x3FF0000000000000;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ExpandingSpiralScene();
  v10 = objc_msgSendSuper2(&v15, sel_initWithSize_, a1, a2);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor_];

  return v12;
}

void sub_249FF8628()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;

    v5 = v4 * 0.5;
  }

  else
  {
    v5 = 100.0;
  }

  *&v0[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_minRadius] = v5;
  *&v0[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_radius] = v5;
  [v0 removeAllChildren];
  v6 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiTextures;
  swift_beginAccess();
  *&v0[v6] = MEMORY[0x277D84F90];

  v7 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emoji;
  swift_beginAccess();
  v25 = v7;
  if (*(*&v0[v7] + 16))
  {
    sub_249FF894C();
    v8 = 0;
    v9 = 0;
    v10 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider;
    v11 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant;
    while (1)
    {
      v24 = v8;
      swift_beginAccess();
      v12 = 0;
      while (1)
      {
        v13 = *(*&v0[v10] + 16);
        if (v12 >= qword_24A026FD0[*(*&v0[v10] + 16)])
        {
          break;
        }

        while (1)
        {
          v14 = *&v0[v6];
          if ((v14 & 0xC000000000000001) != 0)
          {

            v15 = MEMORY[0x24C20C690](v9, v14);
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_34;
            }

            v15 = *(v14 + 8 * v9 + 32);
          }

          v16 = [objc_allocWithZone(MEMORY[0x277CDCF78]) initWithTexture_];

          v17 = v16;
          v18 = sub_24A021658();
          [v17 setName_];

          [v0 addChild_];
          ++v12;
          if (v0[v11] == 2)
          {
            break;
          }

          v13 = *(*&v0[v10] + 16);
          if (v12 >= qword_24A026FD0[*(*&v0[v10] + 16)])
          {
            v19 = v24;
            v8 = v24 + 1;
            goto LABEL_20;
          }
        }

        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }

        if (v9 + 1 == *(*&v0[v25] + 16))
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }
      }

      v19 = v24;
      v8 = v24 + 1;
      if (v0[v11] != 2)
      {
LABEL_20:
        if (__OFADD__(v9, 1))
        {
LABEL_36:
          __break(1u);
          return;
        }

        if (v9 + 1 == *(*&v0[v25] + 16))
        {
          v9 = 0;
        }

        else
        {
          ++v9;
        }
      }

      if (v13 > 1 || v19 >= 0xB)
      {
        v21 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
        swift_beginAccess();
        v22 = *&v0[v21];
        v23 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
        swift_beginAccess();
        sub_249FF8AEC(v22, *&v0[v23]);
        return;
      }
    }
  }
}

uint64_t sub_249FF894C()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emoji;
  result = swift_beginAccess();
  v15 = v0;
  v3 = *(v0 + v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emojiTextures;
    v14 = v5;

    v7 = (v3 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v16[0] = v8;
      v16[1] = v9;
      v17 = v10;
      sub_249FE4E60(v8, v9, v10);
      v11 = sub_249FE9AD4(v16);
      v12 = [v14 textureWithImage_];
      swift_beginAccess();
      v13 = v12;
      MEMORY[0x24C20C470]();
      if (*((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v15 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24A021808();
      }

      sub_24A021828();
      swift_endAccess();

      sub_249FE4EC4(v8, v9, v10);
      v7 += 24;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_249FF8AEC(double a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24A0246F0;
  sub_24A0219B8();
  MEMORY[0x24C20C3F0](0x3A656B6157, 0xE500000000000000);
  sub_24A021838();
  MEMORY[0x24C20C3F0](0x3A6B636F6C6E7520, 0xE800000000000000);
  sub_24A021838();
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_24A021C98();

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_itemPositions] = sub_249FF9010(a1, a2);

  v9 = sub_24A021658();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v8;
  v10[4] = v7;
  v13[4] = sub_249FFB1B8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24A01AB8C;
  v13[3] = &block_descriptor_46;
  v11 = _Block_copy(v13);
  v12 = v3;

  [v12 enumerateChildNodesWithName:v9 usingBlock:v11];
  _Block_release(v11);
}

unint64_t sub_249FF8D70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a4 + 16);
    swift_beginAccess();
    v12 = *(a3 + OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_itemPositions);
    v13 = 0.0;
    if (v12 && *(v12 + 16))
    {
      result = sub_24A004B1C(*(a5 + 16));
      v14 = 0.0;
      if (v15)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v16 = *(*(v12 + 56) + 8 * result);
        if (v11 >= *(v16 + 16))
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v17 = v16 + 16 * v11;
        v13 = *(v17 + 32);
        v14 = *(v17 + 40);
      }
    }

    else
    {
      v14 = 0.0;
    }

    v18 = a1;
    [v10 setPosition_];
    swift_beginAccess();
    v19 = sub_249FFB61C(*(a4 + 16));
    v21 = v20;
    swift_beginAccess();
    v22 = *(a4 + 16);
    swift_beginAccess();
    v23 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider;
    v24 = 1.0;
    if (*(*(a3 + OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider) + 16) < 2u)
    {
      v24 = 12.0;
    }

    [v10 setZRotation_];
    [v10 scaleToSize_];

    result = swift_beginAccess();
    v25 = *(a4 + 16);
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
    }

    else
    {
      if (v26 != qword_24A026FD0[*(*(a3 + v23) + 16)])
      {
LABEL_15:
        result = swift_beginAccess();
        *(a4 + 16) = v26;
        return result;
      }

      result = swift_beginAccess();
      v27 = *(a5 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (!v28)
      {
        v26 = 0;
        *(a5 + 16) = v29;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_249FF9010(double a1, double a2)
{
  v3 = v2;
  v63 = [v2 view];
  if (!v63)
  {
    return 0;
  }

  v6 = 0;
  v7 = *&v2[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider];
  v60 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_radius;
  v61 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider;
  v59 = a1 * 10.0;
  v58 = a2 * 8.0;
  v57 = a1 * 10.0 + 25.3 - a2 * 8.0;
  v8 = MEMORY[0x277D84F98];
  v62 = (1.0 - a1) * 30.0 + (1.0 - a2) * 20.0;
  while (1)
  {

    v9 = v63;
    [v9 bounds];
    MidX = CGRectGetMidX(v64);
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v65.origin.x = v12;
    v65.origin.y = v14;
    v65.size.width = v16;
    v65.size.height = v18;
    MidY = CGRectGetMidY(v65);
    v20 = *(v7 + 16);
    v21 = v6;
    if (v20 == 2)
    {
      v27 = v21 * 360.0;
      v23 = 0.15;
      v29 = 0.671951762;
      v24 = v57;
      v28 = 35;
    }

    else
    {
      v22 = 15.8;
      v23 = 1.09;
      if (v20 != 1)
      {
        v22 = 30.0;
        v23 = 1.02;
      }

      v24 = v59 + v22 - v58;
      v25 = v23 * log(*&v3[v60] / v24);
      v26 = v20 ? 8.0 : 30.0;
      v27 = v21 * 30.0;
      v28 = v20 ? 8 : 30;
      v29 = v25 / v26;
    }

    v30 = (v27 - v62) * 0.0174532925;
    v31 = sub_249FFF0F0(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = *(v31 + 2);
    v33 = 16 * v32;
    v34 = 0.0;
    do
    {
      v35 = exp(v23 * v34);
      v38 = __sincos_stret(v30 + v34);
      cosval = v38.__cosval;
      sinval = v38.__sinval;
      v39 = *(v31 + 3);
      v40 = v32 + 1;
      if (v32 >= v39 >> 1)
      {
        v42 = sub_249FFF0F0((v39 > 1), v32 + 1, 1, v31);
        cosval = v38.__cosval;
        sinval = v38.__sinval;
        v31 = v42;
      }

      *(v31 + 2) = v40;
      v41 = &v31[v33];
      *(v41 + 4) = MidX + cosval * (v24 * v35);
      *(v41 + 5) = MidY + sinval * (v24 * v35);
      v34 = v29 + v34;
      v33 += 16;
      ++v32;
    }

    while (v40 < v28);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = sub_24A004B1C(v6);
    v46 = v8[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      break;
    }

    v50 = v45;
    if (v8[3] < v49)
    {
      sub_249FFA180(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_24A004B1C(v6);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_36;
      }

LABEL_23:
      if (v50)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v52 = v44;
    sub_249FFB05C();
    v44 = v52;
    if (v50)
    {
LABEL_24:
      *(v8[7] + 8 * v44) = v31;

      goto LABEL_28;
    }

LABEL_26:
    v8[(v44 >> 6) + 8] |= 1 << v44;
    *(v8[6] + 8 * v44) = v6;
    *(v8[7] + 8 * v44) = v31;
    v53 = v8[2];
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v48)
    {
      goto LABEL_35;
    }

    v8[2] = v54;
LABEL_28:
    v7 = *&v3[v61];
    if (*(v7 + 16) <= 1u && v6++ < 0xB)
    {
      continue;
    }

    return v8;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_24A021C88();
  __break(1u);
  return result;
}

id sub_249FF9460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandingSpiralScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_249FF9580(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_emoji;
  swift_beginAccess();
  *(v3 + v4) = a1;

  sub_249FF8628();
}

uint64_t (*sub_249FF95E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FF9648;
}

uint64_t sub_249FF9660@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

void (*sub_249FF96F0(uint64_t **a1))(void *a1)
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
  v2[4] = sub_249FF7E48(v2);
  return sub_249FE4784;
}

double sub_249FF9764()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_249FF97AC(double a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_wakeProgress;
  swift_beginAccess();
  *(v3 + v4) = a1;
  sub_249FF7FA4();
}

uint64_t (*sub_249FF9804(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_249FF986C;
}

uint64_t sub_249FF9884(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double sub_249FF98C8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_249FF9910(double a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_unlockProgress;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249FF9A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4D8);
  v34 = a2;
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24A021CB8();
      sub_24A021708();
      result = sub_24A021CE8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249FF9CB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C8);
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_24A021CA8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_249FF9F1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4D0);
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_24A021CA8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_249FFA180(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4A8);
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_24A021CA8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249FFA3F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C0);
  v36 = a2;
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v36 & 1) == 0)
      {
        sub_249FE4E60(v23, v24, v25);
      }

      result = sub_24A021CA8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249FFA690(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B8);
  v33 = a2;
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v34 = *(*(v5 + 48) + v21);
      v22 = (*(v5 + 56) + v21);
      v23 = *v22;
      v24 = v22[1];
      if ((v33 & 1) == 0)
      {
      }

      sub_24A021CB8();
      MEMORY[0x24C20C980](v34);
      MEMORY[0x24C20C980](*(&v34 + 1));
      result = sub_24A021CE8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      *(*(v7 + 48) + v16) = v34;
      v17 = (*(v7 + 56) + v16);
      *v17 = v23;
      v17[1] = v24;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249FFA94C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B0);
  v38 = a2;
  result = sub_24A021AC8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
        sub_249FE4E60(*v23, *(v23 + 8), *(v23 + 16));
      }

      sub_24A021CB8();
      if (v26)
      {
        MEMORY[0x24C20C980](1);
        sub_24A021488();
      }

      else
      {
        MEMORY[0x24C20C980](0);
        sub_24A021708();
      }

      result = sub_24A021CE8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v27;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 24 * v15;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

void *sub_249FFAC44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4D8);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_249FFADB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C8);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_249FFAF10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4D0);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_249FFB05C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4A8);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_249FFB1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4C0);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_249FE4E60(v19, v20, v21);
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

void *sub_249FFB338()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B8);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_249FFB4A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E4B0);
  v2 = *v0;
  v3 = sub_24A021AB8();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_249FE4E60(v19, v20, v21);
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

double sub_249FFB61C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_sizeVariant;
  swift_beginAccess();
  if (v1[v3] != 1)
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;

      v13 = v12 * 0.5;
    }

    else
    {
      v13 = 100.0;
    }

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;

      v18 = v17 * 0.5;
    }

    else
    {
      v18 = 100.0;
    }

    v19 = v18 * a1;
    v6 = *(*&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider] + 16);
    if (v6 == 2)
    {
      v21 = 35.0;
      *&v22 = 460.0;
    }

    else
    {
      if (v6 == 1)
      {
        v20 = v19 * 0.125;
        v7 = 170.0;
LABEL_19:
        v5 = v20 / v13 * (v20 / v13);
        goto LABEL_20;
      }

      v21 = 30.0;
      *&v22 = 60.0;
    }

    v7 = *&v22;
    v20 = v19 / v21;
    goto LABEL_19;
  }

  v4 = *&v1[OBJC_IVAR____TtC11EmojiPoster20ExpandingSpiralScene_layoutProvider];
  sub_24A018F08(a1);
  v6 = *(v4 + 16);
  v7 = 60.0;
  v8 = 170.0;
  if (v6 != 1)
  {
    v8 = 460.0;
  }

  if (*(v4 + 16))
  {
    v7 = v8;
  }

LABEL_20:
  v23 = 20.0;
  if (v6 < 2)
  {
    v23 = 5.0;
  }

  return v23 + v5 * (v7 - v23);
}

uint64_t sub_249FFB814(uint64_t a1, uint64_t a2, void *a3)
{
  v111 = sub_24A0213D8();
  v113 = *(v111 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v96 - v9;
  v110 = v10;
  MEMORY[0x28223BE20](v8);
  v107 = &v96 - v11;
  v12 = sub_24A0216C8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24A021458();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v96 - v18;
  v101 = OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_logger;
  sub_24A021528();
  v102 = OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_numberOfRows;
  *(v3 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_numberOfRows) = 0;
  v104 = OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_patterns;
  *(v3 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_patterns) = MEMORY[0x277D84F90];
  v112 = (v3 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_evenRowSymbolCount);
  *(v3 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_evenRowSymbolCount) = 0;
  v114 = v3;
  v103 = (v3 + OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_oddRowSymbolCount);
  *v103 = 0;
  v117 = a2;
  v20 = sub_24A021658();
  v21 = sub_24A021658();
  v22 = [a3 URLForResource:v20 withExtension:v21];

  if (!v22)
  {

    return v114;
  }

  v100 = a3;
  sub_24A021448();

  v98 = v14;
  v23 = *(v14 + 32);
  v99 = v13;
  v23(v19, v17, v13);
  sub_24A0216B8();
  v24 = 0;
  v25 = sub_24A021648();
  v27 = v26;
  v97 = v19;

  v118 = 10;
  v119 = 0xE100000000000000;
  MEMORY[0x28223BE20](v28);
  v94 = &v118;
  v29 = sub_249FFC4D4(1000, 0, sub_249FFC8F4, (&v96 - 4), v25, v27, &v96);
  v122 = 0;
  v123 = 0xE000000000000000;
  v30 = *(v29 + 16);
  if (v30)
  {
    v115 = 0;
    v106 = v113 + 8;
    v105 = v113 + 32;
    v96 = v29;
    v31 = (v29 + 56);
    while (1)
    {
      v35 = *(v31 - 3);
      v36 = *(v31 - 2);
      v38 = *(v31 - 1);
      v37 = *v31;

      if ((v36 ^ v35) >= 0x4000)
      {
        if (sub_24A021918() == 35 && v69 == 0xE100000000000000)
        {

LABEL_31:

          goto LABEL_5;
        }

        v71 = sub_24A021C38();

        if (v71)
        {
          goto LABEL_31;
        }
      }

      v117 = v30;
      v118 = v35;
      v119 = v36;
      v120 = v38;
      v121 = v37;
      v39 = v107;
      sub_24A0213C8();
      sub_249FFC94C();
      v40 = sub_24A021938();
      v116 = v24;
      v41 = v40;
      v43 = v42;
      v44 = v113;
      v45 = *(v113 + 8);
      v46 = v111;
      v45(v39, v111);

      sub_24A021398();
      v47 = v108;
      sub_24A0213B8();
      v45(v39, v46);
      v48 = *(v44 + 32);
      v49 = v109;
      v48(v109, v47, v46);
      v50 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v51 = swift_allocObject();
      v48((v51 + v50), v49, v46);
      v52 = v41;
      v24 = v116;
      v53 = sub_249FFCA08(v52, v43, sub_249FFC9A0, v51);
      v55 = v54;

      v56 = v112;
      v57 = v115;
      if (v115)
      {
        if (v115 != 1)
        {
          goto LABEL_11;
        }

        v56 = v103;
      }

      *v56 = sub_24A021718();
LABEL_11:

      v58 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v58 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v32 = &v122;
        MEMORY[0x24C20C3F0](v53, v55);

        v33 = __OFADD__(v57, 1);
        v34 = v57 + 1;
        v115 = v34;
        v30 = v117;
        if (v33)
        {
          __break(1u);
LABEL_51:
          v53 = sub_249FFECB8(0, *(v53 + 16) + 1, 1, v53);
          *(v114 + v104) = v53;
LABEL_39:
          v77 = *(v53 + 16);
          v76 = *(v53 + 24);
          if (v77 >= v76 >> 1)
          {
            v53 = sub_249FFECB8((v76 > 1), v77 + 1, 1, v53);
          }

          *(v53 + 16) = v77 + 1;
          v78 = v53 + 16 * v77;
          *(v78 + 32) = v34;
          *(v78 + 40) = v32;
          *(v114 + v104) = v53;
          swift_endAccess();
          goto LABEL_43;
        }
      }

      else
      {

        v59 = v122;
        v60 = v123;
        v61 = HIBYTE(v123) & 0xF;
        if ((v123 & 0x2000000000000000) == 0)
        {
          v61 = v122 & 0xFFFFFFFFFFFFLL;
        }

        v30 = v117;
        if (v61)
        {
          if (!*(v114 + v102))
          {
            *(v114 + v102) = v115;
          }

          v62 = v104;
          v63 = v114;
          swift_beginAccess();
          v64 = *(v63 + v62);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v63 + v62) = v64;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_249FFECB8(0, *(v64 + 2) + 1, 1, v64);
            *(v114 + v104) = v64;
          }

          v67 = *(v64 + 2);
          v66 = *(v64 + 3);
          if (v67 >= v66 >> 1)
          {
            v64 = sub_249FFECB8((v66 > 1), v67 + 1, 1, v64);
          }

          *(v64 + 2) = v67 + 1;
          v68 = &v64[16 * v67];
          *(v68 + 4) = v59;
          *(v68 + 5) = v60;
          *(v114 + v104) = v64;
          swift_endAccess();
          v122 = 0;
          v123 = 0xE000000000000000;
        }
      }

LABEL_5:
      v31 += 4;
      if (!--v30)
      {

        v34 = v122;
        v32 = v123;
        goto LABEL_35;
      }
    }
  }

  v34 = 0;
  v32 = 0xE000000000000000;
LABEL_35:
  v72 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v72 = v34 & 0xFFFFFFFFFFFFLL;
  }

  v55 = v100;
  v46 = v99;
  v30 = v98;
  if (v72)
  {
    v73 = v104;
    v74 = v114;
    swift_beginAccess();
    v53 = *(v74 + v73);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *(v74 + v73) = v53;
    if ((v75 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_39;
  }

LABEL_43:
  v79 = [objc_opt_self() mainScreen];
  [v79 bounds];
  v81 = v80;
  v83 = v82;

  swift_retain_n();
  v84 = sub_24A021518();
  v85 = sub_24A021898();
  if (!os_log_type_enabled(v84, v85))
  {

    goto LABEL_48;
  }

  v86 = swift_slowAlloc();
  *v86 = 134219520;
  v87 = *v103;
  v88 = *v112;
  if (*v103 == *v112 || (v33 = __OFADD__(v87, v88), v87 += v88, !v33))
  {
    *(v86 + 4) = v87;
    *(v86 + 12) = 2048;
    *(v86 + 14) = v88;
    v89 = v86;
    v90 = v114;

    *(v89 + 22) = 2048;
    *(v89 + 24) = *v103;

    *(v89 + 32) = 2048;
    *(v89 + 34) = *(v90 + v102);

    *(v89 + 42) = 2048;
    v91 = v104;
    swift_beginAccess();
    v92 = *(*(v90 + v91) + 16);

    *(v89 + 44) = v92;

    *(v89 + 52) = 2048;
    *(v89 + 54) = v81;
    *(v89 + 62) = 2048;
    *(v89 + 64) = v83;
    _os_log_impl(&dword_249FC9000, v84, v85, "Pattern parser: numloc: %ld, evenCount: %ld, oddCount: %ld, numRows: %ld,   numPatterns: %ld, screenSize: %f, %f", v89, 0x48u);
    MEMORY[0x24C20D580](v89, -1, -1);

LABEL_48:
    (*(v30 + 8))(v97, v46);
    return v114;
  }

  __break(1u);

  v95 = 0;
  v94 = 81;
  result = sub_24A021A88();
  __break(1u);
  return result;
}

uint64_t sub_249FFC2D8()
{
  v1 = OBJC_IVAR____TtC11EmojiPoster18EmojiPatternParser_logger;
  v2 = sub_24A021538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for EmojiPatternParser()
{
  result = qword_2810DA6F0;
  if (!qword_2810DA6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249FFC3D8()
{
  result = sub_24A021538();
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

uint64_t sub_249FFC488(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_249FFC4D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24A0217A8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_249FFEDC4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_249FFEDC4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24A021788();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24A021728();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24A021728();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24A0217A8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_249FFEDC4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24A0217A8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_249FFEDC4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_249FFEDC4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24A021728();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249FFC894@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_249FFC8C4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_249FFC8E4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_249FFC8F4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A021C38() & 1;
  }
}

unint64_t sub_249FFC94C()
{
  result = qword_2810D9BF0;
  if (!qword_2810D9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810D9BF0);
  }

  return result;
}

uint64_t sub_249FFCA08(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_24A0219A8();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_24A021A18();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        sub_24A0216E8();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

void sub_249FFCD24()
{
  v1 = *&v0[OBJC_IVAR____TtC11EmojiPoster23EmojiCollectionViewCell_emojiView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E208);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24A027060;
  v5 = [v0 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = [v0 contentView];
  v10 = [v9 trailingAnchor];

  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v1 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 48) = v16;
  v17 = [v0 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v1 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 56) = v20;
  sub_249FECDC0(0, &qword_2810D9B80);
  v21 = sub_24A0217C8();

  [v3 activateConstraints_];
}

id EmojiCollectionViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource] = 0;
  v3[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning] = 0;
  v4 = OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_hiddenEmojiField;
  *&v3[v4] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v5 = &v3[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration];
  v6 = *(a1 + 48);
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 3) = v6;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v7;
  v5[128] = *(a1 + 128);
  v8 = *(a1 + 112);
  *(v5 + 6) = *(a1 + 96);
  *(v5 + 7) = v8;
  v9 = *(a1 + 80);
  *(v5 + 4) = *(a1 + 64);
  *(v5 + 5) = v9;
  v10 = [objc_allocWithZone(type metadata accessor for EmojiSpiralLayout()) init];
  v13.receiver = v3;
  v13.super_class = v1;
  v11 = objc_msgSendSuper2(&v13, sel_initWithCollectionViewLayout_, v10);

  return v11;
}

id EmojiCollectionViewController.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource] = 0;
  v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning] = 0;
  v3 = OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_hiddenEmojiField;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration];
  v5 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v5;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[128] = *(a1 + 128);
  v7 = *(a1 + 112);
  *(v4 + 6) = *(a1 + 96);
  *(v4 + 7) = v7;
  v8 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v8;
  v9 = [objc_allocWithZone(type metadata accessor for EmojiSpiralLayout()) init];
  v12.receiver = v1;
  v12.super_class = type metadata accessor for EmojiCollectionViewController();
  v10 = objc_msgSendSuper2(&v12, sel_initWithCollectionViewLayout_, v9);

  return v10;
}

id EmojiCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EmojiCollectionViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource] = 0;
  v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning] = 0;
  v3 = OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_hiddenEmojiField;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v4 = &v1[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 24) = _Q0;
  *(v4 + 40) = _Q0;
  *(v4 + 26) = 16908288;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  v10 = MEMORY[0x277D84F90];
  *(v4 + 56) = 0u;
  *(v4 + 14) = v10;
  *(v4 + 15) = &unk_285D25C38;
  v4[128] = 0;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for EmojiCollectionViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_249FFD3A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E500);
  v30 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v30 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E508);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v32);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v30 - v7;
  v8 = type metadata accessor for EmojiCollectionViewController();
  v36.receiver = v0;
  v36.super_class = v8;
  objc_msgSendSuper2(&v36, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  [v10 setBackgroundColor_];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  v14 = [v11 clearColor];
  [v13 setBackgroundColor_];

  v15 = *&v0[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_hiddenEmojiField];
  [v15 setDelegate_];
  [v15 setHidden_];
  [v15 setKeyboardType_];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  [result addSubview_];

  *(swift_allocObject() + 16) = v0;
  type metadata accessor for EmojiCollectionViewCell();
  v17 = v0;
  v18 = v33;
  sub_24A0218A8();
  result = [v17 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v31;
  v19 = v32;
  (*(v4 + 16))(v31, v18, v32);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  (*(v4 + 32))(v22 + v21, v20, v19);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E510));
  v24 = sub_24A021578();
  v25 = OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource;
  v26 = *&v17[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource];
  *&v17[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_diffableDataSource] = v24;

  result = [v17 collectionView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  [result setDataSource_];

  sub_24A021568();
  sub_24A021558();
  v34 = 0;
  v35 = 0;
  sub_24A021548();
  v34 = 1;
  v35 = 0;
  sub_24A021548();
  v34 = 2;
  v35 = 0;
  sub_24A021548();
  v34 = 3;
  v35 = 0;
  sub_24A021548();
  v34 = 4;
  v35 = 0;
  sub_24A021548();
  v34 = 5;
  v35 = 0;
  result = sub_24A021548();
  v28 = *&v17[v25];
  if (v28)
  {
    v29 = v28;
    sub_24A021588();

    (*(v30 + 8))(v3, v1);
    return (*(v4 + 8))(v33, v19);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_249FFD920(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(EmojiPosterConfiguration.emojis.getter() + 16);

  v7 = *(a1 + OBJC_IVAR____TtC11EmojiPoster23EmojiCollectionViewCell_emojiView);
  if (!v6)
  {
    [v7 setText_];
    goto LABEL_10;
  }

  v8 = EmojiPosterConfiguration.emojis.getter();
  v9 = sub_24A0214D8();
  v10 = *(EmojiPosterConfiguration.emojis.getter() + 16);

  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v9 % v10;
  if (v9 % v10 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= *(v8 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v8 + 24 * v11;
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);
  v15 = *(v12 + 48);
  sub_249FE4E60(v13, v14, v15);

  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x277D74208]);
    v17 = sub_24A021468();
    v18 = [v16 initWithImageContent_];

    sub_24A020404(MEMORY[0x277D84F90]);
    type metadata accessor for Key(0);
    sub_249FFF8EC(&qword_2810D9B70, type metadata accessor for Key);
    v19 = sub_24A021608();

    v20 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v18 attributes:v19];
  }

  else
  {
    v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v19 = sub_24A021658();
    v20 = [v21 initWithString_];
  }

  sub_249FE4EC4(v13, v14, v15);
  [v7 setAttributedText_];

LABEL_10:
  v22 = [a4 collectionView];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [v22 numberOfItemsInSection_];

  v25 = 167.0 / v24 * (sub_24A0214D8() + 1.0);
  v26 = [objc_opt_self() systemFontOfSize_];
  [v7 setFont_];
}

uint64_t sub_249FFDCC0()
{
  sub_24A0214D8();
  type metadata accessor for EmojiCollectionViewCell();
  return sub_24A0218B8();
}

void sub_249FFDD70()
{
  v1 = v0;
  v2 = sub_24A0215A8();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A0215C8();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A0215E8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v32 = [v15 collectionViewLayout];

    type metadata accessor for EmojiSpiralLayout();
    v17 = swift_dynamicCastClass();
    if (v17 && *(v1 + OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning) == 1)
    {
      v18 = v17;
      sub_24A0215D8();
      sub_24A0215F8();
      v19 = *(v9 + 8);
      v27 = v9 + 8;
      v28 = v19;
      v19(v12, v8);
      sub_249FECDC0(0, &unk_27EF2E5C0);
      v20 = sub_24A0218D8();
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v1;
      aBlock[4] = sub_249FFF808;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24A00F7B0;
      aBlock[3] = &block_descriptor_5;
      v22 = _Block_copy(aBlock);
      v23 = v29;
      v24 = v22;
      v32 = v32;
      v25 = v1;

      sub_24A0215B8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_249FFF8EC(&qword_27EF2E790, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5D0);
      sub_249FFF888();
      sub_24A021958();
      MEMORY[0x24C20C580](v14, v7, v4, v24);
      _Block_release(v24);

      (*(v23 + 8))(v4, v2);
      (*(v30 + 8))(v7, v31);
      v28(v14, v8);
    }

    else
    {
      v26 = v32;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_249FFE1D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_hiddenEmojiField);
  v2 = [v1 isFirstResponder];
  v3 = &selRef_resignFirstResponder;
  if (!v2)
  {
    v3 = &selRef_becomeFirstResponder;
  }

  v4 = *v3;

  return [v1 v4];
}

void sub_249FFE23C()
{
  if (*(v0 + OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning) == 1)
  {
    *(v0 + OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning) = 0;
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_isSpinning) = 1;
    sub_249FFDD70();
  }
}

id sub_249FFE264(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 text];
  if (v6)
  {
    v7 = v6;
    sub_24A021698();
  }

  v8 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v9 = sub_24A021658();

  v10 = [v8 initWithString_];

  v11 = sub_24A021658();
  v59 = v10;
  v12 = [v10 stringByReplacingCharactersInRange:a2 withString:{a3, v11}];

  v13 = sub_24A021698();
  v15 = v14;

  *&v64 = v13;
  *(&v64 + 1) = v15;

  sub_24A021798();
  v16 = String.emojiString()();
  v17 = sub_24A021658();
  [a1 setText_];

  v18 = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 64];
  *&v74[32] = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 48];
  *&v74[48] = v18;
  *&v74[64] = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 80];
  *&v74[74] = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 90];
  v19 = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 32];
  v60 = &v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration];
  *v74 = *&v61[OBJC_IVAR____TtC11EmojiPoster29EmojiCollectionViewController_configuration + 16];
  *&v74[16] = v19;
  if ((v16._object & 0x2000000000000000) != 0)
  {
    v20 = (v16._object >> 56) & 0xF;
  }

  else
  {
    v20 = v16._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_249FDDE00(v74, &v64);

    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v16._object & 0x1000000000000000) != 0)
      {
        v25 = sub_24A0219A8();
        v27 = v26;
        if (v25 > 0x7F)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      if ((v16._object & 0x2000000000000000) != 0)
      {
        *&v64 = v16._countAndFlagsBits;
        *(&v64 + 1) = v16._object & 0xFFFFFFFFFFFFFFLL;
        v24 = &v64 + v21;
      }

      else
      {
        v23 = (v16._object & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v16._countAndFlagsBits & 0x1000000000000000) == 0)
        {
          v23 = sub_24A021A18();
        }

        v24 = (v23 + v21);
      }

      v25 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        break;
      }

      v36 = (__clz(v25 ^ 0xFF) - 24);
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v25 = ((v25 & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
          v27 = 3;
          if (v25 > 0x7F)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v25 = ((v25 & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
          v27 = 4;
          if (v25 > 0x7F)
          {
LABEL_24:
            v35 = (v25 & 0x3F) << 8;
            if (v25 >= 0x800)
            {
              v37 = (v35 | (v25 >> 6) & 0x3F) << 8;
              v38 = (((v37 | (v25 >> 12) & 0x3F) << 8) | (v25 >> 18)) - 2122219023;
              v28 = (v25 >> 12) + v37 + 8487393;
              if (HIWORD(v25))
              {
                v28 = v38;
              }
            }

            else
            {
              v28 = (v25 >> 6) + v35 + 33217;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        if (v36 == 1)
        {
          break;
        }

        v25 = v24[1] & 0x3F | ((v25 & 0x1F) << 6);
        v27 = 2;
        if (v25 > 0x7F)
        {
          goto LABEL_24;
        }
      }

LABEL_14:
      v28 = v25 + 1;
LABEL_15:
      *&v64 = (v28 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v28) >> 3))));
      v29 = sub_24A0216F8();
      v31 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_249FFF1F4(0, *(v22 + 2) + 1, 1, v22);
      }

      v33 = *(v22 + 2);
      v32 = *(v22 + 3);
      if (v33 >= v32 >> 1)
      {
        v22 = sub_249FFF1F4((v32 > 1), v33 + 1, 1, v22);
      }

      v21 += v27;
      *(v22 + 2) = v33 + 1;
      v34 = &v22[24 * v33];
      *(v34 + 4) = v29;
      *(v34 + 5) = v31;
      v34[48] = 0;
      if (v21 >= v20)
      {

        goto LABEL_38;
      }
    }

    v27 = 1;
    if (v25 > 0x7F)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  sub_249FDDE00(v74, &v64);
  v22 = MEMORY[0x277D84F90];
LABEL_38:
  v39 = MEMORY[0x277D84F90];
  if (v74[89] == 1)
  {
    sub_249FDDE00(v74, &v64);

    v41 = _sSo7UIColorC11EmojiPosterE021emp_suggestedColorForB0yABSgSayAC0B0OGFZ_0(v40);
    v42 = v74[0];
    if (v41)
    {
      EmojiPosterBackgroundColor.init(_:)(v41);
      v44 = v64;
      v43 = v65;
      v46 = *&v74[40];
      v45 = *&v74[56];
      v47 = 1;
      v48 = 1;
      v49 = *&v74[72];
      v50 = *&v74[80];
    }

    else
    {
      v73[0] = *&v74[1];
      *(v73 + 3) = *&v74[4];
      v44 = *&v74[8];
      v43 = *&v74[24];
      v46 = *&v74[40];
      v45 = *&v74[56];
      v49 = *&v74[72];
      v50 = *&v74[80];
      v47 = v74[88];
      v48 = v74[89];
    }
  }

  else
  {
    sub_249FDDE00(v74, &v64);
    v42 = v74[0];
    v73[0] = *&v74[1];
    *(v73 + 3) = *&v74[4];
    v62 = *&v74[8];
    v63 = *&v74[24];
    v57 = *&v74[40];
    v58 = *&v74[56];
    v49 = *&v74[72];
    v50 = *&v74[80];
    v47 = v74[88];
    v48 = v74[89];

    v46 = v57;
    v45 = v58;
    v44 = v62;
    v43 = v63;
  }

  v51 = *(v60 + 7);
  v70 = *(v60 + 6);
  v71 = v51;
  v72 = v60[128];
  v52 = *(v60 + 3);
  v66 = *(v60 + 2);
  v67 = v52;
  v53 = *(v60 + 5);
  v68 = *(v60 + 4);
  v69 = v53;
  v54 = *(v60 + 1);
  v64 = *v60;
  v65 = v54;
  *v60 = 0;
  *(v60 + 1) = 0;
  v60[16] = v42;
  *(v60 + 17) = v73[0];
  *(v60 + 5) = *(v73 + 3);
  *(v60 + 24) = v44;
  *(v60 + 40) = v43;
  *(v60 + 56) = v46;
  *(v60 + 72) = v45;
  *(v60 + 11) = v49;
  *(v60 + 12) = v50;
  v60[104] = v47;
  v60[105] = v48;
  *(v60 + 53) = 258;
  *(v60 + 14) = v39;
  *(v60 + 15) = v22;
  v60[128] = 0;
  sub_249FDE2C0(&v64);
  result = [v61 collectionView];
  if (result)
  {
    v56 = result;

    sub_249FDDE80(v74);

    [v56 reloadData];

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id EmojiCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id EmojiCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24A021658();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_249FFEAF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_249FFEBB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_249FFECB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E580);
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

char *sub_249FFEDC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_249FFEED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2E5E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_249FFEFD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E5D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_249FFF0F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2E598);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}