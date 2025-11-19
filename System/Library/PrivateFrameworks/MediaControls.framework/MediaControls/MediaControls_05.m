id sub_1A224AABC(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC13MediaControls6Slider_style];
  swift_beginAccess();
  v4 = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  *(v3 + 2) = *(a1 + 32);
  v3[48] = *(a1 + 48);
  v6 = *&v1[OBJC_IVAR____TtC13MediaControls6Slider_configuration];
  [v6 setExpansionFactor_];
  [v6 setStretchLimit_];
  return [v1 _setSliderConfiguration_];
}

id sub_1A224AB6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD718]);

  return [v0 init];
}

void (*sub_1A224ABC0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls6Slider_configuration);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 minimumValueView];
  return sub_1A224AC24;
}

void sub_1A224AC3C(void *a1, SEL *a2)
{
  v3 = *&v2[OBJC_IVAR____TtC13MediaControls6Slider_configuration];
  [v3 *a2];
  [v2 _setSliderConfiguration_];
}

void (*sub_1A224ACA8(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls6Slider_configuration);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = [v3 maximumValueView];
  return sub_1A224AD0C;
}

void sub_1A224AD18(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v6 = *a1;
    [v4 *a3];
    [v5 _setSliderConfiguration_];
  }

  else
  {
    v6 = *a1;
    [*(a1 + 16) *a3];
    [v5 _setSliderConfiguration_];
  }
}

uint64_t sub_1A224ADC4()
{
  v1 = OBJC_IVAR____TtC13MediaControls6Slider_isEditing;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A224AE08(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls6Slider_isEditing;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0x40000;
  }

  return [v1 sendActionsForControlEvents_];
}

void (*sub_1A224AE78(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls6Slider_isEditing;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A224AF00;
}

void sub_1A224AF00(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (v4[v3[4]])
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0x40000;
    }

    [v4 sendActionsForControlEvents_];
  }

  free(v3);
}

char *sub_1A224AF68(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls6Slider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC13MediaControls6Slider_style];
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  *v9 = xmmword_1A230AB00;
  *(v9 + 1) = v10;
  *(v9 + 2) = v11;
  v9[48] = 0;
  v12 = OBJC_IVAR____TtC13MediaControls6Slider_configuration;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD718]) init];
  v4[OBJC_IVAR____TtC13MediaControls6Slider_isEditing] = 0;
  v4[OBJC_IVAR____TtC13MediaControls6Slider_coordinatedIsEnabled] = 1;
  v13 = &v4[OBJC_IVAR____TtC13MediaControls6Slider_accessibilityIncrementHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC13MediaControls6Slider_accessibilityDecrementHandler];
  v15 = type metadata accessor for Slider();
  *v14 = 0;
  v14[1] = 0;
  v22.receiver = v4;
  v22.super_class = v15;
  v16 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 setMinimumValue_];
  LODWORD(v17) = 1.0;
  [v16 setMaximumValue_];
  v18 = v16;
  [v18 _setSliderStyle_];
  v19 = OBJC_IVAR____TtC13MediaControls6Slider_configuration;
  v20 = *&v18[OBJC_IVAR____TtC13MediaControls6Slider_configuration];
  [v20 setDelegate_];

  [v18 _setSliderConfiguration_];
  return v18;
}

double sub_1A224B164(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = type metadata accessor for Slider();
  objc_msgSendSuper2(&v20, sel_trackRectForBounds_, a1, a2, a3, a4);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetWidth(v24);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))(v21);
  if (v22)
  {
    v13 = a1;
  }

  else
  {
    v13 = x;
  }

  if (v22)
  {
    v14 = a2;
  }

  else
  {
    v14 = y;
  }

  if (v22)
  {
    v15 = a3;
  }

  else
  {
    v15 = width;
  }

  v16 = a4;
  if ((v22 & 1) == 0)
  {
    v16 = height;
  }

  CGRectGetHeight(*&v13);
  return MinX;
}

void sub_1A224B274()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for Slider();
  v1 = objc_msgSendSuper2(&v10, sel_hitRect);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v11, v1);
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, *&v11[2], *&v11[3]);
}

BOOL sub_1A224B404(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

id sub_1A224B49C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Slider();
  return objc_msgSendSuper2(&v2, sel_isEnabled);
}

id sub_1A224B4D0(char a1)
{
  if (a1)
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))();
  }

  else
  {
    v2 = 0;
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for Slider();
  return objc_msgSendSuper2(&v4, sel_setEnabled_, v2 & 1);
}

uint64_t sub_1A224B55C()
{
  v1 = OBJC_IVAR____TtC13MediaControls6Slider_coordinatedIsEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A224B5A0(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls6Slider_coordinatedIsEnabled;
  swift_beginAccess();
  v1[v3] = a1;
  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v1;
  sub_1A21179EC(v7, sub_1A224C86C, v4, 0, 0);

  return sub_1A2116928(v7);
}

void (*sub_1A224B670(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 88) = v1;
  swift_beginAccess();
  return sub_1A224B6FC;
}

void sub_1A224B6FC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[11];
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A229BEB0(v3);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_1A21179EC(v3, sub_1A224CA24, v5, 0, 0);

    sub_1A2116928(v3);
  }

  free(v3);
}

uint64_t sub_1A224B84C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1A2111D40(*v2);
  return v3;
}

uint64_t sub_1A224B8B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_1A210F5C0(v7);
}

id sub_1A224B96C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x128))();
  if (v1)
  {
    v2 = v1;
    v1();

    return sub_1A210F5C0(v2);
  }

  else
  {
    v4.receiver = v0;
    v4.super_class = type metadata accessor for Slider();
    return objc_msgSendSuper2(&v4, sel_accessibilityIncrement);
  }
}

id sub_1A224BB04()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v1)
  {
    v2 = v1;
    v1();

    return sub_1A210F5C0(v2);
  }

  else
  {
    v4.receiver = v0;
    v4.super_class = type metadata accessor for Slider();
    return objc_msgSendSuper2(&v4, sel_accessibilityDecrement);
  }
}

id sub_1A224BC9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Slider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A224BDBC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))();
  return sub_1A220BEF8;
}

uint64_t sub_1A224BE98(double a1, double a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(1);
  result = (*((*v5 & *v2) + 0x88))(v6);
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, ObjectType, v9, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A224C0AC(double a1, double a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v2, ObjectType, v7, a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A224C248()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A224C3B0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))(0);
  result = (*((*v1 & *v0) + 0x88))(v2);
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(v0, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A224C590(double a1, double a2, double a3, double a4)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x88))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(v4, ObjectType, v11, a1, a2, a3, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A224C768()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls6Slider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC13MediaControls6Slider_style;
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = xmmword_1A230AB00;
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  *(v1 + 48) = 0;
  v4 = OBJC_IVAR____TtC13MediaControls6Slider_configuration;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD718]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls6Slider_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls6Slider_coordinatedIsEnabled) = 1;
  v5 = (v0 + OBJC_IVAR____TtC13MediaControls6Slider_accessibilityIncrementHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC13MediaControls6Slider_accessibilityDecrementHandler);
  *v6 = 0;
  v6[1] = 0;
  sub_1A22E7028();
  __break(1u);
}

id sub_1A224C870()
{
  v1 = *(v0 + 16);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))() & 1;

  return [v1 setEnabled_];
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A224C96C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A224C9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A224CA94()
{
  v1 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A224CAD8(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_state;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  result = sub_1A2229988(a1, v4);
  if ((result & 1) == 0)
  {
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A2126CF0(v8);
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = v1;
    sub_1A21179EC(v8, sub_1A224CBB8, v6, 0, 0);

    return sub_1A2116928(v8);
  }

  return result;
}

void (*sub_1A224CBBC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_state;
  *(v3 + 152) = v1;
  *(v3 + 160) = v5;
  swift_beginAccess();
  *(v4 + 57) = *(v1 + v5);
  return sub_1A224CC50;
}

void sub_1A224CC50(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 57);
  v6 = v3[19];
  v5 = v3[20];
  v7 = *(v6 + v5);
  *(v6 + v5) = v4;
  v8 = sub_1A2229988(v4, v7);
  if (a2)
  {
    if (v8)
    {
      goto LABEL_7;
    }

    v9 = v3[19];
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A2126CF0(v3);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = v9;
    sub_1A21179EC(v3, sub_1A224F38C, v10, 0, 0);
    v12 = v3;
  }

  else
  {
    if (v8)
    {
      goto LABEL_7;
    }

    v12 = (v3 + 8);
    v13 = v3[19];
    sub_1A2115288(0, &qword_1ED94E980);
    sub_1A2126CF0((v3 + 8));
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = v13;
    sub_1A21179EC(v3 + 8, sub_1A224F38C, v14, 0, 0);
  }

  sub_1A2116928(v12);
LABEL_7:

  free(v3);
}

id sub_1A224CDB8()
{
  v1 = *(v0 + 16);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))();
  v3 = 1.0;
  if ((v2 & 0xFE) == 0)
  {
    v3 = 0.0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider);

  return [v4 setAlpha_];
}

uint64_t sub_1A224CEDC(float a1)
{
  result = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1A224CF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  sub_1A2125248(a1, a2);
  result = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

id sub_1A224CFA0()
{
  type metadata accessor for RoutePickerItemSlider();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A224CFF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1A224D068@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088F58);
}

uint64_t sub_1A224D0D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_viewModel;
  swift_beginAccess();
  sub_1A224EA20(a1, v1 + v3);
  swift_endAccess();
  sub_1A224D434(1);
  return sub_1A210D9B0(a1, &qword_1EB088F58);
}

uint64_t (*sub_1A224D150(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A224D1B4;
}

uint64_t sub_1A224D1B4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A224D434(1);
  }

  return result;
}

void (*sub_1A224D23C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

id sub_1A224D31C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoutePickerItemVolumeControl(0);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider];
  [v0 bounds];
  return [v1 setFrame_];
}

uint64_t sub_1A224D434(int a1)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F58);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider);
  v13 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
  v33 = v1;
  v13(v9);
  v14 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v7, 1, v14))
  {
    sub_1A210D9B0(v7, &qword_1EB088F58);
    v16 = sub_1A22E5D98();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = 0;
  }

  else
  {
    sub_1A2214CF8(v7, v11, &qword_1EB088BE8);
    sub_1A210D9B0(v7, &qword_1EB088F58);
    v18 = sub_1A22E5D98();
    v17 = (*(*(v18 - 8) + 48))(v11, 1, v18) != 1;
  }

  sub_1A210D9B0(v11, &qword_1EB088BE8);
  v19 = [v12 setUserInteractionEnabled_];
  v20 = v33;
  v13(v19);
  if (v15(v5, 1, v14))
  {
    sub_1A210D9B0(v5, &qword_1EB088F58);
    return (*((*MEMORY[0x1E69E7D40] & *v12) + 0x158))(0, 0.0);
  }

  else
  {
    v22 = *&v5[*(v14 + 20)];
    v23 = sub_1A210D9B0(v5, &qword_1EB088F58);
    v24 = MEMORY[0x1E69E7D40];
    result = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x128))(v23);
    if ((result & 1) == 0)
    {
      result = sub_1A2114434();
      if (result)
      {
        if (v32)
        {
          return (*((*v24 & *v12) + 0x158))(1, v22);
        }

        else
        {
          v25 = objc_opt_self();
          v26 = swift_allocObject();
          *(v26 + 16) = v20;
          *(v26 + 24) = v22;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1A224F2D0;
          *(v27 + 24) = v26;
          aBlock[4] = sub_1A22154EC;
          aBlock[5] = v27;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A2212E7C;
          aBlock[3] = &block_descriptor_38;
          v28 = _Block_copy(aBlock);
          v29 = v20;

          [v25 performWithoutAnimation_];
          _Block_release(v28);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

void sub_1A224D96C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F68);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  v4 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_updateViewModelTimer;
  [*(v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_updateViewModelTimer) invalidate];
  sub_1A22E5598();
  v5 = sub_1A22E55A8();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_lastInteractionDate;
  swift_beginAccess();
  sub_1A212E4EC(v3, v0 + v6, &qword_1EB088F68);
  swift_endAccess();
  v7 = objc_opt_self();
  v8 = *(v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_postInteractionUpdateDelay);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1A224F27C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A224DB84;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);

  v11 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:v8];
  _Block_release(v10);
  v12 = *(v0 + v4);
  *(v0 + v4) = v11;
}

void sub_1A224DB84(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1A224DBEC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider];
  v3 = OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView;
  v4 = *(v2 + OBJC_IVAR____TtC13MediaControls21RoutePickerItemSlider_trackView);
  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = MEMORY[0x1E69E7D40];
  if (v6 == 1)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))())
    {
      v10 = [objc_opt_self() systemBlackColor];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v6 != 2)
  {
LABEL_7:
    v12 = [objc_opt_self() systemBlackColor];
    v10 = [v12 colorWithAlphaComponent_];

    goto LABEL_8;
  }

  v8 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))();
  v9 = [objc_opt_self() systemWhiteColor];
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = [v9 colorWithAlphaComponent_];

    v10 = v11;
  }

LABEL_8:
  [v4 setBackgroundColor_];

  v13 = [*(v2 + v3) layer];
  if ((*((*v7 & *v2) + 0x128))())
  {
    v14 = 0;
  }

  else
  {
    v15 = [v1 traitCollection];
    v14 = sub_1A228BEC0();

    if (v14)
    {
      sub_1A224DFDC(v14);

      v14 = sub_1A22E6738();
    }
  }

  [v13 setFilters_];

  v24 = [v1 layer];
  v16 = [v1 traitCollection];
  v17 = [v16 userInterfaceStyle];

  v18 = [v1 traitCollection];
  v19 = [v18 accessibilityContrast];

  if (v19 == 1)
  {
    v20 = objc_opt_self();
    v21 = &selRef_systemBlackColor;
    if (v17 == 2)
    {
      v21 = &selRef_systemWhiteColor;
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = &selRef_clearColor;
  }

  v22 = [v20 *v21];
  v23 = [v22 CGColor];

  [v24 setBorderColor_];
}

char *sub_1A224DFDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A22E6DE8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A224E5EC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A58DB0F0](i, a1);
        sub_1A2115288(0, &qword_1ED94E958);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A224E5EC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A210E174(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A2115288(0, &qword_1ED94E958);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A224E5EC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A210E174(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1A224E220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemVolumeControl(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A224E2F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143C3E8);

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))(v5))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v2, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEB0(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v10 = v2;
  sub_1A21179EC(v12, sub_1A224F390, v9, 0, 0);

  return sub_1A2116928(v12);
}

uint64_t sub_1A224E46C(uint64_t a1)
{
  v2 = v1;
  v4 = *(**sub_1A2113F38() + 160);

  v4(a1, &off_1F143C3E8);

  sub_1A224D96C();
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xB8))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  sub_1A2115288(0, &qword_1ED94E980);
  sub_1A229BEE0(v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  v9 = v2;
  sub_1A21179EC(v11, sub_1A224EFC0, v8, 0, 0);

  return sub_1A2116928(v11);
}

char *sub_1A224E5EC(char *a1, int64_t a2, char a3)
{
  result = sub_1A224E60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A224E60C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
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
    v10 = MEMORY[0x1E69E7CC0];
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

BOOL sub_1A224E71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A22E5D98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1A2214CF8(a1, &v21 - v13, &qword_1EB088BE8);
  sub_1A2214CF8(a2, &v14[v15], &qword_1EB088BE8);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1A2214CF8(v14, v10, &qword_1EB088BE8);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1A224F334();
      v18 = sub_1A22E6568();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A210D9B0(v14, &qword_1EB088BE8);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1A210D9B0(v14, &qword_1EB088F70);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1A210D9B0(v14, &qword_1EB088BE8);
LABEL_9:
  v20 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

uint64_t sub_1A224EA20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F58);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1A224EAB0()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_state) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_slider;
  type metadata accessor for RoutePickerItemSlider();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_viewModel;
  v3 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_postInteractionUpdateDelay;
  *(v0 + v4) = sub_1A22549D8();
  v5 = OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_lastInteractionDate;
  v6 = sub_1A22E55A8();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC13MediaControls28RoutePickerItemVolumeControl_updateViewModelTimer) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A224EC08(void *a1)
{
  v29 = a1;
  v2 = sub_1A22E5D98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1A22E5738();
  v28 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - v14;
  v16 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))(v13);
  v17 = type metadata accessor for RoutePickerItemVolumeControl.ViewModel(0);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) || (*(v3 + 48))(v8, 1, v2))
  {
    return sub_1A210D9B0(v8, &qword_1EB088F58);
  }

  (*(v3 + 16))(v5, v8, v2);
  v19 = sub_1A210D9B0(v8, &qword_1EB088F58);
  v20 = *((*v16 & *v29) + 0xC8);
  v26 = (*v16 & *v29) + 200;
  v27 = v20;
  (v20)(v19);
  sub_1A22E5D88();
  (*(v3 + 8))(v5, v2);
  v21 = v28;
  v22 = (*(v28 + 32))(v15, v12, v9);
  if ((*((*v16 & *v1) + 0xB8))(v22))
  {
    v24 = v23;
    ObjectType = swift_getObjectType();
    v27();
    (*(v24 + 16))(v1, v15, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return (*(v21 + 8))(v15, v9);
}

void sub_1A224EFEC()
{
  sub_1A224F124(319, qword_1ED94EDF8, type metadata accessor for RoutePickerItemVolumeControl.ViewModel);
  if (v0 <= 0x3F)
  {
    sub_1A224F124(319, &qword_1ED950788, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A224F124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A22E6D68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A224F1B0()
{
  sub_1A224F124(319, &unk_1ED950C20, MEMORY[0x1E69AE690]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A224F27C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A224D434(1);
  }
}

unint64_t sub_1A224F334()
{
  result = qword_1ED9506F0;
  if (!qword_1ED9506F0)
  {
    sub_1A22E5D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9506F0);
  }

  return result;
}

double sub_1A224F398(char a1, double result, double a3)
{
  if (!a1)
  {
    return 46.0;
  }

  if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v3 = result;
  }

  else
  {
    v3 = a3;
  }

  if ((~*&a3 & 0x7FF0000000000000) != 0)
  {
    v3 = a3;
  }

  if (result > a3)
  {
    result = v3;
  }

  if (a1 == 1)
  {
    return 64.0;
  }

  return result;
}

__n128 sub_1A224F3E8@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  sub_1A2252EA4(a1, v6);
  v3 = v6[5];
  a2[4] = v6[4];
  a2[5] = v3;
  a2[6].n128_u8[0] = v7;
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = v6[3];
  a2[2] = v6[2];
  a2[3] = result;
  return result;
}

uint64_t sub_1A224F494(double a1)
{
  result = swift_beginAccess();
  qword_1EB088F78 = *&a1;
  return result;
}

double sub_1A224F53C()
{
  v0 = sub_1A2264380();
  v1 = v0[3];
  v16 = v0[2];
  v17[0] = v1;
  *(v17 + 9) = *(v0 + 57);
  v14 = *v0;
  v15 = v0[1];
  sub_1A22E6A38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A224A8BC();
  v11 = sub_1A224A8C8();
  v12 = sub_1A2113050();
  sub_1A224A94C(v12 & 1, &v15 + 8, v10, v11, v3, v5, v7, v9);
  xmmword_1EB0913F8 = v16;
  unk_1EB091408 = v17[0];
  unk_1EB091411 = *(v17 + 9);
  result = *&v15;
  xmmword_1EB0913D8 = v14;
  unk_1EB0913E8 = v15;
  return result;
}

__int128 *sub_1A224F604()
{
  if (qword_1EB08BFB0 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB0913D8;
}

__n128 sub_1A224F654@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EB08BFB0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EB091408;
  *(a1 + 32) = xmmword_1EB0913F8;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1EB091411;
  result = unk_1EB0913E8;
  *a1 = xmmword_1EB0913D8;
  *(a1 + 16) = result;
  return result;
}

double sub_1A224F6CC()
{
  if (qword_1EB08BFB0 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EB0913D8;
}

double sub_1A224F71C(char a1)
{
  if (!a1)
  {
    return 11.0;
  }

  if (a1 == 1)
  {
    return 20.0;
  }

  return 24.0;
}

double sub_1A224F768(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1A2214CF8(a2, &v10 - v5, &qword_1EB088F80);
  v7 = type metadata accessor for SessionContentViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1A210D9B0(v6, &qword_1EB088F80);
    v8 = 0;
  }

  else
  {
    v8 = v6[*(v7 + 28)];
    sub_1A2253628(v6, type metadata accessor for SessionContentViewModel);
  }

  return sub_1A2253064(a1, v8);
}

double sub_1A224F8A4()
{
  if (qword_1EB08BFB0 != -1)
  {
    swift_once();
  }

  v0 = *&xmmword_1EB0913D8 + 64.0;
  sub_1A22E6A48();
  return v0 + v1;
}

uint64_t sub_1A224F928()
{
  v1 = OBJC_IVAR____TtC13MediaControls18SessionContentView_state;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A224F96C(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls18SessionContentView_state;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    sub_1A2252648();
    sub_1A225279C();
    return sub_1A2252B08();
  }

  return result;
}

void (*sub_1A224F9D4(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls18SessionContentView_state;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A224FA68;
}

void sub_1A224FA68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_1A2252648();
    sub_1A225279C();
    sub_1A2252B08();
  }

  free(v1);
}

uint64_t sub_1A224FAC8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionContentViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_1A224FB34(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for SessionContentViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FA0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1A2214CF8(v1 + v13, v12, &qword_1EB088F80);
  sub_1A2214CF8(v18, &v12[v14], &qword_1EB088F80);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_1A210D9B0(v12, &qword_1EB088F80);
    }

    goto LABEL_6;
  }

  sub_1A2214CF8(v12, v8, &qword_1EB088F80);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1A2253628(v8, type metadata accessor for SessionContentViewModel);
LABEL_6:
    sub_1A210D9B0(v12, &qword_1EB088FA0);
LABEL_7:
    sub_1A22520E8();
    sub_1A2252648();
    sub_1A225279C();
    return sub_1A2252B08();
  }

  sub_1A2253688(&v12[v14], v5);
  sub_1A22536EC();
  v17 = sub_1A22E6568();
  sub_1A2253628(v5, type metadata accessor for SessionContentViewModel);
  sub_1A2253628(v8, type metadata accessor for SessionContentViewModel);
  result = sub_1A210D9B0(v12, &qword_1EB088F80);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A224FE40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  swift_beginAccess();
  return sub_1A2214CF8(v1 + v3, a1, &qword_1EB088F80);
}

uint64_t sub_1A224FEA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v6, v5, &qword_1EB088F80);
  swift_beginAccess();
  sub_1A2253154(a1, v1 + v6);
  swift_endAccess();
  sub_1A224FB34(v5);
  sub_1A210D9B0(a1, &qword_1EB088F80);
  return sub_1A210D9B0(v5, &qword_1EB088F80);
}

void (*sub_1A224FFB4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088F80);
  return sub_1A22500E4;
}

void sub_1A22500E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 96), v6, &qword_1EB088F80);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088F80);
    swift_beginAccess();
    sub_1A2253154(v6, v7 + v4);
    swift_endAccess();
    sub_1A224FB34(v5);
    sub_1A210D9B0(v5, &qword_1EB088F80);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088F80);
    swift_beginAccess();
    sub_1A2253154(v3, v7 + v4);
    swift_endAccess();
    sub_1A224FB34(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088F80);
  sub_1A210D9B0(v3, &qword_1EB088F80);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

void *sub_1A2250250()
{
  v1 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A225029C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkImage;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    v6 = 0;
    a1 = 0;
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = a1;
LABEL_9:
    v9 = *((*MEMORY[0x1E69E7D40] & **(v2 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView)) + 0xB0);
    v10 = a1;
    v11 = v9(v14);
    v13 = *(v12 + 16);
    *(v12 + 16) = a1;

    v11(v14, 0);
    sub_1A2252648();

    goto LABEL_10;
  }

  sub_1A22531C4();
  v6 = a1;
  v7 = v5;
  v8 = sub_1A22E6C88();

  if ((v8 & 1) == 0)
  {
    a1 = *(v2 + v4);
    goto LABEL_9;
  }

  v5 = v7;
LABEL_10:
}

void (*sub_1A22503EC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkImage;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 56) = v6;
  v7 = v6;
  return sub_1A2250488;
}

void sub_1A2250488(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 56);
  v4 = *v3;
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v3;
  if (a2)
  {
    if (v4)
    {
      if (v7)
      {
        sub_1A22531C4();
        v8 = v4;
        v9 = v7;
        v10 = sub_1A22E6C88();

        if (v10)
        {

LABEL_18:
          goto LABEL_19;
        }

        v4 = *(v2[8] + v2[9]);
      }

      else
      {
        v8 = v4;
      }
    }

    else
    {
      if (!v7)
      {
LABEL_19:
        v11 = *v3;
        goto LABEL_22;
      }

      v8 = 0;
      v4 = 0;
    }

    v15 = *((*MEMORY[0x1E69E7D40] & **(v2[8] + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView)) + 0xB0);
    v16 = v4;
    v17 = v15(v2);
    v19 = *(v18 + 16);
    *(v18 + 16) = v4;

    v17(v2, 0);
    sub_1A2252648();

    v8 = v7;
    goto LABEL_18;
  }

  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_23;
    }

    v14 = 0;
    v11 = 0;
    v4 = 0;
    goto LABEL_21;
  }

  if (!v7)
  {
    v14 = v4;
    v11 = v14;
LABEL_21:
    v20 = *((*MEMORY[0x1E69E7D40] & **(v2[8] + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView)) + 0xB0);
    v21 = v14;
    v22 = v20(v2);
    v24 = *(v23 + 16);
    *(v23 + 16) = v4;

    v22(v2, 0);
    sub_1A2252648();

    v11 = v7;
    goto LABEL_22;
  }

  sub_1A22531C4();
  v11 = v4;
  v12 = v7;
  v13 = sub_1A22E6C88();

  if ((v13 & 1) == 0)
  {
    v14 = *(v2[8] + v2[9]);
    v4 = v14;
    goto LABEL_21;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

uint64_t sub_1A22506E4()
{
  v1 = OBJC_IVAR____TtC13MediaControls18SessionContentView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2250728(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls18SessionContentView_onScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A225279C();
}

uint64_t (*sub_1A225077C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22507E0;
}

uint64_t sub_1A22507E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A225279C();
  }

  return result;
}

uint64_t sub_1A225085C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls18SessionContentView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView)) + 0xE8))(a1);
  v5 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView)) + 0xE0);

  v7 = v5(v6);
  (*((*v4 & *v1) + 0x158))(v7);
}

void (*sub_1A22509A0(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls18SessionContentView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2250A28;
}

void sub_1A2250A28(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView)) + 0xE8);

    v6(v7);
    v8 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView)) + 0xE0);

    v10 = v8(v9);
    (*((*v5 & *v4) + 0x158))(v10);
  }

  free(v3);
}

id sub_1A2250BBC(void (*a1)(void))
{
  a1(0);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1A2114DFC();

  return v2;
}

char *sub_1A2250C20(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC13MediaControls18SessionContentView_state] = 0;
  v10 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  v11 = type metadata accessor for SessionContentViewModel(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  *&v5[OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkImage] = 0;
  v5[OBJC_IVAR____TtC13MediaControls18SessionContentView_onScreen] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls18SessionContentView_visualStylingProvider] = 0;
  v12 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView;
  type metadata accessor for ArtworkView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_1A2114DFC();

  *&v5[v12] = v14;
  v15 = OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView;
  type metadata accessor for SessionHeaderView(0);
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = sub_1A2114DFC();

  *&v5[v15] = v17;
  v18 = OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView;
  type metadata accessor for NowPlayingVolumeControlsView(0);
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = sub_1A2114DFC();

  *&v5[v18] = v20;
  v21 = &v5[OBJC_IVAR____TtC13MediaControls18SessionContentView_tapHandler];
  v22 = type metadata accessor for SessionContentView();
  *v21 = 0;
  v21[1] = 0;
  v30.receiver = v5;
  v30.super_class = v22;
  v23 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  [v23 setClipsToBounds_];
  v24 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView;
  [*&v23[OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView] setUserInteractionEnabled_];
  [v23 addSubview_];
  [v23 addSubview_];
  v25 = OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView;
  v26 = qword_1EB08BFB0;
  v27 = *&v23[OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView];
  if (v26 != -1)
  {
    swift_once();
  }

  v31[2] = xmmword_1EB0913F8;
  v32[0] = unk_1EB091408;
  *(v32 + 9) = unk_1EB091411;
  v31[0] = xmmword_1EB0913D8;
  v31[1] = unk_1EB0913E8;
  (*((*MEMORY[0x1E69E7D40] & *v27) + 0xC8))(v31);

  [v23 addSubview_];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v23 action:sel_tapAction];
  [v23 addGestureRecognizer_];
  sub_1A2252648();
  sub_1A2252B08();

  return v23;
}

id sub_1A2250F80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v136 = v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v135[1] = v135 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v135[0] = v135 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v135 - v8;
  v10 = type metadata accessor for SessionContentView();
  v138.receiver = v0;
  v138.super_class = v10;
  objc_msgSendSuper2(&v138, sel_layoutSubviews);
  v11 = [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v22 = v21(v11);
  v23 = *((*v20 & *v0) + 0xB0);
  v23();
  v24 = type metadata accessor for SessionContentViewModel(0);
  v137 = *(*(v24 - 8) + 48);
  if ((*&v137)(v9, 1, v24))
  {
    sub_1A210D9B0(v9, &qword_1EB088F80);
  }

  else
  {
    v25 = v9[*(v24 + 28)];
    v26 = sub_1A210D9B0(v9, &qword_1EB088F80);
    if (v25)
    {
      v21(v26);
    }
  }

  if (v22)
  {
    if (v22 == 1)
    {
      v27 = 20.0;
    }

    else
    {
      v27 = 24.0;
    }
  }

  else
  {
    v27 = 11.0;
  }

  v28 = v21;
  v29 = UIEdgeInsetsInsetRect(v13, v15, v17, v19, v27, v27);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = (v21)();
  if (v36)
  {
    if (v36 == 1)
    {
      v37 = &v150;
      goto LABEL_14;
    }

    v39 = v136;
    v23();
    if ((*&v137)(v39, 1, v24))
    {
      sub_1A210D9B0(v39, &qword_1EB088F80);
    }

    else
    {
      v89 = *(v39 + *(v24 + 28));
      v90 = sub_1A210D9B0(v39, &qword_1EB088F80);
      if ((v89 & 1) != 0 && v28(v90))
      {
        v162.origin.x = v29;
        v162.origin.y = v31;
        v162.size.width = v33;
        v162.size.height = v35;
        Width = CGRectGetWidth(v162);
        if (qword_1EB08BFB0 != -1)
        {
          swift_once();
        }

        v92 = *&xmmword_1EB0913D8;
        v163.origin.x = v29;
        v163.origin.y = v31;
        v163.size.width = v33;
        v163.size.height = v35;
        MinX = CGRectGetMinX(v163);
        v164.origin.x = v29;
        v164.origin.y = v31;
        v164.size.width = v33;
        v164.size.height = v35;
        MaxY = CGRectGetMaxY(v164);
        v95 = MaxY - v92;
        [*(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView) setFrame_];
        v165.origin.x = MinX;
        v165.origin.y = v95;
        v165.size.width = Width;
        v165.size.height = v92;
        CGRectGetHeight(v165);
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2127EF0();
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        v104 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView);
        [v104 sizeThatFits_];
        v106 = v105;
        v108 = v107;
        v166.origin.x = v97;
        v166.origin.y = v99;
        v166.size.width = v101;
        v166.size.height = v103;
        v109 = CGRectGetMinX(v166);
        v167.origin.x = v97;
        v167.origin.y = v99;
        v167.size.width = v101;
        v167.size.height = v103;
        v110 = CGRectGetMaxY(v167) - v108;
        [v0 bounds];
        v144 = v111;
        v145 = v112;
        v146 = v113;
        v147 = v114;
        v148 = 0;
        sub_1A22E6BA8();
        [v104 setFrame_];
        v168.origin.x = v109;
        v168.origin.y = v110;
        v168.size.width = v106;
        v168.size.height = v108;
        CGRectGetHeight(v168);
        swift_beginAccess();
        sub_1A2209D24();
        sub_1A2209D24();
        sub_1A2209D24();
        goto LABEL_35;
      }
    }

    v169.origin.x = v29;
    v169.origin.y = v31;
    v169.size.width = v33;
    v169.size.height = v35;
    v115 = CGRectGetWidth(v169);
    if (qword_1EB08BFB0 != -1)
    {
      swift_once();
    }

    v116 = *&xmmword_1EB0913D8;
    v170.origin.x = v29;
    v170.origin.y = v31;
    v170.size.width = v33;
    v170.size.height = v35;
    v117 = CGRectGetMinX(v170);
    v171.origin.x = v29;
    v171.origin.y = v31;
    v171.size.width = v33;
    v171.size.height = v35;
    [*(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView) setFrame_];
    v118 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView);
    [v118 sizeThatFits_];
    v120 = v119;
    v122 = v121;
    v172.origin.x = v29;
    v172.origin.y = v31;
    v172.size.width = v33;
    v172.size.height = v35;
    v123 = CGRectGetMinX(v172);
    v173.origin.x = v29;
    v173.origin.y = v31;
    v173.size.width = v33;
    v173.size.height = v35;
    v124 = CGRectGetMaxY(v173) - v122;
    [v0 bounds];
    v144 = v125;
    v145 = v126;
    v146 = v127;
    v147 = v128;
    v148 = 0;
    sub_1A22E6BA8();
    [v118 setFrame_];
    v174.origin.x = v123;
    v174.origin.y = v124;
    v174.size.width = v120;
    v174.size.height = v122;
    CGRectGetHeight(v174);
    swift_beginAccess();
    sub_1A2209D24();
    sub_1A2209D24();
    sub_1A2209D24();
LABEL_35:
    v129 = sub_1A2127EF0();
    (v28)(v129);
    v79 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView);
    [v0 bounds];
    v139 = v130;
    v140 = v131;
    v141 = v132;
    v142 = v133;
    v143 = 0;
    goto LABEL_36;
  }

  v37 = &v149;
LABEL_14:
  v38 = *(v37 - 32);
  v23();
  if ((*&v137)(v38, 1, v24))
  {
    sub_1A210D9B0(v38, &qword_1EB088F80);
  }

  else
  {
    v40 = *(v38 + *(v24 + 28));
    v41 = sub_1A210D9B0(v38, &qword_1EB088F80);
    if (v40 == 1 && v28(v41))
    {
      v151.origin.x = v29;
      v151.origin.y = v31;
      v151.size.width = v33;
      v151.size.height = v35;
      v42 = CGRectGetWidth(v151);
      if (qword_1EB08BFB0 != -1)
      {
        swift_once();
      }

      v43 = *&xmmword_1EB0913D8;
      v152.origin.x = v29;
      v152.origin.y = v31;
      v152.size.width = v33;
      v152.size.height = v35;
      v44 = CGRectGetMinX(v152);
      v153.origin.x = v29;
      v153.origin.y = v31;
      v153.size.width = v33;
      v153.size.height = v35;
      v45 = CGRectGetMaxY(v153);
      v46 = v45 - v43;
      [*(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView) setFrame_];
      v154.origin.x = v44;
      v154.origin.y = v46;
      v154.size.width = v42;
      v154.size.height = v43;
      CGRectGetHeight(v154);
      sub_1A2209D24();
      sub_1A2209D24();
      sub_1A2209D24();
      v47 = sub_1A2127EF0();
      v49 = v48;
      v51 = v50;
      v52 = dbl_1A230ADF0[v28(v47)];
      v53 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView);
      [v0 bounds];
      v144 = v54;
      v145 = v55;
      v146 = v56;
      v147 = v57;
      v148 = 0;
      sub_1A22E6BA8();
      [v53 setFrame_];
      v155.origin.x = v49;
      v137 = v49;
      v155.origin.y = v51;
      v155.size.width = v52;
      v155.size.height = v52;
      CGRectGetWidth(v155);
      goto LABEL_26;
    }
  }

  v156.origin.x = v29;
  v156.origin.y = v31;
  v156.size.width = v33;
  v156.size.height = v35;
  v58 = CGRectGetWidth(v156);
  if (qword_1EB08BFB0 != -1)
  {
    swift_once();
  }

  v59 = *&xmmword_1EB0913D8;
  v157.origin.x = v29;
  v157.origin.y = v31;
  v157.size.width = v33;
  v157.size.height = v35;
  v60 = CGRectGetMinX(v157);
  v158.origin.x = v29;
  v158.origin.y = v31;
  v158.size.width = v33;
  v158.size.height = v35;
  v61 = CGRectGetMaxY(v158);
  [*(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView) setFrame_];
  v159.origin.x = v60;
  v159.origin.y = v61;
  v159.size.width = v58;
  v159.size.height = v59;
  CGRectGetHeight(v159);
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  v62 = sub_1A2127EF0();
  v64 = v63;
  v51 = v65;
  v52 = dbl_1A230ADF0[v28(v62)];
  v66 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView);
  [v0 bounds];
  v144 = v67;
  v145 = v68;
  v146 = v69;
  v147 = v70;
  v148 = 0;
  sub_1A22E6BA8();
  [v66 setFrame_];
  v160.origin.x = v64;
  v137 = v64;
  v160.origin.y = v51;
  v160.size.width = v52;
  v160.size.height = v52;
  CGRectGetHeight(v160);
LABEL_26:
  swift_beginAccess();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2209D24();
  sub_1A2127EF0();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView);
  [v79 sizeThatFits_];
  v81 = v80;
  v83 = v82;
  v161.origin.x = v72;
  v161.origin.y = v74;
  v161.size.width = v76;
  v161.size.height = v78;
  v84 = CGRectGetMinX(v161);
  sub_1A210F570(v137, v51, v52, v52, v84, 0.0, v81, v83);
  [v0 bounds];
  v139 = v85;
  v140 = v86;
  v141 = v87;
  v142 = v88;
  v143 = 0;
LABEL_36:
  sub_1A22E6BA8();
  return [v79 setFrame_];
}

double sub_1A2251CBC(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))(v7);
  (*((*v10 & *v1) + 0xB0))();
  sub_1A2214CF8(v9, v6, &qword_1EB088F80);
  v12 = type metadata accessor for SessionContentViewModel(0);
  if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
  {
    sub_1A210D9B0(v6, &qword_1EB088F80);
    v13 = 0;
  }

  else
  {
    v13 = v6[*(v12 + 28)];
    sub_1A2253628(v6, type metadata accessor for SessionContentViewModel);
  }

  sub_1A2253064(v11, v13);
  sub_1A210D9B0(v9, &qword_1EB088F80);
  return a1;
}

uint64_t sub_1A2251EFC()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_tapHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

uint64_t sub_1A2251F58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls18SessionContentView_tapHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

id sub_1A22520E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v42 - v5;
  v6 = type metadata accessor for SessionHeaderView.ViewModel(0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  v18 = *&v0[OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView];
  v19 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB0);
  v45 = (*MEMORY[0x1E69E7D40] & *v0) + 176;
  v46 = v19;
  v19(v15);
  v20 = type metadata accessor for SessionContentViewModel(0);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v17, 1, v20);
  v44 = v21;
  if (v22)
  {
    sub_1A210D9B0(v17, &qword_1EB088F80);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    sub_1A22535C4(&v17[*(v20 + 20)], v8);
    sub_1A210D9B0(v17, &qword_1EB088F80);
    v23 = *(v8 + 4);
    v24 = *(v8 + 5);

    sub_1A2253628(v8, type metadata accessor for SessionHeaderView.ViewModel);
  }

  v25 = (*((*MEMORY[0x1E69E7D40] & *v18) + 0xB0))(v52);
  *v26 = v23;
  v26[1] = v24;

  v27 = v25(v52, 0);
  v28 = *&v1[OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView];
  v29 = v46;
  v46(v27);
  v30 = 1;
  v31 = v20;
  v51 = v20;
  v32 = v44;
  v33 = v44(v14, 1, v31);
  v34 = v49;
  if (!v33)
  {
    sub_1A22535C4(&v14[*(v51 + 20)], v49);
    v30 = 0;
  }

  sub_1A210D9B0(v14, &qword_1EB088F80);
  (*(v47 + 56))(v34, v30, 1, v48);
  v35 = MEMORY[0x1E69E7D40];
  v36 = (*((*MEMORY[0x1E69E7D40] & *v28) + 0xA0))(v34);
  v37 = *&v1[OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView];
  v38 = v43;
  v49 = v1;
  v29(v36);
  if (v32(v38, 1, v51))
  {
    sub_1A210D9B0(v38, &qword_1EB088F80);
    v39 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
    v40 = v50;
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  }

  else
  {
    v40 = v50;
    sub_1A2214CF8(v38 + *(v51 + 24), v50, &qword_1EB088828);
    sub_1A210D9B0(v38, &qword_1EB088F80);
  }

  (*((*v35 & *v37) + 0x98))(v40);
  return [v49 setNeedsLayout];
}

uint64_t sub_1A2252648()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  v4 = v3();
  v5 = sub_1A2252EA4(v4, v12);
  v6 = (*((*v2 & *v1) + 0x90))(v12, v5);
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView);
  if ((v3)(v6))
  {
    v8 = 2;
  }

  else
  {
    v9 = (*((*v2 & *v0) + 0xC8))();
    v10 = v9;
    if (v9)
    {
    }

    v8 = v10 != 0;
  }

  return (*((*v2 & *v7) + 0xB8))(v8);
}

uint64_t sub_1A225279C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView);
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE0);
  v12 = v11(v6);
  v13 = (*((*v10 & *v9) + 0x118))(v12 & 1);
  v14 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView);
  if (v11(v13))
  {
    (*((*v10 & *v0) + 0xB0))();
    v15 = type metadata accessor for SessionContentViewModel(0);
    if ((*(*(v15 - 8) + 48))(v4, 1, v15))
    {
      sub_1A210D9B0(v4, &qword_1EB088F80);
      v16 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    }

    else
    {
      sub_1A2214CF8(&v4[*(v15 + 24)], v8, &qword_1EB088828);
      sub_1A210D9B0(v4, &qword_1EB088F80);
      v17 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
      if ((*(*(v17 - 8) + 48))(v8, 1, v17) != 1)
      {
        v20 = sub_1A210D9B0(v8, &qword_1EB088828);
        v18 = (*((*v10 & *v1) + 0x98))(v20) != 0;
        return (*((*v10 & *v14) + 0xF8))(v18);
      }
    }

    sub_1A210D9B0(v8, &qword_1EB088828);
  }

  v18 = 0;
  return (*((*v10 & *v14) + 0xF8))(v18);
}

id sub_1A2252B08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView);
  v6 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v2);
  v7 = type metadata accessor for SessionContentViewModel(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7))
  {
    sub_1A210D9B0(v4, &qword_1EB088F80);
LABEL_5:
    v11 = 0.0;
    goto LABEL_6;
  }

  v8 = v4[*(v7 + 28)];
  v9 = sub_1A210D9B0(v4, &qword_1EB088F80);
  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = (*((*v6 & *v0) + 0x98))(v9);
  v11 = 1.0;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  [v5 setAlpha_];
  return [v0 setNeedsLayout];
}

void sub_1A2252CA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  if (v2)
  {
    (*(*v2 + 104))(v5);

    v3 = sub_1A22DF514(0);
  }

  else
  {
    v3 = 0;
  }

  [v1 setTintColor_];
}

id sub_1A2252DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_1A2252EA4@<Q0>(char a1@<W0>, __n128 *a2@<X8>)
{
  v4 = sub_1A2220D34();
  v5 = sub_1A21275D0();
  if (a1)
  {
    if (a1 == 1)
    {
      sub_1A2220C34(v4, v35, 0.0, 2.0, 4.0, 0.3, v5);
      v6 = sub_1A221E310();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = sub_1A223EC78();
      v14 = sub_1A2113050();
      v15 = 8.0;
    }

    else
    {
      sub_1A2220C34(v4, v35, 0.0, 8.0, 16.0, 0.24, v5);
      v6 = sub_1A221E310();
      v8 = v29;
      v10 = v30;
      v12 = v31;
      v13 = sub_1A223EC78();
      v14 = sub_1A2113050();
      v15 = 10.0;
    }

    v28 = v14 & 1;
    v24 = v6;
    v25 = v8;
    v26 = v10;
    v27 = v12;
    v23 = v13;
  }

  else
  {
    sub_1A2220C34(v4, v35, 0.0, 2.0, 4.0, 0.3, v5);
    v16 = sub_1A221E310();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = sub_1A223EC78();
    v15 = 8.0;
    v24 = v16;
    v25 = v18;
    v26 = v20;
    v27 = v22;
    v28 = 1;
  }

  sub_1A223ECE4(v35, v28, v36, v15, v24, v25, v26, v27, v23);
  v32 = v36[5];
  a2[4] = v36[4];
  a2[5] = v32;
  a2[6].n128_u8[0] = v37;
  v33 = v36[1];
  *a2 = v36[0];
  a2[1] = v33;
  result = v36[3];
  a2[2] = v36[2];
  a2[3] = result;
  return result;
}

double sub_1A2253064(char a1, char a2)
{
  if (a1)
  {
    v2 = 0.0;
    if (a2)
    {
      if (qword_1EB08BFB0 != -1)
      {
        v7 = a1;
        swift_once();
        a1 = v7;
      }

      v2 = *&xmmword_1EB0913D8;
    }

    v3 = 64.0;
    if (a1 == 2)
    {
      v3 = 0.0;
    }

    v4 = v3 + v2;
  }

  else
  {
    v4 = 46.0;
  }

  sub_1A22E6A48();
  return v4 + v5;
}

uint64_t sub_1A2253154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088F80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A22531C4()
{
  result = qword_1ED94E960;
  if (!qword_1ED94E960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E960);
  }

  return result;
}

uint64_t type metadata accessor for SessionContentView()
{
  result = qword_1EB08C0C0;
  if (!qword_1EB08C0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A225325C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13MediaControls18SessionContentView_state) = 0;
  v2 = OBJC_IVAR____TtC13MediaControls18SessionContentView_viewModel;
  v3 = type metadata accessor for SessionContentViewModel(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkImage) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_onScreen) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_visualStylingProvider) = 0;
  v4 = OBJC_IVAR____TtC13MediaControls18SessionContentView_artworkView;
  type metadata accessor for ArtworkView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_1A2114DFC();

  *(v1 + v4) = v6;
  v7 = OBJC_IVAR____TtC13MediaControls18SessionContentView_headerView;
  type metadata accessor for SessionHeaderView(0);
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = sub_1A2114DFC();

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC13MediaControls18SessionContentView_volumeControlsView;
  type metadata accessor for NowPlayingVolumeControlsView(0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = sub_1A2114DFC();

  *(v1 + v10) = v12;
  v13 = (v1 + OBJC_IVAR____TtC13MediaControls18SessionContentView_tapHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A22533F4()
{
  result = qword_1EB088F90;
  if (!qword_1EB088F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088F90);
  }

  return result;
}

void sub_1A2253450()
{
  sub_1A225351C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A225351C()
{
  if (!qword_1EB088F98)
  {
    type metadata accessor for SessionContentViewModel(255);
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB088F98);
    }
  }
}

uint64_t sub_1A22535C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeaderView.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2253628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2253688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionContentViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A22536EC()
{
  result = qword_1EB088FA8;
  if (!qword_1EB088FA8)
  {
    type metadata accessor for SessionContentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088FA8);
  }

  return result;
}

BOOL sub_1A225374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a1 == a3 && a2 == a4)
  {
    return a6 == a8 && a5 == a7;
  }

  v12 = sub_1A22E71E8();
  result = 0;
  if (v12)
  {
    return a6 == a8 && a5 == a7;
  }

  return result;
}

BOOL sub_1A22537B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_1A22E71E8();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t sub_1A225382C(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

double sub_1A2253900()
{
  result = 16.0;
  if (*(v0 + 24) == 1)
  {
    return 12.0;
  }

  return result;
}

double sub_1A2253918(char a1)
{
  result = 16.0;
  if (a1 == 1)
  {
    return 12.0;
  }

  return result;
}

double sub_1A2253934@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  result = 10.0;
  *(a1 + 64) = xmmword_1A230AE10;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1A2253968@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a11;
  *(a6 + 72) = a12;
  *(a6 + 80) = a13;
  *(a6 + 88) = a14;
  *(a6 + 96) = a5;
  return result;
}

void sub_1A2253998(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

__n128 sub_1A22539A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1A22539B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  result = *(a1 + 32);
  *(v1 + 64) = result;
  return result;
}

__n128 sub_1A22539CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  v6 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v6;
  result = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

void sub_1A2253A18(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v3;
  *(v1 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  v5 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v5;

  sub_1A2113260();
}

uint64_t sub_1A2253A90(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 120) = 0;
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_1A2113260();
  return v2;
}

uint64_t sub_1A2253AF0(uint64_t a1)
{
  *(v1 + 120) = 0;
  v2 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v2;
  *(v1 + 112) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  v4 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v4;
  sub_1A2113260();
  return v1;
}

__n128 sub_1A2253B30@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A2254070(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  (*(*v2 + 200))(v14, a1);
  result = v14[0];
  v12 = v14[1];
  v13 = v14[2];
  *a2 = 0;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = result;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  return result;
}

uint64_t sub_1A2253BCC(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v3(v39);
  v4 = v40;
  v50 = v40;

  sub_1A2112BDC(v39);
  v5 = *(v4 + 16);
  v6 = sub_1A2254748(&v50);
  if (v5 <= a1)
  {
    goto LABEL_32;
  }

  (v3)(v41, v6);
  sub_1A2112BDC(v41);
  if (!sub_1A210E438(v42, 0))
  {
    goto LABEL_32;
  }

  v37 = a1;
  v3(v43);
  v7 = v44;
  v49 = v44;

  result = sub_1A2112BDC(v43);
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v7 + 56;
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = (v11 + 32 * v10);
      v13 = v10;
      while (1)
      {
        if (v13 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v15 = *(v12 - 3);
        v14 = *(v12 - 2);
        v16 = *(v12 - 1);
        v17 = *v12;
        v18 = swift_bridgeObjectRetain_n();
        v19 = v3;
        (v3)(v45, v18);
        v21 = v45[0];
        v20 = v45[1];

        sub_1A2112BDC(v45);
        if (!v20)
        {
          break;
        }

        if (v15 == v21 && v20 == v14)
        {
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v22 = sub_1A22E71E8();

          if ((v22 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        ++v13;
        v12 += 4;
        v3 = v19;
        if (v9 == v13)
        {
          goto LABEL_22;
        }
      }

LABEL_15:
      v23 = v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v38;
      if ((result & 1) == 0)
      {
        result = sub_1A225461C(0, *(v38 + 16) + 1, 1);
        v23 = v48[0];
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1A225461C((v24 > 1), v25 + 1, 1);
        v23 = v48[0];
      }

      v10 = v13 + 1;
      *(v23 + 16) = v25 + 1;
      v38 = v23;
      v26 = (v23 + 32 * v25);
      v26[4] = v15;
      v26[5] = v14;
      v26[6] = v16;
      v26[7] = v17;
      v11 = v7 + 56;
      v3 = v19;
    }

    while (v9 - 1 != v13);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:
  sub_1A2254748(&v49);
  v27 = *(v38 + 16);

  result = (v3)(v46, v28);
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
  }

  else if (*(v47 + 16) > v37)
  {
    v29 = v47 + 32 * v37;
    v31 = *(v29 + 32);
    v30 = *(v29 + 40);

    v32 = sub_1A2112BDC(v46);
    (v3)(v48, v32);
    v34 = v48[0];
    v33 = v48[1];

    sub_1A2112BDC(v48);
    if (v33)
    {
      if (v31 == v34 && v33 == v30)
      {

LABEL_32:
        v35 = 0;
        return v35 & 1;
      }

      v36 = sub_1A22E71E8();

      if (v27 <= 1)
      {
        goto LABEL_32;
      }

      v35 = v36 ^ 1;
    }

    else
    {

      if (v27 <= 1)
      {
        goto LABEL_32;
      }

      v35 = 1;
    }

    return v35 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2253FD4(uint64_t a1)
{
  if (((*(*v1 + 144))() & 1) == 0)
  {
    return 1;
  }

  v3 = *(*v1 + 160);

  return v3(a1);
}

uint64_t sub_1A2254060(uint64_t a1)
{
  if (a1 >= 1)
  {
    return a1 - 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1A2254070(unint64_t a1)
{
  v3 = *(*v1 + 96);
  v3(v14);
  v4 = v15;
  v27 = v15;

  sub_1A2112BDC(v14);
  v5 = *(v4 + 16);
  result = sub_1A2254748(&v27);
  if (v5 <= a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = (v3)(v16, result);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v16[2] + 16) <= a1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v7 = sub_1A2112BDC(v16);
  (v3)(v17, v7);
  sub_1A2112BDC(v17);
  if (sub_1A210E438(v18, 2))
  {
    v3(v25);
    return sub_1A2112BDC(v25);
  }

  v3(v19);
  v8 = sub_1A2112BDC(v19);
  (v3)(v21, v8);
  v9 = v22;
  v26 = v22;

  sub_1A2112BDC(v21);
  v10 = *(v9 + 16);
  result = sub_1A2254748(&v26);
  if (v10 != 1)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        result = (v3)(v24, result);
        if (*(v24[2] + 16) > a1)
        {
          v11 = sub_1A2112BDC(v24);
          (v3)(v25, v11);
          return sub_1A2112BDC(v25);
        }

        goto LABEL_20;
      }

      if (a1)
      {
        (v3)(v25, result);
        return sub_1A2112BDC(v25);
      }
    }

    else if (a1)
    {
      result = (v3)(v23, result);
      if (*(v23[2] + 16))
      {
        v12 = sub_1A2112BDC(v23);
        (v3)(v24, v12);
        v13 = sub_1A2112BDC(v24);
        (v3)(v25, v13);
        return sub_1A2112BDC(v25);
      }

      goto LABEL_21;
    }
  }

  return result;
}

CGAffineTransform *sub_1A225435C@<X0>(CGAffineTransform *result@<X0>, __int128 *a2@<X8>)
{
  v4 = xmmword_1A2308710;
  v5 = xmmword_1A2308720;
  v6 = 0uLL;
  if (result >= 1)
  {
    v7 = result;
    v8 = *(*v2 + 96);
    v8(v13);
    sub_1A2112BDC(v13);
    result = sub_1A210E438(v14, 0);
    v6 = 0uLL;
    v5 = xmmword_1A2308720;
    v4 = xmmword_1A2308710;
    if (result)
    {
      v9 = 3;
      if (v7 < 3)
      {
        v9 = v7;
      }

      v10 = v9 - 1;
      (v8)(v15, xmmword_1A2308710, xmmword_1A2308720, 0);
      sub_1A2112BDC(v15);
      v11 = pow(*&v15[9], v10);
      result = CGAffineTransformMakeScale(&v12, v11 * 0.9375, v11 * 0.9375);
      v5 = *&v12.a;
      v4 = *&v12.c;
      v6 = *&v12.tx;
    }
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v6;
  return result;
}

uint64_t sub_1A2254458(double a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

void sub_1A22544A0(uint64_t a1)
{
  if (a1 >= 1)
  {
    v1 = 3;
    if (a1 < 3)
    {
      v1 = a1;
    }

    if (a1 != 1)
    {
      v2 = v1 - 2;
      if ((v1 - 2) >= 0x7FFFFFFFFFFFFFFELL)
      {
        v2 = 0x7FFFFFFFFFFFFFFELL;
      }

      if (v2 == 0x7FFFFFFFFFFFFFFELL)
      {
        __break(1u);
        return;
      }

      if (a1 < 3)
      {
        v4 = 1;
      }

      else
      {
        v3 = (v1 - 1) & 0xFFFFFFFFFFFFFFFELL;
        if (v1 - 1 == v3)
        {
LABEL_17:
          pow(0.9375, (v3 - 1));
          return;
        }

        v4 = (v1 - 1) | 1;
      }

      v5 = 1 - v4;
      v6 = v1 - v4;
      do
      {
        --v5;
        --v6;
      }

      while (v6);
      v3 = -v5;
      goto LABEL_17;
    }
  }
}

double sub_1A2254570(void *a1)
{
  v1 = [a1 userInterfaceIdiom];
  result = 38.0;
  if (v1)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1A22545A4()
{

  return v0;
}

uint64_t sub_1A22545D4()
{

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

char *sub_1A225461C(char *a1, int64_t a2, char a3)
{
  result = sub_1A225463C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A225463C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A2254748(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A22547E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1A225482C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1A22548B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A22548D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1A2254954(uint64_t a1, int a2)
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

uint64_t sub_1A2254974(uint64_t result, int a2, int a3)
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

uint64_t sub_1A22549FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x3FE0000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000027, 0x80000001A23044F0, &v3, v0, v1 & 1);
  qword_1ED9520F8 = result;
  return result;
}

uint64_t sub_1A2254AB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88);
  v3 = 0;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD00000000000001ELL, 0x80000001A23044D0, &v3, v0, v1 & 1);
  qword_1EB08C158 = result;
  return result;
}

uint64_t sub_1A2254B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88);
  v3 = 0;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000019, 0x80000001A23044B0, &v3, v0, v1 & 1);
  qword_1EB08C168 = result;
  return result;
}

uint64_t sub_1A2254C28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x401E000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000017, 0x80000001A2304490, &v3, v0, v1 & 1);
  qword_1EB08C178 = result;
  return result;
}

uint64_t sub_1A2254CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x4010000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000017, 0x80000001A2304470, &v3, v0, v1 & 1);
  qword_1EB08C188 = result;
  return result;
}

uint64_t sub_1A2254DA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x4008000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000018, 0x80000001A2304450, &v3, v0, v1 & 1);
  qword_1EB08C198 = result;
  return result;
}

uint64_t sub_1A2254E38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88);
  v3 = 1;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD00000000000002BLL, 0x80000001A2304420, &v3, v0, v1 & 1);
  qword_1ED9520E8 = result;
  return result;
}

uint64_t sub_1A2254EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88);
  v3 = 0;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD00000000000001CLL, 0x80000001A2304400, &v3, v0, v1 & 1);
  qword_1EB08C1A8 = result;
  return result;
}

uint64_t sub_1A2254FAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x4081800000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000018, 0x80000001A23043E0, &v3, v0, v1 & 1);
  qword_1EB08C1B8 = result;
  return result;
}

uint64_t sub_1A225506C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C88);
  v3 = 0;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD000000000000021, 0x80000001A23043B0, &v3, v0, v1 & 1);
  qword_1ED952108 = result;
  return result;
}

uint64_t sub_1A2255100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FC8);
  v3 = 0x407E000000000000;
  v0 = sub_1A2249D0C();
  v1 = sub_1A211A6BC();
  result = sub_1A2249D84(0xD00000000000002DLL, 0x80000001A2304380, &v3, v0, v1 & 1);
  qword_1ED952118 = result;
  return result;
}

__n128 sub_1A225522C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  result = *(a1 + 40);
  *(a3 + 40) = result;
  *(a3 + 56) = a2;
  return result;
}

uint64_t sub_1A2255254(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v10[2] = *(a1 + 32);
  v11 = *(a1 + 48);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  if (sub_1A220D258(v10, v8))
  {
    v6 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A22552DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v9[2] = *(a2 + 32);
  v10 = *(a2 + 48);
  v5 = *(a2 + 56);
  return sub_1A220D258(v7, v9) & ~(v3 ^ v5) & 1;
}

uint64_t sub_1A2255350()
{
  v1 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1A225539C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A22553FC(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

void sub_1A2255490(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t sub_1A2255514(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;

  return sub_1A2110060();
}

uint64_t sub_1A225556C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_1A22555B4()
{
  v1 = (*(*v0 + 184))();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = (*(*v0 + 192))();
    if (*(v5 + 16))
    {
      v6 = sub_1A210FF30(v4, v3);
      v8 = v7;

      if (v8)
      {
        v9 = *(*(v5 + 56) + 8 * v6);

        return v9;
      }
    }

    else
    {
    }
  }

  return 0;
}

__n128 sub_1A2255694@<Q0>(uint64_t a1@<X8>)
{
  sub_1A220D25C(&v5);
  result = v6;
  v3 = v7;
  v4 = v8;
  *a1 = v5;
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  *(a1 + 40) = v4;
  *(a1 + 56) = 0;
  return result;
}

double sub_1A22556E4@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4];
  v7 = v1[3];
  v8 = v3;
  v9[0] = v1[5];
  *(v9 + 9) = *(v1 + 89);
  sub_1A2256704(&v7, v6);
  v4 = v8;
  *a1 = v7;
  a1[1] = v4;
  a1[2] = v9[0];
  result = *(v9 + 9);
  *(a1 + 41) = *(v9 + 9);
  return result;
}

uint64_t sub_1A2255768(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v15[0] = v1[3];
  v15[1] = v3;
  v16[0] = v1[5];
  *(v16 + 9) = *(v1 + 89);
  v4 = a1[1];
  v1[3] = *a1;
  v1[4] = v4;
  v1[5] = a1[2];
  *(v1 + 89) = *(a1 + 41);
  v5 = sub_1A225673C(v15);
  result = (*(*v1 + 136))(v5);
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = v1[4];
    v13[0] = v1[3];
    v13[1] = v10;
    v14[0] = v1[5];
    *(v14 + 9) = *(v1 + 89);
    v11 = *(v8 + 16);
    sub_1A2256704(v13, v12);
    v11(v13, ObjectType, v8);
    swift_unknownObjectRelease();
    return sub_1A225673C(v13);
  }

  return result;
}

uint64_t sub_1A2255888(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A225676C(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A22558E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A225676C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void *sub_1A2255918()
{
  v1 = v0[15];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 64);
  swift_unknownObjectRetain();
  v3(v0, &off_1F143E980, ObjectType, v1);
  swift_unknownObjectRelease();
  sub_1A210DA3C((v0 + 2));

  v4 = v0[9];
  v5 = v0[10];

  sub_1A221467C(v4, v5);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A22559F0()
{
  sub_1A2255918();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1A2255A24()
{
  v1 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_1A2255A80(uint64_t a1)
{
  v3 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  return (*(v3 + 80))(a1, ObjectType, v3);
}

__n128 sub_1A2255AD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A22E5C88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v42 - v8;
  sub_1A220D0C4();
  sub_1A2130450();
  v9 = sub_1A220D184();
  v11 = v10;

  sub_1A221467C(v9, v11);
  v46 = a1;
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v45 = v5;
  if (v13)
  {
    v43 = a2;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1A210E5F8(0, v13, 0);
    v14 = v51;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v47 = *(v15 + 56);
    v48 = v16;
    v49 = v15;
    v18 = (v15 - 8);
    do
    {
      v19 = v50;
      v48(v50, v17, v4);
      v20 = sub_1A22E59B8();
      v22 = v21;
      v23 = v4;
      (*v18)(v19, v4);
      v51 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A210E5F8((v24 > 1), v25 + 1, 1);
        v14 = v51;
      }

      *(v14 + 16) = v25 + 1;
      v26 = v14 + 16 * v25;
      *(v26 + 32) = v20;
      *(v26 + 40) = v22;
      v17 += v47;
      --v13;
      v4 = v23;
    }

    while (v13);
    a2 = v43;
  }

  v27 = type metadata accessor for RoutePickerSnapshot(0);
  v28 = v46;
  v29 = v44;
  sub_1A210FD2C(v46 + *(v27 + 20), v44);
  v30 = v45;
  if ((*(v45 + 48))(v29, 1, v4) == 1)
  {
    sub_1A210D9B0(v29, &qword_1EB088C30);
    v31 = 0xE300000000000000;
    v32 = 7104878;
  }

  else
  {
    v32 = sub_1A22E59B8();
    v31 = v33;
    (*(v30 + 8))(v29, v4);
  }

  v34 = (v28 + *(v27 + 28));
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  v38 = v34[3];
  sub_1A2214638(*v34, v36);
  sub_1A220D27C(v14, v32, v31, v35, v36, v37, v38, &v51);
  sub_1A2257128(v28);
  result = v52;
  v40 = v53;
  v41 = v54;
  *a2 = v51;
  *(a2 + 8) = result;
  *(a2 + 24) = v40;
  *(a2 + 40) = v41;
  return result;
}

uint64_t sub_1A2255E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A22E58F8();
  v14 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v1 + 136))(v4))
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(ObjectType, v8);
    swift_unknownObjectRelease();
    return (*(v14 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69AE580];
    v12 = *(v14 + 104);

    return v12(a1, v11, v3);
  }
}

uint64_t sub_1A2255FBC()
{
  v1 = v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v9 = 136315394;
    v10 = sub_1A22E7388();
    v12 = sub_1A2103450(v10, v11, &v23);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    swift_beginAccess();

    v13 = sub_1A22E6938();
    v15 = v14;

    v16 = sub_1A2103450(v13, v15, &v23);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] Updating expandedSessionIdentifiers=%s", v9, 0x16u);
    v17 = v22;
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v17, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v18 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  return (*(v18 + 32))(ObjectType, v18);
}

uint64_t sub_1A2256294(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;

  return sub_1A2255FBC();
}

uint64_t (*sub_1A22562E0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2256334;
}

uint64_t sub_1A2256334(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A2255FBC();
  }

  return result;
}

uint64_t sub_1A22563C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(*v5 + 136))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(a3, a4, a5, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1A2256490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD0);
  v2 = *v0;
  v3 = sub_1A22E7048();
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

unint64_t sub_1A2256600(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FD0);
    v3 = sub_1A22E7078();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A210FF30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A225676C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = sub_1A2256600(v6);
  sub_1A220D25C(&v13);
  *(v3 + 48) = v13;
  v7 = v15;
  *(v3 + 56) = v14;
  *(v3 + 72) = v7;
  *(v3 + 88) = v16;
  *(v3 + 104) = 0;
  v8 = MEMORY[0x1E69E7CD0];
  *(v3 + 120) = a2;
  *(v3 + 128) = v8;
  *(v3 + 112) = a1;
  ObjectType = swift_getObjectType();
  v10 = *(a2 + 56);
  swift_unknownObjectRetain();

  v10(v11, &off_1F143E980, ObjectType, a2);

  sub_1A2110060();
  sub_1A210F5D0();
  return v3;
}

uint64_t sub_1A2256860()
{
  v0 = sub_1A22E6248();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2104EA0();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A22E6238();
  v6 = sub_1A22E6A58();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_1A22E7388();
    v11 = sub_1A2103450(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A20FC000, v5, v6, "[%s] controllerRequestsToDismissUI", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1A58DCD00](v8, -1, -1);
    MEMORY[0x1A58DCD00](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A2256A48()
{
  v1 = v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2104EA0();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A58();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] controllerRequestsToPresentAudioSharingUI", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v14 = (*(v3 + 8))(v5, v2);
  result = (*(*v1 + 136))(v14);
  if (result)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(ObjectType, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A2256C8C(uint64_t a1)
{
  v2 = sub_1A22E5EB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v28 - v7;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2104EA0();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v33 = v17;
    *v16 = 136315138;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, &v33);
    v29 = v8;
    v22 = v21;

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1A20FC000, v13, v14, "[%s] controllerRequestsToPresentTVRemote", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1A58DCD00](v18, -1, -1);
    v23 = v16;
    v6 = v30;
    MEMORY[0x1A58DCD00](v23, -1, -1);

    (*(v9 + 8))(v11, v29);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_1A22E5ED8();
  v24 = sub_1A22E6598();

  v25 = v32;
  sub_1A22E5EC8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69AE750], v2);
  v26 = sub_1A22E5EA8();
  v27 = *(v3 + 8);
  v27(v6, v2);
  v27(v25, v2);
  [objc_opt_self() presentWithIdentifier:v24 deviceType:(v26 & 1) == 0];
}

uint64_t sub_1A2257040(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a3 + 16);
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 3);
  v9 = *(a1 + 5);
  v10 = v3;
  return v4(&v6);
}

uint64_t sub_1A22570C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutePickerSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2257128(uint64_t a1)
{
  v2 = type metadata accessor for RoutePickerSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1A22571F0()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = *MEMORY[0x1E6979928];
  v3 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v4 = v1;
  v5 = [v3 initWithType_];
  v6 = sub_1A22E56C8();
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979BA8]];

  v7 = [v4 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A2308E80;
  *(v8 + 56) = sub_1A2115288(0, &qword_1ED94E958);
  *(v8 + 32) = v5;
  v9 = v5;
  v10 = sub_1A22E6738();

  [v7 setFilters_];

  return v4;
}

id sub_1A2257368(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1A2257460(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BackdropView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1A2257540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for BackdropView.Style(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BackdropView.Style(uint64_t result, int a2, int a3)
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

uint64_t sub_1A22575D4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = [a1 constraintEqualToAnchor:a2 constant:a3 + a5];

  return nullsub_1(v5, 0);
}

uint64_t sub_1A2257618(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = [a1 constraintGreaterThanOrEqualToAnchor:a2 constant:a3 + a5];

  return nullsub_1(v5, 0);
}

uint64_t sub_1A225765C(void *a1, uint64_t a2)
{
  v2 = [a1 constraintGreaterThanOrEqualToAnchor:a2 constant:?];

  return nullsub_1(v2, 0);
}

uint64_t sub_1A225769C(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v5 = [a1 constraintLessThanOrEqualToAnchor:a2 constant:a3 + a5];

  return nullsub_1(v5, 0);
}

uint64_t sub_1A22576E0(void *a1, uint64_t a2)
{
  v2 = [a1 constraintLessThanOrEqualToAnchor:a2 constant:?];

  return nullsub_1(v2, 0);
}

uint64_t sub_1A2257730(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintEqualToAnchor:a2 multiplier:a4 constant:a3];

  return nullsub_1(v4, 0);
}

uint64_t sub_1A225777C(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintEqualToAnchor:a2 multiplier:1.0 / a4 constant:a3];

  return nullsub_1(v4, 0);
}

uint64_t sub_1A22577D8(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintGreaterThanOrEqualToAnchor:a2 multiplier:a4 constant:a3];

  return nullsub_1(v4, 0);
}

uint64_t sub_1A2257824(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintGreaterThanOrEqualToAnchor:a2 multiplier:1.0 / a4 constant:a3];

  return nullsub_1(v4, 0);
}

uint64_t sub_1A2257880(void *a1, uint64_t a2, SEL *a3, double a4, double a5, double a6, double a7)
{
  v7 = [a1 *a3];

  return nullsub_1(v7, 0);
}

uint64_t sub_1A22578CC(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintLessThanOrEqualToAnchor:a2 multiplier:a4 constant:a3];

  return nullsub_1(v4, 0);
}

uint64_t sub_1A2257918(void *a1, uint64_t a2, double a3, double a4)
{
  v4 = [a1 constraintLessThanOrEqualToAnchor:a2 multiplier:1.0 / a4 constant:a3];

  return nullsub_1(v4, 0);
}

double sub_1A2257968(void *a1, double a2, double a3, double a4)
{
  v4 = a2 + a4;
  v5 = a1;
  return v4;
}

double sub_1A22579A8(void *a1, double a2, double a3, double a4)
{
  v4 = a2 - a4;
  v5 = a1;
  return v4;
}

uint64_t sub_1A2257A2C(double a1, double a2, double a3, double a4)
{
  sub_1A2221998();
  v8 = sub_1A22E6C88() & (a1 == a3);
  if (a2 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1A2257AA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_1A2221998();
  v6 = sub_1A22E6C88();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void sub_1A2257B3C(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

double sub_1A2257B4C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v11 = v5[1];
  v15 = *v5;
  v16 = v11;
  sub_1A22584F0(v5, &v14);
  result = *&v15;
  v13 = v16;
  *a1 = v15;
  *(a1 + 16) = v13;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  return result;
}

uint64_t sub_1A2257BBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  *(a5 + 40) = a7;
  *(a5 + 48) = a8;
  *(a5 + 56) = a9;
  return result;
}

BOOL sub_1A2257BD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1A2258528(v7, v8);
}

uint64_t sub_1A2257C28(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A230A140;
  v13 = a6 / a5;
  *(v12 + 32) = nullsub_1([a1 constraintEqualToAnchor:a3 multiplier:v13 constant:0.0], 0);
  *(v12 + 40) = v14;
  *(v12 + 48) = nullsub_1([a2 constraintEqualToAnchor:a4 multiplier:v13 constant:0.0], 0);
  *(v12 + 56) = v15;
  return v12;
}

uint64_t sub_1A2257D44(void *a1, void *a2, id a3, double a4)
{
  v8 = [a3 widthAnchor];
  v9 = [a3 heightAnchor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A230A140;
  v11 = 1.0 / a4;
  *(v10 + 32) = nullsub_1([a1 constraintEqualToAnchor:v8 multiplier:v11 constant:0.0], 0);
  *(v10 + 40) = v12;
  *(v10 + 48) = nullsub_1([a2 constraintEqualToAnchor:v9 multiplier:v11 constant:0.0], 0);
  *(v10 + 56) = v13;

  return v10;
}

id sub_1A2257E60()
{
  v1 = [v0 widthAnchor];
  v2 = [v0 heightAnchor];
  return v1;
}

uint64_t sub_1A2257EBC(void *a1, void *a2, double a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A230A140;
  v11 = 1.0 / a3;
  *(v10 + 32) = nullsub_1([a1 constraintEqualToConstant_], 0);
  *(v10 + 40) = v12;
  *(v10 + 48) = nullsub_1([a2 constraintEqualToConstant_], 0);
  *(v10 + 56) = v13;
  return v10;
}

uint64_t sub_1A2257F8C(void *a1)
{
  v1 = [a1 constraintEqualToConstant_];

  return nullsub_1(v1, 0);
}

double sub_1A2257FC8(void *a1, void *a2, double a3, double a4)
{
  v6 = a2;
  v7 = a1;
  return a4;
}

uint64_t sub_1A225800C(double a1, double a2)
{
  sub_1A2221998();
  if (sub_1A22E6C88())
  {
    return sub_1A22E6C88() & (a1 == a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2258094(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_1A2221998();
  if (sub_1A22E6C88())
  {
    return sub_1A22E6C88() & (v2 == v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2258114(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A230A140;
  *(v8 + 32) = nullsub_1([a1 constraintEqualToAnchor_], 0);
  *(v8 + 40) = v9;
  *(v8 + 48) = nullsub_1([a2 constraintEqualToAnchor_], 0);
  *(v8 + 56) = v10;
  return v8;
}

uint64_t sub_1A22581D0(void *a1, void *a2, id a3)
{
  v6 = [a3 centerXAnchor];
  v7 = [a3 centerYAnchor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088FE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A230A140;
  v9 = nullsub_1([a1 constraintEqualToAnchor_], 0);
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  nullsub_1([a2 constraintEqualToAnchor_], 0);
  *(v8 + 48) = v12;
  *(v8 + 56) = v13;

  return v8;
}

id sub_1A22582C8()
{
  v1 = [v0 centerXAnchor];
  v2 = [v0 centerYAnchor];
  return v1;
}

uint64_t sub_1A2258320()
{
  sub_1A2221998();
  if (sub_1A22E6C88())
  {
    return sub_1A22E6C88() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2258390()
{
  sub_1A2221998();
  if (sub_1A22E6C88())
  {
    return sub_1A22E6C88() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A22583F8(void *a1, uint64_t a2)
{
  v2 = [a1 constraintLessThanOrEqualToAnchor_];

  return nullsub_1(v2, 0);
}

uint64_t sub_1A2258438(void *a1)
{
  v1 = [a1 constraintLessThanOrEqualToConstant_];

  return nullsub_1(v1, 0);
}

uint64_t sub_1A2258474(void *a1, uint64_t a2)
{
  v2 = [a1 constraintGreaterThanOrEqualToAnchor_];

  return nullsub_1(v2, 0);
}

uint64_t sub_1A22584B4(void *a1)
{
  v1 = [a1 constraintGreaterThanOrEqualToConstant_];

  return nullsub_1(v1, 0);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A2258630(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1A2258678(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1A22586DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A2258728(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_1A2258868()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  CGRectGetHeight(v20);
  v3 = [v0 sourceView];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    v15 = v5;
    v16 = v6;
    v14 = v7;
    v17 = v8;

    *&v10 = v14;
    *&v9 = v15;
    *(&v9 + 1) = v16;
    *(&v10 + 1) = v17;
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v18[0] = v9;
  v18[1] = v10;
  v19 = v4 == 0;
  sub_1A2258974(v18);
  v11 = v12;

  return v11;
}

void sub_1A2258974(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 containerView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    if (*(a1 + 32))
    {
      CGRectGetWidth(*&v6);
    }

    else
    {
      CGRectGetWidth(*&v6);
      sub_1A22E6BC8();
    }
  }
}

void sub_1A2258A90()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoutePickerPadPresentationController();
  objc_msgSendSuper2(&v3, sel_containerViewWillLayoutSubviews);
  v1 = [v0 presentedView];
  if (v1)
  {
    v2 = v1;
    [v0 frameOfPresentedViewInContainerView];
    [v2 setFrame_];
  }
}

uint64_t sub_1A2258BC8()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls36RoutePickerPadPresentationController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

uint64_t sub_1A2258C24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls36RoutePickerPadPresentationController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

void sub_1A2258CE4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RoutePickerPadPresentationController();
  objc_msgSendSuper2(&v6, sel_presentationTransitionWillBegin);
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 layer];

    [v3 setHitTestsAsOpaque_];
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_backgroundTapHandler];
  [v4 setDelegate_];
  v5 = [v0 containerView];
  [v5 addGestureRecognizer_];
}

id sub_1A2258EF8(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC13MediaControls36RoutePickerPadPresentationController_dismissHandler];
  v6 = type metadata accessor for RoutePickerPadPresentationController();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v2;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithPresentedViewController_presentingViewController_, a1, a2);

  return v7;
}

id sub_1A2258FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerPadPresentationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A225901C(void *a1)
{
  result = [v1 containerView];
  if (result)
  {
    v4 = result;
    [a1 locationInView_];
    v6 = v5;
    v8 = v7;
    [v1 frameOfPresentedViewInContainerView];
    v10.x = v6;
    v10.y = v8;
    v9 = CGRectContainsPoint(v11, v10);

    return !v9;
  }

  return result;
}

uint64_t sub_1A2259178(uint64_t a1)
{
  if ((*(*(*(a1 + 16) - 8) + 48))(v1, 1) == 1)
  {
    return 7104878;
  }

  else
  {
    return 0x6C696E20746F6ELL;
  }
}

void (*sub_1A2259224(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 16);

  return sub_1A22592B8;
}

void sub_1A22592B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = *(*a1 + 24);

  if (a2)
  {

    v8 = sub_1A2112E98(v7, v5);

    if ((v8 & 1) == 0)
    {
      sub_1A2259DE8(v5);
    }
  }

  else
  {
    v9 = sub_1A2112E98(v6, v5);

    if ((v9 & 1) == 0)
    {
      sub_1A2259DE8(v5);
    }
  }

  free(v3);
}

void (*sub_1A2259384(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1A22E5C88();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  v5[14] = v10;
  v5[15] = v12;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[16] = v13;
  v5[17] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1A22594F8;
}

void sub_1A22594F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 72);
  if (a2)
  {
    v3(*(*a1 + 104), v4, v8);
    v3(v6, (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v7, v8);
    swift_endAccess();
    sub_1A210EB08();
    v11 = *(v9 + 8);
    v11(v6, v8);
  }

  else
  {
    v3(*(*a1 + 104), (v10 + v5), v8);
    swift_beginAccess();
    (*(v9 + 24))(v10 + v5, v4, v8);
    swift_endAccess();
    sub_1A210EB08();
    v11 = *(v9 + 8);
  }

  v11(v7, v8);
  v11(v4, v8);
  free(v4);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t sub_1A225967C()
{
  v1 = OBJC_IVAR____TtC13MediaControls17SessionController_isEligibleForHardwareVolumeControls;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1A22596C0(uint64_t *a1))(uint64_t *a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1A22E5C88();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC13MediaControls17SessionController_isEligibleForHardwareVolumeControls;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return sub_1A22597B8;
}

void sub_1A22597B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 64);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v9 = *(v1 + 40);
      v8 = *(v1 + 48);
      v10 = *(v1 + 32);
      (*(**(v1 + 24) + 152))();
      v11 = sub_1A22E59B8();
      v13 = v12;
      (*(v9 + 8))(v8, v10);
      (*(*v7 + 240))(v4, v11, v13);
    }
  }

  free(*(v1 + 48));

  free(v1);
}

uint64_t sub_1A2259930(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A225999C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

uint64_t sub_1A2259A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1A225B168(a1, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1A2259AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1A225B168(a1, a2, a3);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_1A2259B38(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13MediaControls17SessionController__observers;
  v6 = *(**(v2 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 120);

  v8 = v6(v7);

  v9 = *(v8 + 16) + 1;
  v10 = 32;
  while (--v9)
  {
    v11 = *(v8 + v10);
    v10 += 16;
    if (v11 == a1)
    {
    }
  }

  v13 = *(**(v2 + v5) + 136);

  v14 = v13(v22);
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1A225A44C(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1A225A44C((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = a1;
  v21[5] = a2;
  swift_unknownObjectRetain();
  v14(v22, 0);
}

uint64_t sub_1A2259CFC(uint64_t a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 136);
  swift_unknownObjectRetain();

  v4 = v3(v10);
  v6 = v5;
  v7 = sub_1A225B2A8(v5, a1);
  result = swift_unknownObjectRelease();
  v9 = *(*v6 + 16);
  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_1A225B4E8(v7, v9);
    v4(v10, 0);
  }

  return result;
}

void sub_1A2259DE8(uint64_t a1)
{
  v3 = *(*v1 + 128);
  v4 = v3();
  if (*(a1 + 16) <= *(v4 + 16) >> 3)
  {
    aBlock[0] = v4;
    sub_1A225A580(a1);
    v46 = aBlock[0];
  }

  else
  {
    v46 = sub_1A225A6AC(a1, v4);
  }

  v5 = v3();
  if (*(v5 + 16) <= *(a1 + 16) >> 3)
  {
    aBlock[0] = a1;

    sub_1A225A580(v5);

    v45 = a1;
  }

  else
  {

    v45 = sub_1A225A6AC(v5, a1);
  }

  v6 = *(**(v47 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 120);

  v8 = v6(v7);

  v42 = *(v8 + 16);
  v43 = v8;
  if (v42)
  {
    v9 = 0;
    v41 = v8 + 32;
    v10 = v46 + 56;
LABEL_10:
    if (v9 < *(v43 + 16))
    {
      v44 = v9 + 1;
      v11 = 1 << *(v46 + 32);
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v13 = v12 & *(v46 + 56);
      v14 = (v11 + 63) >> 6;
      v48 = *(v41 + 16 * v9 + 8);
      swift_unknownObjectRetain();

      v15 = 0;
      if (v13)
      {
        while (1)
        {
          v16 = v15;
LABEL_20:
          v17 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v18 = (*(v46 + 48) + ((v16 << 10) | (16 * v17)));
          v20 = *v18;
          v19 = v18[1];
          ObjectType = swift_getObjectType();
          v22 = *(v48 + 24);

          v22(v47, v20, v19, ObjectType, v48);
          v23 = objc_opt_self();
          v24 = sub_1A2254D7C();
          v25 = swift_allocObject();
          v25[2] = v47;
          v25[3] = v20;
          v25[4] = v19;
          aBlock[4] = sub_1A225B754;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A224DB84;
          aBlock[3] = &block_descriptor_6;
          v26 = _Block_copy(aBlock);

          v27 = [v23 scheduledTimerWithTimeInterval:0 repeats:v26 block:v24];
          _Block_release(v26);

          v10 = v46 + 56;
          if (!v13)
          {
            goto LABEL_16;
          }
        }
      }

      while (1)
      {
LABEL_16:
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_35;
        }

        if (v16 >= v14)
        {
          break;
        }

        v13 = *(v10 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_20;
        }
      }

      v28 = 1 << *(v45 + 32);
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      else
      {
        v29 = -1;
      }

      v30 = v29 & *(v45 + 56);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      for (i = v45 + 56; v30; i = v45 + 56)
      {
        v34 = v32;
LABEL_31:
        v35 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v36 = (*(v45 + 48) + ((v34 << 10) | (16 * v35)));
        v37 = *v36;
        v38 = v36[1];
        v39 = swift_getObjectType();
        v40 = *(v48 + 40);

        v40(v47, v37, v38, v39, v48);
      }

      while (1)
      {
        v34 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          swift_unknownObjectRelease();

          v9 = v44;
          v10 = v46 + 56;
          if (v44 == v42)
          {
            goto LABEL_33;
          }

          goto LABEL_10;
        }

        v30 = *(i + 8 * v34);
        ++v32;
        if (v30)
        {
          v32 = v34;
          goto LABEL_31;
        }
      }

LABEL_35:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_1A225A2E0()
{

  v1 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A210DA3C(v0 + OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1A225A378()
{

  v1 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A210DA3C(v0 + OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor);
  swift_weakDestroy();

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void *sub_1A225A44C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089010);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089008);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A225A580(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1A225AC1C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1A225A6AC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1A22E72A8();

    sub_1A22E6658();
    v23 = sub_1A22E72F8();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1A22E71E8() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_1A2124D10(v58, v54, v56, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1A22E72A8();

            sub_1A22E6658();
            v41 = sub_1A22E72F8();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1A22E71E8() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_1A225AD58(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x1A58DCD00](v50, -1, -1);
    v57 = v63;
    v5 = v52;
LABEL_52:
    sub_1A212508C();
    return v5;
  }

  result = MEMORY[0x1A58DCD00](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1A225AC1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A22E72A8();
  sub_1A22E6658();
  v6 = sub_1A22E72F8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A22E71E8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A2213550();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A225AF90(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1A225AD58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1A2124D10(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1A22E72A8();

        sub_1A22E6658();
        v19 = sub_1A22E72F8();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1A22E71E8() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

unint64_t sub_1A225AF90(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A22E6DB8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A22E72A8();

        sub_1A22E6658();
        v10 = sub_1A22E72F8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A225B168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + OBJC_IVAR____TtC13MediaControls17SessionController_isEligibleForHardwareVolumeControls) = 0;
  v7 = v3 + OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor;
  *(v3 + OBJC_IVAR____TtC13MediaControls17SessionController_sessionInteractor + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v8 = OBJC_IVAR____TtC13MediaControls17SessionController__observers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088FF8);
  *(v3 + v8) = sub_1A22CE154();
  v9 = OBJC_IVAR____TtC13MediaControls17SessionController_routingSession;
  v10 = sub_1A22E5C88();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  swift_beginAccess();
  *(v7 + 8) = a3;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  return v4;
}

uint64_t sub_1A225B2A8(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A225B154(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A225B418(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089008);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A225B4E8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A225A44C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A225B418(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t type metadata accessor for SessionController()
{
  result = qword_1ED951D48;
  if (!qword_1ED951D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A225B688()
{
  result = sub_1A22E5C88();
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

uint64_t sub_1A225B754()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (*(*v1 + 128))();
  v16 = v3;
  v17 = v2;
  v5 = sub_1A211BCC0(v2, v3, v4);

  if (v5)
  {
    v7 = *(**(v1 + OBJC_IVAR____TtC13MediaControls17SessionController__observers) + 120);

    v9 = v7(v8);

    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v9 + 40);
      while (v11 < *(v9 + 16))
      {
        ++v11;
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 32);
        swift_unknownObjectRetain();
        v15(v1, v17, v16, ObjectType, v13);
        result = swift_unknownObjectRelease();
        v12 += 2;
        if (v10 == v11)
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

  return result;
}

uint64_t sub_1A225B8DC()
{
  type metadata accessor for VolumeSliderCoordinator();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089018);
  *(v0 + 16) = sub_1A22CE154();
  *(v0 + 32) = 0;
  result = swift_unknownObjectWeakInit();
  qword_1ED953158 = v0;
  return result;
}

uint64_t sub_1A225B944()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089018);
  *(v0 + 16) = sub_1A22CE154();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1A225B9A8()
{
  if (qword_1ED951688 != -1)
  {
    swift_once();
  }
}

void sub_1A225BA3C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v4 = Strong;

  if (v4 != a1)
  {
    goto LABEL_9;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  *(v1 + 32) = 0;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;

    if (v7 == v5)
    {
      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  sub_1A225BCB4();
LABEL_8:

LABEL_9:
  v8 = *(**(v1 + 16) + 136);
  v9 = a1;

  v10 = v8(v16);
  v12 = v11;
  sub_1A225C490(v11, v9);
  v14 = v13;

  v15 = *(*v12 + 16);
  if (v15 < v14)
  {
    __break(1u);
  }

  else
  {
    sub_1A225C6CC(v14, v15);
    v10(v16, 0);
  }
}

void sub_1A225BB84(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = *(a2 + 32);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = *(a2 + 32);
    if (v5(ObjectType, a2))
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      *(v2 + 32) = a2;
      goto LABEL_8;
    }
  }

  v7 = swift_getObjectType();
  if (v5(v7, a2))
  {
    return;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  *(v2 + 32) = 0;
LABEL_8:
  swift_unknownObjectWeakAssign();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;

    v10 = v11;
    if (v9 == v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = v11;
    if (!v11)
    {
      return;
    }
  }

  v12 = v10;
  sub_1A225BCB4();
  v10 = v12;
LABEL_13:
}

void sub_1A225BCB4()
{
  v1 = v0;
  v2 = sub_1A22E6248();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v60 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v10 = sub_1A229886C();
    (*(v3 + 16))(v8, v10, v2);
    v11 = sub_1A22E6238();
    v12 = sub_1A22E6A98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v63 = v14;
      *v13 = 136315138;
      v15 = sub_1A22E7388();
      v17 = sub_1A2103450(v15, v16, &v63);
      *&v62 = v2;
      v18 = v1;
      v19 = v17;

      *(v13 + 4) = v19;
      v1 = v18;
      _os_log_impl(&dword_1A20FC000, v11, v12, "[%s] will disable other sliders", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1A58DCD00](v14, -1, -1);
      MEMORY[0x1A58DCD00](v13, -1, -1);

      (*(v3 + 8))(v8, v62);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v39 = *(**(v1 + 16) + 120);

    v41 = v39(v40);

    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = 0;
      v61 = v42 - 1;
      v44 = MEMORY[0x1E69E7CC0];
      do
      {
        v45 = v43;
        while (1)
        {
          if (v45 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v62 = *(v41 + 32 + 16 * v45);
          v43 = v45 + 1;
          v46 = swift_unknownObjectWeakLoadStrong();
          v47 = v62;
          if (!v46)
          {
            break;
          }

          v48 = v47;

          if (v48 != v46)
          {
            break;
          }

          ++v45;
          if (v42 == v43)
          {
            goto LABEL_27;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A225C328(0, *(v44 + 16) + 1, 1);
          v44 = v63;
        }

        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1A225C328((v50 > 1), v51 + 1, 1);
          v44 = v63;
        }

        *(v44 + 16) = v51 + 1;
        *(v44 + 16 * v51 + 32) = v62;
      }

      while (v61 != v45);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

LABEL_27:

    v52 = *(v44 + 16);
    if (!v52)
    {
LABEL_31:

      return;
    }

    v53 = 0;
    v54 = (v44 + 40);
    while (v53 < *(v44 + 16))
    {
      ++v53;
      v56 = *(v54 - 1);
      v55 = *v54;
      ObjectType = swift_getObjectType();
      v58 = *(v55 + 16);
      v59 = v56;
      v58(0, ObjectType, v55);

      v54 += 2;
      if (v52 == v53)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {
    v20 = sub_1A229886C();
    (*(v3 + 16))(v6, v20, v2);
    v21 = sub_1A22E6238();
    v22 = sub_1A22E6A98();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v63 = v24;
      *v23 = 136315138;
      v25 = sub_1A22E7388();
      v27 = sub_1A2103450(v25, v26, &v63);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1A20FC000, v21, v22, "[%s] will enable sliders", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1A58DCD00](v24, -1, -1);
      MEMORY[0x1A58DCD00](v23, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v28 = *(**(v1 + 16) + 120);

    v30 = v28(v29);

    v31 = *(v30 + 16);
    if (!v31)
    {
LABEL_10:

      return;
    }

    v32 = 0;
    v33 = (v30 + 40);
    while (v32 < *(v30 + 16))
    {
      ++v32;
      v34 = *(v33 - 1);
      v35 = *v33;
      v36 = swift_getObjectType();
      v37 = *(v35 + 16);
      v38 = v34;
      v37(1, v36, v35);

      v33 += 2;
      if (v31 == v32)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1A225C26C()
{

  sub_1A210DA3C(v0 + 24);
  return v0;
}

uint64_t sub_1A225C294()
{

  sub_1A210DA3C(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1A225C2D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089018);
  *(v0 + 16) = sub_1A22CE154();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

void *sub_1A225C328(void *a1, int64_t a2, char a3)
{
  result = sub_1A225C348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A225C348(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089020);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A225C490(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v7 = 0;
    for (i = 4; v3[i] != a2; i += 2)
    {
      if (v4 == ++v7)
      {
        return;
      }
    }

    if (!v2)
    {
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        if (v9 == v4)
        {
          return;
        }

        v10 = i * 8 + 16;
        while (v9 < v4)
        {
          v11 = *(v3 + v10);
          if (v11 != a2)
          {
            if (v9 != v7)
            {
              if (v7 >= v4)
              {
                goto LABEL_23;
              }

              v18 = *(v3 + v10);
              v17 = *&v3[2 * v7 + 4];
              v12 = v17;
              v13 = v11;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v3 = sub_1A225C47C(v3);
              }

              v14 = &v3[2 * v7];
              v15 = v14[4];
              *(v14 + 2) = v18;

              if (v9 >= v3[2])
              {
                goto LABEL_24;
              }

              v16 = *(v3 + v10);
              *(v3 + v10) = v17;

              *a1 = v3;
            }

            ++v7;
          }

          ++v9;
          v4 = v3[2];
          v10 += 16;
          if (v9 == v4)
          {
            return;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      __break(1u);
    }
  }
}

unint64_t sub_1A225C5FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089028);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A225C6CC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A2114798(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A225C5FC(v6, a2, 0);
  *v2 = v4;
  return result;
}

id sub_1A225C800(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() instantiateViewController];
  [v4 setFlags_];
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v4;
  v9[4] = sub_1A225C924;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A225C95C;
  v9[3] = &block_descriptor_7;
  v6 = _Block_copy(v9);

  v7 = v4;

  [v7 setCompletion_];
  _Block_release(v6);
  return v7;
}

void sub_1A225C95C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1A225C9E8()
{
  v1 = [objc_opt_self() labelColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
}

uint64_t sub_1A225CA7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB089030);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  [v0 setClipsToBounds_];
  sub_1A22E6308();
  v4 = sub_1A22E6318();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return sub_1A22E6C58();
}

void sub_1A225CBA0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A225CBEC(uint64_t *a1))(id **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A225CC7C;
}

void sub_1A225CC7C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
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

uint64_t sub_1A225CCF8(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t sub_1A225CD68(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1A225CDE4()
{
  MEMORY[0x1A58DCDF0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1A225CE1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls32RoutePickerTransitioningDelegate_presentationStyle);
  sub_1A225CE70(v1);
  return v1;
}

uint64_t sub_1A225CE70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1A225CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC13MediaControls32RoutePickerTransitioningDelegate_presentationStyle];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1A225CF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtC13MediaControls32RoutePickerTransitioningDelegate_presentationStyle];
  *v4 = a1;
  *(v4 + 1) = a2;
  *(v4 + 2) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for RoutePickerTransitioningDelegate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A225D188()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerTransitioningDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A225D1D4(void *a1, void *a2)
{
  v5 = v2 + OBJC_IVAR____TtC13MediaControls32RoutePickerTransitioningDelegate_presentationStyle;
  v6 = *(v2 + OBJC_IVAR____TtC13MediaControls32RoutePickerTransitioningDelegate_presentationStyle);
  if (v6)
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    type metadata accessor for RoutePickerPadPresentationController();
    v9 = a2;
    v10 = a1;
    sub_1A225CE70(v6);
    v11 = sub_1A2229C40(v10, a2);
    v12 = *(*v6 + 88);
    v13 = v11;
    v14 = v12();
    [v13 setSourceView_];

    v15 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x70);

    v15(v8, v7);

    return v13;
  }

  else
  {
    type metadata accessor for RoutePickerPhonePresentationController();
    v17 = a2;
    return sub_1A2229C40(a1, a2);
  }
}

uint64_t sub_1A225D328(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13MediaControls32RoutePickerTransitioningDelegateC17PresentationStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A225D380(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A225D3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1A225D428(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1A225D488()
{
  type metadata accessor for RoutingControlsHub();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  result = swift_unknownObjectWeakInit();
  qword_1EB091468 = v0;
  return result;
}

uint64_t *sub_1A225D4D0()
{
  if (qword_1EB08C4C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB091468;
}

uint64_t sub_1A225D520()
{
  if (qword_1EB08C4C0 != -1)
  {
    swift_once();
  }
}

void (*sub_1A225D57C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A2255490;
}

uint64_t sub_1A225D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 88))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A225D6D8()
{
  sub_1A210DA3C(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A225D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1A22E67B8();
  v7 = 1;
  if ((a1 & 0x8000000000000000) == 0 && v6 > a1)
  {
    sub_1A22E67E8();
    v7 = 0;
  }

  v8 = *(*(a2 - 8) + 56);

  return v8(a3, v7, 1, a2);
}

uint64_t sub_1A225D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A22E5D98();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890B0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1A22E6028();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  sub_1A22E5C58();
  sub_1A22E5F88();
  v21 = *(v15 + 8);
  v22 = v20;
  v23 = a1;
  v21(v22, v14);
  sub_1A22E5C58();
  v24 = v45;
  sub_1A22E5F98();
  v25 = v18;
  v26 = v48;
  v21(v25, v14);
  v27 = v46;
  v28 = v47;
  v29 = *(v7 + 56);
  sub_1A2129BD0(v13, v46, &qword_1EB088BE8);
  sub_1A2129BD0(v24, v27 + v29, &qword_1EB0890B8);
  if ((*(v28 + 48))(v27, 1, v26) == 1)
  {
    v30 = v50;
    v31 = sub_1A22E5DD8();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v27 + v29, 1, v31) == 1)
    {
      sub_1A223EA5C();
      swift_willThrowTypedImpl();
      v33 = sub_1A22E5C88();
      (*(*(v33 - 8) + 8))(v23, v33);
      return sub_1A210D9B0(v27, &qword_1EB0890B0);
    }

    v42 = sub_1A22E5C88();
    (*(*(v42 - 8) + 8))(v23, v42);
    (*(v32 + 32))(v30, v27 + v29, v31);
    swift_storeEnumTagMultiPayload();
    v40 = &qword_1EB088BE8;
    v41 = v27;
  }

  else
  {
    v35 = v43;
    (*(v28 + 32))(v43, v27, v26);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0) + 48);
    v36 = v44;
    (*(v28 + 16))(v44, v35, v26);
    v37 = sub_1A22E5BE8();
    v38 = sub_1A22E5C88();
    (*(*(v38 - 8) + 8))(v23, v38);
    (*(v28 + 8))(v35, v26);
    if ((v37 & 0x100000000) != 0)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }

    *(v36 + v45) = v39;
    swift_storeEnumTagMultiPayload();
    sub_1A225DE1C(v36, v50);
    v40 = &qword_1EB0890B8;
    v41 = v27 + v29;
  }

  return sub_1A210D9B0(v41, v40);
}

uint64_t sub_1A225DE1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A225DE80()
{
  v1 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A225E010(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A22E5DD8();
    v5 = 0x766974616C65722ELL;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0);
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1A22E6E88();
    MEMORY[0x1A58DA8D0](0x6C6F76287362612ELL, 0xED0000203A656D75);
    sub_1A22E6908();
    MEMORY[0x1A58DA8D0](41, 0xE100000000000000);
    v5 = v7[0];
    v4 = sub_1A22E5D98();
  }

  (*(*(v4 - 8) + 8))(v3);
  return v5;
}

uint64_t sub_1A225E010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A225E078@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession;
  swift_beginAccess();
  v4 = sub_1A22E5C88();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1A225E100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession;
  swift_beginAccess();
  v4 = sub_1A22E5C88();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_1A225E190()
{
  v1 = v0;
  v2 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A22E5C88();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  sub_1A22E6E88();

  v17 = 0xD000000000000015;
  v18 = 0x80000001A2304880;
  (*(*v0 + 160))(v9);
  v10 = sub_1A22E59B8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x1A58DA8D0](v10, v12);

  MEMORY[0x1A58DA8D0](0x6F72746E6F63202CLL, 0xEA00000000003A6CLL);
  v13 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel;
  swift_beginAccess();
  sub_1A225E010(v1 + v13, v4);
  v14 = sub_1A225DE80();
  MEMORY[0x1A58DA8D0](v14);

  sub_1A225E3A8(v4);
  MEMORY[0x1A58DA8D0](93, 0xE100000000000000);
  return v17;
}

uint64_t sub_1A225E3A8(uint64_t a1)
{
  v2 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A225E404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A225E478(a1, a2, a3);
  return v6;
}

uint64_t sub_1A225E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = sub_1A22E5C88();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 1031798784;
  v19 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession;
  v20 = v7;
  v13 = *(v7 + 16);
  v13(v3 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession, a1, v6);
  v14 = (v3 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_interactor);
  v15 = v22;
  *v14 = a2;
  v14[1] = v15;
  v22 = a1;
  v13(v9, a1, v6);
  swift_unknownObjectRetain();
  v16 = v21;
  sub_1A225D820(v9, v12);
  if (v16)
  {
    swift_unknownObjectRelease();
    v17 = *(v20 + 8);
    v17(v22, v6);

    v17(v3 + v19, v6);
    swift_unknownObjectRelease();
    type metadata accessor for SessionHardwareButtonEventConsumer(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v20 + 8))(v22, v6);
    swift_unknownObjectRelease();
    sub_1A225DE1C(v12, v3 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel);
  }

  return v3;
}

uint64_t sub_1A225E6F4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A22E5C88();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v27 = a1;
  v13 = sub_1A22E59B8();
  v15 = v14;
  (*(*v2 + 160))();
  v16 = sub_1A22E59B8();
  v18 = v17;
  (*(v7 + 8))(v12, v6);
  if (v13 == v16 && v15 == v18)
  {
  }

  else
  {
    v20 = sub_1A22E71E8();

    if ((v20 & 1) == 0)
    {
      v21 = v2[2];
      v2[2] = 0;
      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98);
        sub_1A22E68B8();
      }
    }
  }

  (*(v7 + 16))(v10, v27, v6);
  v22 = v29;
  v23 = v28;
  result = sub_1A225D820(v10, v29);
  if (!v23)
  {
    v25 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel;
    swift_beginAccess();
    sub_1A22607B0(v22, v2 + v25);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A225E998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = sub_1A22E6248();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A229886C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_1A22E6238();
  v14 = sub_1A22E6A58();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = a2;
    v18 = v17;
    v40 = v17;
    *v16 = 136315650;
    v19 = sub_1A22E7388();
    v21 = sub_1A2103450(v19, v20, &v40);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v39 = v38;
    type metadata accessor for HardwareButtonEvent(0);
    sub_1A2260D8C(&qword_1EB0890C8, type metadata accessor for HardwareButtonEvent);
    v22 = sub_1A22E71D8();
    v24 = sub_1A2103450(v22, v23, &v40);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v39 = v37;
    type metadata accessor for HardwareButtonKind(0);
    sub_1A2260D8C(&qword_1EB0890D0, type metadata accessor for HardwareButtonKind);
    v25 = sub_1A22E71D8();
    v27 = sub_1A2103450(v25, v26, &v40);

    *(v16 + 24) = v27;
    _os_log_impl(&dword_1A20FC000, v13, v14, "[%s] consume hardware button event (%s, %s)", v16, 0x20u);
    swift_arrayDestroy();
    v28 = v18;
    a2 = v37;
    MEMORY[0x1A58DCD00](v28, -1, -1);
    v29 = v16;
    v7 = v36;
    MEMORY[0x1A58DCD00](v29, -1, -1);
  }

  result = (*(v9 + 8))(v11, v8);
  if (v38 == 1)
  {
    v34 = *(v2 + 16);
    *(v3 + 16) = 0;
    if (!v34)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98);
    sub_1A22E68B8();
  }

  if (!v38)
  {
    v31 = sub_1A22E6848();
    (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v3;
    v32[5] = a2;

    result = sub_1A225F65C(0, 0, v7, &unk_1A230B788, v32);
    v33 = *(v3 + 16);
    *(v3 + 16) = result;
    if (v33)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088C98);
      sub_1A22E68B8();
    }
  }

  return result;
}

uint64_t sub_1A225EE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1A22E6F98();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_1A22E6FA8();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A225EFBC, 0, 0);
}

uint64_t sub_1A225EFBC()
{
  sub_1A225F908(*(v0 + 64));
  sub_1A22E7238();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_1A225F098;

  return (sub_1A22608AC)(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1A225F098()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v2[18] = v0;

  v6 = *(v4 + 8);
  v2[19] = v6;
  v2[20] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1A225F3E4;
  }

  else
  {
    v7 = sub_1A225F21C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A225F21C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_1A225F908(*(v0 + 64));
  sub_1A22E7238();
  *(v0 + 40) = xmmword_1A230B760;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v4 = sub_1A2260D8C(&qword_1ED94E920, MEMORY[0x1E69E8820]);
  sub_1A22E7218();
  sub_1A2260D8C(&qword_1ED94E928, MEMORY[0x1E69E87E8]);
  sub_1A22E6FB8();
  v5 = *(v2 + 8);
  *(v0 + 168) = v5;
  *(v0 + 176) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_1A225F46C;
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  return MEMORY[0x1EEE6DE58](v8, v0 + 16, v7, v4);
}

uint64_t sub_1A225F3E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A225F46C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    (*(v2 + 168))(*(v2 + 96), *(v2 + 72));
    v3 = sub_1A225F5C4;
  }

  else
  {
    v4 = *(v2 + 152);
    v5 = *(v2 + 120);
    v6 = *(v2 + 104);
    (*(v2 + 168))(*(v2 + 96), *(v2 + 72));
    v4(v5, v6);
    v3 = sub_1A225F21C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A225F5C4()
{
  (*(v0 + 152))(*(v0 + 120), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A225F65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1A2214CF8(a3, v22 - v9, &qword_1EB088B60);
  v11 = sub_1A22E6848();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A210D9B0(v10, &qword_1EB088B60);
  }

  else
  {
    sub_1A22E6838();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A22E6808();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A22E6648() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A210D9B0(a3, &qword_1EB088B60);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A210D9B0(a3, &qword_1EB088B60);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A225F908(uint64_t a1)
{
  v102 = *v1;
  v3 = sub_1A22E6248();
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v104 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v95 - v6;
  v111 = sub_1A22E5738();
  v106 = *(v111 - 8);
  v7 = MEMORY[0x1EEE9AC00](v111);
  v101 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v95 - v9;
  v10 = sub_1A22E5DA8();
  v99 = *(v10 - 8);
  v100 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A22E5DD8();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1A22E5D98();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB089150);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v95 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888B8);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v95 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v112 = &v95 - v28;
  v29 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel;
  swift_beginAccess();
  v30 = v20 + *(v18 + 56);
  *v20 = a1;
  v108 = v1;
  sub_1A225E010(v1 + v29, v30);
  v103 = a1;
  if (a1 == 1)
  {
    type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v97;
      v38 = v98;
      (*(v97 + 32))(v14, v30, v98);
      v40 = v99;
      v39 = v100;
      (*(v99 + 104))(v12, *MEMORY[0x1E69AE6A8], v100);
      sub_1A22E5DC8();
      (*(v40 + 8))(v12, v39);
      (*(v37 + 8))(v14, v38);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0);
      v46 = v95;
      v47 = v30;
      v48 = v96;
      (*(v95 + 32))(v16, v47, v96);
      sub_1A22E5D88();
      (*(v46 + 8))(v16, v48);
    }

    v41 = v106;
    v42 = v111;
    (*(v106 + 56))(v27, 0, 1, v111);
  }

  else
  {
    if (!a1)
    {
      type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v110;
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v97;
        v34 = v98;
        (*(v97 + 32))(v14, v30, v98);
        v36 = v99;
        v35 = v100;
        (*(v99 + 104))(v12, *MEMORY[0x1E69AE6B0], v100);
        sub_1A22E5DC8();
        (*(v36 + 8))(v12, v35);
        (*(v33 + 8))(v14, v34);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0890C0);
        v43 = v95;
        v44 = v30;
        v45 = v96;
        (*(v95 + 32))(v16, v44, v96);
        sub_1A22E5D88();
        (*(v43 + 8))(v16, v45);
      }

      v41 = v106;
      v42 = v111;
      (*(v106 + 56))(v27, 0, 1, v111);
      goto LABEL_13;
    }

    v41 = v106;
    v42 = v111;
    (*(v106 + 56))(v27, 1, 1, v111);
    sub_1A210D9B0(v20, &qword_1EB089150);
  }

  v32 = v110;
LABEL_13:
  v49 = v112;
  sub_1A2129BD0(v27, v112, &qword_1EB0888B8);
  sub_1A2214CF8(v49, v24, &qword_1EB0888B8);
  v50 = (*(v41 + 48))(v24, 1, v42);
  v51 = v109;
  if (v50 == 1)
  {
    sub_1A210D9B0(v24, &qword_1EB0888B8);
    v52 = sub_1A229886C();
    v53 = v104;
    (*(v51 + 16))(v104, v52, v32);
    v54 = v108;

    v55 = sub_1A22E6238();
    v56 = sub_1A22E6A88();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v32;
      v59 = swift_slowAlloc();
      v114 = v59;
      *v57 = 136315650;
      v60 = sub_1A22E7388();
      v62 = sub_1A2103450(v60, v61, &v114);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2080;
      v64 = (*(*v54 + 208))(v63);
      v66 = sub_1A2103450(v64, v65, &v114);

      *(v57 + 14) = v66;
      *(v57 + 22) = 2080;
      v113 = v103;
      type metadata accessor for HardwareButtonKind(0);
      sub_1A2260D8C(&qword_1EB0890D0, type metadata accessor for HardwareButtonKind);
      v67 = sub_1A22E71D8();
      v69 = sub_1A2103450(v67, v68, &v114);

      *(v57 + 24) = v69;
      _os_log_impl(&dword_1A20FC000, v55, v56, "[%s]%s.adjustVolume %s - invalid control", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1A58DCD00](v59, -1, -1);
      MEMORY[0x1A58DCD00](v57, -1, -1);

      (*(v51 + 8))(v104, v58);
    }

    else
    {

      (*(v51 + 8))(v53, v32);
    }
  }

  else
  {
    v70 = v107;
    (*(v41 + 32))(v107, v24, v42);
    v71 = sub_1A229886C();
    v72 = v105;
    (*(v51 + 16))(v105, v71, v32);
    v73 = v101;
    (*(v41 + 16))(v101, v70, v42);
    v74 = sub_1A22E6238();
    v75 = v32;
    v76 = sub_1A22E6A58();
    if (os_log_type_enabled(v74, v76))
    {
      v77 = v73;
      v78 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v114 = v106;
      *v78 = 136315650;
      v79 = sub_1A22E7388();
      v81 = sub_1A2103450(v79, v80, &v114);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2080;
      v113 = v103;
      type metadata accessor for HardwareButtonKind(0);
      sub_1A2260D8C(&qword_1EB0890D0, type metadata accessor for HardwareButtonKind);
      v82 = sub_1A22E71D8();
      v84 = sub_1A2103450(v82, v83, &v114);

      *(v78 + 14) = v84;
      *(v78 + 22) = 2080;
      sub_1A2260D8C(&qword_1EB089158, MEMORY[0x1E69AE518]);
      v85 = sub_1A22E71D8();
      v87 = v86;
      v88 = *(v41 + 8);
      v88(v77, v111);
      v89 = sub_1A2103450(v85, v87, &v114);

      *(v78 + 24) = v89;
      _os_log_impl(&dword_1A20FC000, v74, v76, "[%s].adjustVolume %s - %s", v78, 0x20u);
      v90 = v106;
      swift_arrayDestroy();
      v42 = v111;
      MEMORY[0x1A58DCD00](v90, -1, -1);
      MEMORY[0x1A58DCD00](v78, -1, -1);

      (*(v51 + 8))(v105, v110);
    }

    else
    {

      v88 = *(v41 + 8);
      v88(v73, v42);
      (*(v51 + 8))(v72, v75);
    }

    v91 = *(v108 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_interactor + 8);
    ObjectType = swift_getObjectType();
    v93 = v107;
    (*(v91 + 16))(v107, ObjectType, v91);
    v88(v93, v42);
  }

  return sub_1A210D9B0(v112, &qword_1EB0888B8);
}

uint64_t sub_1A2260620()
{

  v1 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A225E3A8(v0 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A22606A8()
{

  v1 = OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_routingSession;
  v2 = sub_1A22E5C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A225E3A8(v0 + OBJC_IVAR____TtC13MediaControls34SessionHardwareButtonEventConsumer_controlModel);
  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1A22607B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A2260814()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A222D660;

  return sub_1A225EE88(v4, v5, v6, v2, v3);
}

uint64_t sub_1A22608AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A22E6F98();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A22609AC, 0, 0);
}

uint64_t sub_1A22609AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A22E6FA8();
  v5 = sub_1A2260D8C(&qword_1ED94E920, MEMORY[0x1E69E8820]);
  sub_1A22E7218();
  sub_1A2260D8C(&qword_1ED94E928, MEMORY[0x1E69E87E8]);
  sub_1A22E6FB8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A2260B3C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A2260B3C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A2260CF8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A2260CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A2260D8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A2260DD8()
{
  result = qword_1EB0890D8;
  if (!qword_1EB0890D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0890D8);
  }

  return result;
}

uint64_t sub_1A2260E34()
{
  result = sub_1A22E5C88();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SessionHardwareButtonEventConsumer.ControlModel(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A2260F20()
{
  sub_1A2260F94();
  if (v0 <= 0x3F)
  {
    sub_1A2261000();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A2260F94()
{
  if (!qword_1ED950C30)
  {
    sub_1A22E5D98();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED950C30);
    }
  }
}

void sub_1A2261000()
{
  if (!qword_1ED950C18)
  {
    v0 = sub_1A22E5DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED950C18);
    }
  }
}

uint64_t sub_1A226106C()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22610B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barCount;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    return sub_1A2261D48();
  }

  return result;
}

void (*sub_1A2261110(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barCount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22611A4;
}

void sub_1A22611A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_1A2261D48();
  }

  free(v1);
}

double sub_1A22611FC()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_spacingRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A226124C(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13MediaControls13EqualizerView_spacingRatio;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A22612E0;
}

double sub_1A22612E4()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_cornerRadiusRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2261334(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = a2;
  if (v6 != a2)
  {
    return sub_1A2261D48();
  }

  return result;
}

uint64_t (*sub_1A2261390(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC13MediaControls13EqualizerView_cornerRadiusRatio;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A2263B2C;
}

void sub_1A2261424(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_1A2261D48();
  }

  free(v1);
}

uint64_t sub_1A226147C()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22614C0(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(result);
    if (*(v1 + v4))
    {
      return sub_1A2262268();
    }

    else
    {
      return sub_1A226268C();
    }
  }

  return result;
}

void (*sub_1A2261570(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2261604;
}

void sub_1A2261604(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v2[3];
    v8 = v2[4];
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x170))();
    if ((*(v7 + v8) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v2[3];
    v10 = v2[4];
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x170))();
    if (*(v9 + v10) != 1)
    {
LABEL_4:
      sub_1A226268C();
      goto LABEL_8;
    }
  }

  sub_1A2262268();
LABEL_8:

  free(v2);
}

uint64_t sub_1A2261708()
{
  v1 = OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A226174C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v4);
}

uint64_t (*sub_1A22617E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2261848;
}

uint64_t sub_1A2261848(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((*MEMORY[0x1E69E7D40] & **(a1 + 24)) + 0x170))(result);
  }

  return result;
}

void *sub_1A226191C(uint64_t a1, double a2, double a3)
{
  v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating] = 0;
  v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped] = 1;
  *&v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider] = 0;
  *&v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_barCount] = a1;
  *&v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_spacingRatio] = a2;
  *&v3[OBJC_IVAR____TtC13MediaControls13EqualizerView_cornerRadiusRatio] = a3;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for EqualizerView();
  v4 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_1A2261D48();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x170))(v5);

  return v4;
}

uint64_t sub_1A2261A28()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 288))(6, 1.2, 0.5);
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1A2261B14()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EqualizerView();
  v1 = objc_msgSendSuper2(&v3, sel_layoutSubviews);
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))(v1);
  if (result)
  {
    return sub_1A2261D48();
  }

  return result;
}

void sub_1A2261C18()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_hidesWhenStopped) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC13MediaControls13EqualizerView_stylingProvider) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A2261D48()
{
  v2 = v0;
  v33 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v3 = v33();
  v4 = OBJC_IVAR____TtC13MediaControls13EqualizerView_barViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    goto LABEL_43;
  }

  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v3 - result;
  if (__OFSUB__(v3, result))
  {
    goto LABEL_45;
  }

  while (2)
  {
    if (v7 >= 1)
    {
      do
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        [v2 addSubview_];
        swift_beginAccess();
        v9 = v8;
        MEMORY[0x1A58DA960]();
        if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A22E6768();
        }

        v3 = v2 + v4;
        sub_1A22E67A8();
        swift_endAccess();

        --v7;
      }

      while (v7);
      goto LABEL_9;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      v1 = *(v2 + v4);
      if (v1 >> 62)
      {
        goto LABEL_46;
      }

      v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v26 = __OFSUB__(0, v7);
    v27 = -v7;
    if (v26)
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v27 < 0)
    {
LABEL_48:
      __break(1u);
      return result;
    }

    while (1)
    {
      swift_beginAccess();
      v3 = *(v2 + v4);
      v1 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

LABEL_31:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v2 + v4) = v3;
      if (v1 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
      {
        v3 = sub_1A220C880(v3);
      }

      v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_42;
      }

      v30 = v29 - 1;
      v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v30;
      *(v2 + v4) = v3;
      swift_endAccess();
      [v31 removeFromSuperview];

      if (!--v27)
      {
        goto LABEL_9;
      }
    }

    if (sub_1A22E6DE8())
    {
      goto LABEL_31;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1A22E6DE8();
    v7 = v3 - result;
    if (!__OFSUB__(v3, result))
    {
      continue;
    }

    break;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  v32 = sub_1A22E6DE8();
LABEL_11:
  v10 = MEMORY[0x1E69E7D40];

  if (!v32)
  {
    goto LABEL_26;
  }

  v11 = 0;
  v12 = v1 & 0xC000000000000001;
  v13 = v1 & 0xFFFFFFFFFFFFFF8;
  v14 = &selRef__isReadyForAppearanceTransition;
  v15 = &selRef_routeType;
  while (2)
  {
    if (v12)
    {
      v17 = MEMORY[0x1A58DB0F0](v11, v1);
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_18;
    }

    if (v11 >= *(v13 + 16))
    {
      goto LABEL_39;
    }

    v17 = *(v1 + 8 * v11 + 32);
    v4 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
LABEL_18:
      v35 = v17;
      if (v11)
      {
        v3 = v2;
        if (__OFSUB__(v33(), 1))
        {
          goto LABEL_40;
        }
      }

      v34 = v4;
      v18 = (*((*v10 & *v2) + 0xD0))();
      [v2 v14[449]];
      if (v18)
      {
        CGRectGetHeight(*&v19);
      }

      else
      {
        v23 = v13;
        v24 = v1;
        v1 = v12;
        CGRectGetWidth(*&v19);
        v3 = v2;
        v4 = v33;
        v33();
        if (__OFSUB__(v33(), 1))
        {
          goto LABEL_41;
        }

        v10 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))();
        v1 = v24;
        v13 = v23;
        v14 = &selRef__isReadyForAppearanceTransition;
        v15 = &selRef_routeType;
      }

      v3 = v2;
      sub_1A2262DA0();
      v4 = v35;
      [v35 v15[328]];
      [v35 v14[449]];
      Width = CGRectGetWidth(v36);
      [v35 _setContinuousCornerRadius_];

      ++v11;
      if (v34 == v32)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:

  return (*((*v10 & *v2) + 0x190))(v25);
}