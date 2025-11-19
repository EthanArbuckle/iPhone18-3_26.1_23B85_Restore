id sub_1C2DE9654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApertureBannerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C2DE98E4(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController];
  if (v4)
  {
    v5 = [v4 view];
    if (!v5)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [a2 view];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = v9;
  [v8 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C2E7A700;
  v12 = [a1 view];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [a2 view];
  if (!v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v11 + 32) = v18;
  v19 = [a1 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [a2 view];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v11 + 40) = v25;
  v26 = [a1 view];
  if (!v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [a2 view];
  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v11 + 48) = v32;
  v33 = [a1 view];
  if (!v33)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [a2 view];
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v38 = objc_opt_self();
  v39 = [v37 bottomAnchor];

  v40 = [v35 constraintEqualToAnchor_];
  *(v11 + 56) = v40;
  sub_1C2CBF630();
  v41 = sub_1C2E75D64();

  [v38 activateConstraints_];
}

uint64_t sub_1C2DE9EA8(uint64_t result)
{
  if (result)
  {
    v2 = OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_alertingAssertion;
    if (!*&v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_alertingAssertion])
    {
      v3 = [objc_msgSend(v1 systemApertureElementContext)];
      swift_unknownObjectRelease();
      *&v1[v2] = v3;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
      if (v3)
      {
        [v3 setAutomaticallyInvalidatable_];

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1C2DE9F70(void *a1)
{
  v3 = sub_1C2DEA080([v1 activeLayoutMode]);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v7[4] = sub_1C2DEA7FC;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C2D9F5B8;
  v7[3] = &block_descriptor_19;
  v6 = _Block_copy(v7);

  [a1 animateAlongsideTransition:v6 completion:0];
  _Block_release(v6);
}

id sub_1C2DEA080(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a1 != 3)
  {
    return v2;
  }

  v3 = v1;
  v32 = MEMORY[0x1E69E7CC0];
  v4 = [v1 leadingView];
  v5 = &selRef_insertSublayer_atIndex_;
  if (!v4)
  {
    v6 = v2;
    goto LABEL_9;
  }

  v6 = v4;
  v7 = [v4 superview];
  if (!v7)
  {

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v8 = [v6 centerXAnchor];
  result = [v3 view];
  if (!result)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

  v12 = [v11 centerXAnchor];
  v13 = [v8 constraintEqualToAnchor_];

  MEMORY[0x1C6926780]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    sub_1C2E75DB4();

    v6 = v32;
LABEL_9:
    v14 = [v3 trailingView];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 v5[148]];
      if (v16)
      {

        v17 = [v15 centerXAnchor];
        result = [v3 view];
        if (!result)
        {
          goto LABEL_48;
        }

        v18 = result;
        v19 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

        v20 = [v19 centerXAnchor];
        v21 = [v17 constraintEqualToAnchor_];

        MEMORY[0x1C6926780]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();

        v6 = v32;
      }

      else
      {
      }
    }

    v31 = v2;
    if (v6 >> 62)
    {
LABEL_44:
      v22 = sub_1C2E764E4();
    }

    else
    {
      v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v24 = 0;
      v5 = (v6 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1C6927010](v24, v6);
        }

        else
        {
          if (v24 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v25 = *(v6 + 8 * v24 + 32);
        }

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        MEMORY[0x1C6926780](v25);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        ++v24;
      }

      while (v26 != v22);
      v2 = v31;
      if (v31 >> 62)
      {
        goto LABEL_39;
      }

LABEL_30:
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_30;
    }

LABEL_39:
    v3 = sub_1C2E764E4();
    if (!v3)
    {
LABEL_40:

      return MEMORY[0x1E69E7CC0];
    }

LABEL_31:
    v30 = v23;
    sub_1C2E76634();
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_46:
    sub_1C2E75D94();
  }

  v27 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6927010](v27, v2);
    }

    else
    {
      v28 = *(v2 + 8 * v27 + 32);
    }

    ++v27;
    LODWORD(v29) = 1144750080;
    [v28 setPriority_];
    sub_1C2E76614();
    sub_1C2E76644();
    sub_1C2E76654();
    sub_1C2E76624();
  }

  while (v3 != v27);

  return v30;
}

void sub_1C2DEA560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong activeLayoutMode] == 4)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = [v5 leadingView];
    if (v7)
    {
      v8 = v7;
      [v7 setAlpha_];
    }

    v9 = [v5 minimalView];
    if (v9)
    {
      v10 = v9;
      [v9 setAlpha_];
    }

    v11 = [v5 trailingView];
    if (v11)
    {
      v12 = v11;
      [v11 setAlpha_];
    }

    v13 = objc_opt_self();
    v14 = OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_activeConstraints;
    sub_1C2CBF630();

    v15 = sub_1C2E75D64();

    [v13 deactivateConstraints_];

    *&v5[v14] = a3;

    v16 = *&v5[v14];
    if (v16 >> 62)
    {
      if (!sub_1C2E764E4())
      {
LABEL_14:
        v18 = [v5 view];
        if (v18)
        {
          v19 = v18;
          [v18 layoutSubviews];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v17 = sub_1C2E75D64();

    [v13 activateConstraints_];

    goto LABEL_14;
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_1C2DEA81C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6927010](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C2DEA89C;
  }

  __break(1u);
  return result;
}

char *sub_1C2DEA8A4(void *a1)
{
  *&v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_alertingAssertion] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_activeConstraints] = MEMORY[0x1E69E7CC0];
  v3 = &v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_accessoryViews];
  v4 = type metadata accessor for ApertureTemplateView();
  v5 = [objc_allocWithZone(v4) init];
  v6 = [objc_allocWithZone(v4) init];
  v7 = [objc_allocWithZone(v4) init];
  *v3 = v5;
  *(v3 + 1) = v6;
  *(v3 + 2) = v7;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_apertureBannerElement] = a1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for ApertureBannerViewController();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context];
  v12 = *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_context];
  *v11 = sub_1C2DEABE8;
  v11[1] = v10;
  v13 = v9;

  sub_1C2C71668(v12);

  v14 = &v13[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_accessoryViews];
  v15 = *&v13[OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_accessoryViews];
  v16 = *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView];
  *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_leadingView] = v15;
  v17 = v15;

  v18 = *(v14 + 1);
  v19 = *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView];
  *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_trailingView] = v18;
  v20 = v18;

  v21 = *(v14 + 2);
  v22 = *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView];
  *&v8[OBJC_IVAR____TtC16CommunicationsUI21ApertureBannerElement_minimalView] = v21;

  return v13;
}

void sub_1C2DEAA88()
{
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_alertingAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_activeConstraints) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_accessoryViews);
  v2 = type metadata accessor for ApertureTemplateView();
  v3 = [objc_allocWithZone(v2) init];
  v4 = [objc_allocWithZone(v2) init];
  v5 = [objc_allocWithZone(v2) init];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
  sub_1C2E766F4();
  __break(1u);
}

void sub_1C2DEAB7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController;
  [*(v1 + OBJC_IVAR____TtC16CommunicationsUI28ApertureBannerViewController_shownViewController) removeFromParentViewController];
  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  v4 = v2;
}

uint64_t sub_1C2DEAC08(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6927010](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C2E764E4();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1C2DEAD44(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t CallRecordingRecordingView.options.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void CallRecordingRecordingView.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options;
  swift_beginAccess();
  *(v1 + v3) = v2;
  sub_1C2DEAEE4();
}

void sub_1C2DEAEE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);
  v2 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options;
  swift_beginAccess();
  [v1 setHidden_];
  v3 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  [v3 setHidden_];

  v4 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton, sub_1C2DEC67C);
  [v4 setHidden_];
}

void (*CallRecordingRecordingView.options.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2DEB030;
}

void sub_1C2DEB030(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C2DEAEE4();
  }
}

id CallRecordingRecordingView.backgroundView.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_backgroundView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CallRecordingRecordingView.backgroundView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_backgroundView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t CallRecordingRecordingView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CallRecordingRecordingView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C2CA1AAC;
}

uint64_t CallRecordingRecordingView.stopwatchTime.getter()
{
  v0 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1C2E75C64();

  return v2;
}

void sub_1C2DEB35C(uint64_t *a1@<X8>)
{
  v2 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  v3 = [v2 text];

  if (v3)
  {
    v4 = sub_1C2E75C64();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *a1 = v4;
  a1[1] = v6;
}

void sub_1C2DEB3F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  if (v1)
  {
    v3 = sub_1C2E75C24();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

void CallRecordingRecordingView.stopwatchTime.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  if (a2)
  {
    v4 = sub_1C2E75C24();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];
}

void (*CallRecordingRecordingView.stopwatchTime.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  v4 = [v3 text];

  if (v4)
  {
    v5 = sub_1C2E75C64();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1C2DEB5E8;
}

void sub_1C2DEB5E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch);
  if (a2)
  {
    v5 = v3;
    if (v2)
    {

      v4 = sub_1C2E75C24();
    }

    else
    {
      v4 = 0;
    }

    [v5 setText_];
  }

  else
  {
    v5 = v3;
    if (v2)
    {
      v4 = sub_1C2E75C24();

      [v5 setText_];
    }

    else
    {
      v4 = 0;
      [v5 setText_];
    }
  }
}

uint64_t CallRecordingRecordingView.waveformValues.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);
  v2 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_beginAccess();

  return v3;
}

uint64_t sub_1C2DEB77C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);
  v4 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_remoteValues;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *a2 = v5;
  a2[1] = v7;
}

void sub_1C2DEB818(void **a1, void *a2)
{
  v2._rawValue = *a1;
  v3._rawValue = a1[1];
  v4 = *(*a2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);

  v5 = v4;
  WaveformView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(v2, v3);
}

void CallRecordingRecordingView.waveformValues.setter(Swift::OpaquePointer a1, Swift::OpaquePointer a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);
  WaveformView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(a1, a2);
}

void (*CallRecordingRecordingView.waveformValues.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_localValues;
  swift_beginAccess();
  v8 = *(v6 + v7);
  v9 = OBJC_IVAR____TtC16CommunicationsUI12WaveformView_remoteValues;
  swift_beginAccess();
  v10 = *(v6 + v9);
  *(v4 + 48) = v8;
  *(v4 + 56) = v10;

  return sub_1C2DEBA0C;
}

void sub_1C2DEBA0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3._rawValue = *(*a1 + 48);
  v4._rawValue = *(*a1 + 56);
  v5 = *(*(*a1 + 64) + *(*a1 + 72));
  if (a2)
  {

    v6 = v5;
    WaveformView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(v3, v4);
  }

  else
  {
    v7 = v5;
    WaveformView.updatePowerLevels(latestRemoteSpectrum:latestLocalSpectrum:)(v3, v4);
  }

  free(v2);
}

id CallRecordingRecordingView.init(config:usesGlass:)(void *a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch] = 0;
  v7 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform;
  v8 = objc_allocWithZone(type metadata accessor for WaveformView());
  v9 = WaveformView.init(needsBackdropFilterLayer:needsFilterWaveformBars:bandPadding:)(1, 0, 3.0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v10) = 1132068864;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];
  *&v3[v7] = v9;
  sub_1C2C6E3A4(a1, &v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config]);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 40))(v11, v12);
  v14 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  *&v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_backgroundView] = AudioMiddleStackBackgroundView.init(effect:usesGlass:)(v13, a2);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(&v23, v15, v16);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_options] = v23;
  v22.receiver = v3;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C2DEBD6C();
  sub_1C2DEAEE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F9D8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C2E7A930;
  v19 = sub_1C2E72BD4();
  v20 = MEMORY[0x1E69DC0F8];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1C2E761B4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

void sub_1C2DEBD6C()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setUserInteractionEnabled_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleTapContainer];
  [v2 setNumberOfTapsRequired_];
  [v1 addGestureRecognizer_];

  v3 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_backgroundView;
  swift_beginAccess();
  [v1 addSubview_];
  v4 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView, sub_1C2DECBC4);
  [v1 addSubview_];

  v5 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform] heightAnchor];
  v6 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton, sub_1C2DEC67C);
  v7 = [v6 heightAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v9 = &v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config];
  v10 = *&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 24];
  v11 = *&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config], v10);
  v12 = *((*(v11 + 24))(v10, v11) + 16);

  if (v12 >= 2)
  {
    sub_1C2DEC43C();
    v55 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C2E7EB10;
    *(v13 + 32) = v8;
    v14 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView;
    v15 = *&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView];
    v16 = v8;
    v56 = v8;
    v17 = [v15 topAnchor];
    v18 = [v1 topAnchor];
    v20 = *(v9 + 3);
    v19 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, v20);
    (*(v19 + 8))(v20, v19);
    v21 = [v17 constraintEqualToAnchor:v18 constant:?];

    *(v13 + 40) = v21;
    v22 = [*&v1[v14] bottomAnchor];
    v23 = [v1 bottomAnchor];
    v24 = *(v9 + 3);
    v25 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, v24);
    (*(v25 + 8))(v24, v25);
    v27 = [v22 constraintEqualToAnchor:v23 constant:-v26];

    *(v13 + 48) = v27;
    v28 = [*&v1[v14] leadingAnchor];
    v29 = [v1 leadingAnchor];
    v30 = *(v9 + 3);
    v31 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, v30);
    (*(v31 + 8))(v30, v31);
    v33 = [v28 constraintEqualToAnchor:v29 constant:v32];

    *(v13 + 56) = v33;
    v34 = [*&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton] trailingAnchor];
    v35 = [v1 trailingAnchor];
    v36 = *(v9 + 3);
    v37 = *(v9 + 4);
    __swift_project_boxed_opaque_existential_1(v9, v36);
    (*(v37 + 8))(v36, v37);
    v39 = [v34 constraintEqualToAnchor:v35 constant:-v38];

    v8 = v56;
    *(v13 + 64) = v39;
    v40 = [*&v1[v3] topAnchor];
    v41 = [v1 topAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    *(v13 + 72) = v42;
    v43 = [*&v1[v3] leadingAnchor];
    v44 = [v1 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor_];

    *(v13 + 80) = v45;
    v46 = [*&v1[v3] trailingAnchor];
    v47 = [v1 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor_];

    *(v13 + 88) = v48;
    v49 = [*&v1[v3] bottomAnchor];
    v50 = [v1 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor_];

    *(v13 + 96) = v51;
    v52 = [v1 heightAnchor];
    v53 = [v52 constraintGreaterThanOrEqualToConstant_];

    *(v13 + 104) = v53;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v54 = sub_1C2E75D64();

    [v55 activateConstraints_];
  }
}

id sub_1C2DEC43C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config];
  v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 24];
  v4 = *&v0[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config], v3);
  v5 = *((*(v4 + 24))(v3, v4) + 16);

  if (v5 < 2)
  {
    return result;
  }

  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, v7);
  result = (*(v8 + 24))(v7, v8);
  if (!*(result + 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(result + 4);

  v10 = *(v2 + 3);
  v11 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(v2, v10);
  result = (*(v11 + 24))(v10, v11);
  if (*(result + 2) < 2uLL)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = *(result + 5);

  v13 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView, sub_1C2DECBC4);
  if (sub_1C2DECFF0(v1))
  {
    v14 = v9 + -4.0;
  }

  else
  {
    v14 = v9;
  }

  [v13 setCustomSpacing:*&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform] afterView:v14];

  v15 = *&v1[OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView];
  if (sub_1C2DECFF0(v1))
  {
    v16 = v9 + -4.0;
  }

  else
  {
    v16 = v12;
  }

  v17 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  [v15 setCustomSpacing:v17 afterView:v16];

  return [v1 setNeedsLayout];
}

id sub_1C2DEC67C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C2E81350;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 systemRedColor];
  *(v3 + 40) = [v4 whiteColor];
  sub_1C2C6E1B4(0, &qword_1EC05CA78);
  v5 = sub_1C2E75D64();

  v6 = objc_opt_self();
  v7 = [v6 configurationWithPaletteColors_];

  v8 = [v6 configurationWithTextStyle_];
  v9 = [v8 configurationByApplyingConfiguration_];
  v10 = sub_1C2E75C24();
  v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

  [v2 setImage:v11 forState:0];
  [v2 setContentMode_];
  v12 = [v2 imageView];
  if (v12)
  {
    v13 = v12;
    [v12 setContentMode_];
  }

  [v2 addTarget:a1 action:sel_handleTapStopRecording forControlEvents:64];
  v14 = [v2 imageView];
  if (v14)
  {
    v15 = v14;
    [v14 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  v16 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 24);
  v17 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config), v16);
  v18 = (*(v17 + 32))(v16, v17);
  [v2 setMaximumContentSizeCategory_];

  [v2 setMinimumContentSizeCategory_];
  LODWORD(v19) = 1144750080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v19];
  LODWORD(v20) = 1144750080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v20];
  v21 = [v2 imageView];
  if (v21)
  {
    v22 = v21;
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    v32 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C2E81350;
    v24 = [v22 heightAnchor];
    v25 = [v2 heightAnchor];

    v26 = [v24 constraintEqualToAnchor_];
    *(v23 + 32) = v26;
    v27 = [v22 widthAnchor];
    v28 = [v22 heightAnchor];

    v29 = [v27 constraintEqualToAnchor_];
    *(v23 + 40) = v29;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v30 = sub_1C2E75D64();

    [v32 activateConstraints_];
  }

  else
  {
    v30 = v8;
    v8 = v11;
    v11 = v7;
    v7 = v2;
  }

  return v2;
}

id sub_1C2DECB60(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1C2DECBC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C2E7A710;
  v3 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform);
  *(v2 + 32) = v3;
  v4 = v3;
  *(v2 + 40) = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch, sub_1C2DECD3C);
  *(v2 + 48) = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton, sub_1C2DEC67C);
  v5 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1C2C6E1B4(0, &qword_1EC062710);
  v6 = sub_1C2E75D64();

  v7 = [v5 initWithArrangedSubviews_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setDistribution_];
  [v7 setAxis_];
  [v7 setSpacing_];
  [v7 setAlignment_];
  return v7;
}

id sub_1C2DECD3C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setTextAlignment_];
  [v2 setNumberOfLines_];
  v3 = [objc_opt_self() labelColor];
  [v2 setTextColor_];

  [v2 setPreferredVibrancy_];
  [v2 setLineBreakMode_];
  [v2 setAdjustsFontForContentSizeCategory_];
  v4 = objc_opt_self();
  v5 = [v4 monospacedDigitSystemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
  v6 = [v5 fontDescriptor];
  v7 = [v6 fontDescriptorWithSymbolicTraits_];

  if (v7)
  {
    v8 = [v4 fontWithDescriptor:v7 size:0.0];

    v5 = v8;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v10 = [v9 scaledFontForFont_];

  [v2 setFont_];
  v11 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 24);
  v12 = *(a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_config), v11);
  v13 = (*(v12 + 32))(v11, v12);
  [v2 setMaximumContentSizeCategory_];

  [v2 setMinimumContentSizeCategory_];
  LODWORD(v14) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v14];

  return v2;
}

uint64_t sub_1C2DECFF0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0630A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7C4C0;
  v3 = *MEMORY[0x1E69DDC38];
  *(inited + 32) = *MEMORY[0x1E69DDC38];
  v4 = *MEMORY[0x1E69DDC30];
  v5 = *MEMORY[0x1E69DDC28];
  *(inited + 40) = *MEMORY[0x1E69DDC30];
  *(inited + 48) = v5;
  v6 = *MEMORY[0x1E69DDC20];
  *(inited + 56) = *MEMORY[0x1E69DDC20];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = [a1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v15 = v12;
  v14[2] = &v15;
  LOBYTE(v11) = sub_1C2DEAD44(sub_1C2DEDFEC, v14, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v11 & 1;
}

Swift::Void __swiftcall CallRecordingRecordingView.handleTapStopRecording()()
{
  v1 = v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall CallRecordingRecordingView.setAXLabelForStopButton(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v2 = sub_1C2DECB60(&OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton, sub_1C2DEC67C);
  v3 = object;
  v4 = v2;
  if (v3)
  {
    v5 = sub_1C2E75C24();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 setAccessibilityLabel_];
}

uint64_t CallRecordingRecordingView.updateBackground(_:)(void *a1)
{
  v2 = sub_1C2E759D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E75A04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C6E1B4(0, &qword_1EDDCD9E0);
  v10 = sub_1C2E76084();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1C2DEDC8C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2CB2CC4;
  aBlock[3] = &block_descriptor_20;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_1C2E759F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C2DEDCAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C60);
  sub_1C2CF04C8();
  sub_1C2E76464();
  MEMORY[0x1C6926AC0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1C2DED658(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_backgroundView;
    v5 = Strong;
    swift_beginAccess();
    [*&v5[v4] removeFromSuperview];
    v6 = *&v5[v4];
    *&v5[v4] = a2;
    v7 = a2;

    v8 = v5;
    [v8 addSubview_];
    [v8 sendSubviewToBack_];
    v9 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C2E7A700;
    v11 = [*&v5[v4] topAnchor];
    v12 = [v8 topAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v10 + 32) = v13;
    v14 = [*&v5[v4] leadingAnchor];
    v15 = [v8 leadingAnchor];

    v16 = [v14 constraintEqualToAnchor_];
    *(v10 + 40) = v16;
    v17 = [*&v5[v4] trailingAnchor];
    v18 = [v8 trailingAnchor];

    v19 = [v17 constraintEqualToAnchor_];
    *(v10 + 48) = v19;
    v20 = [*&v5[v4] bottomAnchor];
    v21 = [v8 bottomAnchor];

    v22 = [v20 constraintEqualToAnchor_];
    *(v10 + 56) = v22;
    sub_1C2C6E1B4(0, &qword_1EC062670);
    v23 = sub_1C2E75D64();

    [v9 activateConstraints_];
  }
}

id CallRecordingRecordingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CallRecordingRecordingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2DEDAE0()
{
  v0 = sub_1C2E75C64();
  v2 = v1;
  if (v0 == sub_1C2E75C64() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C2E767A4();
  }

  return v5 & 1;
}

id sub_1C2DEDB70(void *a1, void *a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_1C2E75C64();
  v8 = v7;
  if (v6 == sub_1C2E75C64() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1C2E767A4();

    if ((v11 & 1) == 0)
    {
      return sub_1C2DEC43C();
    }
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2DEDCAC()
{
  result = qword_1EDDCDA00;
  if (!qword_1EDDCDA00)
  {
    sub_1C2E759D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDA00);
  }

  return result;
}

unint64_t sub_1C2DEDD08()
{
  result = qword_1EC063080;
  if (!qword_1EC063080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063080);
  }

  return result;
}

unint64_t sub_1C2DEDD60()
{
  result = qword_1EC063088;
  if (!qword_1EC063088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063088);
  }

  return result;
}

unint64_t sub_1C2DEDDB8()
{
  result = qword_1EC063090;
  if (!qword_1EC063090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063090);
  }

  return result;
}

unint64_t sub_1C2DEDE10()
{
  result = qword_1EC063098;
  if (!qword_1EC063098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063098);
  }

  return result;
}

void sub_1C2DEDEEC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopButton) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView____lazy_storage___stopwatch) = 0;
  v2 = OBJC_IVAR____TtC16CommunicationsUI26CallRecordingRecordingView_waveform;
  v3 = objc_allocWithZone(type metadata accessor for WaveformView());
  v4 = WaveformView.init(needsBackdropFilterLayer:needsFilterWaveformBars:bandPadding:)(1, 0, 3.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  *(v1 + v2) = v4;
  sub_1C2E766F4();
  __break(1u);
}

uint64_t (*AudioCallAcceptControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DEE10C;
}

uint64_t sub_1C2DEE06C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C6E3A4(result + 24, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t AudioCallAcceptControlViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioCallAcceptControlViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioCallAcceptControlViewModel.init(service:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_1C2E757E4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 24);
  v29 = xmmword_1C2E8C590;
  v30 = 1;
  sub_1C2DEE870(&qword_1EC0630B0, type metadata accessor for AudioCallAcceptControlViewModel);
  v9 = sub_1C2DFDC24(0, &v29);
  sub_1C2C77608(v29, *(&v29 + 1), v30);
  v10 = sub_1C2E74F54();
  swift_getKeyPath();
  *&v29 = v9;
  sub_1C2DEE870(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A64();

  *&v29 = v9;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  v11 = *(v9 + 24);
  *(v9 + 24) = v10;
  v12 = *(v9 + 32);
  *(v9 + 32) = 1;
  sub_1C2CC2678(v11, v12);
  v28 = v9;
  swift_getKeyPath();
  sub_1C2E71A74();

  v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74534();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_1C2E745C4();
  sub_1C2CB410C(v8);
  v17 = v23;
  v16 = v24;
  (*(v4 + 104))(v23, *MEMORY[0x1E6981DF0], v24);
  type metadata accessor for ControlTextConfiguration();
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v19 = 0;
  v19[8] = 1;
  sub_1C2E71A94();
  v18[2] = 0x747065636341;
  v18[3] = 0xE600000000000000;
  v18[4] = v13;
  v18[5] = v15;
  (*(v4 + 32))(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v17, v16);
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v19 = 0;
  v19[8] = 1;
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  sub_1C2E71A94();
  *(v20 + 16) = v9;
  swift_getKeyPath();
  v26 = v20;
  v27 = v18;
  v28 = v20;
  sub_1C2DEE870(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v2 + 16) = v20;
  return v2;
}

uint64_t AudioCallAcceptControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI31AudioCallAcceptControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallAcceptControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI31AudioCallAcceptControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2DEE770())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2DEE994;
}

uint64_t type metadata accessor for AudioCallAcceptControlViewModel()
{
  result = qword_1EC0630C0;
  if (!qword_1EC0630C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DEE818(uint64_t a1)
{
  result = sub_1C2DEE870(&qword_1EC0630B8, type metadata accessor for AudioCallAcceptControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2DEE870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DEE8C0()
{
  result = sub_1C2E71AA4();
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

uint64_t ParticipantLabelView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for ParticipantLabelViewModel();
  result = sub_1C2E75174();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double ParticipantLabelView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1C2E73C24();
  v29 = 0;
  sub_1C2DEEBFC(v3, v4, &v18);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v30 = v18;
  v31 = v19;
  v40[6] = v24;
  v40[7] = v25;
  v40[8] = v26;
  v40[2] = v20;
  v40[3] = v21;
  v40[4] = v22;
  v40[5] = v23;
  v39 = v27;
  v41 = v27;
  v40[0] = v18;
  v40[1] = v19;
  sub_1C2C736A4(&v30, &v17, &qword_1EC0630D0);
  sub_1C2C73644(v40, &qword_1EC0630D0);
  *&v28[103] = v36;
  *&v28[119] = v37;
  *&v28[135] = v38;
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  *&v28[87] = v35;
  *&v28[7] = v30;
  v28[151] = v39;
  *&v28[23] = v31;
  v6 = v29;
  KeyPath = swift_getKeyPath();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0630D8) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v10 = *MEMORY[0x1E697DBA8];
  v11 = sub_1C2E730D4();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = KeyPath;
  v12 = *&v28[112];
  *(a1 + 113) = *&v28[96];
  *(a1 + 129) = v12;
  *(a1 + 145) = *&v28[128];
  v13 = *&v28[48];
  *(a1 + 49) = *&v28[32];
  *(a1 + 65) = v13;
  v14 = *&v28[80];
  *(a1 + 81) = *&v28[64];
  *(a1 + 97) = v14;
  result = *v28;
  v16 = *&v28[16];
  *(a1 + 17) = *v28;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 161) = *&v28[144];
  *(a1 + 33) = v16;
  return result;
}

uint64_t sub_1C2DEEBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C2E73DD4();
  LOBYTE(v30[0]) = 0;
  sub_1C2DEEE24(a1, a2, &v32);
  v26 = v36;
  v27[0] = *v37;
  *(v27 + 9) = *&v37[9];
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v28[0] = v32;
  v28[1] = v33;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v29[0] = *v37;
  *(v29 + 9) = *&v37[9];
  sub_1C2C736A4(&v22, v40, &qword_1EC0630F8);
  sub_1C2C73644(v28, &qword_1EC0630F8);
  *&v21[55] = v25;
  *&v21[71] = v26;
  *&v21[87] = v27[0];
  *&v21[96] = *(v27 + 9);
  *&v21[7] = v22;
  *&v21[23] = v23;
  *&v21[39] = v24;
  v7 = v30[0];
  v30[0] = v6;
  v30[1] = 0;
  v31[0] = v7;
  *&v31[33] = *&v21[32];
  v9 = *&v21[16];
  v8 = *&v21[32];
  *&v31[17] = *&v21[16];
  v10 = *v21;
  *&v31[1] = *v21;
  *&v31[97] = *(v27 + 9);
  v12 = *&v21[80];
  v11 = *(v27 + 9);
  *&v31[81] = *&v21[80];
  *&v31[65] = *&v21[64];
  v14 = *&v21[48];
  v13 = *&v21[64];
  *&v31[49] = *&v21[48];
  v34 = *&v31[16];
  v35 = *&v31[32];
  v32 = v6;
  v33 = *v31;
  v15 = *&v31[96];
  *&v37[16] = *&v31[80];
  v38 = *&v31[96];
  v36 = *&v31[48];
  *v37 = *&v31[64];
  *(a3 + 96) = *&v31[80];
  *(a3 + 112) = v15;
  v16 = v35;
  *(a3 + 32) = v34;
  *(a3 + 48) = v16;
  v17 = *v37;
  *(a3 + 64) = v36;
  *(a3 + 80) = v17;
  v18 = v33;
  *a3 = v32;
  *(a3 + 16) = v18;
  v45 = v14;
  v46 = v13;
  v47 = v12;
  LOBYTE(v39) = v31[112];
  v20[136] = 1;
  *(a3 + 128) = v39;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  v40[0] = v6;
  v40[1] = 0;
  v41 = v7;
  v48 = v11;
  v42 = v10;
  v43 = v9;
  v44 = v8;
  sub_1C2C736A4(v30, v20, &qword_1EC063100);
  return sub_1C2C73644(v40, &qword_1EC063100);
}

uint64_t sub_1C2DEEE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v107 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v97 - v6;
  v113 = sub_1C2E74624();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v108 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97 - v12;
  v14 = sub_1C2E71664();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  v110 = a1;
  v123 = a1;
  v124 = a2;
  v116 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  v20 = v121;
  swift_getKeyPath();
  v123 = v20;
  v115 = sub_1C2DEFD80();
  sub_1C2E71A64();

  v21 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitle;
  swift_beginAccess();
  sub_1C2C736A4(v20 + v21, v13, &qword_1EC05E088);

  v22 = (*(v15 + 48))(v13, 1, v14);
  v105 = v7;
  if (v22 == 1)
  {
    sub_1C2C73644(v13, &qword_1EC05E088);
    v104 = 0;
    v103 = 0;
    v100 = 0;
    v102 = 0;
    v101 = 0;
    v106 = 0;
    v99 = *MEMORY[0x1E6980EA8];
    v23 = v116;
    v24 = v110;
    v25 = v108;
  }

  else
  {
    v26 = *(v15 + 32);
    v104 = v19;
    v26(v19, v13, v14);
    (*(v15 + 16))(v109, v19, v14);
    v101 = sub_1C2E74894();
    v98 = v14;
    v28 = v27;
    v30 = v29;
    sub_1C2E74594();
    v31 = sub_1C2E74534();
    v32 = *(*(v31 - 8) + 56);
    v106 = 1;
    v33 = v111;
    v32(v111, 1, 1, v31);
    sub_1C2E745C4();
    sub_1C2C73644(v33, &qword_1EC05D810);
    v34 = v108;
    v35 = v112;
    v36 = *(v112 + 104);
    v99 = *MEMORY[0x1E6980EA8];
    v37 = v113;
    v36(v108);
    sub_1C2E74664();

    (*(v35 + 8))(v34, v37);
    v38 = v101;
    v103 = sub_1C2E747F4();
    v102 = v39;
    v41 = v40;

    sub_1C2C72340(v38, v28, v30 & 1);

    v121 = v110;
    v122 = v116;
    sub_1C2E75184();
    v42 = v118;
    swift_getKeyPath();
    v121 = v42;
    sub_1C2E71A64();

    v43 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__subtitleStyle;
    swift_beginAccess();
    v44 = v42 + v43;
    v14 = v98;
    sub_1C2C736A4(v44, v7, &qword_1EC0603A8);

    v45 = sub_1C2DEFA28(v7);
    sub_1C2C73644(v7, &qword_1EC0603A8);
    v121 = v45;
    v46 = v103;
    v47 = v15;
    v48 = v102;
    v49 = sub_1C2E74794();
    v51 = v50;
    LODWORD(v101) = v52;
    v54 = v53;
    LOBYTE(v52) = v41 & 1;
    v55 = v48;
    v15 = v47;
    v25 = v108;
    sub_1C2C72340(v46, v55, v52);

    (*(v47 + 8))(v104, v14);
    KeyPath = swift_getKeyPath();
    v104 = v49;
    v103 = v51;
    v100 = v101 & 1;
    sub_1C2C72330(v49, v51, v100);
    v102 = v54;

    v101 = KeyPath;

    v23 = v116;
    v24 = v110;
  }

  v121 = v24;
  v122 = v23;
  sub_1C2E75184();
  v57 = v118;
  swift_getKeyPath();
  v121 = v57;
  sub_1C2E71A64();

  v58 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__title;
  swift_beginAccess();
  (*(v15 + 16))(v109, v57 + v58, v14);

  v59 = sub_1C2E74894();
  v60 = v24;
  v62 = v61;
  LOBYTE(v57) = v63;
  sub_1C2E74584();
  v64 = sub_1C2E74534();
  v65 = v111;
  (*(*(v64 - 8) + 56))(v111, 1, 1, v64);
  sub_1C2E745C4();
  sub_1C2C73644(v65, &qword_1EC05D810);
  v66 = v112;
  v67 = v113;
  (*(v112 + 104))(v25, v99, v113);
  sub_1C2E74664();

  (*(v66 + 8))(v25, v67);
  v68 = sub_1C2E747F4();
  v70 = v69;
  LOBYTE(v67) = v71;

  sub_1C2C72340(v59, v62, v57 & 1);

  v118 = v60;
  v119 = v116;
  sub_1C2E75184();
  v72 = v120;
  swift_getKeyPath();
  v118 = v72;
  sub_1C2E71A64();

  v73 = OBJC_IVAR____TtC16CommunicationsUI25ParticipantLabelViewModel__titleStyle;
  swift_beginAccess();
  v74 = v72 + v73;
  v75 = v105;
  sub_1C2C736A4(v74, v105, &qword_1EC0603A8);

  v76 = sub_1C2DEFA28(v75);
  sub_1C2C73644(v75, &qword_1EC0603A8);
  v120 = v76;
  v77 = sub_1C2E74794();
  v79 = v78;
  LOBYTE(v62) = v80;
  sub_1C2C72340(v68, v70, v67 & 1);

  sub_1C2E74554();
  v81 = sub_1C2E74764();
  v115 = v81;
  v83 = v82;
  LODWORD(v114) = v84;
  v116 = v85;
  sub_1C2C72340(v77, v79, v62 & 1);

  v86 = swift_getKeyPath();
  v87 = v104;
  v88 = v103;
  v89 = v100;
  v90 = v102;
  v91 = v101;
  v92 = v106;
  sub_1C2C72278(v104, v103, v100, v102);
  LOBYTE(v75) = v114 & 1;
  sub_1C2C72330(v81, v83, v114 & 1);
  v93 = v116;

  sub_1C2C71E88(v87, v88, v89, v90);
  LOBYTE(v120) = v75;
  v117 = 0;
  v94 = v107;
  *v107 = v87;
  v94[1] = v88;
  v94[2] = v89;
  v94[3] = v90;
  v94[4] = v91;
  v94[5] = v92;
  *(v94 + 48) = 0;
  v95 = v115;
  v94[7] = v115;
  v94[8] = v83;
  *(v94 + 72) = v75;
  v94[10] = v93;
  v94[11] = v86;
  v94[12] = 1;
  *(v94 + 104) = 0;
  sub_1C2C72340(v95, v83, v75);

  return sub_1C2C71E88(v87, v88, v89, v90);
}

uint64_t sub_1C2DEFA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0603A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1C2E72244();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C736A4(a1, v4, &qword_1EC0603A8);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    v10 = *MEMORY[0x1E6995E70];
    (*(v6 + 104))(v8, *MEMORY[0x1E6995E70], v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1C2C73644(v4, &qword_1EC0603A8);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *MEMORY[0x1E6995E70];
  }

  v11 = (*(v6 + 88))(v8, v5);
  if (v11 == v10)
  {
    return sub_1C2E74F84();
  }

  if (v11 == *MEMORY[0x1E6995E80])
  {
    return sub_1C2E74FA4();
  }

  if (v11 == *MEMORY[0x1E6995E78])
  {
    return sub_1C2E74F54();
  }

  v13 = sub_1C2E74F84();
  (*(v6 + 8))(v8, v5);
  return v13;
}

unint64_t sub_1C2DEFC9C()
{
  result = qword_1EC0630E0;
  if (!qword_1EC0630E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0630D8);
    sub_1C2C94F38(&qword_1EC0630E8, &qword_1EC0630F0);
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0630E0);
  }

  return result;
}

unint64_t sub_1C2DEFD80()
{
  result = qword_1EC0604E0;
  if (!qword_1EC0604E0)
  {
    type metadata accessor for ParticipantLabelViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0604E0);
  }

  return result;
}

BOOL sub_1C2DEFDD8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1C2E71A34();
    ++v2;
    sub_1C2DF4778(&qword_1EC0631B0, MEMORY[0x1E6969C28]);
  }

  while ((sub_1C2E75BA4() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1C2DEFEE4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t WaitOnHoldViewModel.__allocating_init(title:subtitle:statusMessage:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)(a1, a2, a3, a4);
  return v8;
}

CommunicationsUI::WaitOnHoldRequiresUserAttentionReason_optional __swiftcall WaitOnHoldRequiresUserAttentionReason.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t WaitOnHoldViewModel.AudioCategory.hash(into:)()
{
  sub_1C2E718A4();
  sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);

  return sub_1C2E75B64();
}

uint64_t WaitOnHoldViewModel.AudioCategory.hashValue.getter()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

uint64_t sub_1C2DF00B0()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

uint64_t sub_1C2DF0138()
{
  sub_1C2E718A4();
  sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);

  return sub_1C2E75B64();
}

uint64_t sub_1C2DF01BC()
{
  sub_1C2E76854();
  sub_1C2E718A4();
  sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);
  sub_1C2E75B64();
  return sub_1C2E76894();
}

BOOL static WaitOnHoldViewModel.TranscriptComponent.== infix(_:_:)()
{
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  v0 = sub_1C2E76894();
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  return v0 == sub_1C2E76894();
}

uint64_t WaitOnHoldViewModel.TranscriptComponent.hashValue.getter()
{
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  return sub_1C2E76894();
}

uint64_t WaitOnHoldViewModel.TranscriptComponent.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for WaitOnHoldViewModel.AudioCategory(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WaitOnHoldViewModel.TranscriptComponent(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2CF8244(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2DF4F0C(v7, v4, type metadata accessor for WaitOnHoldViewModel.AudioCategory);
    sub_1C2E76854();
    sub_1C2E718A4();
    sub_1C2DF4778(&qword_1EC05E340, MEMORY[0x1E69695A8]);
    sub_1C2E75B64();
    v8 = sub_1C2E76894();
    MEMORY[0x1C6927290](v8);
    return sub_1C2CF830C(v4, type metadata accessor for WaitOnHoldViewModel.AudioCategory);
  }

  else
  {
    sub_1C2E76854();
    sub_1C2E75CC4();
    v10 = sub_1C2E76894();
    MEMORY[0x1C6927290](v10);
  }
}

uint64_t sub_1C2DF04C4()
{
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2DF0508()
{
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  return sub_1C2E76894();
}

BOOL sub_1C2DF0544()
{
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  v0 = sub_1C2E76894();
  sub_1C2E76854();
  WaitOnHoldViewModel.TranscriptComponent.hash(into:)();
  return v0 == sub_1C2E76894();
}

uint64_t sub_1C2DF05C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  *a1 = *(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason);
  return result;
}

uint64_t sub_1C2DF0670@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason);
  return result;
}

unsigned __int8 *sub_1C2DF0758(unsigned __int8 *result)
{
  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2DF0868@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v3, a1, &qword_1EC05E088);
}

uint64_t sub_1C2DF0940@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v4, a2, &qword_1EC05E088);
}

uint64_t sub_1C2DF0A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C2C736A4(a1, &v6 - v3, &qword_1EC05E088);
  return sub_1C2DF0AC4(v4);
}

uint64_t sub_1C2DF0AC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v1 + v6, v5, &qword_1EC05E088);
  v7 = sub_1C2DF5090(v5, a1);
  sub_1C2C73644(v5, &qword_1EC05E088);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A54();
  }

  else
  {
    sub_1C2C736A4(a1, v5, &qword_1EC05E088);
    swift_beginAccess();
    sub_1C2DF53B0(v5, v1 + v6, &qword_1EC05E088);
    swift_endAccess();
  }

  return sub_1C2C73644(a1, &qword_1EC05E088);
}

uint64_t sub_1C2DF0CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C2C736A4(a2, &v9 - v5, &qword_1EC05E088);
  v7 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2DF53B0(v6, a1 + v7, &qword_1EC05E088);
  return swift_endAccess();
}

uint64_t sub_1C2DF0DB0()
{
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  return *(v0 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel);
}

uint64_t sub_1C2DF0E58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  *a2 = *(v3 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel);
  return result;
}

uint64_t sub_1C2DF0F08(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A54();
  }

  return result;
}

uint64_t sub_1C2DF1020()
{
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2DF10E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();

  v5 = sub_1C2CF7770(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2DF1230(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1C2DF12A0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
  swift_beginAccess();
  return sub_1C2C736A4(v5 + v3, a1, &qword_1EC063150);
}

uint64_t sub_1C2DF1378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
  swift_beginAccess();
  return sub_1C2C736A4(v3 + v4, a2, &qword_1EC063150);
}

uint64_t sub_1C2DF1450(uint64_t a1)
{
  sub_1C2C736A4(a1, v2, &qword_1EC063150);
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A54();

  return sub_1C2C73644(v2, &qword_1EC063150);
}

uint64_t sub_1C2DF1558(uint64_t a1, uint64_t a2)
{
  sub_1C2C736A4(a2, v5, &qword_1EC063150);
  v3 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
  swift_beginAccess();
  sub_1C2DF53B0(v5, a1 + v3, &qword_1EC063150);
  return swift_endAccess();
}

uint64_t sub_1C2DF1648()
{
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();
}

uint64_t sub_1C2DF16EC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C2DF17CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A54();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = sub_1C2E75E84();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;
}

BOOL sub_1C2DF194C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_requiresUserAttentionErrorReasons);
  swift_getKeyPath();
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != *(v0 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason));
  return v4 != 0;
}

uint64_t WaitOnHoldViewModel.init(title:subtitle:statusMessage:service:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a3;
  v37 = a2;
  v39 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - v13;
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason) = 1;
  v15 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  v16 = sub_1C2E71664();
  v17 = *(v16 - 8);
  v40 = v17;
  v18 = *(v17 + 56);
  v38 = v16;
  v18(v5 + v15, 1, 1, v16);
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) = 0;
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems) = MEMORY[0x1E69E7CC0];
  v19 = v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessageTask) = 0;
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptTask) = 0;
  *(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_requiresUserAttentionErrorReasons) = &unk_1F4297540;
  sub_1C2E71A94();
  (*(v17 + 16))(v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, a1, v16);
  sub_1C2C736A4(a2, v5 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle, &qword_1EC05E088);
  sub_1C2C736A4(a3, v14, &qword_1EC05E088);
  sub_1C2DF0AC4(v14);
  v20 = v35;
  sub_1C2C736A4(v35, &v44, &qword_1EC063150);
  swift_getKeyPath();
  v41 = v5;
  v42 = &v44;
  v43 = v5;
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A54();

  sub_1C2C73644(&v44, &qword_1EC063150);
  sub_1C2E75E44();
  v21 = sub_1C2E75E74();
  v22 = *(*(v21 - 8) + 56);
  v22(v11, 0, 1, v21);
  v23 = swift_allocObject();
  swift_weakInit();
  sub_1C2C736A4(v20, &v44, &qword_1EC063150);
  sub_1C2E75E34();

  v24 = sub_1C2E75E24();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = v45;
  *(v25 + 32) = v44;
  *(v25 + 48) = v27;
  *(v25 + 64) = v46;
  *(v25 + 72) = v23;

  v28 = sub_1C2D22B9C(0, 0, v11, &unk_1C2E8C910, v25);
  sub_1C2DF160C(v28);
  sub_1C2E75E44();
  v22(v11, 0, 1, v21);
  v29 = swift_allocObject();
  swift_weakInit();

  sub_1C2C736A4(v20, &v44, &qword_1EC063150);

  v30 = sub_1C2E75E24();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = MEMORY[0x1E69E85E0];
  v32 = v45;
  *(v31 + 32) = v44;
  *(v31 + 48) = v32;
  *(v31 + 64) = v46;
  *(v31 + 72) = v29;

  v33 = sub_1C2D22B9C(0, 0, v11, &unk_1C2E8C920, v31);
  sub_1C2DF17A4(v33);
  sub_1C2C73644(v20, &qword_1EC063150);
  sub_1C2C73644(v36, &qword_1EC05E088);
  sub_1C2C73644(v37, &qword_1EC05E088);
  (*(v40 + 8))(v39, v38);
  return v5;
}

uint64_t sub_1C2DF2008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[65] = a5;
  v5[64] = a4;
  v6 = sub_1C2E71664();
  v5[66] = v6;
  v5[67] = *(v6 - 8);
  v5[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  v5[71] = sub_1C2E75E34();
  v5[72] = sub_1C2E75E24();
  v8 = sub_1C2E75DD4();
  v5[73] = v8;
  v5[74] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C2DF214C, v8, v7);
}

uint64_t sub_1C2DF214C()
{
  sub_1C2C736A4(*(v0 + 512), v0 + 96, &qword_1EC063150);
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    if (*(v0 + 80))
    {
      sub_1C2C716EC((v0 + 56), v0 + 16);
      v3 = *(v0 + 40);
      v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
      v5 = *(v3 - 8);
      v6 = swift_task_alloc();
      (*(v5 + 16))(v6, v4, v3);
      *(v0 + 160) = swift_getAssociatedTypeWitness();
      *(v0 + 168) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      sub_1C2E75EE4();

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v7 = sub_1C2E75E24();
      *(v0 + 600) = v7;
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, *(v0 + 160));
      v8 = swift_task_alloc();
      *(v0 + 608) = v8;
      *v8 = v0;
      v8[1] = sub_1C2DF24B4;
      v9 = *(v0 + 560);
      v10 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v9, v7, v10);
    }

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    }
  }

  else
  {

    sub_1C2C73644(v0 + 96, &qword_1EC063150);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C2DF24B4()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (!v0)
  {

    v4 = *(v2 + 592);
    v5 = *(v2 + 584);

    return MEMORY[0x1EEE6DFA0](sub_1C2DF25D0, v5, v4);
  }

  return result;
}

uint64_t sub_1C2DF25D0()
{
  v49 = v0;
  v1 = v0[70];
  v2 = v0[67];
  v3 = v0[66];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
LABEL_4:

    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v4 = v0[1];

    return v4();
  }

  (*(v2 + 32))(v0[68], v1, v3);
  if (sub_1C2E75EC4())
  {
    (*(v0[67] + 8))(v0[68], v0[66]);
    goto LABEL_4;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    v0[59] = v7;
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A64();

    v8 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
    swift_beginAccess();
    sub_1C2C736A4(v7 + v8, (v0 + 22), &qword_1EC063150);

    v9 = v0[25];
    if (v9)
    {
      v10 = v0[26];
      v11 = __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      v12 = *(v9 - 8);
      v13 = swift_task_alloc();
      (*(v12 + 16))(v13, v11, v9);
      sub_1C2C73644((v0 + 22), &qword_1EC063150);
      (*(v10 + 32))(&v48 + 1, v9, v10);
      (*(v12 + 8))(v13, v9);
      v14 = BYTE1(v48);

      v15 = swift_weakLoadStrong();
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_requiresUserAttentionErrorReasons);

        v17 = *(v16 + 16);
        v18 = (v16 + 32);
        do
        {
          if (!v17)
          {

            goto LABEL_17;
          }

          v19 = *v18++;
          --v17;
        }

        while (v19 != v14);

        v20 = swift_weakLoadStrong();
        if (v20)
        {
          if (*(v20 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason) == v14)
          {
          }

          else
          {
            v43 = v20;
            swift_getKeyPath();
            v44 = swift_task_alloc();
            *(v44 + 16) = v43;
            *(v44 + 24) = v14;
            v0[63] = v43;
            sub_1C2E71A54();
          }
        }

        if (swift_weakLoadStrong())
        {
          v45 = v0[69];
          v46 = v0[67];
          v47 = v0[66];
          (*(v46 + 16))(v45, v0[68], v47);
          (*(v46 + 56))(v45, 0, 1, v47);
          sub_1C2DF0AC4(v45);
        }
      }
    }

    else
    {
      sub_1C2C73644((v0 + 22), &qword_1EC063150);
    }
  }

LABEL_17:
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = v21;
    swift_getKeyPath();
    v0[60] = v22;
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A64();

    v23 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service;
    swift_beginAccess();
    sub_1C2C736A4(v22 + v23, (v0 + 27), &qword_1EC063150);

    v24 = v0[30];
    if (v24)
    {
      v25 = v0[31];
      v26 = __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
      v27 = *(v24 - 8);
      v28 = swift_task_alloc();
      (*(v27 + 16))(v28, v26, v24);
      sub_1C2C73644((v0 + 27), &qword_1EC063150);
      (*(v25 + 32))(&v48, v24, v25);
      (*(v27 + 8))(v28, v24);
      LODWORD(v26) = v48;

      if (v26 == 2)
      {
        v29 = swift_weakLoadStrong();
        if (v29)
        {
          if (*(v29 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason) == 2)
          {
          }

          else
          {
            v30 = v29;
            swift_getKeyPath();
            v31 = swift_task_alloc();
            *(v31 + 16) = v30;
            *(v31 + 24) = 2;
            v0[61] = v30;
            sub_1C2E71A54();
          }
        }

        v32 = swift_weakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel;
          v35 = v0[68];
          v36 = v0[66];
          v37 = (v0[67] + 8);
          if (*(v32 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) == 1)
          {
            (*v37)(v0[68], v0[66]);
            *(v33 + v34) = 1;
          }

          else
          {
            swift_getKeyPath();
            v42 = swift_task_alloc();
            *(v42 + 16) = v33;
            *(v42 + 24) = 1;
            v0[62] = v33;
            sub_1C2E71A54();

            (*v37)(v35, v36);
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1C2C73644((v0 + 27), &qword_1EC063150);
    }
  }

  (*(v0[67] + 8))(v0[68], v0[66]);
LABEL_30:
  v38 = sub_1C2E75E24();
  v0[75] = v38;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 17), v0[20]);
  v39 = swift_task_alloc();
  v0[76] = v39;
  *v39 = v0;
  v39[1] = sub_1C2DF24B4;
  v40 = v0[70];
  v41 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v40, v38, v41);
}

uint64_t sub_1C2DF2EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v5[32] = sub_1C2E75E34();
  v5[33] = sub_1C2E75E24();
  v7 = sub_1C2E75DD4();
  v5[34] = v7;
  v5[35] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2DF2F50, v7, v6);
}

uint64_t sub_1C2DF2F50()
{
  sub_1C2C736A4(*(v0 + 240), v0 + 96, &qword_1EC063150);
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
    if (*(v0 + 80))
    {
      sub_1C2C716EC((v0 + 56), v0 + 16);
      v3 = *(v0 + 40);
      v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
      v5 = *(v3 - 8);
      v6 = swift_task_alloc();
      (*(v5 + 16))(v6, v4, v3);
      *(v0 + 160) = swift_getAssociatedTypeWitness();
      *(v0 + 168) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      sub_1C2E75EE4();

      swift_beginAccess();
      swift_beginAccess();
      v7 = sub_1C2E75E24();
      *(v0 + 288) = v7;
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, *(v0 + 160));
      v8 = swift_task_alloc();
      *(v0 + 296) = v8;
      *v8 = v0;
      v8[1] = sub_1C2DF3234;
      v9 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 224, v7, v9);
    }

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    }
  }

  else
  {

    sub_1C2C73644(v0 + 96, &qword_1EC063150);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C2DF3234()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (!v0)
  {

    v4 = *(v2 + 272);
    v5 = *(v2 + 280);

    return MEMORY[0x1EEE6DFA0](sub_1C2DF334C, v4, v5);
  }

  return result;
}

uint64_t sub_1C2DF334C()
{
  v1 = v0[28];
  if (!v1)
  {
LABEL_4:

    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v2 = v0[1];

    return v2();
  }

  if (sub_1C2E75EC4())
  {

    goto LABEL_4;
  }

  if (swift_weakLoadStrong())
  {
    sub_1C2DF3994(v1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) == 1)
    {
      *(Strong + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__shouldShowPickUpLabel) = 1;
    }

    else
    {
      v5 = Strong;
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;
      v0[29] = v5;
      sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
      sub_1C2E71A54();
    }
  }

  v7 = sub_1C2E75E24();
  v0[36] = v7;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 17), v0[20]);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1C2DF3234;
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 28, v7, v9);
}

uint64_t WaitOnHoldViewModel.deinit()
{
  v1 = v0;
  sub_1C2E75E34();
  sub_1C2E75E24();
  sub_1C2E75DD4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel___observationRegistrar;
  sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessageTask))
  {

    sub_1C2E75EA4();
  }

  swift_getKeyPath();
  sub_1C2E71A64();

  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptTask))
  {

    sub_1C2E75EA4();
  }

  v3 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title;
  v4 = sub_1C2E71664();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  sub_1C2C73644(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle, &qword_1EC05E088);
  sub_1C2C73644(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage, &qword_1EC05E088);

  sub_1C2C73644(v1 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__service, &qword_1EC063150);

  v5 = sub_1C2E71AA4();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  return v1;
}

uint64_t _s16CommunicationsUI19WaitOnHoldViewModelCfZ(uint64_t a1)
{
  WaitOnHoldViewModel.deinit();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return MEMORY[0x1EEE6BDC0](a1, v2, v3);
}

uint64_t WaitOnHoldViewModel.__deallocating_deinit()
{
  sub_1C2E75E34();
  sub_1C2E75E24();
  v1 = sub_1C2E75DD4();
  v3 = v2;

  return MEMORY[0x1EEE6DF50](v0, _s16CommunicationsUI19WaitOnHoldViewModelCfZ, v1, v3, 0);
}

size_t sub_1C2DF3994(uint64_t a1)
{
  v2 = v1;
  v79 = sub_1C2E718A4();
  v88 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v63 - v6;
  v8 = sub_1C2E71664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = v63 - v12;
  v13 = type metadata accessor for WaitOnHoldViewModel.TranscriptComponent(0);
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v77 = (v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = v63 - v16;
  v18 = (a1 + 16);
  v19 = *(a1 + 16);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel___observationRegistrar;
  if (!v19)
  {
    v91 = v2;
    sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
    sub_1C2E71A64();

    v91 = v2;
    swift_getKeyPath();
    sub_1C2E71A84();

    v29 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
    swift_beginAccess();
    *(v2 + v29) = MEMORY[0x1E69E7CC0];

    v89 = v2;
    swift_getKeyPath();
    sub_1C2E71A74();
  }

  v76 = v8;
  v75 = v7;
  v91 = v2;
  v21 = sub_1C2DF4778(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v22 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  if (v19 == *(*(v2 + v22) + 16))
  {
    v23 = &v18[2 * v19];
    v24 = *v23;
    v25 = v23[1];
    swift_getKeyPath();
    v89 = v2;

    sub_1C2E71A64();

    v26 = *(v2 + v22);
    v27 = *(v26 + 16);
    if (!v27)
    {
    }

    sub_1C2CF8244(v26 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * (v27 - 1), v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_1C2CF830C(v17, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
    }

    sub_1C2E111F8(v24, v25);
  }

  swift_getKeyPath();
  v89 = v2;
  sub_1C2E71A64();

  if (*(*(v2 + v22) + 16) >= v19)
  {
    return result;
  }

  swift_getKeyPath();
  v89 = v2;
  v63[3] = v21;
  sub_1C2E71A64();

  v63[2] = v22;
  v30 = v19 - *(*(v2 + v22) + 16);
  if (v30 < 0)
  {
    goto LABEL_48;
  }

  v31 = *v18;
  v32 = *v18 >= v30;
  v33 = *v18 - v30;
  if (v32)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v74 = v31;
  v35 = v31 - v34;
  v36 = v76;
  if (v31 == v34)
  {

    v37 = MEMORY[0x1E69E7CC0];
LABEL_45:
    swift_getKeyPath();
    v89 = v2;
    sub_1C2E71A64();

    v89 = v2;
    swift_getKeyPath();
    sub_1C2E71A84();

    swift_beginAccess();
    sub_1C2CA30EC(v37);
    swift_endAccess();
    v89 = v2;
    swift_getKeyPath();
    sub_1C2E71A74();

    return swift_unknownObjectRelease();
  }

  v89 = MEMORY[0x1E69E7CC0];

  result = sub_1C2CA4E7C(0, v35 & ~(v35 >> 63), 0);
  if (v35 < 0)
  {
    goto LABEL_49;
  }

  v71 = (v9 + 48);
  v66 = (v9 + 32);
  v70 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_subtitle;
  v65 = (v9 + 16);
  v64 = (v9 + 8);
  v37 = v89;
  v69 = (v88 + 8);
  v63[1] = a1;
  v38 = (a1 - 16 * v35 + 16 * v74 + 40);
  v73 = v2;
  v39 = v75;
  v72 = v20;
  while (v34 < v74)
  {
    v41 = *(v38 - 1);
    v40 = *v38;
    v85 = v38;
    sub_1C2C736A4(v2 + v70, v39, &qword_1EC05E088);
    v42 = (*v71)(v39, 1, v36);
    v87 = v34;
    v88 = v37;
    v86 = v35;
    if (v42 == 1)
    {

      sub_1C2C73644(v39, &qword_1EC05E088);
      v82 = 0;
      v84 = 0;
    }

    else
    {
      v43 = v67;
      (*v66)(v67, v39, v36);
      sub_1C2DF4F74();
      (*v65)(v68, v43, v36);

      v44 = sub_1C2E760C4();
      v45 = [v44 string];

      v82 = sub_1C2E75C64();
      v84 = v46;

      (*v64)(v43, v36);
    }

    v47 = v78;
    sub_1C2E71894();
    v48 = sub_1C2E71854();
    v50 = v49;
    (*v69)(v47, v79);
    type metadata accessor for CallTranscripts();
    v51 = swift_allocObject();
    *(v51 + 40) = 0;
    *(v51 + 48) = 0;
    *(v51 + 56) = 1;
    *(v51 + 64) = 0;
    *(v51 + 72) = 0;
    *(v51 + 80) = 1;
    *(v51 + 88) = 0u;
    *(v51 + 104) = 0u;

    sub_1C2E71A94();
    *(v51 + 16) = v48;
    *(v51 + 24) = v50;
    *(v51 + 32) = 1;
    v52 = *(v51 + 72);
    v83 = v40;
    if (v52 && (*(v51 + 64) == v41 && v52 == v40 || (sub_1C2E767A4() & 1) != 0))
    {
      *(v51 + 64) = v41;
      *(v51 + 72) = v40;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v63[-4] = v51;
      v63[-3] = v41;
      v63[-2] = v40;
      v90 = v51;
      sub_1C2DF4778(&qword_1EC062660, type metadata accessor for CallTranscripts);
      sub_1C2E71A54();
    }

    v54 = v82;
    if (*(v51 + 96))
    {
      v55 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v55);
      v63[-3] = 0;
      v63[-2] = 0;
      v63[-4] = v51;
      v90 = v51;
      sub_1C2DF4778(&qword_1EC062660, type metadata accessor for CallTranscripts);
      sub_1C2E71A54();

      if (*(v51 + 112))
      {
        goto LABEL_31;
      }
    }

    else
    {
      *(v51 + 88) = 0;
      *(v51 + 96) = 0;
      if (*(v51 + 112))
      {
LABEL_31:
        v56 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v56);
        v63[-3] = 0;
        v63[-2] = 0;
        v63[-4] = v51;
        v90 = v51;
        sub_1C2DF4778(&qword_1EC062660, type metadata accessor for CallTranscripts);
        sub_1C2E71A54();

        goto LABEL_34;
      }
    }

    *(v51 + 104) = 0;
    *(v51 + 112) = 0;
LABEL_34:
    v2 = v73;
    v36 = v76;
    v57 = v84;
    v58 = *(v51 + 48);
    if (v58)
    {
      if (!v84 || (*(v51 + 40) != v54 || v58 != v84) && (sub_1C2E767A4() & 1) == 0)
      {
LABEL_41:
        v59 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v59);
        v63[-4] = v51;
        v63[-3] = v54;
        v63[-2] = v57;
        v90 = v51;
        sub_1C2DF4778(&qword_1EC062660, type metadata accessor for CallTranscripts);
        sub_1C2E71A54();

        goto LABEL_42;
      }
    }

    else if (v84)
    {
      goto LABEL_41;
    }

    *(v51 + 40) = v54;
    *(v51 + 48) = v57;

LABEL_42:
    v39 = v75;
    v60 = v77;
    *v77 = v51;
    swift_storeEnumTagMultiPayload();
    v37 = v88;
    v89 = v88;
    v62 = *(v88 + 16);
    v61 = *(v88 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_1C2CA4E7C(v61 > 1, v62 + 1, 1);
      v39 = v75;
      v37 = v89;
    }

    *(v37 + 16) = v62 + 1;
    result = sub_1C2DF4F0C(v60, v37 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v62, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
    v34 = v87 + 1;
    v38 = v85 + 2;
    v35 = v86 - 1;
    if (v86 == 1)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C2DF4778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DF47FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2CC8E70;

  return sub_1C2DF2008(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C2DF490C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DF2EB4(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1C2DF4A04()
{
  result = qword_1EC063158;
  if (!qword_1EC063158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063158);
  }

  return result;
}

void sub_1C2DF4B50()
{
  sub_1C2E71664();
  if (v0 <= 0x3F)
  {
    sub_1C2DF4CE8();
    if (v1 <= 0x3F)
    {
      sub_1C2E71AA4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C2DF4CE8()
{
  if (!qword_1EC060438)
  {
    sub_1C2E71664();
    v0 = sub_1C2E76424();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC060438);
    }
  }
}

void sub_1C2DF4D68()
{
  sub_1C2E718A4();
  if (v0 <= 0x3F)
  {
    sub_1C2D2EFC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C2DF4DF4()
{
  sub_1C2DF4EA0(319, &qword_1EC0631A0, type metadata accessor for CallTranscripts);
  if (v0 <= 0x3F)
  {
    sub_1C2DF4EA0(319, &qword_1EC0631A8, type metadata accessor for WaitOnHoldViewModel.AudioCategory);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C2DF4EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C2DF4F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C2DF4F74()
{
  result = qword_1EC05F380;
  if (!qword_1EC05F380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC05F380);
  }

  return result;
}

uint64_t sub_1C2DF504C(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1C2DF5090(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E71664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060480);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1C2C736A4(a1, &v21 - v12, &qword_1EC05E088);
  sub_1C2C736A4(a2, &v13[v15], &qword_1EC05E088);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C2C736A4(v13, v10, &qword_1EC05E088);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C2DF4778(&qword_1EC060488, MEMORY[0x1E6968848]);
      v18 = sub_1C2E75BA4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1C2C73644(v13, &qword_1EC05E088);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C2C73644(v13, &qword_1EC060480);
    v17 = 1;
    return v17 & 1;
  }

  sub_1C2C73644(v13, &qword_1EC05E088);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1C2DF53B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2DF5480()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___hasBackgroundImage);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___hasBackgroundImage) = 0;
  }

  return v1 & 1;
}

id sub_1C2DF5518(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___hasBackgroundImage] = 2;
  v13 = OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_blurEffect;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_blurEffect] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView] = 0;
  *&v6[OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_colorEffect] = a2;
  *&v6[v13] = a1;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for BlurredColorEffectBackgroundView();
  v14 = a2;
  v15 = a1;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a3, a4, a5, a6);
  sub_1C2DF5710();

  return v16;
}

id sub_1C2DF5684()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C2DF5710()
{
  v1 = sub_1C2DF5684();
  [v0 addSubview_];

  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C2E7A700;
  v4 = OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView;
  v5 = [*&v0[OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView____lazy_storage___backgroundBlurView] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 48) = v13;
  v14 = [*&v0[v4] bottomAnchor];
  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 56) = v16;
  sub_1C2C6E1B4(0, &qword_1EC062670);
  v17 = sub_1C2E75D64();

  [v2 activateConstraints_];

  v18 = [v0 layer];
  [v18 setCornerRadius_];

  [v0 setClipsToBounds_];

  sub_1C2DF59C4();
}

void sub_1C2DF59C4()
{
  if ((sub_1C2DF5480() & 1) != 0 && (v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_blurEffect)) != 0)
  {
    v2 = v1;
    v3 = sub_1C2DF5684();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C2E81350;
    v5 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32BlurredColorEffectBackgroundView_colorEffect);
    *(v4 + 32) = v2;
    *(v4 + 40) = v5;
    sub_1C2C6E1B4(0, &qword_1EC05FD80);
    v6 = v2;
    v7 = v5;
    v8 = sub_1C2E75D64();

    v9 = [objc_opt_self() effectCombiningEffects_];

    [v3 setEffect_];
  }

  else
  {
    v9 = sub_1C2DF5684();
    [v9 setEffect_];
  }
}

id BlurredColorEffectBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurredColorEffectBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurredColorEffectBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BlurredBackgroundView.makeUIView(context:)()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  return AudioMiddleStackBackgroundView.init(effect:usesGlass:)(v0, 1);
}

id sub_1C2DF5CD8()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = objc_allocWithZone(type metadata accessor for AudioMiddleStackBackgroundView());
  return AudioMiddleStackBackgroundView.init(effect:usesGlass:)(v0, 1);
}

uint64_t sub_1C2DF5D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DF5EF4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2DF5D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2DF5EF4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2DF5E00()
{
  sub_1C2DF5EF4();
  sub_1C2E73EE4();
  __break(1u);
}

id UIBlurEffect.init(privateStyle:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() effectWithStyle_];

  return v1;
}

unint64_t sub_1C2DF5E78()
{
  result = qword_1EC0631B8;
  if (!qword_1EC0631B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0631B8);
  }

  return result;
}

unint64_t sub_1C2DF5EF4()
{
  result = qword_1EC0631E0;
  if (!qword_1EC0631E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0631E0);
  }

  return result;
}

id sub_1C2DF5FB0()
{
  v1 = v0;
  [v0 bounds];
  v4 = OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge;
  v5 = *&v1[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge];
  if (v5)
  {
    [v5 sizeThatFits_];
    v8 = v7;
    v9 = v6;
    if (v7 > 2.22507386e-308 && v6 > 2.22507386e-308)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v41) - v8 + -3.0;
      v12 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0.0;
    v8 = 0.0;
  }

  [v1 bounds];
  Width = CGRectGetWidth(v42);
  v12 = 0;
LABEL_9:
  [v1 bounds];
  Height = CGRectGetHeight(v43);
  v14 = *&v1[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label];
  [v14 sizeThatFits_];
  v17 = v16;
  if (Width >= v15)
  {
    Width = v15;
  }

  [v1 bounds];
  v18 = (CGRectGetHeight(v44) - v9) * 0.5;
  v19 = 0.0;
  [*&v1[v4] setFrame_];
  if (v12)
  {
    v45.origin.x = 0.0;
    v45.origin.y = v18;
    v45.size.width = v8;
    v45.size.height = v9;
    v19 = CGRectGetMaxX(v45) + 3.0;
  }

  [v1 bounds];
  [v14 setFrame_];
  result = [v1 effectiveUserInterfaceLayoutDirection];
  if (result == 1)
  {
    v39 = *&v1[v4];
    v40 = v14;
    v21 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v22 = v39;
    v23 = v14;
    for (i = 0; i != 2; ++i)
    {
      v25 = v38[i + 4];
      if (v25)
      {
        v26 = v25;
        MEMORY[0x1C6926780]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C2E75D94();
        }

        sub_1C2E75DB4();
        v21 = v37;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC05F650);
    swift_arrayDestroy();
    if (v21 >> 62)
    {
      goto LABEL_32;
    }

    for (j = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1C2E764E4())
    {
      for (k = 0; ; ++k)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1C6927010](k, v21);
        }

        else
        {
          if (k >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v29 = *(v21 + 8 * k + 32);
        }

        v30 = v29;
        v31 = k + 1;
        if (__OFADD__(k, 1))
        {
          break;
        }

        [v1 bounds];
        v32 = CGRectGetWidth(v47);
        [v30 frame];
        v34 = v32 - v33;
        [v30 frame];
        v35 = v34 - CGRectGetMinX(v48);
        [v30 frame];
        MinY = CGRectGetMinY(v49);
        [v30 frame];
        [v30 setFrame_];

        if (v31 == j)
        {
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }
  }

  return result;
}

id sub_1C2DF63A4(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_badge);
  if (v5)
  {
    [v5 sizeThatFits_];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  v10 = v7 > 2.22507386e-308;
  v11 = v9 > 2.22507386e-308;
  v12 = a1 - v7 + -3.0;
  if (!v10 || !v11)
  {
    v12 = a1;
  }

  return [*(v2 + OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label) sizeThatFits_];
}

id sub_1C2DF650C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgedLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WaitOnHoldAvatarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = sub_1C2E73654();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - v5;
  v7 = sub_1C2E73654();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  sub_1C2E75744();
  v14 = *(a1 + 24);
  sub_1C2E74D14();
  v19[4] = v14;
  v19[5] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C2E74D74();
  (*(v4 + 8))(v6, v3);
  v19[2] = WitnessTable;
  v19[3] = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  sub_1C2C6EE48(v10, v7, v16);
  v17 = *(v8 + 8);
  v17(v10, v7);
  sub_1C2C6EE48(v13, v7, v16);
  return (v17)(v13, v7);
}

uint64_t sub_1C2DF68A8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C2DF6918(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
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

  return v5 + (v6 | v11) + 1;
}

char *sub_1C2DF6A58(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
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

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1C2DF6C78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t WaitOnHoldMiddleView.init(viewModel:)@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063278);
  sub_1C2E75174();
  *(a1 + 16) = v3;
  *(a1 + 32) = 0x3FBA1CAC083126E9;
  type metadata accessor for WaitOnHoldViewModel(0);
  result = sub_1C2E75174();
  *a1 = v3;
  return result;
}

uint64_t WaitOnHoldMiddleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063280);
  MEMORY[0x1EEE9AC00](v50);
  v4 = &v50 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063288);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063290);
  MEMORY[0x1EEE9AC00](v52);
  v7 = &v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063298);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v50 - v8;
  v10 = *(v1 + 16);
  v65[0] = *v1;
  v65[1] = v10;
  v66 = *(v1 + 32);
  v58 = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  v11 = v57;
  v12 = *(v57 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_requiresUserAttentionErrorReasons);
  swift_getKeyPath();
  *&v58 = v11;
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v13 = sub_1C2DEFEE4(*(v11 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason), v12);

  if (v13 || (v58 = *v2, sub_1C2E75184(), v14 = v57, swift_getKeyPath(), *&v58 = v14, sub_1C2E71A64(), , v15 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems, swift_beginAccess(), v16 = *(v14 + v15), , , v17 = *(v16 + 16), , !v17))
  {
    sub_1C2DF7550(v9);
    sub_1C2C736A4(v9, v7, &qword_1EC063298);
    swift_storeEnumTagMultiPayload();
    sub_1C2DF9B74();
    sub_1C2DF9CE4();
    v46 = v55;
    sub_1C2E73F44();
    sub_1C2C73644(v9, &qword_1EC063298);
  }

  else
  {
    v58 = *v2;
    sub_1C2E75184();
    v18 = v56;
    swift_getKeyPath();
    *&v58 = v18;
    sub_1C2E71A64();

    v19 = *(v18 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason);

    if (v19 != 2)
    {
      v58 = *v2;
      sub_1C2E75184();
      v20 = v56;
      swift_getKeyPath();
      *&v58 = v20;
      sub_1C2E71A64();

      v21 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
      swift_beginAccess();
      v22 = *(v20 + v21);

      v23 = *(v22 + 16);

      if (!v23)
      {
        v47 = 1;
        v46 = v55;
        goto LABEL_8;
      }
    }

    *v4 = sub_1C2E73DC4();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0632A8);
    sub_1C2DF93DC(v65, &v4[*(v24 + 44)]);
    v25 = sub_1C2E74444();
    sub_1C2E73034();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0632B0) + 36)];
    *v34 = v25;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    KeyPath = swift_getKeyPath();
    v36 = &v4[*(v50 + 36)];
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
    v38 = *MEMORY[0x1E697DBA8];
    v39 = sub_1C2E730D4();
    (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
    *v36 = KeyPath;
    sub_1C2E75744();
    sub_1C2E737F4();
    v40 = v51;
    sub_1C2C8FC9C(v4, v51);
    v41 = (v40 + *(v54 + 36));
    v42 = v63;
    v41[4] = v62;
    v41[5] = v42;
    v41[6] = v64;
    v44 = v59;
    v43 = v60;
    *v41 = v58;
    v41[1] = v44;
    v45 = v61;
    v41[2] = v43;
    v41[3] = v45;
    sub_1C2C8FD0C(v40, v7);
    swift_storeEnumTagMultiPayload();
    sub_1C2DF9B74();
    sub_1C2DF9CE4();
    v46 = v55;
    sub_1C2E73F44();
    sub_1C2C8FD7C(v40);
  }

  v47 = 0;
LABEL_8:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0632A0);
  return (*(*(v48 - 8) + 56))(v46, v47, 1, v48);
}

__n128 sub_1C2DF7550@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0632C8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33[-2] - v5;
  v7 = *(v1 + 16);
  v43[0] = *v1;
  v43[1] = v7;
  v44 = *(v1 + 32);
  v8 = sub_1C2E73DC4();
  LOBYTE(v55) = 1;
  sub_1C2DF792C(v43, &v34);
  v51 = v40;
  v52[0] = v41[0];
  *(v52 + 10) = *(v41 + 10);
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v50 = v39;
  v45 = v34;
  v46 = v35;
  v53[5] = v39;
  v53[6] = v40;
  v54[0] = v41[0];
  *(v54 + 10) = *(v41 + 10);
  v53[2] = v36;
  v53[3] = v37;
  v53[4] = v38;
  v53[0] = v34;
  v53[1] = v35;
  sub_1C2C736A4(&v45, v33, &qword_1EC063330);
  sub_1C2C73644(v53, &qword_1EC063330);
  *&v42[87] = v50;
  *&v42[103] = v51;
  *&v42[119] = v52[0];
  *&v42[129] = *(v52 + 10);
  *&v42[23] = v46;
  *&v42[39] = v47;
  *&v42[55] = v48;
  *&v42[71] = v49;
  *&v42[7] = v45;
  v9 = v55;
  v10 = sub_1C2E74444();
  sub_1C2DF9210();
  sub_1C2E73034();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v34) = 0;
  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v4 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DC70) + 28);
  v22 = *MEMORY[0x1E697DBA8];
  v23 = sub_1C2E730D4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = KeyPath;
  v24 = *&v42[112];
  *(v6 + 113) = *&v42[96];
  *(v6 + 129) = v24;
  *(v6 + 145) = *&v42[128];
  v25 = *&v42[48];
  *(v6 + 49) = *&v42[32];
  *(v6 + 65) = v25;
  v26 = *&v42[80];
  *(v6 + 81) = *&v42[64];
  *(v6 + 97) = v26;
  v27 = *&v42[16];
  *(v6 + 17) = *v42;
  *v6 = v8;
  *(v6 + 1) = 0;
  v6[16] = v9;
  v6[161] = v42[144];
  *(v6 + 33) = v27;
  *(v6 + 162) = v55;
  *(v6 + 83) = v56;
  v6[168] = v10;
  *(v6 + 169) = v33[0];
  *(v6 + 43) = *(v33 + 3);
  *(v6 + 22) = v12;
  *(v6 + 23) = v14;
  *(v6 + 24) = v16;
  *(v6 + 25) = v18;
  v6[208] = 0;
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v6, a1, &qword_1EC0632C8);
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063298) + 36);
  v29 = v39;
  *(v28 + 64) = v38;
  *(v28 + 80) = v29;
  *(v28 + 96) = v40;
  v30 = v35;
  *v28 = v34;
  *(v28 + 16) = v30;
  result = v37;
  *(v28 + 32) = v36;
  *(v28 + 48) = result;
  return result;
}

uint64_t sub_1C2DF792C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v125 = a2;
  v3 = sub_1C2E756D4();
  v122 = *(v3 - 8);
  v123 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v121 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v117 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v112 - v8;
  *&v124 = sub_1C2E71664();
  v120 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v116 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v112 - v11;
  v12 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v12 - 8);
  *&v126 = a1;
  v149 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  v13 = v147;
  v14 = *(v147 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_requiresUserAttentionErrorReasons);
  swift_getKeyPath();
  *&v149 = v13;
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  LOBYTE(a1) = sub_1C2DEFEE4(*(v13 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason), v14);

  if (a1)
  {
    v149 = *v126;
    sub_1C2E75184();
    v15 = v147;
    swift_getKeyPath();
    *&v149 = v15;
    sub_1C2E71A64();

    v16 = *(v15 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason);

    if (v16 == 4 || (v149 = *v126, sub_1C2E75184(), v17 = v147, swift_getKeyPath(), *&v149 = v17, sub_1C2E71A64(), , v18 = *(v17 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__requiresUserAttentionReason), , v18 == 3))
    {
      sub_1C2E73CF4();
      sub_1C2E73CE4();
      sub_1C2E75044();
      sub_1C2E73CC4();

      sub_1C2E73CE4();
      v149 = *v126;
      sub_1C2E75184();
      v19 = v147;
      swift_getKeyPath();
      *&v149 = v19;
      sub_1C2E71A64();

      v20 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
      swift_beginAccess();
      v21 = v119;
      sub_1C2C736A4(v19 + v20, v119, &qword_1EC05E088);

      v22 = v120;
      v23 = *(v120 + 48);
      v24 = v124;
      if (v23(v21, 1, v124) == 1)
      {
        v25 = v118;
        sub_1C2E71654();
        if (v23(v21, 1, v24) != 1)
        {
          sub_1C2C73644(v21, &qword_1EC05E088);
        }
      }

      else
      {
        v25 = v118;
        (*(v22 + 32))(v118, v21, v24);
      }

      sub_1C2E73CA4();
      (*(v22 + 8))(v25, v24);
      sub_1C2E73CE4();
      sub_1C2E73D24();
      v27 = sub_1C2E74884();
      v29 = v28;
      v31 = v30;
      LODWORD(v149) = sub_1C2E740D4();
      v32 = sub_1C2E74794();
      v34 = v33;
      v36 = v35;
      sub_1C2C72340(v27, v29, v31 & 1);

      sub_1C2E74694();
      v37 = sub_1C2E747F4();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      sub_1C2C72340(v32, v34, v36 & 1);

      *&v147 = v37;
      *(&v147 + 1) = v39;
      *&v148[0] = v41 & 1;
      *(&v148[0] + 1) = v43;
      LOBYTE(v148[1]) = 0;
    }

    else
    {
      v149 = *v126;
      sub_1C2E75184();
      v44 = v147;
      swift_getKeyPath();
      *&v149 = v44;
      sub_1C2E71A64();

      v45 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
      swift_beginAccess();
      v46 = v117;
      sub_1C2C736A4(v44 + v45, v117, &qword_1EC05E088);

      v47 = v120;
      v48 = *(v120 + 48);
      v49 = v124;
      if (v48(v46, 1, v124) == 1)
      {
        sub_1C2E71654();
        if (v48(v46, 1, v49) != 1)
        {
          sub_1C2C73644(v46, &qword_1EC05E088);
        }
      }

      else
      {
        (*(v47 + 32))(v116, v46, v49);
      }

      v50 = sub_1C2E74894();
      v52 = v51;
      v54 = v53;
      LODWORD(v149) = sub_1C2E740D4();
      v55 = sub_1C2E74794();
      v57 = v56;
      v59 = v58;
      sub_1C2C72340(v50, v52, v54 & 1);

      sub_1C2E74694();
      v60 = sub_1C2E747F4();
      v62 = v61;
      v64 = v63;
      v66 = v65;

      sub_1C2C72340(v55, v57, v59 & 1);

      *&v147 = v60;
      *(&v147 + 1) = v62;
      *&v148[0] = v64 & 1;
      *(&v148[0] + 1) = v66;
      LOBYTE(v148[1]) = 1;
    }

    sub_1C2E73F44();
    v126 = v150;
    v124 = v149;
    v67 = v151;
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = objc_opt_self();
    v118 = *(&v124 + 1);
    v119 = v124;
    v120 = *(&v126 + 1);
    v117 = v126;
    LODWORD(v116) = v67;
    sub_1C2D1EF64(v124, *(&v124 + 1), v126);
    v70 = [v69 bundleForClass_];
    v71 = sub_1C2E71684();
    v73 = v72;

    *&v149 = v71;
    *(&v149 + 1) = v73;
    sub_1C2C74960();
    v74 = sub_1C2E748A4();
    v76 = v75;
    LOBYTE(v73) = v77;
    LOBYTE(v149) = 2;
    *(&v149 + 1) = 0;
    LOBYTE(v150) = 1;
    sub_1C2D1EF10();
    v78 = v121;
    sub_1C2E756C4();
    v79 = v123;
    v80 = sub_1C2E74794();
    v114 = v81;
    v115 = v80;
    v83 = v82;
    v85 = v84;
    sub_1C2C72340(v74, v76, v73 & 1);

    (*(v122 + 8))(v78, v79);
    sub_1C2E74634();
    v86 = v115;
    v87 = sub_1C2E747F4();
    v89 = v88;
    LODWORD(v121) = v90;
    v123 = v91;

    sub_1C2C72340(v86, v83, v85 & 1);

    v127 = v116;
    LOBYTE(v128[0]) = v116;
    LOBYTE(v74) = v121 & 1;
    v131 = v121 & 1;
    v92 = v121 & 1;
    LODWORD(v121) = v121 & 1;
    sub_1C2C72330(v87, v89, v92);

    v94 = v118;
    v93 = v119;
    LOBYTE(v83) = v117;
    sub_1C2D1EF64(v119, v118, v117);
    sub_1C2C72330(v87, v89, v74);
    v95 = v123;

    sub_1C2C72340(v87, v89, v74);

    v96 = v94;
    sub_1C2D1EFA0(v93, v94, v83);
    v147 = v124;
    v148[0] = v126;
    LOBYTE(v148[1]) = v128[0];
    v122 = v87;
    *(&v148[1] + 1) = v87;
    v97 = v89;
    v113 = v89;
    *&v148[2] = v89;
    BYTE8(v148[2]) = v131;
    *&v148[3] = v95;
    sub_1C2DFB454(&v147);
    v153 = v148[3];
    v154 = v148[4];
    v155[0] = v148[5];
    *(v155 + 10) = *(&v148[5] + 10);
    v149 = v147;
    v150 = v148[0];
    v151 = v148[1];
    v152 = v148[2];
    v98 = v119;
    sub_1C2D1EF64(v119, v96, v83);
    LOBYTE(v96) = v121;
    sub_1C2C72330(v87, v97, v121);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063348);
    sub_1C2C94F38(&qword_1EC063350, &qword_1EC063340);
    sub_1C2C94F38(&qword_1EC063358, &qword_1EC063348);
    sub_1C2E73F44();
    v99 = v98;
    v100 = v98;
    LOBYTE(v98) = v117;
    v101 = v118;
    sub_1C2D1EFA0(v100, v118, v117);
    sub_1C2D1EFA0(v99, v101, v98);
    v102 = v122;
    v103 = v113;
    sub_1C2C72340(v122, v113, v96);

    sub_1C2C72340(v102, v103, v96);

    v153 = v136;
    v154 = v137;
    v155[0] = v138[0];
    *(v155 + 10) = *(v138 + 10);
    v149 = v132;
    v150 = v133;
    v151 = v134;
    v152 = v135;
  }

  else
  {
    v26 = sub_1C2E73C24();
    LOBYTE(v132) = 1;
    sub_1C2DF89B0(v126, &v149);
    v144 = v153;
    v145 = v154;
    v146 = v155[0];
    v140 = v149;
    v141 = v150;
    v142 = v151;
    v143 = v152;
    v128[0] = v149;
    v128[1] = v150;
    v128[3] = v152;
    v128[4] = v153;
    v128[2] = v151;
    v128[5] = v154;
    v129 = v155[0];
    sub_1C2C736A4(&v140, &v147, &qword_1EC063338);
    sub_1C2C73644(v128, &qword_1EC063338);
    *&v139[55] = v143;
    *&v139[71] = v144;
    *&v139[87] = v145;
    v139[103] = v146;
    *&v139[7] = v140;
    *&v139[23] = v141;
    *&v139[39] = v142;
    v147 = v26;
    LOBYTE(v148[0]) = v132;
    *(&v148[2] + 1) = *&v139[32];
    *(&v148[1] + 1) = *&v139[16];
    *(v148 + 1) = *v139;
    *(&v148[6] + 1) = *&v139[96];
    *(&v148[5] + 1) = *&v139[80];
    *(&v148[4] + 1) = *&v139[64];
    *(&v148[3] + 1) = *&v139[48];
    sub_1C2DFB448(&v147);
    v136 = v148[3];
    v137 = v148[4];
    v138[0] = v148[5];
    *(v138 + 10) = *(&v148[5] + 10);
    v132 = v147;
    v133 = v148[0];
    v134 = v148[1];
    v135 = v148[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063348);
    sub_1C2C94F38(&qword_1EC063350, &qword_1EC063340);
    sub_1C2C94F38(&qword_1EC063358, &qword_1EC063348);
    sub_1C2E73F44();
  }

  v148[3] = v153;
  v148[4] = v154;
  v148[5] = v155[0];
  *(&v148[5] + 10) = *(v155 + 10);
  v147 = v149;
  v148[0] = v150;
  v148[1] = v151;
  v148[2] = v152;
  v131 = 1;
  v136 = v153;
  v137 = v154;
  v138[0] = v155[0];
  *(v138 + 10) = *(v155 + 10);
  v132 = v149;
  v133 = v150;
  v134 = v151;
  v135 = v152;
  *&v130[7] = v149;
  *&v130[23] = v150;
  *&v130[39] = v151;
  *&v130[55] = v152;
  *&v130[71] = v153;
  *&v130[113] = *(v155 + 10);
  *&v130[103] = v155[0];
  *&v130[87] = v154;
  v104 = v125;
  *v125 = 0;
  *(v104 + 8) = 1;
  v105 = *&v130[16];
  *(v104 + 9) = *v130;
  v106 = *&v130[32];
  v107 = *&v130[48];
  v108 = *&v130[80];
  *(v104 + 73) = *&v130[64];
  *(v104 + 57) = v107;
  *(v104 + 41) = v106;
  *(v104 + 25) = v105;
  v109 = *&v130[96];
  v110 = *&v130[112];
  *(v104 + 137) = v130[128];
  *(v104 + 121) = v110;
  *(v104 + 105) = v109;
  *(v104 + 89) = v108;
  sub_1C2C736A4(&v132, v128, &qword_1EC063360);
  return sub_1C2C73644(&v147, &qword_1EC063360);
}

uint64_t sub_1C2DF89B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2E73DD4();
  LOBYTE(v20[0]) = 1;
  sub_1C2DF8B00(a1, v16);
  *&v15[55] = v17;
  *&v15[39] = v16[2];
  *&v15[23] = v16[1];
  *&v15[7] = v16[0];
  v5 = v20[0];
  v18[0] = v4;
  v18[1] = 0;
  v19[0] = v20[0];
  v6 = *v15;
  *&v19[1] = *v15;
  *&v19[64] = *(&v17 + 1);
  v7 = *&v15[48];
  *&v19[49] = *&v15[48];
  v8 = *&v15[32];
  *&v19[33] = *&v15[32];
  v9 = *&v15[16];
  *&v19[17] = *&v15[16];
  v10 = *v19;
  *a2 = v4;
  *(a2 + 16) = v10;
  v11 = *&v19[16];
  v12 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v12;
  *(a2 + 32) = v11;
  v22 = v6;
  v14[88] = 1;
  *(a2 + 80) = *&v19[64];
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v20[0] = v4;
  v20[1] = 0;
  v21 = v5;
  *&v25[15] = *&v15[63];
  *v25 = v7;
  v24 = v8;
  v23 = v9;
  sub_1C2C736A4(v18, v14, &qword_1EC063368);
  return sub_1C2C73644(v20, &qword_1EC063368);
}

uint64_t sub_1C2DF8B00@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v71 = v63 - v4;
  v5 = sub_1C2E71664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v72 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v63 - v9;
  v11 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1C2E73CF4();
  sub_1C2E73CE4();
  sub_1C2E75044();
  sub_1C2E73CC4();

  sub_1C2E73CE4();
  v78 = *a1;
  v76 = *a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  v65 = v6;
  v12 = *(v6 + 16);
  v69 = v10;
  v70 = v12;
  v64 = v5;
  v12(v10, v77 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, v5);

  sub_1C2E73CA4();
  (*(v6 + 8))(v10, v5);
  sub_1C2E73CE4();
  sub_1C2E73D24();
  v13 = sub_1C2E74884();
  v15 = v14;
  LOBYTE(v6) = v16;
  sub_1C2E74634();
  v17 = sub_1C2E747F4();
  v19 = v18;
  LOBYTE(v10) = v20;

  sub_1C2C72340(v13, v15, v6 & 1);

  sub_1C2E74584();
  v21 = sub_1C2E74764();
  v23 = v22;
  v25 = v24;
  v63[1] = v26;
  sub_1C2C72340(v17, v19, v10 & 1);

  v76 = v78;
  sub_1C2E75184();
  v27 = v64;
  v70(v69, v77 + OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel_title, v64);

  v28 = sub_1C2E74894();
  v30 = v29;
  LOBYTE(v10) = v31;
  v69 = sub_1C2E747A4();
  v67 = v32;
  v68 = v33;
  v70 = v34;
  sub_1C2C72340(v28, v30, v10 & 1);

  sub_1C2C72340(v21, v23, v25 & 1);

  v76 = v78;
  sub_1C2E75184();
  v35 = v77;
  swift_getKeyPath();
  *&v76 = v35;
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();
  v36 = v71;

  v37 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v35 + v37, v36, &qword_1EC05E088);

  v38 = v65;
  v39 = *(v65 + 48);
  if (v39(v36, 1, v27) == 1)
  {
    sub_1C2E71654();
    if (v39(v36, 1, v27) != 1)
    {
      sub_1C2C73644(v36, &qword_1EC05E088);
    }
  }

  else
  {
    (*(v38 + 32))(v72, v36, v27);
  }

  v40 = sub_1C2E74894();
  v42 = v41;
  v44 = v43;
  LODWORD(v77) = sub_1C2E740D4();
  v45 = sub_1C2E74794();
  v47 = v46;
  v49 = v48;
  sub_1C2C72340(v40, v42, v44 & 1);

  sub_1C2E745F4();
  v50 = sub_1C2E747F4();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_1C2C72340(v45, v47, v49 & 1);

  v57 = v68 & 1;
  v74 = v68 & 1;
  LOBYTE(v77) = v68 & 1;
  LOBYTE(v40) = v54 & 1;
  v75 = v54 & 1;
  v58 = v73;
  v60 = v69;
  v59 = v70;
  v61 = v67;
  *v73 = v69;
  v58[1] = v61;
  *(v58 + 16) = v57;
  v58[3] = v59;
  v58[4] = v50;
  v58[5] = v52;
  *(v58 + 48) = v40;
  v58[7] = v56;
  sub_1C2C72330(v60, v61, v57);

  sub_1C2C72330(v50, v52, v40);

  sub_1C2C72340(v50, v52, v40);

  sub_1C2C72340(v60, v61, v74);
}

double sub_1C2DF9210()
{
  v1 = *(v0 + 32);
  v18 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  swift_getKeyPath();
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  v3 = *(v19 + v2);

  v4 = *(v3 + 16);

  v5 = 0.0;
  if (!v4)
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 != 1)
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v20.origin.x = v10;
      v20.origin.y = v12;
      v20.size.width = v14;
      v20.size.height = v16;
      return v1 * CGRectGetWidth(v20) + -8.0;
    }
  }

  return v5;
}

uint64_t sub_1C2DF93DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063378);
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v57 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063380);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v57 - v12;
  v65 = a1;
  sub_1C2E74434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063388);
  sub_1C2DFB464();
  sub_1C2E73094();
  sub_1C2E758E4();
  v13 = sub_1C2C94F38(&qword_1EC0633B8, &qword_1EC063370);
  sub_1C2E74BE4();
  (*(v4 + 8))(v6, v3);
  v68 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0633C0);
  sub_1C2E751A4();
  type metadata accessor for CallTranscripts();
  *&v68 = v3;
  *(&v68 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  sub_1C2DFB7CC(&qword_1EC0633C8, type metadata accessor for CallTranscripts);
  v14 = v59;
  sub_1C2E74A74();

  (*(v7 + 8))(v9, v14);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_1C2E71684();
  v19 = v18;

  v72 = v17;
  v73 = v19;
  sub_1C2C74960();
  v20 = sub_1C2E748A4();
  v22 = v21;
  LOBYTE(v19) = v23;
  LODWORD(v72) = sub_1C2E740F4();
  v24 = sub_1C2E74794();
  v26 = v25;
  v28 = v27;
  sub_1C2C72340(v20, v22, v19 & 1);

  sub_1C2E74634();
  v58 = sub_1C2E747F4();
  v57 = v29;
  LOBYTE(v19) = v30;
  v59 = v31;

  sub_1C2C72340(v24, v26, v28 & 1);

  LOBYTE(v24) = sub_1C2E744B4();
  sub_1C2E73034();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  LOBYTE(v14) = v19 & 1;
  LOBYTE(v72) = v19 & 1;
  LOBYTE(v68) = 0;
  v40 = v61;
  v41 = *(v61 + 16);
  v42 = v64;
  v43 = v60;
  v44 = v62;
  v41(v64, v60, v62);
  v45 = v63;
  *v63 = 0;
  *(v45 + 8) = 1;
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0633D0);
  v41(&v46[*(v47 + 48)], v42, v44);
  v48 = &v46[*(v47 + 64)];
  v49 = v58;
  *&v68 = v58;
  v50 = v57;
  *(&v68 + 1) = v57;
  LOBYTE(v69) = v14;
  *(&v69 + 1) = *v67;
  DWORD1(v69) = *&v67[3];
  v51 = v59;
  *(&v69 + 1) = v59;
  LOBYTE(v70) = v24;
  *(&v70 + 1) = *v66;
  DWORD1(v70) = *&v66[3];
  *(&v70 + 1) = v33;
  *v71 = v35;
  *&v71[8] = v37;
  *&v71[16] = v39;
  v71[24] = 0;
  v52 = v68;
  v53 = v69;
  *(v48 + 57) = *&v71[9];
  v54 = *v71;
  *(v48 + 2) = v70;
  *(v48 + 3) = v54;
  *v48 = v52;
  *(v48 + 1) = v53;
  sub_1C2C736A4(&v68, &v72, &qword_1EC05E518);
  v55 = *(v40 + 8);
  v55(v43, v44);
  v72 = v49;
  v73 = v50;
  v74 = v14;
  *v75 = *v67;
  *&v75[3] = *&v67[3];
  v76 = v51;
  v77 = v24;
  *v78 = *v66;
  *&v78[3] = *&v66[3];
  v79 = v33;
  v80 = v35;
  v81 = v37;
  v82 = v39;
  v83 = 0;
  sub_1C2C73644(&v72, &qword_1EC05E518);
  return (v55)(v64, v44);
}

unint64_t sub_1C2DF9B74()
{
  result = qword_1EC0632B8;
  if (!qword_1EC0632B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063298);
    sub_1C2DF9D9C(&qword_1EC0632C0, &qword_1EC0632C8, &unk_1C2E8D080, sub_1C2DF9C2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0632B8);
  }

  return result;
}

unint64_t sub_1C2DF9C2C()
{
  result = qword_1EC0632D0;
  if (!qword_1EC0632D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0632D8);
    sub_1C2C94F38(&qword_1EC0632E0, &qword_1EC0632E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0632D0);
  }

  return result;
}

unint64_t sub_1C2DF9CE4()
{
  result = qword_1EC0632F0;
  if (!qword_1EC0632F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063288);
    sub_1C2DF9D9C(&qword_1EC0632F8, &qword_1EC063280, &unk_1C2E8CFB8, sub_1C2DF9E4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0632F0);
  }

  return result;
}

uint64_t sub_1C2DF9D9C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C2C94F38(&qword_1EC05CB08, &qword_1EC05DC70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2DF9E4C()
{
  result = qword_1EC063300;
  if (!qword_1EC063300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0632B0);
    sub_1C2C94F38(&qword_1EC063308, &qword_1EC063310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063300);
  }

  return result;
}

uint64_t sub_1C2DF9F20@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = sub_1C2E74054();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C2E75564();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063398);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D778);
  sub_1C2E75574();
  *(swift_allocObject() + 16) = xmmword_1C2E7A930;
  *v6 = xmmword_1C2E7E2E0;
  (*(v4 + 104))(v6, *MEMORY[0x1E697D748], v3);
  sub_1C2E75584();
  v11 = v19;
  v21 = v19;
  sub_1C2E73DC4();
  LODWORD(v22) = 0;
  sub_1C2DFB7CC(&qword_1EC05B508, MEMORY[0x1E697FCB0]);
  sub_1C2E76924();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0633D8);
  sub_1C2DFB594();
  sub_1C2E75804();
  sub_1C2C94F38(&qword_1EC0633A0, &qword_1EC063398);
  v12 = v20;
  sub_1C2E74BA4();
  (*(v8 + 8))(v10, v7);
  v13 = sub_1C2E757B4();
  v22 = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  v14 = v23;
  swift_getKeyPath();
  *&v22 = v14;
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v15 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  v16 = *(v14 + v15);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063388);
  v18 = (v12 + *(result + 36));
  *v18 = v13;
  v18[1] = v16;
  return result;
}

uint64_t sub_1C2DFA398(uint64_t a1)
{
  v7[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061B00);
  sub_1C2E75184();
  swift_getKeyPath();
  *&v7[0] = v9;
  sub_1C2DFB7CC(&qword_1EC061290, type metadata accessor for WaitOnHoldViewModel);
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI19WaitOnHoldViewModel__transcriptItems;
  swift_beginAccess();
  v3 = *(v9 + v2);

  v8 = v3;
  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  sub_1C2DFB794(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0633F0);
  sub_1C2C94F38(&qword_1EC063420, &qword_1EC063418);
  sub_1C2DFB7CC(&qword_1EC063428, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
  sub_1C2DFB618();
  return sub_1C2E75434();
}

uint64_t sub_1C2DFA5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063400);
  MEMORY[0x1EEE9AC00](v31[0]);
  v4 = v31 - v3;
  v5 = type metadata accessor for WaitOnHoldViewModel.AudioCategory(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063430);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = type metadata accessor for CallTranscriptsView();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for WaitOnHoldViewModel.TranscriptComponent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2DFB814(a1, v16, type metadata accessor for WaitOnHoldViewModel.TranscriptComponent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C2CF82A8(v16, v7);
    v17 = *(v5 + 20);
    v18 = &v7[*(v5 + 24)];
    v19 = *v18;
    v20 = v18[1];
    v21 = *&v7[v17];
    v22 = *&v7[v17 + 8];
    *v4 = sub_1C2E73C24();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063438);
    sub_1C2DFA9F0(v21, v22, v19, v20, &v4[*(v23 + 44)]);
    v24 = sub_1C2E74444();
    v25 = &v4[*(v31[0] + 36)];
    *v25 = v24;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    v25[40] = 1;
    sub_1C2C736A4(v4, v10, &qword_1EC063400);
    swift_storeEnumTagMultiPayload();
    sub_1C2DFB7CC(&qword_1EC05DA48, type metadata accessor for CallTranscriptsView);
    sub_1C2DFB6D4();
    sub_1C2E73F44();
    sub_1C2C73644(v4, &qword_1EC063400);
    v26 = type metadata accessor for WaitOnHoldViewModel.AudioCategory;
    v27 = v7;
  }

  else
  {
    v28 = *v16;
    v29 = *(v11 + 20);
    *(v13 + v29) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
    swift_storeEnumTagMultiPayload();
    *v13 = v28;
    sub_1C2DFB814(v13, v10, type metadata accessor for CallTranscriptsView);
    swift_storeEnumTagMultiPayload();
    sub_1C2DFB7CC(&qword_1EC05DA48, type metadata accessor for CallTranscriptsView);
    sub_1C2DFB6D4();
    sub_1C2E73F44();
    v26 = type metadata accessor for CallTranscriptsView;
    v27 = v13;
  }

  return sub_1C2DFB87C(v27, v26);
}

uint64_t sub_1C2DFA9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v112 = a4;
  *&v111 = a3;
  v96[1] = a1;
  v108 = a5;
  v6 = sub_1C2E73D04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063440);
  MEMORY[0x1EEE9AC00](v7);
  v105 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v96 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063448);
  MEMORY[0x1EEE9AC00](v12);
  v107 = v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v103 = v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v96 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v96 - v24;
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1C2E73D44();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  LODWORD(v101) = v26;
  v99 = v29;
  v100 = v27;
  v98 = v28 + 104;
  (v29)(v11, v26);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v30 = sub_1C2E74F74();

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063450);
  *&v11[*(v31 + 52)] = v30;
  v97 = v31;
  *&v11[*(v31 + 56)] = 256;
  sub_1C2E75744();
  sub_1C2E73274();
  v102 = v7;
  v32 = &v11[*(v7 + 36)];
  v33 = v114;
  *v32 = v113;
  *(v32 + 1) = v33;
  *(v32 + 2) = v115;
  sub_1C2E75744();
  sub_1C2E737F4();
  sub_1C2C71D5C(v11, v22, &qword_1EC063440);
  v104 = v12;
  v34 = &v22[*(v12 + 36)];
  v35 = v121;
  *(v34 + 4) = v120;
  *(v34 + 5) = v35;
  *(v34 + 6) = v122;
  v36 = v117;
  *v34 = v116;
  *(v34 + 1) = v36;
  v37 = v119;
  *(v34 + 2) = v118;
  *(v34 + 3) = v37;
  v109 = v25;
  sub_1C2C71D5C(v22, v25, &qword_1EC063448);
  if (a2)
  {

    sub_1C2E73CF4();
    sub_1C2E73CE4();
    sub_1C2E75044();
    sub_1C2E73CC4();

    sub_1C2E73CE4();
    sub_1C2E73CD4();
    sub_1C2E73CE4();
    sub_1C2E73D24();
    v38 = sub_1C2E74884();
    v40 = v39;
    v42 = v41;
    LODWORD(v126) = sub_1C2E740F4();
    v43 = sub_1C2E74794();
    v45 = v44;
    v47 = v46;
    sub_1C2C72340(v38, v40, v42 & 1);

    sub_1C2E74634();
    v48 = sub_1C2E747F4();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_1C2C72340(v43, v45, v47 & 1);

    *&v123 = v48;
    *(&v123 + 1) = v50;
    *&v124 = v52 & 1;
    *(&v124 + 1) = v54;
    LOBYTE(v125) = 0;
  }

  else
  {
    *&v126 = v111;
    *(&v126 + 1) = v112;
    sub_1C2C74960();

    v55 = sub_1C2E748A4();
    v57 = v56;
    v59 = v58;
    LODWORD(v126) = sub_1C2E740F4();
    v60 = sub_1C2E74794();
    v62 = v61;
    v64 = v63;
    sub_1C2C72340(v55, v57, v59 & 1);

    sub_1C2E74634();
    v65 = sub_1C2E747F4();
    v67 = v66;
    v69 = v68;
    v71 = v70;

    sub_1C2C72340(v60, v62, v64 & 1);

    *&v123 = v65;
    *(&v123 + 1) = v67;
    *&v124 = v69 & 1;
    *(&v124 + 1) = v71;
    LOBYTE(v125) = 1;
  }

  sub_1C2E73F44();
  v111 = v126;
  v112 = v127;
  v72 = v128;
  v73 = v105;
  v99(v105, v101, v100);
  v74 = v111;
  v75 = v112;
  v101 = *(&v112 + 1);
  v76 = *(&v111 + 1);
  sub_1C2D1EF64(v111, *(&v111 + 1), v112);
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v77 = sub_1C2E74F74();

  v78 = v97;
  *&v73[*(v97 + 52)] = v77;
  *&v73[*(v78 + 56)] = 256;
  sub_1C2E75744();
  sub_1C2E73274();
  v79 = &v73[*(v102 + 36)];
  v80 = v124;
  *v79 = v123;
  *(v79 + 1) = v80;
  *(v79 + 2) = v125;
  sub_1C2E75744();
  sub_1C2E737F4();
  v81 = v73;
  v82 = v103;
  sub_1C2C71D5C(v81, v103, &qword_1EC063440);
  v83 = (v82 + *(v104 + 36));
  v84 = v131;
  v83[4] = v130;
  v83[5] = v84;
  v83[6] = v132;
  v85 = v127;
  *v83 = v126;
  v83[1] = v85;
  v86 = v129;
  v83[2] = v128;
  v83[3] = v86;
  v87 = v106;
  sub_1C2C71D5C(v82, v106, &qword_1EC063448);
  v88 = v110;
  sub_1C2C736A4(v109, v110, &qword_1EC063448);
  v89 = v107;
  sub_1C2C736A4(v87, v107, &qword_1EC063448);
  v90 = v88;
  v91 = v108;
  sub_1C2C736A4(v90, v108, &qword_1EC063448);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063458);
  v93 = v91 + *(v92 + 48);
  v94 = v112;
  *v93 = v111;
  *(v93 + 16) = v94;
  *(v93 + 32) = v72;
  sub_1C2C736A4(v89, v91 + *(v92 + 64), &qword_1EC063448);
  sub_1C2D1EF64(v74, v76, v75);
  sub_1C2D1EFA0(v74, v76, v75);
  sub_1C2C73644(v87, &qword_1EC063448);
  sub_1C2C73644(v109, &qword_1EC063448);
  sub_1C2C73644(v89, &qword_1EC063448);
  sub_1C2D1EFA0(v74, v76, v75);
  return sub_1C2C73644(v110, &qword_1EC063448);
}

unint64_t sub_1C2DFB338()
{
  result = qword_1EC063318;
  if (!qword_1EC063318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063320);
    sub_1C2DFB3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063318);
  }

  return result;
}

unint64_t sub_1C2DFB3BC()
{
  result = qword_1EC063328;
  if (!qword_1EC063328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0632A0);
    sub_1C2DF9B74();
    sub_1C2DF9CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063328);
  }

  return result;
}

unint64_t sub_1C2DFB464()
{
  result = qword_1EC063390;
  if (!qword_1EC063390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063388);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063398);
    sub_1C2C94F38(&qword_1EC0633A0, &qword_1EC063398);
    swift_getOpaqueTypeConformance2();
    sub_1C2C94F38(&qword_1EC0633A8, &qword_1EC0633B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063390);
  }

  return result;
}

unint64_t sub_1C2DFB594()
{
  result = qword_1EC0633E0;
  if (!qword_1EC0633E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0633D8);
    sub_1C2DFB618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0633E0);
  }

  return result;
}

unint64_t sub_1C2DFB618()
{
  result = qword_1EC0633E8;
  if (!qword_1EC0633E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0633F0);
    sub_1C2DFB7CC(&qword_1EC05DA48, type metadata accessor for CallTranscriptsView);
    sub_1C2DFB6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0633E8);
  }

  return result;
}

unint64_t sub_1C2DFB6D4()
{
  result = qword_1EC0633F8;
  if (!qword_1EC0633F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063400);
    sub_1C2C94F38(&qword_1EC063408, &qword_1EC063410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0633F8);
  }

  return result;
}

uint64_t sub_1C2DFB7CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2DFB814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C2DFB87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C2DFB92C()
{
  v1 = v0;
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v5 = sub_1C2E76084();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C2E75A54();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1C2DFBE38();
    v7 = objc_opt_self();
    v8 = *(v1 + 40);
    v9 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1C2DFC55C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2DFC634;
    aBlock[3] = &block_descriptor_31_0;
    v10 = _Block_copy(aBlock);

    v11 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:v8];
    _Block_release(v10);
    v12 = *(v1 + 16);
    *(v1 + 16) = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C2DFBB34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C2E75E74();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1C2D22888(0, 0, v2, &unk_1C2E8D380, v5);
}

uint64_t sub_1C2DFBC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C2DFBCA4, 0, 0);
}

uint64_t sub_1C2DFBCA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1C2E75E34();
    *(v0 + 64) = sub_1C2E75E24();
    v3 = sub_1C2E75DD4();

    return MEMORY[0x1EEE6DFA0](sub_1C2DFBD9C, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C2DFBD9C()
{

  sub_1C2DFBF68();

  return MEMORY[0x1EEE6DFA0](sub_1C2DFBE10, 0, 0);
}

void sub_1C2DFBE38()
{
  v1 = v0;
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v5 = sub_1C2E76084();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C2E75A54();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    [*(v1 + 16) invalidate];
    v7 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C2DFBF68()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v4 - 1;
    if (!__OFSUB__(v4, 1))
    {
      goto LABEL_3;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = sub_1C2E764E4();
  v5 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v3 >= v5)
  {
    goto LABEL_8;
  }

  v6 = *(v0 + 56);
  v3 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_17;
  }

  *(v0 + 56) = v3;
  v1 = *(v0 + 48);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (v3 < 0)
  {
    __break(1u);
LABEL_8:
    v3 = 0;
    *(v0 + 56) = 0;
    v1 = *(v0 + 48);
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:

    v7 = MEMORY[0x1C6927010](v3, v1);

    goto LABEL_11;
  }

LABEL_9:
  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v1 + 8 * v3 + 32);
LABEL_11:
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    swift_weakInit();
    v20 = sub_1C2DFC4FC;
    v21 = v9;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1C2CB2CC4;
    v19 = &block_descriptor_21;
    v10 = _Block_copy(&v16);

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v7;
    v20 = sub_1C2DFC534;
    v21 = v12;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1C2CB3840;
    v19 = &block_descriptor_23_0;
    v13 = _Block_copy(&v16);
    v14 = v7;

    [v8 animateWithDuration:v10 animations:v13 completion:0.2];
    _Block_release(v13);
    _Block_release(v10);

    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1C2DFC1E8(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if ((a1 & 1) == 0)
      {
        [Strong setAlpha_];
      }

      [*&Strong[OBJC_IVAR____TtC16CommunicationsUI11BadgedLabel_label] setAttributedText_];
      [Strong setNeedsLayout];
      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = swift_unknownObjectWeakLoadStrong();
        v9 = *(v7 + 72);

        if (v8)
        {
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      aBlock[4] = sub_1C2DFC53C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C2CB2CC4;
      aBlock[3] = &block_descriptor_27;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.2];
      _Block_release(v13);
    }
  }
}

void sub_1C2DFC400(double a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setAlpha_];
    }
  }
}

uint64_t sub_1C2DFC488()
{
  sub_1C2C93260(v0 + 24);

  sub_1C2C93260(v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2DFC564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DFBC84(a1, v4, v5, v6);
}

void sub_1C2DFC634(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1C2DFC69C(double a1)
{
  if (a1 < 0.0)
  {
    return 0;
  }

  if (*(v1 + 8) <= a1)
  {
    if (*(v1 + 24) <= a1)
    {
      result = [*(v1 + 32) stringFromTimeInterval_];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [*(v1 + 16) stringFromTimeInterval_];
      if (!result)
      {
        return result;
      }
    }

    v5 = result;
    v6 = sub_1C2E75C64();

    return v6;
  }

  result = [*v1 stringFromTimeInterval_];
  if (result)
  {
    v3 = result;
    v4 = sub_1C2E75C64();

    sub_1C2E75CF4();

    return v4;
  }

  return result;
}

uint64_t sub_1C2DFC794(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
}

uint64_t DurationLabelController.__allocating_init(durationProvider:textColor:voiceOverUpdateHandler:prefixAttributedString:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  DurationLabelController.init(durationProvider:textColor:voiceOverUpdateHandler:prefixAttributedString:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t DurationLabelController.init(durationProvider:textColor:voiceOverUpdateHandler:prefixAttributedString:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v34 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v33 = a2;
  v7 = sub_1C2E75A34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5[8] = 0;
  v5[9] = 0;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v11 setZeroFormattingBehavior_];
  [v11 setAllowedUnits_];
  [v11 setUnitsStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v12 setAllowedUnits_];
  [v12 setUnitsStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v13 setAllowedUnits_];
  [v13 setUnitsStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061148);
  inited = swift_initStackObject();
  v15 = *MEMORY[0x1E69DB748];
  *(inited + 32) = *MEMORY[0x1E69DB748];
  *(inited + 16) = xmmword_1C2E7A930;
  *(inited + 64) = MEMORY[0x1E69E63B0];
  *(inited + 40) = 0xBFE0000000000000;
  v16 = v15;
  v17 = sub_1C2D94C74(inited);
  swift_setDeallocating();
  sub_1C2DFD98C(inited + 32);
  v6[10] = v11;
  v6[11] = 0x4082C00000000000;
  v6[12] = v12;
  v6[13] = 0x40AC200000000000;
  v6[14] = v13;
  v6[15] = v17;
  v6[17] = 0;
  v6[18] = 0;
  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1C2E75C24();
  v20 = [v18 initWithString_];

  v41 = v20;
  v42 = 0;
  v43 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063468);
  swift_allocObject();
  v6[19] = sub_1C2E72E14();
  sub_1C2C9DC60();
  *v10 = sub_1C2E76084();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  LOBYTE(v20) = sub_1C2E75A54();
  result = (*(v8 + 8))(v10, v7);
  if (v20)
  {
    v22 = v33;
    v6[2] = v33;
    v23 = v37;
    sub_1C2C6E3A4(v37, (v6 + 3));
    v24 = v6[17];
    v25 = v35;
    v26 = v36;
    v6[17] = v35;
    v6[18] = v26;
    v33 = v22;
    sub_1C2C9A508(v25);
    sub_1C2C71668(v24);
    v27 = v34;
    v6[16] = v34;
    v28 = v27;
    sub_1C2DFD330();
    swift_beginAccess();

    v29 = sub_1C2DFD4E0();
    v38 = v29;
    v39 = v30;
    v40 = v31;
    sub_1C2E72DF4();

    sub_1C2C71668(v25);

    __swift_destroy_boxed_opaque_existential_1(v23);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DurationLabelController.deinit()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    [v1 invalidate];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v2 = *(v0 + 80);
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);

  sub_1C2C71668(*(v0 + 136));

  return v0;
}

uint64_t DurationLabelController.__deallocating_deinit()
{
  DurationLabelController.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

void sub_1C2DFCD28()
{
  v1 = v0;
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v5 = sub_1C2E76084();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C2E75A54();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1C2DFD200();
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1C2DFD9F4;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C2DFC634;
    aBlock[3] = &block_descriptor_22;
    v9 = _Block_copy(aBlock);

    v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:1.0];
    _Block_release(v9);
    v11 = *(v1 + 72);
    *(v1 + 72) = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C2DFCF24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC064560);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1C2E75E74();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1C2D22888(0, 0, v2, &unk_1C2E8D4B8, v5);
}

uint64_t sub_1C2DFD074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C2DFD094, 0, 0);
}

uint64_t sub_1C2DFD094()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1C2E75E34();
    *(v0 + 64) = sub_1C2E75E24();
    v3 = sub_1C2E75DD4();

    return MEMORY[0x1EEE6DFA0](sub_1C2DFD18C, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1C2DFD18C()
{

  sub_1C2DFD330();

  return MEMORY[0x1EEE6DFA0](sub_1C2DFBE10, 0, 0);
}

void sub_1C2DFD200()
{
  v1 = v0;
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v5 = sub_1C2E76084();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C2E75A54();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    [*(v1 + 72) invalidate];
    v7 = *(v1 + 72);
    *(v1 + 72) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C2DFD330()
{
  v1 = v0;
  v2 = sub_1C2E75A34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v5 = sub_1C2E76084();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1C2E75A54();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = *(v1 + 48);
    v8 = *(v1 + 56);
    __swift_project_boxed_opaque_existential_1((v1 + 24), v7);
    v9 = (*(v8 + 8))(v7, v8);
    v10 = *(v1 + 64);
    *(v1 + 64) = v9;
    if (v9 != v10)
    {
      swift_beginAccess();

      v11 = sub_1C2DFD4E0();
      v14[0] = v11;
      v14[1] = v12;
      v14[2] = v13;
      sub_1C2E72DF4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_1C2DFD4E0()
{
  v2 = v0;
  v3 = sub_1C2E75A34();
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2C9DC60();
  *v6 = sub_1C2E76084();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1C2E75A54();
  v9 = *(v4 + 8);
  v8 = v4 + 8;
  v9(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_15;
  }

  v10 = *(v2 + 96);
  v35 = *(v2 + 80);
  v36 = v10;
  v37 = *(v2 + 112);
  sub_1C2DFC69C(*(v2 + 64));
  if (!v11)
  {
    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1C2E75C24();
    v6 = [v24 initWithString_];

    return v6;
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1C2E75C24();
  type metadata accessor for Key(0);
  sub_1C2DFDBCC();
  v14 = sub_1C2E75B34();
  v3 = [v12 initWithString:v13 attributes:v14];

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v16 = v15;
  v17 = *(v2 + 128);
  if (v17)
  {
    [v15 appendAttributedString_];
  }

  [v16 appendAttributedString_];
  v18 = *MEMORY[0x1E69DB650];
  v34[0] = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063470);
  v19 = sub_1C2E76414();
  v6 = v16;
  [v6 addAttribute:v18 value:v19 range:{0, objc_msgSend(v6, sel_length)}];
  swift_unknownObjectRelease();
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    v20 = *(v2 + 136);
    if (v20)
    {

      v20(v21);
      sub_1C2C71668(v20);
    }
  }

  if (v17)
  {
    v22 = [v17 string];
    v1 = sub_1C2E75C64();
    v8 = v23;
  }

  else
  {
    v1 = 0;
    v8 = 0xE000000000000000;
  }

  v26 = *(v2 + 48);
  v27 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v26);
  (*(v27 + 8))(v26, v27);
  if (qword_1EC05D010 != -1)
  {
    goto LABEL_21;
  }

LABEL_15:
  v28 = [qword_1EC063460 stringFromTimeInterval_];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1C2E75C64();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v34[0] = v1;
  v34[1] = v8;

  MEMORY[0x1C6926710](v30, v32);

  return v6;
}

id sub_1C2DFD914()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setAllowedUnits_];
  result = [v0 setZeroFormattingBehavior_];
  qword_1EC063460 = v0;
  return result;
}

uint64_t sub_1C2DFD98C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2DFDB18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C2C7DC10;

  return sub_1C2DFD074(a1, v4, v5, v6);
}

unint64_t sub_1C2DFDBCC()
{
  result = qword_1EC05D488;
  if (!qword_1EC05D488)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05D488);
  }

  return result;
}

uint64_t sub_1C2DFDC24(char a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *(a2 + 16);
  if (a1)
  {
    v5 = *a2;
    v6 = v2;
    v7 = v3;
    if (a1 == 1)
    {
      return sub_1C2D38C18(&v5);
    }

    else
    {
      return sub_1C2D391B8(&v5);
    }
  }

  else
  {
    v5 = *a2;
    v6 = v2;
    v7 = v3;
    return sub_1C2D386D8(&v5);
  }
}

uint64_t sub_1C2DFDC90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C2DFDD20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2DFDE98(v1, v2);
}

uint64_t sub_1C2DFDD60()
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1C2DFDDF4()
{
  result = qword_1EC063480;
  if (!qword_1EC063480)
  {
    type metadata accessor for ParticipantDetails();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063480);
  }

  return result;
}

uint64_t type metadata accessor for ParticipantDetails()
{
  result = qword_1EC063488;
  if (!qword_1EC063488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2DFDE98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1C2E767A4() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2DFDDF4();
    sub_1C2E71A54();
  }
}

uint64_t sub_1C2DFDFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void (*sub_1C2DFE048(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DFDDF4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF0F6C();
  return sub_1C2DFE150;
}

uint64_t sub_1C2DFE1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_1C2DFE244()
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A54();
}

uint64_t sub_1C2DFE2F4()
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C2DFE390()
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A54();
}

uint64_t sub_1C2DFE448(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
}

void (*sub_1C2DFE4E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DFDDF4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DFE15C();
  return sub_1C2DFE5F0;
}

uint64_t sub_1C2DFE64C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_1C2DFE6DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2DFE7B0(v1, v2);
}

uint64_t sub_1C2DFE71C()
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C2DFE7B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_1C2E767A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2DFDDF4();
  sub_1C2E71A54();
}

void (*sub_1C2DFE8E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2DFDDF4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DFE5FC();
  return sub_1C2DFE9EC;
}

uint64_t ParticipantDetails.__allocating_init(status:label:additionalDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  sub_1C2E71A94();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  sub_1C2DFE7B0(a6, a7);
  return v14;
}

uint64_t ParticipantDetails.init(status:label:additionalDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  sub_1C2E71A94();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  sub_1C2DFE7B0(a6, a7);
  return v7;
}

uint64_t ParticipantDetails.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ParticipantDetails.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI18ParticipantDetails___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C2DFEC40()
{
  result = sub_1C2E71AA4();
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI7AnyViewVIego_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C2DFEEB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C2DFEF14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1C2DFEF98@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  if (*v1 < 0)
  {
    sub_1C2DFFA28(*v1, v1[1]);
    v6 = sub_1C2E73DC4();
    v8[0] = 1;
    sub_1C2DFF354(v4 & 0x7FFFFFFFFFFFFFFFLL, v3, __dst);
    v21 = __dst[12];
    v22 = __dst[13];
    v23 = __dst[14];
    v24 = __dst[15];
    v17 = __dst[8];
    v18 = __dst[9];
    v19 = __dst[10];
    v20 = __dst[11];
    v13 = __dst[4];
    v14 = __dst[5];
    v15 = __dst[6];
    v16 = __dst[7];
    v9 = __dst[0];
    v10 = __dst[1];
    v11 = __dst[2];
    v12 = __dst[3];
    v25[12] = __dst[12];
    v25[13] = __dst[13];
    v25[14] = __dst[14];
    v25[15] = __dst[15];
    v25[8] = __dst[8];
    v25[9] = __dst[9];
    v25[10] = __dst[10];
    v25[11] = __dst[11];
    v25[4] = __dst[4];
    v25[5] = __dst[5];
    v25[6] = __dst[6];
    v25[7] = __dst[7];
    v25[0] = __dst[0];
    v25[1] = __dst[1];
    v25[2] = __dst[2];
    v25[3] = __dst[3];
    sub_1C2C736A4(&v9, __src, &qword_1EC063498);
    sub_1C2C73644(v25, &qword_1EC063498);
    *(&__dst[12] + 7) = v21;
    *(&__dst[13] + 7) = v22;
    *(&__dst[14] + 7) = v23;
    *(&__dst[15] + 7) = v24;
    *(&__dst[8] + 7) = v17;
    *(&__dst[9] + 7) = v18;
    *(&__dst[10] + 7) = v19;
    *(&__dst[11] + 7) = v20;
    *(&__dst[4] + 7) = v13;
    *(&__dst[5] + 7) = v14;
    *(&__dst[6] + 7) = v15;
    *(&__dst[7] + 7) = v16;
    *(__dst + 7) = v9;
    *(&__dst[1] + 7) = v10;
    *(&__dst[2] + 7) = v11;
    *(&__dst[3] + 7) = v12;
    v26[0] = v6;
    v26[1] = 0;
    LOBYTE(v26[2]) = 1;
    memcpy(&v26[2] + 1, __dst, 0x107uLL);
    memcpy(__src, v26, 0x118uLL);
    sub_1C2D635A0(__src);
    memcpy(__dst, __src, 0x119uLL);
    sub_1C2C736A4(v26, v8, &qword_1EC0634A0);
    sub_1C2C736A4(v26, v8, &qword_1EC0634A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634A0);
    sub_1C2DFFA94();
    sub_1C2C94F38(&qword_1EC0634B0, &qword_1EC0634A0);
    sub_1C2E73F44();

    sub_1C2C73644(v26, &qword_1EC0634A0);
    sub_1C2C73644(v26, &qword_1EC0634A0);
    memcpy(__dst, v8, 0x119uLL);
  }

  else
  {
    __src[0] = *v1;
    __src[1] = v3;
    __src[2] = v5;
    sub_1C2D635AC(__src);
    memcpy(v8, __src, 0x119uLL);
    sub_1C2DFFA28(v4, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634A0);
    sub_1C2DFFA94();
    sub_1C2C94F38(&qword_1EC0634B0, &qword_1EC0634A0);
    sub_1C2E73F44();
  }

  return memcpy(a1, __dst, 0x119uLL);
}

uint64_t sub_1C2DFF354@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, _OWORD *a3@<X8>)
{
  v19 = sub_1C2E73C24();
  LOBYTE(v48[0]) = 1;
  sub_1C2DFF738(a1, &v55);
  v31 = *&v56[16];
  v32 = *&v56[32];
  v29 = v55;
  v30 = *v56;
  v34[2] = *&v56[16];
  v34[3] = *&v56[32];
  v34[4] = *&v56[48];
  v34[1] = *v56;
  v33 = *&v56[48];
  v34[0] = v55;
  sub_1C2C736A4(&v29, &v41, &qword_1EC05EF28);
  sub_1C2C73644(v34, &qword_1EC05EF28);
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[7] = v29;
  v6 = v48[0];
  LOBYTE(a1) = sub_1C2E74474();
  sub_1C2E73034();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v55) = 0;
  v15 = sub_1C2E73C24();
  LOBYTE(v48[0]) = 1;
  sub_1C2DFF738(a2, &v55);
  v37 = *&v56[16];
  v38 = *&v56[32];
  v35 = v55;
  v36 = *v56;
  v40[2] = *&v56[16];
  v40[3] = *&v56[32];
  v40[4] = *&v56[48];
  v40[1] = *v56;
  v39 = *&v56[48];
  v40[0] = v55;
  sub_1C2C736A4(&v35, &v41, &qword_1EC05EF28);
  sub_1C2C73644(v40, &qword_1EC05EF28);
  *&v27[23] = v36;
  *&v27[39] = v37;
  *&v27[55] = v38;
  *&v27[71] = v39;
  *&v27[7] = v35;
  v16 = v48[0];
  v41 = v19;
  v42[0] = v6;
  *&v42[17] = *&v28[16];
  *&v42[1] = *v28;
  *&v42[80] = *&v28[79];
  *&v42[65] = *&v28[64];
  *&v42[49] = *&v28[48];
  *&v42[33] = *&v28[32];
  v42[88] = a1;
  *&v43 = v8;
  *(&v43 + 1) = v10;
  *&v44 = v12;
  *(&v44 + 1) = v14;
  v26[0] = 0;
  v24 = v43;
  v25 = v44;
  v20 = *v42;
  v22 = *&v42[64];
  v23 = *&v42[80];
  v21 = *&v42[48];
  v46[0] = v15;
  v46[1] = 0;
  v47[0] = v48[0];
  *&v47[1] = *v27;
  *&v47[17] = *&v27[16];
  *&v47[65] = *&v27[64];
  *&v47[49] = *&v27[48];
  *&v47[33] = *&v27[32];
  *&v47[80] = *(&v39 + 1);
  *&v26[40] = *&v47[16];
  *&v26[24] = *v47;
  *&v26[8] = v15;
  *&v26[88] = *&v47[64];
  *&v26[104] = *(&v39 + 1);
  *&v26[72] = *&v47[48];
  *&v26[56] = *&v47[32];
  v17 = *&v42[32];
  a3[2] = *&v42[16];
  a3[3] = v17;
  *a3 = v19;
  a3[1] = v20;
  a3[6] = v23;
  a3[7] = v24;
  a3[4] = v21;
  a3[5] = v22;
  a3[10] = *&v26[16];
  a3[11] = *&v26[32];
  a3[8] = v25;
  a3[9] = *v26;
  a3[14] = *&v26[80];
  a3[15] = *&v26[96];
  a3[12] = *&v26[48];
  a3[13] = *&v26[64];
  v52 = *&v27[32];
  v45 = 0;
  v48[0] = v15;
  v48[1] = 0;
  v49 = v16;
  v53 = *&v27[48];
  *v54 = *&v27[64];
  *&v54[15] = *&v27[79];
  v50 = *v27;
  v51 = *&v27[16];
  sub_1C2C736A4(&v41, &v55, &qword_1EC0634B8);
  sub_1C2C736A4(v46, &v55, &qword_1EC05EF40);
  sub_1C2C73644(v48, &qword_1EC05EF40);
  v55 = v19;
  v56[0] = v6;
  *&v56[33] = *&v28[32];
  *&v56[49] = *&v28[48];
  *v57 = *&v28[64];
  *&v57[15] = *&v28[79];
  *&v56[1] = *v28;
  *&v56[17] = *&v28[16];
  v58 = a1;
  v59 = v8;
  v60 = v10;
  v61 = v12;
  v62 = v14;
  v63 = 0;
  return sub_1C2C73644(&v55, &qword_1EC0634B8);
}

uint64_t sub_1C2DFF738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C74960();

  v4 = sub_1C2E748A4();
  v6 = v5;
  v8 = v7;
  swift_getKeyPath();
  sub_1C2E71A64();

  if (*(a1 + 48) == 1)
  {
    sub_1C2E740F4();
  }

  else
  {
    sub_1C2E740D4();
  }

  v9 = sub_1C2E74794();
  v27 = v10;
  v28 = v9;
  v26 = v11;
  v29 = v12;
  sub_1C2C72340(v4, v6, v8 & 1);

  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();

  v13 = sub_1C2E748A4();
  v15 = v14;
  v17 = v16;
  sub_1C2E740F4();
  v18 = sub_1C2E74794();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1C2C72340(v13, v15, v17 & 1);

  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22 & 1;
  *(a2 + 72) = v24;
  sub_1C2C72330(v28, v27, v26 & 1);

  sub_1C2C72330(v18, v20, v22 & 1);

  sub_1C2C72340(v18, v20, v22 & 1);

  sub_1C2C72340(v28, v27, v26 & 1);
}

uint64_t sub_1C2DFFA28(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
  }

  else
  {

    return sub_1C2C6EE50(a2);
  }
}

unint64_t sub_1C2DFFA94()
{
  result = qword_1EC0634A8;
  if (!qword_1EC0634A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0634A8);
  }

  return result;
}

unint64_t sub_1C2DFFAF8()
{
  result = qword_1EC0634C0;
  if (!qword_1EC0634C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0634C8);
    sub_1C2DFFA94();
    sub_1C2C94F38(&qword_1EC0634B0, &qword_1EC0634A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0634C0);
  }

  return result;
}

void *sub_1C2DFFBCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a2)
  {

    v6 = sub_1C2E73C24();
    v38[0] = 1;
    sub_1C2E000B8(a2, a1, v41);
    v21 = v41[12];
    v22[0] = v41[13];
    *(v22 + 9) = *(&v41[13] + 9);
    v17 = v41[8];
    v18 = v41[9];
    v19 = v41[10];
    v20 = v41[11];
    v13 = v41[4];
    v14 = v41[5];
    v15 = v41[6];
    v16 = v41[7];
    v9 = v41[0];
    v10 = v41[1];
    v11 = v41[2];
    v12 = v41[3];
    v35 = v41[12];
    v36[0] = v41[13];
    *(v36 + 9) = *(&v41[13] + 9);
    v31 = v41[8];
    v32 = v41[9];
    v33 = v41[10];
    v34 = v41[11];
    v27 = v41[4];
    v28 = v41[5];
    v29 = v41[6];
    v30 = v41[7];
    v23 = v41[0];
    v24 = v41[1];
    v25 = v41[2];
    v26 = v41[3];
    sub_1C2C736A4(&v9, __dst, &qword_1EC0634F8);
    sub_1C2C73644(&v23, &qword_1EC0634F8);
    *(&v41[11] + 7) = v20;
    *(&v41[12] + 7) = v21;
    *(&v41[13] + 7) = v22[0];
    v41[14] = *(v22 + 9);
    *(&v41[7] + 7) = v16;
    *(&v41[8] + 7) = v17;
    *(&v41[9] + 7) = v18;
    *(&v41[10] + 7) = v19;
    *(&v41[3] + 7) = v12;
    *(&v41[4] + 7) = v13;
    *(&v41[5] + 7) = v14;
    *(&v41[6] + 7) = v15;
    *(v41 + 7) = v9;
    *(&v41[1] + 7) = v10;
    *(&v41[2] + 7) = v11;
    *(&__src[12] + 1) = v41[11];
    *(&__src[13] + 1) = v41[12];
    *(&__src[14] + 1) = v41[13];
    *(&__src[15] + 1) = *(v22 + 9);
    *(&__src[8] + 1) = v41[7];
    *(&__src[9] + 1) = v41[8];
    *(&__src[10] + 1) = v41[9];
    *(&__src[11] + 1) = v41[10];
    *(&__src[4] + 1) = v41[3];
    *(&__src[5] + 1) = v41[4];
    *(&__src[6] + 1) = v41[5];
    *(&__src[7] + 1) = v41[6];
    *(&__src[1] + 1) = v41[0];
    *(&__src[2] + 1) = v41[1];
    __src[0] = v6;
    LOBYTE(__src[1]) = v38[0];
    *(&__src[3] + 1) = v41[2];
    memcpy(__dst, __src, 0x101uLL);
    sub_1C2E009D4(__dst);
    memcpy(v41, __dst, 0x102uLL);
    sub_1C2C736A4(__src, v38, &qword_1EC0634D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634E0);
    sub_1C2C94F38(&qword_1EC0634E8, &qword_1EC0634D8);
    sub_1C2C94F38(&qword_1EC0634F0, &qword_1EC0634E0);
    sub_1C2E73F44();
    sub_1C2C71668(a2);
    sub_1C2C73644(__src, &qword_1EC0634D8);
    memcpy(v41, v38, 0x102uLL);
  }

  else
  {
    v7 = sub_1C2E73DC4();
    v38[0] = 1;
    sub_1C2E00440(a1, v41);
    v25 = v41[2];
    v26 = v41[3];
    v27 = v41[4];
    v28 = v41[5];
    v23 = v41[0];
    v24 = v41[1];
    __src[2] = v41[2];
    __src[3] = v41[3];
    __src[4] = v41[4];
    __src[5] = v41[5];
    __src[0] = v41[0];
    __src[1] = v41[1];
    sub_1C2C736A4(&v23, __dst, &qword_1EC0634D0);
    sub_1C2C73644(__src, &qword_1EC0634D0);
    *&v39[39] = v25;
    *&v39[55] = v26;
    *&v39[71] = v27;
    *&v39[87] = v28;
    *&v39[7] = v23;
    *&v39[23] = v24;
    __dst[0] = v7;
    __dst[1] = 0;
    LOBYTE(__dst[2]) = v38[0];
    *(&__dst[6] + 1) = *&v39[32];
    *(&__dst[4] + 1) = *&v39[16];
    *(&__dst[2] + 1) = *v39;
    __dst[14] = *(&v28 + 1);
    *(&__dst[12] + 1) = *&v39[80];
    *(&__dst[10] + 1) = *&v39[64];
    *(&__dst[8] + 1) = *&v39[48];
    sub_1C2E009C8(__dst);
    memcpy(v38, __dst, 0x102uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0634E0);
    sub_1C2C94F38(&qword_1EC0634E8, &qword_1EC0634D8);
    sub_1C2C94F38(&qword_1EC0634F0, &qword_1EC0634E0);
    sub_1C2E73F44();
  }

  return memcpy(a3, v41, 0x102uLL);
}

uint64_t sub_1C2E000B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a1();
  sub_1C2E75744();
  sub_1C2E73274();
  v32 = v58;
  v33 = v56;
  v5 = v59;
  v29 = sub_1C2E744A4();
  sub_1C2E73034();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v78) = v57;
  v31 = v57;
  LOBYTE(v76) = v59;
  v30 = sub_1C2E73DD4();
  LOBYTE(v35[0]) = 1;
  sub_1C2E00440(a2, &v78);
  v64 = *&v79[16];
  v65 = *&v79[32];
  v66 = *&v79[48];
  v67 = *&v79[64];
  v62 = v78;
  v63 = *v79;
  v68[2] = *&v79[16];
  v68[3] = *&v79[32];
  v68[4] = *&v79[48];
  v68[5] = *&v79[64];
  v68[0] = v78;
  v68[1] = *v79;
  sub_1C2C736A4(&v62, &v76, &qword_1EC0634D0);
  sub_1C2C73644(v68, &qword_1EC0634D0);
  *&v55[39] = v64;
  *&v55[55] = v65;
  *&v55[71] = v66;
  *&v55[87] = v67;
  *&v55[7] = v62;
  *&v55[23] = v63;
  *&v69 = v34;
  *(&v69 + 1) = v56;
  LOBYTE(v70) = v57;
  *(&v70 + 1) = v58;
  LOBYTE(v71) = v59;
  v14 = v61;
  v15 = v60;
  *(&v71 + 1) = v60;
  *&v72 = v61;
  BYTE8(v72) = v29;
  *&v73 = v7;
  *(&v73 + 1) = v9;
  *&v74 = v11;
  *(&v74 + 1) = v13;
  v48 = v69;
  v49 = v70;
  v54[0] = 0;
  v52 = v73;
  v53 = v74;
  v50 = v71;
  v51 = v72;
  v76 = v30;
  v77[0] = 1;
  v16 = *&v55[16];
  *&v77[1] = *v55;
  *&v77[33] = *&v55[32];
  v17 = *v55;
  *&v77[17] = *&v55[16];
  *&v77[96] = *(&v67 + 1);
  v18 = *&v55[64];
  *&v77[81] = *&v55[80];
  v19 = *&v55[48];
  *&v77[65] = *&v55[64];
  v20 = *&v55[32];
  *&v77[49] = *&v55[48];
  *&v54[56] = *&v77[32];
  *&v54[40] = *&v77[16];
  *&v54[24] = *v77;
  *&v54[8] = v30;
  *&v54[104] = *&v77[80];
  *&v54[120] = *&v77[96];
  *&v54[88] = *&v77[64];
  *&v54[72] = *&v77[48];
  v21 = v70;
  *a3 = v69;
  *(a3 + 16) = v21;
  v22 = v53;
  *(a3 + 64) = v52;
  *(a3 + 80) = v22;
  v23 = v51;
  *(a3 + 32) = v50;
  *(a3 + 48) = v23;
  v24 = *&v54[48];
  *(a3 + 128) = *&v54[32];
  *(a3 + 144) = v24;
  v25 = *&v54[16];
  *(a3 + 96) = *v54;
  *(a3 + 112) = v25;
  v26 = *&v54[112];
  *(a3 + 192) = *&v54[96];
  *(a3 + 208) = v26;
  v27 = *&v54[80];
  *(a3 + 160) = *&v54[64];
  *(a3 + 176) = v27;
  *&v79[49] = v19;
  v75 = 0;
  v47 = 1;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  v78 = v30;
  v79[0] = 1;
  *&v79[65] = v18;
  *v80 = *&v55[80];
  *&v80[15] = *&v55[95];
  *&v79[1] = v17;
  *&v79[17] = v16;
  *&v79[33] = v20;
  sub_1C2C736A4(&v69, v35, &qword_1EC063500);
  sub_1C2C736A4(&v76, v35, &qword_1EC0634E0);
  sub_1C2C73644(&v78, &qword_1EC0634E0);
  v35[0] = v34;
  v35[1] = v33;
  v36 = v31;
  v37 = v32;
  v38 = v5;
  v39 = v15;
  v40 = v14;
  v41 = v29;
  v42 = v7;
  v43 = v9;
  v44 = v11;
  v45 = v13;
  v46 = 0;
  return sub_1C2C73644(v35, &qword_1EC063500);
}

uint64_t sub_1C2E00440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1C2DFDDF4();
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C74960();

  v3 = sub_1C2E748A4();
  v5 = v4;
  v7 = v6;
  sub_1C2E740F4();
  v8 = sub_1C2E74794();
  v10 = v9;
  v12 = v11;
  sub_1C2C72340(v3, v5, v7 & 1);

  sub_1C2E745E4();
  v13 = sub_1C2E747F4();
  v15 = v14;
  v17 = v16;

  sub_1C2C72340(v8, v10, v12 & 1);

  sub_1C2E745A4();
  v18 = sub_1C2E74764();
  v64 = v19;
  v65 = v18;
  v63 = v20;
  v68 = v21;
  sub_1C2C72340(v13, v15, v17 & 1);

  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  v22 = *(a1 + 48);

  v23 = sub_1C2E748A4();
  v25 = v24;
  v27 = v26;
  if (v22 == 1)
  {
    sub_1C2E740F4();
  }

  else
  {
    sub_1C2E740D4();
  }

  v28 = sub_1C2E74794();
  v30 = v29;
  v32 = v31;
  sub_1C2C72340(v23, v25, v27 & 1);

  sub_1C2E744E4();
  v33 = sub_1C2E747F4();
  v35 = v34;
  v37 = v36;

  sub_1C2C72340(v28, v30, v32 & 1);

  sub_1C2E74554();
  v67 = sub_1C2E74764();
  v61 = v38;
  v62 = v39;
  v41 = v40;
  sub_1C2C72340(v33, v35, v37 & 1);

  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  if (*(a1 + 64))
  {

    v42 = sub_1C2E748A4();
    v44 = v43;
    v46 = v45;
    sub_1C2E740F4();
    v47 = sub_1C2E74794();
    v49 = v48;
    v51 = v50;
    sub_1C2C72340(v42, v44, v46 & 1);

    sub_1C2E744F4();
    v52 = sub_1C2E747F4();
    v54 = v53;
    v56 = v55;
    v58 = v57;

    sub_1C2C72340(v47, v49, v51 & 1);

    v59 = v56 & 1;
    sub_1C2C72330(v52, v54, v56 & 1);
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v59 = 0;
    v58 = 0;
  }

  sub_1C2C72330(v65, v64, v63 & 1);

  sub_1C2C72330(v67, v61, v41 & 1);

  sub_1C2C7DD04(v52, v54, v59, v58);
  sub_1C2C7F6D4(v52, v54, v59, v58);
  *a2 = v65;
  *(a2 + 8) = v64;
  *(a2 + 16) = v63 & 1;
  *(a2 + 24) = v68;
  *(a2 + 32) = v67;
  *(a2 + 40) = v61;
  *(a2 + 48) = v41 & 1;
  *(a2 + 56) = v62;
  *(a2 + 64) = v52;
  *(a2 + 72) = v54;
  *(a2 + 80) = v59;
  *(a2 + 88) = v58;
  sub_1C2C7F6D4(v52, v54, v59, v58);
  sub_1C2C72340(v67, v61, v41 & 1);

  sub_1C2C72340(v65, v64, v63 & 1);
}

unint64_t sub_1C2E009DC()
{
  result = qword_1EC063508;
  if (!qword_1EC063508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063510);
    sub_1C2C94F38(&qword_1EC0634E8, &qword_1EC0634D8);
    sub_1C2C94F38(&qword_1EC0634F0, &qword_1EC0634E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063508);
  }

  return result;
}

uint64_t ShutterButton.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C2E75744();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063518);
  return sub_1C2E00B2C(a1 + *(v3 + 44));
}

uint64_t sub_1C2E00B2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E755F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063528);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  sub_1C2E755B4();
  sub_1C2E75624();
  (*(v3 + 8))(v5, v2);
  *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063530) + 56)] = 256;
  sub_1C2E75744();
  sub_1C2E73274();
  v13 = &v12[*(v7 + 44)];
  v14 = *&v21[35];
  *v13 = *&v21[27];
  v13[1] = v14;
  v13[2] = *&v21[43];
  v15 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E75744();
  sub_1C2E73274();
  *&v21[3] = *&v21[51];
  *&v21[11] = *&v21[59];
  *&v21[19] = *&v21[67];
  sub_1C2C736A4(v12, v9, &qword_1EC063528);
  sub_1C2C736A4(v9, a1, &qword_1EC063528);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063538) + 48));
  *&v22[0] = v15;
  WORD4(v22[0]) = 256;
  *(v22 + 10) = *v21;
  *(&v22[1] + 10) = *&v21[8];
  *(&v22[2] + 10) = *&v21[16];
  *(&v22[3] + 1) = *&v21[23];
  v17 = v22[1];
  *v16 = v22[0];
  v16[1] = v17;
  v18 = v22[3];
  v16[2] = v22[2];
  v16[3] = v18;
  sub_1C2C736A4(v22, &v23, &qword_1EC060E58);
  sub_1C2C73644(v12, &qword_1EC063528);
  v23 = v15;
  v24 = 256;
  v25 = *v21;
  v26 = *&v21[8];
  *v27 = *&v21[16];
  *&v27[14] = *&v21[23];
  sub_1C2C73644(&v23, &qword_1EC060E58);
  return sub_1C2C73644(v9, &qword_1EC063528);
}

uint64_t sub_1C2E00E58@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C2E75744();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063518);
  return sub_1C2E00B2C(a1 + *(v3 + 44));
}

unint64_t sub_1C2E00EB0()
{
  result = qword_1EC05B340;
  if (!qword_1EC05B340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B340);
  }

  return result;
}

id sub_1C2E00F14()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.22745098 green:1.0 blue:0.42745098 alpha:1.0];
  qword_1EC063540 = result;
  return result;
}

id static UILabel.systemApertureDurationTextColor.getter()
{
  if (qword_1EC05D018 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC063540;

  return v1;
}

uint64_t static ClipShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t ClipShape.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1C6927290](v2);
  }

  else
  {
    MEMORY[0x1C6927290](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1C69272B0](v3);
  }
}

uint64_t ClipShape.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2E76854();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C6927290](v3);
  }

  else
  {
    MEMORY[0x1C6927290](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C69272B0](v4);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E010FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C2E76854();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C6927290](v3);
  }

  else
  {
    MEMORY[0x1C6927290](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C69272B0](v4);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E01178(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t ClippedImage.ImageSize.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C2E750B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClippedImage.ImageSize(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C2E0264C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = v8[1];
      MEMORY[0x1C6927290](2);
      return sub_1C2DD2B08(v10, v11);
    }

    else
    {
      return MEMORY[0x1C6927290](1);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063548);
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1C6927290](0);
    sub_1C2E0272C(&qword_1EC063550, MEMORY[0x1E69816E8]);
    sub_1C2E75B64();
    sub_1C2E74524();
    sub_1C2E74564();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t ClippedImage.ImageSize.hashValue.getter()
{
  sub_1C2E76854();
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2E01440()
{
  sub_1C2E76854();
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t sub_1C2E01484()
{
  sub_1C2E76854();
  ClippedImage.ImageSize.hash(into:)();
  return sub_1C2E76894();
}

uint64_t ClippedImage.init(image:clipShape:size:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ClippedImage.ImageSize(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  v16 = *(a2 + 8);
  if ((a5 & 1) == 0)
  {
    *v14 = a3;
    v14[1] = a4;
  }

  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for ClippedImage(0);
  sub_1C2E0264C(v14, a6 + *(v17 + 24));
  v18 = sub_1C2E74F44();
  result = sub_1C2E026D0(v14);
  *a6 = a1;
  *(a6 + 8) = v15;
  *(a6 + 16) = v16;
  *(a6 + *(v17 + 28)) = v18;
  return result;
}

uint64_t ClippedImage.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063558);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_1C2E75404();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C2E737C4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v12 = MEMORY[0x1E697F468];
    if (v11)
    {
      v13 = *MEMORY[0x1E697F468];
      v14 = sub_1C2E73D44();
      (*(*(v14 - 8) + 104))(v7, v13, v14);
      sub_1C2E0272C(&qword_1EC061500, MEMORY[0x1E6981998]);
    }

    else
    {
      sub_1C2CB2AB4();
    }
  }

  else
  {
    v15 = *(v8 + 20);
    v12 = MEMORY[0x1E697F468];
    v16 = *MEMORY[0x1E697F468];
    v17 = sub_1C2E73D44();
    (*(*(v17 - 8) + 104))(&v10[v15], v16, v17);
    *v10 = v11;
    *(v10 + 1) = v11;
    sub_1C2E0272C(&qword_1EC05B620, MEMORY[0x1E697EAF0]);
  }

  v36 = sub_1C2E754A4();
  v18 = *(v1 + *(type metadata accessor for ClippedImage(0) + 28));

  v35 = sub_1C2E75744();
  v20 = v19;
  sub_1C2E01A24(v4);
  v21 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    if (v21)
    {
      v22 = *v12;
      v23 = sub_1C2E73D44();
      (*(*(v23 - 8) + 104))(v7, v22, v23);
      sub_1C2E0272C(&qword_1EC061500, MEMORY[0x1E6981998]);
    }

    else
    {
      sub_1C2CB2AB4();
    }
  }

  else
  {
    v24 = *(v8 + 20);
    v25 = *v12;
    v26 = sub_1C2E73D44();
    (*(*(v26 - 8) + 104))(&v10[v24], v25, v26);
    *v10 = v21;
    *(v10 + 1) = v21;
    sub_1C2E0272C(&qword_1EC05B620, MEMORY[0x1E697EAF0]);
  }

  v27 = sub_1C2E754A4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063560);
  v29 = v37;
  v30 = v37 + *(v28 + 36);
  sub_1C2C9006C(v4, v30);
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063568) + 36);
  *v31 = v27;
  *(v31 + 8) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063570);
  v33 = (v30 + *(result + 36));
  *v33 = v35;
  v33[1] = v20;
  *v29 = v36;
  v29[1] = v18;
  return result;
}

uint64_t sub_1C2E01A24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635A8);
  MEMORY[0x1EEE9AC00](v49);
  v4 = (v43 - v3);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635B0);
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = v43 - v5;
  v47 = sub_1C2E750B4();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635B8);
  MEMORY[0x1EEE9AC00](v48);
  v9 = (v43 - v8);
  v10 = sub_1C2E75054();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ClippedImage.ImageSize(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ClippedImage(0);
  sub_1C2E0264C(v2 + *(v17 + 24), v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
      v19 = sub_1C2E750C4();
      (*(v11 + 8))(v13, v10);
      sub_1C2E75744();
      sub_1C2E73274();
      *&v57[6] = v59;
      *&v57[22] = v60;
      *&v57[38] = v61;
      v52 = v19;
      *v53 = 257;
      *&v53[2] = *v57;
      *&v53[18] = *&v57[16];
      *&v53[34] = *&v57[32];
      *&v53[48] = *(&v61 + 1);
      v54 = v19;
      *v55 = *v53;
      *&v55[16] = *&v53[16];
      *&v55[32] = *&v53[32];
      *&v55[48] = *(&v61 + 1);
      v58 = 0;
      v56 = 0;
      sub_1C2E02C54(&v52, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060298);
      sub_1C2E02BC8();
      sub_1C2C76BB0();
      sub_1C2E73F44();
      v20 = *&v57[48];
      v9[2] = *&v57[32];
      v9[3] = v20;
      *(v9 + 57) = *&v57[57];
      v21 = *&v57[16];
      *v9 = *v57;
      v9[1] = v21;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635C0);
      sub_1C2E02B3C();
      v22 = sub_1C2E02A84();
      *&v54 = v49;
      *(&v54 + 1) = v22;
      swift_getOpaqueTypeConformance2();
      sub_1C2E73F44();
      return sub_1C2C73644(&v52, &qword_1EC0613F0);
    }

    else
    {
      (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
      v39 = sub_1C2E750C4();
      (*(v11 + 8))(v13, v10);
      *&v55[2] = v52;
      LOBYTE(v59) = 1;
      v58 = 1;
      v54 = v39;
      *v55 = 257;
      *&v55[18] = *v53;
      *&v55[34] = *&v53[16];
      *&v55[48] = *&v53[30];
      v56 = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060298);
      sub_1C2E02BC8();
      sub_1C2C76BB0();
      sub_1C2E73F44();
      v40 = *&v57[48];
      v9[2] = *&v57[32];
      v9[3] = v40;
      *(v9 + 57) = *&v57[57];
      v41 = *&v57[16];
      *v9 = *v57;
      v9[1] = v41;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635C0);
      sub_1C2E02B3C();
      v42 = sub_1C2E02A84();
      *&v54 = v49;
      *(&v54 + 1) = v42;
      swift_getOpaqueTypeConformance2();
      sub_1C2E73F44();
    }
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063548);
    v25 = *&v16[*(v24 + 48)];
    v43[1] = *&v16[*(v24 + 64)];
    v26 = v46;
    v27 = v47;
    (*(v6 + 32))(v46, v16, v47);
    v28 = *v2;
    KeyPath = swift_getKeyPath();
    v30 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCA8) + 36));
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DCB0);
    (*(v6 + 16))(v30 + *(v31 + 28), v26, v27);
    *v30 = KeyPath;
    *v4 = v28;
    v32 = swift_getKeyPath();
    v33 = v49;
    v34 = (v4 + *(v49 + 36));
    *v34 = v32;
    v34[1] = v25;
    v43[2] = v25;
    v35 = sub_1C2E02A84();

    v36 = v44;
    sub_1C2E74934();
    sub_1C2C73644(v4, &qword_1EC0635A8);
    v37 = v45;
    v38 = v50;
    (*(v45 + 16))(v9, v36, v50);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635C0);
    sub_1C2E02B3C();
    *v57 = v33;
    *&v57[8] = v35;
    swift_getOpaqueTypeConformance2();
    sub_1C2E73F44();

    (*(v37 + 8))(v36, v38);
    return (*(v6 + 8))(v46, v47);
  }
}

uint64_t _s16CommunicationsUI12ClippedImageV0D4SizeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C2E750B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClippedImage.ImageSize(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0635D0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = (&v24 + *(v15 + 56) - v16);
  sub_1C2E0264C(a1, &v24 - v16);
  sub_1C2E0264C(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C2E0264C(v17, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = v11[1] == v18[1] && *v11 == *v18;
        goto LABEL_7;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C2E026D0(v17);
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_1C2E0264C(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063548);
  if (swift_getEnumCaseMultiPayload())
  {

    (*(v5 + 8))(v13, v4);
LABEL_12:
    sub_1C2C73644(v17, &qword_1EC0635D0);
LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  (*(v5 + 32))(v7, v18, v4);
  v22 = sub_1C2E750A4();
  v23 = *(v5 + 8);
  v23(v13, v4);
  if ((v22 & 1) == 0 || (sub_1C2E74504() & 1) == 0)
  {
    v23(v7, v4);

    sub_1C2E026D0(v17);
    goto LABEL_13;
  }

  v20 = sub_1C2E74544();

  v23(v7, v4);
LABEL_7:
  sub_1C2E026D0(v17);
  return v20 & 1;
}

uint64_t sub_1C2E0264C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClippedImage.ImageSize(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E026D0(uint64_t a1)
{
  v2 = type metadata accessor for ClippedImage.ImageSize(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2E0272C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2E02778()
{
  result = qword_1EC063578;
  if (!qword_1EC063578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063578);
  }

  return result;
}

uint64_t sub_1C2E02858()
{
  result = type metadata accessor for ClippedImage.ImageSize(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C2E028E4()
{
  sub_1C2E02958();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C2E02958()
{
  if (!qword_1EC05B418)
  {
    sub_1C2E750B4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC05B418);
    }
  }
}

unint64_t sub_1C2E029CC()
{
  result = qword_1EC063598;
  if (!qword_1EC063598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063560);
    sub_1C2DB2074();
    sub_1C2C94F38(&qword_1EC0635A0, &qword_1EC063570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063598);
  }

  return result;
}

unint64_t sub_1C2E02A84()
{
  result = qword_1EC05B710;
  if (!qword_1EC05B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0635A8);
    sub_1C2C76D5C();
    sub_1C2C94F38(&qword_1EDDCDA20, &qword_1EC05DCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B710);
  }

  return result;
}

unint64_t sub_1C2E02B3C()
{
  result = qword_1EC0635C8;
  if (!qword_1EC0635C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0635C0);
    sub_1C2E02BC8();
    sub_1C2C76BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0635C8);
  }

  return result;
}

unint64_t sub_1C2E02BC8()
{
  result = qword_1EC0613E8;
  if (!qword_1EC0613E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0613F0);
    sub_1C2C76BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0613E8);
  }

  return result;
}

uint64_t sub_1C2E02C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0613F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C2E02CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2E81350;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.5;
  xmmword_1EC05C3E8 = xmmword_1C2E8DC00;
  unk_1EC05C3F8 = xmmword_1C2E8DC10;
  byte_1EC05C410 = 1;
  qword_1EC05C408 = v0;
  return result;
}

void __swiftcall GlassDimmingView.GradientValues.init(startPoint:endPoint:colors:isVisible:)(CommunicationsUI::GlassDimmingView::GradientValues *__return_ptr retstr, CGPoint startPoint, CGPoint endPoint, Swift::OpaquePointer colors, Swift::Bool isVisible)
{
  retstr->startPoint.x = startPoint.x;
  retstr->startPoint.y = startPoint.y;
  retstr->endPoint.x = endPoint.x;
  retstr->endPoint.y = endPoint.y;
  retstr->isVisible = isVisible;
  retstr->colors = colors;
}

uint64_t static GlassDimmingView.GradientValues.defaultSmall.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05C3E0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1EC05C408;
  v3 = byte_1EC05C410;
  v4 = unk_1EC05C3F8;
  *a1 = xmmword_1EC05C3E8;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

double sub_1C2E02E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2E81350;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.5;
  xmmword_1EC0635D8 = xmmword_1C2E8DC00;
  xmmword_1EC0635E8 = xmmword_1C2E8DC10;
  byte_1EC063600 = 0;
  qword_1EC0635F8 = v0;
  return result;
}

uint64_t static GlassDimmingView.GradientValues.hidden.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC05D028 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1EC0635F8;
  v3 = byte_1EC063600;
  v4 = xmmword_1EC0635E8;
  *a1 = xmmword_1EC0635D8;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
}

uint64_t (*sub_1C2E02FC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2E03028;
}

uint64_t sub_1C2E03040@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
}

void sub_1C2E030A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2 + *a5;
  swift_beginAccess();
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 16) = v9;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;

  sub_1C2E03C8C();
}

uint64_t sub_1C2E03138@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
}

void sub_1C2E031A4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = v2 + *a2;
  swift_beginAccess();
  v7 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;

  sub_1C2E03C8C();
}

uint64_t (*sub_1C2E0321C(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2E06218;
}

__n128 sub_1C2E03280@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C2E032E0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix);
  swift_beginAccess();
  v4 = a1[3];
  v3[2] = a1[2];
  v3[3] = v4;
  v3[4] = a1[4];
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  sub_1C2E04130();
  return result;
}

uint64_t (*sub_1C2E0334C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C2E033B0;
}

uint64_t sub_1C2E033C8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id GlassDimmingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassDimmingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroudGradientValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v10 = swift_allocObject();
  v44 = xmmword_1C2E81350;
  *(v10 + 16) = xmmword_1C2E81350;
  v11 = objc_opt_self();
  v12 = [v11 blackColor];
  v13 = [v12 colorWithAlphaComponent_];

  *(v10 + 32) = v13;
  *(v10 + 40) = [v11 blackColor];
  v9[40] = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = v10;
  v14 = &v4[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradientValues];
  if (qword_1EC05C3E0 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v15 = qword_1EC05C408;
    v16 = byte_1EC05C410;
    v17 = unk_1EC05C3F8;
    *v14 = xmmword_1EC05C3E8;
    *(v14 + 16) = v17;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v18 = &v4[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix];
    *v18 = xmmword_1C2E8DC20;
    *(v18 + 1) = xmmword_1C2E8DC30;
    *(v18 + 2) = xmmword_1C2E8DC40;
    *(v18 + 3) = xmmword_1C2E8DC50;
    *(v18 + 4) = xmmword_1C2E7A980;
    v19 = OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_effectView;
    v20 = objc_allocWithZone(MEMORY[0x1E69DD298]);

    *&v4[v19] = [v20 initWithEffect_];
    v21 = OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradient;
    *&v4[v21] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    v22 = OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroundGradient;
    *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
    v23 = OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_gradientLayer;
    *&v4[v23] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    v24 = type metadata accessor for GlassDimmingView();
    v45.receiver = v4;
    v45.super_class = v24;
    v4 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a1, a2, a3, a4);
    inited = swift_initStackObject();
    *(inited + 16) = v44;
    v26 = *&v4[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradient];
    *(inited + 32) = v26;
    v27 = *&v4[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroundGradient];
    *(inited + 40) = v27;
    v28 = OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_gradientLayer;
    v14 = inited & 0xFFFFFFFFFFFFFF8;
    *&v44 = v4;
    v29 = v26;
    v30 = v27;
    if ((inited & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1C6927010](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      v31 = v29;
    }

    v32 = v31;
    v33 = *MEMORY[0x1E6979EB8];
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C2E7A720;
    *(v34 + 32) = [objc_opt_self() functionWithName_];
    sub_1C2C6E1B4(0, &unk_1EC05B238);
    v35 = sub_1C2E75D64();

    [v32 setInterpolations_];

    [v32 setAnchorPoint_];
    [*&v4[v28] addSublayer_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v36 = *(inited + 40);
      goto LABEL_8;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    swift_once();
  }

  v36 = MEMORY[0x1C6927010](1, inited);
LABEL_8:
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C2E7A720;
  *(v38 + 32) = [objc_opt_self() functionWithName_];
  v39 = sub_1C2E75D64();

  [v37 setInterpolations_];

  [v37 setAnchorPoint_];
  [*&v4[v28] addSublayer_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*&v4[v28] setAnchorPoint_];
  v40 = v44;
  v41 = [v40 layer];
  [v41 setMask_];

  v42 = [v40 layer];
  [v42 setMasksToBounds_];

  sub_1C2E04130();
  sub_1C2E03C8C();

  return v40;
}

uint64_t sub_1C2E039E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for GlassDimmingView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E7A710;
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradient];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroundGradient];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_gradientLayer];
  *(inited + 48) = v4;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v6; ; i = MEMORY[0x1C6927010](0, inited))
  {
    v10 = i;
    [v0 bounds];
    [v10 setBounds_];

    if (v5)
    {
      v11 = MEMORY[0x1C6927010](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    [v0 bounds];
    [v12 setBounds_];

    if (v5)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v13 = MEMORY[0x1C6927010](2, inited);
LABEL_10:
  v14 = v13;
  [v0 bounds];
  [v14 setBounds_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_1C2E03C8C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradientValues];
  swift_beginAccess();
  p_class_meths = &OBJC_PROTOCOL___BNPresentableObserving.class_meths;
  v4 = *&v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradient];
  if (*(v2 + 40) == 1)
  {
    [*&v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_gradientLayer] addSublayer_];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_backgroundGradient] removeFromSuperlayer];
  }

  v5 = &selRef_insertSublayer_atIndex_;
  [v4 setStartPoint_];
  v6 = &selRef_insertSublayer_atIndex_;
  [v4 setEndPoint_];
  v7 = *(v2 + 4);
  if (v7 >> 62)
  {
    goto LABEL_40;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v24 = v1;
  if (v8)
  {
    v27 = MEMORY[0x1E69E7CC0];

    sub_1C2CA4B74(0, v8 & ~(v8 >> 63), 0);
    if ((v8 & 0x8000000000000000) == 0)
    {
      p_class_meths = 0;
      v1 = (v7 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1C6927010](p_class_meths, v7);
        }

        else
        {
          if ((p_class_meths & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v8 = sub_1C2E764E4();
            goto LABEL_6;
          }

          if (p_class_meths >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v9 = *(v7 + 8 * p_class_meths + 32);
        }

        v10 = v9;
        v11 = [v9 CGColor];
        type metadata accessor for CGColor(0);
        v29 = v12;

        *&v28 = v11;
        v6 = *(v27 + 16);
        v13 = *(v27 + 24);
        v5 = (v6 + 1);
        if (v6 >= v13 >> 1)
        {
          sub_1C2CA4B74((v13 > 1), v6 + 1, 1);
        }

        p_class_meths = (p_class_meths + 1);
        *(v27 + 16) = v5;
        sub_1C2D3A588(&v28, (v27 + 32 * v6 + 32));
        if (v8 == p_class_meths)
        {

          v1 = v24;
          p_class_meths = &OBJC_PROTOCOL___BNPresentableObserving.class_meths;
          v5 = &selRef_insertSublayer_atIndex_;
          v6 = &selRef_insertSublayer_atIndex_;
          goto LABEL_18;
        }
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_18:
  v14 = sub_1C2E75D64();

  [v4 setColors_];

  v15 = &v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroudGradientValues];
  swift_beginAccess();
  v4 = *&v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroundGradient];
  if (v15[5])
  {
    [*(p_class_meths[265] + v1) addSublayer_];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_foregroundGradient] removeFromSuperlayer];
  }

  [v4 v5[252]];
  [v4 *(v6 + 2024)];
  v7 = *(v15 + 4);
  if (v7 >> 62)
  {
    v16 = sub_1C2E764E4();
  }

  else
  {
    v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
LABEL_35:
    v22 = sub_1C2E75D64();

    [v4 setColors_];

    v23 = [v1 layer];
    [v23 setMask_];

    return;
  }

  v26 = MEMORY[0x1E69E7CC0];

  sub_1C2CA4B74(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    p_class_meths = 0;
    v1 = (v7 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C6927010](p_class_meths, v7);
      }

      else
      {
        if ((p_class_meths & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (p_class_meths >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v17 = *(v7 + 8 * p_class_meths + 32);
      }

      v18 = v17;
      v19 = [v17 CGColor];
      type metadata accessor for CGColor(0);
      v29 = v20;

      *&v28 = v19;
      v6 = *(v26 + 16);
      v21 = *(v26 + 24);
      v5 = (v6 + 1);
      if (v6 >= v21 >> 1)
      {
        sub_1C2CA4B74((v21 > 1), v6 + 1, 1);
      }

      p_class_meths = (p_class_meths + 1);
      *(v26 + 16) = v5;
      sub_1C2D3A588(&v28, (v26 + 32 * v6 + 32));
    }

    while (v16 != p_class_meths);

    v1 = v25;
    p_class_meths = &OBJC_PROTOCOL___BNPresentableObserving.class_meths;
    goto LABEL_35;
  }

LABEL_43:
  __break(1u);
}

void sub_1C2E04130()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v3 = &v1[OBJC_IVAR____TtC16CommunicationsUI16GlassDimmingView_colorMatrix];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v15 = *(v3 + 2);
  v16 = v4;
  v17 = *(v3 + 4);
  v5 = *(v3 + 1);
  v13 = *v3;
  v14 = v5;
  v12[2] = v15;
  v12[3] = v4;
  v12[4] = v17;
  v12[0] = v13;
  v12[1] = v5;
  v6 = [objc_opt_self() valueWithCAColorMatrix_];
  v7 = sub_1C2E75C24();
  [v2 setValue:v6 forKey:v7];

  v8 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DB68);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C2E7A930;
  *(v9 + 56) = sub_1C2C6E1B4(0, &qword_1EC05B208);
  *(v9 + 32) = v2;
  v10 = v2;
  v11 = sub_1C2E75D64();

  [v8 setFilters_];
}

id GlassDimmingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassDimmingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2E043E8()
{
  if (qword_1EC05C3E0 != -1)
  {
    swift_once();
  }

  xmmword_1EC063608 = xmmword_1EC05C3E8;
  unk_1EC063618 = unk_1EC05C3F8;
  qword_1EC063628 = qword_1EC05C408;
  byte_1EC063630 = byte_1EC05C410;
}