void sub_190CE3F74()
{
  if (*&v0[OBJC_IVAR___CKTapbackEmojiView_emoji + 8])
  {
    sub_190D52690();
    [v0 frame];
    if (v2 == 0.0 && v1 == 0.0 || (([v0 frame], v4 = &v0[OBJC_IVAR___CKTapbackEmojiView_frameSize], v5 == *&v0[OBJC_IVAR___CKTapbackEmojiView_frameSize]) ? (v6 = v3 == *&v0[OBJC_IVAR___CKTapbackEmojiView_frameSize + 8]) : (v6 = 0), v6 && (v7 = *&v0[OBJC_IVAR___CKTapbackEmojiView_displayScale], v8 = objc_msgSend(v0, sel_traitCollection), objc_msgSend(v8, sel_displayScale), v10 = v9, v8, v7 == v10)))
    {
    }

    else
    {
      v11 = sub_190D56ED0();
      IsSingleEmoji = CEMStringIsSingleEmoji();

      if (IsSingleEmoji)
      {
        [v0 frame];
        *v4 = v13;
        *(v4 + 1) = v14;
        v15 = [v0 traitCollection];
        [v15 displayScale];
        v17 = v16;

        *&v0[OBJC_IVAR___CKTapbackEmojiView_displayScale] = v17;
        v42 = 0x3FF0000000000000uLL;
        *&v43 = 0;
        *(&v43 + 1) = 0x3FF0000000000000;
        v44 = 0.0;
        v45 = 0.0;
        [v0 frame];
        Height = CGRectGetHeight(v47);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong tapbackContentContainerRect];
          x = v48.origin.x;
          y = v48.origin.y;
          width = v48.size.width;
          v23 = v48.size.height;
          v24 = CGRectGetWidth(v48);
          v49.origin.x = x;
          v49.origin.y = y;
          v49.size.width = width;
          v49.size.height = v23;
          v25 = CGRectGetHeight(v49);
          swift_unknownObjectRelease();
          if (v25 >= v24)
          {
            v25 = v24;
          }
        }

        else
        {
          v25 = Height;
        }

        v26 = [objc_opt_self() sharedBehaviors];
        if (v26)
        {
          v27 = v26;
          [v26 emojiTapbackScaleFactor];

          v28 = sub_190D51CE0();
          if (v28)
          {
            v29 = v28;
            v30 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
            v31 = *&v0[OBJC_IVAR___CKTapbackEmojiView_contentView];
            [v31 setImage_];
            v32 = sub_190D56ED0();

            [v31 setAccessibilityLabel_];

            [v31 setContentMode_];
            v50.origin.x = 0.0;
            v50.origin.y = 0.0;
            v50.size.width = v25;
            v50.size.height = v25;
            v33 = (CGRectGetHeight(v50) - Height) * 0.5;
            v34 = v44 - v33;
            v35 = v45 - v33;
            [v30 size];
            v51.size.width = v36;
            v51.size.height = v37;
            *&v41.a = v42;
            *&v41.c = v43;
            v41.tx = v34;
            v41.ty = v35;
            v51.origin.x = 0.0;
            v51.origin.y = 0.0;
            v52 = CGRectApplyAffineTransform(v51, &v41);
            v38 = (v52.size.height - v25) * 0.5;
            v39 = v52.origin.x - v38;
            v40 = v52.origin.y - v38;
            if (v25 < v52.size.height)
            {
              v52.origin.y = v40;
              v52.origin.x = v39;
            }

            [v31 setFrame_];
          }

          else
          {
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        sub_190CE439C();
      }
    }
  }
}

void sub_190CE439C()
{
  v1 = [objc_opt_self() systemFontOfSize_];
  v2 = *&v0[OBJC_IVAR___CKTapbackEmojiView_contentView];
  v3 = [objc_opt_self() configurationWithFont:v1 scale:3];
  v4 = sub_190D56ED0();
  v5 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v2 setImage_];
  v6 = sub_190D56ED0();
  [v2 setAccessibilityLabel_];

  [v0 bounds];
  [v2 setFrame_];
  [v2 setContentMode_];
  v7 = [objc_opt_self() sharedBehaviors];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v7 theme];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
  swift_beginAccess();
  if (v0[v11])
  {
    v12 = &selRef_messageAcknowledgmentWhiteColor;
  }

  else
  {
    v12 = &selRef_messageAcknowledgmentGrayColor;
  }

  v13 = [v10 *v12];
  [v2 setTintColor_];
}

id TapbackEmojiView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackEmojiView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackEmojiView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TapbackEmojiView.configure(for:isSelected:)(void *a1, char a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v6 associatedMessageEmoji];
    v9 = sub_190D56F10();
    v11 = v10;

    v12 = OBJC_IVAR___CKTapbackEmojiView_isSelected;
    swift_beginAccess();
    *(v2 + v12) = a2 & 1;
    v13 = (v2 + OBJC_IVAR___CKTapbackEmojiView_emoji);
    v14 = *(v2 + OBJC_IVAR___CKTapbackEmojiView_emoji + 8);
    if (!v14 || (*v13 == v9 ? (v15 = v14 == v11) : (v15 = 0), !v15 && (sub_190D58760() & 1) == 0))
    {
      *v13 = v9;
      v13[1] = v11;

      sub_190D52690();
      sub_190CE3F74();
    }
  }
}

Swift::Void __swiftcall TapbackEmojiView.performViewControllerAppearingAnimation()()
{
  [v0 setHidden_];
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  [v0 setTransform_];
  if (qword_1EAD51E20 != -1)
  {
    swift_once();
  }

  v1 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:qword_1EAD9E338 timingParameters:0.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *&v5.tx = sub_190B529EC;
  *&v5.ty = v2;
  *&v5.a = MEMORY[0x1E69E9820];
  *&v5.b = 1107296256;
  *&v5.c = sub_190840E6C;
  *&v5.d = &block_descriptor_137;
  v3 = _Block_copy(&v5);
  v4 = v0;

  [v1 addAnimations_];
  _Block_release(v3);
  [v1 startAnimationAfterDelay_];
}

void sub_190CE4C18()
{
  *(v0 + OBJC_IVAR___CKTapbackEmojiView_attributionScaleFactor) = 0x3FE6A09E667F3BCDLL;
  v1 = (v0 + OBJC_IVAR___CKTapbackEmojiView_platterEdgeInsets);
  __asm { FMOV            V0.2D, #4.0 }

  *v1 = _Q0;
  v1[1] = _Q0;
  v7 = (v0 + OBJC_IVAR___CKTapbackEmojiView_emoji);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR___CKTapbackEmojiView_isSelected) = 0;
  swift_unknownObjectWeakInit();
  v8 = (v0 + OBJC_IVAR___CKTapbackEmojiView_frameSize);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR___CKTapbackEmojiView_displayScale) = 0;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_190CE4CF0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190CE5098(&qword_1EAD5A2B0, _s9ViewModelCMa_12);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190CE5098(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190CE5098(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  LOBYTE(v2) = v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  if (v2)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v5 = *(v1 + 16);
  v6 = sub_190CECC40();

  if (!v6)
  {
    return 1;
  }

  v7 = [v6 isContact];

  return v7 ^ 1;
}

uint64_t sub_190CE4F08()
{
  v1 = OBJC_IVAR____TtCV7ChatKit29DetailsViewSaveContactSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190CE4F70()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV7ChatKit29DetailsViewSaveContactSection9ViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_12()
{
  result = qword_1EAD62DF0;
  if (!qword_1EAD62DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CE5098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190CE50E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v4 = v3 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_190CE519C()
{
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C10();
}

uint64_t sub_190CE526C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v4 = v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_190CE5328()
{
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C10();
}

uint64_t sub_190CE53F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems);
  return sub_190D52690();
}

__n128 sub_190CE54D8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  result = *(v3 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  *a2 = result;
  return result;
}

uint64_t sub_190CE56C0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190CE5720(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

char *CKTapbackAttributionView.init(messagePartChatItem:)(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_messagePartChatItem] = a1;
  v25 = a1;
  v4 = sub_190B80474(v25);
  v5 = objc_allocWithZone(type metadata accessor for TapbackAttributionViewModel());
  v6 = sub_190B81B2C(v25, v4);
  *&v2[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel] = v6;
  swift_getKeyPath();
  v27 = *&v6;
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  v7 = v6;
  sub_190D51C20();

  v8 = *&v7[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  v9 = *(v8 + 16);

  v10 = dbl_190E048C0[v9 == 2];
  if (v9 == 1)
  {
    v10 = 0.3;
  }

  v27 = v10;
  v28 = xmmword_190E048D0;
  v29 = xmmword_190E048E0;
  __asm { FMOV            V0.2D, #1.0 }

  v30 = _Q0;
  v31 = xmmword_190DCEF30;
  v32 = 0;
  v16 = objc_allocWithZone(type metadata accessor for TapbackAttributionAnimationController());
  *&v2[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_transitionController] = sub_1908E7DF0(&v27);
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CKTapbackAttributionView();
  v17 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = *&v17[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel];
  swift_getKeyPath();
  v19 = v17;
  v20 = v18;
  sub_190D51C10();

  v21 = *&v19[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_transitionController];
  swift_getKeyPath();
  sub_190CE6654(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  v22 = v19;
  v23 = v21;
  sub_190D51C10();

  sub_190CE5C0C();

  return v22;
}

void sub_190CE5C0C()
{
  v1 = v0;
  v2 = type metadata accessor for TapbackAttributionView(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - v7);
  v9 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v10 = *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel];
  v11 = *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_transitionController];
  *(v8 + *(v3 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v3 + 36)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  v20 = v10;
  type metadata accessor for TapbackAttributionViewModel();
  v12 = v10;
  sub_190D55FC0();
  v13 = v22;
  *v8 = v21;
  v8[1] = v13;
  v20 = v11;
  type metadata accessor for TapbackAttributionAnimationController();
  v14 = v11;
  sub_190D55FC0();
  v15 = v22;
  v8[2] = v21;
  v8[3] = v15;
  sub_190CE67CC(v8, v5);
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E28));
  v17 = sub_190D54090();
  [v1 addSubview_];
  sub_190CE6830(v8);
  v18 = *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView];
  *&v1[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView] = v17;
}

void sub_190CE5E38()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CKTapbackAttributionView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_hostedView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    sub_190B7DF54(v3, 0);
    [v0 bounds];
    v5 = v4;
    [v0 bounds];
    [v2 setFrame_];
  }
}

uint64_t sub_190CE5FD4(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1EAD52008 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E5D8);
  v5 = sub_190D53020();
  v6 = sub_190D57680();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, a1, v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  return a2();
}

id sub_190CE6118(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = *&v3[OBJC_IVAR____TtC7ChatKit24CKTapbackAttributionView_viewModel];
  swift_getKeyPath();
  v16 = v7;
  sub_190CE6654(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  v8 = *(v7 + OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize);
  [v3 bounds];
  if (v9 <= v8)
  {
    v14.receiver = v3;
    v14.super_class = type metadata accessor for CKTapbackAttributionView();
    v12 = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
    return v12;
  }

  [v3 bounds];
  v11 = (v10 - v8) * 0.5;
  [v3 bounds];
  v18.origin.y = 0.0;
  v18.origin.x = v11;
  v18.size.width = v8;
  v17.x = a2;
  v17.y = a3;
  if (CGRectContainsPoint(v18, v17))
  {
    v15.receiver = v3;
    v15.super_class = type metadata accessor for CKTapbackAttributionView();
    v12 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
    return v12;
  }

  return 0;
}

id CKTapbackAttributionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKTapbackAttributionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTapbackAttributionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190CE6654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190CE67CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapbackAttributionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190CE6830(uint64_t a1)
{
  v2 = type metadata accessor for TapbackAttributionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190CE68E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E38);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v45 = a1;
  v46 = a2;
  HIDWORD(v41) = a3;
  v47 = a3 & 1;
  v48 = a4;
  result = CKFrameworkBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    v17 = sub_190D56F10();
    v19 = v18;

    v57 = v17;
    v58 = v19;
    sub_19081E484();
    v57 = sub_190D555F0();
    v58 = v20;
    LOBYTE(v59) = v21 & 1;
    v60 = v22;
    result = CKFrameworkBundle();
    if (result)
    {
      v23 = result;
      v24 = sub_190D56ED0();
      v25 = sub_190D56ED0();
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      v27 = sub_190D56F10();
      v29 = v28;

      v53 = v27;
      v54 = v29;
      v53 = sub_190D555F0();
      v54 = v30;
      v55 = v31 & 1;
      v56 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E68);
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E48);
      v34 = sub_190D54860();
      v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E50);
      v36 = sub_190233640(&qword_1EAD62E58, &qword_1EAD62E50);
      v49 = v35;
      v50 = v36;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v49 = v33;
      v50 = v34;
      v51 = OpaqueTypeConformance2;
      v52 = MEMORY[0x1E697C418];
      swift_getOpaqueTypeConformance2();
      sub_190D562D0();
      v57 = a2;
      LOBYTE(v35) = BYTE4(v41) & 1;
      LOBYTE(v58) = BYTE4(v41) & 1;
      v59 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E70);
      sub_190D55FD0();
      v57 = v53;
      LOBYTE(v58) = v54;
      v38 = swift_allocObject();
      *(v38 + 16) = a1;
      *(v38 + 24) = a2;
      *(v38 + 32) = v35;
      *(v38 + 40) = a4;
      sub_190D50920();
      v39 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C7D0);
      sub_190CE7EE8();
      sub_190CE8094(&qword_1EAD62E60, &qword_1EAD52CB0);
      v40 = v44;
      sub_190D55C20();

      return (*(v43 + 8))(v11, v40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190CE6DBC@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_190D54860();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E50);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E48);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  v19 = sub_190D549E0();
  v29 = v20;
  v30 = v19;
  v27[1] = v21;
  v28 = v22;
  v38 = a1;
  v39 = a2 & 1;
  v40 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E70);
  sub_190D55FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5C7D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E78);
  sub_190CE8094(&qword_1EAD62E80, &qword_1EAD62E88);
  sub_190233640(&qword_1EAD62E90, &qword_1EAD62E78);
  sub_190D56130();
  v23 = sub_190233640(&qword_1EAD62E58, &qword_1EAD62E50);
  sub_190D557D0();
  (*(v12 + 8))(v14, v11);
  sub_190D54850();
  v36 = v11;
  v37 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v31;
  v25 = v33;
  sub_190D55790();
  (*(v34 + 8))(v10, v25);
  return (*(v32 + 8))(v18, v24);
}

id sub_190CE71B8@<X0>(char *a1@<X8>)
{
  v123 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E98);
  v132 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v124 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v131 = &v120 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v130 = &v120 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v120 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v120 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v127 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v121 = (&v120 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v120 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v125 = (&v120 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v135 = &v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v120 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v133 = &v120 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v134 = &v120 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v120 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v136 = &v120 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v120 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v120 - v40;
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v43 = result;
  v44 = sub_190D56ED0();
  v45 = sub_190D56ED0();
  v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

  v47 = sub_190D56F10();
  v49 = v48;

  v139 = v47;
  v140 = v49;
  v138 = sub_19081E484();
  *v38 = sub_190D555F0();
  *(v38 + 1) = v50;
  v38[16] = v51 & 1;
  *(v38 + 3) = v52;
  *(v38 + 4) = 1;
  *(v38 + 20) = 256;
  v137 = *(v132 + 32);
  v137(v41, v38, v1);
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v53 = result;
  v54 = sub_190D56ED0();
  v55 = sub_190D56ED0();
  v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

  v57 = sub_190D56F10();
  v59 = v58;

  v139 = v57;
  v140 = v59;
  *v33 = sub_190D555F0();
  *(v33 + 1) = v60;
  v33[16] = v61 & 1;
  *(v33 + 3) = v62;
  *(v33 + 4) = 2;
  *(v33 + 20) = 256;
  v137(v136, v33, v1);
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v63 = result;
  v64 = sub_190D56ED0();
  v65 = sub_190D56ED0();
  v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

  v67 = sub_190D56F10();
  v69 = v68;

  v139 = v67;
  v140 = v69;
  *v28 = sub_190D555F0();
  *(v28 + 1) = v70;
  v28[16] = v71 & 1;
  *(v28 + 3) = v72;
  *(v28 + 4) = 3;
  *(v28 + 20) = 256;
  v137(v134, v28, v1);
  result = CKFrameworkBundle();
  v73 = v135;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v74 = result;
  v126 = v41;
  v75 = sub_190D56ED0();
  v76 = sub_190D56ED0();
  v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

  v78 = sub_190D56F10();
  v80 = v79;

  v139 = v78;
  v140 = v80;
  *v23 = sub_190D555F0();
  *(v23 + 1) = v81;
  v23[16] = v82 & 1;
  *(v23 + 3) = v83;
  *(v23 + 4) = 4;
  *(v23 + 20) = 256;
  v137(v133, v23, v1);
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v84 = result;
  v85 = sub_190D56ED0();
  v86 = sub_190D56ED0();
  v87 = [v84 localizedStringForKey:v85 value:0 table:v86];

  v88 = sub_190D56F10();
  v90 = v89;

  v139 = v88;
  v140 = v90;
  v91 = sub_190D555F0();
  v92 = v125;
  *v125 = v91;
  v92[1] = v93;
  *(v92 + 16) = v94 & 1;
  v92[3] = v95;
  v92[4] = 5;
  *(v92 + 20) = 256;
  v137(v73, v92, v1);
  result = CKFrameworkBundle();
  v96 = v132;
  if (result)
  {
    v97 = result;
    v98 = sub_190D56ED0();
    v99 = sub_190D56ED0();
    v100 = [v97 localizedStringForKey:v98 value:0 table:v99];

    v101 = sub_190D56F10();
    v103 = v102;

    v139 = v101;
    v140 = v103;
    v104 = sub_190D555F0();
    v105 = v121;
    v106 = v122;
    *v121 = v104;
    v105[1] = v107;
    *(v105 + 16) = v108 & 1;
    v105[3] = v109;
    v105[4] = 6;
    *(v105 + 20) = 256;
    v137(v106, v105, v1);
    v110 = *(v96 + 16);
    v111 = v127;
    v110(v127, v126, v1);
    v112 = v128;
    v110(v128, v136, v1);
    v110(v129, v134, v1);
    v113 = v130;
    v110(v130, v133, v1);
    v110(v131, v135, v1);
    v114 = v124;
    v110(v124, v106, v1);
    v115 = v123;
    v110(v123, v111, v1);
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62EA0);
    v110(&v115[v116[12]], v112, v1);
    v117 = v129;
    v110(&v115[v116[16]], v129, v1);
    v110(&v115[v116[20]], v113, v1);
    v118 = v131;
    v110(&v115[v116[24]], v131, v1);
    v110(&v115[v116[28]], v114, v1);
    v119 = *(v96 + 8);
    v119(v106, v1);
    v119(v135, v1);
    v119(v133, v1);
    v119(v134, v1);
    v119(v136, v1);
    v119(v126, v1);
    v119(v114, v1);
    v119(v118, v1);
    v119(v130, v1);
    v119(v117, v1);
    v119(v128, v1);
    return (v119)(v127, v1);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_190CE7CE8(int a1, uint64_t a2, char *a3)
{
  v3 = *(a2 + 8);
  v4 = &a3[OBJC_IVAR___CKReportSpamReasonContoller_reportSpamReson];
  *v4 = *a2;
  v4[8] = v3;
  v5 = [a3 navigationItem];
  v6 = [v5 rightBarButtonItem];

  if (v6)
  {
    [v6 setEnabled_];
  }
}

uint64_t sub_190CE7DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD62E30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C7D0);
  sub_190CE7EE8();
  sub_190CE8094(&qword_1EAD62E60, &qword_1EAD52CB0);
  swift_getOpaqueTypeConformance2();
  return sub_190D554C0();
}

unint64_t sub_190CE7EE8()
{
  result = qword_1EAD62E40;
  if (!qword_1EAD62E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E48);
    sub_190D54860();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD62E50);
    sub_190233640(&qword_1EAD62E58, &qword_1EAD62E50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62E40);
  }

  return result;
}

uint64_t sub_190CE8094(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C7D0);
    sub_190CE811C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_190CE811C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReportSpamReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190CE8160()
{
  v1 = OBJC_IVAR___CKCarouselBalloonView_carouselStackView;
  v2 = *&v0[OBJC_IVAR___CKCarouselBalloonView_carouselStackView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = [objc_opt_self() genericStackView];
  if (v3)
  {
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;

    v11 = [objc_allocWithZone(type metadata accessor for CarouselBalloonViewDataSourceManager()) init];
    [v5 setDataSourceManager_];
    v6 = [v11 dataSource];
    type metadata accessor for CarouselBalloonViewDataSource();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {

      v7 = 0;
    }

    v8 = *&v0[OBJC_IVAR___CKCarouselBalloonView_dataSource];
    *&v0[OBJC_IVAR___CKCarouselBalloonView_dataSource] = v7;

    [v5 setViewClass_];
    [v5 setCarouselDelegate_];
    [v0 addSubview_];

    v9 = v11;
  }

  else
  {
    v10 = *&v0[v1];
    *&v0[v1] = 0;

    v9 = *&v0[OBJC_IVAR___CKCarouselBalloonView_dataSource];
    *&v0[OBJC_IVAR___CKCarouselBalloonView_dataSource] = 0;
  }
}

id sub_190CE83FC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CarouselBalloonView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  [v0 bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  MidY = CGRectGetMidY(v12);
  [v0 bounds];
  v7 = CGRectGetWidth(v13);
  [v0 bounds];
  v8 = CGRectGetWidth(v14);
  result = *&v0[OBJC_IVAR___CKCarouselBalloonView_carouselStackView];
  if (result)
  {
    return [result setFrame_];
  }

  return result;
}

Swift::Void __swiftcall CarouselBalloonView.carousel(_:didScrollTo:)(CKMessagesCarouselView *_, Swift::Int didScrollTo)
{
  v4 = [v2 delegate];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 balloonView:v2 carouselScrolledToIndex:didScrollTo];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_190CE8848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit29CarouselBalloonViewDataSource_items);
  if (v4)
  {
    if (v4 >> 62)
    {
      v6 = a3;
      result = sub_190D581C0();
      a3 = v6;
      if (result > v6)
      {
LABEL_4:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = a3;
          sub_190D52690();
          v9 = MEMORY[0x193AF3B90](v8, v4);

          return v9;
        }

        if (a3 < 0)
        {
          __break(1u);
        }

        else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
        {

          return swift_unknownObjectRetain();
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result > a3)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  return [v7 init];
}

id sub_190CE8A04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_190CE8C78()
{
  *&v0[OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result payloadDelegate];

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v6.receiver = v0;
    v6.super_class = type metadata accessor for TapbackPickerInputController();
    v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
    if (CKIsRunningInMessagesNotificationExtension())
    {
      [v4 setKeyboardAppearance_];
    }

    v5 = v4;
    [v5 setKeyboardType_];
    [v5 setForceDisableDictation_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190CE8DD0()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TapbackPickerInputController();
  v2 = objc_msgSendSuper2(&v12, sel_becomeFirstResponder);
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D790);
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_19020E000, v4, v5, "superBecomeFirstResponder: %{BOOL}d", v6, 8u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  if (v2)
  {
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 payloadDelegate];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    if (v7)
    {
      [v7 setPayloadDelegate_];
      v9 = v7;
      v10 = sub_190D57160();
      [v9 setSupportedPayloadIds_];
    }
  }

  return v2;
}

id sub_190CE8FD0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TapbackPickerInputController();
  v1 = objc_msgSendSuper2(&v8, sel_resignFirstResponder);
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D790);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_19020E000, v3, v4, "superResignFirstResponder: %{BOOL}d", v5, 8u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    [result setPayloadDelegate_];
    swift_unknownObjectRelease();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190CE917C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D790);
  v9 = sub_190D53020();
  v10 = sub_190D57680();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_19020E000, v9, v10, "handlePayloadCalled!", v11, 2u);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v12 = sub_190D56F10();
  if (a3)
  {
    if (v12 == a2 && v13 == a3)
    {
    }

    else
    {
      v15 = sub_190D58760();

      if ((v15 & 1) == 0)
      {
        if (!a1)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    v32 = v3 + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 24))(v3, a1, a2, a3, ObjectType, v33);
    goto LABEL_31;
  }

  if (!a1)
  {
LABEL_21:
    v45 = sub_190D53020();
    v28 = sub_190D576A0();
    if (!os_log_type_enabled(v45, v28))
    {
LABEL_24:
      v31 = v45;
LABEL_25:

      return;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Could not convert payload to expected dictionary type";
LABEL_23:
    _os_log_impl(&dword_19020E000, v45, v28, v30, v29, 2u);
    MEMORY[0x193AF7A40](v29, -1, -1);
    goto LABEL_24;
  }

LABEL_14:
  if (!sub_190CE96F8(a1))
  {
    goto LABEL_21;
  }

  v16 = sub_190D56D60();

  v45 = _UIStickerCreateStickerFromTextInputPayload();

  if (!v45)
  {
    v45 = sub_190D53020();
    v28 = sub_190D576A0();
    if (!os_log_type_enabled(v45, v28))
    {
      goto LABEL_24;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Could not convert payload to _UISticker";
    goto LABEL_23;
  }

  v17 = [v45 _ck_plainStringEmojiText];
  if (!v17)
  {
    v35 = [v45 _ck_shouldInsertInTapbackAsAdaptiveImageGlyph];
    v36 = sub_190D53020();
    v37 = sub_190D57690();
    v38 = os_log_type_enabled(v36, v37);
    if (v35)
    {
      if (v38)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_19020E000, v36, v37, "Handling sticker tapback payload as adaptive image glyph backed sticker", v39, 2u);
        MEMORY[0x193AF7A40](v39, -1, -1);
      }

      v44 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
    }

    else
    {
      if (v38)
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_19020E000, v36, v37, "Handling sticker tapback payload as non-adaptive sticker", v40, 2u);
        MEMORY[0x193AF7A40](v40, -1, -1);
      }

      v44 = 0;
    }

    v41 = objc_allocWithZone(MEMORY[0x1E69A82C0]);
    v42 = v45;
    v43 = [v41 initWithUISticker:v42 adaptiveImageGlyph:v44];

    sub_190CE9A90(v43);
    v31 = v44;
    goto LABEL_25;
  }

  v18 = v17;
  v19 = sub_190D56F10();
  v21 = v20;

  v22 = sub_190D53020();
  v23 = sub_190D57690();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_19020E000, v22, v23, "Handling sticker tapback payload as emoji string", v24, 2u);
    MEMORY[0x193AF7A40](v24, -1, -1);
  }

  v25 = v4 + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_24;
  }

  v26 = *(v25 + 8);
  v27 = swift_getObjectType();
  (*(v26 + 16))(v4, v19, v21, v27, v26);

LABEL_31:

  swift_unknownObjectRelease();
}

unint64_t sub_190CE96F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A68);
    v2 = sub_190D585A0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = sub_190D52690();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_19087862C(*(a1 + 48) + 40 * v12, v27);
        sub_19021834C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_19087862C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_19021834C(v25 + 8, v20);
        sub_19022EEA4(v24, &qword_1EAD62F58);
        v21 = v18;
        sub_190824530(v20, v22);
        v13 = v21;
        sub_190824530(v22, v23);
        sub_190824530(v23, &v21);
        result = sub_19022DCEC(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_190824530(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_190824530(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_19022EEA4(v24, &qword_1EAD62F58);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_190CE9A90(void *a1)
{
  [a1 prepareToSend];
  v22 = [objc_opt_self() sharedInstance];
  if (!v22)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = [a1 getSafeExternalURI];
  if (!v3)
  {
    sub_190D56F10();
    v3 = sub_190D56ED0();
  }

  v4 = [objc_opt_self() userInfoDictionaryWithExternalURI_];

  sub_190D56D90();
  v5 = sub_190D56D60();
  v23 = [v22 mediaObjectWithSticker:a1 stickerUserInfo:v5];

  if (v23)
  {
    v6 = v1 + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      v8 = [v23 transferGUID];
      if (v8)
      {
        v9 = v8;
        ObjectType = swift_getObjectType();

        v11 = sub_190D56F10();
        v13 = v12;

        (*(v7 + 8))(v1, v11, v13, ObjectType, v7);

        swift_unknownObjectRelease();
        return;
      }

LABEL_20:
      __break(1u);
      return;
    }

    v21 = v23;
  }

  else
  {

    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9D790);
    v15 = a1;
    v16 = sub_190D53020();
    v17 = sub_190D576A0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = a1;
      v20 = v15;
      _os_log_impl(&dword_19020E000, v16, v17, "Creating media object for sticker: %@ failed", v18, 0xCu);
      sub_19022EEA4(v19, &unk_1EAD54610);
      MEMORY[0x193AF7A40](v19, -1, -1);
      MEMORY[0x193AF7A40](v18, -1, -1);
    }

    v21 = v22;
  }
}

id sub_190CE9EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerInputController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190CE9F60(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D790);
  v5 = sub_190D53020();
  v6 = sub_190D576A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "Received inserted adaptive image glyph, but we should have received an stageSticker payload. Resulting sticker will have no attribution.", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E69A82C0]) initWithAdaptiveImageGlyphFromUnknownSource_];
  v8 = [objc_opt_self() sharedInstance];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 mediaObjectWithSticker:v24 stickerUserInfo:0];

  if (!v10)
  {
    v20 = sub_190D53020();
    v21 = sub_190D576A0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19020E000, v20, v21, "Creating media object for adaptive image glyph failed", v22, 2u);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }

    goto LABEL_15;
  }

  v11 = [v10 transferGUID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_190D56F10();
    v15 = v14;

    v16 = v2 + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      v19 = *(v17 + 8);
      swift_unknownObjectRetain();
      v19(v2, v13, v15, ObjectType, v17);

      swift_unknownObjectRelease_n();
    }

    else
    {
    }

LABEL_15:
    v23 = v24;
    goto LABEL_16;
  }

  v23 = v10;
LABEL_16:
}

void sub_190CEA218(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode];
  if (v8 != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode))
  {
    sub_190C24BC4(v8);
  }

  if (a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable] != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable))
  {
    [*&v3[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] setUserInteractionEnabled_];
  }

  v9 = OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation;
  v10 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation];
  v11 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation);
  v12 = &unk_1EAD60000;
  v13 = &selRef_setMayReparentPluginViews_;
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_11;
    }

    sub_1902188FC(0, &qword_1EAD466B0);
    v14 = v11;
    v15 = v10;
    v16 = sub_190D57D90();

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto] == *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_11:
  v17 = *&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView];
  v18 = *&v17[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton];
  v19 = *&a1[v9];
  [v18 updateWithConversation_];
  [v17 setNeedsLayout];

LABEL_12:
  v20 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress];
  if (v20 == *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress))
  {
    goto LABEL_23;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a1;
  if ((*(a3 + OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarAnimation_animation + 8) & 1) == 0)
  {
    v26 = a1;
    v27 = v4;
    v28 = sub_190D56570();
    MEMORY[0x1EEE9AC00](v28);
    sub_190D53E40();

    goto LABEL_23;
  }

  v22 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
  v23 = *&v22[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue];
  *&v22[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue] = v20;
  v24 = v20 > 0.0;
  if (v20 > 0.0 && v23 == 0.0)
  {
    v24 = 1;
    v25 = 1.0;
LABEL_21:
    v79 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v22;
    *(v29 + 24) = v25;
    v84 = sub_190CEB598;
    v85 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_190840E6C;
    v83 = &block_descriptor_12_11;
    v30 = _Block_copy(&aBlock);
    v31 = a1;
    v32 = v4;
    v33 = v22;

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v20;
    *(v34 + 32) = v24;
    v84 = sub_190CEB5A4;
    v85 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_190896518;
    v83 = &block_descriptor_18_4;
    v35 = _Block_copy(&aBlock);
    v36 = v33;

    [v79 animateWithDuration:196612 delay:v30 options:v35 animations:0.2 completion:0.0];
    _Block_release(v35);
    _Block_release(v30);

    v12 = &unk_1EAD60000;
    v13 = &selRef_setMayReparentPluginViews_;
    goto LABEL_23;
  }

  if (v20 == 0.0 && v23 > 0.0)
  {
    v25 = 0.0;
    goto LABEL_21;
  }

  v37 = *&v22[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView];
  v38 = a1;
  v39 = v4;
  [v37 setProgress:v20 > 0.0 animated:v20];

  v12 = &unk_1EAD60000;
LABEL_23:
  v40 = OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor;
  v41 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor];
  v42 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor);
  sub_1902188FC(0, &qword_1EAD46520);
  v43 = v41;
  v44 = v42;
  v45 = sub_190D57D90();

  if ((v45 & 1) == 0)
  {
    v46 = *&a1[v40];
    v47 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
    v48 = *(v47 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarColor);
    *(v47 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarColor) = v46;
    v49 = v46;

    [*(v47 + OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView) setProgressTintColor_];
  }

  v50 = OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle;
  v51 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle];
  v52 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle);
  type metadata accessor for ConversationTitle();
  v53 = v51;
  v54 = v52;
  v55 = sub_190D57D90();

  if ((v55 & 1) == 0 || a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto] != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto))
  {
    v56 = *&a1[v50];
    v57 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
    v58 = *&v57[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_titleRowView];
    v59 = *(v58 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle);
    *(v58 + OBJC_IVAR____TtCC7ChatKit35TranscriptNavigationBarOrnamentView12TitleRowView_conversationTitle) = v56;
    v60 = v56;

    sub_190AFC538();
    sub_190D52690();
    v61 = sub_190D56ED0();

    [v57 setAccessibilityLabel_];

    [v57 v13[141]];
    [v4 v13[141]];
  }

  v62 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText + 8];
  v63 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText + 8);
  if (!v62)
  {
    if (!v63)
    {
      goto LABEL_37;
    }

    v66 = 0;
    v64 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
    v65 = *&v64[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel];
    goto LABEL_36;
  }

  if (!v63 || (*&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText] != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText) || v62 != v63) && (sub_190D58760() & 1) == 0)
  {
    v64 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
    v65 = *&v64[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_subtitleLabel];
    sub_190D52690();
    v66 = sub_190D56ED0();
LABEL_36:
    [v65 setText_];

    [v64 v13[141]];

    [v4 v13[141]];
  }

LABEL_37:
  v67 = &a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle];
  v68 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle];
  if (!v68)
  {
    return;
  }

  v69 = *(v67 + 1);
  v70 = *(v67 + 2);
  v71 = a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle;
  v72 = *v71;
  if (!*v71)
  {
    v76 = v68;
    sub_19029063C(v69);
    goto LABEL_42;
  }

  v73 = *(v71 + 8);
  sub_1902188FC(0, &qword_1EAD46500);
  sub_190C6C2B0(v68, v69);
  v74 = v68;
  sub_19029063C(v69);
  sub_190C6C2B0(v72, v73);
  v75 = sub_190D57D90();

  sub_19022123C(v73);
  sub_1908F1D9C(v68, v69);
  if ((v75 & 1) == 0)
  {
LABEL_42:
    v77 = *(*&v4[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView] + v12[280]);
    if (v69)
    {
      v84 = v69;
      v85 = v70;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_190CBFCD4;
      v83 = &block_descriptor_138;
      v78 = _Block_copy(&aBlock);
      sub_190D50920();
    }

    else
    {
      v78 = 0;
    }

    [v77 performNicknameTransitionWith:v68 startHandler:v78 completion:{0, v79}];
    _Block_release(v78);
  }

  sub_19022123C(v69);
}

id sub_190CEABD0(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView;
  type metadata accessor for TranscriptNavigationBarPrincipalView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_190CEACA4();
  }

  return v5;
}

uint64_t sub_190CEACA4()
{
  [v0 setHideStandardTitle_];
  [v0 setPreferredContentAlignment_];
  if (qword_1EAD51B58 != -1)
  {
    swift_once();
  }

  [v0 setDisplayLayer_];
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView];
  *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_delegate + 8] = &off_1F0424880;
  swift_unknownObjectWeakAssign();
  v2 = sub_190D56ED0();
  [v1 setAccessibilityIdentifier_];

  [v0 addSubview_];
  sub_19095C080();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = sub_190D53450();
  sub_1908A223C(inited);
  swift_setDeallocating();
  type metadata accessor for TranscriptNavigationBarTitleView();
  sub_190D57CE0();
  swift_unknownObjectRelease();
}

id sub_190CEAE38()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 safeAreaInsets];
  v12 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  v41 = v14;
  v42 = v13;
  v40 = v15;
  v16 = [v0 overlays];
  if (v16)
  {
    v17 = v16;
    sub_190D57C50();
    v18 = 0.0;
    Width = 0.0;
    if ((v45 & 1) == 0)
    {
      Width = CGRectGetWidth(v44);
    }

    sub_190D57C60();
    if ((v47 & 1) == 0)
    {
      v18 = CGRectGetWidth(v46);
    }

    if (Width > v18)
    {
      v20 = Width;
    }

    else
    {
      v20 = v18;
    }

    v21 = 0.0;
  }

  else
  {
    v21 = *MEMORY[0x1E69DDCE0];
    v20 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  UIEdgeInsetsInsetRect(v12, v42, v41, v40, v21, v20);
  v24 = v23 * 0.8;
  if (v23 * 0.8 > 430.0)
  {
    v24 = 430.0;
  }

  v25 = *&v1[OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView];
  [v25 sizeThatFits_];
  v27 = v26;
  v29 = v28;
  v48.origin.x = v12;
  v48.origin.y = v42;
  v48.size.width = v41;
  v48.size.height = v40;
  v30 = CGRectGetHeight(v48) - v29;
  [v1 safeAreaInsets];
  v32 = v31;
  v39 = v12;
  v49.origin.x = v12;
  v49.origin.y = v42;
  v49.size.width = v41;
  v49.size.height = v40;
  v33 = v32 + (CGRectGetWidth(v49) - v27) * 0.5;
  v34 = 0.0;
  if (v30 > 2.0)
  {
    v35 = COERCE_DOUBLE(sub_190CEB1A8());
    if (v36)
    {
      v50.origin.x = v39;
      v50.size.height = v40;
      v50.size.width = v41;
      v50.origin.y = v42;
      Height = CGRectGetHeight(v50);
    }

    else
    {
      Height = v35;
    }

    v34 = (Height - v29) * 0.5;
  }

  result = [v25 setFrame_];
  if (qword_1EAD51B60 != -1)
  {
    result = swift_once();
  }

  if (byte_1EAD9DD39 == 1)
  {
    v51.origin.x = v33;
    v51.origin.y = v34;
    v51.size.width = v27;
    v51.size.height = v29;
    return [v1 setHeight_];
  }

  return result;
}

id sub_190CEB1A8()
{
  result = [v0 overlays];
  if (result)
  {
    v2 = result;
    sub_190D57C50();
    MaxY = 0.0;
    if ((v7 & 1) == 0)
    {
      MaxY = CGRectGetMaxY(v6);
    }

    sub_190D57C60();
    if (v9)
    {

      v4 = 0.0;
      if (v7)
      {
        return 0;
      }
    }

    else
    {
      v4 = CGRectGetMaxY(v8);
    }

    if (MaxY > v4)
    {
      v5 = MaxY;
    }

    else
    {
      v5 = v4;
    }

    return *&v5;
  }

  return result;
}

id sub_190CEB264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptNavigationBarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190CEB308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress);
  v3 = *(*(a1 + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView) + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
  v4 = *&v3[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue];
  *&v3[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressBarValue] = v2;
  v5 = v2 > 0.0;
  if (v4 == 0.0 && v2 > 0.0)
  {
    v5 = 1;
    v6 = 1.0;
LABEL_7:
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v6;
    v19 = sub_190CEB5C4;
    v20 = v8;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190840E6C;
    v18 = &block_descriptor_25_2;
    v9 = _Block_copy(&v15);
    v10 = v3;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2;
    *(v11 + 32) = v5;
    v19 = sub_190CEB5C8;
    v20 = v11;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_190896518;
    v18 = &block_descriptor_32_3;
    v12 = _Block_copy(&v15);
    v13 = v10;

    [v7 animateWithDuration:196612 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
    _Block_release(v9);
    return;
  }

  if (v4 > 0.0 && v2 == 0.0)
  {
    v6 = 0.0;
    goto LABEL_7;
  }

  v14 = *&v3[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_progressView];

  [v14 setProgress:v2 > 0.0 animated:v2];
}

id sub_190CEB5DC()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v3 = [v1 isFaceTimeAudioAvailable_];
  swift_getKeyPath();
  sub_190D51C20();

  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation);
  v5 = v4 ^ 1 | v3;
  if ((v4 & 1) == 0 && (v3 & 1) == 0)
  {
    v5 = [v1 isTelephonyAvailable];
  }

  result = [v2 chat];
  if (result)
  {
    v7 = result;
    v8 = [result supportsCapabilities_];

    return (v8 & v5);
  }

  return result;
}

id sub_190CEB728()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return [objc_opt_self() isTelephonyAvailable];
}

id sub_190CEB7A8()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  v3 = [v1 isFaceTimeVideoAvailable_];
  result = [v2 chat];
  if (result)
  {
    v5 = result;
    v6 = [result supportsCapabilities_];

    return (v6 & v3);
  }

  return result;
}

uint64_t sub_190CEB87C()
{
  sub_190C690DC();
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C10();

  swift_getKeyPath();
  sub_190D51C10();
}

void sub_190CEBA9C(uint64_t a1, void *a2)
{
  sub_190D56FC0();
  v3 = [a2 entity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 defaultIMHandle];

    if (v5)
    {
      sub_190D58890();
      v6 = v5;
      sub_190D57DA0();
    }

    else
    {
      sub_190D58890();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190CEBB78()
{
  v1 = *v0;
  sub_190D58870();
  sub_190CEBA9C(v3, v1);
  return sub_190D588C0();
}

uint64_t sub_190CEBBE0()
{
  v1 = *v0;
  sub_190D58870();
  sub_190CEBA9C(v3, v1);
  return sub_190D588C0();
}

id sub_190CEBC38(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__delegate;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType] = 0xF000000000000007;
  v4 = [objc_allocWithZone(CKDetailsContactsManager) init];
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager] = v4;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant] = 0;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus] = 0;
  v5 = &v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState];
  *v5 = 0;
  v5[8] = 1;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible] = 1;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState] = 0;
  v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections] = -1;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participantListBehaviors] = -1;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState] = [objc_allocWithZone(type metadata accessor for DetailsViewPresentationState()) init];
  sub_190D51C50();
  *&v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] = a1;
  swift_unknownObjectRetain();
  v6 = a1;
  sub_19024C978(&v1[v3]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DetailsViewConfiguration();
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = objc_allocWithZone(CKDetailsContactsManager);
  v9 = v7;
  sub_190CEC110([v8 initWithConversation:v6 delegate:v9]);
  sub_190CED068();
  sub_190CED7D4();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_190CEBE40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants;
  v4 = sub_190D52690();
  sub_1909A94B8(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }
}

void sub_190CEBFBC(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType;
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
  v5 = a1 & 0xF000000000000007;
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v5 == 0xF000000000000007)
    {
      goto LABEL_10;
    }

    v6 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
    sub_190C528B0(v4);
    v7 = sub_190C5259C(v6, a1);
    sub_190C52538(v6);
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    v4 = *(v1 + v3);
  }

  else if (v5 != 0xF000000000000007)
  {
LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
    sub_190C52538(a1);

    return;
  }

  *(v1 + v3) = a1;

  sub_190C52538(v4);
}

void sub_190CEC110(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager;
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager);
  sub_1902188FC(0, &unk_1EAD630A0);
  v6 = v5;
  v7 = sub_190D57D90();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
    a1 = a1;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1908396D4();
  sub_190D51C10();
}

uint64_t sub_190CEC2E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus;
  if (!*(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_190D52690();
  v5 = sub_1909A9490(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

void sub_190CEC424(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState;
  if (*(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8))
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1908396D4();
      sub_190D51C10();

      return;
    }
  }

  else if ((a2 & 1) != 0 || *v3 != a1)
  {
    goto LABEL_9;
  }

  *v3 = a1;
  *(v3 + 8) = a2 & 1;

  sub_190CEE5D8();
}

uint64_t sub_190CEC5A8(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190CEC69C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190CEC7C0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  return result;
}

void sub_190CEC888(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController;
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &unk_1EAD63090);
  v6 = v5;
  v7 = a1;
  v8 = sub_190D57D90();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_190CEC9F0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState;
  v5 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState);
  type metadata accessor for DetailsViewPresentationState();
  v6 = v5;
  v7 = sub_190D57D90();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }
}

uint64_t sub_190CECB24()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_190CECBC4()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return sub_190D52690();
}

id sub_190CECC40()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants);
  if (!*(v1 + 16))
  {
    return 0;
  }

  result = [*(v1 + 32) entity];
  if (result)
  {
    v3 = result;
    v4 = [result defaultIMHandle];

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_190CECD70()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
  sub_190C528B0(v1);
  return v1;
}

void sub_190CECDF4(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
  *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType) = a2;
  sub_190C528B0(a2);
  sub_190C52538(v2);
}

id sub_190CECE4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager);
  *a2 = v4;

  return v4;
}

uint64_t sub_190CECEDC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager);
  *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager) = a2;
  v3 = a2;

  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C10();
}

uint64_t sub_190CECFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_190CED068()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) isGroupConversation];
  if (v1 == *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation))
  {
    *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  v3 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v3);
  sub_1908396D4();
  sub_190D51C10();

  v4 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v4);
  sub_190D51C10();

  v5 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v5);
  sub_190D51C10();
}

void sub_190CED2E0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v2 = [*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__contactsManager) viewModelsSortedByIsContact:1 alphabetically:1];
  sub_1902188FC(0, &qword_1EAD54150);
  v3 = sub_190D57180();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x1E69E7CC0];
LABEL_21:

    sub_190CEBE40(v6);
    return;
  }

LABEL_19:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193AF3B90](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v7 entity];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = v4;
    v13 = [v10 defaultIMHandle];

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = [v13 ID];

    v20 = sub_190D56F10();
    v16 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1908374B4(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = *(v6 + 2);
    v17 = *(v6 + 3);
    if (v18 >= v17 >> 1)
    {
      v6 = sub_1908374B4((v17 > 1), v18 + 1, 1, v6);
    }

    *(v6 + 2) = v18 + 1;
    v19 = &v6[24 * v18];
    *(v19 + 4) = v8;
    *(v19 + 5) = v20;
    *(v19 + 6) = v16;
    ++v5;
    v4 = v12;
    if (v9 == v12)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

id sub_190CED578(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) hasLeftGroupChat];
  if (result == *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation))
  {
    *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }

  return result;
}

void sub_190CED688(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 allParticipantsBlocked];

    v5 = (a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant);
    if (v4 != *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1908396D4();
      sub_190D51C10();

      return;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = (a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant);
    if (*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasBlockedParticipant))
    {
      goto LABEL_3;
    }
  }

  *v5 = v4;
}

void sub_190CED7D4()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1EAD520A0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  [v2 addObserver:v0 selector:? name:? object:?];

  v4 = [v1 defaultCenter];
  if (qword_1EAD52098 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v0 selector:? name:? object:?];

  v5 = [v1 defaultCenter];
  if (qword_1EAD520B0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD9E6E8;
  v7 = [v3 chat];
  [v5 addObserver:v0 selector:sel_batchDownloadNotificationFired_ name:v6 object:v7];

  v8 = [v1 defaultCenter];
  if (qword_1EAD520B8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EAD9E6F0;
  v10 = [v3 chat];
  [v8 addObserver:v0 selector:sel_batchDownloadNotificationFired_ name:v9 object:v10];

  v11 = [v1 defaultCenter];
  if (qword_1EAD520C0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EAD9E6F8;
  v13 = [v3 chat];
  [v11 addObserver:v0 selector:sel_chatAutoDonatingHandleUpdateNotification_ name:v12 object:v13];

  v14 = [v1 defaultCenter];
  if (qword_1EAD45038 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v0 selector:? name:? object:?];

  v15 = [v1 defaultCenter];
  v16 = v15;
  if (qword_1EAD520C8 != -1)
  {
    swift_once();
    v15 = v16;
  }

  [v15 addObserver:v0 selector:? name:? object:?];
}

uint64_t sub_190CEDC40(void *a1)
{
  swift_getKeyPath();
  sub_1908396D4();
  v2 = a1;
  sub_190D51C10();
}

void *sub_190CEDD98()
{
  v1 = v0;
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  [v7 updateDeletingIncomingMessages_];
  v8 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD55F0;
  *(v9 + 32) = v7;
  sub_1902188FC(0, &qword_1EAD466B0);
  v10 = v7;
  v11 = sub_190D57160();

  v12 = [objc_opt_self() now];
  sub_190D517E0();

  v13 = sub_190D51780();
  (*(v3 + 8))(v6, v2);
  [v8 recoverableDeleteForConversations:v11 deleteDate:v13 synchronousQuery:0 completionHandler:0];

  swift_getKeyPath();
  v15[1] = v1;
  sub_1908396D4();
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result dismissDetailsViewAndShowConversationList];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190CEE020()
{
  swift_getKeyPath();
  v7 = v0;
  sub_1908396D4();
  sub_190D51C20();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DD55F0;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v2 = [objc_opt_self() maxContactAvatars];
  v3 = *(v7 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v4 = sub_190D57160();

  v5 = [v3 conversationVisualIdentityWithKeys:v4 requestedNumberOfContactsToFetch:v2];

  return v5;
}

uint64_t sub_190CEE160()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
  if ([v1 isBusinessConversation] & 1) != 0 || (swift_getKeyPath(), sub_190D51C20(), , (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation)))
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 sendingService];
    v4 = MEMORY[0x1E69A79A0];
    if (v3)
    {
      v5 = v3;
      v6 = [v3 supportsCapability_];
    }

    else
    {
      v6 = 0;
    }

    v7 = [v1 chat];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 hasMessageWithServiceCapability_];
    }

    else
    {
      v9 = 0;
    }

    v2 = v6 | v9;
  }

  return v2 & 1;
}

id sub_190CEE300()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation) == 1)
  {
    return [*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) supportsMutatingGroupMembers];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190CEE404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState);
  return result;
}

uint64_t sub_190CEE4AC()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190CEE528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus);
  return sub_190D52690();
}

void sub_190CEE5D8()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8))
  {
LABEL_2:
    if (qword_1EAD51A70 != -1)
    {
      swift_once();
    }

    v1 = sub_190D53040();
    __swift_project_value_buffer(v1, qword_1EAD9DC38);
    v2 = sub_190D53020();
    v3 = sub_190D576C0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v2, v3, "No known protectionCellState", v4, 2u);
      MEMORY[0x193AF7A40](v4, -1, -1);
    }
  }

  else
  {
    switch(*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState))
    {
      case 0:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState))
        {
          goto LABEL_25;
        }

        return;
      case 1:
      case 0xALL:
      case 0xDLL:
      case 0xELL:
      case 0x13:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 3)
        {
          goto LABEL_25;
        }

        return;
      case 2:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 6)
        {
          goto LABEL_25;
        }

        return;
      case 3:
      case 0x11:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 2)
        {
          goto LABEL_25;
        }

        return;
      case 4:
      case 0x12:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 1)
        {
          goto LABEL_25;
        }

        return;
      case 5:
      case 6:
      case 7:
      case 8:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 4)
        {
          goto LABEL_25;
        }

        return;
      case 9:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 5)
        {
          goto LABEL_25;
        }

        return;
      case 0xBLL:
      case 0xCLL:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState) != 7)
        {
          goto LABEL_25;
        }

        return;
      case 0xFLL:
      case 0x10:
        if (*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktEnhancedProtectionStatusCellState))
        {
LABEL_25:
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          sub_190D51C10();
        }

        break;
      default:
        goto LABEL_2;
    }
  }
}

uint64_t sub_190CEEBA4()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState);
}

uint64_t sub_190CEEC24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v5 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState);
  *(a2 + 8) = v5;
  return result;
}

id sub_190CEED0C(uint64_t a1, SEL *a2)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return [*(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) *a2];
}

id sub_190CEED9C@<X0>(uint64_t *a1@<X0>, SEL *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  result = [*(v5 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) *a2];
  *a3 = result;
  return result;
}

uint64_t sub_190CEEE64(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return *(v2 + *a2);
}

uint64_t sub_190CEEF40(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  return *(v2 + *a2);
}

void *sub_190CEEFC0()
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController);
  v2 = v1;
  return v1;
}

id sub_190CEF040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController);
  *a2 = v4;

  return v4;
}

void sub_190CEF0D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_190CEC888(v1);
}

void sub_190CEF100(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController);
  *(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController) = a2;
  v3 = a2;
}

id sub_190CEF150(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_190CEF200()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsViewConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsViewConfiguration()
{
  result = qword_1EAD63070;
  if (!qword_1EAD63070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190CEF378()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_190CEF484(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState;
  if ((*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState + 8) & 1) == 0)
  {
    if ((a3 & 1) != 0 || *v3 != a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = a2;
    *(v3 + 8) = a3 & 1;
    sub_190CEE5D8();
    return;
  }

  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1908396D4();
  sub_190D51C10();
}

uint64_t sub_190CEF5AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus;
  if (*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus) && (v5 = sub_190D52690(), v6 = sub_1909A9490(v5, a2), , (v6 & 1) != 0))
  {
    *(a1 + v4) = a2;
    sub_190D52690();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908396D4();
    sub_190D51C10();
  }
}

uint64_t sub_190CEF6D0(void *a1)
{
  v2 = v1;
  if (qword_1EAD51A50 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9DBD8);
  v5 = a1;
  v6 = sub_190D53020();
  v7 = sub_190D576C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = [v5 contactsViewModels];
    sub_1902188FC(0, &qword_1EAD54150);
    v10 = sub_190D57180();

    if (v10 >> 62)
    {
      v11 = sub_190D581C0();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v11;

    _os_log_impl(&dword_19020E000, v6, v7, "ContactsManagerViewModelsDidChange: new count = %ld", v8, 0xCu);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  sub_190CEC110(v5);
  swift_getKeyPath();
  sub_1908396D4();
  sub_190D51C20();

  v12 = OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded;
  if ((*(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded) & 1) == 0)
  {
    swift_getKeyPath();
    sub_190D51C20();

    v13 = (*(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible) ^ 1) & 1;
    if (v13 == *(v2 + v12))
    {
      *(v2 + v12) = v13;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190D51C10();
    }
  }

  v15 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v15);
  sub_190D51C10();
}

unint64_t sub_190CEFA94()
{
  result = qword_1EAD63080;
  if (!qword_1EAD63080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63080);
  }

  return result;
}

void sub_190CEFBA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState);
  *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState) = v2;
  v4 = v2;
}

void sub_190CEFBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController);
  *(v1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__showAllSearchViewController) = v2;
  v4 = v2;
}

void sub_190CEFC38()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktChatState;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  sub_190CEE5D8();
}

uint64_t sub_190CEFC80()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__ktHandlesForKTChatStatus) = *(v0 + 24);
  sub_190D52690();
}

void sub_190CEFD60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType);
  *(v2 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentedSheetType) = v1;
  sub_190C528B0(v1);
  sub_190C52538(v3);
}

uint64_t sub_190CEFDA4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants) = *(v0 + 24);
  sub_190D52690();
}

void sub_190CEFF18()
{
  v1 = v0;
  v48.receiver = v0;
  v48.super_class = type metadata accessor for TapbackPickerCollectionViewContainer();
  objc_msgSendSuper2(&v48, sel_layoutSubviews);
  v2 = [objc_opt_self() sharedBehaviors];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 usesTapbackRefreshStyling];

    if ((v4 & 1) == 0)
    {
      v5 = [v1 layer];
      v6 = [v5 mask];

      v7 = &OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration___observationRegistrar;
      if (!v6)
      {
        v8 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_parentMaskLayer];
        v9 = objc_opt_self();
        v10 = [v9 clearColor];
        v11 = [v10 CGColor];

        [v8 setBackgroundColor_];
        v12 = *MEMORY[0x1E6979DB0];
        v13 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_leadingGradientLayer];
        [v13 setType_];
        v14 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_trailingGradientLayer];
        [v14 setType_];
        [v13 setStartPoint_];
        [v13 setEndPoint_];
        [v14 setStartPoint_];
        [v14 setEndPoint_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_190DDA780;
        sub_19021DC70();
        *(v15 + 32) = sub_190D57D50();
        *(v15 + 40) = sub_190D57D50();
        *(v15 + 48) = sub_190D57D60();
        v16 = sub_190D57160();

        [v13 setLocations_];

        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_190DDA780;
        *(v17 + 32) = sub_190D57D50();
        *(v17 + 40) = sub_190D57D50();
        *(v17 + 48) = sub_190D57D60();
        v18 = sub_190D57160();

        [v14 setLocations_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_190DD9C20;
        v20 = [v9 whiteColor];
        v21 = [v20 &selRef____invalidateSizeCacheMetricsForKeys_];

        type metadata accessor for CGColor(0);
        v23 = v22;
        *(v19 + 56) = v22;
        *(v19 + 32) = v21;
        v24 = [v9 clearColor];
        v25 = [v24 &selRef____invalidateSizeCacheMetricsForKeys_];

        *(v19 + 88) = v23;
        *(v19 + 64) = v25;
        v26 = [v9 clearColor];
        v27 = [v26 &selRef____invalidateSizeCacheMetricsForKeys_];

        *(v19 + 120) = v23;
        *(v19 + 96) = v27;
        v28 = sub_190D57160();

        [v13 setColors_];

        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_190DD9C20;
        v30 = [v9 whiteColor];
        v31 = [v30 &selRef____invalidateSizeCacheMetricsForKeys_];

        *(v29 + 56) = v23;
        *(v29 + 32) = v31;
        v32 = [v9 clearColor];
        v33 = [v32 &selRef____invalidateSizeCacheMetricsForKeys_];

        *(v29 + 88) = v23;
        *(v29 + 64) = v33;
        v34 = [v9 clearColor];
        v35 = [v34 &selRef____invalidateSizeCacheMetricsForKeys_];

        *(v29 + 120) = v23;
        *(v29 + 96) = v35;
        v36 = sub_190D57160();

        [v14 setColors_];

        [v8 addSublayer_];
        v37 = v14;
        v7 = &OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration___observationRegistrar;
        [v8 addSublayer_];
        v38 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_centerMask];
        v39 = [v9 whiteColor];
        v40 = [v39 &selRef____invalidateSizeCacheMetricsForKeys_];

        [v38 setBackgroundColor_];
        [v8 addSublayer_];
        v6 = [v1 layer];
        [v6 setMask_];
      }

      v41 = *&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_parentMaskLayer];
      [v1 bounds];
      [v41 setFrame_];
      [v1 bounds];
      Height = CGRectGetHeight(v49);
      [v1 bounds];
      v43 = CGRectGetHeight(v50);
      [*&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_leadingGradientLayer] setFrame_];
      [v1 bounds];
      Width = CGRectGetWidth(v51);
      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = Height;
      v52.size.height = v43;
      [*&v1[OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_trailingGradientLayer] setFrame_];
      [v1 bounds];
      v45 = CGRectGetHeight(v53) * 0.5;
      [v1 bounds];
      v46 = CGRectGetWidth(v54);
      [v1 bounds];
      v47 = v46 - CGRectGetHeight(v55);
      [v1 bounds];
      [*&v1[v7[23]] setFrame_];
    }
  }

  else
  {
    __break(1u);
  }
}

_BYTE *sub_190CF06B0(char a1, double a2, double a3, double a4, double a5)
{
  v11 = OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_parentMaskLayer;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v12 = OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_centerMask;
  *&v5[v12] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v13 = OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_leadingGradientLayer;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v14 = OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_trailingGradientLayer;
  *&v5[v14] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v5[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for TapbackBlurView();
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a2, a3, a4, a5);
  v15[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = a1;
  v16 = *MEMORY[0x1E6979928];
  v17 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v18 = v15;
  v19 = [v17 initWithType_];
  v20 = v19;
  if (a1)
  {
    sub_190A86CA4(v19);
  }

  else
  {
    sub_190A87064(v19);
  }

  return v18;
}

void sub_190CF0824()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit36TapbackPickerCollectionViewContainer_trailingGradientLayer);
}

id sub_190CF09F4(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___CKTapbackPickerCollectionView_scrollDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections];
  *v11 = 0;
  v11[8] = 1;
  v12 = OBJC_IVAR___CKTapbackPickerCollectionView_itemWidth;
  sub_190CA73FC();
  sub_190CA7A78();
  v13 = sub_190CA73FC() * 44.0;
  v14 = sub_190CA8000();
  *&v5[v12] = v13 + v14 + v14;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for TapbackPickerCollectionView();
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_collectionViewLayout_, a1, a2, a3, a4, a5);
  v16 = *MEMORY[0x1E6979928];
  v17 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v18 = v15;
  v19 = [v17 initWithType_];
  sub_190A86CA4(v19);

  [v18 setSemanticContentAttribute_];
  return v18;
}

uint64_t sub_190CF0BA0(uint64_t a1, uint64_t a2)
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
  v6.super_class = type metadata accessor for TapbackPickerCollectionView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_190CF0DE8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190CF0E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_190CF0EF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_190CF0F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A4B6B8();
  sub_190D51C20();

  *a2 = *(v3 + 57);
  return result;
}

id sub_190CF1034()
{
  v1 = *v0;
  v2 = _s16StatusMenuButtonCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15KeyTransparency16StatusMenuButton_viewModel] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  sub_190D50920();
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CF1208();

  return v4;
}

uint64_t sub_190CF10BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CF1CF8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190CF1120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CF1CF8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190CF1184()
{
  sub_190CF1CF8();
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_190CF1208()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - v2;
  v4 = sub_190D57FB0();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F70();
  v41 = v0;
  v7 = *&v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15KeyTransparency16StatusMenuButton_viewModel];
  sub_190A4B140();
  sub_190D57F80();
  swift_getKeyPath();
  v42 = v7;
  sub_190A4B6B8();
  sub_190D51C20();

  if (*(v7 + 58) > 3u || *(v7 + 58) - 2 >= 2)
  {
    v8 = [objc_opt_self() configurationWithScale_];
    v9 = sub_190D56ED0();

    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    sub_190D57F60();
  }

  sub_190D57E30();
  sub_190D57EC0();
  swift_getKeyPath();
  v42 = v7;
  sub_190D51C20();

  v11 = *(v7 + 58) & 0xFC;
  v12 = objc_opt_self();
  v13 = &selRef_redColor;
  if (v11 != 4)
  {
    v13 = &selRef_secondaryLabelColor;
  }

  v14 = [v12 *v13];
  sub_190D57F00();
  sub_190D57E60();
  v15 = v41;
  LODWORD(v16) = 1148846080;
  [v41 setContentHuggingPriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v15 setContentHuggingPriority:1 forAxis:v17];
  v18 = v36;
  v19 = *(v36 + 16);
  v35 = v6;
  v19(v3, v6, v4);
  (*(v18 + 56))(v3, 0, 1, v4);
  sub_190D57FE0();
  [v15 setShowsMenuAsPrimaryAction_];
  swift_getKeyPath();
  v42 = v7;
  sub_190D51C20();

  [v15 setUserInteractionEnabled_];
  v20 = sub_190C7ADFC();
  v21 = *(v20 + 16);
  if (v21)
  {
    v34 = v4;
    v42 = MEMORY[0x1E69E7CC0];
    sub_190D58390();
    v40 = sub_1902188FC(0, &qword_1EAD464F0);
    v22 = objc_opt_self();
    v38 = 0x8000000190E7F250;
    v39 = v22;
    v37 = 0x8000000190E67520;
    v23 = 32;
    do
    {
      v24 = *(v20 + v23);
      sub_190A4BFE8(v24);
      v25 = sub_190D56ED0();

      v26 = [v39 systemImageNamed_];

      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v24;
      sub_190D57DC0();
      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
      ++v23;
      --v21;
    }

    while (v21);

    v29 = v42;
    v4 = v34;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = v35;
  if (v29 >> 62)
  {
    sub_1902188FC(0, &unk_1EAD45090);
    sub_190D52690();
    sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090);
  }

  sub_1902188FC(0, &unk_1EAD44ED0);
  v31 = sub_190D57C90();
  [v41 setMenu_];

  return (*(v36 + 8))(v30, v4);
}

void sub_190CF1940(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = type metadata accessor for DetailsViewCoordinator.PresentationAction();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a3 <= 1u)
    {
      if (!a3)
      {
        [objc_opt_self() learnMorePressedFromError_];

        return;
      }

      swift_storeEnumTagMultiPayload();
      sub_190D50920();
      sub_190BE66F8(v6);

      sub_190A413AC(v6);
      goto LABEL_11;
    }

    if (a3 == 2)
    {
      v9 = *(Strong + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15KeyTransparency16StatusMenuButton_viewModel);
      if (*(v9 + 56) == 1)
      {
        sub_190D50920();

        *(v9 + 56) = 1;
LABEL_11:

        return;
      }
    }

    else
    {
      v9 = *(Strong + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15KeyTransparency16StatusMenuButton_viewModel);
      if (*(v9 + 57) == 1)
      {
        sub_190D50920();

        *(v9 + 57) = 1;
        goto LABEL_11;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v9;
    LOBYTE(v11[-1]) = 1;
    v11[2] = v9;
    sub_190A4B6B8();
    sub_190D50920();
    sub_190D51C10();
  }
}

id sub_190CF1C30()
{
  v2.receiver = v0;
  v2.super_class = _s16StatusMenuButtonCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190CF1CF8()
{
  result = qword_1EAD630F0;
  if (!qword_1EAD630F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD630F0);
  }

  return result;
}

id IMEmojiTapback.emojiToken.getter()
{
  v1 = [v0 associatedMessageEmoji];
  sub_190D56F10();

  v2 = sub_190D56ED0();

  v3 = [objc_opt_self() emojiTokenWithString:v2 localeData:0];

  return v3;
}

id IMEmojiTapback.isEqualIgnoringModifiers(to:)(void *a1)
{
  v2 = v1;
  v4 = [v2 associatedMessageEmoji];
  if (!v4)
  {
    sub_190D56F10();
    v4 = sub_190D56ED0();
  }

  v5 = objc_opt_self();
  v6 = [v5 emojiTokenWithString:v4 localeData:0];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 associatedMessageEmoji];
  if (!v7)
  {
    sub_190D56F10();
    v7 = sub_190D56ED0();
  }

  v8 = [v5 emojiTokenWithString:v7 localeData:0];

  if (v8)
  {
    v9 = [v6 isEqualIgnoringModifiers_];

    v6 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_190CF1F20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = IMEmojiTapback.isEqualIgnoringModifiers(to:)(v4);

  return a1 & 1;
}

uint64_t type metadata accessor for CKBubbleMaterialConfiguration()
{
  result = qword_1EAD63100;
  if (!qword_1EAD63100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_190CF2034(void (*a1)(__n128))
{
  v2 = sub_190D56BB0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v4);
  v7 = type metadata accessor for CKBubbleMaterialConfiguration();
  v8 = objc_allocWithZone(v7);
  (*(v3 + 16))(v8 + OBJC_IVAR____TtC7ChatKit29CKBubbleMaterialConfiguration_wrapped, v6, v2);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v3 + 8))(v6, v2);
  return v9;
}

id sub_190CF2178(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = sub_190D56BB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v6);
  v9 = type metadata accessor for CKBubbleMaterialConfiguration();
  v10 = objc_allocWithZone(v9);
  (*(v5 + 16))(v10 + OBJC_IVAR____TtC7ChatKit29CKBubbleMaterialConfiguration_wrapped, v8, v4);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v5 + 8))(v8, v4);

  return v11;
}

id sub_190CF22B4()
{
  v0 = sub_190D56BB0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56B20();
  v4 = type metadata accessor for CKBubbleMaterialConfiguration();
  v5 = objc_allocWithZone(v4);
  (*(v1 + 16))(v5 + OBJC_IVAR____TtC7ChatKit29CKBubbleMaterialConfiguration_wrapped, v3, v0);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v1 + 8))(v3, v0);
  return v6;
}

id sub_190CF2524()
{
  v1 = sub_190D56BB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D56B90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC7ChatKit29CKBubbleMaterialConfiguration_wrapped, v1, v10);
  sub_190D56BA0();
  (*(v2 + 8))(v4, v1);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for CKBubbleMaterialConfiguration.Resolved();
  v15 = objc_allocWithZone(v14);
  v13(&v15[OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped], v8, v5);
  v19.receiver = v15;
  v19.super_class = v14;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v12, v5);
  return v16;
}

id CKBubbleMaterialConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBubbleMaterialConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBubbleMaterialConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190CF2928()
{
  result = sub_190D56BB0();
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

double static TapbackPickerBalloonLayoutTemplate.pickerPillBottomTailBaseline.getter()
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1EAD9E738;
  if (qword_1EAD52128 != -1)
  {
    swift_once();
  }

  return v0 + (v0 + 37.4 + *&qword_1EAD9E760) * 0.64278761 + 37.4;
}

double static TapbackPickerBalloonLayoutTemplate.widthConstrainedBaseline(displayConfiguration:)(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize;
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (qword_1EAD520F0 != -1)
  {
    swift_once();
  }

  return v2 + 44.0 + *&qword_1EAD9E728;
}

void sub_190CF2BC4()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 0.23;
    if (v2)
    {
      v3 = 0.35;
    }

    qword_1EAD9E720 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_190CF2C44()
{
  if (qword_1EAD520E8 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAD9E720 * -22.0;
  *&qword_1EAD9E728 = *&qword_1EAD9E720 * -22.0;
  return result;
}

void sub_190CF2CC0()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 15.4;
    if (v2)
    {
      v3 = 13.2;
    }

    qword_1EAD9E738 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_190CF2D44()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 0.6;
    if (!v2)
    {
      v3 = 1.0;
    }

    qword_1EAD9E740 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_190CF2DC0()
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAD9E738 * 0.8;
  *&qword_1EAD9E748 = *&qword_1EAD9E738 * 0.8;
  return result;
}

void sub_190CF2E3C()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 9.9;
    if (v2)
    {
      v3 = 11.0;
    }

    qword_1EAD9E758 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

double sub_190CF2EB4()
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAD9E738 * -0.6;
  *&qword_1EAD9E760 = *&qword_1EAD9E738 * -0.6;
  return result;
}

double sub_190CF2F1C()
{
  result = -10.0;
  xmmword_1EAD9E770 = xmmword_190E055C0;
  return result;
}

double sub_190CF2F30()
{
  result = -5.0;
  xmmword_1EAD9E780 = xmmword_190E055D0;
  return result;
}

double sub_190CF2F44()
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  result = *&qword_1EAD9E738 + *&qword_1EAD9E738 + 79.8;
  *&qword_1EAD63110 = result;
  return result;
}

double static TapbackPickerBalloonLayoutTemplate.topOffsetForUnobscuredTranscriptPresentation.getter()
{
  if (qword_1EAD52140 != -1)
  {
    swift_once();
  }

  return *&qword_1EAD63110;
}

double static TapbackPickerBalloonLayoutTemplate.requiredDisplayHeight.getter()
{
  if (qword_1EAD52100 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1EAD9E738;
  if (qword_1EAD52128 != -1)
  {
    swift_once();
  }

  v1 = v0 + (v0 + 37.4 + *&qword_1EAD9E760) * 0.64278761 + 37.4;
  _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
  return v2 + v1;
}

id TapbackPickerBalloonLayoutTemplate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackPickerBalloonLayoutTemplate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerBalloonLayoutTemplate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TapbackPickerBalloonLayoutTemplate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerBalloonLayoutTemplate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0()
{
  if (qword_1EAD520F8 != -1)
  {
    swift_once();
  }

  v0 = *&qword_1EAD9E730;
  if (qword_1EAD520F0 != -1)
  {
    swift_once();
  }

  return (v0 + 29.92) * 0.559192903 + 22.0 + 9.00315275 + 3.96;
}

uint64_t sub_190CF3508(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_190CF355C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_190CF35E4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63128);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63130);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  sub_190D54F10();
  v15 = &v14[*(v9 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v17 = *MEMORY[0x1E69816C8];
  v18 = sub_190D55F00();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  sub_190D54F20();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(v2 + 44)];
  *v20 = KeyPath;
  v20[8] = 0;
  sub_19022FD14(v14, v11, &qword_1EAD63130);
  sub_19022FD14(v7, v4, &qword_1EAD63128);
  v21 = v25;
  sub_19022FD14(v11, v25, &qword_1EAD63130);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63138);
  sub_19022FD14(v4, v21 + *(v22 + 48), &qword_1EAD63128);
  sub_19022EEA4(v7, &qword_1EAD63128);
  sub_19022EEA4(v14, &qword_1EAD63130);
  sub_19022EEA4(v4, &qword_1EAD63128);
  return sub_19022EEA4(v11, &qword_1EAD63130);
}

uint64_t sub_190CF3884@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_190D548D0();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63118);
  sub_190CF35E4(a1 + *(v5 + 44));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63120) + 36)) = v3;

  return sub_190D50920();
}

__n128 sub_190CF3914@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_190D54F60();
  v4 = sub_190D54F70();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63190) + 36);
  *v5 = 0;
  *(v5 + 8) = v4 & 1;
  v6 = sub_190D54240();
  v7 = sub_190D552B0();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63198) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  LOBYTE(v6) = sub_190D552B0();
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD631A0) + 36);
  *v9 = v6;
  result = *v2;
  *(v9 + 24) = *(v2 + 16);
  *(v9 + 8) = result;
  *(v9 + 40) = 0;
  return result;
}

uint64_t sub_190CF39E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63140);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  v8 = *v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63148);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v7[*(v5 + 36)] = v8;
  v10 = *(v2 + 24);
  v13[0] = *(v2 + 8);
  v13[1] = v10;
  sub_190CF3B8C();
  sub_190CF3C44();
  sub_190D55730();
  sub_19022EEA4(v7, &qword_1EAD63140);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63168) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD52FB8);
  sub_190D54460();
  result = swift_getKeyPath();
  *v11 = result;
  return result;
}

unint64_t sub_190CF3B8C()
{
  result = qword_1EAD63150;
  if (!qword_1EAD63150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63140);
    sub_190233640(&qword_1EAD63158, &qword_1EAD63148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63150);
  }

  return result;
}

unint64_t sub_190CF3C44()
{
  result = qword_1EAD63160;
  if (!qword_1EAD63160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63160);
  }

  return result;
}

unint64_t sub_190CF3CA8()
{
  result = qword_1EAD63170;
  if (!qword_1EAD63170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63120);
    sub_190233640(&qword_1EAD63178, &qword_1EAD63180);
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63170);
  }

  return result;
}

unint64_t sub_190CF3D8C()
{
  result = qword_1EAD63188;
  if (!qword_1EAD63188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63140);
    sub_190CF3B8C();
    sub_190CF3C44();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&unk_1EAD451F0, &unk_1EAD52FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63188);
  }

  return result;
}

unint64_t sub_190CF3EB8()
{
  result = qword_1EAD631A8;
  if (!qword_1EAD631A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD631A0);
    sub_190CF3F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD631A8);
  }

  return result;
}

unint64_t sub_190CF3F44()
{
  result = qword_1EAD631B0;
  if (!qword_1EAD631B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63198);
    sub_190CF3FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD631B0);
  }

  return result;
}

unint64_t sub_190CF3FD0()
{
  result = qword_1EAD631B8;
  if (!qword_1EAD631B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63190);
    sub_190AFBC9C();
    sub_190233640(&qword_1EAD557B0, &qword_1EAD557B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD631B8);
  }

  return result;
}

void sub_190CF40A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v39 = _s10WalletPassVMa(0);
  v16 = *(v39 + 36);
  type metadata accessor for DetailsQueryResultItemPreviewProvider();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(a2 + v16) = v17;
  v18 = [a1 identifier];
  v19 = sub_190D56F10();
  v21 = v20;

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  v22 = a1;
  v23 = [v22 item];
  v24 = [v23 attributeSet];

  v25 = [v24 contentURL];
  if (v25)
  {
    v26 = v25;
    sub_190D515B0();

    v27 = *(v5 + 32);
    v27(v12, v7, v4);
    v28 = *(v5 + 56);
    v28(v12, 0, 1, v4);
    v27(v15, v12, v4);
    v28(v15, 0, 1, v4);
  }

  else
  {
    v29 = v38;
    v30 = 1;
    v37 = *(v5 + 56);
    v37(v12, 1, 1, v4);
    v31 = [v24 URL];
    if (v31)
    {
      v32 = v29;
      v33 = v31;
      sub_190D515B0();

      v29 = v32;
      v30 = 0;
    }

    v37(v29, v30, 1, v4);
    sub_190844E18(v29, v15);
    if ((*(v5 + 48))(v12, 1, v4) != 1)
    {
      sub_19084CF50(v12);
    }
  }

  v34 = v39;
  sub_190844E18(v15, a2 + *(v39 + 28));
  v35 = [objc_opt_self() contactForResult_];

  *(a2 + *(v34 + 32)) = v35;
}

uint64_t sub_190CF4450()
{
  v1[19] = v0;
  sub_190D572A0();
  v1[20] = sub_190D57290();
  v3 = sub_190D57240();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190CF44E8, v3, v2);
}

uint64_t sub_190CF44E8()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = *(v1 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_190AF8AAC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD631D8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190843AB8;
  v0[13] = &block_descriptor_139;
  v0[14] = v4;
  [v2 generateWebLinkPresentationPropertiesForQueryResult:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_190CF463C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10WalletPassVMa(0);
  sub_190844DA8(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19084CF50(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_190D51560();
    v10 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v11 = sub_190D51570();
    v9 = [v10 initWithContentsOfURL_];

    if (v9)
    {
      v12 = v9;
      v13 = sub_190D56ED0();

      [v12 setSuggestedName_];

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v9;
}

uint64_t sub_190CF4874()
{
  v1 = qword_1EAD45B68;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_190CF48DC()
{
  v2.receiver = v0;
  v2.super_class = _s9ViewModelCMa_7(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190CF4914(uint64_t a1)
{
  v2 = qword_1EAD45B68;
  v3 = sub_190D51C60();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_190CF49F0(uint64_t a1)
{
  *(a1 + 8) = sub_190CF4A58(&qword_1EAD631D0);
  result = sub_190CF4A58(&unk_1EAD45B70);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_190CF4A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s10WalletPassVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CKTranscriptCollectionViewController.indexPathOfParentChatItem(indexPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v5 = sub_190D51C00();
  v120 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v111 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v111 - v21;
  sub_190CF5AFC(&qword_1EAD631E0);
  sub_190D574F0();
  sub_190D57530();
  if (v122 != v121)
  {
    if (!sub_190D51BF0())
    {
      v59 = sub_190D51BE0();
      v60 = [v3 chatItems];
      sub_1902188FC(0, &qword_1EAD450F0);
      v61 = sub_190D57180();

      if (v61 >> 62)
      {
        v62 = sub_190D581C0();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v59 >= v62)
      {
        if (qword_1EAD51CD8 != -1)
        {
          swift_once();
        }

        v63 = sub_190D53040();
        __swift_project_value_buffer(v63, qword_1EAD9E0B8);
        v64 = v120;
        (*(v120 + 16))(v22, a1, v5);
        v65 = v3;
        v66 = sub_190D53020();
        v67 = sub_190D576A0();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134218240;
          v69 = sub_190D51BE0();
          (*(v64 + 8))(v22, v5);
          *(v68 + 4) = v69;
          *(v68 + 12) = 2048;
          v70 = [v65 chatItems];
          v71 = sub_190D57180();

          if (v71 >> 62)
          {
            v72 = sub_190D581C0();
          }

          else
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v68 + 14) = v72;

          _os_log_impl(&dword_19020E000, v66, v67, "Requested parent index path but given indexPath: %ld is out of chatItems range: %ld", v68, 0x16u);
          MEMORY[0x193AF7A40](v68, -1, -1);
          v24 = v120;
        }

        else
        {
          (*(v64 + 8))(v22, v5);

          v24 = v64;
        }

        goto LABEL_22;
      }

      v55 = v119;
      v24 = v120;
      (*(v120 + 16))(v119, a1, v5);
LABEL_28:
      v57 = v55;
      v56 = 0;
      return (*(v24 + 56))(v57, v56, 1, v5);
    }

    if (sub_190D51BF0() != 1)
    {
LABEL_53:
      v56 = 1;
      v57 = v119;
      v24 = v120;
      return (*(v24 + 56))(v57, v56, 1, v5);
    }

    v34 = sub_190D51BE0();
    v35 = [v3 associatedChatItems];
    v118 = sub_1902188FC(0, &qword_1EAD44F88);
    v36 = sub_190D57180();

    if (v36 >> 62)
    {
      v37 = sub_190D581C0();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34 >= v37)
    {
      if (qword_1EAD51CD8 != -1)
      {
        swift_once();
      }

      v73 = sub_190D53040();
      __swift_project_value_buffer(v73, qword_1EAD9E0B8);
      v24 = v120;
      (*(v120 + 16))(v19, a1, v5);
      v74 = v3;
      v25 = sub_190D53020();
      v75 = sub_190D576A0();
      if (!os_log_type_enabled(v25, v75))
      {
        (*(v24 + 8))(v19, v5);

        goto LABEL_22;
      }

      v76 = swift_slowAlloc();
      *v76 = 134218240;
      v77 = sub_190D51BE0();
      (*(v24 + 8))(v19, v5);
      *(v76 + 4) = v77;
      *(v76 + 12) = 2048;
      v78 = [v74 associatedChatItems];
      v79 = sub_190D57180();

      if (v79 >> 62)
      {
        v80 = sub_190D581C0();
      }

      else
      {
        v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v76 + 14) = v80;

      _os_log_impl(&dword_19020E000, v25, v75, "Requested parent index path but given indexPath: %ld is out of associatedChatItems range: %ld", v76, 0x16u);
      v33 = v76;
      goto LABEL_6;
    }

    v38 = [v3 associatedChatItems];
    v39 = sub_190D57180();

    v40 = sub_190D51BE0();
    if ((v39 & 0xC000000000000001) == 0)
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v40 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(v39 + 8 * v40 + 32);
        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_61;
    }

    v41 = MEMORY[0x193AF3B90](v40, v39);
LABEL_16:
    v42 = v41;

    v43 = [v42 associatedChatItemGUID];
    if (!v43)
    {
      if (qword_1EAD51CD8 != -1)
      {
        swift_once();
      }

      v81 = sub_190D53040();
      __swift_project_value_buffer(v81, qword_1EAD9E0B8);
      v24 = v120;
      (*(v120 + 16))(v10, a1, v5);
      v82 = v42;
      v83 = sub_190D53020();
      v84 = sub_190D576A0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v122 = v87;
        *v85 = 138412546;
        *(v85 + 4) = v82;
        *v86 = v82;
        *(v85 + 12) = 2080;
        sub_190CF5AFC(&qword_1EAD554A0);
        v88 = v82;
        v89 = sub_190D58720();
        v91 = v90;
        (*(v120 + 8))(v10, v5);
        v92 = sub_19021D9F8(v89, v91, &v122);

        *(v85 + 14) = v92;
        _os_log_impl(&dword_19020E000, v83, v84, "Requested parent index path but no associatedChatItemGUID found on %@, at given index %s", v85, 0x16u);
        sub_190830D58(v86);
        v93 = v86;
        v24 = v120;
        MEMORY[0x193AF7A40](v93, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x193AF7A40](v87, -1, -1);
        MEMORY[0x193AF7A40](v85, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v10, v5);
      }

      goto LABEL_22;
    }

    v44 = v43;
    v45 = sub_190D56F10();
    v116 = v46;

    v117 = v42;
    v47 = [v42 associatedMessageRange];
    v118 = v48;
    v49 = [v3 chatItems];
    sub_1902188FC(0, &qword_1EAD450F0);
    v50 = sub_190D57180();

    v114 = v47;
    v115 = v45;
    v51 = v45;
    v10 = v116;
    v34 = sub_190987810(v51, v116, v47, v118, v50);

    v52 = [v3 chatItems];
    v53 = sub_190D57180();

    if (!(v53 >> 62))
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

      if (v34 < v54)
      {

        MEMORY[0x193AED460](v34, 0);

        v55 = v119;
        v24 = v120;
        (*(v120 + 32))(v119, v13, v5);
        goto LABEL_28;
      }

      if (qword_1EAD51CD8 != -1)
      {
        swift_once();
      }

      v94 = sub_190D53040();
      __swift_project_value_buffer(v94, qword_1EAD9E0B8);
      v95 = v120;
      (*(v120 + 16))(v16, a1, v5);
      v96 = v3;
      sub_190D52690();
      v97 = sub_190D53020();
      v98 = sub_190D576A0();

      if (!os_log_type_enabled(v97, v98))
      {

        (*(v95 + 8))(v16, v5);

        v56 = 1;
        v57 = v119;
        v24 = v95;
        return (*(v24 + 56))(v57, v56, 1, v5);
      }

      v112 = v98;
      v113 = v97;
      v99 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v122 = v111;
      *v99 = 134219010;
      v100 = sub_190D51BE0();
      (*(v95 + 8))(v16, v5);
      *(v99 + 4) = v100;
      *(v99 + 12) = 2048;
      *(v99 + 14) = v34;
      *(v99 + 22) = 2080;
      v101 = sub_19021D9F8(v115, v10, &v122);

      *(v99 + 24) = v101;
      *(v99 + 32) = 2080;
      v102 = sub_190D57FF0();
      v104 = sub_19021D9F8(v102, v103, &v122);

      *(v99 + 34) = v104;
      *(v99 + 42) = 2048;
      v105 = [v96 chatItems];
      v106 = sub_190D57180();

      if (v106 >> 62)
      {
        v107 = sub_190D581C0();
      }

      else
      {
        v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v108 = v117;

      *(v99 + 44) = v107;

      v109 = v113;
      _os_log_impl(&dword_19020E000, v113, v112, "Requested parent index path but given indexPath: %ld, found parentIndex: %ld for %s with range: %s is out of chatItems range: %ld", v99, 0x34u);
      v110 = v111;
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v110, -1, -1);
      MEMORY[0x193AF7A40](v99, -1, -1);

      goto LABEL_53;
    }

LABEL_61:
    v54 = sub_190D581C0();
    goto LABEL_19;
  }

  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v23 = sub_190D53040();
  __swift_project_value_buffer(v23, qword_1EAD9E0B8);
  v24 = v120;
  (*(v120 + 16))(v7, a1, v5);
  v25 = sub_190D53020();
  v26 = sub_190D576A0();
  if (!os_log_type_enabled(v25, v26))
  {

    (*(v24 + 8))(v7, v5);
    goto LABEL_22;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v122 = v28;
  *v27 = 136315138;
  sub_190CF5AFC(&qword_1EAD554A0);
  v29 = sub_190D58720();
  v31 = v30;
  (*(v24 + 8))(v7, v5);
  v32 = sub_19021D9F8(v29, v31, &v122);

  *(v27 + 4) = v32;
  _os_log_impl(&dword_19020E000, v25, v26, "Requested parent index path but given indexPath: %s is empty", v27, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x193AF7A40](v28, -1, -1);
  v33 = v27;
LABEL_6:
  MEMORY[0x193AF7A40](v33, -1, -1);

LABEL_22:
  v56 = 1;
  v57 = v119;
  return (*(v24 + 56))(v57, v56, 1, v5);
}

uint64_t sub_190CF5AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_190D51C00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_190CF5B88()
{
  _s10WalletPassVMa(319);
  if (v0 <= 0x3F)
  {
    sub_190A5E2A4();
    if (v1 <= 0x3F)
    {
      sub_190CF5C30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190CF5C30()
{
  if (!qword_1EAD631F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD61C80);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD631F8);
    }
  }
}

uint64_t sub_190CF5CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B150);
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v74 - v4;
  v78 = _s10WalletPassVMa(0);
  v82 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v83 = v5;
  v84 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63210);
  MEMORY[0x1EEE9AC00](v85);
  v7 = (&v74 - v6);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63218);
  MEMORY[0x1EEE9AC00](v91);
  v86 = &v74 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63220);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v74 - v9;
  v81 = sub_190D543C0();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B170);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B178);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = _s8CellViewVMa_1(0);
  v94 = *(a1 + v18[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63208);
  sub_190D55FD0();
  v19 = v93;
  if (v93)
  {
    v81 = v15;
    v20 = _s23LPLinkViewRepresentableVMa_1(0);
    v21 = v7 + *(v20 + 20);
    v75 = a1;
    sub_190CF6F48(a1, v21, _s10WalletPassVMa);
    v76 = v18;
    v22 = *(a1 + v18[8]);
    *v7 = v19;
    *(v7 + *(v20 + 24)) = v22;
    LODWORD(v80) = *(a1 + v18[6]);
    LOBYTE(v20) = v80 ^ 1;
    *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63270) + 36)) = v20;
    v23 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63260) + 36);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1F8);
    v25 = v22;
    v77 = v19;
    sub_190D54490();
    sub_190D525D0();
    v27 = v26;
    v28 = sub_190D543E0();
    v29 = *(v28 + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_190D54A20();
    v32 = *(*(v31 - 8) + 104);
    v32(&v23[v29], v30, v31);
    *v23 = v27;
    *(v23 + 1) = v27;
    v23[*(v24 + 36)] = 0;
    v33 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63250) + 36);
    sub_190D544A0();
    sub_190D525D0();
    v35 = v34;
    v32(&v33[*(v28 + 20)], v30, v31);
    *v33 = v35;
    *(v33 + 1) = v35;
    v33[*(v24 + 36)] = 0;
    v36 = v84;
    *(v7 + *(v85 + 36)) = 0;
    v37 = v75;
    sub_190CF6F48(v75, v36, _s10WalletPassVMa);
    v38 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v39 = swift_allocObject();
    sub_190CF6FB0(v36, v39 + v38, _s10WalletPassVMa);
    sub_190CF6C60();
    v40 = v86;
    sub_190D55BB0();

    sub_19022EEA4(v7, &qword_1EAD63210);
    v41 = sub_190D564C0();
    v84 = v42;
    v85 = v41;
    v43 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63238) + 36)];
    v44 = v76;
    v45 = v40;
    if (*(v37 + v76[7]))
    {
      v46 = *(v37 + *(v78 + 32));
      sub_190D52BD0();
      swift_allocObject();
      v47 = v46;
      sub_190D52BE0();
      v48 = v79;
      sub_190D52BF0();
      sub_190D525C0();
      LOBYTE(v46) = sub_190D552B0();
      sub_190D539C0();
      v49 = v88;
      v50 = v48 + *(v88 + 36);
      *v50 = v46;
      v45 = v40;
      *(v50 + 8) = v51;
      *(v50 + 16) = v52;
      *(v50 + 24) = v53;
      *(v50 + 32) = v54;
      *(v50 + 40) = 0;
      sub_190A5FAF8(v48, v43);
      v55 = 0;
      v56 = v91;
      v57 = v90;
    }

    else
    {
      v55 = 1;
      v56 = v91;
      v57 = v90;
      v49 = v88;
    }

    (*(v87 + 56))(v43, v55, 1, v49);
    v67 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B208) + 36));
    v68 = v84;
    *v67 = v85;
    v67[1] = v68;
    v69 = *(v37 + v44[5]);
    v70 = sub_190D564D0();
    v71 = v45 + *(v56 + 36);
    *v71 = v69;
    *(v71 + 1) = v80;
    *(v71 + 8) = v70;
    *(v71 + 16) = v72;
    v65 = &qword_1EAD63218;
    sub_19022FD14(v45, v57, &qword_1EAD63218);
    swift_storeEnumTagMultiPayload();
    sub_190CF6AE0();
    sub_190A5F900();
    sub_190D54C50();

    v66 = v45;
  }

  else
  {
    sub_190D525D0();
    v59 = v58;
    v60 = *(sub_190D543E0() + 20);
    v61 = *MEMORY[0x1E697F468];
    v62 = sub_190D54A20();
    (*(*(v62 - 8) + 104))(&v14[v60], v61, v62);
    *v14 = v59;
    *(v14 + 1) = v59;
    sub_190D52600();
    sub_190D543B0();
    sub_190A5F33C();
    sub_190D55C40();
    (*(v80 + 8))(v11, v81);
    sub_19022EEA4(v14, &qword_1EAD5B170);
    sub_190D56500();
    sub_190D53C60();
    v63 = &v17[*(v15 + 36)];
    v64 = v95;
    *v63 = v94;
    *(v63 + 1) = v64;
    *(v63 + 2) = v96;
    v65 = &qword_1EAD5B178;
    sub_19022FD14(v17, v90, &qword_1EAD5B178);
    swift_storeEnumTagMultiPayload();
    sub_190CF6AE0();
    sub_190A5F900();
    sub_190D54C50();
    v66 = v17;
  }

  return sub_19022EEA4(v66, v65);
}

uint64_t sub_190CF662C(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_190CF66DC;

  return sub_190CF4450();
}

uint64_t sub_190CF66DC(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190CF6820, v3, v2);
}

uint64_t sub_190CF6820()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(_s8CellViewVMa_1(0) + 36));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63208);
  sub_190D55FE0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190CF68D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190CF5CB0(v2, a2);
  sub_190CF6F48(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s8CellViewVMa_1);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_190CF6FB0(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, _s8CellViewVMa_1);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63200) + 36));
  sub_190D53E20();
  result = sub_190D572C0();
  *v8 = &unk_190E05A10;
  v8[1] = v7;
  return result;
}

uint64_t sub_190CF6A14()
{
  v2 = *(_s8CellViewVMa_1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA4;

  return sub_190CF662C(v0 + v3);
}

unint64_t sub_190CF6AE0()
{
  result = qword_1EAD63228;
  if (!qword_1EAD63228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63218);
    sub_190CF6B6C();
    sub_190A5F8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63228);
  }

  return result;
}

unint64_t sub_190CF6B6C()
{
  result = qword_1EAD63230;
  if (!qword_1EAD63230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63210);
    sub_190CF6C60();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD5B200, &qword_1EAD5B208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63230);
  }

  return result;
}

unint64_t sub_190CF6C60()
{
  result = qword_1EAD63240;
  if (!qword_1EAD63240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63210);
    sub_190CF6D44(&qword_1EAD63248, &qword_1EAD63250, &unk_190E05A58, sub_190CF6DF4);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63240);
  }

  return result;
}

uint64_t sub_190CF6D44(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_190233640(&qword_1EAD5B1F0, &qword_1EAD5B1F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190CF6E24()
{
  result = qword_1EAD63268;
  if (!qword_1EAD63268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63270);
    sub_190CF6EE0(&qword_1EAD63278, _s23LPLinkViewRepresentableVMa_1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63268);
  }

  return result;
}

uint64_t sub_190CF6EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190CF6F48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190CF6FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_190CF7018()
{
  v1 = *(_s10WalletPassVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1909C954C(v2);
}

void sub_190CF70A0()
{
  sub_190CF713C();
  if (v0 <= 0x3F)
  {
    _s10WalletPassVMa(319);
    if (v1 <= 0x3F)
    {
      sub_190A5E2A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_190CF713C()
{
  result = qword_1EAD63290;
  if (!qword_1EAD63290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD63290);
  }

  return result;
}

unint64_t sub_190CF7188()
{
  result = qword_1EAD63298;
  if (!qword_1EAD63298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63200);
    sub_190CF7244();
    sub_190CF6EE0(&qword_1EAD52288, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63298);
  }

  return result;
}

unint64_t sub_190CF7244()
{
  result = qword_1EAD632A0;
  if (!qword_1EAD632A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD632A8);
    sub_190CF72C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD632A0);
  }

  return result;
}

unint64_t sub_190CF72C8()
{
  result = qword_1EAD632B0;
  if (!qword_1EAD632B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD632B8);
    sub_190CF6AE0();
    sub_190A5F900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD632B0);
  }

  return result;
}

uint64_t sub_190CF739C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ECC8]) initWithPresentationProperties:*v0 URL:0];
  [v1 bounds];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v5 = v0 + *(_s23LPLinkViewRepresentableVMa_1(0) + 20);
  v6 = *&v5[*(_s10WalletPassVMa(0) + 36)];
  if (!v6)
  {
    v14 = 0;
    goto LABEL_5;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_190CF7990;
  *(v8 + 24) = v7;
  v16[4] = sub_190233AFC;
  v16[5] = v8;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_190233A24;
  v16[3] = &block_descriptor_140;
  v9 = _Block_copy(v16);
  v10 = v1;
  sub_190D50920();

  v11 = [v4 imageWithActions_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v13 = *(v6 + 16);
    *(v6 + 16) = v11;

    v14 = sub_190CF7990;
LABEL_5:
    [v1 _setPreferredSizeClass_];
    sub_190D525D0();
    [v1 _setEffectiveCornerRadius_];
    v15 = sub_190D56ED0();
    [v1 _setAction_withText_buttonType_];

    sub_19022123C(v14);
    return v1;
  }

  __break(1u);
  return result;
}

void sub_190CF7620(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = _s10WalletPassVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 20);
  v9 = *(v2 + *(a1 + 24));
  sub_190CF6F48(v2 + v8, v7, _s10WalletPassVMa);
  v10 = v9;
  v11 = sub_190CF785C(v7, v9);

  *a2 = v11;
}

uint64_t sub_190CF76DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CF6EE0(&qword_1EAD632C0, _s23LPLinkViewRepresentableVMa_1);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190CF7770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190CF6EE0(&qword_1EAD632C0, _s23LPLinkViewRepresentableVMa_1);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190CF7804()
{
  sub_190CF6EE0(&qword_1EAD632C0, _s23LPLinkViewRepresentableVMa_1);
  sub_190D54C10();
  __break(1u);
}

id sub_190CF785C(uint64_t a1, void *a2)
{
  v14[3] = _s10WalletPassVMa(0);
  v14[4] = sub_190CF6EE0(&qword_1EAD555A0, _s10WalletPassVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_190CF6FB0(a1, boxed_opaque_existential_1, _s10WalletPassVMa);
  v5 = type metadata accessor for LPLinkViewRepresentableCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator;
  *&v6[OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_coordinator] = 0;
  v8 = OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_sizeCache;
  *&v6[v8] = sub_1908227B8(MEMORY[0x1E69E7CC0]);
  sub_19083B854(v14, &v6[OBJC_IVAR____TtC7ChatKit34LPLinkViewRepresentableCoordinator_queryResultItem]);
  v9 = *&v6[v7];
  *&v6[v7] = a2;
  v10 = a2;

  v13.receiver = v6;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

id sub_190CF7990()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

id sub_190CF79E0()
{
  v1 = OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_190CF7A40();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_190CF7A40()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v1) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v0 setContentHuggingPriority:1 forAxis:v4];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v6 = result;
    v7 = [result suggestedRepliesViewButtonTextColor];

    [v0 setTextColor_];
    [v0 setMinimumScaleFactor_];
    [v0 setAdjustsFontSizeToFitWidth_];
    v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v9 = [v8 fontDescriptorWithSymbolicTraits_];
    if (v9)
    {
      v10 = v9;

      v8 = v10;
    }

    v11 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];

    [v0 setFont_];
    [v0 setNumberOfLines_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_190CF7C40(uint64_t a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel] = 0;
  v46.receiver = v3;
  v46.super_class = type metadata accessor for CKSuggestedReplyButton();
  v4 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setIsAccessibilityElement_];
  [v4 setAccessibilityTraits_];
  v5 = sub_190D56ED0();
  [v4 setAccessibilityLabel_];

  v6 = sub_190CF79E0();
  v7 = sub_190D56ED0();
  [v6 setText_];

  v8 = OBJC_IVAR____TtC7ChatKit22CKSuggestedReplyButton____lazy_storage___titleLabel;
  [v4 addSubview_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_190DD86A0;
  v11 = [*&v4[v8] leadingAnchor];
  v12 = [v4 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v10 + 32) = v14;
  v15 = [*&v4[v8] trailingAnchor];
  v16 = [v4 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-12.0];

  *(v10 + 40) = v17;
  v18 = [*&v4[v8] topAnchor];
  v19 = [v4 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:12.0];

  *(v10 + 48) = v20;
  v21 = [*&v4[v8] bottomAnchor];
  v22 = [v4 bottomAnchor];

  v23 = [v21 constraintEqualToAnchor:v22 constant:-12.0];
  *(v10 + 56) = v23;
  sub_19086225C();
  v24 = sub_190D57160();

  v25 = v9;
  [v9 activateConstraints_];

  if ((a3 & 1) == 0)
  {

    return v4;
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [objc_opt_self() separatorColor];
  [v26 setBackgroundColor_];

  [v4 addSubview_];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v29 = result;

    [v29 defaultSeparatorHeight];
    v31 = v30;

    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_190DD86A0;
    v33 = [v26 leadingAnchor];
    v34 = [*&v4[v8] leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v32 + 32) = v35;
    v36 = [v26 trailingAnchor];
    v37 = [v4 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v32 + 40) = v38;
    v39 = [v26 bottomAnchor];
    v40 = [v4 bottomAnchor];
    v41 = [v39 constraintEqualToAnchor_];

    *(v32 + 48) = v41;
    v42 = [v26 heightAnchor];
    v43 = [v42 constraintEqualToConstant_];

    *(v32 + 56) = v43;
    v44 = sub_190D57160();

    [v25 activateConstraints_];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_190CF8340(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKSuggestedReplyButton();
  objc_msgSendSuper2(&v8, sel_setHighlighted_, a1 & 1);
  v3 = sub_190CF79E0();
  v4 = [v1 isHighlighted];
  v5 = 1.0;
  if (v4)
  {
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceStyle] == 2;

    v5 = *&qword_190DD1910[v7];
  }

  [v3 setAlpha_];
}

id sub_190CF85B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedReplyButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190CF8674()
{
  sub_190CF88F8(319, &qword_1EAD5E620, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_190CF883C();
    if (v1 <= 0x3F)
    {
      sub_190D53D60();
      if (v2 <= 0x3F)
      {
        sub_1908E1324();
        if (v3 <= 0x3F)
        {
          sub_190CF88F8(319, &qword_1EAD55F80, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_190CF88F8(319, &qword_1EAD632E0, &type metadata for ClarityUIEntryView.EntryState, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_190CF88A0();
              if (v6 <= 0x3F)
              {
                sub_190CF88F8(319, &qword_1EAD632F0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
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
}

void sub_190CF883C()
{
  if (!qword_1EAD5E628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55F20);
    v0 = sub_190D56250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5E628);
    }
  }
}

void sub_190CF88A0()
{
  if (!qword_1EAD632E8)
  {
    v0 = sub_190D53A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD632E8);
    }
  }
}

void sub_190CF88F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_190CF8964()
{
  v1 = v0[1];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_190D56FE0();
  return sub_190D57030();
}

BOOL sub_190CF89C8()
{
  v1 = [v0 softwareKeyboardEnabled];
  v2 = [v0 videoRecordingEnabled];
  v3 = [v0 emojiKeyboardEnabled];
  v4 = [v0 photoKeyboardEnabled];
  v5 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_19082E26C(0, 1, 1);
    v5 = v16;
    v10 = *(v16 + 16);
    v9 = *(v16 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_19082E26C((v9 > 1), v10 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v10 + 1;
    *(v5 + v10 + 32) = 1;
    if (!v2)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19082E26C(0, *(v5 + 16) + 1, 1);
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_19082E26C((v13 > 1), v14 + 1, 1);
      }

      *(v5 + 16) = v14 + 1;
      *(v5 + v14 + 32) = v3;
      if (v4)
      {
        goto LABEL_5;
      }

LABEL_23:
      v8 = *(v5 + 16);
      goto LABEL_24;
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19082E26C(0, *(v5 + 16) + 1, 1);
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_19082E26C((v11 > 1), v12 + 1, 1);
  }

  *(v5 + 16) = v12 + 1;
  *(v5 + v12 + 32) = v2;
  if (v3)
  {
    goto LABEL_18;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_19082E26C(0, *(v5 + 16) + 1, 1);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v7 + 1;
  if (v7 >= v6 >> 1)
  {
    sub_19082E26C((v6 > 1), v7 + 1, 1);
  }

  *(v5 + 16) = v8;
  *(v5 + v7 + 32) = v4;
LABEL_24:

  return v8 == 1;
}

uint64_t sub_190CF8C24()
{
  if (!sub_190CF89C8())
  {
    return 1;
  }

  if ([v0 softwareKeyboardEnabled])
  {
    return 2;
  }

  if ([v0 videoRecordingEnabled])
  {
    return 3;
  }

  if ([v0 emojiKeyboardEnabled])
  {
    return 4;
  }

  if ([v0 photoKeyboardEnabled])
  {
    return 5;
  }

  return 0;
}

uint64_t sub_190CF8CC8()
{
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190CF8D34@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-v6];
  v14[48] = a1;
  v14[16] = a1;
  sub_190D55F20();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v8 = sub_190D55D50();
    }

    else
    {
      v8 = sub_190D55DD0();
    }
  }

  else if (a1)
  {
    v8 = sub_190D55DB0();
  }

  else
  {
    v8 = sub_190D55D60();
  }

  v9 = v8;
  KeyPath = swift_getKeyPath();
  v15 = v9;
  v11 = sub_190D53C70();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C8);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  return result;
}

uint64_t sub_190CF8EF4@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = CKFrameworkBundle();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_190CF8FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

void sub_190CF9094()
{
  v0 = objc_opt_self();
  v1 = [v0 categoryIdentifierList];
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return;
  }

  v3 = v1;
  v4 = sub_190D57180();

  v24 = *(v4 + 16);
  if (!v24)
  {
LABEL_31:

    return;
  }

  v5 = 0;
  v23 = v4;
  v6 = v2;
  v22 = v0;
  while (v5 < *(v4 + 16))
  {
    sub_190D52690();
    v7 = sub_190D56ED0();
    v8 = [v0 categoryWithIdentifier_];

    if (!v8)
    {

      v15 = v2;
      goto LABEL_21;
    }

    v9 = [v8 emojiTokensForLocaleData_];
    if (!v9)
    {
      goto LABEL_38;
    }

    v10 = v9;

    sub_1902188FC(0, &unk_1EAD60850);
    v11 = sub_190D57180();

    if (v11 >> 62)
    {
      v12 = sub_190D581C0();
      if (!v12)
      {
LABEL_20:

        v15 = v2;
        v4 = v23;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    sub_190D58390();
    if (v12 < 0)
    {
      goto LABEL_36;
    }

    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AF3B90](v13, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      ++v13;
      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
    }

    while (v12 != v13);

    v15 = v2;
    v0 = v22;
    v4 = v23;
LABEL_21:
    v16 = *(v15 + 16);
    v17 = *(v6 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_33;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v6 + 24) >> 1, v18 < v17 + v16))
    {
      v6 = sub_190D58310();
      v18 = *(v6 + 24) >> 1;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (*(v15 + 16))
    {
      if (v18 - *(v6 + 16) < v16)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v19 = *(v6 + 16);
        v20 = __OFADD__(v19, v16);
        v21 = v19 + v16;
        if (v20)
        {
          goto LABEL_37;
        }

        *(v6 + 16) = v21;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_34;
      }
    }

    ++v5;

    if (v5 == v24)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_190CF93E4(uint64_t *a1@<X8>)
{
  v3 = [*v1 string];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D56F10();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_190CF9444()
{
  sub_1902188FC(0, &qword_1EAD60BE0);
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  qword_1EAD9E790 = result;
  return result;
}

uint64_t sub_190CF9490@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D53F10();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v35 - v7;
  v8 = type metadata accessor for ClarityUIEntryView(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63300);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  *v14 = sub_190D54AC0();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63308);
  sub_190CF996C(v2, &v14[*(v15 + 44)]);
  v16 = v2 + *(v9 + 56);
  v17 = *v16;
  v18 = *(v16 + 1);
  v41 = v17;
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FD0();
  v41 = v40;
  sub_190233640(&qword_1EAD63310, &qword_1EAD63300);
  sub_190D55C20();
  sub_19022EEA4(v14, &qword_1EAD63300);
  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63318);
  sub_190D579C0();

  sub_190D04754(v2, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v22 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v23 = swift_allocObject();
  sub_190D01078(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = (a1 + *(v21 + 56));
  *v24 = sub_190D010DC;
  v24[1] = v23;
  v25 = [v19 defaultCenter];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63320);
  sub_190D579C0();

  sub_190D04754(v2, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v27 = swift_allocObject();
  sub_190D01078(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v22);
  v28 = (a1 + *(v26 + 56));
  *v28 = sub_190D01300;
  v28[1] = v27;
  v29 = v36;
  sub_190D53F00();
  v30 = v38;
  v31 = v39;
  (*(v38 + 16))(v37, v29, v39);
  sub_190D057AC(&qword_1EAD63328, MEMORY[0x1E697E410]);
  v32 = v31;
  v33 = sub_190D53CF0();
  (*(v30 + 8))(v29, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63330);
  *(a1 + *(result + 36)) = v33;
  return result;
}

uint64_t sub_190CF996C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63340);
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v89 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63348);
  MEMORY[0x1EEE9AC00](v115);
  v105 = &v89 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63350);
  MEMORY[0x1EEE9AC00](v103);
  v91 = (&v89 - v5);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63358);
  MEMORY[0x1EEE9AC00](v99);
  v89 = &v89 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63360);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v89 - v7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63368);
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v89 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63370);
  MEMORY[0x1EEE9AC00](v95);
  v90 = (&v89 - v9);
  v10 = sub_190D53F10();
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v89 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63378);
  MEMORY[0x1EEE9AC00](v100);
  v16 = &v89 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63380);
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v89 - v17;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63388);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v89 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63390);
  MEMORY[0x1EEE9AC00](v94);
  v20 = (&v89 - v19);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63398);
  MEMORY[0x1EEE9AC00](v108);
  v98 = &v89 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633A0);
  MEMORY[0x1EEE9AC00](v113);
  v110 = &v89 - v22;
  v23 = type metadata accessor for ClarityUIEntryView(0);
  v106 = *(v23 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = a1;
  v27 = a1 + *(v25 + 36);
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v121) = v28;
  *(&v121 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63338);
  sub_190D55FD0();
  if (v120[0] > 2u)
  {
    if (v120[0] == 3)
    {
      v58 = v89;
      sub_190CFAD10(v89);
      sub_19022FD14(v58, v97, &qword_1EAD63358);
      swift_storeEnumTagMultiPayload();
      sub_190D03F78();
      sub_190D04174();
      v59 = v101;
      sub_190D54C50();
      sub_19022FD14(v59, v109, &qword_1EAD63368);
      swift_storeEnumTagMultiPayload();
      sub_190D03C10();
      sub_190D03EEC();
      v60 = v110;
      sub_190D54C50();
      sub_19022EEA4(v59, &qword_1EAD63368);
      sub_19022FD14(v60, v114, &qword_1EAD633A0);
      swift_storeEnumTagMultiPayload();
      sub_190D03B84();
      sub_190D0442C();
      sub_190D54C50();
      sub_19022EEA4(v60, &qword_1EAD633A0);
      v35 = v58;
      v36 = &qword_1EAD63358;
      return sub_19022EEA4(v35, v36);
    }

    if (v120[0] == 4)
    {
      v37 = sub_190D54AC0();
      v38 = v91;
      *v91 = v37;
      *(v38 + 8) = 0;
      *(v38 + 16) = 1;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63520);
      sub_190CFF2BC(a1, v38 + *(v39 + 44));
      *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633E0) + 36)) = 0;
      sub_190D53F00();
      v40 = v93;
      (*(v93 + 16))(v92, v14, v10);
      sub_190D057AC(&qword_1EAD63328, MEMORY[0x1E697E410]);
      v41 = sub_190D53CF0();
      (*(v40 + 8))(v14, v10);
      *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633D0) + 36)) = v41;
      sub_190D04754(v26, &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
      v42 = (*(v106 + 80) + 16) & ~*(v106 + 80);
      v43 = swift_allocObject();
      sub_190D01078(&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
      v44 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633C0) + 36));
      *v44 = sub_190D044B8;
      v44[1] = v43;
      v44[2] = 0;
      v44[3] = 0;
      sub_190D04754(v26, &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
      v45 = swift_allocObject();
      sub_190D01078(&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v42);
      v46 = v104;
      v47 = (v38 + *(v103 + 36));
      *v47 = 0;
      v47[1] = 0;
      v47[2] = sub_190D044D4;
      v47[3] = v45;
      v48 = &qword_1EAD63350;
      sub_19022FD14(v38, v46, &qword_1EAD63350);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633A8);
      sub_190D035F4();
      sub_190D038A8();
      v49 = v105;
      sub_190D54C50();
      v50 = &qword_1EAD63348;
      sub_19022FD14(v49, v114, &qword_1EAD63348);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_190D03B84();
      sub_190D0442C();
      sub_190D54C50();
      sub_19022EEA4(v49, v50);
      v35 = v38;
      v36 = v48;
      return sub_19022EEA4(v35, v36);
    }

    sub_190CFB1DC(&v121);
    v69 = v126[6];
    v70 = v104;
    *(v104 + 10) = v126[5];
    v70[11] = v69;
    v70[12] = v126[7];
    v71 = v126[2];
    v70[6] = v126[1];
    v70[7] = v71;
    v72 = v126[4];
    v70[8] = v126[3];
    v70[9] = v72;
    v73 = v124;
    v70[2] = v123;
    v70[3] = v73;
    v74 = v126[0];
    v70[4] = v125;
    v70[5] = v74;
    v75 = v122;
    *v70 = v121;
    v70[1] = v75;
    swift_storeEnumTagMultiPayload();
    v76 = &qword_1EAD633A8;
    sub_19022FD14(&v121, v120, &qword_1EAD633A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD633A8);
    sub_190D035F4();
    sub_190D038A8();
    v77 = v105;
    sub_190D54C50();
    v78 = &qword_1EAD63348;
    sub_19022FD14(v77, v114, &qword_1EAD63348);
LABEL_16:
    swift_storeEnumTagMultiPayload();
    sub_190D03B84();
    sub_190D0442C();
    sub_190D54C50();
    sub_19022EEA4(&v121, v76);
    v35 = v77;
    v36 = v78;
    return sub_19022EEA4(v35, v36);
  }

  if (!v120[0])
  {
    sub_190D04754(a1, &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
    v51 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v52 = swift_allocObject();
    sub_190D01078(&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51);
    sub_190D56500();
    sub_190D53C60();
    v53 = v128;
    v105 = v129;
    v106 = v127;
    v54 = v130;
    v103 = v132;
    v104 = v131;
    v55 = sub_190D552A0();
    v56 = [objc_opt_self() currentDevice];
    v57 = [v56 userInterfaceIdiom];

    if (v57 == 1)
    {
      sub_190D53D30();
      sub_190D542E0();
      sub_190D53D30();
    }

    else
    {
      sub_190D542D0();
    }

    v118 = v53;
    v117 = v54;
    sub_190D539C0();
    v119 = 0;
    *&v121 = sub_190D04528;
    *(&v121 + 1) = v52;
    *&v122 = v106;
    BYTE8(v122) = v118;
    *&v123 = v105;
    BYTE8(v123) = v117;
    *&v124 = v104;
    *(&v124 + 1) = v103;
    LOBYTE(v125) = v55;
    *(&v125 + 1) = v79;
    *&v126[0] = v80;
    *(&v126[0] + 1) = v81;
    *&v126[1] = v82;
    BYTE8(v126[1]) = 0;
    v83 = v122;
    *v20 = v121;
    v20[1] = v83;
    v84 = v123;
    v85 = v124;
    *(v20 + 89) = *(v126 + 9);
    v86 = v126[0];
    v20[4] = v125;
    v20[5] = v86;
    v20[2] = v84;
    v20[3] = v85;
    swift_storeEnumTagMultiPayload();
    v76 = &qword_1EAD63460;
    sub_19022FD14(&v121, v120, &qword_1EAD63460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63460);
    sub_190D03C9C();
    sub_190D03E08();
    v87 = v98;
    sub_190D54C50();
    sub_19022FD14(v87, v109, &qword_1EAD63398);
    swift_storeEnumTagMultiPayload();
    sub_190D03C10();
    sub_190D03EEC();
    v77 = v110;
    sub_190D54C50();
    sub_19022EEA4(v87, &qword_1EAD63398);
    v78 = &qword_1EAD633A0;
    sub_19022FD14(v77, v114, &qword_1EAD633A0);
    goto LABEL_16;
  }

  if (v120[0] != 1)
  {
    v61 = sub_190D54AC0();
    v38 = v90;
    *v90 = v61;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63528);
    sub_190CFD53C(a1, v38 + *(v62 + 44));
    *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD634C0) + 36)) = 0;
    sub_190D04754(a1, &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
    v63 = (*(v106 + 80) + 16) & ~*(v106 + 80);
    v64 = swift_allocObject();
    sub_190D01078(&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v64 + v63);
    v65 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD634B0) + 36));
    *v65 = sub_190D044F0;
    v65[1] = v64;
    v65[2] = 0;
    v65[3] = 0;
    sub_190D04754(a1, &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
    v66 = swift_allocObject();
    sub_190D01078(&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v66 + v63);
    v67 = (v38 + *(v95 + 36));
    *v67 = 0;
    v67[1] = 0;
    v67[2] = sub_190D0450C;
    v67[3] = v66;
    v48 = &qword_1EAD63370;
    sub_19022FD14(v38, v97, &qword_1EAD63370);
    swift_storeEnumTagMultiPayload();
    sub_190D03F78();
    sub_190D04174();
    v68 = v101;
    sub_190D54C50();
    sub_19022FD14(v68, v109, &qword_1EAD63368);
    swift_storeEnumTagMultiPayload();
    sub_190D03C10();
    sub_190D03EEC();
    v49 = v110;
    sub_190D54C50();
    sub_19022EEA4(v68, &qword_1EAD63368);
    v50 = &qword_1EAD633A0;
    sub_19022FD14(v49, v114, &qword_1EAD633A0);
    goto LABEL_12;
  }

  *v16 = sub_190D54AC0();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63530);
  sub_190CFBC44(a1, &v16[*(v30 + 44)]);
  sub_190D53F00();
  v31 = v93;
  (*(v93 + 16))(v92, v14, v10);
  sub_190D057AC(&qword_1EAD63328, MEMORY[0x1E697E410]);
  v32 = sub_190D53CF0();
  (*(v31 + 8))(v14, v10);
  *&v16[*(v100 + 36)] = v32;
  sub_19022FD14(v16, v20, &qword_1EAD63378);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63460);
  sub_190D03C9C();
  sub_190D03E08();
  v33 = v98;
  sub_190D54C50();
  sub_19022FD14(v33, v109, &qword_1EAD63398);
  swift_storeEnumTagMultiPayload();
  sub_190D03C10();
  sub_190D03EEC();
  v34 = v110;
  sub_190D54C50();
  sub_19022EEA4(v33, &qword_1EAD63398);
  sub_19022FD14(v34, v114, &qword_1EAD633A0);
  swift_storeEnumTagMultiPayload();
  sub_190D03B84();
  sub_190D0442C();
  sub_190D54C50();
  sub_19022EEA4(v34, &qword_1EAD633A0);
  v35 = v16;
  v36 = &qword_1EAD63378;
  return sub_19022EEA4(v35, v36);
}

uint64_t sub_190CFAC50()
{
  if (qword_1EAD52148 != -1)
  {
    swift_once();
  }

  sub_190CF8C24();
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63338);
  return sub_190D55FE0();
}

uint64_t sub_190CFAD10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D53F10();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = v37 - v6;
  v7 = type metadata accessor for ClarityUIEntryView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v38 = type metadata accessor for ClarityUIEntryView;
  v39 = v37 - v12;
  sub_190D04754(v1, v37 - v12, type metadata accessor for ClarityUIEntryView);
  v14 = *(v8 + 80);
  v15 = (v14 + 16) & ~v14;
  v37[1] = v9;
  v37[2] = v14;
  v16 = swift_allocObject();
  sub_190D01078(v13, v16 + v15);
  v17 = v1;
  sub_190D04754(v1, v10, type metadata accessor for ClarityUIEntryView);
  v18 = swift_allocObject();
  sub_190D01078(v10, v18 + v15);
  v19 = type metadata accessor for ClarityCameraView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  sub_190D56220();
  *a1 = sub_190BDE7D8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_190D045C0;
  *(a1 + 32) = v16;
  *(a1 + 40) = sub_190D04880;
  *(a1 + 48) = v18;
  v20 = a1 + v19[8];
  LOBYTE(v44) = 0;
  sub_190D55FC0();
  v21 = *(&v45 + 1);
  *v20 = v45;
  *(v20 + 8) = v21;
  v22 = v19[9];
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F7F0);
  sub_190D55FC0();
  *(a1 + v22) = v45;
  v23 = a1 + v19[10];
  LOBYTE(v44) = 0;
  sub_190D55FC0();
  v24 = *(&v45 + 1);
  *v23 = v45;
  *(v23 + 8) = v24;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63508) + 36)) = 0;
  v25 = v40;
  sub_190D53F00();
  v26 = v42;
  v27 = v43;
  (*(v42 + 16))(v41, v25, v43);
  sub_190D057AC(&qword_1EAD63328, MEMORY[0x1E697E410]);
  v28 = v27;
  v29 = sub_190D53CF0();
  (*(v26 + 8))(v25, v28);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD634F8) + 36)) = v29;
  v31 = v38;
  v30 = v39;
  sub_190D04754(v17, v39, v38);
  v32 = swift_allocObject();
  sub_190D01078(v30, v32 + v15);
  v33 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD634E8) + 36));
  *v33 = sub_190D05DF0;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
  sub_190D04754(v17, v30, v31);
  v34 = swift_allocObject();
  sub_190D01078(v30, v34 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63358);
  v36 = (a1 + *(result + 36));
  *v36 = 0;
  v36[1] = 0;
  v36[2] = sub_190D05DF4;
  v36[3] = v34;
  return result;
}

double sub_190CFB1DC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_190D53F10();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v32 - v6;
  v7 = type metadata accessor for ClarityUIEntryView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_190D04754(v1, &v32 - v15, type metadata accessor for ClarityUIEntryView);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v33 = swift_allocObject();
  sub_190D01078(v16, v33 + v17);
  v34 = v1;
  sub_190D04754(v1, v13, type metadata accessor for ClarityUIEntryView);
  v18 = swift_allocObject();
  sub_190D01078(v13, v18 + v17);
  sub_190D04754(v1, v10, type metadata accessor for ClarityUIEntryView);
  v19 = swift_allocObject();
  sub_190D01078(v10, v19 + v17);
  sub_1909F51B0(sub_190D04BB4, v33, sub_190D045C0, v18, sub_190D04C4C, v19, v39);
  v20 = v35;
  sub_190D53F00();
  v21 = v37;
  v22 = v38;
  (*(v37 + 16))(v36, v20, v38);
  sub_190D057AC(&qword_1EAD63328, MEMORY[0x1E697E410]);
  v23 = sub_190D53CF0();
  (*(v21 + 8))(v20, v22);
  v24 = v34;
  sub_190D04754(v34, v16, type metadata accessor for ClarityUIEntryView);
  v25 = swift_allocObject();
  sub_190D01078(v16, v25 + v17);
  sub_190D04754(v24, v16, type metadata accessor for ClarityUIEntryView);
  v26 = swift_allocObject();
  sub_190D01078(v16, v26 + v17);
  v27 = v39[5];
  *(a1 + 64) = v39[4];
  *(a1 + 80) = v27;
  v28 = v39[7];
  *(a1 + 96) = v39[6];
  *(a1 + 112) = v28;
  v29 = v39[1];
  *a1 = v39[0];
  *(a1 + 16) = v29;
  v30 = v39[3];
  *(a1 + 32) = v39[2];
  *(a1 + 48) = v30;
  *(a1 + 128) = 0;
  *(a1 + 136) = v23;
  *(a1 + 144) = sub_190D05DF0;
  *(a1 + 152) = v25;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = sub_190D04CD8;
  *(a1 + 200) = v26;
  return result;
}

void sub_190CFB5FC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled_];
}

uint64_t sub_190CFB66C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_190D50FB0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_190CFB790(v4, 1);
  return sub_19022EEA4(v4, &qword_1EAD60C00);
}

uint64_t sub_190CFB790(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  sub_19022FD14(a1, v25 - v7, &qword_1EAD60C00);
  v9 = sub_190D50FB0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19022EEA4(v8, &qword_1EAD60C00);
LABEL_12:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_13;
  }

  v11 = sub_190D50FA0();
  (*(v10 + 8))(v8, v9);
  if (!v11)
  {
    goto LABEL_12;
  }

  v25[1] = sub_190D56F10();
  v25[2] = v12;
  sub_190D58230();
  if (!*(v11 + 16) || (v13 = sub_190875C84(&v26), (v14 & 1) == 0))
  {

    sub_19084CFD0(&v26);
    goto LABEL_12;
  }

  sub_19021834C(*(v11 + 56) + 32 * v13, &v28);
  sub_19084CFD0(&v26);

  if (*(&v29 + 1))
  {
    sub_1902188FC(0, &qword_1EAD46510);
    if (swift_dynamicCast())
    {
      v15 = v26;
      [v26 doubleValue];
      v17 = v16;
      v18 = v3 + *(type metadata accessor for ClarityUIEntryView(0) + 44);
      v19 = *(v18 + 8);
      v26 = *v18;
      v27 = v19;
      *&v28 = v17;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569E8);
      sub_190D55FE0();
    }

    if ((a2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_13:
  sub_19022EEA4(&v28, &unk_1EAD551C0);
  if ((a2 & 1) == 0)
  {
LABEL_14:
    v20 = [objc_opt_self() isInHardwareKeyboardMode];
    goto LABEL_15;
  }

LABEL_10:
  v20 = 1;
LABEL_15:
  v21 = (v3 + *(type metadata accessor for ClarityUIEntryView(0) + 32));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v26) = v22;
  v27 = v23;
  LOBYTE(v28) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

uint64_t sub_190CFBAA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  result = [objc_opt_self() isInHardwareKeyboardMode];
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v10[-16] = a2;
    sub_190D565A0();
    sub_190D53E40();

    v8 = sub_190D50FB0();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v6, a1, v8);
    (*(v9 + 56))(v6, 0, 1, v8);
    sub_190CFB790(v6, 0);
    return sub_19022EEA4(v6, &qword_1EAD60C00);
  }

  return result;
}

uint64_t sub_190CFBC44@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63538);
  MEMORY[0x1EEE9AC00](v84);
  v4 = &v82[-v3];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63540);
  MEMORY[0x1EEE9AC00](v89);
  v96 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v82[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v82[-v9];
  v10 = type metadata accessor for ClarityUIEntryView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_190D04754(a1, &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ClarityUIEntryView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v94 = swift_allocObject();
  sub_190D01078(&v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v94 + v13);
  sub_190D56500();
  sub_190D53C60();
  v14 = v143;
  v15 = v144;
  v16 = v145;
  v93 = v146;
  v99 = v142;
  v100 = v147;
  v91 = sub_190D552A0();
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1)
  {
    sub_190D53D30();
    sub_190D542E0();
    sub_190D53D30();
  }

  else
  {
    sub_190D542D0();
  }

  v134 = v14;
  v133 = v16;
  sub_190D539C0();
  v87 = v20;
  v88 = v19;
  v85 = v22;
  v86 = v21;
  v97 = v134;
  v23 = v133;
  v140 = 0;
  v98 = sub_190D552D0();
  sub_190D539C0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v141 = 0;
  *v4 = sub_190D54AC0();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63548);
  sub_190CFC520(a1, &v4[*(v32 + 44)]);
  v33 = sub_190D552C0();
  sub_190D54290();
  sub_190D539C0();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63550) + 36)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = sub_190D552A0();
  sub_190D539C0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63558) + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = sub_190D55D20();
  v54 = sub_190D552B0();
  v55 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63560) + 36)];
  *v55 = v53;
  v55[8] = v54;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63568) + 36)] = 256;
  v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63570) + 36)] = 0;
  v56 = sub_190D54240();
  v57 = sub_190D552B0();
  v58 = &v4[*(v84 + 36)];
  *v58 = v56;
  v58[8] = v57;
  sub_190D53D30();
  sub_190D56500();
  v83 = v23;
  sub_190D54430();
  v59 = v90;
  sub_19081E40C(v4, v90, &qword_1EAD63538);
  v60 = (v59 + *(v89 + 36));
  v61 = v153;
  v60[4] = v152;
  v60[5] = v61;
  v60[6] = v154;
  v62 = v149;
  *v60 = v148;
  v60[1] = v62;
  v63 = v151;
  v60[2] = v150;
  v60[3] = v63;
  v64 = v95;
  sub_19081E40C(v59, v95, &qword_1EAD63540);
  v65 = v96;
  sub_19022FD14(v64, v96, &qword_1EAD63540);
  v90 = sub_190D045C0;
  v66 = v94;
  *&v101 = sub_190D045C0;
  *(&v101 + 1) = v94;
  *&v102 = v99;
  BYTE8(v102) = v97;
  *(&v102 + 9) = *v139;
  HIDWORD(v102) = *&v139[3];
  *&v103 = v15;
  BYTE8(v103) = v23;
  *(&v103 + 9) = *v138;
  HIDWORD(v103) = *&v138[3];
  v67 = v93;
  v89 = v15;
  *&v104 = v93;
  *(&v104 + 1) = v100;
  v68 = v91;
  LOBYTE(v105) = v91;
  DWORD1(v105) = *&v137[3];
  *(&v105 + 1) = *v137;
  v70 = v87;
  v69 = v88;
  *(&v105 + 1) = v88;
  *&v106 = v87;
  v72 = v85;
  v71 = v86;
  *(&v106 + 1) = v86;
  *&v107 = v85;
  BYTE8(v107) = 0;
  *(&v107 + 9) = *v136;
  HIDWORD(v107) = *&v136[3];
  LOBYTE(v108) = v98;
  *(&v108 + 1) = *v135;
  DWORD1(v108) = *&v135[3];
  *(&v108 + 1) = v25;
  *&v109[0] = v27;
  *(&v109[0] + 1) = v29;
  *&v109[1] = v31;
  BYTE8(v109[1]) = 0;
  v73 = v102;
  v74 = v92;
  *v92 = v101;
  v74[1] = v73;
  v75 = v106;
  v74[4] = v105;
  v74[5] = v75;
  v76 = v104;
  v74[2] = v103;
  v74[3] = v76;
  v77 = v107;
  v78 = v108;
  v79 = v109[0];
  *(v74 + 137) = *(v109 + 9);
  v74[7] = v78;
  v74[8] = v79;
  v74[6] = v77;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63578);
  sub_19022FD14(v65, v74 + *(v80 + 48), &qword_1EAD63540);
  sub_19022FD14(&v101, v110, &qword_1EAD63580);
  sub_19022EEA4(v64, &qword_1EAD63540);
  sub_19022EEA4(v65, &qword_1EAD63540);
  v110[0] = v90;
  v110[1] = v66;
  v110[2] = v99;
  v111 = v97;
  *v112 = *v139;
  *&v112[3] = *&v139[3];
  v113 = v89;
  v114 = v83;
  *v115 = *v138;
  *&v115[3] = *&v138[3];
  v116 = v67;
  v117 = v100;
  v118 = v68;
  *&v119[3] = *&v137[3];
  *v119 = *v137;
  v120 = v69;
  v121 = v70;
  v122 = v71;
  v123 = v72;
  v124 = 0;
  *v125 = *v136;
  *&v125[3] = *&v136[3];
  v126 = v98;
  *v127 = *v135;
  *&v127[3] = *&v135[3];
  v128 = v25;
  v129 = v27;
  v130 = v29;
  v131 = v31;
  v132 = 0;
  return sub_19022EEA4(v110, &qword_1EAD63580);
}

uint64_t sub_190CFC4A8()
{
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63338);
  return sub_190D55FE0();
}

uint64_t sub_190CFC520@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63588);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for ClarityUIEntryView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_190D04754(a1, &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v52 = swift_allocObject();
  sub_190D01078(&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v12);
  v51 = sub_190D552D0();
  sub_190D54290();
  sub_190D539C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v50 = sub_190D552A0();
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22 == 1)
  {
    sub_190D53D30();
    sub_190D542E0();
    sub_190D53D30();
  }

  else
  {
    sub_190D542D0();
  }

  v54 = 0;
  v23 = sub_190D539C0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v54;
  v48 = v54;
  v74 = 0;
  MEMORY[0x1EEE9AC00](v23);
  *(&v46 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63590);
  sub_190233640(&qword_1EAD63598, &qword_1EAD63590);
  sub_190D554D0();
  v33 = *(v4 + 16);
  v34 = v53;
  v33(v53, v8, v3);
  *&v55 = sub_190D045C0;
  v47 = v8;
  v35 = v52;
  *(&v55 + 1) = v52;
  v36 = v51;
  LOBYTE(v56) = v51;
  *(&v56 + 1) = v14;
  *&v57 = v16;
  *(&v57 + 1) = v18;
  *&v58 = v20;
  BYTE8(v58) = v32;
  v37 = v50;
  LOBYTE(v59) = v50;
  *(&v59 + 1) = v25;
  *&v60[0] = v27;
  *(&v60[0] + 1) = v29;
  *&v60[1] = v31;
  BYTE8(v60[1]) = 0;
  v38 = v56;
  v39 = v49;
  *v49 = v55;
  v39[1] = v38;
  v40 = v57;
  v41 = v58;
  *(v39 + 89) = *(v60 + 9);
  v42 = v60[0];
  v39[4] = v59;
  v39[5] = v42;
  v39[2] = v40;
  v39[3] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635A0);
  v33(v39 + *(v43 + 48), v34, v3);
  sub_19022FD14(&v55, v61, &qword_1EAD635A8);
  v44 = *(v4 + 8);
  v44(v47, v3);
  v44(v34, v3);
  v61[0] = sub_190D045C0;
  v61[1] = v35;
  v62 = v36;
  v63 = v14;
  v64 = v16;
  v65 = v18;
  v66 = v20;
  v67 = v48;
  v68 = v37;
  v69 = v25;
  v70 = v27;
  v71 = v29;
  v72 = v31;
  v73 = 0;
  return sub_19022EEA4(v61, &qword_1EAD635A8);
}

uint64_t sub_190CFCA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v70 = a2;
  v2 = type metadata accessor for ClarityUIEntryView(0);
  v74 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = v3;
  v76 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  if (qword_1EAD52148 != -1)
  {
    swift_once();
  }

  v25 = qword_1EAD9E790;
  v26 = [qword_1EAD9E790 softwareKeyboardEnabled];
  v72 = v5;
  if (v26)
  {
    v27 = v76;
    sub_190D04754(v77, v76, type metadata accessor for ClarityUIEntryView);
    v28 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v29 = swift_allocObject();
    sub_190D01078(v27, v29 + v28);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_190D04728;
    *(v30 + 24) = v29;
    MEMORY[0x1EEE9AC00](v30);
    *(&v66 - 16) = 0;
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C8);
    sub_190D0460C();
    v31 = v78;
    v5 = v72;
    sub_190D56030();

    (*(v5 + 32))(v24, v31, v4);
    v32 = *(v5 + 56);
    v32(v24, 0, 1, v4);
  }

  else
  {
    v32 = *(v5 + 56);
    v32(v24, 1, 1, v4);
  }

  v33 = [v25 videoRecordingEnabled];
  v34 = 1;
  v71 = v32;
  if (v33)
  {
    v35 = v76;
    sub_190D04754(v77, v76, type metadata accessor for ClarityUIEntryView);
    v36 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v37 = swift_allocObject();
    sub_190D01078(v35, v37 + v36);
    v38 = swift_allocObject();
    *(v38 + 16) = sub_190D0470C;
    *(v38 + 24) = v37;
    MEMORY[0x1EEE9AC00](v38);
    *(&v66 - 16) = 1;
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C8);
    sub_190D0460C();
    v39 = v78;
    v5 = v72;
    sub_190D56030();

    v40 = v39;
    v32 = v71;
    (*(v5 + 32))(v21, v40, v4);
    v34 = 0;
  }

  v79 = v24;
  v41 = 1;
  v32(v21, v34, 1, v4);
  if ([v25 emojiKeyboardEnabled])
  {
    v42 = v76;
    sub_190D04754(v77, v76, type metadata accessor for ClarityUIEntryView);
    v43 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v44 = swift_allocObject();
    sub_190D01078(v42, v44 + v43);
    v45 = swift_allocObject();
    *(v45 + 16) = sub_190D046F0;
    *(v45 + 24) = v44;
    MEMORY[0x1EEE9AC00](v45);
    *(&v66 - 16) = 2;
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C8);
    sub_190D0460C();
    v46 = v78;
    v5 = v72;
    sub_190D56030();

    v47 = v46;
    v32 = v71;
    (*(v5 + 32))(v81, v47, v4);
    v41 = 0;
  }

  v48 = 1;
  v32(v81, v41, 1, v4);
  if ([v25 photoKeyboardEnabled])
  {
    v49 = v76;
    sub_190D04754(v77, v76, type metadata accessor for ClarityUIEntryView);
    v50 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v51 = v21;
    v52 = swift_allocObject();
    sub_190D01078(v49, v52 + v50);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_190D045E0;
    *(v53 + 24) = v52;
    MEMORY[0x1EEE9AC00](v53);
    *(&v66 - 16) = 3;
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C8);
    sub_190D0460C();
    v54 = v78;
    v32 = v71;
    sub_190D56030();
    v21 = v51;

    (*(v5 + 32))(v73, v54, v4);
    v48 = 0;
  }

  v55 = v73;
  v32(v73, v48, 1, v4);
  v56 = v80;
  sub_19022FD14(v79, v80, &qword_1EAD635B8);
  v57 = v67;
  sub_19022FD14(v21, v67, &qword_1EAD635B8);
  v58 = v81;
  v59 = v68;
  sub_19022FD14(v81, v68, &qword_1EAD635B8);
  v60 = v69;
  sub_19022FD14(v55, v69, &qword_1EAD635B8);
  v61 = v56;
  v62 = v70;
  sub_19022FD14(v61, v70, &qword_1EAD635B8);
  v63 = v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635C0);
  sub_19022FD14(v57, v62 + v64[12], &qword_1EAD635B8);
  sub_19022FD14(v59, v62 + v64[16], &qword_1EAD635B8);
  sub_19022FD14(v60, v62 + v64[20], &qword_1EAD635B8);
  sub_19022EEA4(v55, &qword_1EAD635B8);
  sub_19022EEA4(v58, &qword_1EAD635B8);
  sub_19022EEA4(v63, &qword_1EAD635B8);
  sub_19022EEA4(v79, &qword_1EAD635B8);
  sub_19022EEA4(v60, &qword_1EAD635B8);
  sub_19022EEA4(v59, &qword_1EAD635B8);
  sub_19022EEA4(v57, &qword_1EAD635B8);
  return sub_19022EEA4(v80, &qword_1EAD635B8);
}

uint64_t sub_190CFD4C8()
{
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63338);
  return sub_190D55FE0();
}

uint64_t sub_190CFD53C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for ClarityUIEntryView(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v4;
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D543E0();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635E0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  sub_190D542B0();
  v16 = v15;
  v17 = *(v6 + 28);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_190D54A20();
  (*(*(v19 - 8) + 104))(&v8[v17], v18, v19);
  *v8 = v16;
  *(v8 + 1) = v16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635E8);
  v21 = v20[14];
  *&v14[v21] = sub_190D55D90();
  *&v14[v20[15]] = 1056964608;
  *&v14[v20[16]] = 0x4010000000000000;
  *&v14[v20[17]] = 0x4000000000000000;
  sub_190D04754(v8, v14, MEMORY[0x1E697EAF0]);
  v22 = &v14[v20[13]];
  *v22 = sub_190D56500();
  *(v22 + 1) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635F0);
  sub_190CFDB8C(a1, &v22[*(v24 + 44)]);
  sub_190D56500();
  sub_190D53C60();
  sub_1909586B8(v8);
  v25 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635F8) + 36)];
  v26 = v79[3];
  *v25 = v79[2];
  *(v25 + 1) = v26;
  *(v25 + 2) = v79[4];
  LOBYTE(v20) = sub_190D552B0();
  sub_190D539C0();
  v27 = &v14[*(v10 + 44)];
  *v27 = v20;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  if ([objc_opt_self() isInHardwareKeyboardMode])
  {
    v48 = sub_190D54AC0();
    LOBYTE(v64) = 1;
    v47 = sub_190D548D0();
    v32 = v51;
    sub_190D04754(a1, v51, type metadata accessor for ClarityUIEntryView);
    v33 = (*(v49 + 80) + 16) & ~*(v49 + 80);
    v49 = swift_allocObject();
    sub_190D01078(v32, v49 + v33);
    sub_190D04754(a1, v32, type metadata accessor for ClarityUIEntryView);
    v34 = swift_allocObject();
    sub_190D01078(v32, v34 + v33);
    LODWORD(v51) = sub_190D552B0();
    LOBYTE(v55) = 1;
    v54 = 1;
    LOBYTE(v32) = v64;
    v35 = sub_190D55D20();
    v36 = sub_190D552B0();
    v37 = sub_190D54240();
    v38 = sub_190D552B0();
    v73 = v48;
    LOBYTE(v74) = v32;
    *(&v74 + 1) = v47;
    *&v75 = 0;
    BYTE8(v75) = 1;
    *&v76 = sub_190D047DC;
    *(&v76 + 1) = v49;
    *&v77 = sub_190D047F4;
    *(&v77 + 1) = v34;
    LOBYTE(v78[0]) = v51;
    *(v78 + 8) = 0u;
    *(&v78[1] + 8) = 0u;
    BYTE8(v78[2]) = 1;
    *&v79[0] = v35;
    BYTE8(v79[0]) = v36;
    *(v79 + 9) = 256;
    *&v79[1] = v37;
    BYTE8(v79[1]) = v38;
    nullsub_10(&v73);
    v86 = v78[1];
    v87 = v78[2];
    v88[0] = v79[0];
    *(v88 + 9) = *(v79 + 9);
    v82 = v75;
    v83 = v76;
    v84 = v77;
    v85 = v78[0];
    v80 = v73;
    v81 = v74;
  }

  else
  {
    sub_190D047BC(&v80);
  }

  v39 = v53;
  sub_19022FD14(v14, v53, &qword_1EAD635E0);
  v61 = v86;
  v62 = v87;
  v63[0] = v88[0];
  *(v63 + 9) = *(v88 + 9);
  v57 = v82;
  v58 = v83;
  v59 = v84;
  v60 = v85;
  v55 = v80;
  v56 = v81;
  v40 = v52;
  sub_19022FD14(v39, v52, &qword_1EAD635E0);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63600) + 48));
  v70 = v61;
  v71 = v62;
  v72[0] = v63[0];
  *(v72 + 9) = *(v63 + 9);
  v68 = v59;
  v69 = v60;
  v66 = v57;
  v67 = v58;
  v64 = v55;
  v65 = v56;
  sub_19022FD14(&v64, &v73, &qword_1EAD63608);
  sub_19022EEA4(v14, &qword_1EAD635E0);
  v42 = v71;
  v41[6] = v70;
  v41[7] = v42;
  v41[8] = v72[0];
  *(v41 + 137) = *(v72 + 9);
  v43 = v67;
  v41[2] = v66;
  v41[3] = v43;
  v44 = v69;
  v41[4] = v68;
  v41[5] = v44;
  v45 = v65;
  *v41 = v64;
  v41[1] = v45;
  v78[1] = v61;
  v78[2] = v62;
  v79[0] = v63[0];
  *(v79 + 9) = *(v63 + 9);
  v75 = v57;
  v76 = v58;
  v77 = v59;
  v78[0] = v60;
  v73 = v55;
  v74 = v56;
  sub_19022EEA4(&v73, &qword_1EAD63608);
  return sub_19022EEA4(v39, &qword_1EAD635E0);
}

uint64_t sub_190CFDB8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63610);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63618);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63620);
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v49 = *a1;
  v48 = a1[1];
  v47 = a1[2];
  v46 = a1[3];
  v59 = v49;
  v60 = v48;
  v61 = v47;
  v62 = v46;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  sub_190D56220();
  v59 = v64;
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v63 = xmmword_190E05BA0;
  v44 = type metadata accessor for ClarityUIEntryView(0);
  v16 = a1 + *(v44 + 40);
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v16) = v16[16];
  LOBYTE(v64) = v17;
  v65 = v18;
  LOBYTE(v66) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635D8);
  sub_190D539E0();
  sub_190D0480C();
  v51 = v14;
  sub_190D55BC0();

  v59 = v49;
  v60 = v48;
  v61 = v47;
  v62 = v46;
  MEMORY[0x193AF1A80](&v64, v15);
  v20 = v64;
  v19 = v65;

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = 1;
    v23 = v53;
    v24 = v50;
  }

  else
  {
    v25 = a1 + *(v44 + 32);
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v59) = v26;
    v60 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    sub_190D55FD0();
    v28 = v64;
    KeyPath = swift_getKeyPath();
    v30 = type metadata accessor for Placeholder(0);
    v31 = v45;
    *&v45[v30[6]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
    swift_storeEnumTagMultiPayload();
    *v31 = v28;
    v31[1] = 0;
    *&v31[v30[7]] = 0x402C000000000000;
    *&v31[v30[8]] = 0x4018000000000000;
    v32 = v53;
    v31[*(v53 + 36)] = 0;
    v24 = v50;
    sub_19081E40C(v31, v50, &qword_1EAD63610);
    v22 = 0;
    v23 = v32;
  }

  (*(v54 + 56))(v24, v22, 1, v23);
  v34 = v55;
  v33 = v56;
  v35 = *(v55 + 16);
  v36 = v51;
  v37 = v52;
  v35(v52, v51, v56);
  v38 = v57;
  sub_19022FD14(v24, v57, &qword_1EAD63618);
  v39 = v58;
  v35(v58, v37, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63630);
  sub_19022FD14(v38, &v39[*(v40 + 48)], &qword_1EAD63618);
  sub_19022EEA4(v24, &qword_1EAD63618);
  v41 = *(v34 + 8);
  v41(v36, v33);
  sub_19022EEA4(v38, &qword_1EAD63618);
  return (v41)(v37, v33);
}

uint64_t sub_190CFE0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  sub_190D56200();
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190CFE1A4()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1EAD9E340 object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  return sub_190D56200();
}

uint64_t sub_190CFE27C()
{
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD635D8);
  sub_190D539D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

uint64_t sub_190CFE344(uint64_t a1)
{
  v2 = type metadata accessor for ClarityUIEntryView(0);
  (*(a1 + *(v2 + 28)))();
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190CFE3D0()
{
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  return sub_190D55FE0();
}

void sub_190CFE5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v41 = a1;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  v9 = sub_190D51840();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = [v22 URLsForDirectory:9 inDomains:1];

  v24 = sub_190D57180();
  if (*(v24 + 16))
  {
    v35 = v6;
    v25 = v24 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v34 = *(v13 + 16);
    v34(v18, v25, v12);

    (*(v13 + 32))(v21, v18, v12);
    sub_190CFECB8();
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_190D582B0();
    MEMORY[0x193AF28B0](0x64657463656C6573, 0xEF5F6F746F68705FLL);
    sub_190D51830();
    sub_190D517C0();
    (*(v37 + 8))(v11, v38);
    sub_190D573D0();
    MEMORY[0x193AF28B0](95, 0xE100000000000000);
    MEMORY[0x193AF28B0](v39, v40);
    sub_190D51590();

    v26 = v43;
    sub_190D51690();
    if (!v26)
    {
      v27 = v36;
      v34(v36, v15, v12);
      (*(v13 + 56))(v27, 0, 1, v12);
      type metadata accessor for ClarityUIEntryView(0);
      sub_19022FD14(v27, v35, &unk_1EAD55F20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
      sub_190D56200();
      sub_19022EEA4(v27, &unk_1EAD55F20);
    }

    v28 = *(v13 + 8);
    v28(v15, v12);
    v28(v21, v12);
  }

  else
  {

    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v29 = sub_190D53040();
    __swift_project_value_buffer(v29, qword_1EAD9E058);
    v30 = sub_190D53020();
    v31 = sub_190D576A0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_19020E000, v30, v31, "Could not access documents directory", v32, 2u);
      MEMORY[0x193AF7A40](v32, -1, -1);
    }
  }
}

uint64_t sub_190CFEB3C()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1EAD9E340 object:0];

  MEMORY[0x1EEE9AC00](v1);
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190CFEC40()
{
  type metadata accessor for ClarityUIEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FE0();
  return sub_190CFECB8();
}

uint64_t sub_190CFECB8()
{
  v1 = v0;
  v51[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v47 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v47 - v9;
  v11 = sub_190D515F0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = *(type metadata accessor for ClarityUIEntryView(0) + 20);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x193AF1A80]();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_19022EEA4(v10, &unk_1EAD55F20);
  }

  v49 = v18;
  (*(v12 + 32))(v17, v10, v11);
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_190D51570();
  v51[0] = 0;
  v22 = [v20 removeItemAtURL:v21 error:v51];

  if (v22)
  {
    v23 = qword_1EAD51CB8;
    v24 = v51[0];
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_190D53040();
    __swift_project_value_buffer(v25, qword_1EAD9E058);
    (*(v12 + 16))(v14, v17, v11);
    v26 = sub_190D53020();
    v27 = sub_190D57680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v47[1] = v1;
      v29 = v28;
      v47[0] = swift_slowAlloc();
      v51[0] = v47[0];
      *v29 = 136315138;
      v30 = sub_190D51560();
      v48 = v4;
      v32 = v31;
      (*(v12 + 8))(v14, v11);
      v33 = sub_19021D9F8(v30, v32, v51);
      v4 = v48;

      *(v29 + 4) = v33;
      _os_log_impl(&dword_19020E000, v26, v27, "Successfully cleaned up temporary media file: %s", v29, 0xCu);
      v34 = v47[0];
      __swift_destroy_boxed_opaque_existential_0(v47[0]);
      MEMORY[0x193AF7A40](v34, -1, -1);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    v35 = v51[0];
    v36 = sub_190D51420();

    swift_willThrow();
    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v37 = sub_190D53040();
    __swift_project_value_buffer(v37, qword_1EAD9E058);
    v38 = v36;
    v39 = sub_190D53020();
    v40 = sub_190D576A0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v4;
      v43 = v42;
      *v41 = 138412290;
      v44 = v36;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_19020E000, v39, v40, "Failed to cleanup temporary media file: %@", v41, 0xCu);
      sub_19022EEA4(v43, &unk_1EAD54610);
      v46 = v43;
      v4 = v48;
      MEMORY[0x193AF7A40](v46, -1, -1);
      MEMORY[0x193AF7A40](v41, -1, -1);
    }

    else
    {
    }
  }

  (*(v12 + 56))(v7, 1, 1, v11);
  sub_19022FD14(v7, v4, &unk_1EAD55F20);
  sub_190D56200();
  sub_19022EEA4(v7, &unk_1EAD55F20);
  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_190CFF2BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63638);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63640);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v57 - v12;
  v13 = sub_190D543E0();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63648);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  sub_190D542B0();
  v24 = v23;
  v25 = *(v14 + 28);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_190D54A20();
  (*(*(v27 - 8) + 104))(&v16[v25], v26, v27);
  *v16 = v24;
  *(v16 + 1) = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63650);
  v29 = v28[14];
  *&v22[v29] = sub_190D55D90();
  *&v22[v28[15]] = 1056964608;
  *&v22[v28[16]] = 0x4010000000000000;
  *&v22[v28[17]] = 0x4000000000000000;
  sub_190D04754(v16, v22, MEMORY[0x1E697EAF0]);
  v30 = &v22[v28[13]];
  *v30 = sub_190D56500();
  v30[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63658);
  sub_190CFF920(a1, v30 + *(v32 + 44));
  type metadata accessor for ClarityUIEntryView(0);
  sub_190D56500();
  sub_190D53C60();
  sub_1909586B8(v16);
  v33 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63660) + 36));
  v34 = v63;
  *v33 = v62;
  v33[1] = v34;
  v33[2] = v64;
  LOBYTE(v29) = sub_190D552B0();
  sub_190D539C0();
  v35 = &v22[*(v18 + 44)];
  *v35 = v29;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v6 = sub_190D54AC0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63668);
  sub_190CFFCA8(a1, &v6[*(v40 + 44)]);
  v41 = sub_190D55D20();
  LOBYTE(v29) = sub_190D552B0();
  v42 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63670) + 36)];
  *v42 = v41;
  v42[8] = v29;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63678) + 36)] = 256;
  v43 = sub_190D54240();
  v44 = sub_190D552B0();
  v45 = &v6[*(v4 + 44)];
  *v45 = v43;
  v45[8] = v44;
  sub_190D53D30();
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v6, v10, &qword_1EAD63638);
  v46 = &v10[*(v57 + 36)];
  v47 = v70;
  *(v46 + 4) = v69;
  *(v46 + 5) = v47;
  *(v46 + 6) = v71;
  v48 = v66;
  *v46 = v65;
  *(v46 + 1) = v48;
  v49 = v68;
  *(v46 + 2) = v67;
  *(v46 + 3) = v49;
  v50 = v10;
  v51 = v59;
  sub_19081E40C(v50, v59, &qword_1EAD63640);
  v52 = v58;
  sub_19022FD14(v22, v58, &qword_1EAD63648);
  v53 = v60;
  sub_19022FD14(v51, v60, &qword_1EAD63640);
  v54 = v61;
  sub_19022FD14(v52, v61, &qword_1EAD63648);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63680);
  sub_19022FD14(v53, v54 + *(v55 + 48), &qword_1EAD63640);
  sub_19022EEA4(v51, &qword_1EAD63640);
  sub_19022EEA4(v22, &qword_1EAD63648);
  sub_19022EEA4(v53, &qword_1EAD63640);
  return sub_19022EEA4(v52, &qword_1EAD63648);
}

uint64_t sub_190CFF920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63610);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63618);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v44 = *a1;
  v11 = v44;
  v45 = v12;
  v46 = v14;
  v47 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  sub_190D56220();
  v38 = v40;
  v34 = v42;
  v35 = v43;
  v36 = v41;
  v44 = v11;
  v45 = v12;
  v46 = v14;
  v47 = v13;
  MEMORY[0x193AF1A80](&v40, v15);
  v17 = v40;
  v16 = v41;

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v19 = 1;
  if (!v18)
  {
    v20 = a1 + *(type metadata accessor for ClarityUIEntryView(0) + 32);
    v21 = *v20;
    v22 = *(v20 + 1);
    LOBYTE(v44) = v21;
    v45 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    sub_190D55FD0();
    v23 = v40;
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for Placeholder(0);
    v26 = v33;
    *&v33[v25[6]] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
    swift_storeEnumTagMultiPayload();
    *v26 = v23;
    v26[1] = 1;
    *&v26[v25[7]] = 0x402C000000000000;
    *&v26[v25[8]] = 0x4018000000000000;
    v26[*(v4 + 36)] = 0;
    sub_19081E40C(v26, v10, &qword_1EAD63610);
    v19 = 0;
  }

  (*(v37 + 56))(v10, v19, 1, v4);
  v27 = v39;
  sub_19022FD14(v10, v39, &qword_1EAD63618);
  v29 = v35;
  v28 = v36;
  *a2 = v38;
  *(a2 + 8) = v28;
  *(a2 + 16) = v34;
  *(a2 + 24) = v29;
  *(a2 + 32) = xmmword_190E05BA0;
  *(a2 + 48) = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63718);
  sub_19022FD14(v27, a2 + *(v30 + 48), &qword_1EAD63618);
  sub_190D50920();
  sub_190D50920();
  sub_190D52690();
  sub_19022EEA4(v10, &qword_1EAD63618);
  sub_19022EEA4(v27, &qword_1EAD63618);
}

uint64_t sub_190CFFCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63688);
  v27 = *(v31 - 8);
  v4 = v27;
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for ClarityUIEntryView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = sub_190D548D0();
  sub_190D04754(a1, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  sub_190D01078(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v12);
  sub_190D04754(a1, &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v13 = swift_allocObject();
  sub_190D01078(&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  LOBYTE(v12) = sub_190D552B0();
  v35 = 1;
  v34 = 1;
  v33 = a1;
  sub_190D55290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63690);
  sub_190D048B8();
  v26 = v8;
  sub_190D53A20();
  v14 = *(v4 + 16);
  v15 = v30;
  v16 = v8;
  v17 = v31;
  v14(v30, v16, v31);
  v36 = v32;
  LOBYTE(v37) = 1;
  v28 = sub_190D045C0;
  v18 = v29;
  *(&v37 + 1) = sub_190D045C0;
  *&v38 = v29;
  *(&v38 + 1) = sub_190D04898;
  *&v39 = v13;
  BYTE8(v39) = v12;
  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  *(a2 + 96) = 1;
  v19 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v19;
  v20 = v37;
  *a2 = v36;
  *(a2 + 16) = v20;
  v21 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636B0);
  v14((a2 + *(v22 + 48)), v15, v17);
  sub_19022FD14(&v36, v43, &qword_1EAD636B8);
  v23 = *(v27 + 8);
  v23(v26, v17);
  v23(v15, v17);
  v43[0] = v32;
  v43[1] = 0;
  v44 = 1;
  v45 = v28;
  v46 = v18;
  v47 = sub_190D04898;
  v48 = v13;
  v49 = v12;
  v50 = 0u;
  v51 = 0u;
  v52 = 1;
  return sub_19022EEA4(v43, &qword_1EAD636B8);
}

uint64_t sub_190D0006C()
{
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190D000CC()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v0 postNotificationName:qword_1EAD9E340 object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  v1 = sub_190D56200();
  MEMORY[0x1EEE9AC00](v1);
  sub_190D565A0();
  sub_190D53E40();
}

uint64_t sub_190D0020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v3);
  v35[1] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D563C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_190D563D0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636A8);
  v35[0] = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = v35 - v12;
  v14 = type metadata accessor for ClarityUIEntryView(0);
  sub_190D53D30();
  v16 = v15;
  v18 = v17;
  sub_190D54280();
  v19 = *(a1 + *(v14 + 52));
  if (v18 >= v16)
  {
    v20 = 4;
  }

  else
  {
    v20 = 6;
  }

  sub_190D542C0();
  *v8 = 0;
  v8[1] = v21;
  (*(v6 + 104))(v8, *MEMORY[0x1E697D748], v5);
  if (v19)
  {
    v22 = v20;
  }

  else
  {
    v22 = 3;
  }

  sub_190D563E0();
  sub_1909F2348(v11, v22);
  v38 = a1;
  sub_190D54AC0();
  v39 = 0;
  sub_190D057AC(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636C0);
  sub_190233640(&qword_1EAD636C8, &qword_1EAD636C0);
  sub_190D565F0();
  v23 = sub_190D552C0();
  sub_190D539C0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v37;
  (*(v35[0] + 32))(v37, v13, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63690);
  v34 = v32 + *(result + 36);
  *v34 = v23;
  *(v34 + 8) = v25;
  *(v34 + 16) = v27;
  *(v34 + 24) = v29;
  *(v34 + 32) = v31;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_190D00608@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636D0);
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v33 - v5;
  v6 = type metadata accessor for ClarityUIEntryView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636D8);
  v34 = *(v9 - 8);
  v10 = v34;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  sub_190D04754(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_190D01078(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_190D04990();
  v33 = v14;
  sub_190D557E0();

  sub_190CF9094();
  v44 = v17;
  sub_190D04754(a1, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v18 = swift_allocObject();
  sub_190D01078(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD636F0);
  sub_190233640(&qword_1EAD636F8, &qword_1EAD636E8);
  v19 = sub_190D04A64();
  v42 = &type metadata for EmojiButton;
  v43 = v19;
  swift_getOpaqueTypeConformance2();
  sub_190D04AB8();
  v20 = v36;
  sub_190D56290();
  v21 = *(v10 + 16);
  v22 = v40;
  v23 = v14;
  v24 = v35;
  v21(v40, v23, v35);
  v25 = *(v41 + 16);
  v26 = v37;
  v27 = v38;
  v25(v37, v20, v38);
  v28 = v39;
  v21(v39, v22, v24);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63710);
  v25(&v28[*(v29 + 48)], v26, v27);
  v30 = *(v41 + 8);
  v30(v20, v27);
  v31 = *(v34 + 8);
  v31(v33, v24);
  v30(v26, v27);
  return (v31)(v40, v24);
}

uint64_t sub_190D00AC4()
{
  sub_190D50920();
  sub_190D50920();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  MEMORY[0x193AF1A80](&v1);
  sub_190CF8964();

  sub_190D56200();
}

uint64_t sub_190D00B8C(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIEntryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v13 = *a1;
  v7 = v13;
  sub_190D04754(a2, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClarityUIEntryView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_190D01078(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_190D04A64();
  v10 = v7;
  sub_190D557E0();
}

id sub_190D00D00(int a1, id a2)
{
  result = [a2 string];
  if (result)
  {
    v3 = result;
    v4 = sub_190D56F10();
    v6 = v5;

    sub_190D50920();
    sub_190D50920();
    sub_190D52690();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
    MEMORY[0x193AF1A80](&v7);
    MEMORY[0x193AF28B0](v4, v6);

    sub_190D56200();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190D00E14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Placeholder(0);
  sub_19022FD14(v1 + *(v10 + 24), v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
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

unint64_t sub_190D01024()
{
  result = qword_1EAD632F8;
  if (!qword_1EAD632F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD632F8);
  }

  return result;
}

uint64_t sub_190D01078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClarityUIEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_52()
{
  v1 = type metadata accessor for ClarityUIEntryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) + 32);
  v7 = sub_190D515F0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 24);
  v10 = sub_190D53D60();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190D01318(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClarityUIEntryView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_190D0139C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63838);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  *v9 = sub_190D548D0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63840);
  sub_190D01504(a1, &v9[*(v10 + 44)]);
  sub_19022FD14(v9, v6, &qword_1EAD63838);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63848);
  sub_19022FD14(v6, a2 + *(v11 + 48), &qword_1EAD63838);
  v12 = a2 + *(v11 + 64);
  *v12 = 0;
  *(v12 + 8) = 1;
  sub_19022EEA4(v9, &qword_1EAD63838);
  return sub_19022EEA4(v6, &qword_1EAD63838);
}

uint64_t sub_190D01504@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v63 = sub_190D53A60();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63850);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v58 = &v57 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63858) - 8;
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v57 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63860) - 8;
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63868) - 8;
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v57 - v16;
  v72 = a1;
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63870);
  sub_190D05804(&qword_1EAD5F960, &qword_1EAD5F968);
  sub_190D05804(&qword_1EAD63878, &qword_1EAD63870);
  v17 = v58;
  sub_190D55F20();
  sub_190D00E14(v8);
  v18 = v63;
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v63);
  v19 = sub_190D53A50();
  v20 = *(v3 + 8);
  v20(v5, v18);
  v20(v8, v18);
  v21 = objc_opt_self();
  v22 = &selRef_systemLightGrayColor;
  if ((v19 & 1) == 0)
  {
    v22 = &selRef_systemDarkGrayColor;
  }

  v23 = [v21 *v22];
  v24 = sub_190D55CE0();
  KeyPath = swift_getKeyPath();
  v26 = v60;
  (*(v66 + 32))(v60, v17, v68);
  v27 = (v26 + *(v59 + 44));
  *v27 = KeyPath;
  v27[1] = v24;
  v28 = sub_190D552A0();
  type metadata accessor for Placeholder(0);
  sub_190D539C0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v61;
  sub_19081E40C(v26, v61, &qword_1EAD63858);
  v38 = v37 + *(v65 + 44);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  v39 = sub_190D55310();
  sub_190D539C0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v62;
  sub_19081E40C(v37, v62, &qword_1EAD63860);
  v49 = v48 + *(v67 + 44);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  v50 = v64;
  sub_19081E40C(v48, v64, &qword_1EAD63868);
  v51 = v69;
  sub_19022FD14(v50, v69, &qword_1EAD63868);
  v52 = v70;
  *v70 = 0;
  *(v52 + 8) = 1;
  v53 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63880);
  sub_19022FD14(v51, v53 + *(v54 + 48), &qword_1EAD63868);
  v55 = v53 + *(v54 + 64);
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_19022EEA4(v50, &qword_1EAD63868);
  return sub_19022EEA4(v51, &qword_1EAD63868);
}

double sub_190D01B20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 1) == 1)
  {
    sub_190D549E0();
  }

  else
  {
    sub_190D549E0();
    v3 = CKFrameworkBundle();
  }

  sub_190D555D0();
  sub_190D54C50();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

double sub_190D01C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 1) == 1)
  {
    sub_190D55EA0();
    sub_190D55600();
  }

  else
  {
    sub_190D55EA0();
  }

  sub_190D54C50();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_190D01D48@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D54AC0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63830);
  return sub_190D0139C(v1, a1 + *(v3 + 44));
}

uint64_t sub_190D01D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_190D55D00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D55EA0();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5AE00) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v9 = *MEMORY[0x1E69816C0];
  v10 = sub_190D55F00();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a1 = v6;
  v11 = sub_190D55DC0();
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63808) + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  sub_190D542C0();
  sub_190D542C0();
  sub_190D56500();
  sub_190D53C60();
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63810) + 36));
  v15 = v23[1];
  *v14 = v23[0];
  v14[1] = v15;
  v14[2] = v23[2];
  v16 = sub_190D55D40();
  LOBYTE(KeyPath) = sub_190D552B0();
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63818) + 36);
  *v17 = v16;
  v17[8] = KeyPath;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63820) + 36)) = 256;
  sub_190D542A0();
  v19 = v18;
  (*(v3 + 104))(v5, *MEMORY[0x1E69814C8], v2);
  v20 = sub_190D55E30();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63828);
  v22 = (a1 + *(result + 36));
  *v22 = v20;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  return result;
}

id sub_190D0206C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D55D00();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v33 - v8;
  result = [a1 string];
  if (result)
  {
    v11 = result;
    v12 = sub_190D56F10();
    v14 = v13;

    v36 = v12;
    v37 = v14;
    sub_19081E484();
    v15 = sub_190D555F0();
    v17 = v16;
    v19 = v18;
    v20 = sub_190D55390();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    sub_190D553F0();
    sub_19022EEA4(v9, &qword_1EAD52F28);
    v21 = sub_190D555B0();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    sub_19081E474(v15, v17, v19 & 1);

    sub_190D542C0();
    sub_190D542C0();
    sub_190D56500();
    sub_190D53C60();
    LOBYTE(v14) = v25 & 1;
    LOBYTE(v36) = v25 & 1;
    v28 = sub_190D55D10();
    v29 = sub_190D552B0();
    sub_190D542A0();
    v31 = v30;
    (*(v34 + 104))(v33, *MEMORY[0x1E69814C8], v35);
    result = sub_190D55E30();
    *a2 = v21;
    *(a2 + 8) = v23;
    *(a2 + 16) = v14;
    *(a2 + 24) = v27;
    v32 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v32;
    *(a2 + 64) = v40;
    *(a2 + 80) = v28;
    *(a2 + 88) = v29;
    *(a2 + 89) = 256;
    *(a2 + 96) = result;
    *(a2 + 104) = v31;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190D02374@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v3 = *(v2 - 8);
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = sub_190D543E0();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D542B0();
  v11 = v10;
  v12 = *(v7 + 28);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_190D54A20();
  (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
  *v9 = v11;
  *(v9 + 1) = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD637C0);
  v16 = v15[14];
  *(a1 + v16) = sub_190D55D90();
  *(a1 + v15[15]) = 1056964608;
  *(a1 + v15[16]) = 0x4010000000000000;
  *(a1 + v15[17]) = 0x4000000000000000;
  sub_190D04754(v9, a1, MEMORY[0x1E697EAF0]);
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D56030();
  v17 = sub_190D55D10();
  sub_190D55E00();
  v18 = sub_190D55DF0();

  v23 = v17;
  v24 = v18;
  sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
  sub_190D05558();
  v19 = v21;
  sub_190D55730();

  (*(v22 + 8))(v5, v19);
  return sub_1909586B8(v9);
}

uint64_t sub_190D026E8@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = CKFrameworkBundle();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D55360();
  v8 = sub_190D555B0();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_19081E474(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_190D02818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190D02860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = *(a1 + 16);
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v32 = *(&v40 + 1);
  v33 = v4;
  v5 = sub_190D53B10();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v7 = sub_190D54200();
  v53 = v5;
  v54 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x1E69805B0];
  v35 = MEMORY[0x1E697E858];
  v30[2] = v7;
  v30[3] = swift_getWitnessTable();
  v30[4] = sub_190D54440();
  v30[1] = v40;
  v8 = sub_190D54200();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD5F740);
  v11 = sub_190D54200();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v34 = sub_190D53B00();
  v14 = sub_190D54200();
  v38 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v31 = v30 - v18;
  v19 = *(a1 + 32);
  *&v20 = v19;
  *(&v20 + 1) = v3;
  v42 = v40;
  v43 = v20;
  v44 = v41;
  sub_190D56500();
  sub_190D55BD0();
  v53 = sub_190D55D10();
  sub_190D552B0();
  v21 = swift_getWitnessTable();
  v49 = v19;
  v50 = v21;
  v22 = swift_getWitnessTable();
  sub_190D556D0();

  (*(v36 + 8))(v10, v8);
  v23 = sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
  v47 = v22;
  v48 = v23;
  v24 = swift_getWitnessTable();
  sub_190D55C70();
  (*(v37 + 8))(v13, v11);
  v25 = swift_getWitnessTable();
  v45 = v24;
  v46 = v25;
  v26 = swift_getWitnessTable();
  v27 = v31;
  sub_19096BC74(v16, v14, v26);
  v28 = *(v38 + 8);
  v28(v16, v14);
  sub_19096BC74(v27, v14, v26);
  return (v28)(v27, v14);
}

uint64_t sub_190D02DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a4;
  v36 = a6;
  v31 = *(a5 + 8);
  v9 = sub_190D53B10();
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  WitnessTable = swift_getWitnessTable();
  *v41 = v9;
  *&v41[8] = WitnessTable;
  v33 = MEMORY[0x1E69811F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v28 - v13;
  v15 = sub_190D54200();
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  *v41 = a2;
  *&v41[8] = a3;
  *&v41[16] = v29;
  *&v41[24] = v28;
  v21 = type metadata accessor for InnerShadowedContent();
  sub_190D55F50();
  v22 = *(a1 + *(v21 + 60));
  *v41 = 1065353216;
  *&v41[4] = 0uLL;
  *&v41[20] = 0x3F80000000000000uLL;
  v42 = 0;
  v43 = 0x3F80000000000000;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = -v22;
  v48 = v22;
  v23 = WitnessTable;
  sub_190D557C0();
  (*(v35 + 8))(v11, v9);
  v39 = v9;
  v40 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_190D558D0();
  (*(v34 + 8))(v14, OpaqueTypeMetadata2);
  v37 = OpaqueTypeConformance2;
  v38 = MEMORY[0x1E69805B0];
  v25 = swift_getWitnessTable();
  sub_19096BC74(v17, v15, v25);
  v26 = *(v32 + 8);
  v26(v17, v15);
  sub_19096BC74(v20, v15, v25);
  return (v26)(v20, v15);
}

uint64_t sub_190D031CC(uint64_t a1)
{
  v3 = sub_190D54880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D54F80();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = *v1;
  (*(v11 + 16))(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v13[1] = v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C448], v3);
  sub_190D50920();
  sub_190D50920();
  return sub_190D54EC0();
}

uint64_t sub_190D03380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD637D0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD637D8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = v0[1];
  v36 = *v0;
  v37 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E648);
  sub_190D56220();
  sub_190D53A30();
  v11 = sub_190D552A0();
  sub_190D539C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD637E0) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = sub_190D55310();
  sub_190D539C0();
  v22 = &v5[*(v3 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = v1[1];
  v36 = *v1;
  v37 = v27;
  MEMORY[0x193AF1A80](&v35, v10);
  v28 = sub_190D56ED0();

  v29 = [v28 __ck_shouldUseBigEmoji];

  if (v29)
  {
    v30 = sub_190D55380();
  }

  else
  {
    v30 = sub_190D55360();
  }

  v31 = v30;
  KeyPath = swift_getKeyPath();
  sub_19081E40C(v5, v8, &qword_1EAD637D0);
  v33 = &v8[*(v6 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_190D055AC();
  sub_190D55AB0();
  return sub_19022EEA4(v8, &qword_1EAD637D8);
}

unint64_t sub_190D035F4()
{
  result = qword_1EAD633B0;
  if (!qword_1EAD633B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63350);
    sub_190D03680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD633B0);
  }

  return result;
}

unint64_t sub_190D03680()
{
  result = qword_1EAD633B8;
  if (!qword_1EAD633B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD633C0);
    sub_190D0370C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD633B8);
  }

  return result;
}

unint64_t sub_190D0370C()
{
  result = qword_1EAD633C8;
  if (!qword_1EAD633C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD633D0);
    sub_190D037C4();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD633C8);
  }

  return result;
}

unint64_t sub_190D037C4()
{
  result = qword_1EAD633D8;
  if (!qword_1EAD633D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD633E0);
    sub_190233640(&qword_1EAD633E8, &qword_1EAD633F0);
    sub_190233640(&qword_1EAD633F8, &qword_1EAD63400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD633D8);
  }

  return result;
}

unint64_t sub_190D038A8()
{
  result = qword_1EAD63408;
  if (!qword_1EAD63408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD633A8);
    sub_190D03934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63408);
  }

  return result;
}

unint64_t sub_190D03934()
{
  result = qword_1EAD63410;
  if (!qword_1EAD63410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63418);
    sub_190D039C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63410);
  }

  return result;
}

unint64_t sub_190D039C0()
{
  result = qword_1EAD63420;
  if (!qword_1EAD63420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63428);
    sub_190D03A78();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63420);
  }

  return result;
}

unint64_t sub_190D03A78()
{
  result = qword_1EAD63430;
  if (!qword_1EAD63430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63438);
    sub_190D03B30();
    sub_190233640(&qword_1EAD633F8, &qword_1EAD63400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63430);
  }

  return result;
}

unint64_t sub_190D03B30()
{
  result = qword_1EAD63440;
  if (!qword_1EAD63440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63440);
  }

  return result;
}

unint64_t sub_190D03B84()
{
  result = qword_1EAD63448;
  if (!qword_1EAD63448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD633A0);
    sub_190D03C10();
    sub_190D03EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63448);
  }

  return result;
}

unint64_t sub_190D03C10()
{
  result = qword_1EAD63450;
  if (!qword_1EAD63450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63398);
    sub_190D03C9C();
    sub_190D03E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63450);
  }

  return result;
}

unint64_t sub_190D03C9C()
{
  result = qword_1EAD63458;
  if (!qword_1EAD63458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63460);
    sub_190D03D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63458);
  }

  return result;
}

unint64_t sub_190D03D28()
{
  result = qword_1EAD63468;
  if (!qword_1EAD63468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63470);
    sub_190D03DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63468);
  }

  return result;
}

unint64_t sub_190D03DB4()
{
  result = qword_1EAD63478;
  if (!qword_1EAD63478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63478);
  }

  return result;
}

unint64_t sub_190D03E08()
{
  result = qword_1EAD63480;
  if (!qword_1EAD63480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63378);
    sub_190233640(&qword_1EAD63488, &qword_1EAD63490);
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63480);
  }

  return result;
}

unint64_t sub_190D03EEC()
{
  result = qword_1EAD63498;
  if (!qword_1EAD63498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63368);
    sub_190D03F78();
    sub_190D04174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63498);
  }

  return result;
}

unint64_t sub_190D03F78()
{
  result = qword_1EAD634A0;
  if (!qword_1EAD634A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63370);
    sub_190D04004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634A0);
  }

  return result;
}

unint64_t sub_190D04004()
{
  result = qword_1EAD634A8;
  if (!qword_1EAD634A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD634B0);
    sub_190D04090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634A8);
  }

  return result;
}

unint64_t sub_190D04090()
{
  result = qword_1EAD634B8;
  if (!qword_1EAD634B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD634C0);
    sub_190233640(&qword_1EAD634C8, &qword_1EAD634D0);
    sub_190233640(&qword_1EAD633F8, &qword_1EAD63400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634B8);
  }

  return result;
}

unint64_t sub_190D04174()
{
  result = qword_1EAD634D8;
  if (!qword_1EAD634D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63358);
    sub_190D04200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634D8);
  }

  return result;
}

unint64_t sub_190D04200()
{
  result = qword_1EAD634E0;
  if (!qword_1EAD634E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD634E8);
    sub_190D0428C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634E0);
  }

  return result;
}

unint64_t sub_190D0428C()
{
  result = qword_1EAD634F0;
  if (!qword_1EAD634F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD634F8);
    sub_190D04344();
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD634F0);
  }

  return result;
}

unint64_t sub_190D04344()
{
  result = qword_1EAD63500;
  if (!qword_1EAD63500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63508);
    sub_190D057AC(&qword_1EAD63510, type metadata accessor for ClarityCameraView);
    sub_190233640(&qword_1EAD633F8, &qword_1EAD63400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63500);
  }

  return result;
}

unint64_t sub_190D0442C()
{
  result = qword_1EAD63518;
  if (!qword_1EAD63518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63348);
    sub_190D035F4();
    sub_190D038A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63518);
  }

  return result;
}

unint64_t sub_190D0460C()
{
  result = qword_1EAD635D0;
  if (!qword_1EAD635D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD635C8);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    sub_190233640(&qword_1EAD54240, &qword_1EAD54248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD635D0);
  }

  return result;
}

uint64_t sub_190D04754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_190D047BC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_190D0480C()
{
  result = qword_1EAD63628;
  if (!qword_1EAD63628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63628);
  }

  return result;
}

unint64_t sub_190D048B8()
{
  result = qword_1EAD63698;
  if (!qword_1EAD63698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63690);
    sub_190233640(&qword_1EAD636A0, &qword_1EAD636A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63698);
  }

  return result;
}

unint64_t sub_190D04990()
{
  result = qword_1EAD636E0;
  if (!qword_1EAD636E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD636E0);
  }

  return result;
}

uint64_t sub_190D049E4(void **a1)
{
  v3 = *(type metadata accessor for ClarityUIEntryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_190D00B8C(a1, v4);
}

unint64_t sub_190D04A64()
{
  result = qword_1EAD63700;
  if (!qword_1EAD63700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63700);
  }

  return result;
}

unint64_t sub_190D04AB8()
{
  result = qword_1EAD63708;
  if (!qword_1EAD63708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63708);
  }

  return result;
}

id sub_190D04B0C()
{
  v1 = *(type metadata accessor for ClarityUIEntryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_190D00D00(v0 + v2, v3);
}

void sub_190D04BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClarityUIEntryView(0);

  sub_190CFE444(a1, a2, a3, a4);
}

uint64_t sub_190D04CF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ClarityUIEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_190D04DBC()
{
  sub_1908B90C4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_190D04E60()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_190D04F10(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_BYTE *sub_190D050F8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((((v11 + 7 + v14) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&result[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v16] = 0;
      }

      else if (v20)
      {
        result[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v25 = *(v5 + 56);

        return v25();
      }

      else
      {
        result = (&result[v13] & ~v10);
        if (v8 == v12)
        {
          v26 = *(v7 + 56);

          return v26(result);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v27 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v27 = a2 - 1;
          }

          *(&result[v15] & 0xFFFFFFFFFFFFFFF8) = v27;
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = result;
    bzero(result, v16);
    result = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *&result[v16] = v22;
    }

    else
    {
      *&result[v16] = v22;
    }
  }

  else if (v20)
  {
    result[v16] = v22;
  }

  return result;
}

unint64_t sub_190D053A4()
{
  result = qword_1EAD637B0;
  if (!qword_1EAD637B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63330);
    sub_190233640(&qword_1EAD637B8, &qword_1EAD63320);
    sub_190233640(&qword_1EAD56D60, &qword_1EAD56D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD637B0);
  }

  return result;
}

unint64_t sub_190D05558()
{
  result = qword_1EAD637C8;
  if (!qword_1EAD637C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD637C8);
  }

  return result;
}

unint64_t sub_190D055AC()
{
  result = qword_1EAD637E8;
  if (!qword_1EAD637E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD637D8);
    sub_190D05664();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD637E8);
  }

  return result;
}

unint64_t sub_190D05664()
{
  result = qword_1EAD637F0;
  if (!qword_1EAD637F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD637D0);
    sub_190D056F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD637F0);
  }

  return result;
}

unint64_t sub_190D056F0()
{
  result = qword_1EAD637F8;
  if (!qword_1EAD637F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD637E0);
    sub_190D057AC(&qword_1EAD63800, MEMORY[0x1E697BE80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD637F8);
  }

  return result;
}

uint64_t sub_190D057AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190D05804(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_190D05894()
{
  result = qword_1EAD63890;
  if (!qword_1EAD63890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63828);
    sub_190D05920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63890);
  }

  return result;
}

unint64_t sub_190D05920()
{
  result = qword_1EAD63898;
  if (!qword_1EAD63898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63820);
    sub_190D059D8();
    sub_190233640(&qword_1EAD638B8, &qword_1EAD638C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63898);
  }

  return result;
}

unint64_t sub_190D059D8()
{
  result = qword_1EAD638A0;
  if (!qword_1EAD638A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63818);
    sub_190D05A90();
    sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638A0);
  }

  return result;
}

unint64_t sub_190D05A90()
{
  result = qword_1EAD638A8;
  if (!qword_1EAD638A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63810);
    sub_190D05B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638A8);
  }

  return result;
}

unint64_t sub_190D05B1C()
{
  result = qword_1EAD638B0;
  if (!qword_1EAD638B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63808);
    sub_190BB1140();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638B0);
  }

  return result;
}

unint64_t sub_190D05BD4()
{
  result = qword_1EAD638C8;
  if (!qword_1EAD638C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD638D0);
    sub_190D05C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638C8);
  }

  return result;
}

unint64_t sub_190D05C60()
{
  result = qword_1EAD638D8;
  if (!qword_1EAD638D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD638E0);
    sub_190D05D18();
    sub_190233640(&qword_1EAD638B8, &qword_1EAD638C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638D8);
  }

  return result;
}

unint64_t sub_190D05D18()
{
  result = qword_1EAD638E8;
  if (!qword_1EAD638E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD638F0);
    sub_190C07790();
    sub_190233640(&unk_1EAD59690, &unk_1EAD5F740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD638E8);
  }

  return result;
}

void DebugMenuDefaultCell.init(defaultItem:pinningEnabled:forceDisplayToggle:deleteStyle:)(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for PinnedUserDefault(0);
  sub_190D05F90(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
  *a4 = sub_190D54520();
  *(a4 + 8) = v8;
  sub_190D55FC0();
  *(a4 + 32) = v11;
  *(a4 + 40) = *(&v11 + 1);
  sub_190D55FC0();
  *(a4 + 48) = v11;
  *(a4 + 64) = v12;
  type metadata accessor for UserDefaultItem(0);
  sub_190D05F90(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem);
  v9 = a1;
  *(a4 + 16) = sub_190D53FC0();
  *(a4 + 24) = v10;
  *(a4 + 88) = a2;
  *(a4 + 89) = a3;
  sub_190D55FC0();
}

uint64_t sub_190D05F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DebugMenuButtonCell.body.getter()
{
  sub_19081E484();
  sub_190D52690();
  sub_190D50920();
  return sub_190D56080();
}

uint64_t sub_190D06054()
{
  sub_19081E484();
  sub_190D52690();
  sub_190D50920();
  return sub_190D56080();
}

__n128 DebugMenuDefaultDetails.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54AD0();
  sub_190D06168(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_190D06168@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  sub_190D55440();
  v7 = sub_190D555B0();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;

  sub_19081E474(v2, v4, v6 & 1);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v11 = sub_190D555F0();
  v13 = v12;
  v15 = v14;
  sub_190D55440();
  v16 = sub_190D555B0();
  v18 = v17;
  v20 = v19;

  sub_19081E474(v11, v13, v15 & 1);

  sub_190D55E10();
  v21 = sub_190D55570();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_19081E474(v16, v18, v20 & 1);

  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25 & 1;
  *(a1 + 56) = v27;
  sub_19081BE48(v31, v30, v29 & 1);
  sub_190D52690();
  sub_19081BE48(v21, v23, v25 & 1);
  sub_190D52690();
  sub_19081E474(v21, v23, v25 & 1);

  sub_19081E474(v31, v30, v29 & 1);
}

__n128 sub_190D063E4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54AD0();
  sub_190D06168(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t DebugMenuDefaultCell.DeleteStyle.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t DebugMenuDefaultCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63918);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63920);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63928);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v25 - v10;
  v11 = v1[3];
  v48 = v1[2];
  v49 = v11;
  v50[0] = v1[4];
  *(v50 + 10) = *(v1 + 74);
  v12 = v1[1];
  v47[0] = *v1;
  v47[1] = v12;
  sub_190D069B4(v47, v4);
  v41 = v47;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63930);
  v14 = sub_190D09054();
  v32 = MEMORY[0x1E6981F48];
  v15 = sub_190233640(&qword_1EAD63970, &qword_1EAD63930);
  sub_190D557F0();
  sub_19022EEA4(v4, &qword_1EAD63918);
  v40 = v47;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  v43 = v2;
  v44 = v13;
  v45 = v14;
  v46 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_19081E868();
  v18 = v34;
  sub_190D557F0();
  (*(v33 + 8))(v7, v18);
  v33 = sub_190D549E0();
  v29 = v20;
  v30 = v19;
  v28 = v21;
  v42 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FF0();
  v27 = v45;
  v39 = v47;
  v38 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63978);
  v43 = v18;
  v44 = v26;
  v45 = OpaqueTypeConformance2;
  v46 = v17;
  swift_getOpaqueTypeConformance2();
  sub_190233640(&qword_1EAD63980, &qword_1EAD63978);
  v22 = v35;
  v23 = v31;
  sub_190D55B30();

  return (*(v36 + 8))(v23, v22);
}

uint64_t sub_190D069B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63968);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639E0);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639E8);
  MEMORY[0x1EEE9AC00](v7);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63958);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v16 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  if (v21)
  {
    *v4 = sub_190D548D0();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A00);
    sub_190D06F8C(a1, &v4[*(v12 + 44)]);
    sub_19022FD14(v4, v6, &qword_1EAD63968);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD63950, &qword_1EAD63958);
    sub_190233640(&qword_1EAD63960, &qword_1EAD63968);
    sub_190D54C50();
    return sub_19022EEA4(v4, &qword_1EAD63968);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v11);
    *(&v16 - 2) = a1;
    sub_190D55290();
    sub_190D0A4EC();
    v14 = sub_190D53A20();
    MEMORY[0x1EEE9AC00](v14);
    *(&v16 - 2) = a1;
    sub_190233640(&qword_1EAD639F8, &qword_1EAD639E8);
    sub_190D53F20();
    v15 = v18;
    (*(v8 + 16))(v6, v10, v18);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD63950, &qword_1EAD63958);
    sub_190233640(&qword_1EAD63960, &qword_1EAD63968);
    sub_190D54C50();
    return (*(v8 + 8))(v10, v15);
  }
}

uint64_t sub_190D06E88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  type metadata accessor for UserDefaultItem(0);
  sub_190D05F90(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem);
  v4 = v3;
  result = sub_190D53FC0();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_190D06F0C@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  result = sub_190D555F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_190D06F8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A08);
  MEMORY[0x1EEE9AC00](v76);
  v77 = v61 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A10);
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v61 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A18);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v61 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A20);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v62 = v61 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A28);
  MEMORY[0x1EEE9AC00](v74);
  v70 = v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A38);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A40);
  v15 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  *v14 = sub_190D54AC0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A48);
  sub_190D07B44(a1, &v14[*(v21 + 44)]);
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  v22[3] = *(a1 + 32);
  v22[4] = v23;
  v22[5] = *(a1 + 64);
  *(v22 + 90) = *(a1 + 74);
  v24 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v24;
  sub_190D0A36C(a1, &v80);
  sub_190233640(&qword_1EAD63A50, &qword_1EAD63A38);
  v25 = v20;
  sub_190D557E0();

  sub_19022EEA4(v14, &qword_1EAD63A38);
  v26 = *(a1 + 24) + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle;
  swift_beginAccess();
  if ((*(v26 + 25) & 1) == 0 && (*(v26 + 24) & 1) != 0 && !(*(v26 + 16) | *(v26 + 8) | *v26))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    if (v83)
    {
      if (swift_dynamicCast())
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_19022EEA4(&v80, &unk_1EAD551C0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v36 = v83;
    sub_19022EEA4(&v80, &unk_1EAD551C0);
    if (v36 && (*(a1 + 89) & 1) == 0)
    {
      v60 = 1;
      v59 = v71;
      v58 = v70;
      v57 = v69;
      goto LABEL_14;
    }

LABEL_12:
    sub_190D572A0();
    sub_190D0A36C(a1, &v80);
    v37 = sub_190D57290();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E85E0];
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    v40 = *(a1 + 48);
    *(v38 + 64) = *(a1 + 32);
    *(v38 + 80) = v40;
    *(v38 + 96) = *(a1 + 64);
    *(v38 + 106) = *(a1 + 74);
    v41 = *(a1 + 16);
    *(v38 + 32) = *a1;
    *(v38 + 48) = v41;
    sub_190D0A36C(a1, &v80);
    v42 = sub_190D57290();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v39;
    v44 = *(a1 + 48);
    *(v43 + 64) = *(a1 + 32);
    *(v43 + 80) = v44;
    *(v43 + 96) = *(a1 + 64);
    *(v43 + 106) = *(a1 + 74);
    v45 = *(a1 + 16);
    *(v43 + 32) = *a1;
    *(v43 + 48) = v45;
    sub_190D56230();
    v46 = v81;
    v61[1] = v80;
    sub_190D50920();
    v61[0] = v46;
    sub_190D50920();
    v47 = v63;
    sub_190D56180();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v79 = v80;
    v48 = swift_allocObject();
    v49 = *(a1 + 48);
    v48[3] = *(a1 + 32);
    v48[4] = v49;
    v48[5] = *(a1 + 64);
    *(v48 + 90) = *(a1 + 74);
    v50 = *(a1 + 16);
    v48[1] = *a1;
    v48[2] = v50;
    sub_190D0A36C(a1, &v80);
    v51 = sub_190233640(&qword_1EAD63A60, &qword_1EAD63A10);
    v52 = v65;
    v53 = v66;
    v54 = MEMORY[0x1E69E6370];
    sub_190D55C30();

    (*(v64 + 8))(v47, v53);
    v80 = v53;
    v81 = v54;
    v82 = v51;
    v83 = MEMORY[0x1E69E6388];
    swift_getOpaqueTypeConformance2();
    v55 = v62;
    v56 = v68;
    sub_190D557D0();

    (*(v67 + 8))(v52, v56);
    v57 = v69;
    v58 = v70;
    v59 = v71;
    (*(v69 + 32))(v70, v55, v71);
    v60 = 0;
LABEL_14:
    (*(v57 + 56))(v58, v60, 1, v59);
    sub_19022FD14(v58, v77, &qword_1EAD63A28);
    swift_storeEnumTagMultiPayload();
    sub_190D0A550();
    v27 = v73;
    sub_190D54C50();
    sub_19022EEA4(v58, &qword_1EAD63A28);
    goto LABEL_5;
  }

  swift_storeEnumTagMultiPayload();
  sub_190D0A550();
  v27 = v73;
  sub_190D54C50();
LABEL_5:
  v28 = v15;
  v29 = *(v15 + 16);
  v30 = v72;
  v29(v17, v25, v72);
  v31 = v75;
  sub_19022FD14(v27, v75, &qword_1EAD63A30);
  v32 = v78;
  v29(v78, v17, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A68);
  sub_19022FD14(v31, &v32[*(v33 + 48)], &qword_1EAD63A30);
  sub_19022EEA4(v27, &qword_1EAD63A30);
  v34 = *(v28 + 8);
  v34(v25, v30);
  sub_19022EEA4(v31, &qword_1EAD63A30);
  return (v34)(v17, v30);
}

void sub_190D07B44(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A10);
  v64 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v63 = &v57 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A70);
  v66 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v57 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A78);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v57 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A80);
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_190D548D0();
  v15 = a1;
  v16 = *(a1 + 24);
  type metadata accessor for UserDefaultItem(0);
  sub_190D05F90(&qword_1EAD5DD20, type metadata accessor for UserDefaultItem);
  v17 = v16;
  v18 = sub_190D53FC0();
  v20 = v19;
  v21 = &v17[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_inputStyle];
  swift_beginAccess();
  v22 = 1;
  if (*(v21 + 25))
  {
    goto LABEL_8;
  }

  v59 = a2;
  v58 = v18;
  v60 = v20;
  v61 = v14;
  v62 = v10;
  v24 = *v21;
  v23 = v21[1];
  v25 = *(v21 + 2);
  if (v21[3])
  {
    if (v25 | *&v23 | *&v24)
    {
      sub_190D572A0();
      sub_190D0A36C(v15, &v77);
      v26 = sub_190D57290();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      *(v27 + 16) = v26;
      *(v27 + 24) = v28;
      v29 = v15[3];
      *(v27 + 64) = v15[2];
      *(v27 + 80) = v29;
      *(v27 + 96) = v15[4];
      *(v27 + 106) = *(v15 + 74);
      v30 = v15[1];
      *(v27 + 32) = *v15;
      *(v27 + 48) = v30;
      sub_190D0A36C(v15, &v77);
      v31 = sub_190D57290();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v28;
      v33 = v15[3];
      *(v32 + 64) = v15[2];
      *(v32 + 80) = v33;
      *(v32 + 96) = v15[4];
      *(v32 + 106) = *(v15 + 74);
      v34 = v15[1];
      *(v32 + 32) = *v15;
      *(v32 + 48) = v34;
      sub_190D56230();
      sub_190D50920();
      sub_190D50920();
      v35 = v63;
      sub_190D56180();
      v36 = sub_190233640(&qword_1EAD63A60, &qword_1EAD63A10);
      v37 = v65;
      v38 = v72;
      sub_190D557D0();
      (*(v64 + 8))(v35, v38);
      v39 = v66;
      v40 = v73;
      (*(v66 + 16))(v70, v37, v73);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD63AA0, &qword_1EAD63A80);
      v77 = v38;
      v78 = v36;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();

      (*(v39 + 8))(v37, v40);
      v22 = 0;
    }

    v10 = v62;
    v14 = v61;
    v20 = v60;
    v18 = v58;
    a2 = v59;
    goto LABEL_8;
  }

  sub_190D572A0();
  sub_190D0A36C(v15, &v77);
  v41 = sub_190D57290();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  *(v42 + 16) = v41;
  *(v42 + 24) = v43;
  v44 = v15[3];
  *(v42 + 64) = v15[2];
  *(v42 + 80) = v44;
  *(v42 + 96) = v15[4];
  *(v42 + 106) = *(v15 + 74);
  v45 = v15[1];
  *(v42 + 32) = *v15;
  *(v42 + 48) = v45;
  sub_190D0A36C(v15, &v77);
  v46 = sub_190D57290();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = v43;
  v48 = v15[3];
  *(v47 + 64) = v15[2];
  *(v47 + 80) = v48;
  *(v47 + 96) = v15[4];
  *(v47 + 106) = *(v15 + 74);
  v49 = v15[1];
  *(v47 + 32) = *v15;
  *(v47 + 48) = v49;
  sub_190D56230();
  if (v24 <= v23)
  {
    v75 = v24;
    v76 = v23;
    v74 = v25;
    sub_1909C8F50();
    sub_190D50920();
    sub_190D50920();
    v50 = v67;
    sub_190D56150();
    v51 = v68;
    v52 = v71;
    (*(v68 + 16))(v70, v50, v71);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD63AA0, &qword_1EAD63A80);
    v53 = sub_190233640(&qword_1EAD63A60, &qword_1EAD63A10);
    v77 = v72;
    v78 = v53;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();

    (*(v51 + 8))(v50, v52);
    v22 = 0;
    v10 = v62;
    v14 = v61;
    v20 = v60;
    v18 = v58;
    a2 = v59;
LABEL_8:
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A90);
    (*(*(v54 - 8) + 56))(v13, v22, 1, v54);
    sub_19022FD14(v13, v10, &qword_1EAD63A88);
    *a2 = v14;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = v18;
    *(a2 + 32) = v20;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63A98);
    sub_19022FD14(v10, a2 + *(v55 + 48), &qword_1EAD63A88);
    v56 = v20;
    sub_19022EEA4(v13, &qword_1EAD63A88);
    sub_19022EEA4(v10, &qword_1EAD63A88);

    return;
  }

  __break(1u);
}

double sub_190D08584@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_190D08604(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = round(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  *v8 = v5;
  v6 = v4;
  result = sub_190D53910();
  if (v6[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v8[3] = MEMORY[0x1E69E63B0];
    sub_190B2210C(v8);
    return sub_19022EEA4(v8, &unk_1EAD551C0);
  }

  return result;
}

uint64_t sub_190D08710(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  if (v3 == 1)
  {
    v3 = *(a1 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
    sub_190D55FE0();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    sub_190B23EB8(&v3);
    sub_19022EEA4(&v3, &unk_1EAD551C0);
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
    return sub_190D55FE0();
  }

  return result;
}

uint64_t sub_190D08868@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  *a1 = v3;
  return result;
}

uint64_t sub_190D088E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v8[0] = v4;
  v6 = v5;
  result = sub_190D53910();
  if (v6[OBJC_IVAR____TtC7ChatKit15UserDefaultItem_shouldSetValueInUserDefaults] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v9 = MEMORY[0x1E69E6370];
    sub_190B2210C(v8);
    return sub_19022EEA4(v8, &unk_1EAD551C0);
  }

  return result;
}

uint64_t sub_190D089E8(void *a1)
{
  if (*a1)
  {
    sub_190D50920();
    sub_190B22EB4();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190D05F90(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190D08A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639A0);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639A8);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639B8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  v20[3] = *(a1 + 32);
  v20[4] = v21;
  v20[5] = *(a1 + 64);
  *(v20 + 90) = *(a1 + 74);
  v22 = *(a1 + 16);
  v20[1] = *a1;
  v20[2] = v22;
  sub_190D0A36C(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D56030();
  v23 = sub_190D55D80();
  KeyPath = swift_getKeyPath();
  v25 = &v19[*(v14 + 44)];
  *v25 = KeyPath;
  v25[1] = v23;
  if (*(a1 + 88))
  {
    v26 = swift_allocObject();
    v27 = *(a1 + 48);
    v26[3] = *(a1 + 32);
    v26[4] = v27;
    v26[5] = *(a1 + 64);
    *(v26 + 90) = *(a1 + 74);
    v28 = *(a1 + 16);
    v26[1] = *a1;
    v26[2] = v28;
    MEMORY[0x1EEE9AC00](v26);
    *(&v42 - 2) = a1;
    sub_190D0A36C(a1, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639C8);
    sub_190D0A3C4();
    v29 = v42;
    sub_190D56030();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_190D53900();

    v30 = v29;
    if (v49[0] == 1)
    {
      v31 = sub_190D55D60();
    }

    else
    {
      v31 = sub_190D55DE0();
    }

    v34 = v31;
    v33 = v47;
    v35 = swift_getKeyPath();
    *v49 = v34;
    v36 = sub_190D53C70();
    v37 = v43;
    (*(v44 + 32))(v43, v30, v45);
    v38 = (v37 + *(v33 + 36));
    *v38 = v35;
    v38[1] = v36;
    sub_190D0A474(v37, v12);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v33 = v47;
  }

  (*(v46 + 56))(v12, v32, 1, v33);
  sub_19022FD14(v19, v16, &qword_1EAD639B8);
  sub_19022FD14(v12, v9, &qword_1EAD639B0);
  v39 = v48;
  sub_19022FD14(v16, v48, &qword_1EAD639B8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639C0);
  sub_19022FD14(v9, v39 + *(v40 + 48), &qword_1EAD639B0);
  sub_19022EEA4(v12, &qword_1EAD639B0);
  sub_19022EEA4(v19, &qword_1EAD639B8);
  sub_19022EEA4(v9, &qword_1EAD639B0);
  return sub_19022EEA4(v16, &qword_1EAD639B8);
}

unint64_t sub_190D09054()
{
  result = qword_1EAD63938;
  if (!qword_1EAD63938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63918);
    sub_190D090D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63938);
  }

  return result;
}

unint64_t sub_190D090D8()
{
  result = qword_1EAD63940;
  if (!qword_1EAD63940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63948);
    sub_190233640(&qword_1EAD63950, &qword_1EAD63958);
    sub_190233640(&qword_1EAD63960, &qword_1EAD63968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63940);
  }

  return result;
}

uint64_t sub_190D091BC(uint64_t a1)
{
  v3 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD61190);
  sub_190D55FE0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  sub_190B23EB8(&v3);
  sub_19022EEA4(&v3, &unk_1EAD551C0);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  return sub_190D55FE0();
}

uint64_t sub_190D092C8()
{
  sub_190D549E0();

  return sub_190D55F30();
}

uint64_t sub_190D09320(void *a1)
{
  sub_190B21D8C();
  if (*a1)
  {
    sub_190D50920();
    sub_190B22EB4();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190D05F90(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190D093CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639D8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  sub_190D549E0();
  sub_190D55F30();
  (*(v4 + 16))(v2, v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D54C50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190D09644@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v19 - v7;
  sub_190D549E0();
  v23 = *(a1 + 72);
  v21[0] = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5DD28);
  sub_190D55FD0();
  if (v22)
  {
    v9 = 1;
  }

  else
  {
    sub_190D53970();
    v9 = 0;
  }

  v10 = sub_190D539A0();
  (*(*(v10 - 8) + 56))(v5, v9, 1, v10);
  v11 = swift_allocObject();
  v12 = a1[3];
  v11[3] = a1[2];
  v11[4] = v12;
  v11[5] = a1[4];
  *(v11 + 90) = *(a1 + 74);
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  sub_190D0A36C(a1, v21);
  sub_190D56050();
  v21[0] = v23;
  sub_190D55FD0();
  v14 = 0;
  if (v22 == 1)
  {
    v14 = sub_190D55D40();
  }

  KeyPath = swift_getKeyPath();
  v16 = v20;
  (*(v6 + 32))(v20, v8, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  v18 = (v16 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v14;
  return result;
}

void sub_190D0990C(uint64_t a1)
{
  v1 = *(*(a1 + 24) + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  v2 = sub_190D56ED0();
  [v1 removeObjectForKey_];
}

uint64_t sub_190D09988@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v48 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63990);
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  sub_190D549E0();
  v50 = *(a1 + 48);
  v51 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  sub_190D55FF0();
  v39 = v18;
  sub_190D56610();
  sub_190D549E0();
  v19 = swift_allocObject();
  v20 = *(a1 + 48);
  v19[3] = *(a1 + 32);
  v19[4] = v20;
  v19[5] = *(a1 + 64);
  *(v19 + 90) = *(a1 + 74);
  v21 = *(a1 + 16);
  v19[1] = *a1;
  v19[2] = v21;
  sub_190D0A36C(a1, &v49);
  v38 = v13;
  sub_190D56070();
  sub_190D549E0();
  sub_190D53980();
  v22 = sub_190D539A0();
  (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
  v23 = v47;
  sub_190D56050();
  v37 = *(v45 + 16);
  v24 = v40;
  v25 = v46;
  v37(v40, v18, v46);
  v26 = *(v48 + 16);
  v27 = v41;
  v28 = v43;
  v26(v41, v13, v43);
  v29 = v42;
  v26(v42, v23, v28);
  v30 = v44;
  v37(v44, v24, v25);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63998);
  v32 = v27;
  v26(&v30[*(v31 + 48)], v27, v28);
  v26(&v30[*(v31 + 64)], v29, v28);
  v33 = *(v48 + 8);
  v33(v47, v28);
  v33(v38, v28);
  v34 = v46;
  v35 = *(v45 + 8);
  v35(v39, v46);
  v33(v29, v28);
  v33(v32, v28);
  return (v35)(v24, v34);
}

uint64_t sub_190D09F48(void *a1)
{
  v2 = *(a1[3] + OBJC_IVAR____TtC7ChatKit15UserDefaultItem_defaults);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A928);
  sub_190D55FD0();
  v3 = sub_190D56ED0();

  v4 = sub_190D56ED0();
  [v2 setValue:v3 forKey:v4];

  sub_190B224E8();
  if (*a1)
  {
    sub_190D50920();
    sub_190B22EB4();
  }

  else
  {
    type metadata accessor for PinnedUserDefault(0);
    sub_190D05F90(&qword_1EAD58060, type metadata accessor for PinnedUserDefault);
    result = sub_190D54510();
    __break(1u);
  }

  return result;
}

uint64_t sub_190D0A098@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();
  sub_190D549B0();
  sub_190D549F0();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

unint64_t sub_190D0A1EC()
{
  result = qword_1EAD63988;
  if (!qword_1EAD63988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63988);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_190D0A2A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_190D0A2EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190D0A3C4()
{
  result = qword_1EAD639D0;
  if (!qword_1EAD639D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD639C8);
    sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD639D0);
  }

  return result;
}

uint64_t sub_190D0A474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD639A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190D0A4EC()
{
  result = qword_1EAD639F0;
  if (!qword_1EAD639F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD639F0);
  }

  return result;
}

unint64_t sub_190D0A550()
{
  result = qword_1EAD63A58;
  if (!qword_1EAD63A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63A28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63A10);
    sub_190233640(&qword_1EAD63A60, &qword_1EAD63A10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63A58);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{

  return MEMORY[0x1EEE6BDD0](v0, 106, 7);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 122, 7);
}

uint64_t sub_190D0A7F0(uint64_t a1)
{
  v2 = sub_190D54190();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D54620();
}

char *sub_190D0A8B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63AD0);
  v5 = *(v4 - 8);
  v58 = v4;
  v59 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63AD8);
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = type metadata accessor for SendLaterRootView();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___CKSendLaterView_cancellables] = MEMORY[0x1E69E7CD0];
  *&v2[OBJC_IVAR___CKSendLaterView_hostingView] = 0;
  *&v2[OBJC_IVAR___CKSendLaterView_pluginContext] = a1;
  v15 = objc_allocWithZone(type metadata accessor for SendLaterRootViewModel());
  v56 = a1;
  v16 = sub_190B0D6DC(v56);
  v60.receiver = v2;
  v60.super_class = CKSendLaterView;
  v17 = objc_msgSendSuper2(&v60, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  *(v14 + *(v12 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  v19 = v14 + *(v12 + 32);
  *v19 = sub_190843D5C;
  *(v19 + 1) = v18;
  v19[16] = 0;
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63AE0));
  v21 = v17;
  v22 = v16;
  v23 = sub_190D54090();
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v23 setBackgroundColor_];

  v26 = v23;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = v21;
  [v27 addSubview_];
  v28 = *&v27[OBJC_IVAR___CKSendLaterView_hostingView];
  *&v27[OBJC_IVAR___CKSendLaterView_hostingView] = v26;
  v29 = v26;

  v30 = [v24 clearColor];
  [v27 setBackgroundColor_];

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_190DD86A0;
  v33 = [v29 leadingAnchor];
  v34 = [v27 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v32 + 32) = v35;
  v36 = [v29 trailingAnchor];
  v37 = [v27 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v32 + 40) = v38;
  v39 = [v29 topAnchor];
  v40 = [v27 topAnchor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v32 + 48) = v41;
  v42 = [v29 bottomAnchor];

  v43 = [v27 bottomAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v32 + 56) = v44;
  sub_1902188FC(0, &qword_1EAD45040);
  v45 = sub_190D57160();

  [v31 activateConstraints_];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D7E0);
  sub_190D538E0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_190233640(&qword_1EAD63AE8, &qword_1EAD63AD8);
  v46 = v54;
  sub_190D53940();

  (*(v55 + 8))(v10, v46);
  swift_beginAccess();
  sub_190D53880();
  swift_endAccess();

  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = &v22[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_onRequestPresentation];
  v49 = *&v22[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_onRequestPresentation];
  *v48 = sub_190D0B9F0;
  v48[1] = v47;
  sub_190D50920();
  sub_19022123C(v49);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5D7D0);
  v50 = v57;
  sub_190D538E0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_190233640(&unk_1EAD63AF0, &qword_1EAD63AD0);
  v51 = v58;
  sub_190D53940();

  (*(v59 + 8))(v50, v51);
  swift_beginAccess();
  sub_190D53880();
  swift_endAccess();

  return v27;
}

uint64_t sub_190D0B14C()
{
  v0 = sub_190D56770();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D567A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1902188FC(0, &qword_1EAD46670);
    v15 = sub_190D57870();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    aBlock[4] = sub_190D0BA00;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_141;
    v11 = _Block_copy(aBlock);
    v14 = v9;

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    v13 = v4;
    sub_190233640(&qword_1EAD46730, &unk_1EAD546A0);
    sub_190D58170();
    v12 = v15;
    MEMORY[0x193AF3110](0, v7, v3, v11);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v13);
  }

  return result;
}

void *sub_190D0B444(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result ckSendLaterViewContentsUpdated_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190D0B4AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 ckSendLaterViewWantsDatePickerPresented_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_190D0B534(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v3 = Strong;
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 ckSendLaterViewCancelled_];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void CKSendLaterView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKSendLaterView_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR___CKSendLaterView_hostingView) = 0;
  sub_190D58510();
  __break(1u);
}

CGSize __swiftcall CKSendLaterView.sizeThatFits(_:)(CGSize a1)
{
  v2 = *(v1 + OBJC_IVAR___CKSendLaterView_hostingView);
  if (v2)
  {
    [v2 sizeThatFits_];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

void __swiftcall CKSendLaterView.init(frame:)(CKSendLaterView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_190D0BB28()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190D0BB88(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

uint64_t sub_190D0BC68()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190D0BD18(uint64_t a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_190D0BD70(v4);
}

void sub_190D0BD70(uint64_t a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 != a1)
  {
    if (v4 == 1)
    {
      v5 = *&v1[OBJC_IVAR___CKAudioMessageRecordingView_displayLink];
      if (v5)
      {
        v6 = objc_opt_self();
        v7 = v5;
        v8 = [v6 mainRunLoop];
        [v7 addToRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];
      }

      v9 = CACurrentMediaTime();
      v10 = &v1[OBJC_IVAR___CKAudioMessageRecordingView_recordingStartTime];
      *v10 = v9;
      *(v10 + 8) = 0;
      v11 = *&v1[OBJC_IVAR___CKAudioMessageRecordingView_waveformView];
      v12 = &v11[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
      swift_beginAccess();
      v13 = *v12;
      v14 = *(v12 + 8);
      *v12 = 0.0;
      *(v12 + 8) = 0;
      if ((v14 & 1) != 0 || v13 != 0.0)
      {
        [v11 setNeedsLayout];
      }
    }

    sub_190D0F72C();
    if (!*&v1[v3])
    {
      v15 = *&v1[OBJC_IVAR___CKAudioMessageRecordingView_waveformView];
      v16 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
      swift_beginAccess();
      *&v15[v16] = MEMORY[0x1E69E7CC0];

      [v15 setNeedsLayout];
      v17 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
      swift_beginAccess();
      *&v1[v17] = 0x7FF8000000000000;
      sub_190D0F72C();
      v18 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
      swift_beginAccess();
      v19 = *&v1[v18];
      *&v1[v18] = 0;
      if (v19 != 0.0)
      {
        sub_190D0F72C();
      }
    }

    [v1 setNeedsLayout];
    v20 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    aBlock[4] = sub_190B45D54;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_56_0;
    v22 = _Block_copy(aBlock);
    v23 = v1;

    [v20 animateWithDuration:2 delay:v22 usingSpringWithDamping:0 initialSpringVelocity:0.6 options:0.0 animations:0.86 completion:0.0];
    _Block_release(v22);
  }
}

void (*sub_190D0C050(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190D0C0E4;
}

void sub_190D0C0E4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_190D0BD70(v5);

  free(v1);
}

double sub_190D0C174()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190D0C228(double a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_190D0C294(double *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  result = swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

void (*sub_190D0C304(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190D0C398;
}

void sub_190D0C398(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsLayout];
  }

  free(v1);
}

uint64_t sub_190D0C440()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190D0C500(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return [*(v1 + OBJC_IVAR___CKAudioMessageRecordingView_stopButton) setHighlighted_];
  }

  return result;
}

id sub_190D0C57C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return [*(v3 + OBJC_IVAR___CKAudioMessageRecordingView_stopButton) setHighlighted_];
  }

  return result;
}

void (*sub_190D0C5F8(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_190D0C68C;
}

void sub_190D0C68C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    [*(v1[3] + OBJC_IVAR___CKAudioMessageRecordingView_stopButton) setHighlighted_];
  }

  free(v1);
}

double sub_190D0C73C()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_190D0C798(uint64_t *a1))()
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190D0C82C;
}

double sub_190D0C878()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190D0C8C8(char *a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a2;
  if (v7 != a2)
  {
    v8 = a1;
    sub_190D0F72C();
  }
}

id sub_190D0C940(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = a2;
  if (v6 != a2)
  {
    return sub_190D0F72C();
  }

  return result;
}

id sub_190D0C99C(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  *(v6 + v7) = v5;
  if (v5 != v9)
  {
    return sub_190D0F72C();
  }

  return result;
}

uint64_t (*sub_190D0C9FC(uint64_t *a1))()
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
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190D10DEC;
}

void sub_190D0CA90(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    sub_190D0F72C();
  }

  free(v1);
}

id sub_190D0CC34()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_190D0CD38(void *a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  [*(v1 + v6) setNeedsUpdateConfiguration];
}

id sub_190D0CDC8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  return [*(v3 + v7) setNeedsUpdateConfiguration];
}

id (*sub_190D0CE54(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190D0CEB8;
}

id sub_190D0CEB8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
    swift_beginAccess();
    v7 = *(v5 + v6);

    return [v7 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_190D0CFA4()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_190D0D058(uint64_t a1)
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_190D0D0B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id AudioMessageRecordingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AudioMessageRecordingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_minimumWaveformWidth] = 0x403E000000000000;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_stateChangeAnimationDuration] = 0x3FE3333333333333;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_stateChangeSpringDamping] = 0x3FEB851EB851EB85;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_state] = 0;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius] = 0;
  v4[OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted] = 0;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration] = 0;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime] = 0x7FF8000000000000;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_lastIntensityTime] = 0;
  v9 = &v4[OBJC_IVAR___CKAudioMessageRecordingView_recordingStartTime];
  *v9 = 0;
  v9[8] = 1;
  v4[OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing] = 0;
  v10 = &v4[OBJC_IVAR___CKAudioMessageRecordingView_scrubStartLocation];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_scrubStartTime] = 0;
  v11 = &v4[OBJC_IVAR___CKAudioMessageRecordingView_scrubOffset];
  *v11 = 0;
  v11[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_scrubScale] = _Q0;
  v17 = OBJC_IVAR___CKAudioMessageRecordingView_backgroundView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v18 = objc_opt_self();
  result = [v18 iMessageService];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  *&v4[OBJC_IVAR___CKAudioMessageRecordingView_service] = result;
  v20 = OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton;
  type metadata accessor for AudioMessageRecordingAppendButton();
  *&v4[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v18 iMessageService];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = OBJC_IVAR___CKAudioMessageRecordingView_closeButton;
  sub_190AB8714();
  *&v4[v21] = v22;
  result = [v18 iMessageService];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = OBJC_IVAR___CKAudioMessageRecordingView_stopButton;
  sub_190AB8E34();
  *&v4[v23] = v24;
  result = [v18 iMessageService];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = OBJC_IVAR___CKAudioMessageRecordingView_playButton;
  *&v4[v25] = sub_190AB92E8();
  result = [v18 iMessageService];
  if (result)
  {
    v26 = result;
    v27 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
    sub_190AB8AC8();
    v29 = v28;

    *&v4[v27] = v29;
    v30 = OBJC_IVAR___CKAudioMessageRecordingView_waveformView;
    type metadata accessor for AudioMessageRecordingWaveformView();
    *&v4[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v4[OBJC_IVAR___CKAudioMessageRecordingView_displayLink] = 0;
    v31.receiver = v4;
    v31.super_class = type metadata accessor for AudioMessageRecordingView();
    return objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  }

LABEL_11:
  __break(1u);
  return result;
}

char *AudioMessageRecordingView.__allocating_init(frame:service:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_190D10208(a1);

  return v4;
}

char *AudioMessageRecordingView.init(frame:service:)(void *a1)
{
  v2 = sub_190D10208(a1);

  return v2;
}

void sub_190D0D5F4()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_displayLink;
  if (!*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_displayLink))
  {
    v2 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_displayLinkFiredFrom_];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_190D0D744()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_displayLink;
  [*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_displayLink) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

id AudioMessageRecordingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_190D0D878(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27[-v6];
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_190D57FD0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_19022EEA4(v7, &unk_1EAD57940);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = [objc_opt_self() sharedBehaviors];
  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = [v14 theme];

  if (!v16)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v17 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v18 = [v16 sendButtonColorForColorType_];

  if ([a1 isHighlighted])
  {
    if (v18)
    {
      v19 = [v18 colorWithAlphaComponent_];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v18;
    v19 = v18;
  }

  if ([a1 isEnabled])
  {
    v21 = v19;
  }

  else
  {
    v22 = [objc_opt_self() systemGrayColor];
    [v22 colorWithAlphaComponent_];
  }

  sub_190D57EF0();
  if ([a1 isHighlighted] && (v23 = objc_msgSend(a1, sel_traitCollection), v24 = objc_msgSend(v23, sel_userInterfaceStyle), v23, v24 == 2))
  {
    v25 = [objc_opt_self() whiteColor];
    [v25 colorWithAlphaComponent_];
  }

  else
  {
    v26 = [objc_opt_self() whiteColor];
  }

  sub_190D57F00();
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_190D57FE0();

  (*(v9 + 8))(v11, v8);
}

void sub_190D0DCE0()
{
  v1 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_closeButton];
  [v0 addSubview_];
  v2 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_backgroundView];
  [v0 addSubview_];
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  [v2 addSubview_];
  v4 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_playButton];
  [v2 addSubview_];
  v5 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_stopButton];
  [v2 addSubview_];
  v6 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton];
  [v2 addSubview_];
  v7 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_waveformView];
  [v2 addSubview_];
  [v1 addTarget:v0 action:sel_closeFrom_ forControlEvents:0x2000];
  [*&v0[v3] addTarget:v0 action:sel_sendFrom_ forControlEvents:0x2000];
  [v4 addTarget:v0 action:sel_playFrom_ forControlEvents:0x2000];
  [v5 addTarget:v0 action:sel_stopFrom_ forControlEvents:0x2000];
  v8 = *(v6 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton);
  v9 = v0;
  [v8 addTarget:v9 action:sel_resumeFrom_ forControlEvents:0x2000];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v9 action:sel_scrubFrom_];

  [v10 setDelegate_];
  [v10 setMinimumPressDuration_];
  [v10 setAllowableMovement_];
  [v7 addGestureRecognizer_];
}

id sub_190D0DF34()
{
  v1 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_closeButton];
  [v1 sizeToFit];
  [v1 bounds];
  v2 = CGRectGetWidth(v8) * 0.5;
  [v0 bounds];
  [v1 setCenter_];
  v3 = [objc_opt_self() sharedFeatureFlags];
  v4 = [v3 isEntryViewRefreshEnabled];

  v5 = 0.0;
  if ((v4 & 1) == 0)
  {
    v6 = OBJC_IVAR___CKAudioMessageRecordingView_state;
    swift_beginAccess();
    v5 = 0.0;
    if ((*&v0[v6] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v5 = 1.0;
    }
  }

  return [v1 setAlpha_];
}

void sub_190D0E04C()
{
  if (v0[OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing])
  {
    v1 = 1.02;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = objc_opt_self();
  v3 = &selRef_setUpdateType_;
  v4 = [v2 sharedFeatureFlags];
  v5 = [v4 isEntryViewRefreshEnabled];

  if ((v5 & 1) == 0)
  {
    v6 = OBJC_IVAR___CKAudioMessageRecordingView_state;
    swift_beginAccess();
    if ((*&v0[v6] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v0 bounds];
      Width = CGRectGetWidth(v33);
      v8 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_scrubScale];
      v9 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_closeButton];
      [v9 bounds];
      MaxX = CGRectGetMaxX(v34);
      v11 = objc_opt_self();
      v12 = [v11 sharedBehaviors];
      if (v12)
      {
        v13 = v12;
        [v12 audioRecordingViewButtonSpacing];
        v15 = v14;

        [v9 bounds];
        v16 = CGRectGetMaxX(v35);
        v17 = [v11 sharedBehaviors];
        if (v17)
        {
          v18 = v17;
          v19 = v1 * (Width * v8) - MaxX - v15;
          [v17 audioRecordingViewButtonSpacing];
          v21 = v20;

          MidX = v19 * 0.5 + v16 + v21;
          v23 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_backgroundView];
          [v0 bounds];
          MidY = CGRectGetHeight(v36) * 0.5;
          v3 = &selRef_setUpdateType_;
          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  [v0 bounds];
  CGRectGetWidth(v37);
  v23 = *&v0[OBJC_IVAR___CKAudioMessageRecordingView_backgroundView];
  [v0 bounds];
  MidX = CGRectGetMidX(v38);
  [v0 bounds];
  MidY = CGRectGetMidY(v39);
LABEL_10:
  [v23 setCenter_];
  [v0 bounds];
  CGRectGetHeight(v40);
  [v23 bounds];
  [v23 setBounds_];
  v25 = [v2 v3[260]];
  v26 = [v25 isEntryViewRefreshEnabled];

  if ((v26 & 1) == 0)
  {
    v27 = [v23 layer];
    v28 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
    swift_beginAccess();
    v29 = *&v0[v28];
    [v23 bounds];
    v30 = CGRectGetHeight(v41) * 0.5;
    if (v30 >= v29)
    {
      v30 = v29;
    }

    [v27 setCornerRadius_];

    v31 = [v23 layer];
    [v31 setCornerCurve_];

    v32 = sub_190D0FDA8();
    [v23 setBackgroundColor_];
  }
}

id sub_190D0E3E8()
{
  v1 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_playButton);
  v2 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView);
  [v2 bounds];
  [v1 sizeThatFits_];
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  v9 = (CGRectGetHeight(v15) - v8) * 0.5;
  [v2 bounds];
  v10 = v6 * 0.5 + v9 + CGRectGetMinX(v16);
  [v2 bounds];
  MidY = CGRectGetMidY(v17);
  v12 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  [v1 setSelected_];
  [v1 sizeToFit];
  [v1 setCenter_];
  v13 = 0.0;
  if ((*(v0 + v12) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v13 = 1.0;
    if (*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing))
    {
      v13 = 0.0;
    }
  }

  return [v1 setAlpha_];
}

id sub_190D0E558()
{
  v1 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_stopButton);
  v2 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView);
  [v2 bounds];
  [v1 sizeThatFits_];
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  v9 = (CGRectGetHeight(v17) - v8) * 0.5;
  [v2 bounds];
  v10 = CGRectGetMaxX(v18) - v9 - v6 * 0.5;
  [v2 bounds];
  MidY = CGRectGetMidY(v19);
  v12 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  [*(v0 + v12) sizeToFit];
  [*(v0 + v12) setCenter_];
  v13 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v14 = 0.0;
  if ((*(v0 + v13) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = 1.0;
    if (*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing))
    {
      v14 = 0.0;
    }
  }

  [*(v0 + v12) setAlpha_];
  [v1 sizeToFit];
  [v1 setCenter_];
  v15 = 1.0;
  if (*(v0 + v13) != 1)
  {
    v15 = 0.0;
  }

  return [v1 setAlpha_];
}

void sub_190D0E710()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton);
  v3 = *MEMORY[0x1E69DDD28];
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_textStyle;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = v3;
  v6 = sub_190D56F10();
  v8 = v7;
  if (v6 == sub_190D56F10() && v8 == v9)
  {
    v13 = v3;
  }

  else
  {
    v11 = sub_190D58760();
    v12 = v3;

    if ((v11 & 1) == 0)
    {
      v2[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
      [v2 setNeedsLayout];
    }
  }

  v14 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  if (*(v1 + v14) == 2)
  {
    v15 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_isEnabled;
  swift_beginAccess();
  v17 = v2[v16];
  v2[v16] = v15 & 1;
  if ((v15 & 1) != v17)
  {
    v2[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration] = 1;
    [v2 setNeedsLayout];
  }

  [v2 setHidden_];
  v18 = *(v1 + v14);
  if (v18 >= 4)
  {
    goto LABEL_26;
  }

  v19 = [objc_opt_self() *off_1E72FA630[v18]];
  sub_190CCB104(v19);
  v20 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_playButton);
  v21 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView);
  v24 = v22;
  [v23 bounds];
  [v2 sizeThatFits_];
  v27 = v24;
  [v27 frame];
  CGRectGetMinX(v50);
  [v20 frame];
  CGRectGetMaxX(v51);
  v28 = objc_opt_self();
  v29 = [v28 sharedBehaviors];
  if (v29)
  {
    v30 = v29;
    [v29 audioRecordingViewDurationSpacing];

    [v2 bounds];
    [v2 setBounds_];
    if (*(v1 + v14) <= 3uLL && (*(v1 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing) & 1) == 0)
    {
      [v27 frame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v54.origin.x = v38;
      v54.origin.y = v40;
      v54.size.width = v42;
      v54.size.height = v44;
      MinX = CGRectGetMinX(v54);
      v46 = [v28 sharedBehaviors];
      if (v46)
      {
        v47 = v46;
        [v46 audioRecordingViewDurationSpacing];
        v49 = v48;

        [v2 bounds];
        v36 = MinX - v49 + CGRectGetWidth(v55) * -0.5;
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    [v23 bounds];
    MaxX = CGRectGetMaxX(v52);
    v32 = [v28 sharedBehaviors];
    if (v32)
    {
      v33 = v32;
      [v32 audioRecordingViewButtonSpacing];
      v35 = v34;

      [v2 bounds];
      v36 = MaxX - v35 - CGRectGetMidX(v53);
LABEL_22:
      [v23 bounds];
      [v2 setCenter_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_190D58790();
  __break(1u);
}

void sub_190D0EBB4()
{
  v1 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_playButton);
  v2 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  if ((*(v0 + v2) & 0xFFFFFFFFFFFFFFFELL) == 2 && (*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing) & 1) == 0)
  {
    [*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView) bounds];
    MinX = CGRectGetMinX(v30);
    [v1 bounds];
    Width = CGRectGetWidth(v31);
    v9 = [objc_opt_self() sharedBehaviors];
    if (!v9)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = v9;
    v11 = MinX + Width;
    [v9 audioRecordingViewDurationSpacing];
    v13 = v12;

    v6 = v11 + v13 + v13;
  }

  else
  {
    v3 = [objc_opt_self() sharedBehaviors];
    if (!v3)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4 = v3;
    [v3 audioRecordingViewButtonSpacing];
    v6 = v5;
  }

  if (*(v0 + v2) > 3uLL || (*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing) & 1) != 0)
  {
    v14 = objc_opt_self();
    v15 = [v14 sharedBehaviors];
    if (v15)
    {
      v16 = v15;
      [v15 audioRecordingViewButtonSpacing];

      [*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton) bounds];
      CGRectGetWidth(v32);
      v17 = [v14 sharedBehaviors];
      if (v17)
      {
        v18 = v17;
        goto LABEL_14;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView) bounds];
  CGRectGetWidth(v33);
  [*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton) frame];
  CGRectGetMinX(v34);
  v19 = [objc_opt_self() sharedBehaviors];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v19;
LABEL_14:
  [v18 audioRecordingViewDurationSpacing];

  v20 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView);
  [v20 bounds];
  CGRectGetHeight(v35);
  v21 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
  [v20 bounds];
  CGRectGetWidth(v36);
  [v21 bounds];
  [v21 setBounds_];
  [v21 bounds];
  v22 = v6 + CGRectGetMidX(v37);
  [v20 bounds];
  [v21 setCenter_];
  if (*(v0 + v2))
  {
    [v21 bounds];
    v24 = v23 < 30.0;
  }

  else
  {
    v24 = 1;
  }

  [v21 setHidden_];
  v25 = *(v0 + v2);
  if (v25 < 4)
  {
    v26 = [objc_opt_self() *off_1E72FA650[v25]];
    v27 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
    swift_beginAccess();
    v28 = *&v21[v27];
    *&v21[v27] = v26;
    v29 = v26;

    [v21 setNeedsLayout];
    return;
  }

LABEL_24:
  sub_190D58790();
  __break(1u);
}

void sub_190D0F018()
{
  v1 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_playButton);
  v2 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_backgroundView);
  [v2 bounds];
  [v1 sizeThatFits_];
  v5 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_stopButton);
  [v2 bounds];
  [v5 sizeThatFits_];
  v8 = [objc_opt_self() sharedBehaviors];
  if (v8)
  {
    v9 = v8;
    [v8 audioRecordingViewPadding];
  }

  else
  {
    __break(1u);
  }
}

void sub_190D0F208()
{
  v1 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_displayLink);
  if (v1)
  {
    v2 = v1;
    [v2 targetTimestamp];
    v4 = v3;
    v5 = OBJC_IVAR___CKAudioMessageRecordingView_state;
    swift_beginAccess();
    if (*(v0 + v5) != 1 || (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) == 0) || (([Strong powerLevelForAudioMessageRecordingView_], v8 = v7, swift_unknownObjectRelease(), (~*&v8 & 0x7FF0000000000000) == 0) ? (v9 = (*&v8 & 0xFFFFFFFFFFFFFLL) == 0) : (v9 = 1), !v9))
    {
LABEL_35:

      return;
    }

    v10 = objc_opt_self();
    v11 = [v10 sharedBehaviors];
    if (v11)
    {
      v12 = v11;
      [v11 audioRecordingViewTimeBetweenWaveformSegments];
      v14 = v13;

      v15 = OBJC_IVAR___CKAudioMessageRecordingView_lastIntensityTime;
      *v16.i64 = (v4 - *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_lastIntensityTime)) / v14;
      v53 = v16;
      if (*v16.i64 < 1.0)
      {
LABEL_26:
        if ((*(v0 + OBJC_IVAR___CKAudioMessageRecordingView_recordingStartTime + 8) & 1) == 0)
        {
          v35 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_recordingStartTime);
          v36 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton);
          v37 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
          swift_beginAccess();
          v38 = v4 - v35 + *(v0 + v37);
          v39 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
          swift_beginAccess();
          v40.i64[0] = *(v36 + v39);
          *(v36 + v39) = v38;
          if (floor(v38) != floor(*v40.i64))
          {
            *(v36 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration) = 1;
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              [v41 setNeedsLayout];
              swift_unknownObjectRelease();
            }
          }

          v42 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
          *v40.i64 = *v53.i64 - trunc(*v53.i64);
          v43.f64[0] = NAN;
          v43.f64[1] = NAN;
          *&v54 = vbslq_s8(vnegq_f64(v43), v40, v53).u64[0];
          v44 = &v42[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
          swift_beginAccess();
          v45 = *v44;
          v46 = *(v44 + 8);
          *v44 = v54;
          *(v44 + 8) = 0;
          if ((v46 & 1) != 0 || v54 != v45)
          {
            [v42 setNeedsLayout];
          }

          v47 = &v42[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount];
          swift_beginAccess();
          v48 = v47[8];
          *v47 = 0;
          v47[8] = 1;
          if ((v48 & 1) == 0)
          {
            [v42 setNeedsLayout];
          }
        }

        goto LABEL_35;
      }

      v17 = [v10 sharedBehaviors];
      if (v17)
      {
        v18 = v17;
        [v17 audioRecordingViewMinimumDBLevel];
        v20 = v19;

        v21 = [v10 sharedBehaviors];
        if (v21)
        {
          v22 = v21;
          [v21 audioRecordingViewMaximumDBLevel];
          v24 = v23;

          if (v24 >= v8)
          {
            v25 = v8;
          }

          else
          {
            v25 = v24;
          }

          if (v25 <= v20)
          {
            v25 = v20;
          }

          v26 = (v25 - v20) / (v24 - v20);
          v27 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
          v28 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
          swift_beginAccess();
          v29 = *&v27[v28];
          v30 = *(v29 + 2);
          if (v30)
          {
            v26 = v26 * 0.7 + *&v29[8 * v30 + 24] * 0.3;
            if (v30 != 1)
            {
              v26 = v26 * 0.85 + *&v29[8 * v30 + 16] * 0.15;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v27[v28] = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = sub_190835BEC(0, *(v29 + 2) + 1, 1, v29);
            *&v27[v28] = v29;
          }

          v32 = *(v29 + 2);
          v33 = *(v29 + 3);
          v34 = v32 + 1;
          if (v32 >= v33 >> 1)
          {
            v52 = v32 + 1;
            v49 = v29;
            v50 = *(v29 + 2);
            v51 = sub_190835BEC((v33 > 1), v32 + 1, 1, v49);
            v32 = v50;
            v34 = v52;
            v29 = v51;
          }

          *(v29 + 2) = v34;
          *&v29[8 * v32 + 32] = v26;
          *&v27[v28] = v29;
          [v27 setNeedsLayout];
          *(v0 + v15) = v4;
          goto LABEL_26;
        }

LABEL_39:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

id sub_190D0F72C()
{
  v1 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >= 2)
  {
    if (v3 == 3)
    {
      v4 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton);
      v5 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
    }

    else
    {
      if (v3 != 2)
      {
        result = sub_190D58790();
        __break(1u);
        return result;
      }

      v4 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton);
      v5 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
    }

    swift_beginAccess();
    v6 = *(v0 + v5);
    v7 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_duration;
    swift_beginAccess();
    v8 = *(v4 + v7);
    *(v4 + v7) = v6;
    if (floor(v6) != floor(v8))
    {
      *(v4 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_needsUpdateConfiguration) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong setNeedsLayout];
        swift_unknownObjectRelease();
      }
    }

    v10 = *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
    v11 = &v10[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
    swift_beginAccess();
    v12 = v11[8];
    *v11 = 0;
    v11[8] = 1;
    if (v12 != 1)
    {
      [v10 setNeedsLayout];
    }

    v13 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
    swift_beginAccess();
    v14 = *(v0 + v13);
    v15 = 0.0;
    if (v14 > 0.0)
    {
      v16 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
      swift_beginAccess();
      v15 = *(v0 + v16) / v14;
    }

    v17 = &v10[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount];
    result = swift_beginAccess();
    v18 = *v17;
    v19 = *(v17 + 8);
    *v17 = v15;
    *(v17 + 8) = v14 <= 0.0;
    if (v14 <= 0.0)
    {
      if (v19)
      {
        return result;
      }

      return [v10 setNeedsLayout];
    }

    if (v15 != v18)
    {
      v19 = 1;
    }

    if (v19)
    {
      return [v10 setNeedsLayout];
    }
  }

  return result;
}

id sub_190D0F988(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  *&v3[v4] = a1;
  sub_190D52690();

  return [v3 setNeedsLayout];
}

id sub_190D0FAB0(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v5 = *&v3[v4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v3[v4] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_190835BEC(0, *(v5 + 2) + 1, 1, v5);
    *&v3[v4] = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_190835BEC((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  *&v3[v4] = v5;
  return [v3 setNeedsLayout];
}

id AudioMessageRecordingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioMessageRecordingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190D0FDA8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isEntryViewRefreshEnabled];

  if (!v2)
  {
    v5 = OBJC_IVAR___CKAudioMessageRecordingView_state;
    swift_beginAccess();
    v6 = *(v0 + v5);
    if (v6 - 2 >= 2)
    {
      if (v6 > 1)
      {
        result = sub_190D58790();
        __break(1u);
        return result;
      }

      v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v15 = sub_190D0FFB0;
      v16 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v8 = &block_descriptor_47_0;
    }

    else
    {
      v7 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v15 = sub_190D10030;
      v16 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v8 = &block_descriptor_142;
    }

    v13 = sub_190D1017C;
    v14 = v8;
    v9 = _Block_copy(&aBlock);
    v10 = [v7 initWithDynamicProvider_];
    _Block_release(v9);

    return v10;
  }

  v3 = [objc_opt_self() clearColor];

  return v3;
}

id sub_190D0FFB0(void *a1)
{
  v1 = [a1 userInterfaceStyle] == 2;
  v2 = [objc_opt_self() systemRedColor];
  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

id sub_190D10030(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [objc_opt_self() quaternarySystemFillColor];

    return v1;
  }

  else
  {
    v7[0] = 0.0;
    v3 = objc_opt_self();
    v4 = [v3 quaternarySystemFillColor];
    [v4 getWhite:0 alpha:v7];

    v5 = [v3 quaternarySystemFillColor];
    v6 = [v5 colorWithAlphaComponent_];

    return v6;
  }
}

id sub_190D1017C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_190D50920();
  v4 = a2;
  v5 = v3();

  return v5;
}

char *sub_190D10208(void *a1)
{
  v3 = [v1 initWithFrame_];
  v4 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = a1;
  v6 = v3;
  v7 = a1;

  v8 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v9 = *&v6[v8];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_190D10DCC;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_19084156C;
  v14[3] = &block_descriptor_50_1;
  v11 = _Block_copy(v14);
  v12 = v9;

  [v12 setConfigurationUpdateHandler_];
  _Block_release(v11);

  sub_190D0DCE0();
  *(*&v6[OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton] + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_delegate + 8) = &off_1F0425B68;
  swift_unknownObjectWeakAssign();
  return v6;
}

void _s7ChatKit25AudioMessageRecordingViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_minimumWaveformWidth) = 0x403E000000000000;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_stateChangeAnimationDuration) = 0x3FE3333333333333;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_stateChangeSpringDamping) = 0x3FEB851EB851EB85;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_state) = 0;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted) = 0;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration) = 0;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime) = 0x7FF8000000000000;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_lastIntensityTime) = 0;
  v1 = v0 + OBJC_IVAR___CKAudioMessageRecordingView_recordingStartTime;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_isScrubbing) = 0;
  v2 = (v0 + OBJC_IVAR___CKAudioMessageRecordingView_scrubStartLocation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_scrubStartTime) = 0;
  v3 = (v0 + OBJC_IVAR___CKAudioMessageRecordingView_scrubOffset);
  *v3 = 0;
  v3[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_scrubScale) = _Q0;
  v9 = OBJC_IVAR___CKAudioMessageRecordingView_backgroundView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = objc_opt_self();
  v11 = [v10 iMessageService];
  if (!v11)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_service) = v11;
  v12 = OBJC_IVAR___CKAudioMessageRecordingView_durationAppendButton;
  type metadata accessor for AudioMessageRecordingAppendButton();
  *(v0 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = [v10 iMessageService];
  if (!v13)
  {
    __break(1u);
  }

  v14 = OBJC_IVAR___CKAudioMessageRecordingView_closeButton;
  sub_190AB8714();
  *(v0 + v14) = v15;
  v16 = [v10 iMessageService];
  if (!v16)
  {
    __break(1u);
  }

  v17 = OBJC_IVAR___CKAudioMessageRecordingView_stopButton;
  sub_190AB8E34();
  *(v0 + v17) = v18;
  v19 = [v10 iMessageService];
  if (!v19)
  {
    __break(1u);
  }

  v20 = OBJC_IVAR___CKAudioMessageRecordingView_playButton;
  *(v0 + v20) = sub_190AB92E8();
  v21 = [v10 iMessageService];
  if (!v21)
  {
    __break(1u);
  }

  v22 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  v23 = v21;
  sub_190AB8AC8();
  v25 = v24;

  *(v0 + v22) = v25;
  v26 = OBJC_IVAR___CKAudioMessageRecordingView_waveformView;
  type metadata accessor for AudioMessageRecordingWaveformView();
  *(v0 + v26) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___CKAudioMessageRecordingView_displayLink) = 0;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190D10684()
{
  result = qword_1EAD63BC8;
  if (!qword_1EAD63BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63BC8);
  }

  return result;
}

id sub_190D10DF0(void *a1)
{
  sub_190B27868();
  v2 = a1;
  sub_190D57170();

  return 0;
}

uint64_t NSArray.ck_attachmentSummary.getter()
{
  sub_190B27868();
  sub_190D57170();
  return 0;
}

void sub_190D10F20(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57900);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57908);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57910);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  ObjCClassFromMetadata = (&v54 - v11);
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v62 = ObjCClassFromMetadata;
    v14 = [objc_opt_self() mediaClasses];
    if (!v14)
    {
      return;
    }

    ObjCClassFromMetadata = v14;
    v54 = v7;
    v55 = v6;
    v56 = v13;
    v57 = v5;
    v58 = v10;
    v59 = v9;
    v60 = v3;
    v61 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56FB0);
    v9 = sub_190D57180();

    v68 = sub_19082471C(MEMORY[0x1E69E7CC0]);
    v13 = 0;
    v2 = *(v9 + 16);
    v3 = a1 & 0xC000000000000001;
    v64 = a1 + 32;
    v65 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = &selRef_chatItemsChanged_;
    v66 = a1;
    v6 = i;
    do
    {
      while (1)
      {
        if (v3)
        {
          v15 = MEMORY[0x193AF3B90](v13, a1);
        }

        else
        {
          if (v13 >= *(v65 + 16))
          {
            goto LABEL_60;
          }

          v15 = *(v64 + 8 * v13);
        }

        v5 = v15;
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_58;
        }

        v17 = 0;
LABEL_12:
        if (v2 != v17)
        {
          break;
        }

        if (v13 == v6)
        {
          goto LABEL_22;
        }
      }

      if (v17 >= *(v9 + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v10 = v17 + 1;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = [v5 isKindOfClass_];
      v17 = v10;
      if ((v18 & 1) == 0)
      {
        goto LABEL_12;
      }

      v19 = NSStringFromClass(ObjCClassFromMetadata);
      v20 = sub_190D56F10();
      v22 = v21;

      if (*(v68 + 16) && (sub_19022DCEC(v20, v22), (v23 & 1) != 0))
      {
        v24 = sub_190D52690();
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
      }

      v69 = v24;
      v5 = v5;
      MEMORY[0x193AF29E0]();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v25 = v68;
      v10 = v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v25;
      ObjCClassFromMetadata = &v71;
      sub_190C1D650(v10, v20, v22, isUniquelyReferenced_nonNull_native);

      v68 = v71;
      a1 = v66;
      v6 = i;
    }

    while (v13 != i);
LABEL_22:

    v13 = v68 + 64;
    v27 = 1 << *(v68 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v3 = v28 & *(v68 + 64);
    a1 = (v27 + 63) >> 6;
    sub_190D52690();
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v2 = &selRef_applicationProxyForIdentifier_;
    while (v3)
    {
LABEL_30:
      v30 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v10 = *(*(v68 + 56) + ((v6 << 9) | (8 * v30)));
      if (v10 >> 62)
      {
        if (v10 < 0)
        {
          ObjCClassFromMetadata = *(*(v68 + 56) + ((v6 << 9) | (8 * v30)));
        }

        else
        {
          ObjCClassFromMetadata = (v10 & 0xFFFFFFFFFFFFFF8);
        }

        v36 = sub_190D581C0();
        if (v36 < 1)
        {
          continue;
        }

        v9 = v36;
        if (!sub_190D581C0())
        {
          continue;
        }
      }

      else
      {
        v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          continue;
        }
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        sub_190D52690();
        ObjCClassFromMetadata = MEMORY[0x193AF3B90](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          return;
        }

        ObjCClassFromMetadata = *(v10 + 32);
      }

      v31 = [ObjCClassFromMetadata attachmentSummary_];
      if (v31)
      {
        v32 = v31;
        i = sub_190D56F10();
        v10 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1908354D4(0, *(v7 + 2) + 1, 1, v7);
        }

        v9 = *(v7 + 2);
        v34 = *(v7 + 3);
        v5 = (v9 + 1);
        if (v9 >= v34 >> 1)
        {
          v7 = sub_1908354D4((v34 > 1), v9 + 1, 1, v7);
        }

        *(v7 + 2) = v5;
        v35 = &v7[16 * v9];
        *(v35 + 4) = i;
        *(v35 + 5) = v10;
      }

      else
      {
      }
    }

    while (1)
    {
      v29 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v29 >= a1)
      {

        v71 = v7;
        v38 = v54;
        v37 = v55;
        v39 = v63;
        (*(v54 + 13))(v63, *MEMORY[0x1E6968638], v55);
        v41 = v60;
        v40 = v61;
        v42 = v57;
        (*(v60 + 104))(v57, *MEMORY[0x1E6968650], v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
        sub_190233640(&qword_1EAD45130, &unk_1EAD57920);
        i = v7;
        v43 = v62;
        sub_190D50E60();
        (*(v41 + 8))(v42, v40);
        (*(v38 + 1))(v39, v37);
        sub_190233640(&qword_1EAD46320, &unk_1EAD57910);
        v44 = v59;
        sub_190D57110();
        (*(v58 + 8))(v43, v44);

        v45 = v69;
        v46 = v70;
        if (v56)
        {
          v47 = sub_190D581C0();
        }

        else
        {
          v47 = *(v65 + 16);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_190DD1D90;
        *(v48 + 56) = MEMORY[0x1E69E6158];
        *(v48 + 64) = sub_19081EA10();
        *(v48 + 32) = v45;
        *(v48 + 40) = v46;
        v49 = CKFrameworkBundle();
        v50 = v49;
        if (v47 <= 1)
        {
          if (!v49)
          {
            goto LABEL_65;
          }
        }

        else if (!v49)
        {
          goto LABEL_64;
        }

        v51 = sub_190D56ED0();
        v52 = sub_190D56ED0();
        v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

        sub_190D56F10();
        sub_190D56EE0();

        return;
      }

      v3 = *(v13 + 8 * v29);
      ++v6;
      if (v3)
      {
        v6 = v29;
        goto LABEL_30;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }
}

uint64_t sub_190D11814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v3[9] = swift_task_alloc();
  v4 = sub_190D519C0();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190D11910, 0, 0);
}

uint64_t sub_190D11910()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  sub_190D52030();
  v0[13] = sub_190D52010();
  (*(v2 + 16))(v3, v4, v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v11 = (*MEMORY[0x1E69A66D8] + MEMORY[0x1E69A66D8]);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_190D11A30;
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  return v11(v6, v8, v9, v7);
}

uint64_t sub_190D11A30(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    sub_1908701CC(v3[9]);

    v4 = sub_190D11D20;
  }

  else
  {
    v6 = v3[11];
    v5 = v3[12];
    v9 = v3 + 9;
    v7 = v3[9];
    v8 = v9[1];

    sub_1908701CC(v7);
    (*(v6 + 8))(v5, v8);
    v4 = sub_190D11BB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_190D11BB0()
{
  v1 = [objc_allocWithZone(CKComposition) initWithText:v0[6] subject:0 translation:v0[15] shelfPluginPayload:0 bizIntent:0 shelfMediaObject:0 proofreadingInfo:0];
  v2 = v0[15];
  if (v1)
  {
    sub_190D518C0();
    v3 = v1;
    v4 = sub_190D56ED0();

    [v3 setSourceLanguageID_];

    sub_190D518C0();
    v5 = v3;
    v6 = sub_190D56ED0();

    [v5 setDestinationLanguageID_];

    v2 = v5;
  }

  v7 = v0[1];

  return v7(v1);
}

uint64_t sub_190D11D20()
{
  v16 = v0;
  if (qword_1EAD46280 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D7C0);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_190D58800();
    v12 = sub_19021D9F8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_19020E000, v4, v5, "translate failed with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t CKBubblePath.bubblePath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit12CKBubblePath_bubblePath;
  v4 = sub_190D56D20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id CKBubblePath.__allocating_init(bubblePath:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC7ChatKit12CKBubblePath_bubblePath;
  v5 = sub_190D56D20();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id CKBubblePath.init(bubblePath:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit12CKBubblePath_bubblePath;
  v4 = sub_190D56D20();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKBubblePath();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

double sub_190D12218()
{
  v0 = sub_190D56C50();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56C60();
  sub_190D56C30();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

double sub_190D124F8(double (*a1)(char *, double, double), double a2, double a3)
{
  v6 = sub_190D56C50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D56C60();
  v10 = a1(v9, a2, a3);
  (*(v7 + 8))(v9, v6);
  return v10;
}

id CKBubblePath.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBubblePath.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBubblePath();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsInlineContactCard()
{
  result = qword_1EAD63BD0;
  if (!qword_1EAD63BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190D128F4()
{
  result = sub_190D526C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_190D1297C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63BE0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63BE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = v42 - v6;
  v7 = sub_190D50E30();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D50E10();
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_190D50DE0();
  v11 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_190D52930();
  v50 = *(v14 - 8);
  v51 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_190D526C0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v1, v17, v19);
  if ((*(v18 + 88))(v21, v17) == *MEMORY[0x1E6995738])
  {
    v42[1] = v2;
    (*(v18 + 96))(v21, v17);
    (*(v50 + 32))(v16, v21, v51);
    v22 = sub_190D52910();
    v23 = sub_190D528D0();
    v25 = sub_190D130C4(v23, v24);
    v27 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63BF8);
    v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63C00) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_190DD1D90;
    v31 = (v30 + v29);
    v32 = v28[14];
    *v31 = v25;
    v31[1] = v27;
    v33 = *MEMORY[0x1E695CFE8];
    v34 = sub_190D50DC0();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    sub_190D50DD0();
    sub_190D52910();
    if (qword_1EAD52150 != -1)
    {
      swift_once();
    }

    v35 = v44;
    v36 = __swift_project_value_buffer(v44, qword_1EAD9E798);
    (*(v43 + 16))(v45, v36, v35);
    v38 = v47;
    v37 = v48;
    (*(v11 + 16))(v48, v13, v47);
    (*(v11 + 56))(v37, 0, 1, v38);
    [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v39 = v46;
    sub_190D50E00();
    v40 = v49;
    (*(v49 + 16))(v4, v39, v9);
    swift_storeEnumTagMultiPayload();
    sub_190D13548(&qword_1EAD63BF0, MEMORY[0x1E695CFF0]);
    sub_190D54C50();
    (*(v40 + 8))(v39, v9);
    (*(v11 + 8))(v13, v38);
    return (*(v50 + 8))(v16, v51);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_190D13548(&qword_1EAD63BF0, MEMORY[0x1E695CFF0]);
    sub_190D54C50();
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_190D130C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_190D56ED0();
  [v6 _appearsToBePhoneNumber];

  v7 = sub_190D56F10();
  v9 = v8;
  v32 = 0;
  v28[0] = v7;
  v28[1] = v8;
  v10 = sub_190D56F10();
  *(&v31 + 1) = MEMORY[0x1E69E6158];
  *&v30 = v10;
  *(&v30 + 1) = v11;
  v12 = sub_190D524D0();
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v13 = 0;
  if (v12)
  {
    v14 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v15 = sub_190D56ED0();
    v13 = [v14 initWithStringValue_];

    v32 = v13;
  }

  v16 = sub_190D56ED0();
  v17 = [v3 valueForKey_];

  if (v17)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    *v28 = 0u;
    v29 = 0u;
  }

  v30 = *v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {

    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63C10);
  if (swift_dynamicCast() & 1) == 0 || (sub_190D52690(), sub_190D52690(), v18 = sub_190D137E8(v27, v7, v9, a1, a2, &v32), v20 = v19, swift_bridgeObjectRelease_n(), result = , (v20))
  {

    return 0;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *(v27 + 16))
  {
    v22 = v27 + 32 * v18;
    sub_19023C414(v22 + 32, &v30);
    if (*(&v31 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0);
      if (swift_dynamicCast())
      {

        v23 = v28[0];
        v24 = [v28[0] identifier];
LABEL_24:
        v25 = v24;
        v26 = sub_190D56F10();

        return v26;
      }
    }

    else
    {
      sub_19021E7D8(&v30);
    }

    sub_19023C414(v22 + 32, &v30);

    if (*(&v31 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0);
      if (swift_dynamicCast())
      {
        v23 = v28[0];
        v24 = [v28[0] identifier];
        goto LABEL_24;
      }

LABEL_12:

      return 0;
    }

LABEL_11:
    sub_19021E7D8(&v30);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_190D13450()
{
  v0 = sub_190D50E30();
  __swift_allocate_value_buffer(v0, qword_1EAD9E798);
  __swift_project_value_buffer(v0, qword_1EAD9E798);
  v2[3] = sub_190D52990();
  v2[4] = sub_190D13548(&qword_1EAD63C08, MEMORY[0x1E6995820]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_190D52600();
  sub_190D55480();
  sub_190D55E10();
  sub_190D55360();
  sub_190D55E00();
  return sub_190D50E20();
}

uint64_t sub_190D13548(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190D13590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v29 = a3;
  v28 = a2;
  v10 = sub_190D56F10();
  v11 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69E6158];
  v25 = v10;
  v26 = v12;
  v13 = sub_190D524D0();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if (v13)
  {
    sub_19023C414(a1, &v25);
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0);
      if (swift_dynamicCast())
      {
        v14 = v28;
        v15 = [v28 value];
        v16 = sub_190D56ED0();
        v17 = [v15 isEqual_];

        return v17;
      }
    }

    else
    {
      sub_19021E7D8(&v25);
    }
  }

  v28 = a2;
  v29 = a3;
  v19 = sub_190D56F10();
  v27 = v11;
  v25 = v19;
  v26 = v20;
  v21 = sub_190D524D0();
  __swift_destroy_boxed_opaque_existential_0(&v25);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  sub_19023C414(a1, &v25);
  if (!v27)
  {
    sub_19021E7D8(&v25);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A3F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v22 = v28;
  result = [v28 value];
  if (*a6)
  {
    v23 = result;
    v24 = [result isEqual_];

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190D137E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v13 = 0;
  for (i = a1 + 32; ; i += 32)
  {
    v15 = sub_190D13590(i, a2, a3, a4, a5, a6);
    if (v6 || (v15 & 1) != 0)
    {
      break;
    }

    if (v7 == ++v13)
    {
      return 0;
    }
  }

  return v13;
}

unint64_t sub_190D13898()
{
  result = qword_1EAD63C18;
  if (!qword_1EAD63C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63C20);
    sub_190D13548(&qword_1EAD63BF0, MEMORY[0x1E695CFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63C18);
  }

  return result;
}

id CKTranscriptNavigationBarContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptNavigationBarContextFlags.init()()
{
  v0[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isNewCompose] = 0;
  v0[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isTitleViewInteractable] = 1;
  v0[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isShownInStandaloneWindow] = 0;
  v0[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isSplitViewCollapsed] = 0;
  v0[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptNavigationBarContextFlags();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190D13CD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190D13D40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190D15B28();
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected);
  return result;
}

double sub_190D13DE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548D0();
  v19 = 1;
  sub_190D13F5C(a1, &v11);
  v24 = v15;
  v25 = v16;
  v26[0] = *v17;
  *(v26 + 15) = *&v17[15];
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28[0] = *v17;
  *(v28 + 15) = *&v17[15];
  sub_19022FD14(&v20, &v10, &qword_1EAD63CF0);
  sub_19022EEA4(v27, &qword_1EAD63CF0);
  *(&v18[4] + 7) = v24;
  *(&v18[5] + 7) = v25;
  *(&v18[6] + 7) = v26[0];
  *(&v18[7] + 6) = *(v26 + 15);
  *(v18 + 7) = v20;
  *(&v18[1] + 7) = v21;
  *(&v18[2] + 7) = v22;
  *(&v18[3] + 7) = v23;
  v5 = v18[5];
  *(a2 + 81) = v18[4];
  *(a2 + 97) = v5;
  *(a2 + 113) = v18[6];
  *(a2 + 123) = *(&v18[6] + 10);
  v6 = v18[1];
  *(a2 + 17) = v18[0];
  *(a2 + 33) = v6;
  result = *&v18[2];
  v8 = v18[3];
  *(a2 + 49) = v18[2];
  v9 = v19;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 65) = v8;
  *(a2 + 139) = 0;
  return result;
}

uint64_t sub_190D13F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D51920();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v8, *MEMORY[0x1E69A6658], v4, v6);
  v9 = sub_190D51900();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *&v35[0] = v9;
  *(&v35[0] + 1) = v11;
  sub_19081E484();
  v12 = sub_190D555F0();
  v14 = v13;
  LOBYTE(v11) = v15;
  v17 = v16;
  sub_190D141B8(a1, &v29);
  v18 = v30;
  v19 = v31;
  v33[2] = v31;
  v34[0] = *v32;
  v20 = *&v32[15];
  *(&v26[4] + 6) = *&v32[15];
  *(&v26[3] + 7) = *v32;
  v21 = v29;
  v33[0] = v29;
  v33[1] = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[1] + 7) = v30;
  *(v26 + 7) = v29;
  v22 = v26[0];
  *(a2 + 57) = v26[1];
  v23 = v26[3];
  *(a2 + 73) = v26[2];
  *(a2 + 89) = v23;
  *(a2 + 99) = *(&v26[3] + 10);
  v27 = 1;
  v28 = v11 & 1;
  *(v34 + 15) = v20;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 41) = v22;
  *&v36[15] = *&v32[15];
  v35[2] = v19;
  *v36 = *v32;
  v35[0] = v21;
  v35[1] = v18;
  sub_19081BE48(v12, v14, v11 & 1);
  sub_190D52690();
  sub_19022FD14(v33, v25, &qword_1EAD63CF8);
  sub_19022EEA4(v35, &qword_1EAD63CF8);
  sub_19081E474(v12, v14, v11 & 1);
}

__n128 sub_190D141B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_190D55EB0();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D52170();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v70 = a1;
  sub_190D15B28();
  sub_190D51C20();

  if (*(a1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected) != 1)
  {
    swift_getKeyPath();
    *&v70 = a1;
    sub_190D51C20();

    v14 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
    swift_beginAccess();
    (*(v7 + 16))(v9, a1 + v14, v6);
    v15 = (*(v7 + 88))(v9, v6);
    if (v15 == *MEMORY[0x1E69A6778])
    {
      swift_getKeyPath();
      *&v70 = a1;
      sub_190D51C20();

      v16 = *(a1 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress);
      v17 = sub_190D55D60();
      LOBYTE(v64) = 0;
      v58 = 1;
      *&v70 = v16;
      BYTE8(v70) = 0;
      v71.n128_u64[0] = v17;
      v72[32] = 1;
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D40);
      sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
      sub_190D15B80(&qword_1EAD63D38, &qword_1EAD63D40, &unk_190E070B8, sub_190D15D98);
      sub_190D54C50();
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v44 = v59;
      v45 = v60;
      LOBYTE(v53) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D28);
      sub_190D15CB4();
      sub_190D15DEC();
      sub_190D54C50();
    }

    else
    {
      if (v15 != *MEMORY[0x1E69A6780])
      {
        if (v15 == *MEMORY[0x1E69A6790])
        {
          LOBYTE(v64) = 0;
          v72[32] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D00);
          sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
          sub_190D54C50();
          *v72 = v46;
          *&v72[16] = v47;
          v72[32] = v48;
          v70 = v44;
          v71 = v45;
          LOBYTE(v53) = 1;
          v72[33] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D28);
          sub_190D15CB4();
          sub_190D15DEC();
          sub_190D54C50();
          goto LABEL_9;
        }

        if (v15 != *MEMORY[0x1E69A6788])
        {
          sub_190D55EA0();
          v31 = v41;
          v30 = v42;
          (*(v41 + 104))(v5, *MEMORY[0x1E6981630], v42);
          v40 = sub_190D55F10();

          (*(v31 + 8))(v5, v30);
          sub_190D56500();
          sub_190D53C60();
          v32 = v64;
          v33 = v65;
          v34 = v66;
          v35 = v67;
          v42 = v6;
          v36 = v68;
          v37 = v69;
          v38 = [objc_opt_self() systemGray2Color];
          v39 = sub_190D55CE0();
          v51 = v33;
          v50 = v35;
          v52 = 1;
          *&v70 = v40;
          *(&v70 + 1) = v32;
          v71.n128_u8[0] = v33;
          v71.n128_u64[1] = v34;
          v72[0] = v35;
          *&v72[8] = v36;
          *&v72[16] = v37;
          *&v72[24] = v39;
          v72[32] = 1;
          sub_190D50920();
          sub_190D50920();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D00);
          sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
          sub_190D54C50();
          *v72 = v55;
          *&v72[16] = v56;
          v72[32] = v57;
          v70 = v53;
          v71 = v54;
          v58 = 1;
          v72[33] = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D28);
          sub_190D15CB4();
          sub_190D15DEC();
          sub_190D54C50();

          *v72 = v46;
          *&v72[16] = v47;
          *&v72[32] = v48;
          v70 = v44;
          v71 = v45;
          (*(v7 + 8))(v9, v42);
          goto LABEL_8;
        }
      }

      sub_190D55EA0();
      v19 = v41;
      v18 = v42;
      (*(v41 + 104))(v5, *MEMORY[0x1E6981630], v42);
      v20 = sub_190D55F10();

      (*(v19 + 8))(v5, v18);
      sub_190D56500();
      sub_190D53C60();
      v21 = v53;
      LOBYTE(v19) = BYTE8(v53);
      v22 = v54.n128_u64[0];
      v23 = v54.n128_u8[8];
      v24 = v55;
      v25 = [objc_opt_self() systemGray2Color];
      v26 = sub_190D55CE0();
      v52 = v19;
      v51 = v23;
      v58 = 0;
      *&v70 = v20;
      *(&v70 + 1) = v21;
      v71.n128_u8[0] = v19;
      v71.n128_u64[1] = v22;
      v72[0] = v23;
      *&v72[8] = v24;
      *&v72[24] = v26;
      v72[32] = 0;
      sub_190D50920();
      sub_190D50920();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D40);
      sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
      sub_190D15B80(&qword_1EAD63D38, &qword_1EAD63D40, &unk_190E070B8, sub_190D15D98);
      sub_190D54C50();
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v44 = v59;
      v45 = v60;
      LOBYTE(v64) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D28);
      sub_190D15CB4();
      sub_190D15DEC();
      sub_190D54C50();
    }

LABEL_8:
    v61 = *v72;
    v62 = *&v72[16];
    v63 = *&v72[32];
    v59 = v70;
    v60 = v71;
LABEL_9:
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v44 = v59;
    v45 = v60;
    v58 = 1;
    v49 = 1;
    goto LABEL_10;
  }

  v10 = sub_190D55EA0();
  sub_190D55360();
  sub_190D553D0();
  v11 = sub_190D55420();

  KeyPath = swift_getKeyPath();
  v13 = sub_190D55CF0();
  LOBYTE(v59) = 0;
  *&v44 = v10;
  *(&v44 + 1) = KeyPath;
  v45.n128_u64[0] = v11;
  v45.n128_u64[1] = v13;
  v49 = 0;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63D60);
  sub_190D15B80(&qword_1EAD63D68, &qword_1EAD63D58, &unk_190E070C0, sub_19081DD10);
  sub_190D15EA4();
  sub_190D54C50();
  v27 = *&v72[16];
  v28 = v43;
  *(v43 + 32) = *v72;
  *(v28 + 48) = v27;
  *(v28 + 63) = *&v72[31];
  result = v71;
  *v28 = v70;
  *(v28 + 16) = result;
  return result;
}

ChatKit::DownloadProgressView __swiftcall DownloadProgressView.init(fractionCompleted:)(ChatKit::DownloadProgressView fractionCompleted)
{
  *v2 = *&fractionCompleted.fractionCompleted.is_nil;
  *(v2 + 8) = v1 & 1;
  return fractionCompleted;
}

uint64_t sub_190D14CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55EB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53AD0();
  v6 = v82;
  v47 = v83;
  v7 = v84;
  v48 = v85;
  v8 = v86;
  v9 = [objc_opt_self() secondarySystemFillColor];
  v46 = sub_190D55CE0();
  KeyPath = swift_getKeyPath();
  v45 = KeyPath;
  v11 = COERCE_DOUBLE(sub_190D55160());
  if (v12)
  {
    v11 = 0.0;
  }

  v13 = fmax(v11, 0.1);
  sub_190D53AD0();
  v14 = sub_190D565A0();
  v42 = v14;
  v15 = sub_190D55160();
  v41 = v15;
  v17 = v16 & 1;
  v81 = v16 & 1;
  sub_190D56690();
  v19 = v18;
  v21 = v20;
  v43 = sub_190D55CF0();
  sub_190D55EA0();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v44 = sub_190D55F10();

  (*(v3 + 8))(v5, v2);
  sub_190D56500();
  sub_190D53C60();
  v22 = v87;
  v23 = v88;
  v24 = v89;
  v25 = v90;
  v39 = v92;
  v40 = v91;
  v26 = sub_190D55CF0();
  v58 = v23;
  v57 = v25;
  *&v59 = v6;
  *(&v59 + 1) = v47;
  *&v60 = v7;
  *(&v60 + 1) = v48;
  *&v61 = v8;
  *(&v61 + 1) = KeyPath;
  v62 = v46;
  *&v52[0] = v46;
  v49 = v59;
  v50 = v60;
  v51 = v61;
  *&v63[0] = 0;
  *(v63 + 1) = v13;
  v63[1] = v54;
  v63[2] = v55;
  *&v64 = v56;
  *(&v64 + 1) = v14;
  *&v65 = v15;
  BYTE8(v65) = v17;
  HIDWORD(v65) = *&v53[3];
  *(&v65 + 9) = *v53;
  *&v66 = 0xBFF921FB54442D18;
  *(&v66 + 1) = v19;
  *&v67 = v21;
  v27 = v43;
  *(&v67 + 1) = v43;
  *(&v52[2] + 8) = v55;
  *(&v52[1] + 8) = v54;
  *(v52 + 8) = v63[0];
  *(&v52[6] + 8) = v67;
  *(&v52[5] + 8) = v66;
  *(&v52[4] + 8) = v65;
  *(&v52[3] + 8) = v64;
  v28 = v60;
  *a1 = v59;
  *(a1 + 16) = v28;
  v29 = v51;
  v30 = v52[0];
  v31 = v52[2];
  *(a1 + 64) = v52[1];
  *(a1 + 80) = v31;
  *(a1 + 32) = v29;
  *(a1 + 48) = v30;
  v32 = v52[3];
  v33 = v52[4];
  v34 = v52[6];
  v35 = *&v52[7];
  *(a1 + 128) = v52[5];
  *(a1 + 144) = v34;
  *(a1 + 96) = v32;
  *(a1 + 112) = v33;
  v36 = v44;
  *(a1 + 160) = v35;
  *(a1 + 168) = v36;
  *(a1 + 176) = v22;
  *(a1 + 184) = v23;
  *(a1 + 192) = v24;
  *(a1 + 200) = v25;
  v37 = v39;
  *(a1 + 208) = v40;
  *(a1 + 216) = v37;
  *(a1 + 224) = v26;
  sub_19022FD14(&v59, v68, &qword_1EAD63CE0);
  sub_19022FD14(v63, v68, &qword_1EAD63CE8);
  v68[0] = 0;
  *&v68[1] = v13;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72 = v42;
  v73 = v41;
  v74 = v17;
  *v75 = *v53;
  *&v75[3] = *&v53[3];
  v76 = 0xBFF921FB54442D18;
  v77 = v19;
  v78 = v21;
  v79 = v27;
  sub_19022EEA4(v68, &qword_1EAD63CE8);
  v80[0] = v6;
  v80[1] = v47;
  v80[2] = v7;
  v80[3] = v48;
  v80[4] = v8;
  v80[5] = v45;
  v80[6] = v46;
  return sub_19022EEA4(v80, &qword_1EAD63CE0);
}

__n128 sub_190D15178@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_190D56500();
  v4 = v3;
  sub_190D14CC4(&v13);
  v40 = v25;
  v41 = v26;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v43[12] = v25;
  v43[13] = v26;
  v43[8] = v21;
  v43[9] = v22;
  v43[10] = v23;
  v43[11] = v24;
  v43[4] = v17;
  v43[5] = v18;
  v43[6] = v19;
  v43[7] = v20;
  v43[0] = v13;
  v43[1] = v14;
  v42 = v27;
  v44 = v27;
  v43[2] = v15;
  v43[3] = v16;
  sub_19022FD14(&v28, &v12, &qword_1EAD63CD8);
  sub_19022EEA4(v43, &qword_1EAD63CD8);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v41;
  *(a1 + 208) = v40;
  *(a1 + 224) = v5;
  *(a1 + 240) = v42;
  v6 = v37;
  *(a1 + 144) = v36;
  *(a1 + 160) = v6;
  v7 = v39;
  *(a1 + 176) = v38;
  *(a1 + 192) = v7;
  v8 = v33;
  *(a1 + 80) = v32;
  *(a1 + 96) = v8;
  v9 = v35;
  *(a1 + 112) = v34;
  *(a1 + 128) = v9;
  v10 = v29;
  *(a1 + 16) = v28;
  *(a1 + 32) = v10;
  result = v31;
  *(a1 + 48) = v30;
  *(a1 + 64) = result;
  return result;
}

uint64_t DownloadProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_190D55EB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63C98);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E150);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63CA0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  if (v1[1])
  {
    sub_190D55EA0();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v15 = sub_190D55F10();

    (*(v3 + 8))(v5, v2);
    sub_190D55360();
    sub_190D553B0();
    v16 = sub_190D55420();

    KeyPath = swift_getKeyPath();
    sub_190D56500();
    sub_190D53C60();
    *v7 = v15;
    *(v7 + 1) = KeyPath;
    *(v7 + 2) = v16;
    v18 = v28;
    *(v7 + 24) = v27;
    *(v7 + 40) = v18;
    *(v7 + 56) = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63CA8);
    sub_190D157A4();
    sub_190D15908();
    return sub_190D54C50();
  }

  else
  {
    v20 = *v1;
    BYTE8(v27) = 0;
    v26 = 0x3FF0000000000000;
    *&v27 = v20;
    sub_1909C8F50();
    sub_190D53B70();
    sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150);
    sub_190D158B4();
    sub_190D556B0();
    (*(v9 + 8))(v11, v8);
    sub_190D56500();
    sub_190D53C60();
    v21 = &v14[*(v12 + 36)];
    v22 = v28;
    *v21 = v27;
    *(v21 + 1) = v22;
    *(v21 + 2) = v29;
    sub_19028F848(v14, v7);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63CA8);
    sub_190D157A4();
    sub_190D15908();
    sub_190D54C50();
    return sub_19028F8B8(v14);
  }
}

uint64_t sub_190D1574C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D54700();
  *a1 = result;
  return result;
}

unint64_t sub_190D157A4()
{
  result = qword_1EAD63CB0;
  if (!qword_1EAD63CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E150);
    sub_190233640(&qword_1EAD5E158, &qword_1EAD5E150);
    sub_190D158B4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63CB0);
  }

  return result;
}

unint64_t sub_190D158B4()
{
  result = qword_1EAD63CB8;
  if (!qword_1EAD63CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63CB8);
  }

  return result;
}

unint64_t sub_190D15908()
{
  result = qword_1EAD63CC0;
  if (!qword_1EAD63CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63CA8);
    sub_19081DD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63CC0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DownloadProgressView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_190D159EC()
{
  result = qword_1EAD63CC8;
  if (!qword_1EAD63CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63CD0);
    sub_190D157A4();
    sub_190D15908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63CC8);
  }

  return result;
}

uint64_t sub_190D15AD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D545F0();
  *a1 = result;
  return result;
}

unint64_t sub_190D15B28()
{
  result = qword_1EAD5B318;
  if (!qword_1EAD5B318)
  {
    type metadata accessor for CKLanguageSelectionDownloadModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B318);
  }

  return result;
}

uint64_t sub_190D15B80(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190D15C30()
{
  result = qword_1EAD63D10;
  if (!qword_1EAD63D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D10);
  }

  return result;
}

unint64_t sub_190D15CB4()
{
  result = qword_1EAD63D30;
  if (!qword_1EAD63D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63D20);
    sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
    sub_190D15B80(&qword_1EAD63D38, &qword_1EAD63D40, &unk_190E070B8, sub_190D15D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D30);
  }

  return result;
}

unint64_t sub_190D15D98()
{
  result = qword_1EAD63D48;
  if (!qword_1EAD63D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D48);
  }

  return result;
}

unint64_t sub_190D15DEC()
{
  result = qword_1EAD63D50;
  if (!qword_1EAD63D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63D28);
    sub_190D15B80(&qword_1EAD63D08, &qword_1EAD63D00, &unk_190E07090, sub_190D15C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D50);
  }

  return result;
}

unint64_t sub_190D15EA4()
{
  result = qword_1EAD63D70;
  if (!qword_1EAD63D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63D60);
    sub_190D15CB4();
    sub_190D15DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D70);
  }

  return result;
}

unint64_t sub_190D15F30()
{
  result = qword_1EAD63D88;
  if (!qword_1EAD63D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63D90);
    sub_190233640(&qword_1EAD63D98, &qword_1EAD63DA0);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63D88);
  }

  return result;
}

uint64_t sub_190D16014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = [objc_opt_self() sharedFeatureFlags];
  v9 = [v8 isBalloonMaterialsEnabled];

  if (!v9 || ![a1 isTranscriptBackgroundActive])
  {
    goto LABEL_9;
  }

  v10 = *(v2 + 2);
  if (v10 > 5)
  {
    goto LABEL_34;
  }

  v11 = 1 << v10;
  if (v11 & 0x15) != 0 || (v11 & 0xA) == 0 && ([a1 isTranscriptBackgroundActive])
  {
    v12 = *(v2 + 32);
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);
    v15 = *(v2 + 56);
    if (IMColorComponentsIsZero())
    {
      switch(*(v2 + 24))
      {
        case 0:
        case 0xB:
          sub_190D56B30();
          goto LABEL_14;
        case 1:
        case 0xA:
          sub_190D56B00();
          goto LABEL_14;
        case 3:
        case 5:
        case 0xF:
          v21 = sub_190D17938(*(v2 + 24), a1);
          if (v21 >> 62)
          {
            v26 = v21;
            v22 = sub_190D581C0();
            v21 = v26;
            if (v22)
            {
LABEL_19:
              v23 = __OFSUB__(v22, 1);
              v24 = v22 - 1;
              if (v23)
              {
                __break(1u);
              }

              else if ((v21 & 0xC000000000000001) == 0)
              {
                if ((v24 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v24 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v25 = *(v21 + 8 * v24 + 32);
LABEL_24:
                  GenericRGB = v25;

                  break;
                }

                __break(1u);
LABEL_34:
                result = sub_190D58510();
                __break(1u);
                return result;
              }

              v25 = MEMORY[0x193AF3B90](v24, v21);
              goto LABEL_24;
            }
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
              goto LABEL_19;
            }
          }

          v27 = [objc_opt_self() redColor];
          GenericRGB = [v27 CGColor];

          break;
        default:
          sub_190D56B10();
          goto LABEL_14;
      }
    }

    else
    {
      GenericRGB = CGColorCreateGenericRGB(v12, v13, v14, v15);
    }

    sub_190D56B20();

LABEL_14:
    v20 = sub_190D56BB0();
    (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
    return sub_19081E40C(v7, a2, &qword_1EAD58BA8);
  }

LABEL_9:
  v16 = sub_190D56BB0();
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 1, 1, v16);
}

uint64_t sub_190D163F8()
{
  v1 = *(v0 + 2);
  if (v1 < 6)
  {
    return (0x18u >> v1) & 1;
  }

  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000019, 0x8000000190E81E20);
  type metadata accessor for CKBalloonStyle(0);
  sub_190D58450();
  result = sub_190D58510();
  __break(1u);
  return result;
}

id sub_190D164D8@<X0>(void *a1@<X0>, CGColorRef *a2@<X8>)
{
  v34 = a2;
  v33 = type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration(0);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D56B90();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56BB0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 64);
  v15 = *(v2 + 72);
  v16 = *(v2 + 80);
  v17 = *(v2 + 88);
  IsZero = IMColorComponentsIsZero();
  if ([a1 isTranscriptBackgroundActive])
  {
    sub_190D56B10();
    [a1 transcriptBackgroundLuminosity];
    sub_190D56BA0();
    v19 = [a1 balloonBackdropGroupName];
    if (v19)
    {
      v20 = v19;
      v21 = sub_190D56F10();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    (*(v11 + 8))(v13, v10);
    (*(v7 + 32))(v5, v9, v6);
    v31 = v34;
    v32 = &v5[*(v33 + 20)];
    *v32 = v21;
    v32[1] = v23;
    sub_190D17C10(v5, v31, type metadata accessor for CKBalloonLayer.MaterialStrokeConfiguration);
    type metadata accessor for CKBalloonLayer.StrokeStyle(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (IsZero)
  {
    result = [objc_opt_self() sharedBehaviors];
    if (result)
    {
      v25 = result;
      result = [result theme];
      if (result)
      {
        v26 = result;
        v27 = [result unfilledBalloonColorForColorType_];
        if (!v27)
        {
          v27 = [objc_opt_self() blackColor];
        }

        v28 = v27;
        v29 = [v27 resolvedColorWithTraitCollection_];
        GenericRGB = [v29 CGColor];

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  GenericRGB = CGColorCreateGenericRGB(v14, v15, v16, v17);
LABEL_11:
  *v34 = GenericRGB;
  type metadata accessor for CKBalloonLayer.StrokeStyle(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_190D168D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v28 - v9);
  v11 = type metadata accessor for CKBalloonLayer.Stroke(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(v2 + 2);
  if ((v19 - 1) < 4)
  {
    v28 = v15;
    sub_190D164D8(a1, v10);
    if ([a1 isTranscriptBackgroundActive])
    {
      v20 = 2.0;
    }

    else
    {
      v20 = 1.0;
    }

    v21 = sub_190D163F8();
    sub_190D17C10(v10, v18, type metadata accessor for CKBalloonLayer.StrokeStyle);
    *&v18[v11[5]] = v20;
    v18[v11[6]] = v21 & 1;
    *&v18[v11[7]] = 0x4014000000000000;
    v22 = v18;
LABEL_6:
    sub_190D17C10(v22, a2, type metadata accessor for CKBalloonLayer.Stroke);
    return (*(v28 + 56))(a2, 0, 1, v11);
  }

  if (*(v2 + 2))
  {
    v28 = v15;
    if (v19 != 5)
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      v27 = v19;
      sub_190D582B0();
      MEMORY[0x193AF28B0](0xD000000000000019, 0x8000000190E81E20);
      v29 = v27;
      type metadata accessor for CKBalloonStyle(0);
      sub_190D58450();
      result = sub_190D58510();
      __break(1u);
      return result;
    }

    if (![a1 isTranscriptBackgroundActive])
    {
      sub_190D164D8(a1, v7);
      if ([a1 isTranscriptBackgroundActive])
      {
        v25 = 2.0;
      }

      else
      {
        v25 = 1.0;
      }

      v26 = sub_190D163F8();
      sub_190D17C10(v7, v13, type metadata accessor for CKBalloonLayer.StrokeStyle);
      *&v13[v11[5]] = v25;
      v13[v11[6]] = v26 & 1;
      *&v13[v11[7]] = 0x4014000000000000;
      v22 = v13;
      goto LABEL_6;
    }

    v15 = v28;
  }

  v24 = *(v15 + 56);

  return v24(a2, 1, 1, v11, v16);
}

uint64_t sub_190D16C8C(void *a1)
{
  v2 = *(v1 + 2);
  if (v2 <= 5)
  {
    v3 = 1 << v2;
    if ((v3 & 0x15) == 0 && ((v3 & 0xA) != 0 || ([a1 isTranscriptBackgroundActive] & 1) == 0))
    {
      return 0;
    }

    v4 = [objc_opt_self() sharedBehaviors];
    if (v4)
    {
      v5 = v4;
      if (![v4 shouldUseDynamicGradient] || !IMColorComponentsIsZero())
      {

        return 0;
      }

      v6 = [v5 theme];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 balloonColorsForColorType_];
        if (v8)
        {
          v9 = v8;
          sub_1902495E8();
          v10 = sub_190D57180();

          if (!(v10 >> 62))
          {
LABEL_9:
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

            return v11 > 1;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E7CC0];
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_9;
          }
        }

        v11 = sub_190D581C0();
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

uint64_t sub_190D16E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  v96 = a1;
  v82 = type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v82);
  v83 = (&v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration(0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D56B90();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_190D56BB0();
  v94 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  v29 = type metadata accessor for CKBalloonLayer.Style(0);
  MEMORY[0x1EEE9AC00](v29);
  v93 = (&v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v3 + 80);
  v98[4] = *(v3 + 64);
  v98[5] = v31;
  v32 = *(v3 + 112);
  v98[6] = *(v3 + 96);
  v98[7] = v32;
  v33 = *(v3 + 16);
  v98[0] = *v3;
  v98[1] = v33;
  v34 = *(v3 + 48);
  v98[2] = *(v3 + 32);
  v98[3] = v34;
  memset(v97, 0, sizeof(v97));
  if (CKBalloonDescriptorEqualsBalloonDescriptor(v98, v97))
  {
    return swift_storeEnumTagMultiPayload();
  }

  v78 = v10;
  v79 = v29;
  v36 = v96;
  sub_190D16014(v96, v28);
  sub_190D168D0(v36, v22);
  v80 = v28;
  sub_19022FD14(v28, v25, &qword_1EAD58BA8);
  v37 = v94;
  if ((*(v94 + 48))(v25, 1, v14) != 1)
  {
    v88 = v22;
    v40 = v37;
    (*(v37 + 32))(v16, v25, v14);
    v41 = v96;
    [v96 transcriptBackgroundLuminosity];
    v42 = v89;
    sub_190D56BA0();
    v43 = *(v3 + 96);
    v44 = [v41 balloonBackdropGroupName];
    if (v44)
    {
      v45 = v44;
      v46 = sub_190D56F10();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v55 = v78;
    (*(v40 + 8))(v16, v14);
    sub_19022EEA4(v80, &qword_1EAD58BA8);
    v56 = v92;
    (*(v90 + 32))(v92, v42, v91);
    sub_19081E40C(v88, v56 + v55[5], &qword_1EAD60290);
    *(v56 + v55[6]) = v43;
    v57 = (v56 + v55[7]);
    *v57 = v46;
    v57[1] = v48;
    v54 = v93;
    sub_190D17C10(v56, v93, type metadata accessor for CKBalloonLayer.MaterialBalloonConfiguration);
    goto LABEL_35;
  }

  v38 = v96;
  sub_19022EEA4(v25, &qword_1EAD58BA8);
  sub_19022FD14(v22, v19, &qword_1EAD60290);
  if ((*(v87 + 48))(v19, 1, v88) == 1)
  {
    sub_19022EEA4(v19, &qword_1EAD60290);
    v39 = v80;
  }

  else
  {
    v49 = v85;
    sub_190D17C10(v19, v85, type metadata accessor for CKBalloonLayer.Stroke);
    v50 = v86;
    sub_190D17B4C(v49, v86);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v39 = v80;
    if (EnumCaseMultiPayload == 1)
    {
      sub_19022EEA4(v22, &qword_1EAD60290);
      sub_19022EEA4(v39, &qword_1EAD58BA8);
      sub_190D17BB0(v50, type metadata accessor for CKBalloonLayer.StrokeStyle);
      v52 = v81;
      sub_190D17C10(v49, v81, type metadata accessor for CKBalloonLayer.Stroke);
      v53 = v52;
      v54 = v93;
      sub_190D17C10(v53, v93, type metadata accessor for CKBalloonLayer.StrokeOnlyBalloonConfiguration);
LABEL_35:
      swift_storeEnumTagMultiPayload();
      return sub_190D17C10(v54, v95, type metadata accessor for CKBalloonLayer.Style);
    }

    sub_190D17BB0(v49, type metadata accessor for CKBalloonLayer.Stroke);
    sub_190D17BB0(v50, type metadata accessor for CKBalloonLayer.StrokeStyle);
  }

  if (sub_190D16C8C(v38))
  {
    v58 = sub_190D17938(*(v3 + 24), v38);
    sub_19022EEA4(v22, &qword_1EAD60290);
    sub_19022EEA4(v39, &qword_1EAD58BA8);
    v59 = v93;
    *v93 = v58;
    v54 = v59;
    goto LABEL_35;
  }

  v60 = *(v3 + 2);
  if (v60 > 5)
  {
    goto LABEL_40;
  }

  v61 = 1 << v60;
  if ((v61 & 0x15) == 0 && ((v61 & 0xA) != 0 || ([v38 isTranscriptBackgroundActive] & 1) == 0))
  {
    v72 = [objc_opt_self() clearColor];
    v73 = [v72 CGColor];
LABEL_33:
    GenericRGB = v73;

    goto LABEL_34;
  }

  v62 = *(v3 + 32);
  v63 = *(v3 + 40);
  v64 = *(v3 + 48);
  v65 = *(v3 + 56);
  if ((IMColorComponentsIsZero() & 1) == 0)
  {
    GenericRGB = CGColorCreateGenericRGB(v62, v63, v64, v65);
    goto LABEL_34;
  }

  v66 = sub_190D17938(*(v3 + 24), v38);
  if (!(v66 >> 62))
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      goto LABEL_20;
    }

LABEL_32:

    v72 = [objc_opt_self() redColor];
    v73 = [v72 CGColor];
    goto LABEL_33;
  }

  v74 = v66;
  v67 = sub_190D581C0();
  v66 = v74;
  if (!v67)
  {
    goto LABEL_32;
  }

LABEL_20:
  v68 = __OFSUB__(v67, 1);
  v69 = v67 - 1;
  if (v68)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((v66 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v70 = MEMORY[0x193AF3B90](v69, v66);
    goto LABEL_25;
  }

  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v69 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v70 = *(v66 + 8 * v69 + 32);
LABEL_25:
    GenericRGB = v70;

LABEL_34:
    sub_19022EEA4(v39, &qword_1EAD58BA8);
    v75 = v82;
    v76 = v83;
    *v83 = GenericRGB;
    sub_19081E40C(v22, v76 + *(v75 + 20), &qword_1EAD60290);
    v54 = v93;
    sub_190D17C10(v76, v93, type metadata accessor for CKBalloonLayer.ColorBalloonConfiguration);
    goto LABEL_35;
  }

  __break(1u);
LABEL_40:
  result = sub_190D58510();
  __break(1u);
  return result;
}

id sub_190D17938(char a1, uint64_t a2)
{
  result = [objc_opt_self() sharedBehaviors];
  if (!result)
  {
    goto LABEL_18;
  }

  v5 = result;
  result = [result theme];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result balloonColorsForColorType_];
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = v7;
    sub_1902495E8();
    v10 = sub_190D57180();

    if (!(v10 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_6;
      }

LABEL_15:

      return MEMORY[0x1E69E7CC0];
    }
  }

  v11 = sub_190D581C0();
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = sub_190D58390();
  if (v11 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v6;
  v12 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193AF3B90](v12, v10);
    }

    else
    {
      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    ++v12;
    v15 = [v13 resolvedColorWithTraitCollection_];
    v16 = [v15 CGColor];

    sub_190D58360();
    sub_190D583B0();
    sub_190D583C0();
    sub_190D58370();
  }

  while (v11 != v12);

  return v8;
}

uint64_t sub_190D17B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190D17BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190D17C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_190D17C78(int a1)
{
  v2 = v1;
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  v140 = v4;
  v141 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v135 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v136 = &v127 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v133 = &v127 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v127 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v129 = &v127 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v127 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v131 = &v127 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v132 = &v127 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v138 = &v127 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v127 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v137 = &v127 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v127 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v127 - v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E696ED20]) init];
  v35 = [v1 layout];
  v36 = [v35 orientation];

  v139 = a1;
  if (((v36 == 1) & a1) != 0)
  {
    v37 = 29;
  }

  else
  {
    v37 = 58;
  }

  [v34 setStyle_];
  v38 = [objc_allocWithZone(MEMORY[0x1E696EC48]) init];
  v39 = [v38 top];
  v40 = [v39 leading];

  v41 = [v2 title];
  [v40 setText_];

  v42 = [v38 bottom];
  v43 = [v42 leading];

  v44 = [v2 cardDescription];
  v45 = v34;
  [v43 setText_];

  v142 = v38;
  [v34 setCaptionBar_];
  v46 = sub_190D196D4();
  v47 = v46;
  if (v46)
  {
    v48 = [v46 localURL];
    if (v48)
    {
      v127 = v2;
      v128 = v34;
      v49 = v48;
      sub_190D515B0();

      v51 = v140;
      v50 = v141;
      v52 = *(v141 + 32);
      v52(v33, v31, v140);
      v53 = sub_190D51570();
      v54 = IMPreviewExtension();
      v55 = IMAttachmentPreviewFileURL();

      if (v55)
      {
        sub_190D515B0();

        v56 = v137;
        v52(v137, v26, v51);
        (*(v50 + 16))(v138, v56, v51);
        v2 = v127;
        v57 = [v127 media];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 thumbnailContentType];

          v45 = v128;
          if (v59)
          {
            sub_190D56F10();
          }
        }

        else
        {
          v45 = v128;
        }

        v60 = objc_allocWithZone(MEMORY[0x1E696EC68]);
        v61 = v138;
        v62 = sub_190D51570();
        v63 = sub_190D56ED0();

        v64 = [v60 initByReferencingFileURL:v62 MIMEType:v63];

        v47 = v64;
        v65 = *(v141 + 8);
        v65(v61, v51);
        v65(v137, v51);
        v65(v33, v51);
      }

      else
      {
        (*(v50 + 8))(v33, v51);

        v47 = 0;
        v2 = v127;
        v45 = v128;
      }
    }

    else
    {

      v47 = 0;
    }
  }

  v66 = sub_190D1907C();
  if (!v66)
  {
    goto LABEL_24;
  }

  v67 = v66;
  v68 = [v2 media];
  if (!v68)
  {

LABEL_24:
    [v45 setImage_];
    goto LABEL_43;
  }

  v138 = v47;
  v69 = v68;
  v70 = [v68 mediaContentType];

  v71 = v70;
  v72 = v70;
  v73 = v70;
  if (!v70)
  {
    sub_190D56F10();
    v73 = sub_190D56ED0();

    sub_190D56F10();
    v72 = sub_190D56ED0();

    sub_190D56F10();
    v71 = sub_190D56ED0();
  }

  v74 = sub_190D56F10();
  v76 = v75;
  v77 = v70;
  v78 = [v73 __im_mediaMIMEType];

  if (v78 == 2)
  {

    v88 = [objc_allocWithZone(MEMORY[0x1E696EC40]) init];
    v89 = [v2 media];
    v90 = v140;
    if (v89)
    {
      v91 = v89;
      v92 = [v89 contentDescription];

      if (v92)
      {
        sub_190D56F10();
      }
    }

    v105 = sub_190D56ED0();

    [v88 setAccessibilityText_];

    v106 = [v67 localURL];
    if (v106)
    {
      v107 = v135;
      v108 = v106;
      sub_190D515B0();

      v137 = v88;
      v109 = v141;
      v110 = v136;
      (*(v141 + 32))(v136, v107, v90);
      v111 = objc_allocWithZone(MEMORY[0x1E696EC38]);
      v112 = v137;
      v113 = sub_190D51570();
      v114 = [v111 initByReferencingFileURL:v113 MIMEType:v71 properties:v112];

      v115 = objc_opt_self();
      v116 = v114;
      v117 = [v115 audioFilePlaybackInformationWithAudio_];
      [v45 setInlinePlaybackInformation_];

      [v45 setAudio_];
      (*(v109 + 8))(v110, v90);
      v88 = v137;
    }

    else
    {
    }

    v47 = v138;
    [v45 setImage_];

    goto LABEL_42;
  }

  v79 = v140;
  if (v78 == 1)
  {

    v80 = [v67 localURL];
    if (v80)
    {
      v81 = v133;
      v82 = v80;
      sub_190D515B0();

      v83 = v141;
      v84 = v134;
      (*(v141 + 32))(v134, v81, v79);
      v85 = objc_allocWithZone(MEMORY[0x1E696ED10]);
      v86 = sub_190D51570();
      v87 = [v85 initByReferencingFileURL:v86 MIMEType:v72 hasAudio:1];

      [v45 setVideo_];
      (*(v83 + 8))(v84, v79);
    }

    else
    {
    }

    v47 = v142;
    v93 = v138;
    [v45 setImage_];

    goto LABEL_49;
  }

  if (v78)
  {

    goto LABEL_31;
  }

  if ([v67 error] != -1 || (v94 = objc_msgSend(v67, sel_localURL)) == 0)
  {
LABEL_22:

LABEL_31:
    v47 = v138;
    [v45 setImage_];
LABEL_42:

    goto LABEL_43;
  }

  v137 = v74;
  v128 = v45;
  v95 = v131;
  v96 = v94;
  sub_190D515B0();

  v97 = v141;
  v98 = v132;
  v136 = *(v141 + 32);
  (v136)(v132, v95, v79);
  v99 = sub_190D51570();
  v100 = IMPreviewExtension();
  v101 = IMAttachmentPreviewFileURL();

  if (!v101)
  {
    (*(v97 + 8))(v98, v79);
    v45 = v128;
    goto LABEL_22;
  }

  v102 = v129;
  sub_190D515B0();

  v103 = v130;
  (v136)(v130, v102, v79);
  v104 = sub_190D19844(v103, v137, v76);

  if (v104)
  {
    v45 = v128;
    v47 = v138;
  }

  else
  {
    v47 = v138;
    v104 = v138;
    v45 = v128;
  }

  v125 = v132;
  [v45 setImage_];

  v126 = *(v141 + 8);
  v126(v103, v79);
  v126(v125, v79);
LABEL_43:
  v118 = [v2 layout];
  v119 = [v118 orientation];

  if (v119 == 1 && (v139 & 1) != 0)
  {
    v120 = [v2 layout];
    v121 = [v120 imageAlignment];

    v122 = [v45 image];
    v123 = &selRef_setTrailingIcon_;
    if (v121 != 1)
    {
      v123 = &selRef_setLeadingIcon_;
    }

    v93 = v142;
    [v142 *v123];

    [v45 setImage_];
  }

  else
  {
    v93 = v47;
    v47 = v142;
  }

LABEL_49:

  return v45;
}

uint64_t sub_190D189A4()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  v11 = sub_190D1907C();
  if (!v11)
  {
    if (qword_1EAD51D18 != -1)
    {
      swift_once();
    }

    v23 = sub_190D53040();
    __swift_project_value_buffer(v23, qword_1EAD9E160);
    v24 = v0;
    v25 = sub_190D53020();
    v26 = sub_190D576A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = 1701736270;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v28 = 136315138;
      v30 = [v24 urlToTransferMap];
      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = v30;
      v32 = [v24 media];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 mediaUrl];

        if (!v34)
        {
          sub_190D56F10();
          v34 = sub_190D56ED0();
        }
      }

      else
      {
        v34 = 0;
      }

      v53 = [v31 transferGuidFromUrl_];

      if (v53)
      {
        v27 = sub_190D56F10();
        v55 = v54;
      }

      else
      {
LABEL_25:
        v55 = 0xE400000000000000;
      }

      v56 = sub_19021D9F8(v27, v55, &v60);

      *(v28 + 4) = v56;
      _os_log_impl(&dword_19020E000, v25, v26, "Could not find media transfer for %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x193AF7A40](v29, -1, -1);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }

    goto LABEL_27;
  }

  v12 = v11;
  v13 = [v11 localURL];
  if (!v13)
  {
    if (qword_1EAD51D18 != -1)
    {
      swift_once();
    }

    v35 = sub_190D53040();
    __swift_project_value_buffer(v35, qword_1EAD9E160);
    v36 = v12;
    v37 = sub_190D53020();
    v38 = sub_190D576A0();

    if (!os_log_type_enabled(v37, v38))
    {

      return 0;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    *(v39 + 4) = v36;
    *v40 = v12;
    v25 = v36;
    _os_log_impl(&dword_19020E000, v37, v38, "Could not find media local URL for %@.", v39, 0xCu);
    sub_190830D58(v40);
    MEMORY[0x193AF7A40](v40, -1, -1);
    MEMORY[0x193AF7A40](v39, -1, -1);

LABEL_27:
    return 0;
  }

  v14 = v13;
  sub_190D515B0();

  v15 = sub_190D51570();
  v16 = IMPreviewExtension();
  v17 = IMAttachmentPreviewFileURL();

  if (v17)
  {
    sub_190D515B0();

    v18 = [objc_opt_self() defaultManager];
    sub_190D515D0();
    v19 = sub_190D56ED0();

    v20 = [v18 fileExistsAtPath_];

    v21 = *(v2 + 8);
    v21(v7, v1);
    v21(v10, v1);
    return v20 ^ 1;
  }

  if (qword_1EAD51D18 != -1)
  {
    swift_once();
  }

  v41 = sub_190D53040();
  __swift_project_value_buffer(v41, qword_1EAD9E160);
  (*(v2 + 16))(v4, v10, v1);
  v42 = sub_190D53020();
  v43 = sub_190D576A0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = v59;
    *v44 = 136315138;
    sub_190940EE0();
    v58 = v42;
    v45 = sub_190D58720();
    v47 = v46;
    v48 = *(v2 + 8);
    v48(v4, v1);
    v49 = sub_19021D9F8(v45, v47, &v60);

    *(v44 + 4) = v49;
    v50 = v58;
    _os_log_impl(&dword_19020E000, v58, v43, "Could not generate preview URL for %s.", v44, 0xCu);
    v51 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x193AF7A40](v51, -1, -1);
    MEMORY[0x193AF7A40](v44, -1, -1);

    v48(v10, v1);
  }

  else
  {

    v52 = *(v2 + 8);
    v52(v4, v1);
    v52(v10, v1);
  }

  return 0;
}

id sub_190D1907C()
{
  result = [v0 media];
  if (result)
  {
    v2 = result;
    v3 = [result mediaUrl];

    sub_190D56F10();
    v4 = [v0 urlToTransferMap];
    if (v4 && (v5 = v4, v6 = sub_190D56ED0(), v7 = [v5 transferGuidFromUrl_], v5, v6, v7))
    {
      sub_190D56F10();

      result = [objc_opt_self() sharedInstance];
      if (result)
      {
        v8 = result;

        v9 = sub_190D56ED0();

        v10 = [v8 transferForGUID_];

        return v10;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_190D191E8()
{
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  result = sub_190D196D4();
  if (result)
  {
    v11 = result;
    v12 = [result localURL];
    if (v12)
    {
      v13 = v12;
      sub_190D515B0();

      v14 = sub_190D51570();
      v15 = IMPreviewExtension();
      v16 = IMAttachmentPreviewFileURL();

      if (v16)
      {
        sub_190D515B0();

        v17 = [objc_opt_self() defaultManager];
        sub_190D515D0();
        v18 = sub_190D56ED0();

        v19 = [v17 fileExistsAtPath_];

        v20 = *(v1 + 8);
        v20(v6, v0);
        v20(v9, v0);
        return (v19 ^ 1);
      }

      if (qword_1EAD51D18 != -1)
      {
        swift_once();
      }

      v28 = sub_190D53040();
      __swift_project_value_buffer(v28, qword_1EAD9E160);
      (*(v1 + 16))(v3, v9, v0);
      v29 = sub_190D53020();
      v30 = sub_190D576A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = v42;
        *v31 = 136315138;
        sub_190940EE0();
        v41 = v29;
        v32 = sub_190D58720();
        v34 = v33;
        v35 = *(v1 + 8);
        v35(v3, v0);
        v36 = sub_19021D9F8(v32, v34, &v43);

        *(v31 + 4) = v36;
        v37 = v41;
        _os_log_impl(&dword_19020E000, v41, v30, "Could not generate preview URL for %s.", v31, 0xCu);
        v38 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x193AF7A40](v38, -1, -1);
        MEMORY[0x193AF7A40](v31, -1, -1);

        v35(v9, v0);
      }

      else
      {

        v39 = *(v1 + 8);
        v39(v3, v0);
        v39(v9, v0);
      }
    }

    else
    {
      if (qword_1EAD51D18 != -1)
      {
        swift_once();
      }

      v21 = sub_190D53040();
      __swift_project_value_buffer(v21, qword_1EAD9E160);
      v22 = v11;
      v23 = sub_190D53020();
      v24 = sub_190D576A0();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v11;
        v27 = v22;
        _os_log_impl(&dword_19020E000, v23, v24, "Could not find thumbnail local URL for %@.", v25, 0xCu);
        sub_190830D58(v26);
        MEMORY[0x193AF7A40](v26, -1, -1);
        MEMORY[0x193AF7A40](v25, -1, -1);
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_190D196D4()
{
  result = [v0 media];
  if (result)
  {
    v2 = result;
    v3 = [result thumbnailUrl];

    if (v3)
    {
      sub_190D56F10();

      v4 = [v0 urlToTransferMap];
      if (v4)
      {
        v5 = v4;
        v6 = sub_190D56ED0();
        v7 = [v5 transferGuidFromUrl_];

        if (v7)
        {
          sub_190D56F10();

          result = [objc_opt_self() sharedInstance];
          if (result)
          {
            v8 = result;

            v9 = sub_190D56ED0();

            v10 = [v8 transferForGUID_];

            return v10;
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_190D19844(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (sub_190D56F60() == 0x69672F6567616D69 && v5 == 0xE900000000000066)
  {
  }

  else
  {
    v6 = sub_190D58760();

    if ((v6 & 1) == 0)
    {
      v31 = objc_allocWithZone(MEMORY[0x1E696EC68]);
      v32 = sub_190D51570();
      v33 = sub_190D56ED0();
      v19 = [v31 initByReferencingFileURL:v32 MIMEType:v33];

      return v19;
    }
  }

  v7 = objc_opt_self();
  v8 = sub_190D51570();
  v39[0] = 0;
  v9 = [v7 animatedImageFromOptimizedBitmapAtFileURL:v8 error:v39];

  if (!v9)
  {
    v20 = v39[0];
    v21 = sub_190D51420();

    swift_willThrow();
    if (qword_1EAD51CA0 != -1)
    {
      swift_once();
    }

    v22 = sub_190D53040();
    __swift_project_value_buffer(v22, qword_1EAD9E028);
    sub_190D52690();
    v23 = v21;
    v24 = sub_190D53020();
    v25 = sub_190D576A0();

    if (!os_log_type_enabled(v24, v25))
    {

      return 0;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39[0] = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_19021D9F8(a2, a3, v39);
    *(v26 + 12) = 2112;
    v29 = v21;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v30;
    *v27 = v30;
    _os_log_impl(&dword_19020E000, v24, v25, "Encountered an error while processing rich card image of type %s. Error %@", v26, 0x16u);
    sub_190830D58(v27);
    MEMORY[0x193AF7A40](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x193AF7A40](v28, -1, -1);
    MEMORY[0x193AF7A40](v26, -1, -1);

LABEL_17:
    return 0;
  }

  v10 = v39[0];
  v11 = [v9 image];

  v12 = UIImagePNGRepresentation(v11);
  if (!v12)
  {
    if (qword_1EAD51CA0 != -1)
    {
      swift_once();
    }

    v34 = sub_190D53040();
    __swift_project_value_buffer(v34, qword_1EAD9E028);
    sub_190D52690();
    v24 = sub_190D53020();
    v35 = sub_190D576A0();

    if (os_log_type_enabled(v24, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(a2, a3, v39);
      _os_log_impl(&dword_19020E000, v24, v35, "Could not generate PNG for rich card preview image of type %s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    goto LABEL_17;
  }

  v13 = sub_190D51670();
  v15 = v14;

  v16 = objc_allocWithZone(MEMORY[0x1E696EC68]);
  v17 = sub_190D51660();
  v18 = sub_190D56ED0();
  v19 = [v16 initWithData:v17 MIMEType:v18];

  sub_19083B6D4(v13, v15);
  return v19;
}

double sub_190D19D7C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v6 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, 40.0, 40.0}];
  v7 = [v6 CGPath];

  sub_190D55530();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_190D19E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F18];
  v3 = sub_190D56600();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_190D19EC4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

uint64_t sub_190D19F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D1AC2C();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_190D19FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D1AC2C();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_190D1A014(uint64_t a1)
{
  v2 = sub_190D1AC2C();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_190D1A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D54880();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D54F80();
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  if (a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = sub_190D55D10();
  }

  v16[1] = v14;
  sub_190D50920();
  if (!a3)
  {
    sub_190D55DC0();
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E697C450], v6);
  sub_190D50920();
  return sub_190D54EC0();
}

uint64_t sub_190D1A2A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190D1A2E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D56030();
  v4 = sub_190D55E00();
  v6[0] = 0;
  v6[1] = v4;
  sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
  sub_190BE25C0();
  sub_190D55730();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_190D1A4BC()
{
  v1 = sub_190D55250();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v7[0] = *v0;
  v7[1] = v5;
  sub_190D50920();
  sub_190D55240();
  sub_190D1ACD8();
  sub_190D1AC80();
  sub_190D55700();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_190D1A5F8()
{
  v0 = sub_190D55250();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_190D55F20();
  sub_190D55240();
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D1AC80();
  sub_190D55700();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_190D1A828@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = CKFrameworkBundle();
  result = sub_190D555D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_190D1A8D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D55EA0();
  *a1 = result;
  return result;
}

uint64_t sub_190D1A910@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63DD0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - v3;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63DD8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B98);
  v6 = sub_190D55250();
  v7 = sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  v8 = sub_190D1AC80();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  sub_190D56030();
  v11 = sub_190D55D50();
  v12 = 0;
  sub_190233640(&qword_1EAD63DE0, &qword_1EAD63DD0);
  sub_190BE25C0();
  sub_190D55730();
  (*(v2 + 8))(v4, v1);
}

unint64_t sub_190D1AB80()
{
  result = qword_1EAD63DB8;
  if (!qword_1EAD63DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63DB8);
  }

  return result;
}

unint64_t sub_190D1ABD8()
{
  result = qword_1EAD63DC0;
  if (!qword_1EAD63DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63DC0);
  }

  return result;
}

unint64_t sub_190D1AC2C()
{
  result = qword_1EAD63DC8;
  if (!qword_1EAD63DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63DC8);
  }

  return result;
}

unint64_t sub_190D1AC80()
{
  result = qword_1EAD5F928;
  if (!qword_1EAD5F928)
  {
    sub_190D55250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5F928);
  }

  return result;
}

unint64_t sub_190D1ACD8()
{
  result = qword_1EAD63DE8;
  if (!qword_1EAD63DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63DE8);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11buttonStyleyQrqd__AA06ButtonE0Rd__lFQOyAA0F0VyAcAE05labelE0yQrqd__AA05LabelE0Rd__lFQOyAA0H0VyAA4TextVAA5ImageVG_AA028MultimodalNavigationKeyboardhE0VQo_G_7ChatKit09BarActionffE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_190233640(a4, a2);
  sub_190BE25C0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190D1AE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v54 = a4;
  v55 = a5;
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v7 = type metadata accessor for ConversationEntity();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v44 - v10;
  v11 = sub_190D51440();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_190D51460();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB0);
  sub_190D56E50();
  sub_190D51980();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = v12 + 104;
  v21 = *(v12 + 104);
  v56 = v20;
  v59 = v19;
  v21(v14, v19, v11);
  sub_190D51470();
  v47 = v18;
  a6[2] = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v57 = v21;
  v21(v14, v19, v11);
  sub_190D51470();
  v48 = sub_190D507C0();
  a6[3] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB8);
  sub_190D56E50();
  sub_190D51980();
  v22 = v11;
  v21(v14, v59, v11);
  sub_190D51470();
  sub_190889A8C();
  a6[4] = sub_190D50720();
  v23 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FC8);
  sub_190D56E50();
  sub_190D51980();
  v24 = v59;
  v25 = v57;
  v57(v14, v59, v22);
  sub_190D51470();
  v23[5] = sub_190D507D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FD0);
  sub_190D56E50();
  sub_190D51980();
  v25(v14, v24, v22);
  sub_190D51470();
  sub_190889AE0();
  v23[6] = sub_190D50720();
  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FE0);
  sub_190D56E50();
  sub_190D51980();
  v27 = v59;
  v28 = v57;
  v57(v14, v59, v22);
  sub_190D51470();
  v26[7] = sub_190D50780();
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v27, v22);
  sub_190D51470();
  v26[8] = sub_190D50780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FE8);
  sub_190D56E50();
  sub_190D51980();
  v45 = v22;
  v28(v14, v27, v22);
  sub_190D51470();
  v26[9] = sub_190D50750();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FF0);
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v27, v22);
  sub_190D51470();
  v26[10] = sub_190D507A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54FF8);
  sub_190D56E50();
  sub_190D51980();
  v29 = v27;
  v30 = v27;
  v31 = v45;
  v28(v14, v29, v45);
  sub_190D51470();
  sub_190D20A20(&qword_1EAD45D90, type metadata accessor for ConversationEntity);
  v46 = sub_190D50740();
  v26[11] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55008);
  sub_190D56E50();
  sub_190D51980();
  v32 = v30;
  v33 = v31;
  v28(v14, v32, v31);
  sub_190D51470();
  sub_190233640(&qword_1EAD55010, &qword_1EAD55018);
  v26[12] = sub_190D50760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55020);
  sub_190D56E50();
  sub_190D51980();
  v34 = v59;
  v28(v14, v59, v33);
  sub_190D51470();
  sub_1908789F4();
  v35 = sub_190D50740();
  v58 = v26;
  v26[13] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55030);
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v34, v33);
  sub_190D51470();
  v26[14] = sub_190D507E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55038);
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v34, v33);
  sub_190D51470();
  sub_190889B98();
  v58[15] = sub_190D50740();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55048);
  sub_190D56E50();
  sub_190D51980();
  v36 = v33;
  v28(v14, v34, v33);
  sub_190D51470();
  sub_190889BEC();
  v58[16] = sub_190D50720();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55058);
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v34, v33);
  sub_190D51470();
  sub_190D20A20(&qword_1EAD55060, type metadata accessor for Reaction);
  v37 = sub_190D50770();
  v38 = v58;
  v58[17] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55068);
  sub_190D56E50();
  sub_190D51980();
  v39 = v59;
  v28(v14, v59, v36);
  sub_190D51470();
  sub_190888A1C();
  v38[18] = sub_190D50740();
  sub_190D56E50();
  sub_190D51980();
  v28(v14, v39, v36);
  sub_190D51470();
  v38[19] = sub_190D507C0();
  v40 = v52;
  *v38 = v51;
  v38[1] = v40;
  v60 = v53;
  v61 = v54;
  sub_190D50700();
  v41 = v55;
  v42 = v49;
  sub_190830594(v55, v49);
  sub_190830594(v42, v50);
  sub_190D50700();
  sub_1908305F8(v41);
  return sub_1908305F8(v42);
}

uint64_t MessageEntity.body.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19022FD14(a1, &v5 - v3, &qword_1EAD54E68);
  sub_190D50700();
  return sub_19022EEA4(a1, &qword_1EAD54E68);
}

uint64_t MessageEntity.date.setter(uint64_t a1)
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_190D50700();
  return (*(v3 + 8))(a1, v2);
}

uint64_t MessageEntity.conversation.setter(uint64_t a1)
{
  v2 = type metadata accessor for ConversationEntity();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_190830594(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190D50700();
  return sub_1908305F8(a1);
}

uint64_t sub_190D1BFA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD63DF0);
  __swift_project_value_buffer(v10, qword_1EAD63DF0);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t static MessageEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD52158 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD63DF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190D1C32C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63ED0);
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  __swift_allocate_value_buffer(v1, qword_1EAD63E08);
  __swift_project_value_buffer(v1, qword_1EAD63E08);
  sub_190888A1C();
  sub_190D50C60();
  sub_190D50C50();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63ED8);
  sub_190D50C40();

  sub_190D50C50();
  return sub_190D50C70();
}

uint64_t static MessageEntity.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD52160 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  v3 = __swift_project_value_buffer(v2, qword_1EAD63E08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MessageEntity.urlRepresentation.setter(uint64_t a1)
{
  if (qword_1EAD52160 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  v3 = __swift_project_value_buffer(v2, qword_1EAD63E08);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MessageEntity.urlRepresentation.modify())()
{
  if (qword_1EAD52160 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  __swift_project_value_buffer(v0, qword_1EAD63E08);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_190D1C720@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD52160 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  v3 = __swift_project_value_buffer(v2, qword_1EAD63E08);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_190D1C7EC(uint64_t a1)
{
  if (qword_1EAD52160 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E20);
  v3 = __swift_project_value_buffer(v2, qword_1EAD63E08);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t MessageEntity.id.getter()
{
  v1 = *v0;
  sub_190D52690();
  return v1;
}

uint64_t MessageEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_190D1C96C(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[7];
  v11[6] = a2[6];
  v11[7] = v4;
  v5 = a2[9];
  v11[8] = a2[8];
  v11[9] = v5;
  v6 = a2[3];
  v11[2] = a2[2];
  v11[3] = v6;
  v7 = a2[5];
  v11[4] = a2[4];
  v11[5] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v10[20] = v3;
  v10[21] = v2;
  sub_190D52690();
  sub_190889C88(v11, v10);
  sub_190D50700();
  return sub_190889CE4(v11);
}

void (*MessageEntity.GUID.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_190D506E0();
  return sub_190D20AD4;
}

uint64_t sub_190D1CA7C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  sub_19022FD14(a1, &v16[-v8], &qword_1EAD54E68);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_19022FD14(v9, v6, &qword_1EAD54E68);
  sub_190889C88(v17, v16);
  sub_190D50700();
  sub_19022EEA4(v9, &qword_1EAD54E68);
  return sub_190889CE4(v17);
}

void (*MessageEntity.body.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_190D506E0();
  return sub_190D20AD4;
}

uint64_t sub_190D1CC78(uint64_t a1, _OWORD *a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-v10];
  v12 = *(v5 + 16);
  v12(&v19[-v10], a1, v4, v9);
  v13 = a2[7];
  v20[6] = a2[6];
  v20[7] = v13;
  v14 = a2[9];
  v20[8] = a2[8];
  v20[9] = v14;
  v15 = a2[3];
  v20[2] = a2[2];
  v20[3] = v15;
  v16 = a2[5];
  v20[4] = a2[4];
  v20[5] = v16;
  v17 = a2[1];
  v20[0] = *a2;
  v20[1] = v17;
  (v12)(v7, v11, v4);
  sub_190889C88(v20, v19);
  sub_190D50700();
  (*(v5 + 8))(v11, v4);
  return sub_190889CE4(v20);
}

void (*MessageEntity.date.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_190D506E0();
  return sub_190D20AD4;
}

uint64_t sub_190D1CEB4(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for ConversationEntity();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  sub_190830594(a1, &v16[-v8]);
  v10 = a2[7];
  v17[6] = a2[6];
  v17[7] = v10;
  v11 = a2[9];
  v17[8] = a2[8];
  v17[9] = v11;
  v12 = a2[3];
  v17[2] = a2[2];
  v17[3] = v12;
  v13 = a2[5];
  v17[4] = a2[4];
  v17[5] = v13;
  v14 = a2[1];
  v17[0] = *a2;
  v17[1] = v14;
  sub_190830594(v9, v6);
  sub_190889C88(v17, v16);
  sub_190D50700();
  sub_1908305F8(v9);
  return sub_190889CE4(v17);
}

void (*MessageEntity.conversation.modify(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_190D506E0();
  return sub_190D1D034;
}

uint64_t MessageEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = v26 - v3;
  v34 = type metadata accessor for ConversationEntity();
  MEMORY[0x1EEE9AC00](v34);
  v33 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = v26 - v6;
  v7 = sub_190D51460();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D511B0();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  v15 = sub_190D511C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v26[1] = *(v1 + 88);
  sub_190D56E90();
  sub_190D56E80();
  sub_190D506F0();
  v21 = *(v16 + 48);
  if (v21(v14, 1, v15) == 1)
  {
    sub_190D511A0();
    if (v21(v14, 1, v15) != 1)
    {
      sub_19022EEA4(v14, &qword_1EAD54E68);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  v37 = MEMORY[0x1E69E7CC0];
  sub_190D20A20(&qword_1EAD54E70, MEMORY[0x1E69686F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E78);
  sub_190233640(&qword_1EAD54E80, &qword_1EAD54E78);
  v22 = v28;
  sub_190D58170();
  sub_190D56E60();
  (*(v27 + 8))(v11, v22);
  (*(v16 + 8))(v18, v15);
  sub_190D56E80();
  sub_190D51450();
  sub_190D56E90();
  sub_190D56E80();
  v23 = v33;
  sub_190D506F0();
  sub_190D506F0();
  sub_1908305F8(v23);
  sub_190D56E70();

  sub_190D56E80();
  v24 = v32;
  sub_190D51450();
  (*(v29 + 56))(v24, 0, 1, v30);
  sub_190D506F0();
  sub_19022FD14(v23 + *(v34 + 52), v35, &qword_1EAD55080);
  sub_1908305F8(v23);
  return sub_190D50B70();
}

uint64_t MessageEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = type metadata accessor for ConversationEntity();
  v3[8] = swift_task_alloc();
  v4 = sub_190D511B0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  v3[12] = swift_task_alloc();
  v5 = sub_190D511C0();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  sub_190D56EA0();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v6 = sub_190D50B10();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_190D51460();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *(v2 + 56);
  v3[28] = v8;
  v3[29] = v9;
  v3[30] = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_190D1D984, 0, 0);
}

uint64_t sub_190D1D984()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  sub_190D51430();
  v8 = *(v2 + 56);
  v8(v3, 1, 1, v1);
  v9 = sub_190D50B50();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_190D50AF0();
  sub_190D20A20(&qword_1EAD63E28, MEMORY[0x1E695A3C0]);
  v10 = sub_190D58150();
  v11 = *(v6 + 8);
  v11(v5, v7);
  if (v10)
  {
    v46 = v11;
    v12 = v0[13];
    v13 = v0[14];
    v14 = v0[12];
    sub_190D56E90();
    sub_190D56E80();
    sub_190D506F0();
    v15 = *(v13 + 48);
    if (v15(v14, 1, v12) == 1)
    {
      v16 = v0[12];
      v17 = v0[13];
      sub_190D511A0();
      if (v15(v16, 1, v17) != 1)
      {
        sub_19022EEA4(v0[12], &qword_1EAD54E68);
      }
    }

    else
    {
      (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    }

    v18 = v0[26];
    v40 = v0[25];
    v41 = v0[28];
    v45 = v0[24];
    v44 = v0[23];
    v19 = v0[14];
    v37 = v0[15];
    v38 = v0[13];
    v39 = v0[27];
    v20 = v0[10];
    v21 = v0[11];
    v22 = v0[9];
    v42 = v0[8];
    v0[4] = MEMORY[0x1E69E7CC0];
    sub_190D20A20(&qword_1EAD54E70, MEMORY[0x1E69686F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E78);
    sub_190233640(&qword_1EAD54E80, &qword_1EAD54E78);
    sub_190D58170();
    sub_190D56E60();
    (*(v20 + 8))(v21, v22);
    (*(v19 + 8))(v37, v38);
    sub_190D56E80();
    sub_190D51450();
    (*(v18 + 8))(v41, v40);
    (*(v18 + 32))(v41, v39, v40);
    sub_190D56E90();
    sub_190D56E80();
    sub_190D506F0();
    sub_190D506F0();
    sub_1908305F8(v42);
    sub_190D56E70();

    sub_190D56E80();
    sub_190D51450();
    sub_19022EEA4(v45, &qword_1EAD53AE8);
    v8(v44, 0, 1, v40);
    sub_190D1E000(v44, v45);
    v11 = v46;
  }

  v23 = v0[20];
  v24 = v0[18];
  sub_190D50B00();
  v25 = sub_190D58150();
  v11(v23, v24);
  if (v25)
  {
    v26 = v0[22];
    v28 = v0[7];
    v27 = v0[8];
    sub_190D506F0();
    sub_19022EEA4(v26, &qword_1EAD55080);
    sub_19022FD14(v27 + *(v28 + 52), v26, &qword_1EAD55080);
    sub_1908305F8(v27);
  }

  v29 = v0[28];
  v30 = v0[26];
  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[21];
  v34 = v0[22];
  v43 = v0[25];
  (*(v30 + 16))(v0[27], v29);
  sub_19022FD14(v31, v32, &qword_1EAD53AE8);
  sub_19022FD14(v34, v33, &qword_1EAD55080);
  sub_190D50B70();
  sub_19022EEA4(v34, &qword_1EAD55080);
  sub_19022EEA4(v31, &qword_1EAD53AE8);
  (*(v30 + 8))(v29, v43);

  v35 = v0[1];

  return v35();
}

uint64_t sub_190D1E000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190D1E070()
{
  result = qword_1EAD46060;
  if (!qword_1EAD46060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46060);
  }

  return result;
}

unint64_t sub_190D1E0C8()
{
  result = qword_1EAD46040;
  if (!qword_1EAD46040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46040);
  }

  return result;
}

unint64_t sub_190D1E120()
{
  result = qword_1EAD46018;
  if (!qword_1EAD46018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46018);
  }

  return result;
}

unint64_t sub_190D1E17C()
{
  result = qword_1EAD63E30;
  if (!qword_1EAD63E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63E30);
  }

  return result;
}

unint64_t sub_190D1E1D4()
{
  result = qword_1EAD46038;
  if (!qword_1EAD46038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46038);
  }

  return result;
}

unint64_t sub_190D1E228()
{
  result = qword_1EAD46030;
  if (!qword_1EAD46030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46030);
  }

  return result;
}

unint64_t sub_190D1E280()
{
  result = qword_1EAD46028;
  if (!qword_1EAD46028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46028);
  }

  return result;
}

uint64_t sub_190D1E2D4()
{
  sub_190D209CC();
  v1 = sub_190D50C00();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_190D1E3BC(uint64_t a1)
{
  v2 = sub_190888A1C();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_190D1E40C()
{
  result = qword_1EAD46020;
  if (!qword_1EAD46020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46020);
  }

  return result;
}

uint64_t sub_190D1E464(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return MessageEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_190D1E50C(uint64_t a1)
{
  v2 = sub_190D1E280();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_190D1E564()
{
  result = qword_1EAD63E48;
  if (!qword_1EAD63E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63E48);
  }

  return result;
}

uint64_t sub_190D1E5B8()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E7B0);
  __swift_project_value_buffer(v6, qword_1EAD9E7B0);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

void (*sub_190D1E804(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_190D50800();
  return sub_190D20AD4;
}

uint64_t sub_190D1E878(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D20924();
  v5 = sub_190D209CC();

  return MEMORY[0x1EEDB3C88](a1, v4, a2, v5);
}

unint64_t sub_190D1E8E4()
{
  result = qword_1EAD45E10;
  if (!qword_1EAD45E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E10);
  }

  return result;
}

unint64_t sub_190D1E93C()
{
  result = qword_1EAD45E20;
  if (!qword_1EAD45E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E20);
  }

  return result;
}

uint64_t sub_190D1E9E4(uint64_t a1)
{
  v2 = sub_190D20924();

  return MEMORY[0x1EEDB2E78](a1, v2);
}

uint64_t sub_190D1EA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63EB8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63EC0);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63EC8);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190D1EBEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_190D20924();
  v6 = sub_190D20978();
  v7 = sub_190D209CC();
  *v4 = v2;
  v4[1] = sub_190B9F5B0;

  return MEMORY[0x1EEDB3C90](a2, v5, v6, v7);
}

uint64_t sub_190D1ECB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D1FE8C();
  *a1 = result;
  return result;
}

uint64_t sub_190D1ECE0(uint64_t a1)
{
  v2 = sub_1909A6A08();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190D1ED20()
{
  result = qword_1EAD63E50;
  if (!qword_1EAD63E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63E50);
  }

  return result;
}

uint64_t sub_190D1ED74()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E7E0);
  __swift_project_value_buffer(v6, qword_1EAD9E7E0);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190D1EF68(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return MEMORY[0x1EEE6DFA0](sub_190D1EF88, 0, 0);
}

uint64_t sub_190D1EF88()
{
  sub_190D50810();
  v1 = *(v0 + 336);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 48);
    *(v0 + 16) = *(v1 + 32);
    *(v0 + 32) = v2;
    v3 = *(v1 + 64);
    v4 = *(v1 + 80);
    v5 = *(v1 + 112);
    *(v0 + 80) = *(v1 + 96);
    *(v0 + 96) = v5;
    *(v0 + 48) = v3;
    *(v0 + 64) = v4;
    v6 = *(v1 + 128);
    v7 = *(v1 + 144);
    v8 = *(v1 + 176);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 160) = v8;
    *(v0 + 112) = v6;
    *(v0 + 128) = v7;
    sub_190889C88(v0 + 16, v0 + 176);

    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = swift_task_alloc();
    *(v0 + 360) = v11;
    *v11 = v0;
    v11[1] = sub_190D1F0FC;

    return sub_190888E50(v10, v9);
  }

  else
  {

    sub_1908899E4();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_190D1F0FC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 368) = v2;

  if (v2)
  {
    v7 = sub_190D1F3F4;
  }

  else
  {
    *(v6 + 376) = a2;
    *(v6 + 384) = a1;
    v7 = sub_190D1F230;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_190D1F230()
{
  sub_190D572A0();
  *(v0 + 392) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190D1F2C4, v2, v1);
}

uint64_t sub_190D1F2C4()
{
  v1 = *(v0 + 376);

  sub_1902188FC(0, &unk_1EAD450C0);
  v2 = sub_190D57160();

  [v1 deleteChatItems_];

  return MEMORY[0x1EEE6DFA0](sub_190D1F380, 0, 0);
}

uint64_t sub_190D1F380()
{
  v1 = *(v0 + 376);
  sub_190D506B0();

  sub_190889CE4(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190D1F3F4()
{
  sub_190889CE4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_190D1F460()
{
  result = qword_1EAD45C10;
  if (!qword_1EAD45C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45C10);
  }

  return result;
}

unint64_t sub_190D1F4B8()
{
  result = qword_1EAD45C20;
  if (!qword_1EAD45C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45C20);
  }

  return result;
}

uint64_t sub_190D1F5B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E90);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E98);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190D1F754(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190D1EF68(a1, v4);
}

uint64_t sub_190D1F7F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D20488();
  *a1 = result;
  return result;
}

uint64_t sub_190D1F81C(uint64_t a1)
{
  v2 = sub_1909D4FB0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_190D1F858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_190D1F8A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190D1F938(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *(v2 + 32) = a1;
  *(v2 + 40) = v3;
  return MEMORY[0x1EEE6DFA0](sub_190D1F95C, 0, 0);
}

uint64_t sub_190D1F95C()
{
  v19 = v0;
  sub_190D506F0();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 48) = v1;
  if (v1)
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9E840);
    sub_190D52690();
    v4 = sub_190D53020();
    v5 = sub_190D57690();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_19021D9F8(v2, v1, &v18);
      _os_log_impl(&dword_19020E000, v4, v5, "Downloading attachment for transferGUID %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x193AF7A40](v7, -1, -1);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63EE0);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63EE8) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v0 + 56) = v10;
    *(v10 + 16) = xmmword_190DD1D90;
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = sub_190D1FCD0;

    return sub_1908863F4(v10 + v9, v2, v1);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9E840);
    v14 = sub_190D53020();
    v15 = sub_190D57690();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v14, v15, "Transfer GUID is nil, no attachment to download", v16, 2u);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    **(v0 + 32) = MEMORY[0x1E69E7CC0];
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_190D1FCD0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_190D1FE24;
  }

  else
  {
    v2 = sub_190D1FE00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_190D1FE24()
{
  *(*(v0 + 56) + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190D1FE8C()
{
  v0 = sub_190D50C80();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35 = &v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  v15 = MEMORY[0x1EEE9AC00](v26);
  v27 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v28 = &v25 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v35;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  sub_19092095C(v46);
  v42 = v46[6];
  v43 = v46[7];
  v44 = v46[8];
  v45 = v46[9];
  v38 = v46[2];
  v39 = v46[3];
  v40 = v46[4];
  v41 = v46[5];
  v36 = v46[0];
  v37 = v46[1];
  sub_190D56E50();
  *v11 = sub_1902188FC(0, &qword_1EAD466B0);
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v30;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v31, 1, 1, v22);
  (*(v33 + 104))(v32, *MEMORY[0x1E695A500], v34);
  sub_190888A1C();
  return sub_190D50890();
}

uint64_t sub_190D20488()
{
  v0 = sub_190D50C80();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_190D50AB0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v21 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v17 - v5;
  v6 = sub_190D51440();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v18 = sub_190D51460();
  v12 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63E78);
  sub_190D56E50();
  sub_190D51980();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v7 + 104);
  v14(v9, v13, v6);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v14(v9, v13, v6);
  v15 = v20;
  sub_190D51470();
  (*(v12 + 56))(v15, 0, 1, v18);
  v25 = MEMORY[0x1E69E7CC0];
  sub_190D50AA0();
  (*(v23 + 104))(v22, *MEMORY[0x1E695A500], v24);
  sub_190233640(&qword_1EAD63E80, &qword_1EAD54F78);
  sub_190888A1C();
  return sub_190D508F0();
}

unint64_t sub_190D20924()
{
  result = qword_1EAD63EA0;
  if (!qword_1EAD63EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63EA0);
  }

  return result;
}

unint64_t sub_190D20978()
{
  result = qword_1EAD63EA8;
  if (!qword_1EAD63EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63EA8);
  }

  return result;
}

unint64_t sub_190D209CC()
{
  result = qword_1EAD63EB0;
  if (!qword_1EAD63EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63EB0);
  }

  return result;
}

uint64_t sub_190D20A20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190D20A7C()
{
  result = qword_1EAD63EF0;
  if (!qword_1EAD63EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63EF0);
  }

  return result;
}

void *sub_190D20B3C()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForLightMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190D20B94(uint64_t a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForLightMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_190D20C98()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForDarkMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190D20CF0(uint64_t a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForDarkMode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_190D20DF0()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190D20E88(double a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190D20F80()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190D21018(double a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_190D21110()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190D211A8(double a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_190D212A4()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_plusButtonBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_190D212FC(uint64_t a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_plusButtonBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_190D213FC()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190D21494(double a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_190D21598()
{
  v1 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190D21644(char a1)
{
  v3 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setEnabled_];
}

void (*sub_190D216A8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190D21730;
}

void sub_190D21730(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3 + 24) setEnabled_];
  }

  free(v3);
}

id sub_190D21788()
{
  v1 = [v0 layer];
  v2 = sub_190D56ED0();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_190D58140();
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
    sub_19022EEA4(v10, &unk_1EAD551C0);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = &selRef_quaternaryLabelColor;
    goto LABEL_11;
  }

  if (v7 == 0.0)
  {
    v4 = &selRef_quaternaryLabelColor;
  }

  else
  {
    v4 = &selRef_clearColor;
  }

LABEL_11:
  v5 = [objc_opt_self() *v4];

  return v5;
}

id sub_190D218DC(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 configurationWithPointSize:4 weight:2 scale:19.0];
  if (a1)
  {
    v4 = sub_190C8D2EC();
  }

  else
  {
    v4 = sub_190D21788();
  }

  v5 = v4;
  v6 = [v2 configurationWithHierarchicalColor_];

  v7 = [v3 configurationByApplyingConfiguration_];
  v8 = sub_190D56ED0();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (!v9)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  }

  return v9;
}

id GlassSendMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassSendMenuButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_190D57E10();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = aBlock - v14;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForLightMode] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForDarkMode] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_plusButtonBackgroundColor] = 0;
  *&v4[OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity] = 0;
  v4[OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled] = 1;
  v16 = type metadata accessor for GlassSendMenuButton();
  v29.receiver = v4;
  v29.super_class = v16;
  v17 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  [v17 ck_applyGlassBackground];
  aBlock[4] = sub_190D21ECC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_143;
  v18 = _Block_copy(aBlock);
  [v17 setConfigurationUpdateHandler_];
  _Block_release(v18);
  sub_190D57F70();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC508], v9);
  sub_190D57E20();
  sub_190D218DC(1);
  sub_190D57F60();
  v19 = sub_190D57FB0();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  sub_190D57FE0();

  v20 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v21 = sub_190D574E0();
  [v20 setValue:v21 forKey:*MEMORY[0x1E6979BA8]];

  v22 = [v17 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD1D90;
  *(v23 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
  *(v23 + 32) = v20;
  v24 = v20;
  v25 = sub_190D57160();

  [v22 setFilters_];

  v26 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v17 addInteraction_];

  return v17;
}

uint64_t sub_190D21ECC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassSendMenuButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    sub_190D57FD0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_19022EEA4(v7, &unk_1EAD57940);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_190D218DC([v13 isEnabled]);
      sub_190D57F60();
      (*(v9 + 16))(v4, v11, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      sub_190D57FE0();

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_190D22224(uint64_t a1, uint64_t a2)
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
  v6.super_class = type metadata accessor for GlassSendMenuButton();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id GlassSendMenuButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassSendMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIPointerRegion_optional __swiftcall GlassSendMenuButton.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v4 = defaultRegion.super.isa;
  isa = defaultRegion.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v5;
  return result;
}

void sub_190D22550()
{
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForLightMode) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_backgroundCompositingFilterForDarkMode) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusLightMode) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRadiusDarkMode) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_backgroundBlurRasterizationPercentage) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_plusButtonBackgroundColor) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_plusSymbolOpacity) = 0;
  *(v0 + OBJC_IVAR___CKGlassSendMenuButton_sendMenuButtonEnabled) = 1;
  sub_190D58510();
  __break(1u);
}

uint64_t _s7ChatKit19GlassSendMenuButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56A78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_190D530A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D53120();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v26 - v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  *v15 = v16;
  (*(v10 + 104))(v15, *MEMORY[0x1E69DBF70], v9);
  v17 = v16;
  [v1 bounds];
  v19 = v18 * 0.5;
  [v1 frame];
  *v8 = v20;
  *(v8 + 1) = v21;
  *(v8 + 2) = v22;
  *(v8 + 3) = v23;
  *(v8 + 4) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBED0], v5);
  sub_1902188FC(0, &unk_1EAD56A80);
  (*(v10 + 16))(v12, v15, v9);
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v24 = sub_190D576F0();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v15, v9);
  return v24;
}

uint64_t sub_190D22EF4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_190D57180();
  }

  else
  {
    v5 = 0;
  }

  sub_190D50920();
  v6 = a2;
  v4(a2, v5);
}

id sub_190D23194()
{
  v1 = [v0 assets];
  v2 = sub_1902188FC(0, &qword_1EAD583F8);
  v3 = sub_190D57180();

  v27 = v2;
  v28 = v0;
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x193AF3B90](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;
    v7 = [v5 mediaType];

    if (i == 1)
    {
      v8 = 0;
      goto LABEL_22;
    }

    v8 = 0;
    v9 = 5;
    while (1)
    {
      v10 = v9 - 4;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AF3B90](v9 - 4, v3);
      }

      else
      {
        if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v3 + 8 * v9);
      }

      v12 = v11;
      v13 = v9 - 3;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 mediaType];

      v8 |= v7 != v14;
      if (v8)
      {
        v7 = 0;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v7 = 0;
  v8 = 1;
LABEL_22:

  v15 = [v28 assets];
  v16 = sub_190D57180();

  if (v16 >> 62)
  {
    v17 = sub_190D581C0();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v8 & 1;
  *(v18 + 32) = v17;
  *(v18 + 40) = v28;
  aBlock[4] = sub_190D23E04;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_144;
  v19 = _Block_copy(aBlock);
  v20 = v28;

  v21 = [v20 presentAlertWithConfigurationHandler_];
  _Block_release(v19);
  if (v21)
  {
    return swift_unknownObjectRelease();
  }

  if (qword_1EAD52188 != -1)
  {
    swift_once();
  }

  v23 = sub_190D53040();
  __swift_project_value_buffer(v23, qword_1EAD9E810);
  v24 = sub_190D53020();
  v25 = sub_190D576A0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_19020E000, v24, v25, "Failed to present confirmation alert for delete.", v26, 2u);
    MEMORY[0x193AF7A40](v26, -1, -1);
  }

  return [v20 completeUserInteractionTaskWithSuccess:0 error:0];
}

void sub_190D23548(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_6;
  }

  if (a2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E6530];
    *(v15 + 16) = xmmword_190DD1D90;
    v17 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = v16;
    *(v15 + 64) = v17;
    *(v15 + 32) = a4;
    v18 = CKFrameworkBundle();
    if (!v18)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v10 = v18;
    goto LABEL_10;
  }

  if (a2 != 1)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E6530];
    *(v11 + 16) = xmmword_190DD1D90;
    v13 = MEMORY[0x1E69E65A8];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = a4;
    v14 = CKFrameworkBundle();
    if (!v14)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E6530];
    *(v6 + 16) = xmmword_190DD1D90;
    v8 = MEMORY[0x1E69E65A8];
    *(v6 + 56) = v7;
    *(v6 + 64) = v8;
    *(v6 + 32) = a4;
    v9 = CKFrameworkBundle();
    if (!v9)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = v9;
  }

LABEL_10:
  v19 = sub_190D56ED0();
  v20 = sub_190D56ED0();
  v21 = [v10 localizedStringForKey:v19 value:0 table:v20];

  sub_190D56F10();
  sub_190D56EE0();

  [a1 setStyle_];
  v22 = sub_190D56ED0();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = sub_190D23E14;
  v37 = v23;
  v32 = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_190840E6C;
  v35 = &block_descriptor_6_13;
  v24 = _Block_copy(&v32);

  [a1 addActionWithTitle:v22 style:2 action:v24];
  _Block_release(v24);

  v25 = CKFrameworkBundle();
  if (!v25)
  {
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  v27 = sub_190D56ED0();
  v28 = sub_190D56ED0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  if (!v29)
  {
    sub_190D56F10();
    v29 = sub_190D56ED0();
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = sub_190D23E1C;
  v37 = v30;
  v32 = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_190840E6C;
  v35 = &block_descriptor_10_0;
  v31 = _Block_copy(&v32);

  [a1 addActionWithTitle:v29 style:1 action:v31];
  _Block_release(v31);
}

uint64_t sub_190D239E8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_190D50920();
    sub_190D23E24();
  }

  return result;
}

void sub_190D23A4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

void sub_190D23AF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a2 && *(a2 + 16))
  {
    sub_19021834C(a2 + 32, v17);
    sub_1902188FC(0, &qword_1EAD44EE0);
    v9 = a1;
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_190DD1D90;
      *(v10 + 32) = a4;
      *(v10 + 40) = a5;
      sub_190D52690();
      v11 = sub_190D57160();

      [v16 deleteChatItemsWithTransferGUIDs:v11 fromMessageItem:v9];

      return;
    }
  }

  if (qword_1EAD52188 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9E810);
  v13 = sub_190D53020();
  v14 = sub_190D576A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_19020E000, v13, v14, "Could not locate message item or chat for deletion.", v15, 2u);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
}

id sub_190D23D40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridDeleteAssetActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190D23D98()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E810);
  __swift_project_value_buffer(v0, qword_1EAD9E810);
  sub_190D53010();
  return sub_190D53030();
}

void sub_190D23E24()
{
  v1 = v0;
  [v0 instantlyExcludeAssetsFromDataSource];
  v27 = swift_allocObject();
  *(v27 + 16) = 1;
  v2 = [v0 assets];
  sub_1902188FC(0, &qword_1EAD583F8);
  v3 = sub_190D57180();

  v26 = v1;
  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AF3B90](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 fetchPropertySetsIfNeeded];
      v9 = [v7 curationProperties];
      v10 = [v9 syndicationIdentifier];

      if (!v10)
      {

        if (qword_1EAD52188 != -1)
        {
          swift_once();
        }

        v19 = sub_190D53040();
        __swift_project_value_buffer(v19, qword_1EAD9E810);
        v20 = sub_190D53020();
        v21 = sub_190D576A0();
        v22 = (v27 + 16);
        if (os_log_type_enabled(v20, v21))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Failed to load syndication ID for asset delete";
          goto LABEL_22;
        }

LABEL_23:

        swift_beginAccess();
        *v22 = 0;
        goto LABEL_28;
      }

      v11 = sub_190D56F10();
      v13 = v12;
      v14 = IMMessageGuidFromIMFileTransferGuid();

      if (!v14)
      {

        if (qword_1EAD52188 != -1)
        {
          swift_once();
        }

        v25 = sub_190D53040();
        __swift_project_value_buffer(v25, qword_1EAD9E810);
        v20 = sub_190D53020();
        v21 = sub_190D576A0();
        v22 = (v27 + 16);
        if (os_log_type_enabled(v20, v21))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Failed to load message GUID for syndication ID";
LABEL_22:
          _os_log_impl(&dword_19020E000, v20, v21, v24, v23, 2u);
          MEMORY[0x193AF7A40](v23, -1, -1);
        }

        goto LABEL_23;
      }

      v15 = [objc_opt_self() sharedInstance];
      if (!v15)
      {

        __break(1u);
        return;
      }

      v16 = v15;
      v17 = swift_allocObject();
      v17[2] = v27;
      v17[3] = v11;
      v17[4] = v13;
      aBlock[4] = sub_190D242C4;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190D22EF4;
      aBlock[3] = &block_descriptor_19_3;
      v18 = _Block_copy(aBlock);
      sub_190D50920();

      [v16 loadMessageItemWithGUID:v14 completionBlock:v18];
      _Block_release(v18);

      ++v5;
      if (v8 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  swift_beginAccess();
  [v26 completeUserInteractionTaskWithSuccess:*(v27 + 16) error:0];
LABEL_28:
}

uint64_t sub_190D24314@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63F40);
  v4 = (a1 + *(v3 + 36));
  *v4 = 0x6567617373654DLL;
  v4[1] = 0xE700000000000000;
  v5 = (a1 + *(v3 + 44));
  *v5 = 0;
  v5[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63F48);
  sub_190233640(&qword_1EAD63F50, &qword_1EAD63F48);
  sub_190D554D0();
  v7 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 24);
  v17 = *(v1 + 16);
  v18 = v6;
  v15 = *(v1 + 32);
  v16 = v8;
  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63F58) + 36));
  *v11 = sub_190D24C8C;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  v12 = v7;
  sub_19022FD14(&v18, v14, &qword_1EAD5A878);
  sub_19022FD14(&v17, v14, &qword_1EAD63F60);
  sub_19022FD14(&v16, v14, &qword_1EAD5B900);
  return sub_19022FD14(&v15, v14, &qword_1EAD63F68);
}

void sub_190D2451C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 guid];
  if (!v5)
  {
    goto LABEL_32;
  }

  v6 = v5;
  v54 = sub_190D56F10();
  v8 = v7;

  v74 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FD0();
  v55 = v8;
  if (!v73[0])
  {
    v60 = 0;
    v61 = 0;
    v63 = 0;
    v64 = 0;
    v12 = 0;
    v17 = 0;
    v18 = 0;
    v21 = 0;
    goto LABEL_14;
  }

  v9 = [v73[0] guid];

  v10 = sub_190D56F10();
  v12 = v11;

  sub_190D52690();
  sub_190D250D0(v4);
  if (v13 >> 62)
  {
    v22 = v13;
    v23 = sub_190D581C0();
    v13 = v22;
    v64 = v10;
    if (v23)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v64 = v10;
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](0);
        goto LABEL_8;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(v13 + 32);
LABEL_8:
        v15 = v14;
        v16 = [v14 guid];

        if (!v16)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v17 = 0xD000000000000012;

        v18 = 0x8000000190E82180;
        v19 = sub_190D56F10();
        v21 = v20;

        goto LABEL_13;
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
LABEL_13:
  sub_190D52690();
  sub_190D52690();
  sub_190AA2B30(v17, v18);
  v63 = v19;
  sub_1908B1EFC(v17, v18);

  v61 = 0x4955472074616843;
  v60 = 0xE900000000000044;
LABEL_14:
  v62 = v21;
  v24 = [v4 sender];
  if (!v24)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = v24;
  v26 = [v24 ID];

  v27 = sub_190D56F10();
  v53 = v28;

  v29 = [v4 description];
  v51 = sub_190D56F10();
  v52 = v30;

  v74 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63F70);
  sub_190D55FD0();
  v31 = v73[0];
  v58 = v17;
  v59 = v12;
  v57 = v18;
  if (v73[0])
  {
    v50 = v27;
    if ([v73[0] wasInterworked])
    {
      v32 = [v73[0] wasInterworked];
      v33 = 1702195828;
      if (!v32)
      {
        v33 = 0x65736C6166;
      }

      v56 = v33;
      if (v32)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      v35 = 0xEB0000000064656BLL;
      v36 = 0x726F777265746E49;
    }

    else
    {
      v36 = 0;
      v35 = 0;
      v56 = 0;
      v34 = 0;
    }

    v40 = [v73[0] originalServiceName];
    if (v40)
    {
      v41 = v40;
      v42 = sub_190D56F10();
      v39 = v43;

      v38 = 0x8000000190E821A0;
      v37 = 0xD000000000000015;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v42 = 0;
      v39 = 0;
    }

    sub_190AA2B30(v36, v35);
    sub_190AA2B30(v37, v38);

    v31 = v42;
    sub_1908B1EFC(v37, v38);
    sub_1908B1EFC(v36, v35);
    v27 = v50;
  }

  else
  {
    v36 = 0;
    v56 = 0;
    v34 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v35 = 1;
  }

  *&v65 = v61;
  *(&v65 + 1) = v60;
  *&v66 = v64;
  *(&v66 + 1) = v59;
  *&v67 = v58;
  *(&v67 + 1) = v57;
  *&v68 = v63;
  *(&v68 + 1) = v62;
  *&v69 = v36;
  *(&v69 + 1) = v35;
  *&v70 = v56;
  *(&v70 + 1) = v34;
  *&v71 = v37;
  *(&v71 + 1) = v38;
  *&v72 = v31;
  *(&v72 + 1) = v39;
  *a2 = 1145656647;
  *(a2 + 8) = 0xE400000000000000;
  *(a2 + 16) = v54;
  *(a2 + 24) = v55;
  v44 = v65;
  v45 = v66;
  v46 = v68;
  *(a2 + 64) = v67;
  *(a2 + 80) = v46;
  *(a2 + 32) = v44;
  *(a2 + 48) = v45;
  *(a2 + 96) = 0x49207265646E6553;
  *(a2 + 104) = 0xE900000000000044;
  *(a2 + 112) = v27;
  *(a2 + 120) = v53;
  *(a2 + 128) = 0x7470697263736544;
  *(a2 + 136) = 0xEB000000006E6F69;
  *(a2 + 144) = v51;
  *(a2 + 152) = v52;
  v47 = v69;
  v48 = v70;
  v49 = v72;
  *(a2 + 192) = v71;
  *(a2 + 208) = v49;
  *(a2 + 160) = v47;
  *(a2 + 176) = v48;
  v73[0] = v36;
  v73[1] = v35;
  v73[2] = v56;
  v73[3] = v34;
  v73[4] = v37;
  v73[5] = v38;
  v73[6] = v31;
  v73[7] = v39;
  sub_190D52690();
  sub_190D52690();
  sub_19022FD14(&v65, &v74, &qword_1EAD63F78);
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_19022FD14(&v69, &v74, &qword_1EAD63F80);
  sub_19022EEA4(v73, &qword_1EAD63F80);

  *&v74 = v61;
  *(&v74 + 1) = v60;
  v75 = v64;
  v76 = v59;
  v77 = v58;
  v78 = v57;
  v79 = v63;
  v80 = v62;
  sub_19022EEA4(&v74, &qword_1EAD63F78);
}

uint64_t sub_190D24B94(void **a1)
{
  v1 = *a1;
  sub_190D24C94(*a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FE0();
  sub_190D2501C(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63F70);
  return sub_190D55FE0();
}

void sub_190D24C94(void *a1)
{
  v1 = [objc_opt_self() sharedRegistry];
  v2 = [v1 cachedChats];

  sub_1902188FC(0, &qword_1EAD44EE0);
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_43:

    return;
  }

LABEL_3:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v29 = v3 + 32;
  v30 = v3 & 0xFFFFFFFFFFFFFF8;
  v7 = &selRef_green_chevronImage;
  v32 = v4;
  v33 = v3;
  v31 = v3 & 0xC000000000000001;
  while (v6)
  {
    v8 = MEMORY[0x193AF3B90](v5, v3);
    v9 = __OFADD__(v5, 1);
    v10 = v5 + 1;
    if (v9)
    {
      goto LABEL_41;
    }

LABEL_11:
    v34 = v10;
    v35 = v8;
    v11 = [v8 _items];
    sub_1902188FC(0, &unk_1EAD54F90);
    v12 = sub_190D57180();

    if (v12 >> 62)
    {
      v3 = sub_190D581C0();
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_13:
      v13 = 0;
      v36 = v3;
      while (2)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x193AF3B90](v13, v12);
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v4 = sub_190D581C0();
          if (!v4)
          {
            goto LABEL_43;
          }

          goto LABEL_3;
        }

        v17 = [v14 v7[53]];
        if (v17)
        {
          v18 = v17;
          v19 = sub_190D56F10();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v22 = v7;
        v23 = [a1 v7[53]];
        if (v23)
        {
          v24 = v23;
          v25 = sub_190D56F10();
          v27 = v26;

          if (v21)
          {
            if (v27)
            {
              if (v19 == v25 && v21 == v27)
              {

                return;
              }

              v28 = sub_190D58760();

              if (v28)
              {
                goto LABEL_37;
              }

              goto LABEL_16;
            }

LABEL_33:
          }

          else
          {

            if (!v27)
            {
              goto LABEL_37;
            }
          }

LABEL_16:
          ++v13;
          v3 = v36;
          v7 = v22;
          if (v16 == v36)
          {
            goto LABEL_4;
          }

          continue;
        }

        break;
      }

      if (!v21)
      {

LABEL_37:

        return;
      }

      goto LABEL_33;
    }

    v3 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_13;
    }

LABEL_4:

    v3 = v33;
    v5 = v34;
    v6 = v31;
    if (v34 == v32)
    {
      goto LABEL_43;
    }
  }

  if (v5 < *(v30 + 16))
  {
    v8 = *(v29 + 8 * v5);
    v9 = __OFADD__(v5, 1);
    v10 = v5 + 1;
    if (v9)
    {
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  __break(1u);
}

id sub_190D2501C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A920);
  sub_190D55FD0();
  if (!v5)
  {
    return 0;
  }

  result = [a1 guid];
  if (result)
  {
    v3 = result;
    v4 = [v5 messageItemForGUID_];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_190D250D0(void *a1)
{
  v1 = [a1 fileTransferGUIDs];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v4 = sub_190D57180();

    v5 = 0;
    v14 = v2;
    v6 = *(v4 + 16);
    v7 = v4 + 40;
LABEL_3:
    v8 = v7 + 16 * v5;
    while (1)
    {
      if (v6 == v5)
      {

        return;
      }

      if (v5 >= *(v4 + 16))
      {
        break;
      }

      v9 = objc_opt_self();
      sub_190D52690();
      v10 = [v9 sharedInstance];
      if (!v10)
      {
        goto LABEL_14;
      }

      v11 = v10;
      ++v5;
      v8 += 16;
      v12 = sub_190D56ED0();
      v13 = [v11 transferForGUID_];

      if (v13)
      {
        MEMORY[0x193AF29E0]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v7 = v4 + 40;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

unint64_t sub_190D25278()
{
  result = qword_1EAD63F88;
  if (!qword_1EAD63F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD63F58);
    sub_190233640(&qword_1EAD63F90, &qword_1EAD63F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD63F88);
  }

  return result;
}

char *sub_190D25330()
{
  v0 = [objc_allocWithZone(_s14descr1F03EB3E1C15FaceTimeSectionO14ActionHandlersCMa()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15FaceTimeSection14ActionHandlers_joinButtonPressed];
  *v2 = sub_190D25814;
  v2[1] = v1;

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15FaceTimeSection14ActionHandlers_leaveButtonPressed];
  *v4 = sub_190D259F4;
  v4[1] = v3;

  return v0;
}

char *sub_190D25414()
{
  v0 = [objc_allocWithZone(_s14ActionHandlersCMa()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stageLocationRequest];
  *v2 = sub_190D255DC;
  v2[1] = v1;

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_stopSharingLocation];
  *v4 = sub_190D256C0;
  v4[1] = v3;

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_shareLocation];
  *v6 = sub_190D25770;
  v6[1] = v5;

  return v0;
}

void sub_190D25544()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong stageLocationRequestComposition];
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_190D255E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong conversation];

    v3 = [v2 chat];
    [v3 stopSharingLocation];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_190D256C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong stageFindMyCompositionWithShareType_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_190D25778()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong conversation];
    v3 = [v2 chat];
    [v3 joinExistingTUConversation];
  }
}

void sub_190D2581C()
{
  v0 = sub_190D518A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong conversation];
    v7 = [v6 chat];
    v8 = [v7 conversation];

    if (v8)
    {
      v9 = [objc_opt_self() sharedRegistry];
      v10 = [v9 conversationManager];

      v11 = [v8 UUID];
      sub_190D51880();

      v12 = sub_190D51860();
      (*(v1 + 8))(v3, v0);
      [v10 leaveConversationWithUUID_];
    }
  }
}

id sub_190D25A48@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63FA0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - v3;
  result = CKFrameworkBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    v10 = sub_190D56F10();
    v12 = v11;

    v20 = v10;
    v21 = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD63FA8);
    v14 = sub_190D25DF0(&qword_1EAD63FB0, &qword_1EAD63FA8);
    v15 = sub_19081E484();
    v16 = MEMORY[0x1E69E6158];
    sub_190D558C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010);
    sub_190D54410();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_190DD1D90;
    sub_190D54400();
    v20 = v13;
    v21 = v16;
    v22 = v14;
    v23 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x193AF1360](2, v17, v1, OpaqueTypeConformance2);

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190D25D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_190D25DF0(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_190D25E44(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v23)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v26 = i;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x193AF3B90](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_61;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        goto LABEL_60;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
      {
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_190DD55F0;
        *(v9 + 32) = [v8 mediaObject];

LABEL_13:
        v10 = 0;
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_53;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v22 = sub_190D275F8();
LABEL_49:
        v9 = v22;
        goto LABEL_50;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v22 = sub_190D27AFC();
        goto LABEL_49;
      }

      v9 = MEMORY[0x1E69E7CC0];
LABEL_50:

      if (!(v9 >> 62))
      {
        goto LABEL_13;
      }

      v11 = sub_190D581C0();
      v10 = 1;
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
LABEL_15:
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_62;
        }

        goto LABEL_16;
      }

LABEL_53:
      isUniquelyReferenced_nonNull_bridgeObject = sub_190D581C0();
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v11;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
      {
        goto LABEL_62;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v30 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        goto LABEL_24;
      }

      sub_190D581C0();
LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = sub_190D58310();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_190D581C0();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v16)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_63;
          }

          goto LABEL_5;
        }
      }

      if (((v15 >> 1) - v14) < v11)
      {
        goto LABEL_64;
      }

      v17 = (v13 + 8 * v14 + 32);
      if (v10)
      {
        break;
      }

      sub_1902188FC(0, &qword_1EAD466C0);
      swift_arrayInitWithCopy();

      if (v11 < 1)
      {
        goto LABEL_5;
      }

LABEL_43:
      v20 = *(v13 + 16);
      v5 = __OFADD__(v20, v11);
      v21 = v20 + v11;
      if (v5)
      {
        goto LABEL_65;
      }

      *(v13 + 16) = v21;
LABEL_5:
      v2 = v30;
      if (v30 == i)
      {
        return v3;
      }
    }

    if (v16 < 1)
    {
      goto LABEL_66;
    }

    v18 = 0;
    if ((v9 & 0xC000000000000001) != 0)
    {
LABEL_33:
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x193AF3B90](v18++, v9);
      *v17 = isUniquelyReferenced_nonNull_bridgeObject;
      if (v18 != v16)
      {
        goto LABEL_38;
      }

LABEL_42:

      i = v26;
      if (v11 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_43;
    }

    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v18 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v19 = *(v9 + 32 + 8 * v18++);
      *v17 = v19;
      isUniquelyReferenced_nonNull_bridgeObject = v19;
      if (v18 == v16)
      {
        goto LABEL_42;
      }

LABEL_38:
      ++v17;
      if ((v9 & 0xC000000000000001) != 0)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_190D581C0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CKTranscriptCollectionViewController.selectedMediaObjectForCommSafetyReport(selectedIndexPath:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_190D51C00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D26634(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = [v2 chatItems];
    v12 = sub_1902188FC(0, &qword_1EAD450F0);
    v13 = sub_190D57180();

    if (v13 >> 62)
    {
      v14 = sub_190D581C0();

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (sub_190D51BE0() >= v14)
    {
LABEL_26:
      (*(v8 + 8))(v10, v7);
      return 0;
    }

    v15 = [v2 chatItems];
    v12 = sub_190D57180();

    v16 = sub_190D51BE0();
    if ((v12 & 0xC000000000000001) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v12 + 8 * v16 + 32);
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_21:
    v17 = MEMORY[0x193AF3B90](v16, v12);
LABEL_10:
    v15 = v17;

    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v19 = [v18 mediaObject];

      goto LABEL_18;
    }

    v20 = [v15 visibleAssociatedStickerChatItems];
    sub_1902188FC(0, &unk_1EAD55410);
    v12 = sub_190D57180();

    if (!(v12 >> 62))
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_14:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x193AF3B90](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v22 = *(v12 + 32);
        }

        v23 = v22;

        v19 = [v23 mediaObject];

LABEL_18:
        (*(v8 + 8))(v10, v7);
        return v19;
      }

      goto LABEL_25;
    }

LABEL_24:
    result = sub_190D581C0();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_25:

    goto LABEL_26;
  }

  sub_19098D840(v6);
  return 0;
}

uint64_t sub_190D26634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CKTranscriptCollectionViewController.mediaObjectsForCommSafetyReport(selectedMediaObject:)(void *a1)
{
  v2 = [v1 chatItems];
  sub_1902188FC(0, &qword_1EAD450F0);
  v3 = sub_190D57180();

  v30 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    v4 = sub_190D581C0();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
    while (!__OFSUB__(v4--, 1))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v4, v3);
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v3 + 32 + 8 * v4);
      }

      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x193AF29E0]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v6 = v30;
        if (!v4)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (!v4)
        {
          goto LABEL_21;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v6 = v5;
LABEL_21:

  if (v6 >> 62)
  {
    v10 = sub_190D581C0();
    if (v10)
    {
      goto LABEL_23;
    }

LABEL_37:

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_23:
  sub_19082E29C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v11 = 0;
  v12 = v5;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x193AF3B90](v11, v6);
    }

    else
    {
      v13 = *(v6 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = [v13 visibleAssociatedMessageChatItems];
    if (v15)
    {
      v16 = v15;
      sub_1902188FC(0, &qword_1EAD44F88);
      v17 = sub_190D57180();
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_19082E29C((v18 > 1), v19 + 1, 1);
    }

    ++v11;
    *(v5 + 16) = v19 + 1;
    v20 = v5 + 16 * v19;
    *(v20 + 32) = v14;
    *(v20 + 40) = v17;
  }

  while (v10 != v11);

LABEL_38:
  v21 = *(v12 + 16);
  v22 = a1;
  sub_190D52690();
  if (v21)
  {
    v23 = 0;
    v24 = (v12 + 40);
    while (v23 < *(v12 + 16))
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v27 = v22;
      LOBYTE(v25) = sub_190D26BA8(v25, v26, a1);

      if (v25)
      {
        goto LABEL_44;
      }

      ++v23;
      v24 += 2;
      if (v21 == v23)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_43:
  v23 = 0;
LABEL_44:

  sub_190D272F8(10, v23);
  v28 = sub_190D28BD8(v12, sub_190D273D0);
  sub_190CAC6D8(v28);
}

uint64_t sub_190D26BA8(uint64_t a1, unint64_t a2, void *a3)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
  if (v4 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_190DD55F0;
    *(v7 + 32) = [v6 mediaObject];
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = sub_190D275F8();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v7 = sub_190D27AFC();
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  if (v7 >> 62)
  {
LABEL_43:
    v8 = sub_190D581C0();
    v57 = a3;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_44:

    v23 = a2;
    v48 = 0;
    v24 = &unk_190DD5000;
    if ((a2 & 0x8000000000000000) != 0 || (a2 & 0x4000000000000000) != 0)
    {
      goto LABEL_97;
    }

    goto LABEL_46;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = a3;
  if (!v8)
  {
    goto LABEL_44;
  }

LABEL_6:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x193AF3B90](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = [v10 transferGUID];
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = sub_190D56F10();
    v17 = v16;

    if (a3)
    {
      goto LABEL_16;
    }

LABEL_20:
    v21 = 0;
    if (!v17)
    {
      goto LABEL_7;
    }

LABEL_23:
    if (!v21)
    {

      goto LABEL_8;
    }

    if (v15 == a3 && v17 == v21)
    {

      goto LABEL_34;
    }

    v22 = sub_190D58760();

    a3 = v57;
    if (v22)
    {

      goto LABEL_35;
    }

LABEL_9:
    ++v9;
    if (v12 == v8)
    {
      goto LABEL_44;
    }
  }

  v15 = 0;
  v17 = 0;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_16:
  v18 = [a3 transferGUID];
  if (v18)
  {
    v19 = v18;
    a3 = sub_190D56F10();
    v21 = v20;

    v5 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
    if (!v17)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  a3 = 0;
  v21 = 0;
  if (v17)
  {
    goto LABEL_23;
  }

LABEL_7:

  if (v21)
  {
LABEL_8:

    a3 = v57;
    goto LABEL_9;
  }

LABEL_34:
  a3 = v57;
LABEL_35:
  v23 = a2;
  v24 = 0x190DD5000;
  LODWORD(v25) = 1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_96;
  }

  v48 = 1;
  if ((a2 & 0x4000000000000000) != 0)
  {
LABEL_97:
    while (2)
    {
      v26 = sub_190D581C0();
      if (!v26)
      {
        return v48;
      }

LABEL_47:
      v27 = 0;
      v28 = v23 & 0xC000000000000001;
      v52 = (v23 + 32);
      v53 = v23 & 0xFFFFFFFFFFFFFF8;
      v51 = *(v24 + 1520);
      v49 = v23 & 0xC000000000000001;
      v50 = v26;
      while (2)
      {
        if (v28)
        {
          v29 = MEMORY[0x193AF3B90](v27, v23);
        }

        else
        {
          v25 = *(v53 + 16);
          if (v27 >= v25)
          {
            goto LABEL_95;
          }

          v29 = *&v52[8 * v27];
        }

        v23 = v29;
        v30 = __OFADD__(v27, 1);
        v31 = v27 + 1;
        if (v30)
        {
          goto LABEL_94;
        }

        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        v56 = v23;
        if (v32 || (objc_opt_self(), (v32 = swift_dynamicCastObjCClass()) != 0))
        {
          v33 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
          v24 = swift_allocObject();
          *(v24 + 16) = v51;
          *(v24 + 32) = [v33 v5[334]];
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v24 = sub_190D275F8();
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v24 = sub_190D27AFC();
            }

            else
            {
              v24 = MEMORY[0x1E69E7CC0];
            }
          }
        }

        v54 = v31;
        if (!(v24 >> 62))
        {
          v5 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v5)
          {
            break;
          }

          goto LABEL_48;
        }

        v5 = sub_190D581C0();
        if (!v5)
        {
LABEL_48:

          v28 = v49;
          v27 = v54;
          v23 = a2;
          v5 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
          if (v54 == v50)
          {
            return v48;
          }

          continue;
        }

        break;
      }

      v34 = 0;
LABEL_62:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x193AF3B90](v34, v24);
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34 >= v25)
        {
          goto LABEL_93;
        }

        v35 = *(v24 + 8 * v34 + 32);
      }

      v36 = v35;
      v23 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        v48 = v25;
        continue;
      }

      break;
    }

    v37 = [v35 transferGUID];
    if (v37)
    {
      v38 = v37;
      v39 = sub_190D56F10();
      v41 = v40;

      if (a3)
      {
        goto LABEL_68;
      }

LABEL_72:
      v45 = 0;
      if (!v41)
      {
LABEL_59:

        if (!v45)
        {
          goto LABEL_90;
        }

LABEL_60:

        goto LABEL_61;
      }
    }

    else
    {
      v39 = 0;
      v41 = 0;
      if (!a3)
      {
        goto LABEL_72;
      }

LABEL_68:
      v42 = [a3 transferGUID];
      if (v42)
      {
        v43 = v42;
        a3 = sub_190D56F10();
        v45 = v44;

        if (!v41)
        {
          goto LABEL_59;
        }
      }

      else
      {
        a3 = 0;
        v45 = 0;
        if (!v41)
        {
          goto LABEL_59;
        }
      }
    }

    if (!v45)
    {

      goto LABEL_60;
    }

    if (v39 == a3 && v41 == v45)
    {

      return 1;
    }

    v46 = sub_190D58760();

    if (v46)
    {
LABEL_90:

      return 1;
    }

LABEL_61:
    ++v34;
    a3 = v57;
    if (v23 == v5)
    {
      goto LABEL_48;
    }

    goto LABEL_62;
  }

LABEL_46:
  v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    goto LABEL_47;
  }

  return v48;
}

uint64_t sub_190D272F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2 < 0 || (v5 = *(v3 + 16), v5 <= a2))
  {

    *v2 = MEMORY[0x1E69E7CC0];
    return result;
  }

  result = sub_190D28B74(a2 + 1, a1, *v2);
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  result = sub_190D28B74(a2, -a1, v3);
  if (v5 < v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  result = sub_190A10138(v8, v5);
  if (v9 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return sub_190A10138(0, v9);
}

uint64_t sub_190D273D0(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 || (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_190DD55F0;
    *(v5 + 32) = [v4 mediaObject];
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = sub_190D275F8();
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v5 = sub_190D27AFC();
      }

      else
      {
        v5 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  v6 = sub_190D25E44(a2);
  sub_190CAA6F8(v6);
  return v5;
}

id sub_190D275F8()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v4 = v2;
  v38 = MEMORY[0x1E69E7CC0];
  v5 = v1;
  v6 = [v4 text];
  if (!v6)
  {
    v27 = 0;
    v28 = 0;
    v15 = v3;
LABEL_7:
    aBlock = v3;
    v26 = v5;
    if (v15 >> 62)
    {
LABEL_26:
      v30 = v15 & 0xFFFFFFFFFFFFFF8;
      v31 = sub_190D581C0();
    }

    else
    {
      v30 = v15 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_190D52690();
    v16 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    while (v31 != v16)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x193AF3B90](v16, v15);
      }

      else
      {
        if (v16 >= *(v30 + 16))
        {
          goto LABEL_25;
        }

        v17 = *(v15 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      result = [objc_opt_self() sharedInstance];
      if (!result)
      {
        goto LABEL_29;
      }

      v20 = result;
      v21 = [v18 guid];
      v22 = [v4 message];
      result = [v4 IMChatItem];
      if (!result)
      {
        goto LABEL_30;
      }

      v23 = result;
      v24 = [result chatContext];

      v25 = [v20 mediaObjectWithTransferGUID:v21 imMessage:v22 chatContext:v24];
      ++v16;
      if (v25)
      {
        MEMORY[0x193AF29E0]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v29 = aBlock;
        v16 = v19;
      }
    }

    sub_19022123C(v27);
    sub_19022123C(v28);
    return v29;
  }

  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_190D27F64;
  *(v8 + 24) = 0;
  v36 = sub_190D28F6C;
  v37 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_190D27FF8;
  v35 = &block_descriptor_145;
  v9 = _Block_copy(&aBlock);
  sub_190D50920();

  v10 = swift_allocObject();
  *(v10 + 16) = &v38;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_190D28F94;
  *(v11 + 24) = v10;
  v36 = sub_1908A62F4;
  v37 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_190D280C8;
  v35 = &block_descriptor_9_11;
  v12 = _Block_copy(&aBlock);
  sub_190D50920();

  [v7 __im_enumerateAdaptiveImageGlyphFileTransfersUsingFileTransferProvider_block_];
  _Block_release(v9);

  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v28 = sub_190D28F94;
      v27 = sub_190D27F64;
      v15 = v38;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_190D27AFC()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [v0 acknowledgments];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    sub_1902188FC(0, &qword_1EAD5E5E0);
    v4 = sub_190D57180();

    v28 = v2;
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_35:
      v6 = sub_190D581C0();
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_31;
      }
    }

    v7 = 0;
    v26 = v5;
    v27 = v4 & 0xC000000000000001;
    v8 = &selRef_systemFontOfSize_weight_design_;
    v25 = v4;
    while (1)
    {
      v24 = v2;
      v9 = v7;
      v2 = v27;
      while (1)
      {
        if (v2)
        {
          v12 = MEMORY[0x193AF3B90](v9, v4);
        }

        else
        {
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_34;
          }

          v12 = *(v4 + 8 * v9 + 32);
        }

        v11 = v12;
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v13 = [v12 v8[67]];
        if (!v13)
        {
          goto LABEL_9;
        }

        v14 = v13;
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (!v15)
        {
          v10 = v11;
          v11 = v14;
LABEL_8:

LABEL_9:
          goto LABEL_10;
        }

        v16 = v15;
        if ([v15 isRemoved])
        {
          v10 = v14;
          v8 = &selRef_systemFontOfSize_weight_design_;
          goto LABEL_8;
        }

        v17 = v6;
        result = [objc_opt_self() sharedInstance];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v20 = [v16 transferGUID];
        if (!v20)
        {
          sub_190D56F10();
          v20 = sub_190D56ED0();
        }

        v21 = [v11 message];
        v22 = [v11 chatContext];
        v23 = [v19 mediaObjectWithTransferGUID:v20 imMessage:v21 chatContext:v22];

        v6 = v17;
        v4 = v25;
        v5 = v26;
        v2 = v27;
        v8 = &selRef_systemFontOfSize_weight_design_;
        if (v23)
        {
          break;
        }

LABEL_10:
        ++v9;
        if (v7 == v6)
        {
          v2 = v24;
          goto LABEL_31;
        }
      }

      MEMORY[0x193AF29E0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v2 = v28;
      if (v7 == v6)
      {
LABEL_31:

        return v2;
      }
    }
  }

  return v2;
}

id sub_190D27E28()
{
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v1 = result;
    v2 = [result isFeatureEnabled];

    if (!v2)
    {
      return 0;
    }

    v3 = sub_190D275F8();
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_19:
      v6 = sub_190D581C0();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    do
    {
      v8 = v6 != v7;
      if (v6 == v7)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v11 = [v9 commSafetySensitive];

      ++v7;
    }

    while (v11 != 1);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190D27F64()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = [v1 transferForGUID_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190D27FF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_190D56F10();
  v3 = v1(v2);

  return v3;
}

uint64_t sub_190D28054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a1;
  MEMORY[0x193AF29E0]();
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  return sub_190D571E0();
}

void sub_190D280C8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t CKTranscriptCollectionViewController.hasCommSafetyNotViewableAssociatedItems(_:)(void *a1)
{
  v4 = [v1 chatItems];
  sub_1902188FC(0, &qword_1EAD450F0);
  v5 = sub_190D57180();

  v6 = sub_190D51BE0();
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  for (i = *(v5 + 8 * v6 + 32); ; i = MEMORY[0x193AF3B90]())
  {
    a1 = i;

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      break;
    }

    v9 = [v8 visibleAssociatedMessageChatItems];
    if (v9)
    {
      v10 = v9;
      sub_1902188FC(0, &qword_1EAD44F88);
      v5 = sub_190D57180();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v2 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_27:
      v12 = sub_190D581C0();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; ; ++j)
    {
      if (v12 == j)
      {

        v17 = a1;
        v18 = sub_190D27E28();

        return v18 & 1;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](j, v5);
      }

      else
      {
        if (j >= *(v2 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * j + 32);
      }

      v15 = v14;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v16 = [v14 isCommSafetySensitiveNotViewable];

      if (v16)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return 0;
}

BOOL CKTranscriptCollectionViewController.isItemViewable(at:)(void *a1)
{
  v4 = [v1 chatItems];
  sub_1902188FC(0, &qword_1EAD450F0);
  v5 = sub_190D57180();

  v6 = a1;
  v7 = sub_190D51BE0();
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  for (i = *(v5 + 8 * v7 + 32); ; i = MEMORY[0x193AF3B90]())
  {
    a1 = i;

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      break;
    }

    v10 = [v9 visibleAssociatedMessageChatItems];
    if (v10)
    {
      v11 = v10;
      sub_1902188FC(0, &qword_1EAD44F88);
      v6 = sub_190D57180();
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v2 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
LABEL_28:
      v13 = sub_190D581C0();
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    while (1)
    {
      v12 = v13 == v14;
      if (v13 == v14)
      {
LABEL_21:

        goto LABEL_22;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x193AF3B90](v14, v6);
      }

      else
      {
        if (v14 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v15 = *(v6 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = [v15 isCommSafetySensitiveViewable];

      ++v14;
      if (v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v12 = 1;
LABEL_22:

  return v12;
}

unint64_t CKTranscriptCollectionViewController.hasSensitiveBackground(indexPath:)()
{
  v1 = v0;
  v2 = [v0 chatItems];
  sub_1902188FC(0, &qword_1EAD450F0);
  v3 = sub_190D57180();

  result = sub_190D51BE0();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v3 + 8 * result + 32);
      goto LABEL_5;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x193AF3B90](result, v3);
LABEL_5:
  v6 = v5;

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = [v1 chat];
    v8 = [v7 transcriptBackgroundCommSafetyState];

    return v8 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_190D286CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_190D51C00();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v10 = a1;
  LOBYTE(a4) = a4(v9);

  (*(v7 + 8))(v9, v6);
  return a4 & 1;
}

id sub_190D28968()
{
  v2.receiver = v0;
  v2.super_class = _s19TemporaryMenuButtonCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UIButton.popCommSafetyMenu(_:)(UIMenu *a1)
{
  [v1 frame];
  v7 = [objc_allocWithZone(_s19TemporaryMenuButtonCMa()) initWithFrame_];
  [v7 setShowsMenuAsPrimaryAction_];
  [v7 setMenu_];
  [v1 addSubview_];
  [v7 performPrimaryAction];
}

void sub_190D28A80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v5 frame];
  v10 = [objc_allocWithZone(_s19TemporaryMenuButtonCMa()) initWithFrame_];
  [v10 setShowsMenuAsPrimaryAction_];
  [v10 setMenu_];
  [v5 addSubview_];
  [v10 performPrimaryAction];
}

uint64_t sub_190D28B74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = *(a3 + 16);
    if (__OFSUB__(v3, result))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v3 - result < a2)
    {
      return v3;
    }

    v3 = result + a2;
    if (!__OFADD__(result, a2))
    {
      return v3;
    }

    __break(1u);
  }

  if (__OFSUB__(0, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 0 && -result > a2)
  {
    return 0;
  }

  v3 = result + a2;
  if (!__OFADD__(result, a2))
  {
    return v3;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_190D28BD8(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v31 = a1 + 32;
  v4 = &qword_1EAD606F8;
  while (1)
  {
    v6 = *(v31 + 16 * v2 + 8);
    v7 = *(v31 + 16 * v2);
    sub_190D52690();
    v8 = a2(v7, v6);

    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_190D581C0();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v3 >> 62;
    if (v3 >> 62)
    {
      v29 = sub_190D581C0();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_190D581C0();
      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_15;
    }

    v14 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = v10;
      goto LABEL_17;
    }

LABEL_16:
    v15 = v10;
    result = sub_190D58310();
    v3 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v15)
    {
      goto LABEL_37;
    }

    v37 = v15;
    v34 = v2;
    v35 = v3;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_39;
      }

      sub_190D28F9C();
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v4);
        v22 = v4;
        v23 = sub_19082FBA0(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v4 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD466C0);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v3 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_38;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v32)
    {
      return v3;
    }
  }

  v19 = v14;
  result = sub_190D581C0();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_190D28F04()
{
  result = qword_1EAD62258;
  if (!qword_1EAD62258)
  {
    sub_1902188FC(255, &qword_1EAD466C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD62258);
  }

  return result;
}

unint64_t sub_190D28F9C()
{
  result = qword_1EAD60700;
  if (!qword_1EAD60700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD606F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60700);
  }

  return result;
}

uint64_t sub_190D29008(uint64_t a1)
{
  v2 = sub_190D50FB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_190D50F60();
  sub_190D50920();
  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

id CKDebugTicker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *CKDebugTicker.init()()
{
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_parentWindow] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker__tickCounter] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink] = 0;
  v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_lastLogTimestamp] = 0;
  *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_capturedDidChangeObserver] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CKDebugTicker();
  v1 = objc_msgSendSuper2(&v9, sel_init);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 displayLinkWithTarget:v3 selector:sel_tick];
  v5 = *&v3[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink];
  *&v3[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink] = v4;
  v6 = v4;

  [v6 setPaused_];
  v7 = [objc_opt_self() mainRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

  return v3;
}

id CKDebugTicker.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_capturedDidChangeObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v4 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink;
  v5 = *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink];
  if (v5)
  {
    [v5 invalidate];
    v6 = *&v0[v4];
    *&v0[v4] = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for CKDebugTicker();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id sub_190D29434()
{
  result = [objc_allocWithZone(type metadata accessor for CKDebugTicker()) init];
  qword_1EAD46B58 = result;
  return result;
}

id static CKDebugTicker.shared.getter()
{
  if (qword_1EAD46B50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD46B58;

  return v1;
}

uint64_t sub_190D2951C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E828);
  __swift_project_value_buffer(v0, qword_1EAD9E828);
  sub_190D53010();
  return sub_190D53030();
}

void sub_190D295B4()
{
  v6 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker__tickCounter;
  v7 = *&v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker__tickCounter];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  v0 = v1;
  *&v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker__tickCounter] = v9;
  v3 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window;
  v10 = *&v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter;
    *&v10[OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E12TickerWindow_tickCounter] = v9 >> 1;
    v12 = v10;
    v13 = [v12 rootViewController];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for TickerViewController();
      if (swift_dynamicCastClass())
      {
        sub_190D2A6D8(*&v10[v11]);
        v15 = v14;
      }

      else
      {
        v15 = v12;
        v12 = v14;
      }
    }
  }

  v16 = *&v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink];
  if (!v16)
  {
LABEL_14:
    v19 = *&v1[v3];
    if (!v19)
    {
      return;
    }

    goto LABEL_15;
  }

  v2 = v16;
  if ([v2 isPaused])
  {
LABEL_13:

    goto LABEL_14;
  }

  v5 = &selRef_systemFontOfSize_weight_design_;
  [v2 timestamp];
  v4 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker_lastLogTimestamp;
  v18 = v17 - *&v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_lastLogTimestamp];
  if (v1[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency] == 1)
  {
    if (v18 <= 0.1)
    {
      goto LABEL_13;
    }
  }

  else if (v18 <= 1.0)
  {
    goto LABEL_13;
  }

  if (qword_1EAD52198 != -1)
  {
    goto LABEL_29;
  }

LABEL_23:
  v32 = sub_190D53040();
  __swift_project_value_buffer(v32, qword_1EAD9E828);
  v33 = v0;
  v34 = sub_190D53020();
  v35 = sub_190D576C0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = *&v0[v6] >> 1;

    _os_log_impl(&dword_19020E000, v34, v35, "tick %llu", v36, 0xCu);
    MEMORY[0x193AF7A40](v36, -1, -1);
  }

  else
  {

    v34 = v33;
  }

  [v2 v5[274]];
  v38 = v37;

  *&v0[v4] = v38;
  v19 = *&v0[v3];
  if (v19)
  {
LABEL_15:
    v20 = *&v0[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_parentWindow];
    v39 = v19;
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      [v21 sizeThatFits_];
      v24 = v23;
      v26 = v25;
      [v22 bounds];
      MidY = CGRectGetMidY(v41);

      v28 = v26;
      v29 = MidY + v26 * -0.5;
      v30 = 10.0;
    }

    else
    {
      v31 = v19;
      v30 = 0.0;
      v29 = 0.0;
      v24 = 0.0;
      v28 = 0.0;
    }

    [v39 setFrame_];
  }
}

uint64_t sub_190D29950(void *a1, void *a2)
{
  v5 = [objc_opt_self() defaultCenter];
  *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency) = 1;
  v6 = *MEMORY[0x1E69DE370];
  v7 = [a1 screen];
  v8 = [objc_opt_self() mainQueue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v16[4] = sub_190D29C20;
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_190D29008;
  v16[3] = &block_descriptor_146;
  v11 = _Block_copy(v16);
  v12 = a1;
  v13 = a2;

  v14 = [v5 addObserverForName:v6 object:v7 queue:v8 usingBlock:v11];

  _Block_release(v11);
  *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_capturedDidChangeObserver) = v14;
  return swift_unknownObjectRelease();
}

void sub_190D29B28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [a3 screen];
    v9 = [v8 isCaptured];

    v10 = *&v7[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink];
    if (v9)
    {
      if (v10)
      {
        [v10 setPaused_];
      }

      sub_190D29CA8(a3, a4);
    }

    else
    {
      if (v10)
      {
        [v10 setPaused_];
      }

      v11 = *&v7[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window];
      *&v7[OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window] = 0;

      v7 = v11;
    }
  }
}

void sub_190D29CA8(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker_parentWindow;
  v5 = *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_parentWindow);
  *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_parentWindow) = a2;
  v6 = a2;

  v7 = [objc_allocWithZone(type metadata accessor for TickerWindow()) initWithWindowScene_];
  v8 = *MEMORY[0x1E69DDDD0];
  v9 = v7;
  [v9 setWindowLevel_];
  v10 = OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window;
  v11 = *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window);
  *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_window) = v9;
  v28 = v9;

  [v28 makeKeyAndVisible];
  v12 = [objc_allocWithZone(type metadata accessor for TickerViewController()) init];
  [v28 setRootViewController_];

  v13 = *(v2 + v10);
  if (v13)
  {
    v14 = v28;
    v15 = *(v2 + v4);
    if (v15)
    {
      v16 = v28;
      v17 = v13;
      v18 = v15;
      [v17 sizeThatFits_];
      v20 = v19;
      v22 = v21;
      [v18 bounds];
      MidY = CGRectGetMidY(v30);

      v24 = v22;
      v25 = MidY + v22 * -0.5;
      v26 = 10.0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = v28;
  }

  v27 = v14;
  v26 = 0.0;
  v25 = 0.0;
  v20 = 0.0;
  v24 = 0.0;
LABEL_6:
  [v28 setFrame_];
}

void sub_190D29E78(uint64_t a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_logFrequency) = 0;
  if (*(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink))
  {
    v3 = a1;
    v4 = a2;
    [*(v2 + OBJC_IVAR____TtC7ChatKit13CKDebugTicker_displayLink) setPaused_];
    a1 = v3;
    a2 = v4;
  }

  sub_190D29CA8(a1, a2);
}

char *sub_190D2A0A4()
{
  v1 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v0[OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCounter] = 0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for CKDebugTickHUDView();
  v2 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v3 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel;
  v4 = *&v2[OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel];
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = v2;
  v8 = v4;
  v9 = [v5 preferredFontForTextStyle_];
  [v8 setFont_];

  v10 = *&v2[v3];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 whiteColor];
  [v12 setTextColor_];

  v14 = *&v2[v3];
  v15 = sub_190D56ED0();
  [v14 setText_];

  v16 = [v11 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v7 setBackgroundColor_];
  [v7 _setContinuousCornerRadius_];

  [v7 addSubview_];
  return v7;
}

void sub_190D2A6D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController_tickCounter;
  *&v1[OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E20TickerViewController_tickCounter] = a1;
  v7 = [v1 view];
  if (v7)
  {
    type metadata accessor for CKDebugTickHUDView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      *(v3 + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCounter) = *&v1[v2];
      v4 = *(v3 + OBJC_IVAR____TtC7ChatKitP33_1CDF9E619B3482BCE1E7C40D34D4226E18CKDebugTickHUDView_tickCountLabel);
      v5 = v3;
      sub_190D58720();
      v6 = sub_190D56ED0();

      [v4 setText_];

      [v5 setNeedsLayout];
    }

    else
    {
    }
  }
}

double sub_190D2A830(double a1, double a2)
{
  v5 = [v2 rootViewController];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    type metadata accessor for TickerViewController();
    v8 = swift_dynamicCastClass();
    if (v8 && (v9 = [v8 view]) != 0)
    {
      v10 = v9;
      type metadata accessor for CKDebugTickHUDView();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        [v11 sizeThatFits_];
        v13 = v12;

        return v13 + 6.0;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v6;
}

id sub_190D2AAEC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_190D2AB64()
{
  result = qword_1EAD64028;
  if (!qword_1EAD64028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64028);
  }

  return result;
}

id LinkIntentsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static LinkIntentsManager.shared.getter()
{
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD45C58;

  return v1;
}

uint64_t sub_190D2AC8C(void *a1)
{
  sub_190D50490();
  sub_190D50480();
  sub_190D58230();
  *(swift_allocObject() + 16) = a1;
  sub_190D2AD7C();
  v2 = a1;
  sub_190D50470();

  return sub_190D2ADC8(v4);
}

id sub_190D2AD70@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_190D2AD7C()
{
  result = qword_1EAD64040;
  if (!qword_1EAD64040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD64040);
  }

  return result;
}

uint64_t sub_190D2ADC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190D2AF24()
{
  sub_190D50490();
  sub_190D50480();
  sub_190D58230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD64050);
  sub_190D50470();

  return sub_190D2ADC8(v1);
}

id LinkIntentsManager.init()()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkIntentsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LinkIntentsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkIntentsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190D2B25C()
{
  result = [objc_allocWithZone(type metadata accessor for ContactViewControllerDelegate()) init];
  qword_1EAD64060 = result;
  return result;
}

id ScreenTimeHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimeHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ScreenTimeHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimeHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190D2B464(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD55F0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 descriptorForRequiredKeys];
  v6 = [a1 recipient];
  v7 = v6;
  if (!v6 || (v8 = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20), v9 = sub_190D57160(), v10 = [v8 cnContactWithKeys:v9 shouldFetchSuggestedContact:1], v8, v9, !v10))
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  }

  v11 = [v5 viewControllerForNewContact_];
  if (qword_1EAD521A8 != -1)
  {
    swift_once();
  }

  [v11 setDelegate_];
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 getContactStore];

  [v11 setContactStore_];
  v14 = [objc_opt_self() defaultStore];
  if (v14)
  {
    v15 = v14;

    v16 = [objc_opt_self() defaultCenter];
    v17 = objc_allocWithZone(MEMORY[0x1E695CE78]);
    v18 = v13;
    v19 = [v17 initWithContactStore:v18 accountStore:v15 notificationCenter:v16];

    v20 = [v19 downtimeWhitelistContainer];
    [v11 setParentContainer_];

    v21 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
    [a2 presentViewController:v21 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s14descr1F03EB3E1C22EncryptionStatusFooterVMa()
{
  result = qword_1EAD64070;
  if (!qword_1EAD64070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190D2B878()
{
  sub_190D2B8FC();
  if (v0 <= 0x3F)
  {
    sub_190D52D20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190D2B8FC()
{
  if (!qword_1EAD64080)
  {
    _s9ViewModelCMa_6();
    v0 = sub_190D56360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD64080);
    }
  }
}

void sub_190D2B970(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190D2CEA0(qword_1EAD58F10, _s9ViewModelCMa_6);
  sub_190D51C20();

  v4 = [*(v3 + 16) handles];
  sub_19086E9EC();
  v5 = sub_190D57180();

  *a2 = v5;
}

uint64_t sub_190D2BA4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190D2CEA0(qword_1EAD58F10, _s9ViewModelCMa_6);
  sub_190D51C20();

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return sub_190D52690();
}

uint64_t sub_190D2BB00()
{
  swift_getKeyPath();
  sub_190D2CEA0(qword_1EAD58F10, _s9ViewModelCMa_6);
  sub_190D51C10();
}

uint64_t sub_190D2BBE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_190D511C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  sub_190D2BDD8(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_19022EEA4(v4, &qword_1EAD54E68);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v13 = sub_190D555E0();
    v14 = v17;
    v19 = v18;
    v16 = v20;
    result = (*(v6 + 8))(v11, v5);
    v15 = v19 & 1;
  }

  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return result;
}

void sub_190D2BDD8(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = v61 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v65 = v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D158);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v71 = v61 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D160);
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = v61 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v69 = v61 - v18;
  v19 = sub_190D51290();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_190D511C0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_190D2C7A4();
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v72 = v25;
    v62 = v21;
    v63 = a1;
    v64 = v20;
    v61[0] = v4;
    v27 = CKFrameworkBundle();
    if (v27)
    {
      v28 = v27;
      v29 = sub_190D51210();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_190DD1D90;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_19081EA10();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      v33 = v31;
      sub_190D52690();
      sub_190D56EE0();
      v35 = v34;

      sub_190D52690();
      sub_190D51280();
      v36 = v23;
      v61[1] = v35;
      sub_190D511D0();
      _s14descr1F03EB3E1C22EncryptionStatusFooterVMa();
      v75[0] = sub_190D52CE0();
      sub_190D2CD94();
      sub_190D511E0();
      v37 = sub_190D52CF0();
      if (v37)
      {
        v75[0] = v37;
        sub_1909252E0();
        sub_190D50920();
        v75[0] = sub_190D55E60();
        sub_190AE752C();
        sub_190D511E0();
      }

      v75[0] = v29;
      v75[1] = v33;
      v38 = sub_190D519C0();
      (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
      sub_190D2CEA0(&qword_1EAD5D170, MEMORY[0x1E6968848]);
      sub_19081E484();
      v39 = v71;
      v40 = v64;
      sub_190D51480();
      sub_19022EEA4(v11, &qword_1EAD54C10);
      if ((*(v70 + 48))(v39, 1, v73) == 1)
      {

        v41 = &qword_1EAD5D158;
        v42 = v39;
LABEL_18:
        sub_19022EEA4(v42, v41);
        v60 = v62;
        v59 = v63;
        (*(v62 + 32))(v63, v36, v40);
        (*(v60 + 56))(v59, 0, 1, v40);
        return;
      }

      v43 = v69;
      sub_190AE75D8(v39, v69);
      v44 = v68;
      sub_19022FD14(v43, v68, &qword_1EAD5D160);
      v45 = [objc_opt_self() sharedBehaviors];
      if (v45)
      {
        v46 = v45;
        v47 = [v45 theme];

        if (v47)
        {
          v48 = [v47 linkColor];

          if (!v48)
          {
            v49 = [objc_opt_self() blueColor];
          }

          v50 = sub_190D55CE0();
          sub_190D2CDE8();
          v51 = sub_190D511F0();
          v74 = v50;
          sub_190AE752C();
          sub_190D512B0();
          v51(v75, 0);
          sub_19022EEA4(v44, &qword_1EAD5D160);
          v52 = v66;
          sub_19022FD14(v43, v66, &qword_1EAD5D160);
          v53 = v67;
          sub_190D515E0();
          v54 = sub_190D515F0();
          v55 = *(v54 - 8);
          if ((*(v55 + 48))(v53, 1, v54) != 1)
          {
            v56 = v43;

            v57 = v65;
            (*(v55 + 32))(v65, v53, v54);
            (*(v55 + 56))(v57, 0, 1, v54);
            v58 = sub_190D511F0();
            sub_19022FD14(v57, v61[0], &unk_1EAD55F20);
            sub_190D2CE4C();
            sub_190D512B0();
            sub_19022EEA4(v57, &unk_1EAD55F20);
            v58(v75, 0);
            sub_19022EEA4(v52, &qword_1EAD5D160);
            v42 = v56;
            v41 = &qword_1EAD5D160;
            goto LABEL_18;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  (*(v21 + 56))(a1, 1, 1, v20);
}

id sub_190D2C7A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64068);
  sub_190D56320();
  v0 = *(v37 + 16);

  v1 = [v0 isBusinessConversation];

  if (v1)
  {
    return 0;
  }

  sub_190D56320();
  swift_getKeyPath();
  sub_190D2CEA0(qword_1EAD58F10, _s9ViewModelCMa_6);
  sub_190D51C20();

  v3 = *(v37 + 24);
  v5 = *(v37 + 32);
  v4 = *(v37 + 40);
  sub_190D52690();

  if (v3 != 1)
  {

    v8 = [objc_opt_self() sharedFeatureFlags];
    v9 = [v8 isRCSEncryptionEnabled];

    if (!v9)
    {
      return 0;
    }

    sub_190D56320();
    v10 = *(v37 + 16);

    v11 = [v10 supportsEncryption];

    if (v11)
    {
      sub_190D56320();
      v12 = *(v37 + 16);

      v13 = [v12 isGroupConversation];

      result = CKFrameworkBundle();
      v14 = result;
      if (!v13)
      {
        if (result)
        {
          v20 = sub_190D56ED0();
          v21 = sub_190D56ED0();
          v22 = [v14 localizedStringForKey:v20 value:0 table:v21];

          sub_190D56F10();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_190DD1DA0;
          sub_190D56320();
          swift_getKeyPath();
          sub_190D51C20();

          v24 = [*(v37 + 16) handles];
          sub_19086E9EC();
          v25 = sub_190D57180();

          v26 = sub_190C15BE4(v25, 1);

          if (*(v26 + 2))
          {
            v28 = *(v26 + 4);
            v27 = *(v26 + 5);
            sub_190D52690();
          }

          else
          {
            v28 = 0;
            v27 = 0;
          }

          v29 = MEMORY[0x1E69E6158];
          *(v23 + 56) = MEMORY[0x1E69E6158];
          v30 = sub_19081EA10();
          *(v23 + 64) = v30;
          if (v27)
          {
            v31 = v28;
          }

          else
          {
            v31 = 0;
          }

          if (v27)
          {
            v32 = v27;
          }

          else
          {
            v32 = 0xE000000000000000;
          }

          *(v23 + 32) = v31;
          *(v23 + 40) = v32;
          result = CKFrameworkBundle();
          if (result)
          {
            v33 = result;
            v34 = sub_190D51210();
            v36 = v35;

            *(v23 + 96) = v29;
            *(v23 + 104) = v30;
            *(v23 + 72) = v34;
            *(v23 + 80) = v36;
            v7 = sub_190D56EE0();

            return v7;
          }

LABEL_30:
          __break(1u);
          return result;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (result)
      {
        v15 = sub_190D56ED0();
        v16 = sub_190D56ED0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

LABEL_12:
        v7 = sub_190D56F10();

        return v7;
      }
    }

    else
    {
      result = CKFrameworkBundle();
      if (result)
      {
        v18 = result;
        v19 = sub_190D56ED0();
        v16 = sub_190D56ED0();
        v17 = [v18 localizedStringForKey:v19 value:0 table:v16];

        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_190D56320();
  v6 = *(v37 + 16);

  v7 = sub_190C162FC(v5, v4);

  return v7;
}

unint64_t sub_190D2CD94()
{
  result = qword_1EAD64088;
  if (!qword_1EAD64088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64088);
  }

  return result;
}

unint64_t sub_190D2CDE8()
{
  result = qword_1EAD5D178;
  if (!qword_1EAD5D178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D178);
  }

  return result;
}

unint64_t sub_190D2CE4C()
{
  result = qword_1EAD64090;
  if (!qword_1EAD64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64090);
  }

  return result;
}

uint64_t sub_190D2CEA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190D2CF0C()
{
  result = qword_1EAD64098;
  if (!qword_1EAD64098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD640A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64098);
  }

  return result;
}

uint64_t sub_190D2CF88()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9E840);
  __swift_project_value_buffer(v0, qword_1EAD9E840);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190D2CFF4()
{
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_19083B5B8();
  sub_190D51C20();

  v1 = *(v0 + 48);
  if (v1 >= 8)
  {
    v3 = [*(v0 + 32) transcriptBackground];
    LOBYTE(v2) = sub_1908968B0(v3);
  }

  else
  {
    v2 = 0x606060605030201uLL >> (8 * v1);
  }

  v4 = sub_190AA6430();
  LOWORD(v17) = 1;
  WORD1(v17) = v4 & 0x101;
  BYTE4(v17) = v2;
  *(&v17 + 5) = 257;
  BYTE7(v17) = BYTE2(v4);
  *(&v17 + 1) = 1;
  *&v18 = v5;
  *(&v18 + 1) = v7;
  v19 = v6;
  sub_190977A30();

  v16[3] = &_s24GalleryEngagementPayloadVN;
  v16[4] = &off_1F040EAA0;
  v8 = swift_allocObject();
  v16[0] = v8;
  v9 = v18;
  *(v8 + 16) = v17;
  *(v8 + 32) = v9;
  *(v8 + 48) = v19;
  v10 = sub_190D56ED0();
  sub_19083B854(v16, v15);
  v11 = swift_allocObject();
  sub_19029058C(v15, v11 + 16);
  aBlock[4] = sub_190897A2C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190A928AC;
  aBlock[3] = &block_descriptor_147;
  v12 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v12);

  return __swift_destroy_boxed_opaque_existential_0(v16);
}

id CKCommunicationSafetyFlowPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_190D2D258(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = sub_190D56770();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_190D567A0();
  v44 = *(v16 - 8);
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = a3;
  v42 = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  v19[7] = a1;
  v40 = a1;
  v19[8] = a2;
  v19[9] = ObjectType;
  v20 = objc_opt_self();
  v21 = a2;
  v41 = a6;
  sub_19029063C(a5);
  sub_190D52690();
  v22 = v6;
  if ([v20 isMainThread])
  {
    v23 = [objc_opt_self() sharedManager];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 checksForSensitivityOnSend];

      if (v25 && v42 == 1)
      {
        v26 = a4;
        if (!a4)
        {
          v26 = sub_190821644(MEMORY[0x1E69E7CC0]);
        }

        v52 = v26;
        *&v50 = 0x6C426E6F69746361;
        *(&v50 + 1) = 0xEB000000006B636FLL;
        sub_190D52690();
        sub_190D58230();
        if (a5)
        {
          v27 = swift_allocObject();
          v28 = v41;
          *(v27 + 16) = a5;
          *(v27 + 24) = v28;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD640B8);
          *&v50 = sub_190D2E338;
          *(&v50 + 1) = v27;
          sub_190824530(&v50, v49);
          sub_190D50920();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v26;
          sub_190C1BFD0(v49, aBlock, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          sub_190C81698(aBlock, &v50);
          sub_19021E7D8(&v50);
        }

        sub_19084CFD0(aBlock);
        v35 = v40;
        v36 = objc_allocWithZone(MEMORY[0x1E69CA8E8]);
        v37 = sub_190D56D60();

        v38 = [v36 initWithWorkflow:v35 contextDictionary:v37];

        [v38 setInterventionDelegate_];
        [v21 presentViewController:v38 animated:1 completion:0];
        if (qword_1EAD521B8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_1908AA2C4(&v50, v22);
        swift_endAccess();
      }

      else
      {
        if (a5)
        {
          a5(1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1908E9B68();
    v30 = sub_190D57870();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_190D2E324;
    *(v31 + 24) = v19;
    aBlock[4] = sub_19089582C;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_148;
    v32 = _Block_copy(aBlock);
    sub_190D50920();

    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    v33 = v43;
    v34 = v47;
    sub_190D58170();
    MEMORY[0x193AF3110](0, v18, v33, v32);
    _Block_release(v32);

    (*(v46 + 8))(v33, v34);
    (*(v44 + 8))(v18, v45);
  }
}

id CKCommunicationSafetyFlowPresenter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCommunicationSafetyFlowPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKCommunicationSafetyFlowPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCommunicationSafetyFlowPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190D2D948(char a1, id a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  if (a2)
  {
    v27 = a1;
    v14 = a2;
    if (qword_1EAD51D20 != -1)
    {
      swift_once();
    }

    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9E178);
    v16 = a2;
    v17 = sub_190D53020();
    v18 = sub_190D576A0();

    if (os_log_type_enabled(v17, v18))
    {
      v26 = a8;
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v19 = 136315138;
      swift_getErrorValue();
      v20 = sub_190D58800();
      v22 = sub_19021D9F8(v20, v21, &v28);

      *(v19 + 4) = v22;
      _os_log_impl(&dword_19020E000, v17, v18, "%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x193AF7A40](v25, -1, -1);
      v23 = v19;
      a8 = v26;
      MEMORY[0x193AF7A40](v23, -1, -1);
    }

    else
    {
    }

    a1 = v27;
  }

  if (a1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  sub_190D2D258(a4, a5, v24, a6, a7, a8);
}

void sub_190D2DB5C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v14 = [objc_opt_self() sharedManager];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 checksForSensitivityOnSend];

    if (v16)
    {
      v17 = a2 == 1;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (a3)
      {
        v18 = a3;
      }

      else
      {
        v18 = sub_190821644(MEMORY[0x1E69E7CC0]);
      }

      v28 = v18;
      *&v25 = 0x6C426E6F69746361;
      *(&v25 + 1) = 0xEB000000006B636FLL;
      sub_190D52690();
      sub_190D58230();
      if (a4)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = a4;
        *(v19 + 24) = a5;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD640B8);
        *&v25 = sub_190D2E364;
        *(&v25 + 1) = v19;
        sub_190824530(&v25, v24);
        sub_190D50920();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_190C1BFD0(v24, v27, isUniquelyReferenced_nonNull_native);
        sub_19084CFD0(v27);
      }

      else
      {
        sub_190C81698(v27, &v25);
        sub_19021E7D8(&v25);
        sub_19084CFD0(v27);
      }

      v21 = objc_allocWithZone(MEMORY[0x1E69CA8E8]);
      v22 = sub_190D56D60();

      v23 = [v21 initWithWorkflow:a6 contextDictionary:v22];

      [v23 setInterventionDelegate_];
      [a7 presentViewController:v23 animated:1 completion:0];
      if (qword_1EAD521B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1908AA2C4(&v25, a1);
      swift_endAccess();
    }

    else if (a4)
    {
      a4(1);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190D2DEB8(void *a1, const char *a2, const char *a3, char a4, const char *a5)
{
  v10 = v5;
  if (qword_1EAD51D20 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9E178);
  v13 = sub_190D53020();
  v14 = sub_190D576C0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_19020E000, v13, v14, a2, v15, 2u);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = [a1 contextDictionary];
  if (!v16)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = sub_190D56D90();

  sub_190D58230();
  if (*(v18 + 16) && (v19 = sub_190875C84(v32), (v20 & 1) != 0))
  {
    sub_19021834C(*(v18 + 56) + 32 * v19, v33);
    sub_19084CFD0(v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD640B8);
    if (swift_dynamicCast())
    {
      v21 = sub_190D53020();
      v22 = sub_190D576C0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_19020E000, v21, v22, a3, v23, 2u);
        MEMORY[0x193AF7A40](v23, -1, -1);
      }

      v32[0] = a4;
      MEMORY[0x6C426E6F69746360](v32);

      v24 = sub_190D53020();
      v25 = sub_190D576C0();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_18;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = v25;
      v28 = v24;
      v29 = a5;
      goto LABEL_17;
    }
  }

  else
  {

    sub_19084CFD0(v32);
  }

  v24 = sub_190D53020();
  v30 = sub_190D576C0();
  if (os_log_type_enabled(v24, v30))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v29 = "No actionBlock defined on interventionContainer";
    v27 = v30;
    v28 = v24;
LABEL_17:
    _os_log_impl(&dword_19020E000, v28, v27, v29, v26, 2u);
    MEMORY[0x193AF7A40](v26, -1, -1);
  }

LABEL_18:

  if (qword_1EAD521B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = sub_1908AE554(v10);
  swift_endAccess();
}

void sub_190D2E294(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id CKConversationListCell.makeTextAttachmentsForCurrentIndicatorState()()
{
  v0 = sub_19023EC54();
  v1 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 2);
  if (v2)
  {
    v3 = (v0 + 32);
    v4 = objc_opt_self();
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      result = [v4 sharedBehaviors];
      if (!result)
      {
        break;
      }

      v8 = result;
      v9 = [result theme];

      v10 = [v9 accessoryIndicatorTintColor];
      v11 = v10;
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          if (!v10)
          {
            v11 = [objc_opt_self() tertiaryLabelColor];
          }

          v12 = sub_190D56ED0();
          v13 = &selRef__systemImageNamed_;
        }

        else
        {
          v14 = [objc_opt_self() systemRedColor];

          v12 = sub_190D56ED0();
          v13 = &selRef_systemImageNamed_;
          v11 = v14;
        }
      }

      else
      {
        if (v5)
        {
          if (!v10)
          {
            v11 = [objc_opt_self() tertiaryLabelColor];
          }
        }

        else if (!v10)
        {
          v11 = [objc_opt_self() tertiaryLabelColor];
        }

        v12 = sub_190D56ED0();
        v13 = &selRef_systemImageNamed_;
      }

      v15 = [objc_opt_self() *v13];

      if (!v15)
      {
        goto LABEL_3;
      }

      v16 = qword_1EAD51EF8;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = qword_1EAD603C0;
      v19 = [v17 imageWithConfiguration_];

      if (v19 && (v20 = [v19 imageWithTintColor_], v19, v20))
      {
        v21 = [objc_opt_self() textAttachmentWithImage_];

        MEMORY[0x193AF29E0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v1 = v22;
        if (!--v2)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_3:

        if (!--v2)
        {
          goto LABEL_26;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:

    return v1;
  }

  return result;
}

Swift::Void __swiftcall CKConversationListStandardCell.updateAccessoryIndicatorsForCurrentState()()
{
  v1 = sub_19023EC54();
  v2 = [v0 indicatorContainerView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v2[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration];
    *&v2[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration] = v1;
    sub_190D52690();
    sub_19023EF88(v4, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190D2E844@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64128);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v68 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64130);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64138);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64140);
  MEMORY[0x1EEE9AC00](v77);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64148);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v68 - v15);
  v78 = v1;
  v17 = *(v1 + 16);
  if (v17)
  {
    v74 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_190DD55F0;
    *(v18 + 32) = v17;
    v69 = v17;
    v19 = sub_190D55DC0();
    sub_190D53AD0();
    v20 = v81;
    v21 = v83;
    v72 = v8;
    v22 = v10;
    v23 = v84;
    v24 = v85;
    v25 = sub_190D56500();
    v71 = v2;
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64168) + 36);
    v75 = v5;
    v73 = v7;
    v29 = v16 + v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD641A8) + 36);
    v70 = v12;
    v31 = *MEMORY[0x1E6981DC0];
    v32 = sub_190D565E0();
    v33 = v82;
    (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
    *v29 = v20;
    *(v29 + 1) = v33;
    *(v29 + 2) = v21;
    *(v29 + 3) = v23;
    *(v29 + 4) = v24;
    *(v29 + 5) = v19;
    *(v29 + 24) = 256;
    *(v29 + 50) = v79;
    *(v29 + 27) = v80;
    *(v29 + 7) = v25;
    *(v29 + 8) = v27;
    v34 = sub_190D56500();
    v36 = v35;
    v37 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64178) + 36)];
    *v37 = v34;
    v37[1] = v36;
    *v16 = v18;
    sub_190D56500();
    sub_190D53C60();
    v38 = (v16 + *(v74 + 36));
    v39 = v87;
    *v38 = v86;
    v38[1] = v39;
    v38[2] = v88;
    sub_19022FD14(v16, v22, &qword_1EAD64148);
    swift_storeEnumTagMultiPayload();
    sub_190D2F0A8();
    sub_190D2F1EC();
    v40 = v70;
    sub_190D54C50();
    sub_19022FD14(v40, v73, &qword_1EAD64140);
    swift_storeEnumTagMultiPayload();
    sub_190D2F01C();
    sub_190D54C50();

    sub_19022EEA4(v40, &qword_1EAD64140);
    v41 = v16;
    v42 = &qword_1EAD64148;
    return sub_19022EEA4(v41, v42);
  }

  v43 = *(v78 + 24);
  if (v43)
  {
    v74 = v14;
    v69 = v43;
    v44 = sub_190D55CE0();
    v75 = v5;
    v72 = v8;
    v45 = v44;
    v46 = sub_190D55DC0();
    sub_190D53AD0();
    v47 = v81;
    v48 = v83;
    v73 = v7;
    v49 = v84;
    v50 = v85;
    v51 = sub_190D56500();
    v71 = v2;
    v53 = v52;
    v54 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64190) + 36)];
    v55 = v10;
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD641A8) + 36);
    v70 = v12;
    v57 = *MEMORY[0x1E6981DC0];
    v58 = sub_190D565E0();
    v59 = v82;
    (*(*(v58 - 8) + 104))(&v54[v56], v57, v58);
    *v54 = v47;
    *(v54 + 1) = v59;
    *(v54 + 2) = v48;
    *(v54 + 3) = v49;
    *(v54 + 4) = v50;
    *(v54 + 5) = v46;
    *(v54 + 24) = 256;
    *(v54 + 50) = v79;
    *(v54 + 27) = v80;
    *(v54 + 7) = v51;
    *(v54 + 8) = v53;
    v60 = sub_190D56500();
    v62 = v61;
    v63 = &v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD64178) + 36)];
    *v63 = v60;
    v63[1] = v62;
    *v4 = v45;
    *(v4 + 4) = 256;
    sub_190D56500();
    sub_190D53C60();
    v64 = &v4[*(v71 + 36)];
    v65 = v87;
    *v64 = v86;
    *(v64 + 1) = v65;
    *(v64 + 2) = v88;
    sub_19022FD14(v4, v55, &qword_1EAD64128);
    swift_storeEnumTagMultiPayload();
    sub_190D2F0A8();
    sub_190D2F1EC();
    v66 = v70;
    sub_190D54C50();
    sub_19022FD14(v66, v73, &qword_1EAD64140);
    swift_storeEnumTagMultiPayload();
    sub_190D2F01C();
    sub_190D54C50();

    sub_19022EEA4(v66, &qword_1EAD64140);
    v41 = v4;
    v42 = &qword_1EAD64128;
    return sub_19022EEA4(v41, v42);
  }

  swift_storeEnumTagMultiPayload();
  sub_190D2F01C();
  return sub_190D54C50();
}

unint64_t sub_190D2F01C()
{
  result = qword_1EAD64150;
  if (!qword_1EAD64150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD64140);
    sub_190D2F0A8();
    sub_190D2F1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64150);
  }

  return result;
}

unint64_t sub_190D2F0A8()
{
  result = qword_1EAD64158;
  if (!qword_1EAD64158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD64148);
    sub_190D2F134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64158);
  }

  return result;
}

unint64_t sub_190D2F134()
{
  result = qword_1EAD64160;
  if (!qword_1EAD64160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD64168);
    sub_190A42544();
    sub_190233640(&qword_1EAD64170, &qword_1EAD64178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64160);
  }

  return result;
}

unint64_t sub_190D2F1EC()
{
  result = qword_1EAD64180;
  if (!qword_1EAD64180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD64128);
    sub_190D2F278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64180);
  }

  return result;
}

unint64_t sub_190D2F278()
{
  result = qword_1EAD64188;
  if (!qword_1EAD64188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD64190);
    sub_190233640(&qword_1EAD64198, &qword_1EAD641A0);
    sub_190233640(&qword_1EAD64170, &qword_1EAD64178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD64188);
  }

  return result;
}

unint64_t sub_190D2F35C()
{
  result = qword_1EAD641B0;
  if (!qword_1EAD641B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD641B8);
    sub_190D2F01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD641B0);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1EAD65CA8 == -1)
  {
    if (qword_1EAD65CB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EAD65CB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EAD65CA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_0 < v11;
    if (_MergedGlobals_0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EAD65C94 > a3)
      {
        return 1;
      }

      if (dword_1EAD65C94 >= a3)
      {
        return dword_1EAD65C98 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_0 < a2;
  if (_MergedGlobals_0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EAD65CB0;
  if (qword_1EAD65CB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EAD65CB0 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x193AF6C60](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_0, &dword_1EAD65C94, &dword_1EAD65C98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

void getTLToneIdentifierNone_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTLToneIdentifierNone(void)"];
  [v0 handleFailureInFunction:v1 file:@"SMSApplicationSoundHelper.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void getTLVibrationIdentifierNone_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTLVibrationIdentifierNone(void)"];
  [v0 handleFailureInFunction:v1 file:@"SMSApplicationSoundHelper.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void ToneLibraryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ToneLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SMSApplicationSoundHelper.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getTLAlertClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTLAlertClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SMSApplicationSoundHelper.m" lineNumber:33 description:{@"Unable to find class %s", "TLAlert"}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMSMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKDetailsController+Location.m" lineNumber:26 description:{@"Unable to find class %s", "MSMessage"}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKDetailsController+Location.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getDCIMImageWellUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDCIMImageWellUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKPhotoLibraryUtilities.m" lineNumber:17 description:{@"Unable to find class %s", "DCIMImageWellUtilities"}];

  __break(1u);
}

void __getDCIMImageWellUtilitiesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryServicesCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKPhotoLibraryUtilities.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMSMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKChatController.m" lineNumber:374 description:{@"Unable to find class %s", "MSMessage"}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKChatController.m" lineNumber:373 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKSentWithSiriViewController.m" lineNumber:24 description:{@"Unable to find class %s", "VTPreferences"}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKSentWithSiriViewController.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getWorkoutKitXPCServiceHelperClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWorkoutKitXPCServiceHelperClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKWorkoutUtilities.m" lineNumber:24 description:{@"Unable to find class %s", "WorkoutKitXPCServiceHelper"}];

  __break(1u);
}

void __getWorkoutKitXPCServiceHelperClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkoutKitServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKWorkoutUtilities.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getWKUIRemoteViewServiceAdaptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKUIRemoteViewServiceAdaptorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKWorkoutUtilities.m" lineNumber:35 description:{@"Unable to find class %s", "WKUIRemoteViewServiceAdaptor"}];

  __break(1u);
}

void __getWKUIRemoteViewServiceAdaptorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WorkoutKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKWorkoutUtilities.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void CoreDuetLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreDuetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKSMSComposeViewServiceController.m" lineNumber:92 description:{@"%s", *a1}];

  __break(1u);
}

void CKEnforceAveragePerformanceOfBlock_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CKEnforceAveragePerformanceOfBlock(float, long, __strong id, __strong dispatch_block_t, void (^__strong)(float))"}];
  [v1 handleFailureInFunction:v0 file:@"CKUtilities.m" lineNumber:6396 description:@"CKEnforceAveragePerformanceOfBlock scope argument must be non-nil"];
}

void CKEnforceAveragePerformanceOfBlock_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CKEnforceAveragePerformanceOfBlock(float, long, __strong id, __strong dispatch_block_t, void (^__strong)(float))"}];
  [v1 handleFailureInFunction:v0 file:@"CKUtilities.m" lineNumber:6397 description:@"CKEnforceAveragePerformanceOfBlock block argument must be non-nil"];
}

void CKEnforceAveragePerformanceOfBlock_cold_3()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void CKEnforceAveragePerformanceOfBlock(float, long, __strong id, __strong dispatch_block_t, void (^__strong)(float))"}];
  [v1 handleFailureInFunction:v0 file:@"CKUtilities.m" lineNumber:6398 description:@"CKEnforceAveragePerformanceOfBlock failureBlock argument must be non-nil"];
}

void __getFMUILocationDetailViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFMUILocationDetailViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKDetailsController.m" lineNumber:185 description:{@"Unable to find class %s", "FMUILocationDetailViewController"}];

  __break(1u);
}

void FindMyUICoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKDetailsController.m" lineNumber:183 description:{@"%s", *a1}];

  __break(1u);
}

void __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFMUILocationDetailViewControllerViewOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKDetailsController.m" lineNumber:186 description:{@"Unable to find class %s", "FMUILocationDetailViewControllerViewOptions"}];

  __break(1u);
}

void CKSaveMomentShareFromURL_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 dataSource];
  v5 = 138543362;
  v6 = objc_opt_class();
  v4 = v6;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "_saveMomentShareWithContext: Data source snapshot is not of PXAssetsDataSource type: %{public}@", &v5, 0xCu);
}

void CKSaveMomentShareFromURL_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "_saveMomentShareWithContext: Didn't find indexes for assets %{public}@", &v2, 0xCu);
}

void CKSaveMomentShareFromURL_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Error fetching moment share: %@", &v2, 0xCu);
}

void DataDetectorsUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKTextMessagePartChatItem.m" lineNumber:64 description:{@"%s", *a1}];

  __break(1u);
}

void __getLSApplicationWorkspaceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLSApplicationWorkspaceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKTapToRadar.m" lineNumber:20 description:{@"Unable to find class %s", "LSApplicationWorkspace"}];

  __break(1u);
}

void __getLSApplicationWorkspaceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKTapToRadar.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFKOrderImportPreviewControllerProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKChatController_QuickLook.m" lineNumber:68 description:{@"Unable to find class %s", "FKOrderImportPreviewControllerProvider"}];

  __break(1u);
}

void __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FinanceKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKChatController_QuickLook.m" lineNumber:67 description:{@"%s", *a1}];

  __break(1u);
}

void __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFKOrderMessagesPreviewMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKChatController_QuickLook.m" lineNumber:72 description:{@"Unable to find class %s", "FKOrderMessagesPreviewMetadata"}];

  __break(1u);
}

void __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FinanceKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKChatController_QuickLook.m" lineNumber:71 description:{@"%s", *a1}];

  __break(1u);
}

void CKSpotlightPreviewCachesFileURL_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to create preview caches directories with error: %@", &v4, 0xCu);
}

void __getPLLocalizedCountDescriptionSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryServicesCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKPhotosGridFooterViewModel.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFKOrderMessagesPreviewMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKOrderMediaObject.m" lineNumber:40 description:{@"Unable to find class %s", "FKOrderMessagesPreviewMetadata"}];

  __break(1u);
}

void __getFKOrderMessagesPreviewMetadataClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FinanceKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKOrderMediaObject.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getFMUILocationDetailViewControllerClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFMUILocationDetailViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKDetailsMapViewProvider.m" lineNumber:21 description:{@"Unable to find class %s", "FMUILocationDetailViewController"}];

  __break(1u);
}

void FindMyUICoreLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKDetailsMapViewProvider.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFMUILocationDetailViewControllerViewOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKDetailsMapViewProvider.m" lineNumber:22 description:{@"Unable to find class %s", "FMUILocationDetailViewControllerViewOptions"}];

  __break(1u);
}

void __getAFPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKMessageEntryView.m" lineNumber:143 description:{@"Unable to find class %s", "AFPreferences"}];

  __break(1u);
}

void AssistantServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKMessageEntryView.m" lineNumber:141 description:{@"%s", *a1}];

  __break(1u);
}

void __getSCUIMoreHelpContextMenuClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCUIMoreHelpContextMenuClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKObscurableBalloonView.m" lineNumber:23 description:{@"Unable to find class %s", "SCUIMoreHelpContextMenu"}];

  __break(1u);
}

void __getSCUIMoreHelpContextMenuClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SensitiveContentAnalysisUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKObscurableBalloonView.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getPHAssetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPHAssetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKMediaObjectExportManager.m" lineNumber:31 description:{@"Unable to find class %s", "PHAsset"}];

  __break(1u);
}

void __getPHAssetClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKMediaObjectExportManager.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getSCUIAnalyticsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSCUIAnalyticsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKCommSafetyAnalytics.m" lineNumber:22 description:{@"Unable to find class %s", "SCUIAnalytics"}];

  __break(1u);
}

void __getSCUIAnalyticsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SensitiveContentAnalysisUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKCommSafetyAnalytics.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getBKSHIDEventDeferringTokenClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBKSHIDEventDeferringTokenClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKCamPhysicalCaptureNotifier.m" lineNumber:26 description:{@"Unable to find class %s", "BKSHIDEventDeferringToken"}];

  __break(1u);
}

void __getBKSHIDEventDeferringTokenClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BackBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKCamPhysicalCaptureNotifier.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFKOrderImportPreviewControllerProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKWalletItemSearchController.m" lineNumber:40 description:{@"Unable to find class %s", "FKOrderImportPreviewControllerProvider"}];

  __break(1u);
}

void __getFKOrderImportPreviewControllerProviderClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FinanceKitUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKWalletItemSearchController.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getTUIKTConversationViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKTConversationViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:43 description:{@"Unable to find class %s", "TUIKTConversationViewController"}];

  __break(1u);
}

void TransparencyUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:40 description:{@"%s", *a1}];

  __break(1u);
}

void __getKTStatusClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTStatusClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:41 description:{@"Unable to find class %s", "KTStatus"}];

  __break(1u);
}

void __getKTStatusClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getTUIKTReportToAppleContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKTReportToAppleContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:42 description:{@"Unable to find class %s", "TUIKTReportToAppleContext"}];

  __break(1u);
}

void __getTUIKTReportToAppleViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUIKTReportToAppleViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKKeyTransparencyErrorUtilities.m" lineNumber:44 description:{@"Unable to find class %s", "TUIKTReportToAppleViewController"}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMSMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKChatController+Location.m" lineNumber:22 description:{@"Unable to find class %s", "MSMessage"}];

  __break(1u);
}

void __getMSMessageClass_block_invoke_cold_2_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FindMyUICoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKChatController+Location.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDActionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDActionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:33 description:{@"Unable to find class %s", "DDAction"}];

  __break(1u);
}

void DataDetectorsUILibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DataDetectorsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKChatInputController_TextInputPayloads.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getSTManagementStateClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTManagementStateClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKCommSafetyAuthenticationController.m" lineNumber:19 description:{@"Unable to find class %s", "STManagementState"}];

  __break(1u);
}

void ScreenTimeCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenTimeCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CKCommSafetyAuthenticationController.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getSTCommunicationClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSTCommunicationClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKCommSafetyAuthenticationController.m" lineNumber:18 description:{@"Unable to find class %s", "STCommunicationClient"}];

  __break(1u);
}

void CKFloatApproximatelyEqualToFloatWithTolerance_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL CKFloatApproximatelyEqualToFloatWithTolerance(CGFloat, CGFloat, CGFloat)"}];
  [v1 handleFailureInFunction:v0 file:@"CKGeometry.m" lineNumber:12 description:@"tolerance must be greater than 0"];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x1EEDBEF98](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  v1 = MEMORY[0x1EEDBF488](run);
  result.length = v2;
  result.location = v1;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x1EEDCCB60](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKEventEditViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKitUI))
  {
    return dlopenHelper_EventKitUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___GEOCountryConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PREditingFontAndColorPickerViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PREditorColorPalette(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PREditorColorPickerConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRInjectedEditingSettings(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

void gotLoadHelper_x28__OBJC_CLASS___PRPosterColor(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    dlopenHelper_PosterKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___PRPosterColor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRPosterConfiguredProperties(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRPosterContentOcclusionRectSet(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x2__OBJC_CLASS___PRPosterHostedContentSettings(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRPosterHostedContentSettings(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRPosterSnapshotDefinition(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRRenderingEvent(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRSMutablePosterConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRSPosterArchiver(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRSPosterConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRSPosterConfigurationAttributes(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRSPosterDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISMutablePosterSnapshotDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannel(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x2__OBJC_CLASS___PRUISPosterChannel(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelContext(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

void gotLoadHelper_x20__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    dlopenHelper_PosterBoardUIServices(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelSnapshotDefinition(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterChannelViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterConfigurationBuilder(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterConfigurationFinalizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterEditingViewControllerConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterRenderingViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PRUISPosterSnapshotRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardUIServices))
  {
    return dlopenHelper_PosterBoardUIServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SFSafariViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SafariServices))
  {
    return dlopenHelper_SafariServices(result);
  }

  return result;
}

double gotLoadHelper_x8__PRPosterHostedContentSettingsBase(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__PRPosterRoleBackdrop(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__PRRenderingEventTypeTap(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterKit))
  {
    return dlopenHelper_PosterKit(result);
  }

  return result;
}

double gotLoadHelper_x8__PRSPosterRoleBackdrop(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PosterBoardServices))
  {
    return dlopenHelper_PosterBoardServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_EventKitUI(double a1)
{
  dlopen("/System/Library/Frameworks/EventKitUI.framework/EventKitUI", 0);
  atomic_store(1u, &dlopenHelperFlag_EventKitUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_SafariServices(double a1)
{
  dlopen("/System/Library/Frameworks/SafariServices.framework/SafariServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SafariServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_GeoServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 0);
  atomic_store(1u, &dlopenHelperFlag_GeoServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PosterBoardServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PosterBoardServices.framework/PosterBoardServices", 0);
  atomic_store(1u, &dlopenHelperFlag_PosterBoardServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PosterBoardUIServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PosterBoardUIServices.framework/PosterBoardUIServices", 0);
  atomic_store(1u, &dlopenHelperFlag_PosterBoardUIServices);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PosterKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PosterKit.framework/PosterKit", 0);
  atomic_store(1u, &dlopenHelperFlag_PosterKit);
  return a1;
}