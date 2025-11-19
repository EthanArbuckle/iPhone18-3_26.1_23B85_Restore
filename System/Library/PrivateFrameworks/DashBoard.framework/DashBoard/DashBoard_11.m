unint64_t sub_24832B1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93B40);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_24822B8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

BOOL sub_24832B2B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = sub_248382400();
  MEMORY[0x28223BE20](v6);
  v15[2] = a3;
  v15[3] = a2;
  v7 = sub_2483239B4(sub_24832B464, v15, v6);

  if (v7 >> 62)
  {
LABEL_18:
    v8 = sub_248384360();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v8 != v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1CBA50](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = [a1 isEqual_];

    ++v9;
  }

  while (!v13);

  return v10;
}

uint64_t sub_24832B41C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24832B528()
{
  result = qword_27EE93BA0;
  if (!qword_27EE93BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93BA0);
  }

  return result;
}

uint64_t sub_24832B57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE908F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24832B5EC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24832B658()
{
  result = qword_27EE93BB0;
  if (!qword_27EE93BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93BB0);
  }

  return result;
}

id DBDashboardDimmingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DBDashboardDimmingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius] = 0;
  v10 = &v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = MEMORY[0x277D84F90];
  *&aBlock.a = MEMORY[0x277D84F90];
  sub_2483844C0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews] = aBlock.a;
  v36 = v11;
  sub_2483844C0();
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 0.0);
  [v12 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v13 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 1.57079633);
  [v13 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 3.14159265);
  [v14 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  CGAffineTransformMakeRotation(&aBlock, 4.71238898);
  [v15 setTransform_];
  sub_2483844A0();
  sub_2483844D0();
  sub_2483844E0();
  sub_2483844B0();
  *&v4[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews] = v36;
  v16 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&aBlock.tx = sub_24815A108;
  aBlock.ty = 0.0;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_24815A7A0;
  *&aBlock.d = &block_descriptor_25;
  v17 = _Block_copy(&aBlock);
  v18 = [v16 initWithDynamicProvider_];
  _Block_release(v17);

  v19 = &qword_27EE93000;
  *&v5[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_overlayColor] = v18;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for DBDashboardDimmingView();
  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *(v20 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingRectViews);
  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248384360())
  {
    v23 = v19[380];
    v24 = v20;

    if (i)
    {
      v25 = 0;
      v19 = (v21 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C1CBA50](v25, v21);
        }

        else
        {
          if (v25 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v26 = *(v21 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        [v26 setBackgroundColor_];
        [v24 addSubview_];

        ++v25;
        if (v28 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    v20 = *&v24[OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_dimmingCornerViews];
    v21 = v20 >> 62 ? sub_248384360() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v21)
    {
      break;
    }

    v29 = 0;
    v19 = (v20 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C1CBA50](v29, v20);
      }

      else
      {
        if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v30 = *(v20 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      [v24 addSubview_];

      ++v29;
      if (v32 == v21)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_23:

  return v24;
}

void sub_24832BE34()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  *v1 = 0u;
  v1[1] = 0u;
  sub_248384580();
  __break(1u);
}

void DBDashboardDimmingView.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_cornerRadius;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_248159ED4();
  sub_2481542AC();
}

void (*DBDashboardDimmingView.cornerRadius.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C098;
}

void sub_24832C098(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248159ED4();
    sub_2481542AC();
  }
}

void DBDashboardDimmingView.contentFrame.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC9DashBoard22DBDashboardDimmingView_contentFrame);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  sub_2481542AC();
}

void (*DBDashboardDimmingView.contentFrame.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C1F0;
}

void sub_24832C1F0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2481542AC();
  }
}

Swift::Void __swiftcall DBDashboardDimmingView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DBDashboardDimmingView();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, isa);
  sub_248159ED4();
  sub_2481542AC();
}

id DBDashboardDimmingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardDimmingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24832C300(NSObject *a1, uint8_t a2)
{
  switch(a2)
  {
    case 0u:
      goto LABEL_26;
    case 1u:

      result = MEMORY[0x282133480]();
      break;
    case 2u:

      result = sub_2483835F0();
      break;
    case 3u:

      result = MEMORY[0x282133418]();
      break;
    case 4u:

      result = MEMORY[0x2821333E8]();
      break;
    case 5u:

      result = MEMORY[0x2821334B0]();
      break;
    case 6u:

      result = sub_2483835A0();
      break;
    case 7u:

      result = MEMORY[0x282133478]();
      break;
    case 9u:

      result = MEMORY[0x282133498]();
      break;
    case 0xAu:

      result = MEMORY[0x282133438]();
      break;
    case 0xBu:

      result = MEMORY[0x282133408]();
      break;
    case 0xCu:

      result = MEMORY[0x282133490]();
      break;
    case 0xDu:

      result = MEMORY[0x2821334A8]();
      break;
    case 0xEu:

      result = MEMORY[0x282133430]();
      break;
    case 0xFu:

      result = MEMORY[0x282133458]();
      break;
    default:
      if (a1)
      {
        v4 = sub_248383DA0();
        if (os_log_type_enabled(a1, v4))
        {
          v5 = swift_slowAlloc();
          *v5 = 16777472;
          v5[4] = a2;
          _os_log_impl(&dword_248146000, a1, v4, "Notification (%hhu is not a valid color number. Returning default primary color", v5, 5u);
          MEMORY[0x24C1CD5F0](v5, -1, -1);
        }
      }

LABEL_26:

      result = MEMORY[0x2821334C8]();
      break;
  }

  return result;
}

void __swiftcall DBTouchPassthroughWindow.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DBTouchPassthroughWindow();
  v7 = [(UIView_optional *)&v11 hitTest:isa withEvent:x, y];
  if (v7)
  {
    sub_24814CB58();
    v8 = v7;
    v9 = v3;
    v10 = sub_248384030();

    if (v10)
    {
    }
  }
}

id DBTouchPassthroughWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBTouchPassthroughWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DBDashboardEffectCoordinatingButton.focusEffectView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*DBDashboardEffectCoordinatingButton.focusEffectView.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832C824;
}

void *DBDashboardEffectCoordinatingButton.dimmingEffectView.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24832C8D4(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a3;
  v8 = a3;
  v9 = a1;

  v10 = ([v9 state] >> 3) & 1;
  v11 = MEMORY[0x277D85000];
  LOBYTE(v7) = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))();
  (*((*v11 & *v9) + 0xD0))(v10, v7 & 1, [v9 state] & 1);
}

void sub_24832C9EC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  v7 = ([v2 state] >> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(v5) = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
  (*((*v8 & *v2) + 0xD0))(v7, v5 & 1, [v2 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.dimmingEffectView.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t DBDashboardEffectCoordinatingButton.focusEffectStyle.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBDashboardEffectCoordinatingButton.focusEffectStyle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = ([v1 state] >> 3) & 1;
  v5 = MEMORY[0x277D85000];
  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  return (*((*v5 & *v1) + 0xD0))(v4, v3 & 1, [v1 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.focusEffectStyle.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t DBDashboardEffectCoordinatingButton.isTapped.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DBDashboardEffectCoordinatingButton.isTapped.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = ([v1 state] >> 3) & 1;
  v5 = MEMORY[0x277D85000];
  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  return (*((*v5 & *v1) + 0xD0))(v4, v3 & 1, [v1 state] & 1);
}

uint64_t (*DBDashboardEffectCoordinatingButton.isTapped.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24832DFEC;
}

uint64_t sub_24832D0F0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = ([v5 state] >> 3) & 1;
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v5) + 0xB8))();
    return (*((*v7 & *v5) + 0xD0))(v6, v8 & 1, [v5 state] & 1);
  }

  return result;
}

id DBDashboardEffectCoordinatingButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDashboardEffectCoordinatingButton.init()()
{
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle] = 0;
  v0[OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  return objc_msgSendSuper2(&v2, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id DBDashboardEffectCoordinatingButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DBDashboardEffectCoordinatingButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_dimmingEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_focusEffectStyle) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard35DBDashboardEffectCoordinatingButton_isTapped) = 0;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(Swift::Bool isFocused, Swift::Bool isTapped, Swift::Bool isPressed)
{
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v3) + 0x70))();
  if (v8)
  {
    v9 = !isFocused;
    v10 = v8;
    [v8 setHidden_];
    [v10 setPressed_];
  }

  v11 = (*((*v7 & *v3) + 0x88))();
  if (v11)
  {
    v12 = v11;
    [v11 setHidden_];
  }
}

Swift::Void __swiftcall DBDashboardEffectCoordinatingButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v12, sel_didUpdateFocusInContext_withAnimationCoordinator_, in.super.isa, with.super.isa);
  v5 = [(objc_class *)in.super.isa nextFocusedItem];
  if (v5 && (v6 = v5, swift_unknownObjectRelease(), v6 == v2) || (v7 = [(objc_class *)in.super.isa previouslyFocusedItem]) != 0 && (v8 = v7, swift_unknownObjectRelease(), v8 == v2))
  {
    v9 = ([v2 state] >> 3) & 1;
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2) + 0xB8))();
    (*((*v10 & *v2) + 0xD0))(v9, v11 & 1, [v2 state] & 1);
  }
}

uint64_t sub_24832D894(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  sub_24814FB28(0, &qword_27EE92A70);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70);
  v8 = sub_248383C70();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v10, *a3, v8, a2);

  return (*((*MEMORY[0x277D85000] & *v4) + 0xC0))(a4);
}

void sub_24832D994(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6)
{
  sub_24814FB28(0, &qword_27EE92A70);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70);
  sub_248383C80();
  v10 = a4;
  v11 = a1;
  v12 = sub_248383C70();

  v13.receiver = v11;
  v13.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v13, *a5, v12, v10);

  (*((*MEMORY[0x277D85000] & *v11) + 0xC0))(a6);
}

uint64_t sub_24832DB00(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80);
  v6 = sub_248383C70();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v10, *a3, v6, a2);

  v7 = ([v3 state] >> 3) & 1;
  v8 = MEMORY[0x277D85000];
  LOBYTE(a2) = (*((*MEMORY[0x277D85000] & *v3) + 0xB8))();
  return (*((*v8 & *v3) + 0xD0))(v7, a2 & 1, [v3 state] & 1);
}

void sub_24832DC50(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_24814FB28(0, &unk_27EE92A80);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80);
  sub_248383C80();
  v8 = a4;
  v9 = a1;
  v10 = sub_248383C70();

  v13.receiver = v9;
  v13.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  objc_msgSendSuper2(&v13, *a5, v10, v8);

  v11 = ([v9 state] >> 3) & 1;
  v12 = MEMORY[0x277D85000];
  LOBYTE(v10) = (*((*MEMORY[0x277D85000] & *v9) + 0xB8))();
  (*((*v12 & *v9) + 0xD0))(v11, v10 & 1, [v9 state] & 1);
}

id DBDashboardEffectCoordinatingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBDashboardEffectCoordinatingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardEffectCoordinatingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24832DF38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24814FB28(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for CPUIFocusEffectStyleVariant()
{
  if (!qword_27EE93C08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE93C08);
    }
  }
}

void sub_24832DFF0()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27EE97B18 = v1;
}

uint64_t DBAppDockButton.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);

  return v1;
}

uint64_t DBAppDockButton.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  DBAppDockButton.setBundleIdentifier(_:animated:)(*&a1, 0);
}

Swift::Void __swiftcall DBAppDockButton.setBundleIdentifier(_:animated:)(Swift::String_optional _, Swift::Bool animated)
{
  LODWORD(v3) = animated;
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55[-v7];
  v9 = sub_248382A90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = &v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  v14 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8];
  if (v14)
  {
    if (object)
    {
      v15 = *v13 == countAndFlagsBits && v14 == object;
      if (v15 || (sub_248384680() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!object)
  {
    return;
  }

  v61 = v8;
  v16 = sub_24827C67C();
  (*(v10 + 16))(v12, v16, v9);

  v17 = v2;
  v18 = sub_248382A80();
  v19 = sub_248383DC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v60 = v3;
    v3 = v20;
    v57 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v63 = object;
    v64 = v59;
    *v3 = 136315394;
    v62 = countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
    v56 = v19;
    v21 = sub_2483841D0();
    v23 = sub_24814A378(v21, v22, &v64);
    v58 = v9;
    v24 = v18;
    v25 = countAndFlagsBits;
    v26 = v23;

    *(v3 + 4) = v26;
    countAndFlagsBits = v25;
    *(v3 + 12) = 2112;
    *(v3 + 14) = v17;
    v27 = v57;
    *v57 = v17;
    v28 = v17;
    _os_log_impl(&dword_248146000, v24, v56, "Updating active bundle identifier to %s in %@", v3, 0x16u);
    sub_24822D578(v27, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v27, -1, -1);
    v29 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    v30 = v3;
    LOBYTE(v3) = v60;
    MEMORY[0x24C1CD5F0](v30, -1, -1);

    (*(v10 + 8))(v12, v58);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  *v13 = countAndFlagsBits;
  v13[1] = object;

  v31 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon;
  v32 = *&v17[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  v33 = v61;
  if (v32)
  {
    [v32 removeObserver_];
  }

  if (object)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v36 = sub_248383930();
      v37 = [v35 iconForIdentifier_];
      swift_unknownObjectRelease();

      if (!v37)
      {
LABEL_20:
        Strong = 0;
        goto LABEL_21;
      }

      type metadata accessor for DBLeafIcon();
      Strong = swift_dynamicCastClass();
      if (!Strong)
      {

        goto LABEL_20;
      }
    }

LABEL_21:
    v38 = *&v17[v31];
    *&v17[v31] = Strong;

    v39 = *&v17[v31];
    if (v39)
    {
      [v39 addObserver_];
    }

    v40 = sub_248383930();
    [v17 setAccessibilityValue_];

    v41 = [objc_opt_self() sharedInstance];
    v42 = sub_248383930();
    v43 = [v41 applicationWithBundleIdentifier_];

    if (v43)
    {
      v44 = [v43 displayName];

      if (v44)
      {
        v45 = sub_248383960();
        v47 = v46;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_24839C7F0;
        *(v48 + 32) = v45;
        *(v48 + 40) = v47;
        v49 = sub_248383B00();

        [v17 setAccessibilityUserInputLabels_];
      }
    }

    v50 = sub_248383BE0();
    (*(*(v50 - 8) + 56))(v33, 1, 1, v50);
    sub_248383BB0();
    v51 = v17;
    v52 = sub_248383BA0();
    v53 = swift_allocObject();
    v54 = MEMORY[0x277D85700];
    *(v53 + 16) = v52;
    *(v53 + 24) = v54;
    *(v53 + 32) = v51;
    *(v53 + 40) = v3 & 1;
    sub_2482D8C74(0, 0, v33, &unk_2483A17A8, v53);
  }
}

uint64_t (*DBAppDockButton.bundleIdentifier.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  a1[1] = v3;

  return sub_24832E808;
}

uint64_t sub_24832E808(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    v4.value._countAndFlagsBits = v3;
    v4.value._object = v2;
    DBAppDockButton.setBundleIdentifier(_:animated:)(v4, 0);
  }

  else
  {
    v5.value._countAndFlagsBits = *a1;
    v5.value._object = v2;
    DBAppDockButton.setBundleIdentifier(_:animated:)(v5, 0);
  }
}

char *DBAppDockButton.init(iconProvider:iconImageInfo:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon] = 0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for DBIconLayerClient();
  *&v4[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerClient] = sub_24823E8E4();
  v11 = &v4[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo];
  *v11 = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  *v10 = 0;
  *(v10 + 1) = 0;

  v4[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = 0;
  type metadata accessor for DBIconLayerView();
  v12 = DBIconLayerView.__allocating_init()();
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView] = v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v13 setUserInteractionEnabled_];
  [v13 setAlpha_];
  [v13 setHidden_];
  [v13 &selRef_stackedPrimaryMaskView + 2];
  v14 = [objc_opt_self() blackColor];
  [v13 setBackgroundColor_];

  v15 = [v13 layer];
  v16 = *MEMORY[0x277CDA138];
  [v15 setCornerCurve_];

  v17 = [v13 layer];
  [v17 setCornerRadius_];

  v18 = [v13 layer];
  v19 = *MEMORY[0x277CDA5D8];
  v20 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v18 setCompositingFilter_];

  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] = v13;
  v21 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v21 setHidden_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v23 = [v22 layer];
  [v23 setCornerRadius_];

  v24 = [v22 layer];
  [v24 setCornerCurve_];

  v25 = [v22 layer];
  v26 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v25 setCompositingFilter_];

  if (qword_27EE97B10 != -1)
  {
    swift_once();
  }

  [v22 setBackgroundColor_];
  [v22 setHidden_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] = v22;
  v27 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v28 = [v27 layer];
  v29 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v28 setCompositingFilter_];

  v30 = [v27 layer];
  [v30 setCornerRadius_];

  if (qword_27EE97B10 != -1)
  {
    swift_once();
  }

  [v27 &selRef:qword_27EE97B18 presentationViewWithIdentifier:? activate:? backgroundColor:?];
  [v27 setHidden_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] = v27;
  v31 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:a4 + 3.0 strokeWidth:3.0];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView] = v31;
  v126.receiver = v5;
  v126.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v126, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v33 = [v32 layer];
  [v33 setAllowsGroupBlending_];

  [v32 setUserInteractionEnabled_];
  [v32 addSubview_];
  [v32 addSubview_];
  [v32 addSubview_];
  [v32 addSubview_];
  v34 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  [v32 addSubview_];
  [*&v32[v34] addSubview_];
  v123 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2483A1790;
  v36 = *&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView];
  v37 = [v36 widthAnchor];
  v38 = &v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo];
  v39 = [v37 constraintEqualToConstant_];

  *(v35 + 32) = v39;
  v40 = [v36 heightAnchor];
  v41 = [v40 &selRef:v38[1] filterWithName:? + 1];

  *(v35 + 40) = v41;
  v42 = [v36 centerXAnchor];
  v43 = [v32 centerXAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v35 + 48) = v44;
  v45 = [v36 centerYAnchor];
  v46 = [v32 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v35 + 56) = v47;
  v48 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView;
  v49 = [*&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] widthAnchor];
  v50 = [v36 widthAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v35 + 64) = v51;
  v52 = [*&v32[v48] heightAnchor];
  v53 = [v36 heightAnchor];
  v54 = [v52 constraintEqualToAnchor_];

  *(v35 + 72) = v54;
  v55 = [*&v32[v48] centerXAnchor];
  v56 = [v36 centerXAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  *(v35 + 80) = v57;
  v58 = [*&v32[v48] centerYAnchor];
  v59 = [v36 centerYAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v35 + 88) = v60;
  v61 = *&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView];
  v62 = [v61 widthAnchor];
  v63 = [v36 widthAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v35 + 96) = v64;
  v65 = [v61 heightAnchor];
  v66 = [v36 heightAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v35 + 104) = v67;
  v68 = [v61 centerXAnchor];
  v69 = [v36 centerXAnchor];
  v70 = [v68 constraintEqualToAnchor_];

  *(v35 + 112) = v70;
  v71 = [v61 centerYAnchor];
  v72 = [v36 centerYAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v35 + 120) = v73;
  v74 = *&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  v75 = [v74 &selRef_icon_imageWithInfo_ + 6];
  v76 = [v36 &selRef_icon_imageWithInfo_ + 6];
  v77 = [v75 constraintEqualToAnchor:v76 constant:6.0];

  *(v35 + 128) = v77;
  v78 = [v74 heightAnchor];
  v79 = [v36 heightAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:6.0];

  *(v35 + 136) = v80;
  v81 = [v74 centerXAnchor];
  v82 = [v36 centerXAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  *(v35 + 144) = v83;
  v84 = [v74 centerYAnchor];
  v85 = [v36 centerYAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v35 + 152) = v86;
  v87 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  v88 = [*&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] widthAnchor];
  v89 = [v88 constraintEqualToConstant_];

  *(v35 + 160) = v89;
  v90 = [*&v32[v87] heightAnchor];
  v91 = [v90 constraintEqualToConstant_];

  *(v35 + 168) = v91;
  v92 = [*&v32[v87] centerXAnchor];
  v93 = [v36 trailingAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:-1.0];

  *(v35 + 176) = v94;
  v95 = [*&v32[v87] centerYAnchor];
  v96 = [v36 topAnchor];
  v97 = [v95 constraintEqualToAnchor:v96 constant:1.0];

  *(v35 + 184) = v97;
  v98 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView;
  v99 = [*&v32[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] widthAnchor];
  v100 = [*&v32[v87] widthAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v35 + 192) = v101;
  v102 = [*&v32[v98] heightAnchor];
  v103 = [*&v32[v87] heightAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v35 + 200) = v104;
  v105 = [*&v32[v98] centerXAnchor];
  v106 = [*&v32[v87] centerXAnchor];
  v107 = [v105 constraintEqualToAnchor_];

  *(v35 + 208) = v107;
  v108 = [*&v32[v98] centerYAnchor];
  v109 = [*&v32[v87] centerYAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v35 + 216) = v110;
  sub_24814FB28(0, &qword_27EE8FE90);
  v111 = sub_248383B00();

  [v123 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_24839C7F0;
  *(v112 + 32) = sub_24814FB28(0, &unk_27EE91480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0);
  v113 = sub_248383B00();

  v114 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_248333FFC;
  aBlock[5] = v114;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2482C441C;
  aBlock[3] = &block_descriptor_26;
  v115 = _Block_copy(aBlock);

  v116 = [v32 registerForTraitChanges:v113 withHandler:v115];
  _Block_release(v115);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_24839C7F0;
  v118 = sub_248382C50();
  v119 = MEMORY[0x277D74BF0];
  *(v117 + 32) = v118;
  *(v117 + 40) = v119;
  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = ObjectType;
  sub_248383FB0();
  swift_unknownObjectRelease();

  sub_24832FAA0();

  swift_unknownObjectRelease();
  return v32;
}

uint64_t sub_24832FAA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
  v5 = *&v0[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView];
  v6 = [v0 traitCollection];
  v7 = sub_248333C18(v6);

  [v5 setImage_];
  v8 = *&v0[v4];
  v9 = [v0 traitCollection];
  v10 = [v9 sbh_iconImageAppearance];

  LODWORD(v9) = [v10 hasGlass];
  v11 = objc_opt_self();
  v12 = &selRef_systemWhiteColor;
  if (!v9)
  {
    v12 = &selRef_externalSystemRedColor;
  }

  v13 = [v11 *v12];
  [v8 setTintColor_];

  v14 = [*&v0[v4] layer];
  v15 = [v0 traitCollection];
  v16 = [v15 sbh_iconImageAppearance];

  LODWORD(v15) = [v16 hasGlass];
  if (v15)
  {
    [v14 setShadowRadius_];
    LODWORD(v17) = 1045220557;
    [v14 setShadowOpacity_];
    [v14 setShadowOffset_];
    [v14 setShadowPathIsBounds_];
  }

  else
  {
    [v14 setShadowOpacity_];
  }

  sub_248331234();
  v18 = sub_248383BE0();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_248383BB0();
  v19 = v0;
  v20 = sub_248383BA0();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  sub_2482D8C74(0, 0, v3, &unk_2483A1828, v21);
}

void sub_24832FE2C()
{
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon) = 0;
  sub_248384580();
  __break(1u);
}

uint64_t sub_24832FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  sub_248383BB0();
  *(v5 + 24) = sub_248383BA0();
  v7 = sub_248383B90();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_24832FFE8, v7, v6);
}

uint64_t sub_24832FFE8()
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24833008C;
  v3 = *(v0 + 56);

  return sub_2483301AC(v3, IsReduceMotionEnabled);
}

uint64_t sub_24833008C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24833443C, v3, v2);
}

uint64_t sub_2483301AC(char a1, char a2)
{
  *(v3 + 240) = v2;
  *(v3 + 361) = a2;
  *(v3 + 360) = a1;
  *(v3 + 248) = swift_getObjectType();
  v4 = sub_248382A90();
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  sub_248383BB0();
  *(v3 + 288) = sub_248383BA0();
  v6 = sub_248383B90();
  *(v3 + 296) = v6;
  *(v3 + 304) = v5;

  return MEMORY[0x2822009F8](sub_2483302C0, v6, v5);
}

uint64_t sub_2483302C0()
{
  v1 = v0[30];
  v2 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  v0[39] = v2;
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerClient];
    v4 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo;
    v0[40] = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo;
    v5 = &v1[v4];
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    v10 = v2;
    v11 = [v1 traitCollection];
    v0[41] = v11;
    v19 = (*(*v3 + 128) + **(*v3 + 128));
    v12 = swift_task_alloc();
    v0[42] = v12;
    *v12 = v0;
    v12[1] = sub_2483304BC;
    v13.n128_u64[0] = v6;
    v14.n128_u64[0] = v7;
    v15.n128_u64[0] = v8;
    v16.n128_u64[0] = v9;

    return v19(v10, v11, v13, v14, v15, v16);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2483304BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v5 = v3[41];
  if (v1)
  {
    v6 = v4[39];

    v7 = v4[37];
    v8 = v4[38];
    v9 = sub_248330FA4;
  }

  else
  {

    v7 = v4[37];
    v8 = v4[38];
    v9 = sub_248330604;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_248330604()
{
  v78 = v0;

  v1 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconProvider;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 312);
  if (!Strong)
  {

LABEL_7:
    v8 = 0;
    if (*(v0 + 360) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v4 = [Strong iconCanDisplayBadge_];

  swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_7;
  }

  v6 = [*(v0 + 312) badgeNumberOrString];
  v7 = *(v0 + 360);
  if (v6)
  {
    sub_248384230();
    swift_unknownObjectRelease();
    sub_24822D578(v0 + 160, &unk_27EE941B0);
    v8 = 1;
    if ((v7 & 1) == 0)
    {
LABEL_5:
      v9 = *(v0 + 344);
      v10 = *(v0 + 312);
      v11 = *(v0 + 240);
      v80.is_nil = *(v0 + 361);
      v80.value.super.isa = v9;
      DBIconLayerView.set(_:animated:)(v80, v5);
      sub_248331508(v8, 0);
      v12 = *&v11[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
      [v12 setHidden_];
      [v12 setPressed_];
      goto LABEL_18;
    }
  }

  else
  {
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
    sub_24822D578(v0 + 160, &unk_27EE941B0);
    v8 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_8:
  v13 = [*(v0 + 240) snapshotViewAfterScreenUpdates_];
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  v14 = *(v0 + 344);
  v15 = *(v0 + 312);
  v16 = *(v0 + 280);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v19 = *(v0 + 240);
  [v19 bounds];
  [v13 setBounds_];
  [v19 bounds];
  sub_248383F00();
  v76 = v13;
  [v13 setCenter_];
  sub_248331508(v8, 0);
  v20 = *&v19[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v20 setHidden_];
  [v20 setPressed_];
  v21 = *&v19[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView];
  v81.value.super.isa = v14;
  v81.is_nil = 0;
  DBIconLayerView.set(_:animated:)(v81, v22);
  v23 = sub_24827C40C();
  (*(v18 + 16))(v16, v23, v17);
  v24 = v15;
  v25 = sub_248382A80();
  v26 = sub_248383DC0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 312);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 67240450;
    *(v28 + 4) = 1;
    *(v28 + 8) = 2114;
    *(v28 + 10) = v27;
    *v29 = v27;
    v30 = v27;
    _os_log_impl(&dword_248146000, v25, v26, "Updating badge hidden state for image update to %{BOOL,public}d for %{public}@", v28, 0x12u);
    sub_24822D578(v29, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v29, -1, -1);
    MEMORY[0x24C1CD5F0](v28, -1, -1);
  }

  v31 = *(v0 + 320);
  v32 = *(v0 + 280);
  v34 = *(v0 + 256);
  v33 = *(v0 + 264);
  v36 = *(v0 + 240);
  v35 = *(v0 + 248);

  v37 = &v36[v31];
  (*(v33 + 8))(v32, v34);
  [*&v36[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] setHidden_];
  [v21 setHidden_];
  [v20 setHidden_];
  [*&v36[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] setHidden_];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  swift_unknownObjectWeakLoadStrong();
  v39 = *v37;
  v40 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  v43 = objc_allocWithZone(v35);
  v44 = v36;
  v45 = DBAppDockButton.init(iconProvider:iconImageInfo:)(v39, v40, v41, v42);
  v46 = *&v44[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier];
  v47 = *&v44[OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8];

  v48.value._countAndFlagsBits = v46;
  v48.value._object = v47;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v48, 0);

  v45[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = v44[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge];
  *(v0 + 224) = v45;
  if (swift_dynamicCast())
  {
    v49 = *(v0 + 312);
    v50 = *(v0 + 361);
    v51 = *(v0 + 240);
    v52 = *(v0 + 232);
    [v51 bounds];
    [v52 setBounds_];
    [v51 bounds];
    sub_248383F00();
    [v52 setCenter_];
    [v51 addSubview_];
    [v51 addSubview_];
    v53 = swift_allocObject();
    v53[2] = v51;
    v53[3] = v49;
    v53[4] = sub_24833424C;
    v53[5] = v38;
    v53[6] = v52;
    v9 = *(v0 + 344);
    v54 = *(v0 + 312);
    v55 = *(v0 + 240);
    if (v50 == 1)
    {
      v10 = v54;
      v56 = v55;

      [v52 setAlpha_];

      v74 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v76;
      *(v57 + 24) = v52;
      *(v0 + 96) = sub_2483342D4;
      *(v0 + 104) = v57;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_24814C01C;
      *(v0 + 88) = &block_descriptor_64;
      v58 = _Block_copy((v0 + 64));
      v59 = v52;
      v60 = v76;

      v61 = swift_allocObject();
      *(v61 + 16) = sub_248334254;
      *(v61 + 24) = v53;
      *(v0 + 144) = sub_248271D98;
      *(v0 + 152) = v61;
      *(v0 + 112) = MEMORY[0x277D85DD0];
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_24824BBE0;
      *(v0 + 136) = &block_descriptor_70;
      v62 = _Block_copy((v0 + 112));

      [v74 animateWithDuration:v58 animations:v62 completion:0.5];

      _Block_release(v62);
      _Block_release(v58);
    }

    else
    {
      CGAffineTransformMakeScale(&v77, 0.0, 0.0);
      tx = v77.tx;
      ty = v77.ty;
      v73 = *&v77.c;
      *v75 = *&v77.a;
      v10 = v54;
      v65 = v55;

      *(v0 + 16) = *v75;
      *(v0 + 32) = v73;
      *(v0 + 48) = tx;
      *(v0 + 56) = ty;
      [v52 setTransform_];

      v66 = swift_allocObject();
      *(v66 + 16) = v76;
      v67 = swift_allocObject();
      *(v67 + 16) = v76;
      v68 = v76;
      sub_248333E80(sub_24833441C, v66, sub_248334264, v67);

      v69 = swift_allocObject();
      *(v69 + 16) = v52;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_248334254;
      *(v70 + 24) = v53;
      v59 = v52;

      sub_248333E80(sub_248334274, v69, sub_24830E7FC, v70);
    }
  }

  else
  {
    v9 = *(v0 + 344);
    v10 = *(v0 + 312);
    sub_248332244(*(v0 + 240));
  }

LABEL_18:

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_248330FA4()
{
  v26 = v0;
  v1 = *(v0 + 352);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);

  v5 = sub_24827C480();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_248382A80();
  v8 = sub_248383DA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 352);
    v10 = *(v0 + 312);
    v11 = *(v0 + 264);
    v23 = *(v0 + 256);
    v24 = *(v0 + 272);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_248384720();
    v16 = sub_24814A378(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_248146000, v7, v8, "Error fetching icon layer: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
    MEMORY[0x24C1CD5F0](v12, -1, -1);

    (*(v11 + 8))(v24, v23);
  }

  else
  {
    v17 = *(v0 + 352);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 256);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

void sub_248331234()
{
  v1 = [v0 traitCollection];
  v5 = [v1 sbh_iconImageAppearance];

  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = v3 != 1 || [v5 appearanceType] != 2;
  [*&v0[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLegibilityView] setHidden_];
}

uint64_t sub_248331318()
{
  v0[2] = sub_248383BB0();
  v0[3] = sub_248383BA0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2483313CC;

  return sub_2483301AC(0, 1);
}

uint64_t sub_2483313CC()
{

  v1 = sub_248383B90();

  return MEMORY[0x2822009F8](sub_24833443C, v1, v0);
}

void sub_248331508(int a1, int a2)
{
  v94 = a2;
  v4 = a1 & 1;
  v5 = sub_248382A90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v93 = &v89[-v9];
  MEMORY[0x28223BE20](v10);
  v99 = &v89[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v89[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v89[-v16];
  if (v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] != v4)
  {
    v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = v4;
    v18 = sub_24827C40C();
    v19 = *(v6 + 16);
    v96 = v18;
    v97 = v19;
    v98 = v6 + 16;
    v19(v17);
    v20 = v2;
    v21 = sub_248382A80();
    v22 = sub_248383DC0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v5;
      v25 = v6;
      v26 = swift_slowAlloc();
      *v23 = 67240450;
      *(v23 + 4) = a1 & 1;
      *(v23 + 8) = 2114;
      *(v23 + 10) = v20;
      *v26 = v20;
      v27 = v20;
      _os_log_impl(&dword_248146000, v21, v22, "Setting badge visible: %{BOOL,public}d for app dock button: %{public}@", v23, 0x12u);
      sub_24822D578(v26, &qword_27EE8FE40);
      v28 = v26;
      v6 = v25;
      v5 = v24;
      MEMORY[0x24C1CD5F0](v28, -1, -1);
      MEMORY[0x24C1CD5F0](v23, -1, -1);
    }

    v29 = *(v6 + 8);
    v95 = v6 + 8;
    v91 = v29;
    v29(v17, v5);
    v97(v14, v96, v5);
    v30 = v20;
    v31 = sub_248382A80();
    v32 = sub_248383DC0();
    v33 = os_log_type_enabled(v31, v32);
    v34 = &selRef_isEnabled;
    v90 = a1 ^ 1;
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 67240706;
      *(v35 + 4) = (a1 ^ 1) & 1;
      *(v35 + 8) = 1026;
      *(v35 + 10) = [*(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView) isHidden];

      *(v35 + 14) = 2114;
      *(v35 + 16) = v30;
      *v36 = v30;
      v37 = v30;
      _os_log_impl(&dword_248146000, v31, v32, "Attempting to update badge view visibility to %{BOOL,public}d. Badge view is hidden status is currently %{BOOL,public}d for app dock button: %{public}@", v35, 0x18u);
      sub_24822D578(v36, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v36, -1, -1);
      v38 = v35;
      v34 = &selRef_isEnabled;
      MEMORY[0x24C1CD5F0](v38, -1, -1);
    }

    else
    {

      v31 = v30;
    }

    v39 = v91;
    v91(v14, v5);
    v40 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView;
    if ((([*(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView) v34[24]] ^ a1) & 1) == 0)
    {
      [*(&v30->isa + v40) setHidden_];
      v41 = *(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView);
      if (a1)
      {
        v42 = *(&v30->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView);
        v43 = v41;
        v44 = [v42 v34[24]];
      }

      else
      {
        v45 = v41;
        v44 = 1;
      }

      [v41 setHidden_];

      v97(v99, v96, v5);
      v46 = v30;
      v47 = sub_248382A80();
      v48 = sub_248383DC0();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 67240450;
        *(v49 + 4) = v90 & 1;
        *(v49 + 8) = 2114;
        *(v49 + 10) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&dword_248146000, v47, v48, "Setting badge hidden: %{BOOL,public}d for app dock button: %{public}@", v49, 0x12u);
        sub_24822D578(v50, &qword_27EE8FE40);
        MEMORY[0x24C1CD5F0](v50, -1, -1);
        MEMORY[0x24C1CD5F0](v49, -1, -1);
      }

      v39(v99, v5);
      if (v94)
      {
        v52 = *(&v30->isa + v40);
        if (a1)
        {
          CGAffineTransformMakeScale(&aBlock, 0.01, 0.01);
          [v52 setTransform_];
          v53 = objc_opt_self();
          v54 = swift_allocObject();
          *(v54 + 16) = v46;
          *&aBlock.tx = sub_248334200;
          *&aBlock.ty = v54;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24814C01C;
          *&aBlock.d = &block_descriptor_38_0;
          v55 = _Block_copy(&aBlock);
          v56 = v46;

          [v53 animateWithDuration:v55 animations:0.3];
          _Block_release(v55);
          v57 = v92;
          v97(v92, v96, v5);
          v58 = v56;
          v59 = sub_248382A80();
          v60 = sub_248383DC0();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138543362;
            *(v61 + 4) = v58;
            *v62 = v58;
            v63 = v58;
            _os_log_impl(&dword_248146000, v59, v60, "Badge view is now visibible for: %{public}@", v61, 0xCu);
            sub_24822D578(v62, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v62, -1, -1);
            MEMORY[0x24C1CD5F0](v61, -1, -1);
          }

          v39(v57, v5);
        }

        else
        {
          v64 = [*(&v30->isa + v40) image];
          v65 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

          v66 = [v46 traitCollection];
          v67 = [v66 sbh_iconImageAppearance];

          LODWORD(v66) = [v67 hasGlass];
          v68 = objc_opt_self();
          v69 = &selRef_systemWhiteColor;
          if (!v66)
          {
            v69 = &selRef_externalSystemRedColor;
          }

          v70 = [v68 *v69];
          [v65 setTintColor_];

          v71 = *(&v30->isa + v40);
          v72 = v65;
          [v71 frame];
          [v72 setFrame_];

          [v46 addSubview:v72];
          v73 = v93;
          v97(v93, v96, v5);
          v74 = v46;
          v75 = sub_248382A80();
          v76 = sub_248383DC0();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            *v77 = 138543362;
            *(v77 + 4) = v74;
            *v78 = v74;
            v79 = v74;
            _os_log_impl(&dword_248146000, v75, v76, "Adding badge view for app dock button animation in: %{public}@", v77, 0xCu);
            sub_24822D578(v78, &qword_27EE8FE40);
            MEMORY[0x24C1CD5F0](v78, -1, -1);
            MEMORY[0x24C1CD5F0](v77, -1, -1);
          }

          v39(v73, v5);
          v80 = objc_opt_self();
          v81 = swift_allocObject();
          *(v81 + 16) = v72;
          *&aBlock.tx = sub_2483341EC;
          *&aBlock.ty = v81;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24814C01C;
          *&aBlock.d = &block_descriptor_26_0;
          v82 = _Block_copy(&aBlock);
          v83 = v72;

          v84 = swift_allocObject();
          *(v84 + 16) = v83;
          *(v84 + 24) = v74;
          *&aBlock.tx = sub_2483341F8;
          *&aBlock.ty = v84;
          *&aBlock.a = MEMORY[0x277D85DD0];
          *&aBlock.b = 1107296256;
          *&aBlock.c = sub_24824BBE0;
          *&aBlock.d = &block_descriptor_32;
          v85 = _Block_copy(&aBlock);
          v86 = v74;
          v87 = v83;

          [v80 animateWithDuration:v82 animations:v85 completion:0.3];
          _Block_release(v85);
          _Block_release(v82);
        }

        v88 = *(&v46->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView);
        [v88 setHidden_];
        [v88 setPressed_];
      }
    }
  }
}

uint64_t sub_24833207C(void *a1, void *a2)
{
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 removeFromSuperview];
  v9 = sub_24827C40C();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a2;
  v11 = sub_248382A80();
  v12 = sub_248383DC0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_248146000, v11, v12, "Removing badge view for app dock button animation in: %{public}@", v13, 0xCu);
    sub_24822D578(v14, &qword_27EE8FE40);
    MEMORY[0x24C1CD5F0](v14, -1, -1);
    MEMORY[0x24C1CD5F0](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_248332244(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge;
  [*&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView] setHidden_];
  v3 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView];
  if (a1[v2])
  {
    v4 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView];
    v5 = v3;
    v6 = [v4 isHidden];
  }

  else
  {
    v7 = v3;
    v6 = 1;
  }

  [v3 setHidden_];

  [*&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconLayerView] setHidden_];
  v8 = *&a1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v8 setHidden_];
  [v8 setPressed_];
  sub_248331234();
}

uint64_t DBAppDockButton.copy()@<X0>(char **a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo);
  v6 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 8);
  v7 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 16);
  v8 = *(v1 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconImageInfo + 24);
  v9 = objc_allocWithZone(ObjectType);
  v10 = DBAppDockButton.init(iconProvider:iconImageInfo:)(v5, v6, v7, v8);
  v11 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier);
  v12 = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton__bundleIdentifier + 8);

  v13.value._countAndFlagsBits = v11;
  v13.value._object = v12;
  DBAppDockButton.setBundleIdentifier(_:animated:)(v13, 0);

  v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge] = *(v2 + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge);
  a1[3] = ObjectType;
  *a1 = v10;
  return result;
}

id sub_248332444(void *a1, void *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_248382A90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24827C40C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a1;
  v16 = a2;
  v17 = sub_248382A80();
  v18 = sub_248383DC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v29 = a3;
    v22 = a5;
    v23 = v21;
    *v20 = 67240450;
    *(v20 + 4) = (*(&v15->isa + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_showBadge) & 1) == 0;

    *(v20 + 8) = 2114;
    *(v20 + 10) = v16;
    *v23 = v16;
    v24 = v16;
    _os_log_impl(&dword_248146000, v17, v18, "Updating badge hidden state for image update completion to %{BOOL,public}d for %{public}@", v20, 0x12u);
    sub_24822D578(v23, &qword_27EE8FE40);
    v25 = v23;
    a5 = v22;
    a3 = v29;
    MEMORY[0x24C1CD5F0](v25, -1, -1);
    MEMORY[0x24C1CD5F0](v20, -1, -1);
  }

  else
  {

    v17 = v15;
  }

  v26 = (*(v11 + 8))(v13, v10);
  a3(v26);
  return [a5 removeFromSuperview];
}

Swift::Void __swiftcall DBAppDockButton.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v3 setHidden_];
  v4 = [v2 isHighlighted];

  [v3 setPressed_];
}

id DBAppDockButton.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70);
  v5 = sub_248383C70();
  v7.receiver = v2;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_touchesBegan_withEvent_, v5, a2);

  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  return [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
}

id sub_248332900(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70);
  v7 = sub_248383C70();
  v9.receiver = v3;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, *a3, v7, a2);

  [*&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  return [*&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
}

void sub_2483329FC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &qword_27EE92A70);
  sub_24832DF38(&qword_27EE92A78, &qword_27EE92A70);
  sub_248383C80();
  v9 = a4;
  v10 = a1;
  v11 = sub_248383C70();

  v13.receiver = v10;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, v11, v9);

  [*&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  v12 = *&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView];
  [v12 setHidden_];
}

id DBAppDockButton.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80);
  v5 = sub_248383C70();
  v8.receiver = v2;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_pressesBegan_withEvent_, v5, a2);

  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_iconDimmingView] setHidden_];
  [*&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeDimmingView] setHidden_];
  v6 = *&v2[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v6 setHidden_];
  return [v6 setPressed_];
}

uint64_t sub_248332CA0(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t a6, unint64_t *a7, void (*a8)(uint64_t, void *))
{
  sub_24814FB28(0, a5);
  sub_24832DF38(a7, a5);
  v13 = sub_248383C80();
  v14 = a4;
  v15 = a1;
  a8(v13, a4);
}

id sub_248332D88(uint64_t a1, uint64_t a2, SEL *a3)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80);
  v7 = sub_248383C70();
  v10.receiver = v3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a3, v7, a2);

  v8 = *&v3[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView];
  [v8 setHidden_];
  return [v8 setPressed_];
}

void sub_248332EA4(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  sub_24814FB28(0, &unk_27EE92A80);
  sub_24832DF38(&qword_27EE8FBB0, &unk_27EE92A80);
  sub_248383C80();
  v9 = a4;
  v10 = a1;
  v11 = sub_248383C70();

  v13.receiver = v10;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, *a5, v11, v9);

  v12 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView;
  [*&v10[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_focusEffectView] setHidden_];
  [*&v10[v12] setPressed_];
}

id DBAppDockButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBAppDockButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBAppDockButton.iconImageDidUpdate(_:)(SBIcon *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_248383BE0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_248383BB0();
  v6 = v1;
  v7 = sub_248383BA0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2482D8C74(0, 0, v4, &unk_2483A17B8, v8);
}

uint64_t sub_248333340()
{
  v0[2] = sub_248383BB0();
  v0[3] = sub_248383BA0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2483333F4;

  return sub_2483301AC(1, 1);
}

uint64_t sub_2483333F4()
{

  v1 = sub_248383B90();

  return MEMORY[0x2822009F8](sub_248333530, v1, v0);
}

uint64_t sub_248333530()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall DBAppDockButton.iconAccessoriesDidUpdate(_:)(SBIcon *a1)
{
  v2 = v1;
  v4 = sub_248382A90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  v11 = OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon;
  v12 = *&v1[OBJC_IVAR____TtC9DashBoard15DBAppDockButton_icon];
  if (v12 && (sub_24814FB28(0, &unk_27EE93D00), v13 = a1, v14 = v12, v15 = sub_248384030(), v14, v13, (v15 & 1) != 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = [Strong iconCanDisplayBadge_];
      swift_unknownObjectRelease();
      if (v17)
      {
        v18 = [(SBIcon *)v13 badgeNumberOrString];
        v17 = v18 != 0;
        if (v18)
        {
          sub_248384230();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(v38, 0, sizeof(v38));
        }

        sub_24822D578(v38, &unk_27EE941B0);
      }
    }

    else
    {
      v17 = 0;
    }

    v29 = sub_24827C40C();
    (*(v5 + 16))(v10, v29, v4);
    v30 = v13;
    v31 = v2;
    v32 = sub_248382A80();
    v33 = sub_248383DC0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543874;
      *(v34 + 4) = v30;
      *(v34 + 12) = 1026;
      *(v34 + 14) = v17;
      *(v34 + 18) = 2114;
      *(v34 + 20) = v31;
      *v35 = v30;
      v35[1] = v31;
      v36 = v30;
      v37 = v31;
      _os_log_impl(&dword_248146000, v32, v33, "Icon accessories did update for icon: %{public}@, should show badge: %{BOOL,public}d, app dock button: %{public}@", v34, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v35, -1, -1);
      MEMORY[0x24C1CD5F0](v34, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    sub_248331508(v17, 1);
  }

  else
  {
    v19 = sub_24827C40C();
    (*(v5 + 16))(v7, v19, v4);
    v20 = a1;
    v21 = v2;
    v22 = sub_248382A80();
    v23 = sub_248383DC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543618;
      *(v24 + 4) = v20;
      *(v24 + 12) = 2114;
      v26 = *&v2[v11];
      *(v24 + 14) = v26;
      *v25 = v20;
      v25[1] = v26;
      v27 = v20;
      v28 = v26;
      _os_log_impl(&dword_248146000, v22, v23, "Icon accessories update for icon: %{public}@, did not match self icon: %{public}@", v24, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FE40);
      swift_arrayDestroy();
      MEMORY[0x24C1CD5F0](v25, -1, -1);
      MEMORY[0x24C1CD5F0](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_248333B7C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24825ED28;

  return sub_24832FF4C(v4, v5, v6, v2, v3);
}

id sub_248333C18(void *a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE93D10);
  result = sub_24833C1D0(0xD00000000000001FLL, 0x80000002483B3010, a1);
  if (!result)
  {
    v15 = 0;
    v7 = sub_24827C40C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_248382A80();
    v10 = sub_248383DA0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_24814A378(0xD00000000000002CLL, 0x80000002483B3030, &v16);
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v14 = v8;
      _os_log_impl(&dword_248146000, v9, v10, "Unable to find unread badge image in app dock button %s with trait collection %@", v11, 0x16u);
      sub_24822D578(v12, &qword_27EE8FE40);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1CD5F0](v13, -1, -1);
      MEMORY[0x24C1CD5F0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v15;
  }

  return result;
}

void sub_248333E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_opt_self();
  v15 = a1;
  v16 = a2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_24814C01C;
  v14 = &block_descriptor_73;
  v9 = _Block_copy(&v11);

  v15 = a3;
  v16 = a4;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2482614B8;
  v14 = &block_descriptor_76;
  v10 = _Block_copy(&v11);

  [v8 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];
  _Block_release(v10);
  _Block_release(v9);
}

void sub_248333FFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24832FAA0();
  }
}

void sub_24833404C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24832FAA0();
  }
}

uint64_t sub_2483340A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24825ED28;

  return sub_248333340();
}

uint64_t sub_248334158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24823DDD0;

  return sub_248333340();
}

id sub_248334200()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9DashBoard15DBAppDockButton_badgeView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

id sub_24833427C(CGFloat a1)
{
  v2 = *(v1 + 16);
  CGAffineTransformMakeScale(&v4, a1, a1);
  return [v2 setTransform_];
}

id sub_2483342D4()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t objectdestroyTm_4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24833436C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24825ED28;

  return sub_248331318();
}

void DBDefaultSceneWorkspaceManager.defaultWorkspaceIdentifier(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_248335180(a1);
    if (v6)
    {
      *(*(v4 + 56) + 8 * v5);
LABEL_14:

      return;
    }

    v26 = a1;

    v27 = v3;
    v4 = *(v1 + v3);
  }

  else
  {
    v26 = a1;
    v27 = v3;
  }

  v28 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__defaultWorkspaceIdentifiers);
  v8 = *(v7 + 16);

  if (!v8)
  {
LABEL_11:
    sub_248383DA0();
    v14 = *sub_24814FB80();
    sub_248382A40();

    v12 = 0;
    v15 = v26;
LABEL_13:
    swift_beginAccess();
    v24 = v12;
    sub_248334744(v12, v15);
    swift_endAccess();
    goto LABEL_14;
  }

  v10 = 0;
  while (v10 < *(v7 + 16))
  {
    v29 = *(v7 + 32 + 8 * v10);
    MEMORY[0x28223BE20](v9);
    v25[2] = &v29;
    v12 = v11;
    sub_2483357B8(sub_248335994, v25, v4);
    if ((v13 & 1) == 0)
    {
      v16 = v12;
      sub_248383DC0();
      v17 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_24839CCA0;
      v19 = sub_248383960();
      v21 = v20;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_2482970D8();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *(v18 + 96) = sub_2483359B4();
      *(v18 + 104) = sub_248335B4C(&qword_27EE93D30, sub_2483359B4);
      v15 = v26;
      *(v18 + 72) = v26;
      v22 = v17;
      v23 = v15;
      sub_248382A40();

      goto LABEL_13;
    }

    if (v8 == ++v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_248334744(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_24833542C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_248335180(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_248335658();
        v10 = v13;
      }

      sub_2482B7068(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t DBDefaultSceneWorkspaceManager.relinquishWorkspaceIdentifier(for:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_248335180(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      sub_248383DC0();
      v8 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_24839CCA0;
      v10 = sub_248383960();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2482970D8();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      *(v9 + 96) = sub_2483359B4();
      *(v9 + 104) = sub_248335B4C(&qword_27EE93D30, sub_2483359B4);
      *(v9 + 72) = a1;
      v13 = v8;
      v14 = a1;
      sub_248382A40();
    }
  }

  swift_beginAccess();
  sub_248334744(0, a1);
  return swift_endAccess();
}

uint64_t variable initialization expression of DBDefaultSceneWorkspaceManager._defaultWorkspaceIdentifiers()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D38);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24839EA90;
  *(v0 + 32) = @"com.apple.DashBoard.scene-workspace.default0";
  *(v0 + 40) = @"com.apple.DashBoard.scene-workspace.default1";
  *(v0 + 48) = @"com.apple.DashBoard.scene-workspace.default2";
  *(v0 + 56) = @"com.apple.DashBoard.scene-workspace.default3";
  *(v0 + 64) = @"com.apple.DashBoard.scene-workspace.default4";
  v1 = @"com.apple.DashBoard.scene-workspace.default0";
  v2 = @"com.apple.DashBoard.scene-workspace.default1";
  v3 = @"com.apple.DashBoard.scene-workspace.default2";
  v4 = @"com.apple.DashBoard.scene-workspace.default3";
  v5 = @"com.apple.DashBoard.scene-workspace.default4";
  return v0;
}

id DBDefaultSceneWorkspaceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDefaultSceneWorkspaceManager.init()()
{
  v1 = OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__defaultWorkspaceIdentifiers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D38);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24839EA90;
  *(v2 + 32) = @"com.apple.DashBoard.scene-workspace.default0";
  *(v2 + 40) = @"com.apple.DashBoard.scene-workspace.default1";
  *(v2 + 48) = @"com.apple.DashBoard.scene-workspace.default2";
  *(v2 + 56) = @"com.apple.DashBoard.scene-workspace.default3";
  *(v2 + 64) = @"com.apple.DashBoard.scene-workspace.default4";
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC9DashBoard30DBDefaultSceneWorkspaceManager__displayToWorkspaceMap] = MEMORY[0x277D84F98];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DBDefaultSceneWorkspaceManager();
  v3 = @"com.apple.DashBoard.scene-workspace.default0";
  v4 = @"com.apple.DashBoard.scene-workspace.default1";
  v5 = @"com.apple.DashBoard.scene-workspace.default2";
  v6 = @"com.apple.DashBoard.scene-workspace.default3";
  v7 = @"com.apple.DashBoard.scene-workspace.default4";
  return objc_msgSendSuper2(&v9, sel_init);
}

id DBDefaultSceneWorkspaceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDefaultSceneWorkspaceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248334D88(uint64_t a1, id *a2)
{
  result = sub_248383940();
  *a2 = 0;
  return result;
}

uint64_t sub_248334E00(uint64_t a1, id *a2)
{
  v3 = sub_248383950();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_248334E80@<X0>(uint64_t *a1@<X8>)
{
  sub_248383960();
  v2 = sub_248383930();

  *a1 = v2;
  return result;
}

uint64_t sub_248334EC4()
{
  v0 = sub_248383960();
  v2 = v1;
  if (v0 == sub_248383960() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

uint64_t sub_248334F4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_248383930();

  *a1 = v2;
  return result;
}

uint64_t sub_248334F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248383960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_248334FC0()
{
  sub_248335B4C(&qword_27EE93D60, type metadata accessor for DBSceneWorkspaceIdentifier);
  sub_248335B4C(&qword_27EE93D68, type metadata accessor for DBSceneWorkspaceIdentifier);

  return sub_248384600();
}

uint64_t sub_24833507C()
{
  v0 = sub_248383960();
  v1 = MEMORY[0x24C1CB050](v0);

  return v1;
}

uint64_t sub_2483350B8()
{
  sub_248383960();
  sub_2483839E0();
}

uint64_t sub_24833510C()
{
  sub_248383960();
  sub_248384780();
  sub_2483839E0();
  v0 = sub_2483847B0();

  return v0;
}

unint64_t sub_248335180(uint64_t a1)
{
  v2 = sub_248384020();

  return sub_248335594(a1, v2);
}

uint64_t sub_2483351C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D70);
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v22 = v20;
        v23 = v21;
      }

      result = sub_248384020();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

id sub_24833542C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_248335180(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2483351C4(v13, a3 & 1);
      v8 = sub_248335180(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_2483359B4();
        v8 = sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_248335658();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

unint64_t sub_248335594(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2483359B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_248384030();

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

id sub_248335658()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D70);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        result = v19;
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

void sub_2483357B8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_248335904()
{
  v0 = sub_248383960();
  v2 = v1;
  if (v0 == sub_248383960() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

unint64_t sub_2483359B4()
{
  result = qword_27EE93D28;
  if (!qword_27EE93D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE93D28);
  }

  return result;
}

void type metadata accessor for DBSceneWorkspaceIdentifier()
{
  if (!qword_27EE93D40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE93D40);
    }
  }
}

uint64_t sub_248335B4C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL DBDashboardGlassView.isTranslucent.getter()
{
  sub_248383F60();
  v0 = v3 != 0;
  sub_248335C28(v2);
  return v0;
}

uint64_t sub_248335C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DBDashboardGlassView.isTranslucent.setter(char a1)
{
  v3 = sub_248382CC0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = sub_248382CE0();
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = v12;
    sub_248382C90();
    v19[1] = v1;
    sub_248382CA0();
    v16 = *(v4 + 8);
    v16(v6, v3);
    sub_248382C80();
    v16(v9, v3);
    sub_248382CF0();
    *(&v21 + 1) = v11;
    v22 = MEMORY[0x277D74E20];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v15 + 32))(boxed_opaque_existential_1, v14, v11);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  return sub_248383F70();
}

void (*DBDashboardGlassView.isTranslucent.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 40) = v1;
  sub_248383F60();
  v5 = *(v4 + 24) != 0;
  sub_248335C28(v4);
  *(v4 + 48) = v5;
  return sub_248335FA0;
}

void sub_248335FA0(uint64_t a1)
{
  v1 = *a1;
  DBDashboardGlassView.isTranslucent.setter(*(*a1 + 48));

  free(v1);
}

id DBDashboardGlassView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DBDashboardGlassView.init()()
{
  v0 = *(swift_getObjectType() + 104);
  v1 = v0(*MEMORY[0x277CDA138], 1, 0.0);
  swift_deallocPartialClassInstance();
  return v1;
}

void *DBDashboardGlassView.__allocating_init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v12.receiver = objc_allocWithZone(v4);
  v12.super_class = v4;
  v8 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v10 = [v8 layer];
  [v10 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v8) + 0x58))(a2);
  return v8;
}

void *DBDashboardGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(void *a1, uint64_t a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DBDashboardGlassView();
  v7 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = [v7 layer];
  [v8 setCornerRadius_];

  v9 = [v7 layer];
  [v9 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v7) + 0x58))(a2);
  return v7;
}

id DBDashboardGlassView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBDashboardGlassView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardGlassView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *_s9DashBoard20DBDashboardGlassViewC27createWithDockConfigurationACyFZ_0()
{
  v0 = *MEMORY[0x277CDA138];
  v1 = type metadata accessor for DBDashboardGlassView();
  v6.receiver = objc_allocWithZone(v1);
  v6.super_class = v1;
  v2 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [v2 layer];
  [v4 setCornerCurve_];

  (*((*MEMORY[0x277D85000] & *v2) + 0x58))(1);
  return v2;
}

void *DBGlassInCallWidgetAvatarView.currentCall.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DBGlassInCallWidgetAvatarView.currentCall.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_248337CC8();
}

void (*DBGlassInCallWidgetAvatarView.currentCall.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_248336870;
}

void sub_248336870(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_248337CC8();
  }
}

id DBGlassInCallWidgetAvatarView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *DBGlassInCallWidgetAvatarView.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v135 = &v122 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93D90);
  MEMORY[0x28223BE20](v4 - 8);
  v130 = &v122 - v5;
  v6 = sub_248382C30();
  v133 = *(v6 - 8);
  v134 = v6;
  MEMORY[0x28223BE20](v6);
  v131 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v122 - v9;
  v132 = sub_248384100();
  v129 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_currentCall] = 0;
  *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage] = 0;
  v11 = &v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 contactStore];

  v14 = [objc_opt_self() settingsWithContactStore:v13 threeDTouchEnabled:0];
  v126 = v14;

  v15 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) initWithSettings_];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController] = v15;
  type metadata accessor for DBIconLayerView();
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView] = DBIconLayerView.__allocating_init()();
  v16 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingMask] = v17;
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setBackgroundColor_];

  v21 = type metadata accessor for DBGlassInCallWidgetAvatarView();
  v137.receiver = v1;
  v137.super_class = v21;
  v22 = objc_msgSendSuper2(&v137, sel_init);
  v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v24 = v22;
  v25 = [v23 init];
  v26 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithImage_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = v24;
  [v27 addSubview_];
  v28 = MEMORY[0x277D85000];
  v29 = *((*MEMORY[0x277D85000] & *v27) + 0x78);
  v125 = v26;
  v29(v26);
  v30 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController;
  v31 = [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController) view];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];

  v32 = [*(v27 + v30) view];
  [v32 setUserInteractionEnabled_];

  v33 = [*(v27 + v30) view];
  [v27 addSubview_];

  v34 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = [v34 layer];
  v36 = sub_248340564();
  [v35 setCornerRadius_];

  [v27 addSubview_];
  v37 = *((*v28 & *v27) + 0x90);
  v136 = v34;
  v37(v34);

  v38 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView;
  v122 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView;
  [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appIconView) setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v39 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView;
  [*(v27 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v27 + v39) setHidden_];
  v40 = *(v27 + v39);
  v123 = v39;
  [v40 setMaskView_];
  [v27 addSubview_];
  *&v124 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2483A1A80;
  v42 = [v27 widthAnchor];

  v43 = [v42 constraintEqualToConstant_];
  *(v41 + 32) = v43;
  v44 = [v27 heightAnchor];

  v45 = [v27 &selRef_icon_imageWithInfo_ + 6];
  v46 = [v44 constraintEqualToAnchor_];

  *(v41 + 40) = v46;
  v47 = [*(v27 + v30) view];
  v48 = [v47 leadingAnchor];

  v49 = [v27 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:4.0];

  *(v41 + 48) = v50;
  v51 = [*(v27 + v30) view];
  v52 = [v51 trailingAnchor];

  v53 = [v27 &selRef_systemImageNamed_withConfiguration_ + 4];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-5.0];

  *(v41 + 56) = v54;
  v55 = [*(v27 + v30) view];
  v56 = [v55 topAnchor];

  v57 = [v27 topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:4.0];

  *(v41 + 64) = v58;
  v59 = [*(v27 + v30) view];
  v60 = [v59 bottomAnchor];

  v61 = [v27 &selRef_assetVersion + 5];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-5.0];

  *(v41 + 72) = v62;
  v63 = v136;
  v64 = [v136 widthAnchor];
  v65 = [*(v27 + v30) view];
  v66 = [v65 widthAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v41 + 80) = v67;
  v68 = [v63 heightAnchor];
  v69 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v70 = [v69 heightAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v41 + 88) = v71;
  v72 = [v63 centerXAnchor];
  v73 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v74 = [v73 &selRef_fetchLastModifiedServiceOfType_completionHandler_ + 2];

  v75 = [v72 constraintEqualToAnchor_];
  *(v41 + 96) = v75;
  v76 = [v63 centerYAnchor];

  v77 = [*(v27 + v30) &selRef_themeAssetLibrary];
  v78 = [v77 &selRef_fillColor];

  v79 = [v76 constraintEqualToAnchor_];
  *(v41 + 104) = v79;
  v80 = v122;
  v81 = [*(v27 + v122) trailingAnchor];
  v82 = [v27 trailingAnchor];

  v83 = [v81 constraintEqualToAnchor:v82 constant:-4.0];
  *(v41 + 112) = v83;
  v84 = [*(v27 + v80) bottomAnchor];
  v85 = [v27 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:-4.0];

  *(v41 + 120) = v86;
  v87 = [*(v27 + v80) widthAnchor];
  v88 = [v87 constraintEqualToConstant_];

  *(v41 + 128) = v88;
  v89 = [*(v27 + v80) heightAnchor];
  v90 = [*(v27 + v80) widthAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(v41 + 136) = v91;
  v92 = v123;
  v93 = [*(v27 + v123) widthAnchor];
  v94 = [*(v27 + v80) widthAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(v41 + 144) = v95;
  v96 = [*(v27 + v92) heightAnchor];
  v97 = [*(v27 + v80) heightAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v41 + 152) = v98;
  v99 = [*(v27 + v92) centerXAnchor];
  v100 = [*(v27 + v80) centerXAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v41 + 160) = v101;
  v102 = [*(v27 + v92) centerYAnchor];
  v103 = [*(v27 + v80) centerYAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v41 + 168) = v104;
  sub_24814FB28(0, &qword_27EE8FE90);
  v105 = sub_248383B00();

  [v124 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v106 = swift_allocObject();
  v124 = xmmword_24839C7F0;
  *(v106 + 16) = xmmword_24839C7F0;
  v107 = sub_248382C40();
  v108 = MEMORY[0x277D74BE0];
  *(v106 + 32) = v107;
  *(v106 + 40) = v108;
  MEMORY[0x24C1CB580](v106, sel_userInterfaceIdiomDidChange);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0);
  v109 = swift_allocObject();
  *(v109 + 16) = v124;
  *(v109 + 32) = sub_24814FB28(0, &unk_27EE91480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0);
  v110 = sub_248383B00();

  v111 = [v27 registerForTraitChanges:v110 withAction:sel_homeScreenStyleDidChange];
  swift_unknownObjectRelease();

  sub_24833852C();
  v112 = v127;
  sub_2483840D0();
  v113 = v128;
  sub_248382C20();
  v114 = v130;
  sub_248382C70();
  v115 = sub_248382C60();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  sub_248382C10();
  v117 = v133;
  v116 = v134;
  (*(v133 + 16))(v131, v113, v134);
  sub_248384060();
  v118 = v129;
  v119 = v135;
  v120 = v132;
  (*(v129 + 16))(v135, v112, v132);
  (*(v118 + 56))(v119, 0, 1, v120);
  sub_248384120();

  [v27 updateConfiguration];
  (*(v117 + 8))(v113, v116);
  (*(v118 + 8))(v112, v120);
  return v27;
}

id sub_2483379C0()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBGlassInCallWidgetAvatarView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingMask];
  [*&v0[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView] bounds];
  [v1 setFrame_];
  v2 = [v1 layer];
  [v1 bounds];
  [v2 setCornerRadius_];
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.updateEffects(isFocused:isTapped:isPressed:)(Swift::Bool isFocused, Swift::Bool isTapped, Swift::Bool isPressed)
{
  DBDashboardEffectCoordinatingButton.updateEffects(isFocused:isTapped:isPressed:)(isFocused, isTapped, isPressed);
  v4 = *(v3 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_iconDimmingView);
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x88))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 isHidden];
  }

  else
  {
    v7 = 1;
  }

  [v4 setHidden_];
}

void sub_248337CC8()
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1.value.super.isa = (*((*MEMORY[0x277D85000] & *v0) + 0x118))();
  if (v1.value.super.isa)
  {
    isa = v1.value.super.isa;
    if (![(objc_class *)v1.value.super.isa isConferenced])
    {
      goto LABEL_6;
    }

    if ([(objc_class *)isa isConversation])
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = [v3 activeConversationForCall_];

      if (!v4)
      {
LABEL_17:
        v18 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
LABEL_18:
        sub_24814FB28(0, &qword_27EE93DD0);
        v25 = sub_248383B00();

        [v18 setContacts_];

        v26 = [(objc_class *)isa provider];
        v27 = [v26 displayAppBundleIdentifier];

        v28 = sub_248383960();
        v30 = v29;

        v31 = (v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
        v32 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
        v33 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8);
        *v31 = v28;
        v31[1] = v30;
        if (!v33 || (v32 == v28 ? (v34 = v33 == v30) : (v34 = 0), !v34 && (sub_248384680() & 1) == 0))
        {

          v35 = [v0 traitCollection];
          [v35 displayScale];

          v36 = sub_248383930();

          v37 = [v0 traitCollection];
          v38 = SBHGetApplicationIconLayerWithTraitCollection();

          v41.value.super.isa = v38;
          DBIconLayerView.set(_:)(v41);
        }

        return;
      }

      v5 = [v4 isOneToOneModeEnabled];

      if (v5)
      {
LABEL_6:
        v6 = [(objc_class *)isa contactIdentifiers];
        if (v6)
        {
          v7 = v6;
          v8 = sub_248383B10();

          if (*(v8 + 16))
          {

            v9 = [objc_opt_self() sharedInstance];
            v10 = [v9 contactStore];

            v11 = sub_248383930();

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_24839C700;
            v13 = *MEMORY[0x277CBD020];
            *(v12 + 32) = *MEMORY[0x277CBD020];
            v14 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93E38);
            v15 = sub_248383B00();

            v39[0] = 0;
            v16 = [v10 unifiedContactWithIdentifier:v11 keysToFetch:v15 error:v39];

            v17 = v39[0];
            if (v16)
            {
              v18 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
              v19 = swift_allocObject();
              *(v19 + 16) = xmmword_24839C700;
              *(v19 + 32) = v16;
              v20 = v17;
              v4 = v16;
              goto LABEL_18;
            }

            v23 = v39[0];
            v24 = sub_2483810C0();

            swift_willThrow();
          }

          else
          {
          }
        }
      }
    }

    v4 = 0;
    goto LABEL_17;
  }

  v21 = (v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier);
  v22 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8);
  *v21 = 0;
  v21[1] = 0;
  if (v22)
  {
    v1.value.super.isa = 0;
    DBIconLayerView.set(_:)(v1);
  }
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.userInterfaceIdiomDidChange()()
{
  if (*&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8])
  {

    v2 = [v1 traitCollection];
    [v2 displayScale];

    v3 = sub_248383930();

    v4 = [v1 traitCollection];
    v5 = SBHGetApplicationIconLayerWithTraitCollection();

    v7.value.super.isa = v5;
    DBIconLayerView.set(_:)(v7);
  }

  else
  {
    v0.value.super.isa = 0;
    DBIconLayerView.set(_:)(v0);
  }

  sub_24833852C();
}

Swift::Void __swiftcall DBGlassInCallWidgetAvatarView.homeScreenStyleDidChange()()
{
  if (*&v1[OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_appBundleIdentifier + 8])
  {

    v2 = [v1 traitCollection];
    [v2 displayScale];

    v3 = sub_248383930();

    v4 = [v1 traitCollection];
    v5 = SBHGetApplicationIconLayerWithTraitCollection();

    v7.value.super.isa = v5;
    DBIconLayerView.set(_:)(v7);
  }

  else
  {
    v0.value.super.isa = 0;
    DBIconLayerView.set(_:)(v0);
  }
}

void sub_24833852C()
{
  v1 = OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage;
  if (!*(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_focusEffectImage))
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
    if (v2)
    {
      v27 = v2;
      type metadata accessor for DBGlassInCallWidgetAvatarView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      v5 = [v0 traitCollection];
      v6 = sub_248383930();
      v7 = [objc_opt_self() imageNamed:v6 inBundle:v4 compatibleWithTraitCollection:v5];

      v8 = *(v0 + v1);
      *(v0 + v1) = v7;
      v9 = v7;

      if (v9)
      {
        [v27 updateEffectWithImage_];
        v10 = v27;
        [v10 setNeedsLayout];
        v11 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_24839CCB0;
        v13 = [v10 widthAnchor];
        [v9 size];
        v14 = [v13 constraintEqualToConstant_];

        *(v12 + 32) = v14;
        v15 = [v10 heightAnchor];

        [v9 size];
        v17 = [v15 constraintEqualToConstant_];

        *(v12 + 40) = v17;
        v18 = [v10 leadingAnchor];

        v19 = *(v0 + OBJC_IVAR____TtC9DashBoard29DBGlassInCallWidgetAvatarView_avatarViewController);
        v20 = [v19 view];
        v21 = [v20 leadingAnchor];

        v22 = [v18 constraintEqualToAnchor:v21 constant:-4.0];
        *(v12 + 48) = v22;
        v23 = [v10 topAnchor];

        v24 = [v19 view];
        v25 = [v24 topAnchor];

        v26 = [v23 constraintEqualToAnchor:v25 constant:-4.0];
        *(v12 + 56) = v26;
        sub_24814FB28(0, &qword_27EE8FE90);
        v27 = sub_248383B00();

        [v11 activateConstraints_];
      }
    }
  }
}

uint64_t sub_248338924()
{
}

id DBGlassInCallWidgetAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBGlassInCallWidgetAvatarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_248338A8C()
{
  v1 = v0;
  v2 = sub_248381570();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CF8898] || v6 == *MEMORY[0x277CF88A0])
  {
    return sub_248383960();
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_248338BD4()
{
  v0 = *MEMORY[0x277D1B200];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed_];

  [v3 scale];
  v5 = v4;

  qword_27EE97E28 = v5;
}

void sub_248338C60()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v4[4] = sub_248338D9C;
  v4[5] = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_248282F3C;
  v4[3] = &block_descriptor_19;
  v1 = _Block_copy(v4);

  v2 = [v0 imageWithActions_];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v3 = [v2 imageWithRenderingMode_];

    qword_27EE97E38 = v3;
  }
}

id sub_248338D9C(void *a1)
{
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  [v3 setFill];

  return [a1 fillRect_];
}

uint64_t CARSessionConfiguration.resolvedOEMIcon(iconImageInfo:)(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v126 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v123 - v10;
  MEMORY[0x28223BE20](v11);
  v142 = &v123 - v12;
  MEMORY[0x28223BE20](v13);
  v123 = &v123 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v123 - v16;
  MEMORY[0x28223BE20](v18);
  v144 = &v123 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v123 - v21;
  MEMORY[0x28223BE20](v23);
  v145 = &v123 - v24;
  if (qword_27EE97E20 != -1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    CGAffineTransformMakeScale(&v149, *&qword_27EE97E28, *&qword_27EE97E28);
    v124 = a1;
    v150.width = a1;
    v125 = a2;
    v150.height = a2;
    v25 = CGSizeApplyAffineTransform(v150, &v149);
    width = v25.width;
    height = v25.height;
    sub_248383F40();
    v27 = v26;
    v29 = v28;
    v30 = [v3 manufacturerIcons];
    v31 = sub_24814FB28(0, &qword_27EE93EA0);
    v32 = sub_248383B10();

    v33 = sub_24827C480();
    v34 = v7[2];
    v147 = v7 + 2;
    v148 = v33;
    v146 = v34;
    (v34)(v145);

    v35 = sub_248382A80();
    v36 = sub_248383DC0();

    v37 = os_log_type_enabled(v35, v36);
    v136 = v32;
    v143 = v22;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = COERCE_DOUBLE(swift_slowAlloc());
      v149.a = v39;
      *v38 = 136446210;
      v40 = MEMORY[0x24C1CB100](v32, v31);
      v42 = sub_24814A378(v40, v41, &v149);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_248146000, v35, v36, "Available icons: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v39);
      MEMORY[0x24C1CD5F0](*&v39, -1, -1);
      v43 = v38;
      v22 = v143;
      MEMORY[0x24C1CD5F0](v43, -1, -1);
    }

    v44 = v145;
    v145 = v7[1];
    (v145)(v44, v6);
    (v146)(v22, v148, v6);
    v45 = sub_248382A80();
    v46 = sub_248383DC0();
    v47 = os_log_type_enabled(v45, v46);
    v127 = v7;
    v48 = v144;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = COERCE_DOUBLE(swift_slowAlloc());
      v149.a = v50;
      *v49 = 136446210;
      v51 = sub_248383F30();
      v53 = sub_24814A378(v51, v52, &v149);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_248146000, v45, v46, "Expected icon size: %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v50);
      v7 = v127;
      MEMORY[0x24C1CD5F0](*&v50, -1, -1);
      MEMORY[0x24C1CD5F0](v49, -1, -1);

      v54 = v143;
    }

    else
    {

      v54 = v22;
    }

    (v145)(v54, v6);
    (v146)(v48, v148, v6);
    v55 = sub_248382A80();
    v56 = sub_248383DC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = COERCE_DOUBLE(swift_slowAlloc());
      v149.a = v58;
      *v57 = 136446210;
      v59 = sub_248383F30();
      v61 = sub_24814A378(v59, v60, &v149);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_248146000, v55, v56, "Expected masked icon size: %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v58);
      v7 = v127;
      MEMORY[0x24C1CD5F0](*&v58, -1, -1);
      MEMORY[0x24C1CD5F0](v57, -1, -1);
    }

    (v145)(v48, v6);
    v63 = v136;
    if (v136 >> 62)
    {
      v121 = v136;
      v122 = sub_248384360();
      v63 = v121;
      v64 = v122;
    }

    else
    {
      v64 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v139 = v6;
    if (!v64)
    {
      break;
    }

    v65 = 0;
    v143 = 0;
    v3 = 0;
    v22 = 0;
    v133 = v63 & 0xC000000000000001;
    v128 = v63 & 0xFFFFFFFFFFFFFF8;
    v144 = (v7 + 1);
    a2 = 0.0;
    *&v62 = 138543362;
    v130 = v62;
    v7 = &selRef__eventStoreDidChange_;
    *&v62 = 67241216;
    v129 = v62;
    a1 = 0.0;
    v132 = v17;
    v131 = v64;
    while (1)
    {
      if (v133)
      {
        v66 = MEMORY[0x24C1CBA50](v65);
      }

      else
      {
        if (v65 >= *(v128 + 16))
        {
          goto LABEL_128;
        }

        v66 = *(v63 + 8 * v65 + 32);
      }

      v67 = v66;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v141 = v65 + 1;
      (v146)(v17, v148, v6);
      v68 = v67;
      v69 = sub_248382A80();
      v70 = sub_248383DC0();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = v130;
        *(v71 + 4) = v68;
        *v72 = v68;
        v73 = v68;
        _os_log_impl(&dword_248146000, v69, v70, "Testing icon: %{public}@", v71, 0xCu);
        sub_24827B684(v72);
        MEMORY[0x24C1CD5F0](v72, -1, -1);
        v74 = v71;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v74, -1, -1);
      }

      (v145)(v17, v6);
      if (([v68 v7[78]] & 1) == 0)
      {
        if (v22)
        {
          v75 = [v22 v7[78]];
          v143 = v22;
          v3 = v22;
          if (v75)
          {

            (v146)(v123, v148, v6);
            v103 = v68;
            v104 = sub_248382A80();
            v105 = sub_248383DC0();

            if (os_log_type_enabled(v104, v105))
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              *v107 = v130;
              *(v107 + 4) = v103;
              *v108 = v103;
              v109 = v103;
              _os_log_impl(&dword_248146000, v104, v105, "Already found a preferended icon, skipping %{public}@", v107, 0xCu);
              sub_24827B684(v108);
              MEMORY[0x24C1CD5F0](v108, -1, -1);
              v110 = v107;
              v6 = v139;
              MEMORY[0x24C1CD5F0](v110, -1, -1);
            }

            else
            {
              v109 = v104;
              v104 = v103;
            }

            v101 = v125;
            v102 = v124;

            (v145)(v123, v6);
            goto LABEL_119;
          }
        }

        else
        {
          v143 = 0;
          v3 = 0;
        }
      }

      [v68 pixelSize];
      v77 = v76;
      v79 = v78;
      v80 = [v68 v7[78]];
      if (v80)
      {
        v81 = width;
      }

      else
      {
        v81 = v27;
      }

      if (v80)
      {
        v82 = height;
      }

      else
      {
        v82 = v29;
      }

      v83 = [v68 v7[78]];
      v138 = v22;
      if (!v83)
      {
        if (a1 < v79)
        {
          v85 = a2 < v77;
          if (v79 >= a1)
          {
            if (a1 >= v82)
            {
              v86 = 0;
              v140 = 0;
              goto LABEL_75;
            }

            v140 = 0;
          }

          else
          {
            v140 = v77 < a2;
            if (a1 >= v82)
            {
              v86 = 0;
LABEL_75:
              v84 = 0;
              v87 = 0;
              if (v82 > v79)
              {
                goto LABEL_100;
              }

LABEL_99:
              v87 = v81 <= v77;
              goto LABEL_100;
            }
          }

LABEL_61:
          v84 = 0;
          v87 = 0;
          v86 = a2 < v81;
          if (v82 > v79)
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (v79 >= a1)
        {
          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_74;
          }

          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 >= v82)
          {
            v86 = 0;
LABEL_74:
            v85 = 0;
            goto LABEL_75;
          }
        }

        v85 = 0;
        goto LABEL_61;
      }

      if (v3)
      {
        v84 = [v3 v7[78]] ^ 1;
        if (a1 < v79)
        {
          v85 = a2 < v77;
          if (v79 < a1)
          {
            v140 = v77 < a2;
            if (a1 < v82)
            {
              v86 = a2 < v81;
              if (v82 > v79)
              {
                v87 = 0;
                v143 = v3;
                goto LABEL_100;
              }

              v143 = v3;
              goto LABEL_99;
            }

            v86 = 0;
LABEL_87:
            v87 = 0;
LABEL_88:
            v143 = v3;
            if (v82 <= v79)
            {
              goto LABEL_99;
            }

            goto LABEL_100;
          }

          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_87;
          }

          v140 = 0;
LABEL_71:
          v87 = 0;
          v86 = a2 < v81;
          goto LABEL_88;
        }

        if (v79 >= a1)
        {
          if (a1 >= v82)
          {
            v86 = 0;
            v140 = 0;
            goto LABEL_86;
          }

          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 >= v82)
          {
            v86 = 0;
LABEL_86:
            v85 = 0;
            goto LABEL_87;
          }
        }

        v85 = 0;
        goto LABEL_71;
      }

      if (a1 >= v79)
      {
        if (v79 >= a1)
        {
          if (a1 < v82)
          {
            v140 = 0;
LABEL_81:
            v85 = 0;
LABEL_82:
            v143 = 0;
            v87 = 0;
            v86 = a2 < v81;
LABEL_91:
            v84 = 1;
            if (v82 > v79)
            {
              goto LABEL_100;
            }

            goto LABEL_99;
          }

          v86 = 0;
          v140 = 0;
        }

        else
        {
          v140 = v77 < a2;
          if (a1 < v82)
          {
            goto LABEL_81;
          }

          v86 = 0;
        }

        v85 = 0;
      }

      else
      {
        v85 = a2 < v77;
        if (v79 < a1)
        {
          v140 = v77 < a2;
          if (a1 < v82)
          {
            v143 = 0;
            v86 = a2 < v81;
            v84 = 1;
            if (v82 > v79)
            {
              v87 = 0;
              goto LABEL_100;
            }

            goto LABEL_99;
          }

          v86 = 0;
          v143 = 0;
          v87 = 0;
          goto LABEL_91;
        }

        if (a1 < v82)
        {
          v140 = 0;
          goto LABEL_82;
        }

        v86 = 0;
        v140 = 0;
      }

      v143 = 0;
      v87 = 0;
      v84 = 1;
      if (v82 <= v79)
      {
        goto LABEL_99;
      }

LABEL_100:
      (v146)(v142, v148, v6);
      v88 = sub_248382A80();
      v89 = sub_248383DC0();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = v129;
        *(v90 + 4) = v84;
        *(v90 + 8) = 1026;
        *(v90 + 10) = v85;
        *(v90 + 14) = 1026;
        *(v90 + 16) = v140;
        *(v90 + 20) = 1026;
        *(v90 + 22) = v86;
        *(v90 + 26) = 1026;
        *(v90 + 28) = v87;
        _os_log_impl(&dword_248146000, v88, v89, "shouldReplaceWithPrerenderedIcon: %{BOOL,public}d\ntestIconIsLargerThanSelected: %{BOOL,public}d\ntestIconIsSmallerThanSelected: %{BOOL,public}d\nselectedIconIsTooSmall: %{BOOL,public}d\ntestIconIsLargeEnough: %{BOOL,public}d", v90, 0x20u);
        v91 = v90;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v91, -1, -1);
      }

      (v145)(v142, v6);
      v92 = v84 | (v85 && v86);
      v7 = &selRef__eventStoreDidChange_;
      if ((v92 & 1) == 0 && (!v87 || !v140))
      {
        v17 = v132;
        v22 = v138;
LABEL_14:

        goto LABEL_15;
      }

      (v146)(v137, v148, v6);
      v3 = v68;
      v93 = sub_248382A80();
      v94 = sub_248383DC0();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *v95 = v130;
        *(v95 + 4) = v3;
        *v96 = v3;
        v97 = v3;
        _os_log_impl(&dword_248146000, v93, v94, "Selecting new icon: %{public}@", v95, 0xCu);
        sub_24827B684(v96);
        MEMORY[0x24C1CD5F0](v96, -1, -1);
        v98 = v95;
        v6 = v139;
        MEMORY[0x24C1CD5F0](v98, -1, -1);
      }

      (v145)(v137, v6);
      v99 = v3;

      v17 = v132;
      if (v81 != v77 || v82 != v79)
      {
        a2 = v77;
        a1 = v79;
        v143 = v3;
        v22 = v3;
        goto LABEL_14;
      }

      v100 = [v99 isPrerendered];

      if (v100)
      {

        v22 = v3;
        goto LABEL_118;
      }

      a2 = v77;
      v143 = v3;
      v22 = v3;
      a1 = v79;
LABEL_15:
      v63 = v136;
      ++v65;
      if (v141 == v131)
      {

        v22 = v143;
LABEL_118:
        v101 = v125;
        v102 = v124;
        goto LABEL_119;
      }
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    swift_once();
  }

  v22 = 0;
  v101 = v125;
  v102 = v124;
LABEL_119:
  (v146)(v126, v148, v6);
  v111 = sub_248382A80();
  v112 = sub_248383DC0();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v113 = 138543362;
    *(v113 + 4) = v22;
    *v114 = v22;
    v115 = v22;
    _os_log_impl(&dword_248146000, v111, v112, "Final OEM Icon: %{public}@", v113, 0xCu);
    sub_24827B684(v114);
    v116 = v114;
    v6 = v139;
    MEMORY[0x24C1CD5F0](v116, -1, -1);
    MEMORY[0x24C1CD5F0](v113, -1, -1);
  }

  (v145)(v126, v6);
  if (!v22)
  {
    return 0;
  }

  v117 = v22;
  sub_248339F78(v102, v101);
  v119 = v118;

  return v119;
}

void sub_248339F78(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_248382A90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  if (qword_27EE97E20 != -1)
  {
    swift_once();
  }

  v16 = *&qword_27EE97E28;
  CGAffineTransformMakeScale(&aBlock, *&qword_27EE97E28, *&qword_27EE97E28);
  v91.width = a1;
  v91.height = a2;
  v17 = CGSizeApplyAffineTransform(v91, &aBlock);
  v18 = [v3 imageData];
  v19 = sub_2483811B0();
  v21 = v20;

  v22 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v23 = sub_2483811A0();
  v24 = [v22 initWithData:v23 scale:v16];

  sub_24823BD70(v19, v21);
  if (v24)
  {
    v86 = v12;
    v25 = v24;
    if (([v3 isPrerendered] & 1) == 0)
    {
      if (qword_27EE97E30 != -1)
      {
        swift_once();
      }

      v25 = qword_27EE97E38;
    }

    v26 = swift_allocObject();
    v88 = v26;
    *(v26 + 16) = v25;
    v27 = (v26 + 16);
    v28 = v25;
    v29 = &selRef_presentAppLink_;
    if (([v3 isPrerendered] & 1) == 0)
    {
      v30 = [objc_opt_self() whiteColor];
      v31 = [v24 _flatImageWithColor_];

      if (v31)
      {
        goto LABEL_15;
      }

      v28 = *v27;
      v29 = &selRef_presentAppLink_;
    }

    [v28 size];
    [*v27 size];
    [*v27 v29[191]];
    sub_248383F40();
    v31 = 0;
    v87 = 0;
    if (v17.width == v33 && v17.height == v32)
    {
LABEL_19:
      if ([v3 isPrerendered])
      {
        swift_beginAccess();
        v47 = *v27;
        v48 = sub_24833AA34();

        v49 = *v27;
        *v27 = v48;
      }

      swift_beginAccess();
      v50 = UIImagePNGRepresentation(*v27);
      if (v50)
      {
        v51 = v50;
        v52 = sub_2483811B0();
        v54 = v53;

        v55 = [objc_allocWithZone(MEMORY[0x277CF8FF8]) initWithBundleIdentifier_];
        [v55 setIsPrerendered_];
        v56 = sub_2483811A0();
        [v55 setIconImageData_];

        [*(v88 + 16) scale];
        [v55 setIconImageScale_];
        v89[0] = 0;
        v89[1] = 0xE000000000000000;
        sub_248384440();

        strcpy(v89, "LAUNCHER_NAME-");
        HIBYTE(v89[1]) = -18;
        v57 = sub_248383960();
        MEMORY[0x24C1CAFD0](v57);

        sub_24814FB28(0, &qword_27EE8FD80);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v59 = [objc_opt_self() bundleForClass_];
        sub_2483810A0();

        v60 = sub_248383930();

        [v55 setLocalizedDisplayName_];

        sub_24823BD70(v52, v54);
      }

      else
      {
        v72 = sub_24827C480();
        v73 = v86;
        (*(v7 + 16))(v86, v72, v6);
        v74 = v6;
        v75 = v3;
        v76 = sub_248382A80();
        v77 = sub_248383DA0();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v89[0] = v79;
          *v78 = 136315138;
          v80 = [v75 description];
          v81 = sub_248383960();
          v83 = v82;

          v84 = sub_24814A378(v81, v83, v89);

          *(v78 + 4) = v84;
          _os_log_impl(&dword_248146000, v76, v77, "Unable to get png data from CARManufacturer icon: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          MEMORY[0x24C1CD5F0](v79, -1, -1);
          MEMORY[0x24C1CD5F0](v78, -1, -1);

          (*(v7 + 8))(v86, v74);
        }

        else
        {

          (*(v7 + 8))(v73, v74);
        }
      }

      return;
    }

LABEL_15:
    v35 = v17.width / v16;
    v36 = v17.height / v16;
    v37 = sub_24827C480();
    v38 = v6;
    (*(v7 + 16))(v15, v37, v6);
    v39 = sub_248382A80();
    v40 = sub_248383DC0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_248146000, v39, v40, "Compositing OEM icon image", v41, 2u);
      MEMORY[0x24C1CD5F0](v41, -1, -1);
    }

    (*(v7 + 8))(v15, v38);
    v42 = objc_opt_self();
    v43 = swift_allocObject();
    *(v43 + 16) = v35;
    *(v43 + 24) = v36;
    *(v43 + 32) = v16;
    *(v43 + 40) = v88;
    *(v43 + 48) = v31;
    *&aBlock.tx = sub_24833AC04;
    *&aBlock.ty = v43;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_24814C01C;
    *&aBlock.d = &block_descriptor_27;
    v44 = _Block_copy(&aBlock);
    v87 = v31;

    v45 = [v42 sbf:0 imageFromContextWithSize:0 scale:v44 type:v35 pool:v36 drawing:v16];
    _Block_release(v44);
    if (!v45)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    v46 = *v27;
    *v27 = v45;

    v6 = v38;
    goto LABEL_19;
  }

  v61 = sub_24827C480();
  (*(v7 + 16))(v9, v61, v6);
  v62 = v3;
  v63 = sub_248382A80();
  v64 = sub_248383DA0();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = COERCE_DOUBLE(swift_slowAlloc());
    aBlock.a = v66;
    *v65 = 136315138;
    v67 = [v62 description];
    v68 = sub_248383960();
    v70 = v69;

    v71 = sub_24814A378(v68, v70, &aBlock);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_248146000, v63, v64, "Unable to create UIImage from imageData in CARManufacturerIcon: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(*&v66);
    MEMORY[0x24C1CD5F0](*&v66, -1, -1);
    MEMORY[0x24C1CD5F0](v65, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

id sub_24833A9D8(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  v6 = CARSessionConfiguration.resolvedOEMIcon(iconImageInfo:)(a2, a3);

  return v6;
}

uint64_t sub_24833AA34()
{
  v1 = v0;
  [v0 size];
  v4 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_24833AD3C;
  *(v6 + 24) = v5;
  v12[4] = sub_248282F14;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_248282F3C;
  v12[3] = &block_descriptor_12_2;
  v7 = _Block_copy(v12);
  v8 = v1;

  v9 = [v4 imageWithActions_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = [v9 imageWithRenderingMode_];

    return v11;
  }

  return result;
}

void sub_24833AC04()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  UIRectCenteredAboutPointScale();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  [*(v2 + 16) drawInRect:17 blendMode:v4 alpha:{v6, v8, v10, 1.0}];
  if (v1)
  {
    v11 = v1;
    [v11 size];
    [v11 size];
    UIRectCenteredAboutPointScale();
    [v11 drawInRect:0 blendMode:? alpha:?];
  }
}

id sub_24833AD3C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() blackColor];
  [v4 setFill];

  [v3 size];
  v6 = v5;
  v8 = v7;
  [a1 fillRect_];

  return [v3 drawInRect_];
}

uint64_t sub_24833AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v74 = a2;
  v3 = sub_2483817D0();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_248382A90();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_248381770();
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = sub_248382220();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v64 = &v63 - v16;
  v17 = sub_2483817B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  sub_2483817C0();
  v24 = (*(v18 + 88))(v23, v17);
  if (v24 != *MEMORY[0x277CF8AE8])
  {
    v31 = v73;
    v71 = v23;
    if (v24 != *MEMORY[0x277CF8AF0])
    {
      v40 = sub_24827C568();
      v41 = v70;
      v42 = v68;
      (*(v70 + 16))(v68, v40, v72);
      v44 = v65;
      v43 = v66;
      v45 = v67;
      (*(v66 + 16))(v65, v2, v67);
      v46 = sub_248382A80();
      v47 = sub_248383DC0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v79[0] = v73;
        *v48 = 136446210;
        LODWORD(v69) = v47;
        sub_2483817C0();
        v49 = sub_2483817A0();
        v51 = v50;
        (*(v18 + 8))(v20, v17);
        (*(v43 + 8))(v44, v45);
        v52 = sub_24814A378(v49, v51, v79);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_248146000, v46, v69, "No App Scene URL available for instrument kind %{public}s", v48, 0xCu);
        v53 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x24C1CD5F0](v53, -1, -1);
        MEMORY[0x24C1CD5F0](v48, -1, -1);

        (*(v70 + 8))(v68, v72);
      }

      else
      {

        (*(v43 + 8))(v44, v45);
        (*(v41 + 8))(v42, v72);
      }

      v61 = sub_248381170();
      (*(*(v61 - 8) + 56))(v74, 1, 1, v61);
      return (*(v18 + 8))(v71, v17);
    }

    v32 = v71;
    (*(v18 + 96))(v71, v17);
    v33 = v64;
    (*(v12 + 16))(v64, v31, v11);
    v34 = (*(v12 + 88))(v33, v11);
    if (v34 == *MEMORY[0x277CF8D88])
    {
      (*(v12 + 96))(v33, v11);

      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE0) + 64);
    }

    else
    {
      if (v34 != *MEMORY[0x277CF8D78])
      {
        if (v34 == *MEMORY[0x277CF8D80])
        {
          sub_248381140();
        }

        else
        {
          v62 = sub_248381170();
          (*(*(v62 - 8) + 56))(v74, 1, 1, v62);
          (*(v12 + 8))(v33, v11);
        }

        goto LABEL_25;
      }

      (*(v12 + 96))(v33, v11);

      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0) + 48);
    }

    sub_248381140();
    v58 = sub_248381D00();
    (*(*(v58 - 8) + 8))(&v33[v35], v58);
LABEL_25:
    v59 = sub_248381760();
    return (*(*(v59 - 8) + 8))(v32, v59);
  }

  (*(v18 + 96))(v23, v17);
  v25 = v71;
  (*(v71 + 4))(v10, v23, v6);
  (*(v12 + 16))(v14, v73, v11);
  v26 = (*(v12 + 88))(v14, v11);
  v27 = v6;
  if (v26 == *MEMORY[0x277CF8D88])
  {
    (*(v12 + 96))(v14, v11);

    v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BE0) + 64);
    v29 = "creenPresentation=";
    v30 = 0xD00000000000006ALL;
  }

  else
  {
    if (v26 != *MEMORY[0x277CF8D78])
    {
      (*(v25 + 1))(v10, v6);
      v60 = sub_248381170();
      (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 96))(v14, v11);

    v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90BD0) + 48);
    v29 = "&mapsPresentation=anyContent";
    v30 = 0xD000000000000057;
  }

  v36 = *v28;
  v79[0] = v30;
  v79[1] = v29 | 0x8000000000000000;
  v37 = sub_248381D00();
  (*(*(v37 - 8) + 8))(&v14[v36], v37);
  v38 = v69;
  (*(v25 + 13))(v69, *MEMORY[0x277CF8AD8], v27);
  sub_24833B920();
  sub_248383AE0();
  sub_248383AE0();
  if (v77 == v75 && v78 == v76)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_248384680();
  }

  v54 = *(v25 + 1);
  v54(v38, v27);

  if (v39)
  {
    v55 = 0xD00000000000001CLL;
  }

  else
  {
    v55 = 0xD000000000000021;
  }

  if (v39)
  {
    v56 = "n=instructioncard";
  }

  else
  {
    v56 = "maneuverLayout=leftAligned";
  }

  MEMORY[0x24C1CAFD0](v55, v56 | 0x8000000000000000);

  sub_248381140();

  return (v54)(v10, v27);
}

unint64_t sub_24833B920()
{
  result = qword_27EE93EA8;
  if (!qword_27EE93EA8)
  {
    sub_248381770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93EA8);
  }

  return result;
}

id SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHomeScreenStyleData_];

  return v2;
}

{
  v2 = sub_24833BF74(a1);

  return v2;
}

uint64_t sub_24833B9F0()
{
  v1 = [v0 styleType];
  if (v1)
  {
    return v1 == 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_24833BA28()
{
  v1 = [v0 styleVariant];
  if (v1 >= 3)
  {
    return 0;
  }

  else
  {
    return 2 - v1;
  }
}

id sub_24833BA5C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_24833BF74(v3);

  return v4;
}

id sub_24833BA94(void *a1)
{
  v1 = a1;
  SBHIconImageStyleConfiguration.dbDescription.getter();

  v2 = sub_248383930();

  return v2;
}

uint64_t SBHIconImageStyleConfiguration.dbDescription.getter()
{
  v1 = [v0 configurationType];
  v2 = 0xE600000000000000;
  v3 = 0x6465746E6974;
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  if (v1 == 1)
  {
    v5 = 0x7261656C63;
    v4 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v3 = v5;
    v2 = v4;
  }

  if (v1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x726F6C6F63;
  }

  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = [v0 variant];
  v9 = 0xE900000000000063;
  v10 = 0x6974616D6F747561;
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  if (v8 == 1)
  {
    v12 = 1802658148;
    v11 = 0xE400000000000000;
  }

  if (v8 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0x746867696CLL;
  }

  if (v8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  v15 = [v0 description];
  v16 = sub_248383960();

  sub_248384440();

  MEMORY[0x24C1CAFD0](v6, v7);

  MEMORY[0x24C1CAFD0](0x6E6169726176202CLL, 0xEB00000000203A74);
  MEMORY[0x24C1CAFD0](v13, v14);

  MEMORY[0x24C1CAFD0](41, 0xE100000000000000);

  MEMORY[0x24C1CAFD0](0xD000000000000015, 0x80000002483B3640);

  return v16;
}

id SBHIconImageAppearance.init(homeScreenStyleData:userInterfaceStyle:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHomeScreenStyleData:a1 userInterfaceStyle:a2];

  return v3;
}

{
  v3 = sub_24833BFF8(a1, a2);

  return v3;
}

id sub_24833BDB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = sub_24833BFF8(v5, a4);

  return v6;
}

BOOL sub_24833BDF8()
{
  v1 = [v0 sbh_iconImageStyleConfiguration];
  v2 = [v1 variant];

  return v2 == 1;
}

uint64_t sub_24833BE4C()
{
  v1 = [v0 sbh_iconImageStyleConfiguration];
  v2 = [v1 configurationType];

  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return qword_2483A1B40[v2];
  }
}

uint64_t sub_24833BEB4(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 1802658148;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_24833BF00(uint64_t a1)
{
  v1 = 0x656C6261746E6974;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x746C7561666564;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1 == 3)
  {
    return 0x7261656C63;
  }

  else
  {
    return v1;
  }
}

id sub_24833BF74(void *a1)
{
  v3 = [a1 styleType];
  v4 = [a1 styleVariant];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2 - v4;
  }

  if (v3)
  {
    v6 = v3 == 1;
  }

  else
  {
    v6 = 2;
  }

  return [v1 initWithConfigurationType:v6 variant:v5];
}

id sub_24833BFF8(void *a1, uint64_t a2)
{
  v5 = [a1 styleType];
  v6 = [a1 styleVariant];
  v7 = 2 - v6;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      if (v7)
      {
        if (v7 == 2)
        {
          if (a2 == 2)
          {
            v5 = 3;
          }

          else
          {
            v5 = 2;
          }
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
      }
    }

    else if (v7 >= 2)
    {
      v5 = a2 == 2;
    }

    else
    {
      v5 = v7;
    }
  }

  return [v2 initWithAppearanceType_];
}

id sub_24833C0B8(double a1, double a2, double a3)
{
  v5 = [v3 CGImage];
  v6 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v5 scale:a3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24839C700;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  sub_24814FB28(0, &qword_27EE93EB0);
  v9 = v6;
  v10 = sub_248383B00();

  v11 = [v8 initWithImages_];

  return v11;
}

id sub_24833C1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24814FB28(0, &qword_27EE8FD80);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_248383930();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:a3];

  return v7;
}

id sub_24833C294(void *a1)
{
  v1 = a1;
  [v1 userInterfaceStyle];

  v2 = sub_248383930();

  return v2;
}

uint64_t UITraitCollection.dbUserInterfaceStyleDescription.getter()
{
  v1 = [v0 userInterfaceStyle];
  if (!v1)
  {
    return 0x6669636570736E75;
  }

  v2 = 0x6E776F6E6B6E75;
  if (v1 == 2)
  {
    v2 = 1802658148;
  }

  if (v1 == 1)
  {
    return 0x746867696CLL;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24833C3F4(void *a1)
{
  v1 = a1;
  v2 = UITraitCollection.homeScreenStyleWantsDimmedWallpaper.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.homeScreenStyleWantsDimmedWallpaper.getter()
{
  sub_24833C524();
  v1 = [v0 sbh_iconImageAppearance];
  v2 = objc_opt_self();
  v3 = [v2 clearLightAppearance];
  v4 = sub_248384030();

  if (v4)
  {
    return 1;
  }

  v6 = [v0 sbh_iconImageAppearance];
  v7 = [v2 clearDarkAppearance];
  v8 = sub_248384030();

  return v8 & 1;
}

unint64_t sub_24833C524()
{
  result = qword_27EE91478;
  if (!qword_27EE91478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE91478);
  }

  return result;
}

id sub_24833C570(void *a1, char a2)
{
  if (!a1 || (result = [a1 sbh_iconImageAppearance]) == 0)
  {
    result = [objc_opt_self() defaultAppearance];
  }

  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = [result appearanceType];
    result = v4;
    if (!v5)
    {
      v6 = v4;
      v7 = [objc_opt_self() darkAppearance];

      return v7;
    }
  }

  return result;
}

uint64_t sub_24833C620()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8);
    sub_24822D648(&qword_27EE93F00, &qword_27EE93EB8);
    v1 = sub_248382F10();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_24833C6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_2483818B0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8);
  swift_allocObject();
  return sub_248382E20();
}

void *sub_24833C7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24833E558(a1, a2, a3, a4);

  return v8;
}

void *sub_24833C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_24833E558(a1, a2, a3, a4);

  return v4;
}

id sub_24833C880@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_24833C88C(void *a1, uint64_t a2)
{
  v110 = a1;
  v3 = sub_2483816E0();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v86 - v8;
  v108 = sub_248381740();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v102 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v107 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v86 - v19;
  v21 = sub_2483820C0();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v99 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v98 = &v86 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v86 - v29;
  v32 = v31;
  sub_248232C78(a2, v20, &qword_27EE91308);
  if ((*(v32 + 48))(v20, 1, v21) == 1)
  {
    sub_24822D578(v20, &qword_27EE91308);
    sub_248383D80();
    v33 = *sub_24827B964();
    sub_248382A40();

    return;
  }

  v93 = *(v32 + 32);
  v94 = v32 + 32;
  v93(v30, v20, v21);
  v34 = sub_2483818B0();
  v35 = *(v34 - 8);
  v96 = *(v35 + 56);
  v97 = v34;
  v95 = v35 + 56;
  v96(v17, 1, 1);
  v36 = sub_2483820B0();
  v37 = v17;
  v109 = v32;
  if ((v36 & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v9;
  if (!v110)
  {
LABEL_9:
    sub_248382080();
    v46 = String.isLegacyDynamicContentElementRequest.getter();

    if (!v46)
    {
      goto LABEL_13;
    }

    sub_248382080();
    v45 = sub_24833D610();
    v43 = v47;

    v44 = sub_2483820A0();
    if (!v43)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v39 = v110;
  sub_248382080();
  v40 = String.isDynamicContentElementRequest.getter();

  if (!v40)
  {

    v32 = v109;
    goto LABEL_9;
  }

  sub_248380F20();
  v41 = sub_24833D610();
  v43 = v42;

  v44 = sub_248380F30();

  v45 = v41;
  v32 = v109;
  if (!v43)
  {
    goto LABEL_13;
  }

LABEL_11:
  v91 = v44;
  v92 = v45;
  sub_2483816B0();
  v48 = v106;
  v49 = v108;
  if ((*(v106 + 48))(v38, 1, v108) != 1)
  {
    (*(v48 + 32))(v107, v38, v49);
    v61 = sub_248383D80();
    v62 = *sub_24827B964();
    v63 = *(v32 + 16);
    v64 = v98;
    v89 = v32 + 16;
    v88 = v63;
    v63(v98, v30, v21);
    v65 = os_log_type_enabled(v62, v61);
    v90 = v43;
    if (v65)
    {
      v87 = v62;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v110 = v37;
      v68 = v67;
      v111[0] = v67;
      *v66 = 136315138;
      sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38]);
      v69 = sub_248384650();
      v70 = v61;
      v72 = v71;
      v59 = *(v32 + 8);
      v59(v64, v21);
      v73 = sub_24814A378(v69, v72, v111);

      *(v66 + 4) = v73;
      v74 = v87;
      _os_log_impl(&dword_248146000, v87, v70, "RequestContent widget - Presenting: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v75 = v68;
      v37 = v110;
      MEMORY[0x24C1CD5F0](v75, -1, -1);
      MEMORY[0x24C1CD5F0](v66, -1, -1);
    }

    else
    {
      v59 = *(v32 + 8);
      v59(v64, v21);
    }

    v76 = v100;
    sub_248381700();
    v78 = v104;
    v77 = v105;
    v79 = v101;
    (*(v104 + 104))(v101, *MEMORY[0x277CF8AC0], v105);
    LODWORD(v110) = sub_2483816D0();
    v80 = *(v78 + 8);
    v80(v79, v77);
    v80(v76, v77);
    v81 = v106;
    (*(v106 + 16))(v102, v107, v108);
    v82 = v99;
    v88(v99, v30, v21);
    v83 = (*(v109 + 80) + 17) & ~*(v109 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v91 & 1;
    v93((v84 + v83), v82, v21);
    v85 = v103;
    sub_2483818A0();
    (*(v81 + 8))(v107, v108);
    sub_24822D578(v37, &qword_27EE8FC28);
    (v96)(v85, 0, 1, v97);
    sub_24833EF54(v85, v37);
    goto LABEL_17;
  }

  sub_24822D578(v38, &qword_27EE93EF0);
LABEL_13:
  v50 = sub_248383D80();
  v51 = *sub_24827B964();
  (*(v32 + 16))(v23, v30, v21);
  if (os_log_type_enabled(v51, v50))
  {
    v52 = v51;
    v110 = v37;
    v53 = v52;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v111[0] = v55;
    *v54 = 136315138;
    sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38]);
    v56 = sub_248384650();
    v58 = v57;
    v59 = *(v32 + 8);
    v59(v23, v21);
    v60 = sub_24814A378(v56, v58, v111);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_248146000, v53, v50, "RequestContent widget: Ignoring request for: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x24C1CD5F0](v55, -1, -1);
    MEMORY[0x24C1CD5F0](v54, -1, -1);

    v37 = v110;
  }

  else
  {
    v59 = *(v32 + 8);
    v59(v23, v21);
  }

  sub_24822D578(v37, &qword_27EE8FC28);
  (v96)(v37, 1, 1, v97);
LABEL_17:

  sub_248382E10();

  sub_24822D578(v37, &qword_27EE8FC28);
  v59(v30, v21);
}

BOOL String.isDynamicContentElementRequest.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24822D578(v2, &qword_27EE904C0);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_248381130();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v8 != 0xD000000000000015 || v9 != 0x80000002483B36D0)
  {
    v11 = sub_248384680();

    (*(v4 + 8))(v6, v3);
    return (v11 & 1) != 0;
  }

  (*(v4 + 8))(v6, v3);
  return 1;
}

uint64_t sub_24833D610()
{
  v0 = sub_248381020();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EC8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_248381170();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27EE904C0;
    v19 = v13;
LABEL_34:
    sub_24822D578(v19, v18);
    return 0;
  }

  v55 = v0;
  v56 = v1;
  (*(v15 + 32))(v17, v13, v14);
  v20 = sub_248381130();
  v22 = v21;
  v23 = sub_248383960();
  if (v22)
  {
    if (v20 == v23 && v22 == v24)
    {
LABEL_12:

      goto LABEL_13;
    }

    v25 = sub_248384680();

    if (v25)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v26 = sub_248381130();
  v28 = v27;
  v29 = sub_248383960();
  if (!v28)
  {

LABEL_28:
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  if (v26 == v29 && v28 == v30)
  {
    goto LABEL_12;
  }

  v47 = sub_248384680();

  if ((v47 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  v31 = v57;
  sub_248381040();
  sub_248232C78(v31, v8, &qword_27EE93EC8);
  v32 = sub_248381050();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v8, 1, v32) == 1)
  {
    sub_24822D578(v31, &qword_27EE93EC8);
    (*(v15 + 8))(v17, v14);
    v19 = v8;
    v18 = &qword_27EE93EC8;
    goto LABEL_34;
  }

  v34 = sub_248381030();
  result = (*(v33 + 8))(v8, v32);
  if (!v34)
  {
    sub_24822D578(v31, &qword_27EE93EC8);
    goto LABEL_28;
  }

  v36 = v55;
  v51 = *(v34 + 16);
  if (!v51)
  {
LABEL_23:

    v44 = 1;
    v45 = v56;
    v46 = v54;
LABEL_32:
    v48 = v57;
    (*(v45 + 56))(v46, v44, 1, v36);
    if ((*(v45 + 48))(v46, 1, v36) != 1)
    {
      v49 = sub_248381010();
      sub_24822D578(v48, &qword_27EE93EC8);
      (*(v15 + 8))(v17, v14);
      (*(v45 + 8))(v46, v36);
      return v49;
    }

    sub_24822D578(v48, &qword_27EE93EC8);
    (*(v15 + 8))(v17, v14);
    v18 = &qword_27EE93EC0;
    v19 = v46;
    goto LABEL_34;
  }

  v37 = 0;
  v53 = v56 + 16;
  v52 = @"identifier";
  v38 = (v56 + 8);
  while (v37 < *(v34 + 16))
  {
    (*(v56 + 16))(v3, v34 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v37, v36);
    v39 = sub_248381000();
    v41 = v40;
    if (v39 == sub_248383960() && v41 == v42)
    {

LABEL_31:
      v45 = v56;
      v46 = v54;
      (*(v56 + 32))(v54, v3, v36);
      v44 = 0;
      goto LABEL_32;
    }

    v43 = sub_248384680();

    if (v43)
    {

      v36 = v55;
      goto LABEL_31;
    }

    ++v37;
    v36 = v55;
    result = (*v38)(v3, v55);
    if (v51 == v37)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

BOOL String.isLegacyDynamicContentElementRequest.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_248381170();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248381140();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24822D578(v2, &qword_27EE904C0);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_248381130();
  if (v9)
  {
    if (v8 == 0x746567646977 && v9 == 0xE600000000000000)
    {
LABEL_17:

      goto LABEL_18;
    }

    v11 = sub_248384680();

    if (v11)
    {
LABEL_18:
      (*(v4 + 8))(v6, v3);
      return 1;
    }
  }

  v12 = sub_248381130();
  if (!v13)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  if (v12 == 0x7274537475706E69 && v13 == 0xEB000000006D6165)
  {
    goto LABEL_17;
  }

  v15 = sub_248384680();

  (*(v4 + 8))(v6, v3);
  return (v15 & 1) != 0;
}

void sub_24833DFCC(char a1, uint64_t a2)
{
  v4 = sub_2483820C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = sub_248383D80();
    v9 = *sub_24827B964();
    (*(v5 + 16))(v7, a2, v4);
    if (os_log_type_enabled(v9, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      sub_24833EEA8(&qword_27EE93EF8, MEMORY[0x277CF8D38]);
      v13 = sub_248384650();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v16 = sub_24814A378(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_248146000, v10, v8, "RequestContent widget - Dismissing: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1CD5F0](v12, -1, -1);
      MEMORY[0x24C1CD5F0](v11, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v17 = sub_248382090();
    v17();
  }
}

uint64_t sub_24833E214()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93ED0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24833C620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC30);
  sub_24822D648(&qword_27EE8FC38, &qword_27EE8FC30);
  sub_24833EDD0();
  sub_248382FD0();

  sub_24822D648(&qword_27EE93EE8, &qword_27EE93ED0);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_24833E3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93ED0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - v2;
  v6[1] = sub_24833C620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC30);
  sub_24822D648(&qword_27EE8FC38, &qword_27EE8FC30);
  sub_24833EDD0();
  sub_248382FD0();

  sub_24822D648(&qword_27EE93EE8, &qword_27EE93ED0);
  v4 = sub_248382F10();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *sub_24833E558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v43 = a4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE912D0);
  MEMORY[0x28223BE20](v54);
  v51 = &v41 - v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F08);
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v41 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F10);
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v41 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F18);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F20);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  MEMORY[0x28223BE20](v16);
  v49 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v41 - v20;
  v4[2] = 0;
  v22 = sub_2483818B0();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93EB8);
  swift_allocObject();
  v23 = sub_248382E20();
  v24 = MEMORY[0x277D84FA0];
  v48 = v4;
  v4[3] = v23;
  v4[4] = v24;
  v50 = v4 + 4;
  v41 = a1;
  v4[5] = a1;
  v55 = a2;
  v25 = swift_allocObject();
  v26 = v43;
  *(v25 + 16) = v42;
  *(v25 + 24) = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92FD0);
  sub_24822D648(&qword_27EE92FE0, &qword_27EE92FD0);
  sub_248382F70();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F28);
  sub_24822D648(&qword_27EE93F30, &qword_27EE93F08);
  v27 = v44;
  sub_248382F60();
  (*(v8 + 8))(v10, v27);
  sub_24822D648(&qword_27EE93F38, &qword_27EE93F10);
  v28 = v46;
  sub_248382F90();
  (*(v11 + 8))(v13, v28);
  sub_24822D648(&qword_27EE93F40, &qword_27EE93F18);
  v29 = v45;
  v30 = sub_248382F10();
  (*(v47 + 8))(v15, v29);
  v55 = v30;
  v56 = sub_248382B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91300);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91308) - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_24839C7F0;
  v34 = sub_2483820C0();
  (*(*(v34 - 8) + 56))(v33 + v32, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91310);
  sub_24822D648(&qword_27EE91318, &qword_27EE91310);
  sub_248382F90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F48);
  sub_24822D648(&qword_27EE93F50, &qword_27EE93F48);
  sub_24822D648(&qword_27EE91328, &qword_27EE912D0);
  v35 = v49;
  sub_248382D00();
  v36 = swift_allocObject();
  v37 = v48;
  swift_weakInit();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_24833F030;
  *(v38 + 24) = v36;
  sub_24822D648(&qword_27EE93F58, &qword_27EE93F20);
  v39 = v52;
  sub_248383000();

  (*(v53 + 8))(v35, v39);
  swift_beginAccess();
  sub_248382DB0();
  swift_endAccess();

  return v37;
}

unint64_t sub_24833EDD0()
{
  result = qword_27EE93ED8;
  if (!qword_27EE93ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE8FC28);
    sub_24833EEA8(&qword_27EE93EE0, MEMORY[0x277CF8B38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93ED8);
  }

  return result;
}

uint64_t sub_24833EEA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24833EEF0()
{
  v1 = *(sub_2483820C0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  sub_24833DFCC(v2, v3);
}

uint64_t sub_24833EF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE8FC28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24833EFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (sub_248380F40() == v1 && v3 == v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_248384680();
  }

  return v5 & 1;
}

uint64_t sub_24833F030(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24833C88C(a1, a2);
  }

  return result;
}

uint64_t sub_24833F0A0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F60);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_24833F0F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

void sub_24833F154(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id DBLeafIcon.application.getter()
{
  v1 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24833F208(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DBLeafIcon.isLaunchEnabled.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
  v2 = [v1 isPlaceholder];

  return v2 ^ 1;
}

id DBLeafIcon.__allocating_init(leafIdentifier:applicationBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_248383930();

  if (a4)
  {
    v7 = sub_248383930();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(v4) initWithLeafIdentifier:v6 applicationBundleID:v7];

  return v8;
}

id DBLeafIcon.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBLeafIcon();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s9DashBoard10DBLeafIconC4with10drawBorderACSo13DBApplicationC_Sbtcfc_0(void *a1)
{
  v2 = v1;
  v4 = [a1 bundleIdentifier];
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    sub_248383960();
    v6 = sub_248383930();

    sub_248383960();
    v5 = sub_248383930();
  }

  *&v2[OBJC_IVAR____TtC9DashBoard10DBLeafIcon_application] = a1;
  type metadata accessor for DBLeafIconDataSource();
  v7 = a1;
  v8 = v4;
  v9 = DBLeafIconDataSource.__allocating_init(for:)(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DBLeafIcon();
  v10 = objc_msgSendSuper2(&v13, sel_initWithLeafIdentifier_applicationBundleID_, v6, v5);

  v11 = v10;
  [v11 addIconDataSource_];

  return v11;
}

uint64_t sub_24833F634(uint64_t a1)
{
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v6 = sub_24822B8A0(0x6E61726165707061, 0xEE0065646F4D6563), (v7 & 1) != 0))
  {
    sub_24814A550(*(a1 + 56) + 32 * v6, v16);

    if (swift_dynamicCast())
    {
      v8 = v15;
      if ((v15 + 1) < 3)
      {
        return qword_2483A1C50[v15 + 1];
      }

      v10 = sub_24827C568();
      (*(v3 + 16))(v5, v10, v2);
      v11 = sub_248382A80();
      v12 = sub_248383DA0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134349056;
        *(v13 + 4) = v8;
        _os_log_impl(&dword_248146000, v11, v12, "Unknown appearance mode %{public}ld", v13, 0xCu);
        MEMORY[0x24C1CD5F0](v13, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
  }

  return -1;
}

id static DBAppToAppAnimation.animation(with:)(void (*a1)(void))
{
  type metadata accessor for DBAnimationSettings();
  v2 = DBAnimationSettings.__allocating_init()();
  a1();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = type metadata accessor for _DBAppSwitchReducedMotionAnimation();
  }

  else
  {
    v3 = type metadata accessor for _DBAppSwitchDosidoAnimation();
  }

  v4 = objc_allocWithZone(v3);
  return DBDashboardAnimation.init(settings:)(v2);
}

void sub_24833FA2C(void (*a1)(void), uint64_t a2)
{
  v5 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v5)
  {
    v6 = v5;
    v7 = DBDashboardAnimation.toTransitionContainerView.getter();
    if (v7)
    {
      v8 = v7;
      v9 = DBDashboardAnimation.toView.getter();
      if (v9)
      {
        v10 = v9;
        v11 = DBDashboardAnimation.fromView.getter();
        if (v11)
        {
          v12 = v11;
          v13 = DBDashboardAnimation.rootContainerView.getter();
          if (v13)
          {
            v37 = v12;
            v38 = v13;
            [v8 addSubview_];
            [v8 bounds];
            [v10 setFrame_];
            CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
            [v10 setTransform_];
            type metadata accessor for DBAnimationView();
            v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91CA0);
            v15 = swift_allocObject();
            *(v15 + 16) = xmmword_24839C7F0;
            *(v15 + 32) = sub_248383960();
            *(v15 + 40) = v16;
            v17 = OBJC_IVAR____TtC9DashBoard15DBAnimationView_keysToAnimate;
            swift_beginAccess();
            *&v14[v17] = v15;

            v18 = v14;
            [v6 addSubview_];
            [v6 bounds];
            [v18 setFrame_];
            [v18 addSubview_];
            v19 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
            [v19 setName_];
            v20 = sub_248383CC0();
            [v19 setValue:v20 forKey:@"inputRadius"];

            v21 = [v18 layer];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_24839C7F0;
            *(v22 + 56) = sub_248260D3C();
            *(v22 + 32) = v19;
            v36 = v19;
            v23 = sub_248383B00();

            [v21 setFilters_];

            v35 = objc_opt_self();
            v24 = swift_allocObject();
            v24[2] = v38;
            v24[3] = v2;
            v24[4] = v10;
            v24[5] = v18;
            *&aBlock.tx = sub_248340430;
            *&aBlock.ty = v24;
            *&aBlock.a = MEMORY[0x277D85DD0];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_24814C01C;
            *&aBlock.d = &block_descriptor_64_0;
            v34 = _Block_copy(&aBlock);
            v25 = v18;
            v26 = v38;
            v27 = v2;
            v28 = v10;

            v29 = swift_allocObject();
            v29[2] = v25;
            v29[3] = a1;
            v29[4] = a2;
            *&aBlock.tx = sub_248340504;
            *&aBlock.ty = v29;
            *&aBlock.a = MEMORY[0x277D85DD0];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_2482614B8;
            *&aBlock.d = &block_descriptor_70_0;
            v30 = _Block_copy(&aBlock);
            v31 = v25;
            sub_248167910(a1);

            [v35 _animateUsingSpringWithDuration_delay_options_mass_stiffness_damping_initialVelocity_animations_completion_];

            _Block_release(v30);
            _Block_release(v34);
            return;
          }

          v33 = v8;
          v32 = v10;
          v6 = v12;
        }

        else
        {
          v33 = v6;
          v32 = v8;
          v6 = v10;
        }
      }

      else
      {
        v32 = v6;
        v6 = v8;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_248340004(void (*a1)(void), uint64_t a2)
{
  v5 = DBDashboardAnimation.fromTransitionContainerView.getter();
  if (v5)
  {
    v6 = v5;
    v7 = DBDashboardAnimation.toTransitionContainerView.getter();
    if (v7)
    {
      v8 = v7;
      v9 = DBDashboardAnimation.toView.getter();
      if (v9)
      {
        v10 = v9;
        v11 = DBDashboardAnimation.fromView.getter();
        if (v11)
        {
          v12 = v11;
          v13 = DBDashboardAnimation.rootContainerView.getter();
          if (v13)
          {
            v14 = v13;
            [v8 addSubview_];
            [v8 bounds];
            [v10 setFrame_];
            [v6 addSubview_];
            [v6 bounds];
            [v12 setFrame_];
            v24 = objc_opt_self();
            v15 = swift_allocObject();
            v15[2] = v14;
            v15[3] = v2;
            v15[4] = v12;
            v29 = sub_2483403C0;
            v30 = v15;
            aBlock = MEMORY[0x277D85DD0];
            v26 = 1107296256;
            v27 = sub_24814C01C;
            v28 = &block_descriptor_28;
            v23 = _Block_copy(&aBlock);
            v16 = v14;
            v17 = v2;
            v18 = v12;

            v19 = swift_allocObject();
            *(v19 + 16) = a1;
            *(v19 + 24) = a2;
            v29 = sub_248260F70;
            v30 = v19;
            aBlock = MEMORY[0x277D85DD0];
            v26 = 1107296256;
            v27 = sub_24824BBE0;
            v28 = &block_descriptor_55;
            v20 = _Block_copy(&aBlock);
            sub_248167910(a1);

            [v24 animateWithDuration:v23 animations:v20 completion:0.5];
            _Block_release(v20);
            _Block_release(v23);

            return;
          }

          v22 = v8;
          v21 = v10;
          v6 = v12;
        }

        else
        {
          v22 = v6;
          v21 = v8;
          v6 = v10;
        }
      }

      else
      {
        v21 = v6;
        v6 = v8;
      }
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_248340388(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2483403C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  return [v2 setAlpha_];
}

id sub_248340430()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v4 = DBDashboardAnimation.rootContainerBackgroundColor.getter();
  [v1 setBackgroundColor_];

  CGAffineTransformMakeScale(&v6, 1.0, 1.0);
  [v3 setTransform_];
  [v2 setAlpha_];
  CGAffineTransformMakeScale(&v6, 1.05, 1.05);
  return [v2 setTransform_];
}

id sub_248340504()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) removeFromSuperview];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

void *DBGlassInCallWidgetButton.init(buttonType:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v53 - v4;
  v5 = sub_248384070();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_248384100();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints] = 0;
  v12 = type metadata accessor for DBGlassInCallWidgetButton();
  v60.receiver = v1;
  v60.super_class = v12;
  v13 = objc_msgSendSuper2(&v60, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  [v14 defaultStrokeWidth];
  v17 = v16 + 20.0;
  [v14 defaultStrokeWidth];
  v19 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:v17 strokeWidth:v18];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = v15;
  [v20 addSubview_];
  v21 = *((*MEMORY[0x277D85000] & *v20) + 0x78);
  v58 = v19;
  v21(v19);

  v22 = objc_opt_self();
  if (a1 == 1)
  {
    v23 = &selRef__carSystemTertiaryColor;
    v24 = 22;
  }

  else
  {
    if (a1)
    {
      v49 = v22;
      v50 = [v22 whiteColor];
      v51 = [v49 whiteColor];

      return v20;
    }

    v23 = &selRef_externalSystemRedColor;
    v24 = 2;
  }

  v25 = v22;
  v26 = [v22 *v23];
  v27 = [v25 externalSystemRedColor];
  sub_2483840E0();
  v28 = objc_opt_self();
  v29 = *MEMORY[0x277D76920];
  v30 = [v28 tpImageForSymbolType:v24 textStyle:*MEMORY[0x277D76920] scale:3 isStaticSize:1];
  sub_2483840C0();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v5);
  sub_248384080();
  v31 = [objc_opt_self() configurationWithTextStyle:v29 scale:-1];
  sub_248384040();
  v32 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = v26;
  v33[4] = v27;
  aBlock[4] = sub_2483414AC;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24826F624;
  aBlock[3] = &block_descriptor_29;
  v34 = _Block_copy(aBlock);
  v35 = v20;
  v54 = v26;
  v53 = v27;

  [v35 setConfigurationUpdateHandler_];
  _Block_release(v34);
  v36 = v55;
  v37 = v56;
  v38 = v57;
  (*(v56 + 16))(v55, v11, v57);
  (*(v37 + 56))(v36, 0, 1, v38);
  sub_248384120();

  [v35 setNeedsUpdateConfiguration];
  v55 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24839D8B0;
  v40 = [v35 widthAnchor];

  v41 = [v40 constraintEqualToConstant_];
  *(v39 + 32) = v41;
  v42 = [v35 heightAnchor];

  v43 = [v35 widthAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v39 + 40) = v44;
  sub_248264108();
  v45 = sub_248383B00();

  [v55 activateConstraints_];

  sub_248340F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24839C7F0;
  v47 = sub_248382BE0();
  v48 = MEMORY[0x277D74B68];
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  MEMORY[0x24C1CB580](v46, sel_updateFocusEffectConstraints);

  swift_unknownObjectRelease();

  (*(v37 + 8))(v11, v38);
  return v20;
}

void sub_248340CE0(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90CF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_248384110();
  v14 = sub_248384100();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v12, 1, v14))
  {
    sub_2482A0A94(v12, v9);
    sub_248384120();

    sub_2482A0B04(v12);
  }

  else
  {
    v25 = a3;
    v16 = swift_unknownObjectUnownedLoadStrong();
    v17 = [v16 isSelected];

    if (v17)
    {
      v18 = [objc_opt_self() _carSystemPrimaryColor];
    }

    else
    {
      v19 = v26;
    }

    sub_248384090();
    sub_248384120();

    a3 = v25;
  }

  v20 = swift_unknownObjectUnownedLoadStrong();
  sub_248384110();
  if (v15(v6, 1, v14))
  {
    sub_2482A0A94(v6, v9);
    sub_248384120();

    sub_2482A0B04(v6);
  }

  else
  {
    v21 = swift_unknownObjectUnownedLoadStrong();
    v22 = [v21 isSelected];

    if (v22)
    {
      v23 = a3;
    }

    else
    {
      v24 = [objc_opt_self() whiteColor];
    }

    sub_2483840A0();
    sub_248384120();
  }
}

uint64_t sub_248340F9C()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints;
    if (*(v0 + OBJC_IVAR____TtC9DashBoard25DBGlassInCallWidgetButton_focusEffectConstraints))
    {
      v4 = objc_opt_self();
      sub_248264108();
      swift_bridgeObjectRetain_n();
      v5 = sub_248383B00();
      [v4 deactivateConstraints_];
      swift_bridgeObjectRelease_n();
    }

    v6 = [v0 traitCollection];
    [v6 displayScale];
    v8 = v7;

    if (v8 != 0.0)
    {
      v9 = [v0 traitCollection];
      [v9 displayScale];
    }

    v10 = [v0 traitCollection];
    [v10 displayScale];
    v12 = v11;

    v13 = objc_opt_self();
    [v13 defaultStrokeWidth];
    v15 = v14 + -1.0 / v12 + v14 + -1.0 / v12 + 40.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24839CCB0;
    v17 = v2;
    v18 = [v17 widthAnchor];
    v19 = [v18 constraintEqualToConstant_];

    *(v16 + 32) = v19;
    v20 = [v17 heightAnchor];
    v21 = [v17 widthAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v16 + 40) = v22;
    v23 = [v17 centerXAnchor];
    v24 = [v0 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor_];

    *(v16 + 48) = v25;
    v26 = [v17 centerYAnchor];

    v27 = [v0 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v16 + 56) = v28;
    [v13 defaultStrokeWidth];
    [v17 updateEffectWithCornerRadius:v15 * 0.5 strokeWidth:v29];
    v30 = objc_opt_self();
    sub_248264108();
    v31 = sub_248383B00();
    [v30 activateConstraints_];

    *(v0 + v3) = v16;
  }

  return result;
}

id DBGlassInCallWidgetButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBGlassInCallWidgetButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBGlassInCallWidgetButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2483414B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  sub_2483415A8(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_2483415A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_248382E50();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_248341698()
{
  v1 = *(v0 + *(*v0 + 112));

  return v1;
}

id sub_2483416FC()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t sub_24834173C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_2483417A4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_2483417A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v31 = *v5;
  v9 = v31;
  v32 = a1;
  v10 = *(v31 + 80);
  v11 = sub_2483841F0();
  v30[1] = *(v11 - 8);
  v30[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v30 - v19;
  v21 = (v5 + *(v9 + 112));
  *v21 = a2;
  v21[1] = a3;
  *(v5 + *(*v5 + 120)) = a4;

  v22 = a4;
  v23 = sub_248383930();

  v24 = [v22 objectForKey_];

  if (v24)
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37[0] = v35;
  v37[1] = v36;
  if (!*(&v36 + 1))
  {
    sub_24822D578(v37, &unk_27EE941B0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v27 = v32;
    (*(v14 + 16))(v17, v32, v10);
    swift_beginAccess();
    sub_2483414B8(v17, v10);
    swift_endAccess();

    (*(v14 + 8))(v27, v10);
    return v5;
  }

  v26 = v33;
  v25 = v34;
  sub_248380F80();
  swift_allocObject();
  sub_248380F70();
  v31 = v25;
  sub_248380F60();

  (*(v14 + 56))(v13, 0, 1, v10);
  (*(v14 + 32))(v20, v13, v10);
  (*(v14 + 16))(v17, v20, v10);
  swift_beginAccess();
  sub_2483414B8(v17, v10);
  swift_endAccess();
  sub_24823BD70(v26, v31);

  v29 = *(v14 + 8);
  v29(v32, v10);
  v29(v20, v10);
  return v5;
}

uint64_t sub_248341C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();
}

uint64_t sub_248341D24(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v33[0] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33[1] = v33 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = *(v4 + 16);
  v35 = v16;
  v15(v33 - v13, v12);
  v45 = v3;
  v46 = *(v2 + 88);
  v17 = v46;
  v18 = *(v2 + 96);
  v47 = v18;
  KeyPath = swift_getKeyPath();
  v42 = v3;
  v43 = v17;
  v44 = v18;
  swift_getKeyPath();
  (v15)(v10, v14, v3);

  sub_248382EA0();
  v19 = *(v4 + 8);
  KeyPath = v4 + 8;
  v19(v14, v3);
  v39 = v3;
  v40 = v17;
  v41 = v18;
  swift_getKeyPath();
  v36 = v3;
  v37 = v17;
  v38 = v18;
  swift_getKeyPath();
  sub_248382E90();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F78);
  if (swift_dynamicCast())
  {
    sub_24814F6F4(v48, v50);
    __swift_project_boxed_opaque_existential_0(v50, v50[3]);
    if (sub_248381810())
    {
      v20 = *(v1 + *(*v1 + 120));
      v21 = sub_248383930();
      [v20 removeObjectForKey_];

      v19(v35, v3);
      return __swift_destroy_boxed_opaque_existential_0(v50);
    }

    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    sub_24822D578(v48, &qword_27EE93F80);
  }

  v23 = *(v1 + *(*v1 + 120));
  sub_248380FB0();
  swift_allocObject();
  v24 = sub_248380FA0();
  MEMORY[0x28223BE20](v24);
  v33[-4] = v3;
  v33[-3] = v17;
  v33[-2] = v18;
  v25 = swift_getKeyPath();
  MEMORY[0x28223BE20](v25);
  v33[-4] = v3;
  v33[-3] = v17;
  v33[-2] = v18;
  swift_getKeyPath();
  v26 = v33[0];
  sub_248382E90();
  v27 = v26;

  v28 = sub_248380F90();
  v30 = v29;
  v19(v27, v3);

  v50[0] = v28;
  v50[1] = v30;
  v31 = sub_248384670();
  sub_248344170(v50);
  v32 = sub_248383930();
  [v23 setObject:v31 forKey:v32];
  swift_unknownObjectRelease();

  return (v19)(v35, v3);
}

void (*sub_2483422BC(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_248341C48();
  return sub_2483423D0;
}

void sub_2483423D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_248341D24(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_248341D24(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_248342484()
{
  swift_beginAccess();
  sub_248382EC0();
  sub_248382E60();
  return swift_endAccess();
}

uint64_t sub_248342510()
{
  v1 = *(*v0 + 104);
  v2 = sub_248382EC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2483425D0()
{
  sub_248342510();

  return swift_deallocClassInstance();
}

uint64_t sub_248342628()
{
  v1 = *v0;
  v16 = *(*v0 + 80);
  v2 = sub_248382EB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  swift_getWitnessTable();
  v6 = sub_248382D40();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(v1 + 208);
  v1 += 208;
  v11(v8);
  v12 = swift_allocObject();
  v12[2] = v16;
  v12[3] = *(v1 - 120);
  v12[4] = *(v1 - 112);
  sub_248382F60();

  (*(v3 + 8))(v5, v2);
  swift_getWitnessTable();
  v13 = sub_248382F10();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_2483428B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](*(v3 + 80));
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248384660();
  return (*(v3 + 176))(v8, a1, a2, a3);
}

void *sub_248342974()
{
  type metadata accessor for DBDefaults();
  v0 = swift_allocObject();
  result = sub_248342E04();
  qword_27EE99030 = v0;
  return result;
}

uint64_t sub_2483429B0()
{
  v0 = swift_allocObject();
  sub_248342E04();
  return v0;
}

uint64_t *sub_2483429E8()
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  return &qword_27EE99030;
}

uint64_t sub_248342A38()
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_248342AB0(uint64_t a1)
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27EE99030 = a1;
}

uint64_t (*sub_248342B30())()
{
  if (qword_27EE97EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_248342BB8(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F88);
  swift_allocObject();
  v3 = sub_248345620(a1, 0xD00000000000001CLL, 0x80000002483B3970, v2);

  return v3;
}

uint64_t sub_248342C58()
{
  v1 = *(**(v0 + 16) + 184);

  v1(&v4, v2);

  return v4;
}

uint64_t sub_248342CC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v3 = *(*v2 + 192);

  v3(&v5);
}

uint64_t sub_248342D3C()
{
  v1 = *(**(v0 + 16) + 208);

  v1(v2);
}

unint64_t sub_248342DAC()
{
  if (!(MEMORY[0x277D84F90] >> 62) || !sub_248384360())
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = MEMORY[0x277D84F90];

  return sub_24822D018(v2);
}

void *sub_248342E04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2483847E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_2483458BC(MEMORY[0x277D84F90]);
  v9 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F88);
  swift_allocObject();
  v10 = sub_248345620(v8, 0xD00000000000001CLL, 0x80000002483B3970, v9);

  v1[2] = v10;
  if (v7 >> 62 && sub_248384360())
  {
    v11 = sub_24822D018(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v1[3] = v11;
  v13[5] = v2;
  v13[2] = v1;

  sub_2483847C0();
  sub_2483847D0();
  (*(v4 + 8))(v6, v3);
  sub_248384520();

  return v1;
}

uint64_t sub_24834301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  (*(v17 + 16))(&v37 - v15, a2, v14);
  sub_248232C78(a1, v12, &qword_27EE92A98);
  v18 = *(**(v4 + 16) + 200);

  v37 = v18(v39);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v20;
  v22 = v38;
  *v20 = 0x8000000000000000;
  v24 = sub_24822B8A0(a3, a4);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v23;
  if (v22[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_2483454B0();
    goto LABEL_6;
  }

  sub_248344670(v27, isUniquelyReferenced_nonNull_native);
  v28 = sub_24822B8A0(a3, a4);
  if ((v5 & 1) != (v29 & 1))
  {
    goto LABEL_13;
  }

  v24 = v28;
LABEL_6:
  *v20 = v38;

  v30 = *v20;
  if (v5)
  {
LABEL_9:
    sub_248343300(v12, v16);
    v37(v39, 0);
  }

  v31 = sub_248345B84(MEMORY[0x277D84F90]);
  v30[(v24 >> 6) + 8] |= 1 << v24;
  v32 = (v30[6] + 16 * v24);
  *v32 = a3;
  v32[1] = a4;
  *(v30[7] + 8 * v24) = v31;
  v33 = v30[2];
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    v30[2] = v35;

    goto LABEL_9;
  }

  __break(1u);
LABEL_13:
  result = sub_2483846E0();
  __break(1u);
  return result;
}

uint64_t sub_248343300(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92A98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_24822D578(a1, &qword_27EE92A98);
    sub_248344A24(a2, v7);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_24822D578(v7, &qword_27EE92A98);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_248344F34(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_24834354C(uint64_t a1)
{
  v2 = v1;
  sub_248383BB0();

  v4 = sub_248383BA0();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v1;
  v5[5] = a1;

  v7 = sub_248383BA0();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v8[5] = a1;

  return sub_248383720();
}

uint64_t sub_24834368C(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v7 - v4, v3);
  v7[1] = a2;

  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_24834379C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v29 = a2;
  v30 = *(*a1 + *MEMORY[0x277D84568] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v26 = *(v6 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v25 = v24 - v8;
  v28 = *(v6 + 16);
  v28(v7);
  sub_248383BB0();

  v9 = sub_248383BA0();
  v24[0] = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v10 = v24[0];
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v9;
  v11[3] = v12;
  v13 = v31;
  v11[4] = v30;
  v11[5] = v13;
  v11[6] = v3;
  v11[7] = a1;
  v14 = *(v6 + 32);
  v24[1] = v6 + 32;
  v15 = v11 + v10;
  v16 = v25;
  v17 = AssociatedTypeWitness;
  v14(v15, v25, AssociatedTypeWitness);
  (v28)(v16, v29, v17);

  v18 = sub_248383BA0();
  v19 = v24[0];
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  v22 = v30;
  v21 = v31;
  *(v20 + 3) = MEMORY[0x277D85700];
  *(v20 + 4) = v22;
  *(v20 + 5) = v21;
  *(v20 + 6) = v4;
  *(v20 + 7) = a1;
  v14(&v20[v19], v16, v17);
  sub_248383720();
  return v32;
}

uint64_t sub_248343A48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(*a2 + *MEMORY[0x277D84568] + 8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13[-v6 - 8];
  v14 = v8;

  v9 = swift_readAtKeyPath();
  (*(v5 + 16))(v7);
  v9(v13, 0);

  v10 = sub_2483842A0();
  result = (*(v5 + 8))(v7, v4);
  *a3 = v10 & 1;
  return result;
}

uint64_t sub_248343BD0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a4;
  v24 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_2483841F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  if (*v22 == 1)
  {
    (*(v11 + 16))(v14, v23, AssociatedTypeWitness, v16);
    v26 = a2;

    v19 = swift_modifyAtReferenceWritableKeyPath();
    sub_248384270();
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    v19(v25, 0);
  }

  else
  {
    v26 = a2;

    v20 = swift_modifyAtReferenceWritableKeyPath();
    sub_248384280();
    (*(v8 + 8))(v10, v7);
    v20(v25, 0);
  }
}

uint64_t sub_248343E8C()
{

  return v0;
}

uint64_t sub_248343EB4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_248343EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_248382DE0();
  *a1 = result;
  return result;
}

uint64_t sub_248343F44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_248382E90();
}

uint64_t sub_248343FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  v14 = *(v7 + 16);
  v14(v16 - v12, v11);
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v6;
  swift_getKeyPath();
  v16[0] = v4;
  v16[1] = v5;
  v16[2] = v6;
  swift_getKeyPath();
  (v14)(v9, v13, v4);

  sub_248382EA0();
  return (*(v7 + 8))(v13, v4);
}

uint64_t sub_2483441C4(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98);
  v47 = a2;
  result = sub_2483845D0();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_2482EBCC0(&qword_27EE92D10);
      result = sub_2483838D0();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_248344670(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90);
  v34 = a2;
  result = sub_2483845D0();
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

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
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

uint64_t sub_248344918(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_248344A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2482E6D00(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24834514C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_248344BE8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_248344BE8(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2483842F0();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_2482EBCC0(&qword_27EE92D10);
      v21 = sub_2483838D0();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_248344F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *v3;
  v14 = sub_2482E6D00(a2);
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
      sub_24834514C();
      goto LABEL_7;
    }

    sub_2483441C4(v17, a3 & 1);
    v28 = sub_2482E6D00(a2);
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
      return sub_248344918(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2483846E0();
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
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

char *sub_24834514C()
{
  v1 = v0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98);
  v4 = *v0;
  v5 = sub_2483845C0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_2483454B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90);
  v2 = *v0;
  v3 = sub_2483845C0();
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

uint64_t sub_248345620(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = (v5 + *(*v5 + 112));
  *v7 = a2;
  v7[1] = a3;
  *(v5 + *(*v5 + 120)) = a4;

  v8 = a4;
  v9 = sub_248383930();

  v10 = [v8 objectForKey_];

  if (v10)
  {
    sub_248384230();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_24822D578(v16, &unk_27EE941B0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FD0);
    sub_248382E50();
    swift_endAccess();
    return v5;
  }

  sub_248380F80();
  swift_allocObject();
  sub_248380F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FD0);
  sub_2483462A4();
  sub_248380F60();

  swift_beginAccess();

  sub_248382E50();
  swift_endAccess();

  sub_24823BD70(v12, v13);
  return v5;
}

unint64_t sub_2483458BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F90);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2483459C0(uint64_t a1)
{
  sub_248232C78(a1, v5, &qword_27EE93FA8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FB0);
  result = swift_dynamicCast();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType);
    swift_unknownObjectRelease();
    sub_24834625C(&qword_27EE93FB8, v3, type metadata accessor for DBDefaults);
    sub_248382DE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FC0);
    sub_2483461F8();
    sub_248383000();

    swift_beginAccess();
    sub_248382DB0();
    swift_endAccess();
  }

  return result;
}

unint64_t sub_248345B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93FA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE93F98);
    v7 = sub_2483845F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_248232C78(v9, v5, &qword_27EE93FA0);
      result = sub_2482E6D00(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A40);
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE92A50);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_248345DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = **(v1 + 40);
  v7 = *(v1 + 32);

  v4 = swift_readAtKeyPath();
  (*(*(*(v3 + *MEMORY[0x277D84568] + 8) - 8) + 16))(a1);
  v4(v6, 0);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248345EF0@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  return sub_248343A48(v3, v4, a1);
}

uint64_t objectdestroy_9Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_248346074(_BYTE *a1)
{
  v3 = v1[5];
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_248343BD0(a1, v5, v6, v7, v3);
}

uint64_t sub_24834610C()
{
  result = sub_248382EC0();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2483461F8()
{
  result = qword_27EE93FC8;
  if (!qword_27EE93FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FC8);
  }

  return result;
}

uint64_t sub_24834625C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2483462A4()
{
  result = qword_27EE93FD8;
  if (!qword_27EE93FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE93FD0);
    sub_248346330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FD8);
  }

  return result;
}

unint64_t sub_248346330()
{
  result = qword_27EE93FE0;
  if (!qword_27EE93FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE92D08);
    sub_2483463EC(&qword_27EE93FE8, &unk_27EE92A40);
    sub_2483463EC(&unk_27EE93FF0, &unk_27EE92A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE93FE0);
  }

  return result;
}

uint64_t sub_2483463EC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DBUISyncSessionError.hashValue.getter(unsigned __int8 a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  return sub_2483847B0();
}

uint64_t sub_2483464E4(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_248346520(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x80000002483B3A20;
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xE500000000000000;
      v3 = 0x7964616572;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = 0x696C616974696E69;
    }

    if (v2)
    {
      v4 = 0x80000002483B3A00;
    }

    else
    {
      v4 = 0xEB0000000064657ALL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002483B3A20;
      if (v3 != 0xD000000000000024)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE500000000000000;
      if (v3 != 0x7964616572)
      {
LABEL_26:
        v7 = sub_248384680();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x696C616974696E69;
    }

    if (a2)
    {
      v6 = 0x80000002483B3A00;
    }

    else
    {
      v6 = 0xEB0000000064657ALL;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_248346680()
{
  v1 = *v0;
  sub_248384780();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1CBD70](v2);
  return sub_2483847B0();
}

uint64_t sub_2483466D0()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x24C1CBD70](v1);
}

uint64_t sub_248346708()
{
  v1 = *v0;
  sub_248384780();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x24C1CBD70](v2);
  return sub_2483847B0();
}

void *sub_248346754@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_248346774(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_24834678C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_vehicleID);

  return v1;
}

uint64_t sub_2483467C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard15DBUISyncSession_displayID);

  return v1;
}

uint64_t sub_24834680C()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_ssn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248346850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_ssn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248346908()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_nextTxSn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24834694C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_nextTxSn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248346A04()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastAckSn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248346A48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastAckSn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248346B00()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastRxSn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248346B44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_lastRxSn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248346BFC()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248346C40(char a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_state;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248346CF8()
{
  v1 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_248346D3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_248346DF0(unsigned __int8 a1)
{
  v1 = 0x696C616974696E69;
  v2 = 0xD000000000000024;
  if (a1 != 2)
  {
    v2 = 0x7964616572;
  }

  if (a1)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_248346E88()
{
  sub_248384780();
  sub_2483839E0();

  return sub_2483847B0();
}

uint64_t sub_248346F5C()
{
  sub_2483839E0();
}

uint64_t sub_24834701C()
{
  sub_248384780();
  sub_2483839E0();

  return sub_2483847B0();
}

uint64_t sub_2483470EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24834B008();
  *a1 = result;
  return result;
}

void sub_24834711C(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000064657ALL;
  v3 = 0x696C616974696E69;
  v4 = 0x80000002483B3A20;
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0x7964616572;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x80000002483B3A00;
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

uint64_t DBUISyncSession.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBUISyncSession.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard15DBUISyncSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}