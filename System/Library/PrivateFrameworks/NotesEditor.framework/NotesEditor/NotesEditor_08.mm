uint64_t sub_21538479C()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return MEMORY[0x2822009F8](sub_2153848A4, v2, v1);
}

uint64_t sub_2153848A4()
{
  v1 = *(v0 + 28);

  v2 = *(v0 + 20);

  v3 = [v2 image];
  if (!v3)
  {
    v4 = sub_2154A1D2C();
    v5 = [objc_opt_self() imageNamed_];

    if (v5)
    {
      v6 = v0[18];
      v7 = v0[19];
      v8 = [objc_opt_self() whiteColor];
      v3 = [v5 ic:v8 imageWithTint:v6 size:v7];
    }

    else
    {
      v3 = 0;
    }
  }

  v9 = *(v0 + 27);
  v10 = [v3 CGImage];

  v11 = *(v0 + 1);

  return v11(v10);
}

uint64_t type metadata accessor for CollaboratorStatusView()
{
  result = qword_281199A48;
  if (!qword_281199A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215384A74()
{
  result = type metadata accessor for ResolvedCollaboratorStatus(319);
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

uint64_t sub_215384B50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_215384B5C()
{
  result = qword_27CA5B3D0;
  if (!qword_27CA5B3D0)
  {
    type metadata accessor for CollaboratorSelectionView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B3D0);
  }

  return result;
}

uint64_t sub_215384BB4(double a1, double a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_215305EC8;

  return sub_215382EE0(v6, a1, a2);
}

uint64_t sub_215384C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_215384D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = [v1 removeFromSuperview];
  *(v1 + OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview) = 0;
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t sub_215384DA4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedCollaboratorStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_215384E00(char a1)
{
  sub_215382B30();
  v3 = *&v1[OBJC_IVAR___ICCollaboratorStatusView_avatarView];
  if (v3)
  {
    v6 = v3;
    v4 = [v6 superview];
    if (v4)
    {
    }

    else
    {
      [v6 setClipsToBounds_];
      [v1 addSubview_];
    }

    v5 = v6;
    if (*(v6 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) != (a1 & 1))
    {
      *(v6 + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = a1 & 1;
      sub_21532CAEC(1);
      sub_21532CEBC();
      v5 = v6;
    }
  }
}

uint64_t sub_215384F64(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void sub_215385160(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint) = 0;
  if (_UISolariumEnabled())
  {
    v2 = [objc_opt_self() ic_isVision];
  }

  else
  {
    v2 = 1;
  }

  *(v1 + OBJC_IVAR___ICActivityStreamDockView_isNonSolarium) = v2;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_selection) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_object) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_margin) = 0x4030000000000000;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_buttonHeight) = 0x4040000000000000;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView_closeButtonHeight) = 0x4046000000000000;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack) = 0;
  *(v1 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide) = 0;
  sub_2154A2EDC();
  __break(1u);
}

void sub_2153852FC()
{
  v1 = sub_2151B336C();
  [v0 removeLayoutGuide_];

  v2 = [v0 subviews];
  sub_2151A6C9C(0, &qword_2811994D0);
  v3 = sub_2154A1F4C();

  if (v3 >> 62)
  {
    v4 = sub_2154A2C8C();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216069960](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];
  }

LABEL_10:

  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  v10 = [v9 separatorColor];
  [v8 setBackgroundColor_];

  v11 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView] = v8;

  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView] = v13;

  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v15 layer];
  [v16 setCornerRadius_];

  v17 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar] = v15;

  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setContentMode_];

  LODWORD(v19) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v19];
  v20 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView] = v18;

  v21 = sub_2151B30E4();
  v22 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel] = v21;

  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [v9 secondaryLabelColor];
  [v23 setTextColor_];

  [v23 setNumberOfLines_];
  LODWORD(v25) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v25];
  v26 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel] = v23;

  v27 = sub_215385E44();
  v28 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton] = v27;

  v29 = sub_2153863A0();
  v30 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton] = v29;

  v31 = sub_2151B2ED8();
  v32 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack;
  v33 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2154BDB20;
  *(v34 + 32) = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack, sub_2151B2ED8);
  v35 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v36 = sub_2154A1F3C();

  v37 = [v35 initWithArrangedSubviews_];

  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setSpacing_];
  [v37 setCustomSpacing:*&v0[v32] afterView:16.0];
  [v37 setAlignment_];
  v38 = *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack];
  *&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack] = v37;

  sub_2151B1A28();
}

void sub_215385824()
{
  v0 = sub_2151B32A8();
  v1 = sub_2154A1D2C();
  v2 = [objc_opt_self() systemImageNamed_];

  [v0 setImage_];
}

void *ActivityStreamDockView.selection.getter()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView_selection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*ActivityStreamDockView.selection.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_215386A50;
}

void *ActivityStreamDockView.object.getter()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView_object;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_215385AB8(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a3;
  v8 = a3;
  v9 = a1;

  ActivityStreamDockView.update()();
}

void sub_215385B30(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;

  ActivityStreamDockView.update()();
}

uint64_t (*ActivityStreamDockView.object.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_215385BF4;
}

void sub_215385BF8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    ActivityStreamDockView.update()();
  }
}

id sub_215385CAC()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215385D80()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle_];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_215385E44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  MEMORY[0x28223BE20](v0 - 8);
  v29 = &v26 - v1;
  v26 = sub_2154A29AC();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2154A2A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2154A2AAC();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A2A9C();
  v12 = [objc_opt_self() mainBundle];
  v13 = sub_2154A1D2C();
  v14 = [v12 localizedStringForKey:v13 value:0 table:0];

  sub_2154A1D6C();
  sub_2154A2A8C();
  (*(v6 + 104))(v8, *MEMORY[0x277D75028], v5);
  sub_2154A299C();
  (*(v2 + 104))(v4, *MEMORY[0x277D74FD8], v26);
  sub_2154A29BC();
  sub_2151A6C9C(0, &qword_281199470);
  sub_2151A6C9C(0, &qword_281199480);
  v15 = swift_allocObject();
  v16 = v27;
  *(v15 + 16) = v27;
  v17 = v16;
  sub_2154A295C();
  v18 = sub_2154A2AEC();
  LODWORD(v19) = 1148846080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v18 setContentHuggingPriority:1 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v18 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v22];
  [v18 setMaximumContentSizeCategory_];

  v24 = v28;
  v23 = v29;
  (*(v9 + 16))(v29, v11, v28);
  (*(v9 + 56))(v23, 0, 1, v24);
  sub_2154A2ADC();
  [v18 setRole_];
  (*(v9 + 8))(v11, v24);
  return v18;
}

void sub_2153862FC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___ICActivityStreamDockView_object;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4)
  {
    v5 = [v4 objectID];
    if (v5)
    {
      v6 = v5;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong showActivityStreamForObjectWithObjectID_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void *sub_2153863A0()
{
  sub_2151A6C9C(0, &qword_281199480);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  v3 = sub_2154A295C();
  sub_2151A6C9C(0, &qword_281199470);
  v4 = v3;
  v5 = sub_2154A2AEC();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2154BDB10;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 secondaryLabelColor];
  *(v6 + 40) = [v7 tertiarySystemFillColor];
  sub_2151A6C9C(0, &qword_2811994C0);
  v8 = sub_2154A1F3C();

  v9 = objc_opt_self();
  v10 = [v9 configurationWithPaletteColors_];

  v11 = v10;
  if (![v2 ic_hasCompactHeight] || (v12 = objc_msgSend(v2, sel_ic_hasCompactWidth), v13 = 22.0, !v12))
  {
    v13 = 30.0;
  }

  v14 = [v9 configurationWithPointSize_];
  v15 = [v11 configurationByApplyingConfiguration_];

  v16 = v15;
  v17 = sub_2154A1D2C();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  [v5 setImage:v18 forState:0];
  return v5;
}

void *sub_21538667C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result hideActivityStreamWithCompletion_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id ActivityStreamDockView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ActivityStreamDockView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215386900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215386970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_215386A54()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27CA5B4D8);
  swift_endAccess();
  if (v1)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_21532C870(v10);
    goto LABEL_8;
  }

  type metadata accessor for TextCorrectionMarkerView();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = [objc_allocWithZone(type metadata accessor for TextCorrectionMarkerView()) initWithFrame_];
    v4 = v0;
    sub_21538E914(v0);
    v5 = [v4 containerViewForAttachments];
    [v5 addSubview_];

    [v3 ic_addAnchorsToFillSuperview];
    swift_beginAccess();
    v2 = v3;
    objc_setAssociatedObject(v4, &unk_27CA5B4D8, v2, 1);
    swift_endAccess();

    return v2;
  }

  return v7;
}

uint64_t sub_215386BF4()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B4E0);
  __swift_project_value_buffer(v0, qword_27CA5B4E0);
  return sub_21549F0BC();
}

void sub_215386C5C()
{
  v0 = [objc_opt_self() sharedContext];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 workerManagedObjectContext];
  }

  else
  {
    v2 = 0;
  }

  qword_27CA5B4F8 = v2;
}

uint64_t sub_215386CCC()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return *(v0 + 16);
}

uint64_t sub_215386D6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_215386E3C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_215386F4C()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return *(v0 + 17);
}

uint64_t sub_215386FEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_2153870BC(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  return result;
}

double sub_2153871CC()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return *(v0 + 32);
}

double sub_21538726C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_215387314(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }
}

uint64_t sub_21538742C()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2153874D0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_21538757C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2153875AC(v1);
}

void sub_2153875AC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_21549F77C();
  v3 = v2;
  v4 = sub_2154A291C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_215387744()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();
}

uint64_t sub_2153877E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 48);
}

uint64_t sub_215387894(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 48))
  {
    if (a1)
    {
      sub_21549F32C();
      sub_21538E200(&qword_27CA5A810, MEMORY[0x277CBCDA8]);

      v4 = sub_2154A1D1C();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 48) = a1;
}

uint64_t sub_215387A3C()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();
}

uint64_t sub_215387AE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 56);
}

uint64_t sub_215387B8C(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    if (a1)
    {
      sub_21549F32C();
      sub_21538E200(&qword_27CA5A810, MEMORY[0x277CBCDA8]);

      v4 = sub_2154A1D1C();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 56) = a1;
}

uint64_t sub_215387D34()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = *(v0 + 64);
  sub_2151BD748(v1);
  return v1;
}

uint64_t sub_215387DE8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21532425C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_215387ED4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21538DF94;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2151BD748(v1);
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED8C();
  sub_21532594C(v4);
}

uint64_t sub_215388058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  sub_2151BD748(a2);
  return sub_21532594C(v3);
}

uint64_t sub_2153880A4()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_215388154(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 80) == a1 && v5 == a2;
      if (v6 || (sub_2154A2FAC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;

    swift_getKeyPath();
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED9C();

    return sub_21538D958(*(v2 + 128), *(v2 + 136), *(v2 + 144));
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED8C();
}

uint64_t sub_215388324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;

  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return sub_21538D958(*(a1 + 128), *(a1 + 136), *(a1 + 144));
}

uint64_t sub_2153883F0()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_2153884A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_21538854C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21538858C(v1, v2);
}

uint64_t sub_21538858C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 96) == a1 && v5 == a2;
      if (v6 || (sub_2154A2FAC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;

    swift_getKeyPath();
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED9C();

    return sub_21538D958(*(v2 + 128), *(v2 + 136), *(v2 + 144));
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED8C();
}

uint64_t sub_21538875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 96) = a2;
  *(a1 + 104) = a3;

  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return sub_21538D958(*(a1 + 128), *(a1 + 136), *(a1 + 144));
}

uint64_t sub_215388828()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();
}

uint64_t sub_2153888CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 112);
}

uint64_t sub_215388978(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 112))
  {
    if (a1)
    {
      sub_21549F32C();
      sub_21538E200(&qword_27CA5A810, MEMORY[0x277CBCDA8]);

      v4 = sub_2154A1D1C();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 112) = a1;
}

uint64_t sub_215388B20()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();
}

uint64_t sub_215388BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + 120);
}

uint64_t sub_215388C70(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 120))
  {
    if (a1)
    {
      sub_21549F32C();
      sub_21538E200(&qword_27CA5A810, MEMORY[0x277CBCDA8]);

      v4 = sub_2154A1D1C();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 120) = a1;
}

uint64_t sub_215388E18(void *a1)
{
  v2 = v1;
  v4 = sub_2154A250C();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C1F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0xE000000000000000;
  sub_21549EDCC();
  *(v2 + 24) = a1;
  sub_21549F93C();
  v12 = a1;
  sub_21549F90C();
  sub_21549F8FC();

  swift_allocObject();
  swift_weakInit();
  sub_2151ACC5C(&qword_27CA5B540, &unk_27CA5C1F0);

  v13 = sub_21549F3EC();

  (*(v9 + 8))(v11, v8);
  sub_215387894(v13);
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:sel_audioControllerTimeChanged_ name:*MEMORY[0x277D36480] object:v12];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:sel_audioControllerPlayPauseToggled_ name:*MEMORY[0x277D36470] object:v12];

  v17 = [v14 defaultCenter];
  [v17 addObserver:v2 selector:sel_audioControllerPlayPauseToggled_ name:*MEMORY[0x277D36468] object:v12];

  v18 = [v14 defaultCenter];
  [v18 addObserver:v2 selector:sel_audioControllerStopped_ name:*MEMORY[0x277D36478] object:v12];

  v19 = [v14 defaultCenter];

  v20 = v36;
  v21 = sub_2154A1D2C();
  [v19 addObserver:v2 selector:sel_takeValuesViaNotification name:v21 object:0];

  v22 = [v12 managedObjectContext];
  if (v22)
  {
    v23 = v22;
    v24 = [v14 defaultCenter];
    v25 = v23;
    sub_2154A251C();

    swift_allocObject();
    swift_weakInit();
    sub_21538E200(&qword_281199588, MEMORY[0x277CC9DB0]);
    v26 = sub_21549F3EC();

    (*(v37 + 8))(v7, v20);
    sub_215388C70(v26);
  }

  v27 = [v14 defaultCenter];
  v28 = [v12 objectID];
  sub_2154A251C();

  swift_allocObject();
  swift_weakInit();

  sub_21538E200(&qword_281199588, MEMORY[0x277CC9DB0]);
  v29 = sub_21549F3EC();

  (*(v37 + 8))(v7, v20);
  sub_215388978(v29);
  sub_21538BF80();
  if (qword_27CA59870 != -1)
  {
    swift_once();
  }

  v30 = qword_27CA5B4F8;
  if (qword_27CA5B4F8)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v2;
    aBlock[4] = sub_21538E338;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_160;
    v32 = _Block_copy(aBlock);
    v33 = v30;

    v34 = v33;

    [v34 performBlock_];

    _Block_release(v32);
    v12 = v34;
  }

  return v2;
}

uint64_t sub_215389550(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(v3 + 128);
  v5 = *(v3 + 144);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (a3 != 3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v5 != 4)
      {
        if (a3 != 5 || a2 | result)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (a3 != 4)
      {
        goto LABEL_24;
      }
    }

LABEL_13:
    if (v4 != *&result)
    {
      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 128) = *&result;
    *(v3 + 136) = *&a2;
    *(v3 + 144) = a3;
    return result;
  }

  if (!*(v3 + 144))
  {
    if (a3)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  if (v5 == 1)
  {
    if (a3 != 1)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (a3 == 2)
  {
LABEL_16:
    if (v4 != *&result || *(v3 + 136) != *&a2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED8C();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_215389728(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152) == a1 && *(v2 + 160) == a2;
  if (v5 || (sub_2154A2FAC() & 1) != 0)
  {
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED8C();
  }
}

void sub_215389888(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      sub_21549ED8C();
    }

    else
    {
      swift_unknownObjectWeakAssign();
    }

    swift_getKeyPath();
    sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED9C();

    if (*(v3 + 56))
    {

      sub_21549F31C();
    }

    sub_215387B8C(0);
    if (!v1)
    {

      return;
    }

    v6 = v1;
    v7 = sub_21549F72C();
    v9 = v8;
    v10 = [*(v3 + 24) identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_2154A1D6C();
      v14 = v13;

      if (v7 == v12 && v9 == v14)
      {

LABEL_15:
        sub_21538B9B0(v6);
        goto LABEL_16;
      }

      v15 = sub_2154A2FAC();

      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

LABEL_16:
  }
}

void sub_215389B30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_21549E18C();
  if (!v2)
  {

    v15 = 0u;
    v16 = 0u;
    goto LABEL_15;
  }

  v3 = v2;
  v14[6] = sub_2154A1D6C();
  v14[7] = v4;
  sub_2154A2D3C();
  if (!*(v3 + 16) || (v5 = sub_2153B1010(v14), (v6 & 1) == 0))
  {

    sub_21533FC34(v14);
    v15 = 0u;
    v16 = 0u;
    goto LABEL_13;
  }

  sub_21533FC88(*(v3 + 56) + 32 * v5, &v15);
  sub_21533FC34(v14);

  if (!*(&v16 + 1))
  {
LABEL_13:

LABEL_15:
    sub_2151ADCD8(&v15, &qword_27CA5ABC0);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v7 = v14[0];
  v8 = *(v1 + 24);
  v9 = sub_21542E878(v8, v7);

  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_21538BF80();
  if (qword_27CA59870 != -1)
  {
    swift_once();
  }

  v10 = qword_27CA5B4F8;
  if (qword_27CA5B4F8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v1;
    v14[4] = sub_21538E338;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2151BD7E4;
    v14[3] = &block_descriptor_168;
    v12 = _Block_copy(v14);
    v13 = v10;

    [v13 performBlock_];

    _Block_release(v12);
  }

  else
  {
LABEL_17:
  }
}

void sub_215389DC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21538BF80();
    if (qword_27CA59870 != -1)
    {
      swift_once();
    }

    v2 = qword_27CA5B4F8;
    if (qword_27CA5B4F8)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      aBlock[4] = sub_21538E338;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_175;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 performBlock_];

      _Block_release(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_215389F2C()
{
  v0 = sub_2154A10EC();
  v12 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2154A110C();
  v3 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v10 = sub_2154A245C();
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_21538A39C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_14;
  v7 = _Block_copy(aBlock);

  sub_2154A10FC();
  v13 = MEMORY[0x277D84F90];
  sub_21538E200(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  v8 = v10;
  MEMORY[0x216069000](0, v5, v2, v7);
  _Block_release(v7);

  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);
}

void sub_21538A238()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21538BF80();
    if (qword_27CA59870 != -1)
    {
      swift_once();
    }

    v2 = qword_27CA5B4F8;
    if (qword_27CA5B4F8)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      aBlock[4] = sub_21538E338;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_196_0;
      v4 = _Block_copy(aBlock);
      v5 = v2;

      [v5 performBlock_];

      _Block_release(v4);
    }

    else
    {
    }
  }
}

void sub_21538A3E0()
{
  sub_21538BF80();
  if (qword_27CA59870 != -1)
  {
    swift_once();
  }

  v1 = qword_27CA5B4F8;
  if (qword_27CA5B4F8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    *(v2 + 24) = v0;
    v5[4] = sub_21538C30C;
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_2151BD7E4;
    v5[3] = &block_descriptor_6_0;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 performBlock_];
    _Block_release(v3);
  }
}

void sub_21538A508(void *a1, uint64_t a2)
{
  v4 = sub_2154A10EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2154A110C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a2 + 24) objectID];
  v53 = [a1 objectWithID_];

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || (v15 = v14, (v16 = [v14 audioModel]) == 0))
  {
    v25 = v53;
LABEL_8:

    return;
  }

  v51 = v8;
  v52 = v16;
  v17 = [v16 audioDocument];
  if (!v17)
  {

    v25 = v52;
    goto LABEL_8;
  }

  v18 = v17;
  v49 = [v17 isCallRecording];
  v48 = [v18 callType];
  v19 = sub_2154A238C();
  v50 = v9;
  if (v19)
  {
    v20 = v19;
    v21 = [v19 attributedString];

    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = [v21 string];

    v23 = sub_2154A1D6C();
    v45 = v24;
    v46 = v23;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v26 = sub_2154A23CC();
  v43 = v27;
  v44 = v26;
  v28 = [v52 asset];
  v29 = v28;
  v47 = v5;
  if (v28)
  {
    [v28 duration];
    v41 = v55;
    v42 = aBlock;
    v40 = v56;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v40 = 0;
  }

  v30 = v29 == 0;
  v31 = v48 == 2;
  [a1 ic:v15 refreshObject:0 mergeChanges:?];
  sub_2151A6C9C(0, &unk_2811995C0);
  v48 = sub_2154A245C();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v49;
  *(v33 + 25) = v31;
  v34 = v45;
  *(v33 + 32) = v46;
  *(v33 + 40) = v34;
  v35 = v43;
  *(v33 + 48) = v44;
  *(v33 + 56) = v35;
  v36 = v41;
  *(v33 + 64) = v42;
  *(v33 + 72) = v36;
  *(v33 + 80) = v40;
  *(v33 + 88) = v30;
  v58 = sub_21538E250;
  v59 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_2151BD7E4;
  v57 = &block_descriptor_183;
  v37 = _Block_copy(&aBlock);

  sub_2154A10FC();
  aBlock = MEMORY[0x277D84F90];
  sub_21538E200(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  v38 = v48;
  MEMORY[0x216069000](0, v12, v7, v37);
  _Block_release(v37);

  (*(v47 + 8))(v7, v4);
  (*(v50 + 8))(v12, v51);
}

uint64_t sub_21538AA60(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v41 = a8;
  v42 = a4;
  v43 = a6;
  v15 = sub_2154A10EC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v45 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2154A110C();
  v44 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v39 = v16;
    v40 = v15;
    v23 = *(result + 16);
    v24 = a2 & 1;
    v38 = v18;
    if (v23 == (a2 & 1))
    {
      *(result + 16) = v24;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v37 - 2) = v22;
      *(&v37 - 8) = v24;
      aBlock[0] = v22;
      sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      sub_21549ED8C();
    }

    v26 = a3 & 1;
    if (*(v22 + 17) == (a3 & 1))
    {
      *(v22 + 17) = v26;
    }

    else
    {
      v27 = swift_getKeyPath();
      MEMORY[0x28223BE20](v27);
      *(&v37 - 2) = v22;
      *(&v37 - 8) = v26;
      aBlock[0] = v22;
      sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      sub_21549ED8C();
    }

    sub_215388154(v42, a5);

    sub_21538858C(v43, a7);
    if ((a11 & 1) != 0 || (sub_2154A288C() & 1) == 0)
    {
      v30 = 0;
      v31 = 5;
    }

    else
    {
      sub_2154A287C();
      v29 = v28;
      if (*(v22 + 32) == v28)
      {
        *(v22 + 32) = v28;
      }

      else
      {
        v36 = swift_getKeyPath();
        MEMORY[0x28223BE20](v36);
        *(&v37 - 2) = v22;
        *(&v37 - 1) = v29;
        aBlock[0] = v22;
        sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
        sub_21549ED8C();
      }

      swift_getKeyPath();
      aBlock[0] = v22;
      sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      sub_21549ED9C();

      if (*(v22 + 144) && (*(v22 + 144) != 5 || *(v22 + 128) != 0))
      {
        goto LABEL_14;
      }

      swift_getKeyPath();
      aBlock[0] = v22;
      sub_21549ED9C();

      v30 = *(v22 + 32);
      v31 = 0;
    }

    sub_21538D958(v30, 0, v31);
LABEL_14:
    sub_2151A6C9C(0, &unk_2811995C0);
    v32 = sub_2154A245C();
    aBlock[4] = sub_21538E298;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_188;
    v33 = _Block_copy(aBlock);

    sub_2154A10FC();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21538E200(&qword_281199700, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
    sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
    v34 = v45;
    v35 = v40;
    sub_2154A2BEC();
    MEMORY[0x216069000](0, v20, v34, v33);
    _Block_release(v33);

    (*(v39 + 8))(v34, v35);
    return (*(v44 + 8))(v20, v38);
  }

  return result;
}

uint64_t sub_21538B16C(uint64_t a1)
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v3 = *(a1 + 64);
  if (v3)
  {

    v3(v4);
    return sub_21532594C(v3);
  }

  return result;
}

uint64_t sub_21538B230()
{
  v0 = sub_21549E18C();
  if (!v0)
  {
    goto LABEL_15;
  }

  v1 = v0;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = sub_2153B1010(v14);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21533FC88(*(v1 + 56) + 32 * v2, &v15);
  sub_21533FC34(v14);

  if (!*(&v16 + 1))
  {
    return sub_2151ADCD8(&v15, &qword_27CA5ABC0);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v5 = v14[0];
  v6 = sub_21549E18C();
  if (!v6)
  {
LABEL_15:
    v15 = 0u;
    v16 = 0u;
    return sub_2151ADCD8(&v15, &qword_27CA5ABC0);
  }

  v7 = v6;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v7 + 16) || (v8 = sub_2153B1010(v14), (v9 & 1) == 0))
  {
LABEL_14:

    sub_21533FC34(v14);
    goto LABEL_15;
  }

  sub_21533FC88(*(v7 + 56) + 32 * v8, &v15);
  sub_21533FC34(v14);

  if (!*(&v16 + 1))
  {
    return sub_2151ADCD8(&v15, &qword_27CA5ABC0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v10 = v14[0];
    result = [objc_opt_self() sharedAudioController];
    if (result)
    {
      v11 = result;
      v12 = [result isPlaying];

      if (v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      return sub_21538D958(v5, v10, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21538B61C()
{
  v0 = sub_21538CDF0();
  if (v0)
  {
    v16 = v0;
    v1 = [v0 currentAsset];
    v2 = v16;
    if (v1)
    {
      v3 = [v16 currentPlayer];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 currentItem];

        if (v5)
        {
          [v5 currentTime];
          if (sub_2154A288C())
          {
            sub_2154A287C();
            v7 = v6;
          }

          else
          {
            v7 = 0;
          }

          [v5 duration];
          v8 = 0.0;
          v9 = 0.0;
          if (sub_2154A288C())
          {
            sub_2154A287C();
            v9 = v10;
          }

          [v1 duration];
          if (sub_2154A288C())
          {
            sub_2154A287C();
            v8 = v11;
          }

          v12 = [objc_opt_self() sharedAudioController];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          if (v9 > v8)
          {
            v8 = v9;
          }

          v14 = [v12 isPlaying];

          if (v14)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }

          sub_21538D958(v7, *&v8, v15);
        }
      }

      v2 = v16;
    }
  }
}

uint64_t sub_21538B9B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C180);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B520);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C190);
  v11 = *(v10 - 8);
  v19 = v10;
  v20 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - v12;
  a1;
  sub_2153875AC(a1);
  sub_21549F74C();
  sub_21549F70C();
  sub_2151ACC5C(&qword_27CA5B528, &qword_27CA5B520);
  sub_2151ACC5C(&unk_27CA5C1A0, &unk_27CA5C180);
  sub_21549F38C();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21538E014;
  *(v15 + 24) = v14;
  sub_2151ACC5C(&qword_27CA5B530, &unk_27CA5C190);
  v16 = v19;
  v17 = sub_21549F3EC();

  (*(v20 + 8))(v13, v16);
  return sub_215387B8C(v17);
}

uint64_t sub_21538BD28(uint64_t a1, double a2)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 88))(v7, v4);
    if (v10 == *MEMORY[0x277D359E8])
    {
      (*(v5 + 8))(v7, v4);
      v11 = *&a2;
      v12 = 3;
    }

    else if (v10 == *MEMORY[0x277D359D8])
    {
      (*(v5 + 8))(v7, v4);
      v11 = *&a2;
      v12 = 4;
    }

    else
    {
      if (v10 != *MEMORY[0x277D359D0])
      {

        return (*(v5 + 8))(v7, v4);
      }

      swift_getKeyPath();
      v13 = v9;
      sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
      sub_21549ED9C();

      v11 = *(v9 + 32);
      v12 = 0;
    }

    sub_21538D958(v11, 0, v12);
  }

  return result;
}

uint64_t sub_21538BF80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v32 - v6;
  v8 = *(v0 + 24);
  v9 = [v8 userTitle];
  if (!v9)
  {
    v9 = [v8 title];
    if (!v9)
    {
      v9 = [v8 defaultTitle];
    }
  }

  v10 = v9;
  v11 = sub_2154A1D6C();
  v13 = v12;

  v14 = sub_2154A1D2C();
  v15 = [v14 pathExtension];

  v16 = sub_2154A1D6C();
  v18 = v17;

  v19 = [v8 media];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 mediaURL];

    if (v21)
    {
      sub_21549E51C();

      v22 = sub_21549E56C();
      (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
    }

    else
    {
      v22 = sub_21549E56C();
      (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    }

    sub_215323B30(v3, v7);
    sub_21549E56C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v7, 1, v22) != 1)
    {
      v24 = sub_21549E44C();
      v26 = v25;
      (*(v23 + 8))(v7, v22);
      if (v16 == v24 && v18 == v26)
      {
      }

      else
      {
        v27 = sub_2154A2FAC();

        if ((v27 & 1) == 0)
        {
          return sub_215389728(v11, v13);
        }
      }

      v28 = sub_2154A1D2C();

      v29 = [v28 stringByDeletingPathExtension];

      v11 = sub_2154A1D6C();
      v13 = v30;

      return sub_215389728(v11, v13);
    }

    sub_2151ADCD8(v7, &unk_27CA5B090);
  }

  return sub_215389728(v11, v13);
}

uint64_t sub_21538C314()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  return *(v0 + 128);
}

uint64_t sub_21538C3B8()
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_21538C468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2154A1FFC();
  *(v4 + 24) = sub_2154A1FEC();
  v6 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_21538C500, v6, v5);
}

id sub_21538C500()
{
  v1 = sub_21538CDF0();
  if (v1)
  {
    v2 = v1;

    [v2 togglePlayPause];
  }

  else
  {
    result = [objc_opt_self() sharedAudioController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v4 = *(v0 + 16);

    [v2 play_];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21538C5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_2154A1FFC();
  v4[4] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_21538C668, v6, v5);
}

uint64_t sub_21538C668()
{

  v1 = sub_21538CDF0();
  v2 = v1;
  if (v1)
  {
    [v1 pause];
  }

  **(v0 + 16) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21538C6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_2154A1FFC();
  v4[20] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_21538C790, v6, v5);
}

uint64_t sub_21538C790()
{
  v1 = sub_21538CDF0();
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_21538C904;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B538);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21538CA80;
    *(v0 + 104) = &block_descriptor_148;
    *(v0 + 112) = v3;
    [v2 skipBackByInterval:v0 + 80 completion:15.0];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    **(v0 + 144) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21538C904()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21538CA0C, v2, v1);
}

uint64_t sub_21538CA0C()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 192);

  **(v0 + 144) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21538CA80(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_21538CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_2154A1FFC();
  v4[20] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x2822009F8](sub_21538CB74, v6, v5);
}

uint64_t sub_21538CB74()
{
  v1 = sub_21538CDF0();
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_21538CCE8;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B538);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21538CA80;
    *(v0 + 104) = &block_descriptor_145;
    *(v0 + 112) = v3;
    [v2 skipAheadByInterval:v0 + 80 completion:15.0];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    **(v0 + 144) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_21538CCE8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_21538E334, v2, v1);
}

id sub_21538CDF0()
{
  result = [objc_opt_self() sharedAudioController];
  if (result)
  {
    v2 = result;
    v3 = [result currentAttachment];
    if (!v3 || (v4 = v3, v5 = *(v0 + 24), sub_2151A6C9C(0, &qword_281199690), v6 = v5, v7 = sub_2154A291C(), v6, v4, (v7 & 1) == 0))
    {

      return 0;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21538CEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_2154A1FFC();
  v4[5] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_21538CF58;

  return MEMORY[0x2821959E0]();
}

uint64_t sub_21538CF58()
{
  v1 = *v0;

  v3 = sub_2154A1FCC();
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;

  return MEMORY[0x2822009F8](sub_21538D09C, v3, v2);
}

uint64_t sub_21538D09C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v8 = (*MEMORY[0x277D36388] + MEMORY[0x277D36388]);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21538D254;

    return v8(0);
  }

  else
  {

    v5 = v0[3];
    v6 = [objc_opt_self() sharedGenerator];
    [v6 generatePreviewIfNeededForAttachment_];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21538D254()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21538D410;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_21538D370;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21538D370()
{

  v1 = *(v0 + 24);
  v2 = [objc_opt_self() sharedGenerator];
  [v2 generatePreviewIfNeededForAttachment_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21538D410()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21538D47C()
{
  v1[3] = v0;
  sub_2154A1FFC();
  v1[4] = sub_2154A1FEC();
  v3 = sub_2154A1FCC();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_21538D514, v3, v2);
}

uint64_t sub_21538D514()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v6 = (*MEMORY[0x277D36380] + MEMORY[0x277D36380]);
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_21538D688;

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21538D688()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21538D7A4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_2152FBC48;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21538D7A4()
{
  v1 = v0[7];

  if (qword_27CA59868 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_21549F11C();
  __swift_project_value_buffer(v3, qword_27CA5B4E0);
  v4 = v2;
  v5 = sub_21549F0FC();
  v6 = sub_2154A226C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2151A1000, v5, v6, "Error resuming recording: %@", v9, 0xCu);
    sub_2151ADCD8(v10, &unk_27CA59E90);
    MEMORY[0x21606B520](v10, -1, -1);
    MEMORY[0x21606B520](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21538D958(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  sub_21538E200(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v7 = *(v3 + 144) - 3 < 2;
  sub_215389550(a1, a2, a3);
  swift_getKeyPath();
  sub_21549ED9C();

  if (((v7 ^ (*(v3 + 144) - 5 < 0xFFFFFFFE)) & 1) == 0)
  {
    swift_getKeyPath();
    sub_21549ED9C();

    v9 = *(v3 + 64);
    if (v9)
    {

      v9(v10);
      return sub_21532594C(v9);
    }
  }

  return result;
}

uint64_t AudioPlayerView.AudioPlayerViewModel.deinit()
{
  MEMORY[0x21606B640](v0 + 40);

  sub_21532594C(*(v0 + 64));

  v1 = OBJC_IVAR____TtCV11NotesEditor15AudioPlayerView20AudioPlayerViewModel___observationRegistrar;
  v2 = sub_21549EDDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioPlayerView.AudioPlayerViewModel.__deallocating_deinit()
{
  AudioPlayerView.AudioPlayerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioPlayerView.AudioPlayerViewModel()
{
  result = qword_27CA5B508;
  if (!qword_27CA5B508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21538DC3C()
{
  result = sub_21549EDDC();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s20AudioPlayerViewModelC5StateOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s20AudioPlayerViewModelC5StateOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21538DE3C(uint64_t a1)
{
  if (*(a1 + 16) <= 4u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_21538DE54(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

BOOL sub_21538DE7C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (a3 != 4)
      {
        return a6 == 5 && !(a5 | a4);
      }

      if (a6 != 4)
      {
        return 0;
      }
    }

    return *&a1 == *&a4;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    return *&a1 == *&a4;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      return *&a1 == *&a4 && *&a2 == *&a5;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  return *&a1 == *&a4 && *&a2 == *&a5;
}

uint64_t sub_21538DF48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 64);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  sub_2151BD748(v1);
  return sub_21532594C(v4);
}

uint64_t sub_21538DFBC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 152) = v0[3];
  *(v1 + 160) = v2;
}

__n128 sub_21538DFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[8] = result;
  v1[9].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21538E024()
{
  *(*(v0 + 16) + 120) = *(v0 + 24);
}

uint64_t sub_21538E060()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
}

uint64_t sub_21538E0DC()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_21538E14C()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

double sub_21538E1A8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_21538E200(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_21538E388()
{
  result = *MEMORY[0x277D364B0];
  qword_27CA5B548 = *MEMORY[0x277D364B0];
  return result;
}

double sub_21538E3C4()
{
  result = *MEMORY[0x277D364A0];
  qword_27CA5B550 = *MEMORY[0x277D364A0];
  return result;
}

void ICAuthorHighlightsController.set(value:for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = [objc_allocWithZone(MEMORY[0x277D366F0]) init];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_2154A20AC();
  }

  [v12 setValue_];

  [v12 setColor_];
  [v5 setHighlightValue:v12 forRange:a2 inTextStorage:{a3, a4}];
}

void ICAuthorHighlightsController.set(animation:for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a1 + 8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 57);
  v18 = [objc_allocWithZone(MEMORY[0x277D366E8]) init];
  if (v9)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2154A20AC();
  }

  [v18 setDuration_];

  if (v10)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_2154A20AC();
  }

  [v18 setFromValue_];

  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_2154A20AC();
  }

  [v18 setToValue_];

  [v18 setColor_];
  [v18 setAboveExistingHighlights_];
  [v18 setRemovedOnCompletion_];
  [v5 setHighlightAnimation:v18 forRange:a2 inTextStorage:{a3, a4}];
}

void ICAuthorHighlightsController.flash(for:withDuration:in:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_2154A20AC();
  }

  v8 = v7;
  [v4 flashHighlightsForRange:a1 withDuration:a2 inTextStorage:?];
}

void ICAuthorHighlightsController.performUpdates(for:in:updates:)(id a1, uint64_t a2, char a3, id a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    a1 = [a4 ic_range];
    a2 = v12;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v15[4] = sub_21538E850;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21538E878;
  v15[3] = &block_descriptor_15;
  v14 = _Block_copy(v15);

  [v6 performHighlightUpdatesForRange:a1 inTextStorage:a2 updates:{a4, v14}];
  _Block_release(v14);
}

id ICAuthorHighlightsController.performUpdates(for:in:)(id a1, uint64_t a2, char a3, id a4)
{
  if (a3)
  {
    a1 = [a4 ic_range];
    a2 = v8;
  }

  return [v4 performHighlightUpdatesForRange:a1 inTextStorage:a2 updates:{a4, 0}];
}

void sub_21538E914(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    v3 = objc_opt_self();
    v4 = Strong;
    v5 = [v3 defaultCenter];
    [v5 removeObserver:v1 name:@"ICTextViewLayoutDidChangeNotification" object:v4];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() defaultCenter];
    v9 = v7;
    [v8 addObserver:v1 selector:sel_textViewLayoutDidChange_ name:@"ICTextViewLayoutDidChangeNotification" object:v9];
  }
}

uint64_t sub_21538EBF8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return v2;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 56) & 1) != 0 || !CGRectEqualToRect(*(a1 + 24), *(a2 + 24)))
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

void sub_21538EC84()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v47 = Strong;
  [Strong textContainerInset];
  v45 = v3;
  [v47 textContainerInset];
  v44 = v4;
  v5 = OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers;
  v6 = *&v0[OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers];
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    goto LABEL_21;
  }

  v43 = OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers;
  v58 = MEMORY[0x277D84F90];

  sub_21531B64C(0, v7, 0);
  v8 = v58;
  v9 = *MEMORY[0x277CBF398];
  v10 = *(MEMORY[0x277CBF398] + 8);
  v11 = *(MEMORY[0x277CBF398] + 16);
  v12 = *(MEMORY[0x277CBF398] + 24);
  v13 = v6 + 48;
  v46 = v1;
  do
  {
    location = *(v13 - 16);
    length = *(v13 - 8);
    v16 = *v13;
    v52 = *(v13 + 24);
    v55 = *(v13 + 8);
    v17 = *(v13 + 40);
    if (location == sub_21549E0EC() || length < 1)
    {
      goto LABEL_15;
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
      goto LABEL_15;
    }

    v50 = v16;
    v20 = v19;
    v21 = [v19 textStorage];

    if (!v21)
    {
      goto LABEL_14;
    }

    v22 = [v21 string];
    sub_2154A1D6C();

    range2 = sub_2154A1DDC();
    v24 = v23;
    v25 = v21;
    v27 = v26;

    if ((v27 & 1) != 0 || (v60.location = location, v60.length = length, v61.location = range2, v61.length = v24, v28 = NSIntersectionRange(v60, v61), [v47 ic:location rectForRange:length], x = v62.origin.x, y = v62.origin.y, width = v62.size.width, height = v62.size.height, v66.origin.x = 0.0, v66.origin.y = 0.0, v66.size.width = 0.0, v66.size.height = 0.0, CGRectEqualToRect(v62, v66)) || (v63.origin.x = x, v63.origin.y = y, v63.size.width = width, v63.size.height = height, v67.origin.x = v9, v67.origin.y = v10, v67.size.width = v11, v67.size.height = v12, CGRectEqualToRect(v63, v67)))
    {

      v1 = v46;
LABEL_14:
      v16 = v50;
LABEL_15:
      v34 = v52;
      v33 = v55;
      v35 = v17;
      goto LABEL_16;
    }

    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    v65 = CGRectOffset(v64, v45, v44);
    range2a = v65.origin.y;
    v53 = v65.size.width;
    v56 = v65.origin.x;
    v42 = v65.size.height;

    *&v34 = v53;
    *&v33 = v56;
    v35 = 0;
    *(&v34 + 1) = v42;
    *(&v33 + 1) = range2a;
    location = v28.location;
    length = v28.length;
    v1 = v46;
    v16 = v50;
LABEL_16:
    v37 = *(v58 + 16);
    v36 = *(v58 + 24);
    if (v37 >= v36 >> 1)
    {
      v54 = v34;
      v57 = v33;
      v51 = v35;
      sub_21531B64C((v36 > 1), v37 + 1, 1);
      v35 = v51;
      v34 = v54;
      v33 = v57;
    }

    v13 += 64;
    *(v58 + 16) = v37 + 1;
    v38 = v58 + (v37 << 6);
    *(v38 + 32) = location;
    *(v38 + 40) = length;
    *(v38 + 48) = v16;
    *(v38 + 72) = v34;
    *(v38 + 56) = v33;
    *(v38 + 88) = v35;
    --v7;
  }

  while (v7);

  v5 = v43;
  v6 = *&v1[v43];
LABEL_21:
  *&v1[v5] = v8;

  v40 = sub_2153555FC(v39, v6);

  if (!v40)
  {
    sub_21538EC84(v41);
    [v1 ic_setNeedsDisplay];
  }
}

void sub_21538F110(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v32 = *MEMORY[0x277D85DE8];
  v31.receiver = v4;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_drawRect_, a1, a2, a3, a4);
  v10 = UIGraphicsGetCurrentContext();
  if (v10)
  {
    v11 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = [Strong textStorage];

      if (v14)
      {
        v15 = *&v5[OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers];
        v16 = *(v15 + 16);
        if (v16)
        {

          v17 = 0;
          do
          {
            v18 = v15 + v17;
            if ((*(v15 + v17 + 88) & 1) == 0)
            {
              v20 = *(v18 + 72);
              v19 = *(v18 + 80);
              v22 = *(v18 + 56);
              v21 = *(v18 + 64);
              v24 = *(v18 + 40);
              v23 = *(v18 + 48);
              v25 = *(v18 + 32);
              v30 = 0.0;
              v26 = objc_opt_self();
              v27 = [v26 textCorrectionAdjustmentAttributedString:v14 range:v25 glyphOrigin:v24 yDelta:{&v30, v22, v21}];
              if (20.0 - v20 > 0.0)
              {
                v28 = (20.0 - v20) * -0.5;
              }

              else
              {
                v28 = -0.0;
              }

              v30 = v19 + -8.0;
              v33.origin.x = v22;
              v33.origin.y = v21;
              v33.size.width = v20;
              v33.size.height = v19;
              v34 = CGRectOffset(v33, v28, v19 + -8.0);
              if (v20 > 20.0)
              {
                v29 = v20;
              }

              else
              {
                v29 = 20.0;
              }

              [v26 drawCorrectionMarkerOfType:v23 font:v27 origin:v11 width:v34.origin.x cgContext:{v34.origin.y, v29, v34.size.height}];
            }

            v17 += 64;
            --v16;
          }

          while (v16);
        }

        else
        {
        }
      }
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21538F538(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21538F558(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_21538F5A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21538F5EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21538F654()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B578);
  __swift_project_value_buffer(v0, qword_27CA5B578);
  return sub_21549F0BC();
}

uint64_t sub_21538F6A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5B0);
  MEMORY[0x28223BE20](v28);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5B8);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5C0);
  MEMORY[0x28223BE20](v27);
  v12 = v25 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5C8);
  v13 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = v25 - v14;
  v16 = sub_21549EE9C();
  v30[3] = v16;
  v30[4] = sub_215392400(&qword_27CA5B5D0, MEMORY[0x277D084D8]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D084C8], v16);
  LOBYTE(v16) = sub_21549EE3C();
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  if (v16)
  {
    v26 = a3;
    IsFCSReportAConcernEnabled = ICInternalSettingsIsFCSReportAConcernEnabled();
    v19 = sub_2154A011C();
    if (IsFCSReportAConcernEnabled)
    {
      *v12 = v19;
      *(v12 + 1) = 0;
      v12[16] = 1;
      v25[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5F0) + 44);
      v20 = swift_allocObject();
      v25[1] = v25;
      *(v20 + 16) = a1;
      *(v20 + 24) = a2;
      MEMORY[0x28223BE20](v20);
      v25[-2] = a1;
      v25[-1] = a2;

      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
      sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
      sub_2154A0E3C();
      sub_215392104(v12, v10);
      swift_storeEnumTagMultiPayload();
      sub_2151ACC5C(&qword_27CA5B5E0, &qword_27CA5B5C0);
      sub_2151ACC5C(&qword_27CA5B5E8, &qword_27CA5B5B0);
      sub_2154A039C();
      sub_2151ADCD8(v12, &qword_27CA5B5C0);
    }

    else
    {
      *v7 = v19;
      *(v7 + 1) = 0;
      v7[16] = 1;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5D8);
      sub_215390C1C(a1, a2, &v7[*(v23 + 44)]);
      sub_2151C68CC(v7, v10);
      swift_storeEnumTagMultiPayload();
      sub_2151ACC5C(&qword_27CA5B5E0, &qword_27CA5B5C0);
      sub_2151ACC5C(&qword_27CA5B5E8, &qword_27CA5B5B0);
      sub_2154A039C();
      sub_2151C693C(v7);
    }

    a3 = v26;
    sub_2151C69A4(v15, v26);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  return (*(v13 + 56))(a3, v22, 1, v29);
}

void sub_21538FBD8(uint64_t a1)
{
  v2 = sub_21549F11C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = sub_21549EEEC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21538FFE4(a1, v12);
  sub_2154A11BC();
  (*(v10 + 8))(v12, v9);
  v13 = sub_2154A117C();
  if (v14 != -1)
  {
    v15 = v13;
    v16 = v14;
    if ((v14 & 1) == 0)
    {
      sub_21549F0BC();
      sub_21539218C(v15);
      v26 = sub_21549F0FC();
      v27 = sub_2154A224C();
      sub_215392174(v15, v16);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        *(v28 + 4) = v15;
        *v29 = v15;
        sub_21539218C(v15);
        _os_log_impl(&dword_2151A1000, v26, v27, "User evaluation: %@", v28, 0xCu);
        sub_2151ADCD8(v29, &unk_27CA59E90);
        MEMORY[0x21606B520](v29, -1, -1);
        MEMORY[0x21606B520](v28, -1, -1);

        sub_215392174(v15, v16);
      }

      else
      {
        sub_215392174(v15, v16);
      }

      (*(v3 + 8))(v8, v2);
      return;
    }

    sub_215392174(v13, v14);
  }

  v17 = sub_2154A117C();
  if (v18 != -1)
  {
    v19 = v17;
    v20 = v18;
    if (v18)
    {
      sub_21549F0BC();
      sub_21539218C(v19);
      v21 = sub_21549F0FC();
      v22 = sub_2154A224C();
      sub_215392174(v19, v20);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        sub_21539218C(v19);
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v25;
        *v24 = v25;
        _os_log_impl(&dword_2151A1000, v21, v22, "Error: %@", v23, 0xCu);
        sub_2151ADCD8(v24, &unk_27CA59E90);
        MEMORY[0x21606B520](v24, -1, -1);
        MEMORY[0x21606B520](v23, -1, -1);

        sub_215392174(v19, v20);
      }

      else
      {
        sub_215392174(v19, v20);
      }

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      sub_215392174(v17, v18);
    }
  }
}

id sub_21538FFE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v57 - v7;
  v8 = sub_21549EEFC();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C740);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v57 - v11;
  v85 = sub_21549EF4C();
  v74 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v73 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_21549EF3C();
  v79 = *(v13 - 8);
  v80 = v13;
  MEMORY[0x28223BE20](v13);
  v76 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v57 - v18;
  swift_getKeyPath();
  v87 = a1;
  sub_215392400(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  result = [*(a1 + 16) audioDocument];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = result;
  swift_getKeyPath();
  v87 = a1;
  sub_21549ED9C();

  result = [*(a1 + 16) attachment];
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = [result creationDate];

  v72 = v5;
  if (v23)
  {
    sub_21549E66C();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_21549E6AC();
  (*(*(v25 - 8) + 56))(v19, v24, 1, v25);
  ICTTAudioDocument.reportAConcernAttachmentDescription(forToplineSummary:createdDate:)(0, v19, &v87);
  v67 = v87;
  v68 = v88;
  v66 = v89;
  v26 = v90;
  v71 = v91;
  v70 = v92;
  v69 = v93;

  sub_2151ADCD8(v19, &unk_27CA5EA60);
  swift_getKeyPath();
  v87 = a1;
  sub_21549ED9C();

  result = [*(a1 + 16) audioDocument];
  if (!result)
  {
    goto LABEL_14;
  }

  v27 = result;
  v28 = [result transcriptAsPlainText];
  v29 = sub_2154A1D6C();
  v31 = v30;

  v32 = [v27 recordingSummaryAsPlainText];
  v33 = sub_2154A1D6C();
  v35 = v34;

  v36 = sub_2154A23AC();
  v65 = v26;
  v84 = v35;
  v62 = v33;
  if (v36 && (v87 = 0, v88 = 0, v37 = v36, sub_2154A1D5C(), v37, v88))
  {
    v63 = v88;
    v64 = v87;
  }

  else
  {

    v64 = 0;
    v63 = 0xE000000000000000;
  }

  v38 = v73;
  *v73 = v29;
  v38[1] = v31;
  v61 = *MEMORY[0x277D08638];
  v60 = *(v74 + 104);
  v60(v38);
  swift_bridgeObjectRetain_n();

  v74 = v31;
  v39 = *MEMORY[0x277D08610];
  v40 = sub_21549EF2C();
  v41 = *(v40 - 8);
  v59 = *(v41 + 104);
  v42 = v75;
  v59(v75, v39, v40);
  v58 = *(v41 + 56);
  v58(v42, 0, 1, v40);
  sub_21549EF1C();

  v43 = v84;

  *v38 = v62;
  v38[1] = v43;
  (v60)(v38, v61, v85);

  v59(v42, *MEMORY[0x277D085F8], v40);
  v58(v42, 0, 1, v40);
  v44 = v76;
  sub_21549EF1C();
  (*(v77 + 104))(v81, *MEMORY[0x277D08598], v78);
  v46 = v79;
  v45 = v80;
  v47 = *(v79 + 16);
  v48 = v82;
  v47(v82, v86, v80);
  v49 = *(v46 + 56);
  v49(v48, 0, 1, v45);
  v50 = v72;
  v47(v72, v44, v45);
  v49(v50, 0, 1, v45);

  v51 = objc_allocWithZone(sub_21549EF6C());
  v52 = sub_21549EF0C();
  v53 = *(v46 + 8);
  v53(v44, v45);
  v53(v86, v45);
  v54 = v83;
  *v83 = v52;
  v55 = *MEMORY[0x277D08530];
  v56 = sub_21549EEEC();
  return (*(*(v56 - 8) + 104))(v54, v55, v56);
}

uint64_t sub_215390A60()
{
  v0 = sub_21549EECC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_2154A1D2C();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  v7 = sub_2154A1D6C();
  v9 = v8;

  v11[0] = v7;
  v11[1] = v9;
  (*(v1 + 104))(v3, *MEMORY[0x277D084F8], v0);
  sub_2154A11AC();
  (*(v1 + 8))(v3, v0);
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_215390C1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v75 = a3;
  v5 = sub_2154A014C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  v80 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B600);
  v79 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = &v59 - v16;
  MEMORY[0x28223BE20](v17);
  v76 = &v59 - v18;
  v19 = swift_allocObject();
  v72 = a1;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v83 = a1;
  v84 = a2;

  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  v69 = sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  sub_2154A0E3C();
  sub_2154A013C();
  v68 = sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
  v67 = sub_215392400(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v62 = v9;
  v63 = v5;
  sub_2154A09CC();
  v20 = *(v6 + 8);
  v65 = v6 + 8;
  v66 = v20;
  v20(v8, v5);
  v21 = *(v80 + 8);
  v80 += 8;
  v64 = v21;
  v21(v11, v9);
  v22 = [objc_opt_self() mainBundle];
  v23 = sub_2154A1D2C();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  v25 = sub_2154A1D6C();
  v27 = v26;

  v85 = v25;
  v86 = v27;
  sub_215324954();
  v28 = sub_2154A092C();
  v30 = v29;
  LOBYTE(v6) = v31;
  LODWORD(v85) = sub_2154A04BC();
  v59 = sub_2154A08DC();
  v33 = v32;
  v60 = v34;
  v61 = v35;
  sub_215354880(v28, v30, v6 & 1);

  v36 = swift_allocObject();
  v38 = v71;
  v37 = v72;
  *(v36 + 16) = v72;
  *(v36 + 24) = v38;
  v81 = v37;
  v82 = v38;
  v39 = v38;

  v40 = v39;
  sub_2154A0E3C();
  sub_2154A013C();
  v41 = v77;
  v42 = v62;
  v43 = v63;
  sub_2154A09CC();
  v66(v8, v43);
  v64(v11, v42);
  v44 = v78;
  v45 = *(v79 + 16);
  v46 = v74;
  v45(v78, v76, v74);
  v47 = v73;
  v48 = v41;
  v49 = v46;
  v45(v73, v48, v46);
  v50 = v75;
  *v75 = 0;
  *(v50 + 8) = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B610);
  v45(v50 + v51[12], v44, v49);
  v52 = v50 + v51[16];
  *v52 = 0;
  v52[8] = 1;
  v53 = v50 + v51[20];
  v54 = v59;
  *v53 = v59;
  *(v53 + 1) = v33;
  LOBYTE(v44) = v60 & 1;
  v53[16] = v60 & 1;
  *(v53 + 3) = v61;
  v55 = v50 + v51[24];
  *v55 = 0;
  v55[8] = 1;
  v45(v50 + v51[28], v47, v49);
  v56 = v50 + v51[32];
  *v56 = 0;
  v56[8] = 1;
  sub_21539227C(v54, v33, v44);
  v57 = *(v79 + 8);

  v57(v77, v49);
  v57(v76, v49);
  v57(v47, v49);
  sub_215354880(v54, v33, v44);

  return (v57)(v78, v49);
}

uint64_t sub_2153913D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v7 = sub_21549EEEC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21538FFE4(a1, v10);
  a4(v10, a3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2153914CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = sub_21549EECC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A01BC();
  (*(v7 + 104))(v9, *a5, v6);
  sub_2154A11AC();
  (*(v7 + 8))(v9, v6);
  return sub_2154A0DBC();
}

uint64_t sub_215391620(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21549EEEC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_2154A1FFC();
  v2[8] = sub_2154A1FEC();
  v5 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215391720, v5, v4);
}

uint64_t sub_215391720()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];

  sub_21538FFE4(v5, v1);
  sub_2154A11CC();
  v6 = *(v3 + 8);
  v6(v1, v4);
  sub_21538FFE4(v5, v2);
  v7 = (*(v3 + 88))(v2, v4);
  if (v7 == *MEMORY[0x277D08550])
  {
    v8 = v0[6];
    v9 = v0[4];
LABEL_14:
    v6(v8, v9);
    goto LABEL_15;
  }

  if (v7 != *MEMORY[0x277D08530])
  {
    if (qword_27CA59888 != -1)
    {
      swift_once();
    }

    v16 = sub_21549F11C();
    __swift_project_value_buffer(v16, qword_27CA5B578);
    v17 = sub_21549F0FC();
    v18 = sub_2154A226C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2151A1000, v17, v18, "Feedback Failed with unknown case", v19, 2u);
      MEMORY[0x21606B520](v19, -1, -1);
    }

    v20 = v0[6];
    v21 = v0[4];

    v8 = v20;
    v9 = v21;
    goto LABEL_14;
  }

  v10 = v0[6];
  (*(v0[5] + 96))(v10, v0[4]);
  v11 = *v10;
  if (qword_27CA59888 != -1)
  {
    swift_once();
  }

  v12 = sub_21549F11C();
  __swift_project_value_buffer(v12, qword_27CA5B578);
  v13 = sub_21549F0FC();
  v14 = sub_2154A224C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2151A1000, v13, v14, "Feedback Interaction .presented()", v15, 2u);
    MEMORY[0x21606B520](v15, -1, -1);
  }

  sub_21549EF5C();
LABEL_15:

  v22 = v0[1];

  return v22();
}

void sub_215391A20(void *a1, char a2)
{
  if (a2)
  {
    if (qword_27CA59888 != -1)
    {
      swift_once();
    }

    v3 = sub_21549F11C();
    __swift_project_value_buffer(v3, qword_27CA5B578);
    v4 = a1;
    oslog = sub_21549F0FC();
    v5 = sub_2154A224C();
    sub_2151C68B8(a1);
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_16;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2151A1000, oslog, v5, "Failed to fetch existing Report a Concern response: %@", v6, 0xCu);
    sub_2151ADCD8(v7, &unk_27CA59E90);
    MEMORY[0x21606B520](v7, -1, -1);
    v10 = v6;
    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_27CA59888 != -1)
    {
      swift_once();
    }

    v19 = sub_21549F11C();
    __swift_project_value_buffer(v19, qword_27CA5B578);
    oslog = sub_21549F0FC();
    v20 = sub_2154A224C();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_16;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2151A1000, oslog, v20, "No existing Report a Concern response", v21, 2u);
    v10 = v21;
LABEL_15:
    MEMORY[0x21606B520](v10, -1, -1);
    goto LABEL_16;
  }

  v11 = qword_27CA59888;
  v12 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_21549F11C();
  __swift_project_value_buffer(v13, qword_27CA5B578);
  v14 = v12;
  oslog = sub_21549F0FC();
  v15 = sub_2154A224C();
  sub_2151C68B8(a1);
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v14;
    *v17 = a1;
    v18 = v14;
    _os_log_impl(&dword_2151A1000, oslog, v15, "Found existing Report a Concern response %@", v16, 0xCu);
    sub_2151ADCD8(v17, &unk_27CA59E90);
    MEMORY[0x21606B520](v17, -1, -1);
    MEMORY[0x21606B520](v16, -1, -1);
    sub_2151C68B8(a1);
LABEL_16:

    return;
  }

  sub_2151C68B8(a1);
}

void sub_215391D94(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27CA59888 != -1)
    {
      swift_once();
    }

    v3 = sub_21549F11C();
    __swift_project_value_buffer(v3, qword_27CA5B578);
    v4 = a1;
    oslog = sub_21549F0FC();
    v5 = sub_2154A226C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2151A1000, oslog, v5, "Failed to mark the feedback interaction as presented: %@", v6, 0xCu);
      sub_2151ADCD8(v7, &unk_27CA59E90);
      MEMORY[0x21606B520](v7, -1, -1);
      MEMORY[0x21606B520](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

double sub_215391F44@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_2154A025C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B590);
  sub_21538F6A0(v4, v3, a1 + *(v5 + 44));
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B598) + 36));
  sub_21549FBCC();

  v8 = v3;
  sub_2154A200C();
  *v7 = &unk_2154C0448;
  v7[1] = v6;
  LOBYTE(v3) = sub_2154A06CC();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5A0) + 36);
  *v9 = v3;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_21539205C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2151BD278;

  return sub_215391620(v2, v3);
}

uint64_t sub_215392104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_215392174(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_2151C68B8(a1);
  }
}

uint64_t sub_21539227C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_21539228C()
{
  result = qword_27CA5B618;
  if (!qword_27CA5B618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B5A0);
    sub_215392318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B618);
  }

  return result;
}

unint64_t sub_215392318()
{
  result = qword_27CA5B620;
  if (!qword_27CA5B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B598);
    sub_2151ACC5C(&qword_27CA5B628, &qword_27CA5B630);
    sub_215392400(&unk_27CA5C970, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B620);
  }

  return result;
}

uint64_t sub_215392400(unint64_t *a1, void (*a2)(uint64_t))
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

UIMenu_optional __swiftcall SidecarInsertMenuController.menu()()
{
  v1 = (v0 + OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider);
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v5 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  (*(v5 + 16))(&v20 - v7, v6);
  LOBYTE(v3) = (*(v3 + 8))(v2, v3);
  (*(v5 + 8))(v8, v2);
  v10 = 0;
  if ((v3 & 1) == 0)
  {
    v11 = v1[3];
    v12 = v1[4];
    v13 = __swift_project_boxed_opaque_existential_0Tm(v1, v11);
    v14 = *(v11 - 8);
    v15 = MEMORY[0x28223BE20](v13);
    v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = (*(v12 + 16))(v11, v12);
    (*(v14 + 8))(v17, v11);
    if (*(v18 + 16))
    {
      v19 = sub_215393A48(v18);

      if (v19 >> 62)
      {
        sub_2151A6C9C(0, &qword_281199650);

        sub_2154A2EEC();
      }

      else
      {

        sub_2154A2FBC();
        sub_2151A6C9C(0, &qword_281199650);
      }

      sub_2151A6C9C(0, &qword_2811994E0);
      v10 = sub_2154A28AC();
    }

    else
    {

      v10 = 0;
    }
  }

  result.value.super.super.isa = v10;
  result.is_nil = v9;
  return result;
}

uint64_t sub_215392764()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B638);
  __swift_project_value_buffer(v0, qword_27CA5B638);
  return sub_21549F0EC();
}

uint64_t sub_2153927B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, void (*a3)(void **__return_ptr, id *, id *), uint64_t a4, unint64_t a5)
{
  isUniquelyReferenced_nonNull_native = a5;
  if (a5 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {
    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      break;
    }

    v9 = MEMORY[0x277D84F98];
LABEL_42:
    v48 = *(v7 + 2);
    if (!v48)
    {

      return MEMORY[0x277D84F90];
    }

    v65 = MEMORY[0x277D84F90];
    sub_2154A2E2C();
    v49 = (v7 + 40);
    while (v9[2])
    {
      v50 = *(v49 - 1);
      isUniquelyReferenced_nonNull_native = *v49;

      v51 = sub_2153B0D68(v50, isUniquelyReferenced_nonNull_native);
      if ((v52 & 1) == 0)
      {
        goto LABEL_51;
      }

      v53 = *(v9[7] + 8 * v51);

      sub_2154A2E0C();
      isUniquelyReferenced_nonNull_native = *(v65 + 16);
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      v49 += 2;
      if (!--v48)
      {

        return v65;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v8 = 0;
  v61 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v56 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v9 = MEMORY[0x277D84F98];
  v59 = i;
  v60 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v61)
    {
      v13 = MEMORY[0x216069960](v8, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v8 >= *(v56 + 16))
      {
        goto LABEL_53;
      }

      v13 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
    }

    v14 = v13;
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    v67 = v13;
    a1(&v65, &v67);
    v17 = v65;
    v16 = v66;
    if (v9[2])
    {
      v18 = sub_2153B0D68(v65, v66);
      if (v19)
      {
        v57 = v7;
        v64 = *(v9[7] + 8 * v18);
        v58 = v64;
        a3(&v63, &v64, &v67);
        v20 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v9;
        v22 = sub_2153B0D68(v17, v16);
        v23 = v9[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_55;
        }

        v26 = v21;
        if (v9[3] < v25)
        {
          sub_2153DA1A8(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_2153B0D68(v17, v16);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_58;
          }

          v22 = v27;
          v9 = v63;
          if ((v26 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_35:
          v46 = v9[7];
          v47 = *(v46 + 8 * v22);
          *(v46 + 8 * v22) = v20;

LABEL_36:
          v15 = v8 + 1;
          v7 = v57;
          goto LABEL_7;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v9 = v63;
          if (v21)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_2153DC8B8();
          v9 = v63;
          if (v26)
          {
            goto LABEL_35;
          }
        }

LABEL_19:
        v9[(v22 >> 6) + 8] |= 1 << v22;
        v29 = (v9[6] + 16 * v22);
        *v29 = v17;
        v29[1] = v16;
        *(v9[7] + 8 * v22) = v20;

        v30 = v9[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_56;
        }

        v9[2] = v32;

        goto LABEL_36;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_215317E44(0, *(v7 + 2) + 1, 1, v7);
    }

    v34 = *(v7 + 2);
    v33 = *(v7 + 3);
    if (v34 >= v33 >> 1)
    {
      v7 = sub_215317E44((v33 > 1), v34 + 1, 1, v7);
    }

    *(v7 + 2) = v34 + 1;
    v35 = &v7[16 * v34];
    *(v35 + 4) = v17;
    *(v35 + 5) = v16;

    v12 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v9;
    v36 = sub_2153B0D68(v17, v16);
    v38 = v9[2];
    v39 = (v37 & 1) == 0;
    v31 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v31)
    {
      goto LABEL_52;
    }

    v41 = v37;
    if (v9[3] < v40)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = v36;
    sub_2153DC8B8();
    v36 = isUniquelyReferenced_nonNull_native;
    v9 = v64;
    if ((v41 & 1) == 0)
    {
LABEL_31:
      v9[(v36 >> 6) + 8] |= 1 << v36;
      v43 = (v9[6] + 16 * v36);
      *v43 = v17;
      v43[1] = v16;
      *(v9[7] + 8 * v36) = v12;
      v44 = v9[2];
      v31 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v31)
      {
        goto LABEL_54;
      }

      v9[2] = v45;
      goto LABEL_6;
    }

LABEL_5:
    v10 = v9[7];
    v11 = *(v10 + 8 * v36);
    *(v10 + 8 * v36) = v12;

    v12 = v11;
LABEL_6:

LABEL_7:
    isUniquelyReferenced_nonNull_native = v60;
    ++v8;
    if (v15 == v59)
    {
      goto LABEL_42;
    }
  }

  sub_2153DA1A8(v40, isUniquelyReferenced_nonNull_native);
  v36 = sub_2153B0D68(v17, v16);
  if ((v41 & 1) == (v42 & 1))
  {
LABEL_30:
    v9 = v64;
    if ((v41 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_5;
  }

LABEL_58:
  result = sub_2154A300C();
  __break(1u);
  return result;
}

uint64_t SidecarInsertMenuController.services.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICSidecarInsertMenuController_services;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SidecarInsertMenuController.serviceProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
  swift_beginAccess();
  return sub_215333D74(v1 + v3, a1);
}

uint64_t SidecarInsertMenuController.serviceProvider.setter(__int128 *a1)
{
  v3 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + v3);
  sub_2151C6B0C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t (*SidecarInsertMenuController.presentingViewController.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICSidecarInsertMenuController_presentingViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21537750C;
}

uint64_t (*SidecarInsertMenuController.presentingSourceView.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21537A5F8;
}

double SidecarInsertMenuController.presentingSourceRect.getter()
{
  v1 = v0 + OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect;
  swift_beginAccess();
  return *v1;
}

uint64_t SidecarInsertMenuController.presentingSourceRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

id SidecarInsertMenuController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SidecarInsertMenuController.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SidecarProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_215396864(v1, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

id SidecarInsertMenuController.__allocating_init(provider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_215396B78(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

id SidecarInsertMenuController.init(provider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_2153969D4(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

id SidecarInsertMenuController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_215393880@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2153252BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_215393920(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_215396D4C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

int64_t sub_215393A48(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  sub_215333D74(a1 + 32, &v48);
  if (v3 != 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v48);
LABEL_7:
    v13 = OBJC_IVAR___ICSidecarInsertMenuController_services;
    swift_beginAccess();
    v14 = *(v39 + v13);
    v15 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    v42 = *(v14 + 16);
    if (!v42)
    {
LABEL_28:
      v1 = sub_2153927B0(sub_2153943D4, 0, sub_21539442C, 0, v15);

      return v1;
    }

    v40 = v14 + 32;
    v37 = a1 + 32;

    v16 = 0;
    v38 = MEMORY[0x277D84F90];
    v41 = v3;
    while (v16 < *(v14 + 16))
    {
      v1 = *(v40 + 8 * v16);
      if (v3)
      {
        v17 = v37;
        v18 = MEMORY[0x277D84F90];
        do
        {
          sub_215333D74(v17, &v48);
          v19 = v49;
          v20 = v50;
          __swift_project_boxed_opaque_existential_0Tm(&v48, v49);
          if ((*(v20 + 32))(v1, v19, v20))
          {
            sub_2151C6B0C(&v48, v43);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21531B5CC(0, *(v18 + 16) + 1, 1);
              v18 = v46;
            }

            v23 = *(v18 + 16);
            v22 = *(v18 + 24);
            if (v23 >= v22 >> 1)
            {
              sub_21531B5CC((v22 > 1), v23 + 1, 1);
            }

            v24 = v44;
            v25 = v45;
            v26 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
            v27 = MEMORY[0x28223BE20](v26);
            v29 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v30 + 16))(v29, v27);
            sub_2153967CC(v23, v29, &v46, v24, v25);
            __swift_destroy_boxed_opaque_existential_0Tm(v43);
            v18 = v46;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v48);
          }

          v17 += 40;
          --v3;
        }

        while (v3);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      if (*(v18 + 16))
      {
        sub_215394034(v1, v18);

        MEMORY[0x216068AC0](v31);
        v3 = v41;
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v38 = v47;
      }

      else
      {

        v3 = v41;
      }

      if (++v16 == v42)
      {

        v15 = v38;
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2154BDB20;
  v4 = OBJC_IVAR___ICSidecarInsertMenuController_services;
  v5 = v39;
  v6 = swift_beginAccess();
  v7 = *(v39 + v4);
  MEMORY[0x28223BE20](v6);
  v34 = &v48;

  v8 = sub_2153F2678(sub_215396D54, v33, v7);
  MEMORY[0x28223BE20](v8);
  v34 = v5;
  v35 = &v48;
  v9 = sub_21537B21C(sub_215396DC4, v33, v8);

  v10 = v49;
  v11 = v50;
  __swift_project_boxed_opaque_existential_0Tm(&v48, v49);
  (*(v11 + 8))(v10, v11);
  if (v9 >> 62)
  {
LABEL_31:
    sub_2151A6C9C(0, &qword_281199650);

    v12 = sub_2154A2EEC();

    goto LABEL_5;
  }

  sub_2154A2FBC();
  sub_2151A6C9C(0, &qword_281199650);
  v12 = v9;
LABEL_5:

  sub_2151A6C9C(0, &qword_2811994E0);
  v34 = v12;
  *(v1 + 32) = sub_2154A28AC();
  __swift_destroy_boxed_opaque_existential_0Tm(&v48);
  return v1;
}

uint64_t sub_215394034(int64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2154A2E2C();
    sub_2151A6C9C(0, &qword_281199480);
    v6 = a2 + 32;
    do
    {
      sub_215333D74(v6, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_0Tm(v17, v18);
      (*(v8 + 8))(v7, v8);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_215333D74(v17, v16);
      v10 = swift_allocObject();
      *(v10 + 16) = a1;
      sub_2151C6B0C(v16, v10 + 24);
      *(v10 + 64) = v9;
      sub_2154A295C();
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      sub_2154A2E0C();
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      v6 += 40;
      --v3;
    }

    while (v3);
    v4 = v20;
  }

  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_12;
    }

LABEL_16:
    v17[0] = a1;
    result = sub_2154A2FDC();
    __break(1u);
    return result;
  }

  if (a1 != 2 && a1 != 3)
  {
    goto LABEL_16;
  }

LABEL_12:
  v11 = sub_2154A1D2C();

  v12 = [objc_opt_self() systemImageNamed_];

  v13 = sub_2153D3F3C(a1);
  v14 = [v13 localizedDescription];

  sub_2154A1D6C();
  if (v4 >> 62)
  {
    sub_2151A6C9C(0, &qword_281199650);

    sub_2154A2EEC();
  }

  else
  {

    sub_2154A2FBC();
    sub_2151A6C9C(0, &qword_281199650);
  }

  sub_2151A6C9C(0, &qword_2811994E0);
  return sub_2154A28AC();
}

void sub_2153943D4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  v4 = sub_2154A1D6C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21539442C@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  sub_2151A6C9C(0, &qword_2811994E0);
  v6 = [v4 title];
  sub_2154A1D6C();

  v7 = [v4 image];
  v8 = [v4 children];
  sub_2151A6C9C(0, &qword_281199650);
  sub_2154A1F4C();

  v9 = [v5 children];
  v10 = sub_2154A1F4C();

  sub_21547ED70(v10);
  result = sub_2154A28AC();
  *a3 = result;
  return result;
}

uint64_t sub_215394598@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = sub_2153D3F3C(*a1);
  v7 = [v6 localizedDescription];

  sub_2154A1D6C();
  if (v5 > 1)
  {
    if (v5 == 2 || v5 == 3)
    {
      goto LABEL_8;
    }
  }

  else if (!v5 || v5 == 1)
  {
LABEL_8:
    sub_2151A6C9C(0, &qword_281199480);
    v8 = sub_2154A1D2C();

    v9 = [objc_opt_self() systemImageNamed_];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_215333D74(a2, v13);
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    sub_2151C6B0C(v13, v11 + 24);
    *(v11 + 64) = v10;
    result = sub_2154A295C();
    *a3 = result;
    return result;
  }

  result = sub_2154A2FDC();
  __break(1u);
  return result;
}

void sub_2153947CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CA59890 != -1)
  {
    swift_once();
  }

  v7 = sub_21549F11C();
  __swift_project_value_buffer(v7, qword_27CA5B638);
  sub_215333D74(a3, &v30);
  v8 = sub_21549F0FC();
  v9 = sub_2154A224C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315394;
    v12 = sub_2153D3F3C(a2);
    v13 = [v12 localizedDescription];

    v14 = sub_2154A1D6C();
    v16 = v15;

    v17 = sub_215348D98(v14, v16, v29);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = v31;
    v19 = v32;
    __swift_project_boxed_opaque_existential_0Tm(&v30, v31);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
    v23 = sub_215348D98(v20, v22, v29);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_2151A1000, v8, v9, "Selected service %s on an %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606B520](v11, -1, -1);
    MEMORY[0x21606B520](v10, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v30);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    type metadata accessor for DisableImmersiveEnvironmentToken();
    *&v25[OBJC_IVAR___ICSidecarInsertMenuController_disableEnvironmentToken] = swift_allocObject();
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_215333D74(a3, &v30);
    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    sub_2151C6B0C(&v30, v28 + 24);
    *(v28 + 64) = a2;

    sub_215394EE4(a3, a2, sub_215396DF0, v28);
  }
}

uint64_t sub_215394ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong resignFirstResponder];
    }

    v9 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
    swift_beginAccess();
    sub_215333D74(v6 + v9, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_0Tm(v15, v16);
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    v13 = *(v11 + 24);
    v14 = v6;
    v13(a2, a3, sub_215396E08, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  return result;
}

void sub_215394C40(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (qword_27CA59890 != -1)
  {
    swift_once();
  }

  v8 = sub_21549F11C();
  __swift_project_value_buffer(v8, qword_27CA5B638);
  v9 = v6;

  v10 = v6;

  v11 = sub_21549F0FC();
  v12 = sub_2154A224C();
  if (!os_log_type_enabled(v11, v12))
  {

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 67109634;
  *(v13 + 4) = a1 & 1;
  *(v13 + 8) = 2112;
  if (v6)
  {
    v15 = v6;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    v17 = v16;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  *(v13 + 10) = v16;
  *v14 = v17;
  *(v13 + 18) = 2048;
  if (v5 >> 62)
  {
    v18 = sub_2154A2C8C();
  }

  else
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 20) = v18;

  _os_log_impl(&dword_2151A1000, v11, v12, "Request finish state did change to %{BOOL}d (error: %@, number of items: %ld)", v13, 0x1Cu);
  sub_215396E54(v14);
  MEMORY[0x21606B520](v14, -1, -1);
  MEMORY[0x21606B520](v13, -1, -1);

  if (a1)
  {
LABEL_12:
    *&v3[OBJC_IVAR___ICSidecarInsertMenuController_disableEnvironmentToken] = 0;

    v19 = swift_allocObject();
    v19[2] = v6;
    v19[3] = v5;
    v19[4] = v7;
    v19[5] = v3;
    v20 = v6;

    v21 = v3;
    sub_2153958C4(sub_215396E48, v19);
  }
}

void sub_215394EE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = (v4 + OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect);
      swift_beginAccess();
      v41.origin.x = 0.0;
      v41.origin.y = 0.0;
      v41.size.width = 0.0;
      v41.size.height = 0.0;
      if (CGRectEqualToRect(*v13, v41))
      {
        sub_215396184(v39);
        if (v40)
        {
          [v12 bounds];
          x = v14;
          y = v16;
          width = v18;
          height = v20;
        }

        else
        {
          x = *v39;
          y = *&v39[1];
          width = *&v39[2];
          height = *&v39[3];
        }
      }

      else
      {
        x = v13->origin.x;
        y = v13->origin.y;
        width = v13->size.width;
        height = v13->size.height;
      }

      [v12 bounds];
      v23 = v22;
      sub_215333D74(a1, v38);
      v24 = objc_allocWithZone(type metadata accessor for SidecarInsertProgressViewController());
      v25 = sub_215332480(a2, v38);
      v26 = [v25 popoverPresentationController];
      if (v26)
      {
        v27 = v26;
        [v26 setSourceView_];
      }

      v28 = [v25 popoverPresentationController];
      [v28 setSourceRect_];

      v29 = [v25 popoverPresentationController];
      if (v29)
      {
        if (v23 + -300.0 >= y + height)
        {
          v30 = 1;
        }

        else
        {
          v30 = 3;
        }

        v31 = v29;
        [v29 setPermittedArrowDirections_];
      }

      v32 = [v25 popoverPresentationController];

      if (v32)
      {
        [v32 setCanOverlapSourceViewRect_];
      }

      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = &v25[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_didTapCancel];
      v35 = *&v25[OBJC_IVAR____TtC11NotesEditor35SidecarInsertProgressViewController_didTapCancel];
      *v34 = sub_215396E00;
      v34[1] = v33;

      sub_2151AF750(v35);

      if (a3)
      {
        v38[4] = a3;
        v38[5] = a4;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 1107296256;
        v38[2] = sub_2151BD7E4;
        v38[3] = &block_descriptor_51_0;
        a3 = _Block_copy(v38);
      }

      [v10 presentViewController:v25 animated:1 completion:a3];
      _Block_release(a3);
      v36 = [v10 view];
      if (v36)
      {
        v37 = v36;
        [v36 setTintAdjustmentMode_];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (a3)
  {
    (a3)();
  }
}

void sub_2153952B8(void *a1, unint64_t a2, unint64_t a3, char *a4)
{
  if (a1)
  {
    v8 = a1;
    if (qword_27CA59890 != -1)
    {
      swift_once();
    }

    v9 = sub_21549F11C();
    __swift_project_value_buffer(v9, qword_27CA5B638);
    v10 = a1;
    v11 = a1;

    v12 = sub_21549F0FC();
    v13 = sub_2154A226C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = v16;
      *v14 = 136315394;
      v17 = sub_2153D3F3C(a3);
      v18 = [v17 localizedDescription];

      v19 = sub_2154A1D6C();
      v21 = v20;

      v22 = sub_215348D98(v19, v21, v49);

      *(v14 + 4) = v22;
      *(v14 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v24;
      *v15 = v24;
      _os_log_impl(&dword_2151A1000, v12, v13, "Received error for service %s: %@", v14, 0x16u);
      sub_215396E54(v15);
      MEMORY[0x21606B520](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x21606B520](v16, -1, -1);
      MEMORY[0x21606B520](v14, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = sub_215396EBC();
      v28 = swift_allocObject();
      *(v28 + 16) = a4;
      v51 = sub_2153970A4;
      v52 = v28;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 1107296256;
      v49[2] = sub_2151BD7E4;
      v50 = &block_descriptor_67_0;
      v29 = _Block_copy(v49);
      v30 = a4;

      [v26 presentViewController:v27 animated:1 completion:v29];

      _Block_release(v29);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27CA59890 != -1)
    {
      swift_once();
    }

    v31 = sub_21549F11C();
    __swift_project_value_buffer(v31, qword_27CA5B638);
    v32 = 0;

    v33 = sub_21549F0FC();
    v34 = sub_2154A224C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49[0] = v36;
      *v35 = 134218242;
      if (a2 >> 62)
      {
        v37 = sub_2154A2C8C();
      }

      else
      {
        v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 4) = v37;

      *(v35 + 12) = 2080;
      v38 = sub_2153D3F3C(a3);
      v39 = [v38 localizedDescription];

      v40 = sub_2154A1D6C();
      v42 = v41;

      v43 = sub_215348D98(v40, v42, v49);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_2151A1000, v33, v34, "Received %ld from service %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x21606B520](v36, -1, -1);
      MEMORY[0x21606B520](v35, -1, -1);
    }

    else
    {
    }

    v44 = &a4[OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems];
    swift_beginAccess();
    v45 = *v44;
    if (*v44)
    {

      v45(a2, a3);
      sub_2151AF750(v45);
    }

    v46 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
    swift_beginAccess();
    sub_215333D74(&a4[v46], v49);
    v47 = v50;
    v48 = v51;
    __swift_project_boxed_opaque_existential_0Tm(v49, v50);
    (*(v48 + 4))(v47, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }
}

uint64_t sub_215395834(uint64_t a1)
{
  v2 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
  swift_beginAccess();
  sub_215333D74(a1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0Tm(v6, v7);
  (*(v4 + 32))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v6);
}

void sub_2153958C4(void (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, v6 = [Strong presentedViewController], v5, !v6))
  {
LABEL_11:
    if (a1)
    {
      a1();
    }

    return;
  }

  type metadata accessor for SidecarInsertProgressViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    goto LABEL_11;
  }

  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_37;
    v8 = v7;
    a1 = _Block_copy(aBlock);

    v7 = v8;
  }

  [v7 dismissViewControllerAnimated:1 completion:a1];
  _Block_release(a1);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 view];

  if (v11)
  {
    [v11 setTintAdjustmentMode_];

LABEL_9:
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall SidecarInsertMenuController.cancel()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_2153958C4(sub_215396C5C, v1);
}

uint64_t sub_215395AD4(uint64_t a1)
{
  *(a1 + OBJC_IVAR___ICSidecarInsertMenuController_disableEnvironmentToken) = 0;

  v2 = OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider;
  swift_beginAccess();
  sub_215333D74(a1 + v2, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0Tm(v6, v7);
  (*(v4 + 32))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v6);
}

uint64_t sub_215395D0C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_215395D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for SidecarServiceMenuItem();
  v5 = sub_2154A1F4C();

  v4(v5, a3);
}

void sub_215395EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SidecarServiceMenuItem();
  v5 = sub_2154A1F3C();
  (*(a3 + 16))(a3, v5, a2);
}

uint64_t sub_215395F58(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_215395FBC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_215396D1C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_2151BD748(v4);
}

uint64_t sub_21539605C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_215396CE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

void sub_215396184(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  x = 0.0;
  if (!Strong)
  {
    goto LABEL_20;
  }

  v4 = Strong;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

LABEL_20:
    v47 = 1;
    y = 0.0;
    width = 0.0;
LABEL_22:
    height = 0.0;
    goto LABEL_23;
  }

  v6 = v5;
  if ([v5 isFirstResponder])
  {
    v7 = [v6 selectedTextRange];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 start];
      [v6 caretRectForPosition_];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [v8 end];
      [v6 caretRectForPosition_];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v67.origin.x = v11;
      v67.origin.y = v13;
      v67.size.width = v15;
      v67.size.height = v17;
      v71.origin.x = v20;
      v71.origin.y = v22;
      v71.size.width = v24;
      v71.size.height = v26;
      v68 = CGRectUnion(v67, v71);
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
      v30 = v4;
      [v6 contentInset];
      if (v31 > x)
      {
        x = v31;
      }

      [v6 contentInset];
      if (v32 > y)
      {
        y = v32;
      }

      v33 = v30;
      [v6 bounds];
      v34 = CGRectGetHeight(v69) - y;
      [v6 contentInset];
      if (height >= v34 - v35)
      {
        height = v34 - v35;
      }

      [v6 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v70.origin.x = v37;
      v70.origin.y = v39;
      v70.size.width = v41;
      v70.size.height = v43;
      v44 = CGRectGetWidth(v70) - x;
      [v6 contentInset];
      v46 = v45;

      v47 = 0;
      if (width >= v44 - v46)
      {
        width = v44 - v46;
      }

      goto LABEL_23;
    }
  }

  v48 = [v6 ic_visibleRange];
  v50 = v49;
  v51 = [v6 textStorage];
  v52 = [v51 length];

  v53 = v52 - 1;
  if (__OFSUB__(v52, 1))
  {
    __break(1u);
  }

  else
  {
    v54 = __OFSUB__(v53, v48);
    v55 = v53 < v48;
    v56 = v53 - v48;
    if (v55)
    {
LABEL_21:
      v62 = v4;
      [v6 bounds];
      v64 = v63;
      [v6 contentInset];
      y = v64 - v65;
      [v6 bounds];
      width = v66;

      v47 = 0;
      goto LABEL_22;
    }

    if (!v54)
    {
      if (v56 < v50)
      {
        v57 = [v6 endOfDocument];
        [v6 caretRectForPosition_];
        x = v58;
        y = v59;
        width = v60;
        height = v61;

        v47 = 0;
LABEL_23:
        *a1 = x;
        *(a1 + 8) = y;
        *(a1 + 16) = width;
        *(a1 + 24) = height;
        *(a1 + 32) = v47;
        return;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_215396518()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    sub_2153958C4(sub_215397108, v2);
  }

  return result;
}

uint64_t sub_2153965B8()
{
  v1 = v0;
  if (qword_27CA59890 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5B638);
  v3 = sub_21549F0FC();
  v4 = sub_2154A224C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2151A1000, v3, v4, "Sidecar devices did change notification", v5, 2u);
    MEMORY[0x21606B520](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange);
  result = swift_beginAccess();
  v8 = *v6;
  if (*v6)
  {

    v8(v9);
    return sub_2151AF750(v8);
  }

  return result;
}

uint64_t sub_2153967CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2151C6B0C(&v12, v10 + 40 * a1 + 32);
}

id sub_215396864(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v14[3] = type metadata accessor for SidecarProvider();
  v14[4] = &off_282754280;
  v14[0] = a1;
  *&a2[OBJC_IVAR___ICSidecarInsertMenuController_services] = &unk_28274D9E0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&a2[OBJC_IVAR___ICSidecarInsertMenuController_disableEnvironmentToken] = 0;
  v6 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems];
  *v7 = 0;
  *(v7 + 1) = 0;
  sub_215333D74(v14, &a2[OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider]);
  v13.receiver = a2;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 defaultCenter];
  [v11 addObserver:v10 selector:sel_sidecarDevicesDidChange_ name:*MEMORY[0x277D54FE0] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v10;
}

id sub_2153969D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  *&a2[OBJC_IVAR___ICSidecarInsertMenuController_services] = &unk_28274DA20;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_presentingSourceRect];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&a2[OBJC_IVAR___ICSidecarInsertMenuController_disableEnvironmentToken] = 0;
  v11 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_menuDidChange];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &a2[OBJC_IVAR___ICSidecarInsertMenuController_didReceiveItems];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_215333D74(v19, &a2[OBJC_IVAR___ICSidecarInsertMenuController_serviceProvider]);
  v18.receiver = a2;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 defaultCenter];
  [v16 addObserver:v15 selector:sel_sidecarDevicesDidChange_ name:*MEMORY[0x277D54FE0] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return v15;
}

id sub_215396B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return sub_2153969D4(v9, v11, a3, a4);
}

uint64_t sub_215396CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_215396D54(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_0Tm(v2, v4);
  return (*(v5 + 32))(v3, v4, v5) & 1;
}

void sub_215396E08(char a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  v4 = v2;
  sub_215394C40(a1, &v3);
}

uint64_t sub_215396E54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA59E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_215396EBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  v3 = sub_2154A1D2C();

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151B5B78;
  aBlock[3] = &block_descriptor_70;
  v4 = _Block_copy(aBlock);

  v5 = [objc_opt_self() actionWithTitle:v3 style:1 handler:v4];
  _Block_release(v4);

  swift_getErrorValue();
  sub_2154A306C();
  v6 = sub_2154A1D2C();

  v7 = [objc_opt_self() alertControllerWithTitle:v6 message:0 preferredStyle:1];

  [v7 addAction_];
  return v7;
}

uint64_t objectdestroy_43Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_215397120()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B690);
  __swift_project_value_buffer(v0, qword_27CA5B690);
  return sub_21549F09C();
}

id ICInlineDrawingUpgradeHelper.__allocating_init(note:managedObjectContext:textView:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingAttachmentIdentifierToPaperAttachment;
  v9 = MEMORY[0x277D84F90];
  *&v7[v8] = sub_2153284B4(MEMORY[0x277D84F90]);
  *&v7[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingUpgraders] = v9;
  *&v7[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore] = 0;
  *&v7[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_note] = a1;
  *&v7[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext] = a2;
  swift_unknownObjectWeakAssign();
  v14.receiver = v7;
  v14.super_class = v3;
  v10 = a1;
  v11 = a2;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

id ICInlineDrawingUpgradeHelper.init(note:managedObjectContext:textView:)(void *a1, void *a2, void *a3)
{
  v6 = sub_21539A6A0(a1, a2);

  return v6;
}

uint64_t ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsLocation:)(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &aBlock[-1] - v14;
  v16 = sub_2154A16AC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v28 = 0;
  v17 = *&v4[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext];
  sub_215324EEC(v15, v12, &qword_27CA5B6D8);
  v18 = (*(v10 + 80) + 57) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v4;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = 0;
  sub_21539A780(v12, v19 + v18);
  *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v28;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21539A7F0;
  *(v20 + 24) = v19;
  aBlock[4] = sub_2153252BC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2152F1C04;
  aBlock[3] = &block_descriptor_17;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  v23 = v4;

  [v17 performBlockAndWait_];
  _Block_release(v21);
  sub_2151ADCD8(v15, &qword_27CA5B6D8);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v25 = v28;

    return v25;
  }

  return result;
}

uint64_t ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsAnchor:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &aBlock[-1] - v13;
  type metadata accessor for ICSystemPaperDocumentHelper();
  sub_21544FCD4(a3, v14);
  v25 = 0;
  v23 = *&v4[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext];
  sub_215324EEC(v14, v11, &qword_27CA5B6D8);
  v15 = (*(v9 + 80) + 57) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v4;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 32) = a2;
  *(v16 + 56) = 1;
  sub_21539A780(v11, v16 + v15);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v25;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_21539ADEC;
  *(v17 + 24) = v16;
  aBlock[4] = sub_21539ADF0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2152F1C04;
  aBlock[3] = &block_descriptor_14;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = v4;

  [v23 performBlockAndWait_];
  _Block_release(v18);
  sub_2151ADCD8(v14, &qword_27CA5B6D8);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v22 = v25;

    return v22;
  }

  return result;
}

void sub_215397A8C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, NSObject *a7, void **a8)
{
  v16 = [a1 attachmentModel];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17 && (v18 = v17, (v19 = [a1 identifier]) != 0))
  {
    v52 = a4;
    v53 = a5;
    oslog = a7;
    v49 = a8;
    v20 = v19;
    v48 = sub_2154A1D6C();
    v51 = v21;

    v22 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore;
    if (!*(a2 + OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore))
    {
      v23 = dispatch_semaphore_create(0);
      v24 = *(a2 + v22);
      *(a2 + v22) = v23;
    }

    v25 = *(a2 + OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_note);
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for InlineDrawingUpgrader();
    v27 = swift_allocObject();
    *(v27 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v27 + 56) = 0;
    *(v27 + 24) = v25;
    *(v27 + 32) = a1;
    *(v27 + 16) = v18;
    swift_unknownObjectWeakAssign();
    v28 = v25;
    v50 = v16;
    v29 = a1;

    v30 = *(a2 + v22);
    v31 = v30;
    v32 = sub_215397EA0(a3, v52, v53, a6 & 1, oslog, v30);

    if (v32)
    {
      swift_beginAccess();
      v33 = v32;
      sub_21542184C(v32, v48, v51);
      swift_endAccess();
      v34 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingUpgraders;
      swift_beginAccess();

      MEMORY[0x216068AC0](v35);
      if (*((*(a2 + v34) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v34) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      swift_endAccess();

      v36 = *v49;
      *v49 = v32;

      return;
    }

    v47 = v50;
  }

  else
  {

    if (qword_27CA59898 != -1)
    {
      swift_once();
    }

    v37 = sub_21549F11C();
    __swift_project_value_buffer(v37, qword_27CA5B690);
    v38 = a1;
    osloga = sub_21549F0FC();
    v39 = sub_2154A226C();

    if (os_log_type_enabled(osloga, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56[0] = v41;
      *v40 = 136315138;
      v42 = [v38 loggingDescription];
      v43 = sub_2154A1D6C();
      v45 = v44;

      v46 = sub_215348D98(v43, v45, v56);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_2151A1000, osloga, v39, "Failed to prepare for upgrade {attachment: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x21606B520](v41, -1, -1);
      MEMORY[0x21606B520](v40, -1, -1);

      return;
    }

    v47 = osloga;
  }
}

id sub_215397EA0(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v137 = a6;
  v140 = a3;
  v141 = a5;
  v138 = a4;
  v139 = a2;
  v142 = *v6;
  v143 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v124 - v9;
  v11 = sub_21549E56C();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v136 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v124 - v15;
  MEMORY[0x28223BE20](v16);
  v145 = &v124 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v124 - v19;
  MEMORY[0x28223BE20](v21);
  v148 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v124 - v25;
  v27 = sub_21549E70C();
  v28 = *(v27 - 8);
  *&v29 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v7[2] mergeableDataForCopying];
  if (!v32)
  {
    if (qword_27CA59898 != -1)
    {
      swift_once();
    }

    v48 = sub_21549F11C();
    __swift_project_value_buffer(v48, qword_27CA5B690);

    v39 = sub_21549F0FC();
    v49 = sub_2154A226C();

    if (os_log_type_enabled(v39, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v151[0] = v51;
      *v50 = 136315138;
      v52 = [v7[4] loggingDescription];
      v53 = sub_2154A1D6C();
      v55 = v54;

      v56 = sub_215348D98(v53, v55, v151);

      *(v50 + 4) = v56;
      _os_log_impl(&dword_2151A1000, v39, v49, "No drawing data to upgrade {attachment: %s}", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x21606B520](v51, -1, -1);
      MEMORY[0x21606B520](v50, -1, -1);
    }

    goto LABEL_12;
  }

  v135 = v26;
  v133 = v24;
  v134 = v23;
  v33 = v32;
  v34 = sub_21549E59C();
  v36 = v35;

  sub_2154A177C();
  sub_215324200(v34, v36);
  v149 = v34;
  v150 = v36;
  v37 = sub_2154A175C();
  v58 = v37;
  if (!v37)
  {
    if (qword_27CA59898 != -1)
    {
      swift_once();
    }

    v38 = sub_21549F11C();
    __swift_project_value_buffer(v38, qword_27CA5B690);

    v39 = sub_21549F0FC();
    v40 = sub_2154A226C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v151[0] = v42;
      *v41 = 136315138;
      v43 = [v7[4] loggingDescription];
      v44 = sub_2154A1D6C();
      v46 = v45;

      v47 = sub_215348D98(v44, v46, v151);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_2151A1000, v39, v40, "Failed to create encryption CRContext {attachment: %s}", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x21606B520](v42, -1, -1);
      MEMORY[0x21606B520](v41, -1, -1);
    }

    sub_215324170(v149, v150);
LABEL_12:

    return 0;
  }

  v128 = v10;
  sub_21549E6FC();
  v59 = sub_21549E6BC();
  v61 = v60;
  (*(v28 + 8))(v31, v27);
  v62 = v7[3];
  v127 = v59;
  v129 = v61;
  v63 = sub_2154A1D2C();
  v126 = v62;
  v64 = [v62 addSystemPaperAttachmentWithIdentifier_];

  v132 = v64;
  v65 = [v64 attachmentModel];
  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {
  }

  v67 = v58;
  v68 = v135;
  v130 = v67;
  sub_2154A1BCC();
  v69 = v7[5];
  v70 = v132;
  v7[5] = v132;
  v131 = v70;

  v71 = v128;
  if (!v66)
  {
    goto LABEL_23;
  }

  v125 = v66;
  v72 = [v66 paperBundleURL];
  sub_21549E51C();

  v73 = v147;
  v74 = v148;
  v75 = *(v147 + 32);
  v76 = v20;
  v77 = v146;
  v75(v148, v76, v146);
  v78 = [v131 paperCoherenceContextURL];
  if (!v78)
  {
    (*(v73 + 8))(v74, v77);
    v66 = v125;
LABEL_23:
    if (qword_27CA59898 != -1)
    {
      swift_once();
    }

    v87 = sub_21549F11C();
    __swift_project_value_buffer(v87, qword_27CA5B690);

    v88 = v129;

    v89 = sub_21549F0FC();
    v90 = sub_2154A226C();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v151[0] = v92;
      *v91 = 136315394;
      v93 = sub_215348D98(v127, v88, v151);

      *(v91 + 4) = v93;
      *(v91 + 12) = 2080;
      v94 = [v7[4] loggingDescription];
      v95 = sub_2154A1D6C();
      v97 = v96;

      v98 = sub_215348D98(v95, v97, v151);

      *(v91 + 14) = v98;
      _os_log_impl(&dword_2151A1000, v89, v90, "Failed to upgrade paper (%%@) because a bundle URL could not be found {identifier: %s, attachment: %s}", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21606B520](v92, -1, -1);
      MEMORY[0x21606B520](v91, -1, -1);

      sub_215324170(v149, v150);
    }

    else
    {

      sub_215324170(v149, v150);
    }

    goto LABEL_38;
  }

  v79 = v144;
  v80 = v78;
  sub_21549E51C();

  v144 = v75;
  v75(v145, v79, v77);
  if ([v126 isPasswordProtected])
  {
    v82 = sub_21539AC10(&qword_27CA5B6E0, v81, type metadata accessor for InlineDrawingUpgrader);

    v83 = v7;
    v84 = v142;
  }

  else
  {
    v84 = 0;
    v82 = 0;
    v83 = 0;
    v151[1] = 0;
    v151[2] = 0;
  }

  v151[3] = v84;
  v151[4] = v82;
  v151[0] = v83;
  sub_2154A1C0C();
  (*(v73 + 56))(v71, 1, 1, v77);
  v85 = sub_2154A1BFC();
  v86 = v148;
  v68 = v135;
  v142 = v85;
  sub_2151ADCD8(v71, &unk_27CA5B090);
  sub_2151ADCD8(v151, &qword_27CA5A3E8);
  if (qword_27CA59898 != -1)
  {
    swift_once();
  }

  v99 = sub_21549F11C();
  __swift_project_value_buffer(v99, qword_27CA5B690);

  v100 = v129;

  v101 = sub_21549F0FC();
  v102 = sub_2154A224C();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v151[0] = v128;
    *v103 = 136315394;
    v104 = sub_215348D98(v127, v100, v151);

    *(v103 + 4) = v104;
    *(v103 + 12) = 2080;
    v105 = [v7[4] loggingDescription];
    v106 = sub_2154A1D6C();
    v108 = v107;

    v109 = v106;
    v68 = v135;
    v110 = sub_215348D98(v109, v108, v151);
    v77 = v146;

    *(v103 + 14) = v110;
    v86 = v148;
    _os_log_impl(&dword_2151A1000, v101, v102, "Writing upgraded paper {identifier: %s, attachment: %s}", v103, 0x16u);
    v111 = v128;
    swift_arrayDestroy();
    MEMORY[0x21606B520](v111, -1, -1);
    MEMORY[0x21606B520](v103, -1, -1);
  }

  else
  {
  }

  v112 = v142;
  sub_2154A1BAC();
  if (v143 >> 62)
  {
    if (sub_2154A2C8C())
    {
      goto LABEL_35;
    }

LABEL_37:

    sub_215324170(v149, v150);
    v123 = *(v147 + 8);
    v123(v145, v77);
    v123(v86, v77);
    goto LABEL_38;
  }

  if (!*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_35:
  v146 = sub_2154A1BDC();
  v113 = v147;
  v114 = v136;
  (*(v147 + 16))(v136, v86, v77);
  v115 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v116 = (v13 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = v112;
  v118 = swift_allocObject();
  v119 = v137;
  *(v118 + 16) = v7;
  *(v118 + 24) = v119;
  (v144)(v118 + v115, v114, v77);
  *(v118 + v116) = v117;

  v120 = v119;
  v121 = v117;
  sub_2154A1B9C();

  sub_215324170(v149, v150);
  v122 = *(v147 + 8);
  v122(v145, v77);
  v122(v148, v77);
LABEL_38:
  (*(v133 + 8))(v68, v134);
  return v132;
}

Swift::Void __swiftcall ICInlineDrawingUpgradeHelper.cancelUpgrade()()
{
  v1 = *&v0[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21539A9D8;
  *(v3 + 24) = v2;
  v8[4] = sub_21539ADF0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2152F1C04;
  v8[3] = &block_descriptor_24;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v5[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore];
    if (v6)
    {
      v7 = v6;
      sub_2154A255C();
    }

    else
    {
    }
  }
}

void sub_215398F34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingAttachmentIdentifierToPaperAttachment;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v1 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
      sub_2151A6C9C(0, &qword_281199690);
      [swift_getObjCClassFromMetadata() deleteAttachment_];
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  *(a1 + v3) = MEMORY[0x277D84F98];

  v1 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingUpgraders;
  swift_beginAccess();
  v4 = *(a1 + v1);
  if (!(v4 >> 62))
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

LABEL_26:
  v12 = sub_2154A2C8C();
LABEL_13:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x216069960](v13, v4);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      *(v14 + 56) = 1;

      ++v13;
    }

    while (v15 != v12);
  }

  *(a1 + v1) = MEMORY[0x277D84F90];

  v16 = [*(a1 + OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_note) managedObjectContext];
  [v16 ic_save];
}

Swift::Void __swiftcall ICInlineDrawingUpgradeHelper.upgradeAllAttachmentsInNote()()
{
  v1 = *&v0[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21539A9E0;
  *(v3 + 24) = v2;
  v8[4] = sub_21539ADF0;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2152F1C04;
  v8[3] = &block_descriptor_34_0;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v5[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore];
    if (v6)
    {
      v7 = v6;
      sub_2154A255C();
    }

    else
    {
    }
  }
}

void sub_21539935C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_note];
  v3 = [v2 textStorage];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  *(v5 + 16) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *&a1[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v5;
  v9[4] = v7;
  aBlock[4] = sub_21539AA5C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2153998FC;
  aBlock[3] = &block_descriptor_49;
  v10 = _Block_copy(aBlock);
  v11 = a1;

  [v4 ic:v8 enumerateAttachmentsInContext:v10 usingBlock:?];
  _Block_release(v10);
  swift_beginAccess();
  if (!*(*(v7 + 16) + 16))
  {
LABEL_9:
    v18 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingAttachmentIdentifierToPaperAttachment;
    swift_beginAccess();
    *&v11[v18] = MEMORY[0x277D84F98];

    v19 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingUpgraders;
    swift_beginAccess();
    *&v11[v19] = v6;

    v20 = [v2 managedObjectContext];
    [v20 ic_save];

    return;
  }

  [v4 beginEditing];
  v12 = *(v7 + 16);
  v13 = *(v12 + 16);
  if (!v13)
  {
LABEL_8:
    [v4 endEditing];
    goto LABEL_9;
  }

  v14 = (v12 + 24 * v13 + 24);
  while (v13 <= *(v12 + 16))
  {
    --v13;
    v15 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v14 -= 3;
    [v4 replaceCharactersInRange:v15 withAttributedString:{v16, v17}];
    if (!v13)
    {

      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_215399614(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ([a1 attachmentType] == 10)
  {
    v13 = [a1 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2154A1D6C();
      v17 = v16;

      v18 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingAttachmentIdentifierToPaperAttachment;
      swift_beginAccess();
      v19 = *(a5 + v18);
      if (*(v19 + 16) && (v20 = sub_2153B0D68(v15, v17), (v21 & 1) != 0))
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        swift_endAccess();
        v23 = v22;
      }

      else
      {
        v36 = a2;
        v24 = a3;
        swift_endAccess();
        v25 = ICInlineDrawingUpgradeHelper.upgrade(attachment:itemProviders:itemsLocation:)(a1, MEMORY[0x277D84F90], 0.0, 0.0);
        if (!v25)
        {

          return;
        }

        v26 = v25;
        swift_beginAccess();
        v23 = v26;
        sub_21542184C(v26, v15, v17);
        swift_endAccess();
        a3 = v24;
        a2 = v36;
      }

      v27 = [objc_allocWithZone(MEMORY[0x277D368E8]) initWithAttachment_];
      v28 = [objc_opt_self() attributedStringWithAttachment_];
      swift_beginAccess();
      v29 = v23;
      MEMORY[0x216068AC0]();
      if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      swift_endAccess();
      swift_beginAccess();
      v30 = *(a7 + 16);
      v31 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a7 + 16) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_2153182AC(0, *(v30 + 2) + 1, 1, v30);
        *(a7 + 16) = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_2153182AC((v33 > 1), v34 + 1, 1, v30);
      }

      *(v30 + 2) = v34 + 1;
      v35 = &v30[24 * v34];
      *(v35 + 4) = a2;
      *(v35 + 5) = a3;
      *(v35 + 6) = v31;
      *(a7 + 16) = v30;
      swift_endAccess();
    }
  }
}

void sub_2153998FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id ICInlineDrawingUpgradeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICInlineDrawingUpgradeHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215399B28(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v43 = a2;
  v44 = a5;
  v41 = a3;
  v42 = a4;
  v51 = a1;
  v5 = sub_2154A10EC();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2154A110C();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v22 = v21;
  v24 = v23;
  sub_215324EEC(v51, v14, &qword_27CA5A7D8);
  if ((*(v22 + 48))(v14, 1, v24) == 1)
  {
    return sub_2151ADCD8(v14, &qword_27CA5A7D8);
  }

  v40 = v22;
  v39 = *(v22 + 32);
  v39(v20, v14, v24);
  if (v41)
  {
    sub_2154A254C();
  }

  sub_2151A6C9C(0, &unk_2811995C0);
  v51 = sub_2154A245C();
  (*(v9 + 16))(&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v8);
  v26 = v40;
  (*(v40 + 16))(v17, v20, v24);
  v27 = *(v9 + 80);
  v41 = v24;
  v28 = (v27 + 24) & ~v27;
  v29 = (v10 + *(v26 + 80) + v28) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v42 = v20;
  *(v30 + 16) = v43;
  (*(v9 + 32))(v30 + v28, v11, v8);
  v31 = v41;
  v39((v30 + v29), v17, v41);
  v32 = v44;
  *(v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v44;
  aBlock[4] = sub_21539AB08;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_58_0;
  v33 = _Block_copy(aBlock);

  v34 = v32;

  v35 = v45;
  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21539AC10(&qword_281199700, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  v36 = v47;
  v37 = v50;
  sub_2154A2BEC();
  v38 = v51;
  MEMORY[0x216069000](0, v35, v36, v33);
  _Block_release(v33);

  (*(v49 + 8))(v36, v37);
  (*(v46 + 8))(v35, v48);
  return (*(v40 + 8))(v42, v31);
}

void sub_21539A100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v28[1] = a4;
    v28[3] = a3;
    v14 = [Strong textStorage];
    v30 = [v14 length];

    v33 = 0;
    v32 = sub_21549E0EC();
    v15 = [v13 textStorage];
    v29 = *MEMORY[0x277D74060];
    v16 = *(v9 + 16);
    v28[2] = a2;
    v16(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v9 + 32))(v19 + v17, v11, v8);
    *(v19 + v18) = &v33;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v32;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21539AC58;
    *(v20 + 24) = v19;
    aBlock[4] = sub_21532B77C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21532C43C;
    aBlock[3] = &block_descriptor_67_1;
    v21 = _Block_copy(aBlock);

    [v15 enumerateAttribute:v29 inRange:0 options:v30 usingBlock:{0, v21}];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v23 = v33;
      if (v33)
      {

        sub_2154A215C();
      }

      else
      {

        if ((*(a1 + 56) & 1) == 0)
        {
          v26 = objc_opt_self();
          v27 = sub_21549E49C();

          sub_2154A1BAC();
        }
      }
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    v24 = objc_opt_self();
    v25 = sub_21549E49C();

    sub_2154A1BAC();
  }
}

uint64_t sub_21539A4C0()
{
  MEMORY[0x21606B640](v0 + 6);

  return swift_deallocClassInstance();
}

uint64_t sub_21539A518()
{
  v1 = *(*v0 + 40);
  if (v1)
  {
    v2 = *(*v0 + 40);
  }

  else
  {
    v2 = *(*v0 + 32);
    v1 = 0;
  }

  v3 = v1;
  v4 = sub_21549EBFC();

  return v4;
}

uint64_t sub_21539A590()
{
  v1 = *(*v0 + 40);
  if (v1)
  {
    v2 = *(*v0 + 40);
  }

  else
  {
    v2 = *(*v0 + 32);
    v1 = 0;
  }

  v3 = v1;
  v4 = sub_21549EBDC();

  return v4;
}

void sub_21539A620()
{
  v1 = *(*v0 + 40);
  if (v1)
  {
    v3 = *(*v0 + 40);
  }

  else
  {
    v3 = *(*v0 + 32);
    v1 = 0;
  }

  v2 = v1;
  sub_21549EBEC();
}

id sub_21539A6A0(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingAttachmentIdentifierToPaperAttachment;
  v7 = MEMORY[0x277D84F90];
  *&v2[v6] = sub_2153284B4(MEMORY[0x277D84F90]);
  *&v2[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_drawingUpgraders] = v7;
  *&v2[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_upgradeSemaphore] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_note] = a1;
  *&v2[OBJC_IVAR____TtC11NotesEditor28ICInlineDrawingUpgradeHelper_managedObjectContext] = a2;
  swift_unknownObjectWeakAssign();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v8 = a1;
  v9 = a2;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21539A780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 57) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_2154A16AC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_21539A930()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8) - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_215397A8C(v3, v4, v5, v6, v7, v8, (v0 + v2), v9);
}

uint64_t sub_21539AA68(uint64_t a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_215399B28(a1, v6, v7, (v1 + v4), v5);
}

void sub_21539AB08()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21539A100(v6, v0 + v2, v0 + v5, v7);
}

uint64_t sub_21539AC10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_21539AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_21549E56C() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v11);
  v13 = *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_21537A5FC(a1, a2, a3, a4, v4 + v10, v12, v13);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21539AD3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21539AD84(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t ICAttributionViewConfiguration.id.getter()
{
  v1 = v0;
  sub_2154A313C();
  v2 = [v0 textEdit];
  if (v2)
  {
    v3 = v2;
    sub_2154A30FC();
    v4 = v3;
    sub_2154A292C();
  }

  else
  {
    sub_2154A30FC();
  }

  v5 = [v1 editGroups];
  sub_21539AEE8();
  v6 = sub_2154A1F4C();

  sub_21539B244(v8, v6);

  return sub_2154A311C();
}

unint64_t sub_21539AEE8()
{
  result = qword_2811995F8;
  if (!qword_2811995F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811995F8);
  }

  return result;
}

uint64_t sub_21539AF9C(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = sub_2154A089C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v16 = MEMORY[0x277CE0BD8];
  v12 = swift_allocObject();
  *&v15 = v12;
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v9 & 1;
  *(v12 + 40) = v11;
  sub_21531E8D0(&v15, &v17);
  __swift_project_boxed_opaque_existential_0Tm(&v17, v18);
  v13 = sub_2154A2F8C();
  __swift_destroy_boxed_opaque_existential_0Tm(&v17);
  [v2 *a2];
  return swift_unknownObjectRelease();
}

uint64_t sub_21539B13C(SEL *a1)
{
  v2 = [v1 *a1];
  sub_2154A2BCC();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_21539B1E8(SEL *a1)
{
  result = [v1 *a1];
  if (result)
  {
    return sub_2154A0D6C();
  }

  return result;
}

uint64_t sub_21539B218@<X0>(uint64_t *a1@<X8>)
{
  result = ICAttributionViewConfiguration.id.getter();
  *a1 = result;
  return result;
}

void sub_21539B244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_2154A2C8C();
    MEMORY[0x216069C80](v8);
    v3 = sub_2154A2C8C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x216069C80](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x216069960](i, a2);
      sub_2154A292C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_2154A292C();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_21539B334()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5B6E8);
  __swift_project_value_buffer(v0, qword_27CA5B6E8);
  return sub_21549F0BC();
}

uint64_t static ICAudioRecordingViewController.getHostingView(forAttachmentModel:delegate:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  sub_21539B46C(a1, a2, &v13 - v8);
  sub_21539B7B8(v9, v6);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B700));
  v11 = sub_2154A02AC();
  sub_21539B81C(v9);
  return v11;
}

id sub_21539B46C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a3;
  v24[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_21549E6AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  sub_21549ECCC();
  swift_allocObject();
  v14 = a1;
  v15 = sub_21549EC4C();
  type metadata accessor for SummaryViewModel();
  swift_allocObject();
  v16 = v14;

  v17 = sub_21535EFE4(v16);

  type metadata accessor for RecordingViewModel();
  swift_allocObject();
  v18 = v16;

  v19 = sub_215466468(v18, v15, v17);

  result = [v18 attachment];
  if (result)
  {
    v21 = result;
    v22 = [result creationDate];

    if (v22)
    {
      sub_21549E66C();

      v23 = *(v8 + 32);
      v23(v6, v10, v7);
      (*(v8 + 56))(v6, 0, 1, v7);
      v23(v13, v6, v7);
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
      sub_21549E67C();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21539BEC0(v6);
      }
    }

    swift_unknownObjectRetain();
    sub_2153F2928(v19, v13, v24[0]);

    type metadata accessor for RecordingView();
    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21539B7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21539B81C(uint64_t a1)
{
  v2 = type metadata accessor for RecordingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

ICAudioRecordingViewController __swiftcall ICAudioRecordingViewController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _sSo30ICAudioRecordingViewControllerC11NotesEditorE15audioAttachment6insideSo12ICAttachmentCSgSo06UIViewD0C_tFZ_0(void *a1)
{
  v2 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B700);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v5 = a1;
  sub_2154A02CC();
  v6 = *v4;

  sub_21539B81C(v4);
  result = [*(v6 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (result)
  {
    v8 = result;

    return v8;
  }

  __break(1u);
  return result;
}

void _sSo30ICAudioRecordingViewControllerC11NotesEditorE09containerC9DidResizeyySo06UIViewD0CFZ_0(void *a1)
{
  v2 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B700);
  if (swift_dynamicCastClass())
  {
    v5 = a1;
    sub_2154A02CC();
    v6 = sub_21549EE6C();
    if (!v6)
    {
LABEL_5:

      sub_21539B81C(v4);
      return;
    }

    v7 = v6;
    v8 = [v6 view];
    if (v8)
    {
      v9 = v8;

      type metadata accessor for TranscriptView();
      swift_dynamicCastClassUnconditional();
      sub_21546E5AC();

      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    if (qword_27CA598A0 != -1)
    {
      swift_once();
    }

    v10 = sub_21549F11C();
    __swift_project_value_buffer(v10, qword_27CA5B6E8);
    v15 = sub_21549F0FC();
    v11 = sub_2154A226C();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2151A1000, v15, v11, "presentedViewController isn't a ICHostingController<RecordingView>.", v12, 2u);
      MEMORY[0x21606B520](v12, -1, -1);
    }

    v13 = v15;
  }
}

unint64_t type metadata accessor for ICAudioRecordingViewController()
{
  result = qword_27CA5B708;
  if (!qword_27CA5B708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA5B708);
  }

  return result;
}

uint64_t sub_21539BEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LinkEditorController.lastSelectedRangeForAccelerator.getter()
{
  swift_beginAccess();

  sub_21549F65C();

  sub_2154A1E0C();

  return 0;
}

Swift::Void __swiftcall LinkEditorController.acceleratorOriginNeedsUpdate()()
{
  swift_beginAccess();

  v1 = sub_21549F65C();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (, v5 = sub_21549F54C(), , (v5 & 1) == 0))
  {
    v9 = *(v0 + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    LinkAcceleratorController.hideAccelerator()();
    goto LABEL_10;
  }

  sub_21549F59C();

  if ((v10 & 1) == 0)
  {
    v6 = *(v0 + OBJC_IVAR___LinkEditorController_linkAcceleratorController);
    if (v6)
    {
      v7 = *((*MEMORY[0x277D85000] & **&v6[OBJC_IVAR___ICLinkAcceleratorController_viewController]) + 0xF0);
      v8 = v6;
      v7();
LABEL_10:
    }
  }
}

uint64_t LinkEditorController.languageHasSpaces.getter()
{
  v1 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [v2 languageHasSpaces];
  }

  else
  {
    return 1;
  }
}

id LinkEditorController.writingDirection.getter()
{
  v1 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    return [result writingDirection];
  }

  return result;
}

void *LinkEditorController.acceleratorHostingViewController.getter()
{
  v1 = *(v0 + OBJC_IVAR___LinkEditorController_viewController);
  v2 = v1;
  return v1;
}

uint64_t LinkEditorController.acceleratorHostingView.getter()
{
  v1 = type metadata accessor for LinkEditorView();
  MEMORY[0x28223BE20](v1);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR___LinkEditorController_viewController);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_2154A02CC();
  v6 = &v3[*(v1 + 44)];
  v8 = *v6;
  v7 = *(v6 + 1);
  v11[2] = v8;
  v11[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
  sub_2154A0DEC();

  v9 = v11[1];
  sub_21534EBF0(v3);
  return v9;
}

uint64_t LinkEditorController.searchString.getter()
{
  swift_beginAccess();

  sub_21549F65C();

  v0 = sub_21536BD88();

  return v0;
}

Swift::Void __swiftcall LinkEditorController.didSelectNoteSuggestion(withIdentifier:title:)(Swift::String withIdentifier, Swift::String title)
{
  objc_allocWithZone(sub_21549F4DC());

  v2 = sub_21549F4AC();
  swift_beginAccess();

  v3 = v2;
  sub_21549F5CC();

  sub_21549F63C();

  sub_21549F58C();
}

uint64_t getEnumTagSinglePayload for ICRecordButtonModel(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICRecordButtonModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *sub_21539C994@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21539CA04()
{
  result = qword_27CA5B710;
  if (!qword_27CA5B710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5B718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B710);
  }

  return result;
}

unint64_t sub_21539CA6C()
{
  result = qword_27CA5B720;
  if (!qword_27CA5B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B720);
  }

  return result;
}

uint64_t sub_21539CAC0(int a1, __int16 a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21539CB34(a1, a2 & 0x1FF);
  }

  return result;
}

uint64_t sub_21539CB34(int a1, int a2)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_21549E28C();
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v2 + 16);
  if (((a2 != 0) ^ *(v7 + 16)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v40[-16] = v7;
    v40[-8] = a2 != 0;
    v45 = v7;
    sub_21539DCAC();

    sub_21549ED8C();
  }

  else
  {
    *(v7 + 16) = a2 != 0;
  }

  v9 = *(v2 + 16);
  v10 = *(v2 + 57);
  if (v10 == *(v9 + 17))
  {
    *(v9 + 17) = v10;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    *&v40[-16] = v9;
    v40[-8] = v10;
    v45 = v9;
    sub_21539DCAC();

    sub_21549ED8C();
  }

  v12 = *(v3 + 16);
  if (a2)
  {
    if (a2 != 1)
    {
      v14 = (v12 + 18);
      v13 = 3;
      if (*(v12 + 18) == 3)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v13 = 2;
  }

  else
  {
    v13 = a2;
  }

  v14 = (v12 + 18);
  if (*(v12 + 18) == v13)
  {
LABEL_12:
    *v14 = v13;
    goto LABEL_15;
  }

LABEL_14:
  v15 = swift_getKeyPath();
  MEMORY[0x28223BE20](v15);
  *&v40[-16] = v12;
  v40[-8] = v13;
  v45 = v12;
  sub_21539DCAC();

  sub_21549ED8C();

LABEL_15:
  if (a2 >= 2u)
  {

    v18 = 0;
  }

  else
  {

    sub_21549F33C();

    v16 = BYTE1(v45);
    v17 = [objc_opt_self() systemRedColor];
    v18 = sub_2154A0C8C();
    if ((v16 & 1) == 0)
    {
      v19 = sub_2154A0D3C();

      v18 = v19;
    }
  }

  sub_2153A30F0(v18);

  v20 = sub_21539D208(a2);
  sub_2153A33D4(v20);

  v21 = *(v3 + 16);
  v22 = *(v3 + 40);
  v23 = swift_getKeyPath();
  MEMORY[0x28223BE20](v23);
  *&v40[-16] = v21;
  *&v40[-8] = v22;
  v45 = v21;
  v24 = sub_21539DCAC();

  v42 = v24;
  sub_21549ED8C();

  if (*(v3 + 56) == 1)
  {
    swift_beginAccess();
    v25 = *(v3 + 48);
    if (*(v25 + 16) && (v26 = sub_2153B1190(a2), (v27 & 1) != 0))
    {
      v28 = 0;
      v29 = *(*(v25 + 56) + 8 * v26);
    }

    else
    {
      v29 = 0;
      v28 = 1;
    }

    sub_2153A38E8(v29, v28);
  }

  v41 = (a2 & 0x100) == 0;
  v30 = *(v3 + 16);
  v31 = sub_21539D2C0(v43, a2);
  v32 = v31;
  v33 = v31 > 0xFFu;
  v34 = swift_getKeyPath();
  MEMORY[0x28223BE20](v34);
  *&v40[-16] = v30;
  v40[-8] = v32 & 1;
  v40[-7] = v33;
  v46 = v30;

  sub_21549ED8C();

  v35 = v44;
  sub_21539D3BC(a2, v44);
  sub_2153A3F28(v35);
  v36 = v41;

  v38 = *(v3 + 16);
  if (v36 == *(v38 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled))
  {
    *(v38 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled) = v36;
  }

  else
  {
    v39 = swift_getKeyPath();
    MEMORY[0x28223BE20](v39);
    *&v40[-16] = v38;
    v40[-8] = v36;
    v46 = v38;

    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_21539D208(char a1)
{
  if ((a1 & 0xFE) == 0)
  {
    return 0;
  }

  sub_21549F33C();

  v1 = [objc_opt_self() systemRedColor];
  sub_2154A0C8C();
  v2 = sub_2154A0D3C();

  return v2;
}

uint64_t sub_21539D2C0(__int16 a1, unsigned __int8 a2)
{
  if ((a1 & 0xFF00) == 0x200)
  {
LABEL_10:
    LODWORD(v11) = 0;
    return v11 | ((a2 == 0) << 8);
  }

  v4 = a1;
  swift_beginAccess();
  v5 = *(v2 + 48);
  if (*(v5 + 16))
  {
    v6 = sub_2153B1190(v4);
    if (v7)
    {
      v8 = 0;
      v9 = *(*(v5 + 56) + 8 * v6);
    }

    else
    {
      v9 = 0;
      v8 = 1;
    }
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  v10 = *(v2 + 48);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_2153B1190(a2);
    if ((v13 & 1) != 0 && !((v4 != 0) ^ (a2 == 0) | v8 & 1))
    {
      LODWORD(v11) = v9 != *(*(v10 + 56) + 8 * v12);
      return v11 | ((a2 == 0) << 8);
    }

    goto LABEL_10;
  }

  return v11 | ((a2 == 0) << 8);
}

uint64_t sub_21539D3BC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = sub_21549E30C();
  MEMORY[0x28223BE20](v2 - 8);
  v25 = sub_21549E28C();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  sub_21549E2CC();

  sub_21549E2FC();
  v23 = v8;
  sub_21549E29C();
  v11 = [v9 mainBundle];
  sub_21549E2CC();

  sub_21549E2FC();
  sub_21549E29C();
  if (!v24)
  {
    v17 = [objc_opt_self() preferredLanguages];
    v18 = sub_2154A1F4C();

    if (*(v18 + 16))
    {

      v19 = sub_2154A1EBC();

      v20 = v25;
      if (v19)
      {
        v27 = xmmword_2154C0840;
        sub_21539DC38();
        v21 = v23;
        sub_21549E2AC();
        (*(v3 + 8))(v5, v20);
        return (*(v3 + 32))(v26, v21, v20);
      }
    }

    else
    {

      v20 = v25;
    }

    (*(v3 + 8))(v5, v20);
    v21 = v23;
    return (*(v3 + 32))(v26, v21, v20);
  }

  if (v24 == 1)
  {
    v12 = [v9 mainBundle];
    sub_21549E2CC();

    sub_21549E2FC();
    sub_21549E29C();
    v13 = *(v3 + 8);
    v14 = v5;
    v15 = v25;
    v13(v14, v25);
    return (v13)(v23, v15);
  }

  else
  {
    v22 = v25;
    (*(v3 + 8))(v23, v25);
    return (*(v3 + 32))(v26, v5, v22);
  }
}

uint64_t sub_21539D840()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    if (byte_28274DA60[v2 + 32] != 2)
    {
      goto LABEL_4;
    }

    sub_2154A01BC();
    v4 = sub_2154A090C();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = sub_2154A083C();
    v12 = sub_2154A0CFC();
    v34 = v8;
    sub_21539227C(v4, v6, v8 & 1);

    v33 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2153183CC(0, *(v3 + 2) + 1, 1, v3);
    }

    v14 = *(v3 + 2);
    v13 = *(v3 + 3);
    if (v14 >= v13 >> 1)
    {
      v3 = sub_2153183CC((v13 > 1), v14 + 1, 1, v3);
    }

    *(v3 + 2) = v14 + 1;
    v32 = v3;
    v15 = &v3[48 * v14];
    *(v15 + 4) = v4;
    *(v15 + 5) = v6;
    v15[48] = v8 & 1;
    *(v15 + 7) = v10;
    *(v15 + 8) = v11;
    *(v15 + 9) = v33;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v1 + 48);
    v18 = v1;
    *(v1 + 48) = 0x8000000000000000;
    v20 = sub_2153B1190(2u);
    v21 = v17[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v17;
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_2153DCE30();
        v27 = v17;
        if ((v24 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_2153DAAF8(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_2153B1190(2u);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

      v20 = v25;
      v27 = v17;
      if ((v24 & 1) == 0)
      {
LABEL_17:
        v27[(v20 >> 6) + 8] |= 1 << v20;
        *(v27[6] + v20) = 2;
        *(v27[7] + 8 * v20) = v14;
        v28 = v27[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_23;
        }

        v27[2] = v30;
        goto LABEL_3;
      }
    }

    *(v27[7] + 8 * v20) = v14;
LABEL_3:
    v1 = v18;
    *(v18 + 48) = v27;
    swift_endAccess();
    sub_215354880(v4, v6, v34 & 1);

    v3 = v32;
LABEL_4:
    if (++v2 == 3)
    {
      *(v1 + 40) = v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2154A300C();
  __break(1u);
  return result;
}

uint64_t sub_21539DB54()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21539DBE4()
{
  result = qword_27CA5B728;
  if (!qword_27CA5B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B728);
  }

  return result;
}

unint64_t sub_21539DC38()
{
  result = qword_27CA5B730;
  if (!qword_27CA5B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B730);
  }

  return result;
}

unint64_t sub_21539DCAC()
{
  result = qword_27CA5B738;
  if (!qword_27CA5B738)
  {
    type metadata accessor for ICRecordButtonViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B738);
  }

  return result;
}

uint64_t sub_21539DD60()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_2153A3C58(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_21539DDB4@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, int *a3@<X8>)
{
  v3 = *(result + 3);
  if (v3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | *(result + 2);
  if (v3 == 2)
  {
    v5 = 512;
  }

  v6 = v5 | (*a2 << 16);
  if (a2[1])
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v6 | v7;
  return result;
}

unsigned __int16 *sub_21539DDFC@<X0>(unsigned __int16 *result@<X0>, int *a2@<X8>)
{
  v2 = *(result + 3);
  if (v2)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *result | (*(result + 2) << 16);
  if (v2 == 2)
  {
    v4 = 0x2000000;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_21539DE30(void *a1)
{
  v2 = v1;
  v26 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B740);
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v26 - v3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B748);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B750);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_21549E28C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
  {
    v14 = sub_21532B158(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  *(v2 + 32) = v14;
  v29 = v2 + 32;
  *(v2 + 40) = v13;
  *(v2 + 48) = sub_2153285C4(v13);
  *(v2 + 56) = 0;
  sub_21549E27C();
  type metadata accessor for ICRecordButtonViewModel();
  v15 = swift_allocObject();
  *(v15 + 18) = 3;
  *(v15 + 48) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 56) = 1;
  sub_21549EDCC();
  *(v15 + 16) = 0;
  *(v15 + 18) = 3;

  *(v15 + 24) = 0;

  *(v15 + 32) = 0;
  *(v15 + 40) = v13;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 57) = 0;
  (*(v10 + 32))(v15 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel, v12, v9);
  *(v15 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled) = 0;
  v16 = v26;
  *(v2 + 16) = v15;
  *(v2 + 24) = v16;
  v17 = v16;
  sub_21539D840();
  v35 = *&v17[OBJC_IVAR____TtC11NotesEditor24ICRecordButtonRepository_modelSubject];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B758);
  sub_2151ACC5C(&qword_27CA5B760, &qword_27CA5B758);
  sub_21539E4B0();
  sub_21549F3DC();
  LODWORD(v35) = 0x2000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B770);
  sub_2151ACC5C(&qword_27CA5B778, &qword_27CA5B750);
  v18 = v30;
  v19 = v28;
  sub_21549F3AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B780);
  sub_2151ACC5C(&qword_27CA5B788, &qword_27CA5B740);
  v20 = v34;
  sub_21549F37C();
  (*(v32 + 8))(v18, v20);
  sub_2151ACC5C(&qword_27CA5B790, &qword_27CA5B748);
  v21 = v33;
  v22 = sub_21549F36C();
  (*(v31 + 8))(v5, v21);
  (*(v27 + 8))(v8, v19);
  v35 = v22;
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = sub_21539E504;
  *(v24 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B798);
  sub_2151ACC5C(&qword_27CA5B7A0, &qword_27CA5B798);
  sub_21549F3EC();

  swift_beginAccess();
  sub_21549F30C();
  swift_endAccess();

  return v2;
}

unint64_t sub_21539E4B0()
{
  result = qword_27CA5B768;
  if (!qword_27CA5B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5B768);
  }

  return result;
}

uint64_t sub_21539E510(unsigned __int16 *a1)
{
  if (*(a1 + 3))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return (*(v1 + 16))(*a1, v2 | *(a1 + 2));
}

uint64_t sub_21539E554()
{
  v1 = sub_21549F11C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RecordingView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11NotesEditor28ICRecordButtonViewController_interactionHandler;
  swift_beginAccess();
  sub_21539EAB0(v0 + v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21539EB20(v9);
    sub_21549F0BC();
    v18 = sub_21549F0FC();
    v19 = sub_2154A224C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2151A1000, v18, v19, "interactionHandler is nil, can't perform record button", v20, 2u);
      MEMORY[0x21606B520](v20, -1, -1);
    }

    return (*(v28 + 8))(v3, v29);
  }

  else
  {
    sub_21539EB88(v9, v16);
    if (sub_215410CB4())
    {
      v22 = sub_2154A202C();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      sub_21539B7B8(v16, v13);
      sub_2154A1FFC();
      v23 = sub_2154A1FEC();
      v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v25 = swift_allocObject();
      v26 = MEMORY[0x277D85700];
      *(v25 + 16) = v23;
      *(v25 + 24) = v26;
      sub_21539EB88(v13, v25 + v24);
      sub_215354B4C(0, 0, v6, &unk_2154C3A70, v25);
    }

    return sub_21539B81C(v16);
  }
}

uint64_t sub_21539E910()
{
  sub_21539EB20(v0 + OBJC_IVAR____TtC11NotesEditor28ICRecordButtonViewController_interactionHandler);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICRecordButtonViewController()
{
  result = qword_27CA5B7A8;
  if (!qword_27CA5B7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21539E9C8()
{
  sub_21539EA58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21539EA58()
{
  if (!qword_27CA5B7B8)
  {
    type metadata accessor for RecordingView();
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5B7B8);
    }
  }
}

uint64_t sub_21539EAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21539EB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21539EB88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_21539EC1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICRecordButtonAppFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ICRecordButtonAppFactory()
{
  result = qword_27CA5B7D8;
  if (!qword_27CA5B7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21539ED04()
{
  result = type metadata accessor for RecordingView();
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

uint64_t type metadata accessor for ICRecordButton()
{
  result = qword_27CA5B7F8;
  if (!qword_27CA5B7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21539EE24()
{
  sub_21539EF24(319, &qword_27CA5B808, MEMORY[0x277CDF450]);
  if (v0 <= 0x3F)
  {
    sub_21539EF24(319, &unk_27CA5C8A0, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ICRecordButtonViewModel();
      if (v2 <= 0x3F)
      {
        sub_21539EF78();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21539EF24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21549FA1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21539EF78()
{
  result = qword_27CA5B810;
  if (!qword_27CA5B810)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CA5B810);
  }

  return result;
}

uint64_t sub_21539EFF8@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v2 = sub_21549E28C();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2154A021C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21549FE8C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2154A055C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B818);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v64 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B820);
  MEMORY[0x28223BE20](v66);
  v11 = &v64 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B828);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v64 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B830);
  MEMORY[0x28223BE20](v67);
  v74 = &v64 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B838);
  MEMORY[0x28223BE20](v73);
  v76 = &v64 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B840);
  MEMORY[0x28223BE20](v75);
  v81 = &v64 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B848);
  MEMORY[0x28223BE20](v80);
  v82 = &v64 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B850);
  MEMORY[0x28223BE20](v84);
  v85 = &v64 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B858);
  MEMORY[0x28223BE20](v18 - 8);
  v83 = &v64 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B860);
  MEMORY[0x28223BE20](v86);
  v87 = &v64 - v20;
  v21 = type metadata accessor for ICRecordButton();
  v22 = *__swift_project_boxed_opaque_existential_0Tm((v1 + *(v21 + 28)), *(v1 + *(v21 + 28) + 24));
  v98[3] = type metadata accessor for ICRecordButtonViewController();
  v98[4] = &off_282752BE8;
  v98[0] = v22;
  sub_215333D74(v98, &v97);
  v23 = swift_allocObject();
  sub_2151C6B0C(&v97, v23 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm(v98);
  v96 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B868);
  sub_2153A18BC(&qword_27CA5B870, &qword_27CA5B868, &unk_2154C0C10, sub_2153A185C);
  sub_2154A0E3C();
  v95 = v21;
  v24 = *(v1 + *(v21 + 24));
  swift_getKeyPath();
  v98[0] = v24;
  sub_2153A2100(&qword_27CA5B738, type metadata accessor for ICRecordButtonViewModel);
  sub_21549ED9C();

  if (*(v24 + 32))
  {
    v25 = *(v24 + 32);
  }

  else
  {
    v25 = sub_2154A0D1C();
  }

  KeyPath = swift_getKeyPath();
  v98[0] = v25;

  v27 = sub_21549FB0C();
  (*(v64 + 32))(v11, v9, v65);
  v28 = &v11[*(v66 + 36)];
  *v28 = KeyPath;
  v28[1] = v27;
  sub_2154A054C();
  sub_2153A1A84();
  sub_2153A2100(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
  v29 = v68;
  v30 = v72;
  sub_2154A09DC();
  (*(v70 + 8))(v7, v30);
  sub_2151ADCD8(v11, &qword_27CA5B820);
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v31 = v77;
  if (*(v24 + 16))
  {
    sub_21549FE7C();
  }

  else
  {
    sub_21549FE6C();
  }

  v32 = v81;
  v33 = swift_getKeyPath();
  v34 = v74;
  v35 = &v74[*(v67 + 36)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
  (*(v78 + 32))(v35 + *(v36 + 28), v31, v79);
  *v35 = v33;
  (*(v69 + 32))(v34, v29, v71);
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v37 = *(v24 + OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__disabled);
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  v40 = v34;
  v41 = v76;
  sub_21533FB7C(v40, v76, &qword_27CA5B830);
  v42 = (v41 + *(v73 + 36));
  *v42 = v38;
  v42[1] = sub_2153A1B68;
  v42[2] = v39;
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  if (*(v24 + 17) == 1)
  {
    v43 = sub_2154A0FEC();
  }

  else
  {
    v43 = 0;
  }

  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v44 = *(v24 + 18);
  sub_21533FB7C(v41, v32, &qword_27CA5B838);
  v45 = v32 + *(v75 + 36);
  *v45 = v43;
  *(v45 + 8) = v44;
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  if (*(v24 + 17) == 1)
  {
    v46 = sub_2154A0FEC();
  }

  else
  {
    v46 = 0;
  }

  v47 = v82;
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v48 = *(v24 + 16);
  sub_21533FB7C(v32, v47, &qword_27CA5B840);
  v49 = v47 + *(v80 + 36);
  *v49 = v46;
  *(v49 + 8) = v48;
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  if (*(v24 + 17) == 1)
  {
    v50 = sub_2154A0FEC();
  }

  else
  {
    v50 = 0;
  }

  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v51 = *(v24 + 32);
  v52 = v85;
  sub_21533FB7C(v47, v85, &qword_27CA5B848);
  v53 = (v52 + *(v84 + 36));
  *v53 = v50;
  v53[1] = v51;

  v54 = v88;
  sub_2154A01FC();
  sub_2153A1B70();
  v55 = v83;
  sub_2154A0B1C();
  (*(v89 + 8))(v54, v90);
  sub_2151ADCD8(v52, &qword_27CA5B850);
  v56 = v55;
  v57 = v87;
  sub_21533FB7C(v56, v87, &qword_27CA5B858);
  *(v57 + *(v86 + 36)) = 1;
  swift_getKeyPath();
  v98[0] = v24;
  sub_21549ED9C();

  v58 = OBJC_IVAR____TtC11NotesEditor23ICRecordButtonViewModel__accessibilityLabel;
  swift_beginAccess();
  (*(v92 + 16))(v91, v24 + v58, v93);
  v59 = sub_2154A091C();
  v61 = v60;
  LOBYTE(v52) = v62;
  sub_2153A1F94();
  sub_2154A0A9C();
  sub_215354880(v59, v61, v52 & 1);

  return sub_2151ADCD8(v57, &qword_27CA5B860);
}