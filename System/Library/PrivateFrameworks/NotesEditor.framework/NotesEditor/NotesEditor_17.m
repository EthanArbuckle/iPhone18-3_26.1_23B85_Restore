uint64_t sub_215472F4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_21549E56C();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_215473020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_2154730DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_21549E70C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TextElementAnimationConfiguration();
  result = sub_215328E68(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

_OWORD *sub_2154731B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_21531E8D0(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_215473228(void *a1)
{
  v2 = sub_2154A1D2C();
  v3 = NSClassFromString(v2);

  if (!v3 || ![a1 isKindOfClass_])
  {
    v9 = 0u;
    v10 = 0u;
LABEL_6:
    sub_2151ADCD8(&v9, &qword_27CA5ABC0);
    return 0;
  }

  v4 = sub_2154A1D2C();
  v5 = [a1 icaxValueForKey_];

  if (v5)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_6;
  }

  type metadata accessor for _NSRange(0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_215473388()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  if (!v2)
  {
    sub_2154A1D6C();
    v2 = sub_2154A1D2C();
  }

  sub_21549EBBC();
  v4 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 durationDescription];

    if (v6)
    {
      sub_2154A1D6C();
    }
  }

  v7 = sub_2154A1D2C();

  v8 = [objc_opt_self() customContentWithLabel:v2 value:v7];

  return v8;
}

id sub_21547350C(void *a1, uint64_t a2)
{
  v4 = sub_21549EBCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = *MEMORY[0x277D76558];
  v13 = [a1 accessibilityTraits];
  if ((v12 & ~v13) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  result = [a1 setAccessibilityTraits_];
  if (a2)
  {
    sub_21549E97C();
    (*(v5 + 32))(v11, v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2154BDB20;
    *(v16 + 32) = sub_215473388();
    sub_2151A6C9C(0, &qword_27CA5C4D0);
    v17 = sub_2154A1F3C();

    [a1 setAccessibilityCustomContent_];

    return (*(v5 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_2154736E4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21549E28C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2151BD278;

  return sub_21546F454(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_215473884(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD278;

  return sub_2151B55E0(a1, v4);
}

uint64_t sub_21547393C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_215473984(uint64_t a1)
{
  v4 = *(sub_21549E28C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2151BD36C;

  return sub_215470A20(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_215473ACC(uint64_t a1)
{
  v2 = type metadata accessor for SummaryViewLauncher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215473B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextElementAnimationConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_215473B8C()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E8D0);
  __swift_project_value_buffer(v0, qword_27CA5E8D0);
  return sub_21549F0BC();
}

id sub_215473BD8()
{
  v1 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController____lazy_storage___scrollViewResizer;
  v2 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController____lazy_storage___scrollViewResizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController____lazy_storage___scrollViewResizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D368C0]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_215473C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA70);
  MEMORY[0x28223BE20](v1 - 8);
  v30 = &v28 - v2;
  v3 = sub_21549E95C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model;
  v10 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model);
  swift_getKeyPath();
  v38 = v10;
  v31 = sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

  sub_21549ED9C();

  v11 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v12 = v4[2];
  v12(v8, v10 + v11, v3);

  v13 = v4[11];
  v33 = v13(v8, v3);
  v32 = *MEMORY[0x277D359E8];
  v29 = v4;
  v14 = v4[1];
  v14(v8, v3);
  v35 = v9;
  v15 = *(v36 + v9);
  swift_getKeyPath();
  v37 = v15;

  sub_21549ED9C();

  v16 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v17 = v15 + v16;
  v18 = v34;
  v12(v34, v17, v3);

  v19 = v13(v18, v3);
  v20 = *MEMORY[0x277D359D8];
  if (v19 == *MEMORY[0x277D359D8])
  {
    (v29[12])(v18, v3);
    v21 = swift_projectBox();
    v22 = v14;
    v23 = v30;
    sub_215324EEC(v21, v30, &unk_27CA5EA70);
    v22(v23, v3);
  }

  else
  {
    v14(v18, v3);
  }

  v24 = sub_215457AE8();

  v26 = v33 != v32 && v19 != v20;
  return v24 & v26;
}

id sub_215474008(uint64_t a1, _OWORD *a2)
{
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges] = MEMORY[0x277D84F90];
  v5 = &v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousParagraphRange];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousSpeaker];
  *v6 = 0;
  v6[1] = 0;
  v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_queryEntered] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController____lazy_storage___scrollViewResizer] = 0;
  v7 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectionFeedbackGenerator;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectActiveSegmentGR] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_longPressRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_hapticImpactIntensityForSelectionChange] = 0x3FE0000000000000;
  *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer] = 0;
  result = [objc_opt_self() sharedAudioController];
  if (result)
  {
    *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController] = result;
    *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_playbackTime] = 0;
    v9 = &v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter];
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    v9[4] = 0u;
    v9[5] = 0u;
    v9[6] = 0u;
    v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_isAutoScrollingForSegmentChange] = 0;
    v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging] = 0;
    v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling] = 0;
    v10 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
    v11 = sub_21549E6AC();
    (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
    v12 = &v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset];
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v13 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
    v14 = sub_21549EBCC();
    (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
    *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model] = a1;
    v15 = v9[5];
    v31[4] = v9[4];
    v31[5] = v15;
    v31[6] = v9[6];
    v16 = v9[1];
    v31[0] = *v9;
    v31[1] = v16;
    v17 = v9[3];
    v31[2] = v9[2];
    v31[3] = v17;
    v18 = a2[1];
    *v9 = *a2;
    v9[1] = v18;
    v19 = a2[2];
    v20 = a2[3];
    v21 = a2[6];
    v9[5] = a2[5];
    v9[6] = v21;
    v22 = a2[4];
    v9[3] = v20;
    v9[4] = v22;
    v9[2] = v19;

    sub_215324EEC(a2, v30, &qword_27CA5E8C8);
    sub_2151ADCD8(v31, &qword_27CA5E8C8);
    v23 = type metadata accessor for TranscriptViewController();
    v29.receiver = v2;
    v29.super_class = v23;
    v24 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
    v30[3] = v23;
    v30[4] = sub_21547BAAC(&qword_27CA5E9C0, type metadata accessor for TranscriptViewController);
    v30[0] = v24;
    v25 = v24;
    sub_21549ECAC();
    v26 = objc_opt_self();
    v27 = [v26 defaultCenter];
    [v27 addObserver:v25 selector:sel_audioPlaybackTimeDidChangeWithNotification_ name:*MEMORY[0x277D36480] object:0];

    v28 = [v26 defaultCenter];
    [v28 addObserver:v25 selector:sel_audioDidStopWithNotification_ name:*MEMORY[0x277D36478] object:0];

    sub_2151ADCD8(a2, &qword_27CA5E8C8);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21547441C()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for TranscriptViewController();
  objc_msgSendSuper2(&v21, sel_loadView);
  v1 = objc_allocWithZone(type metadata accessor for TranscriptView());
  v2 = v0;
  v3 = sub_21546DF00(v2);
  [v2 setView_];
  v4 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v5 = v2;
  v6 = [v4 initWithTarget:v5 action:sel_tap_];
  [v6 setDelegate_];
  v7 = [v5 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  [v7 addGestureRecognizer_];

  v9 = *&v5[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectActiveSegmentGR];
  *&v5[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectActiveSegmentGR] = v6;
  v10 = v6;

  v11 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v5 action:sel_longPress_];
  [v11 setMinimumPressDuration_];
  v12 = v11;
  [v12 setDelegate_];
  [v10 requireGestureRecognizerToFail_];
  v13 = [v5 view];
  if (!v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = v13;
  [v13 addGestureRecognizer_];

  v15 = *&v5[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_longPressRecognizer];
  *&v5[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_longPressRecognizer] = v12;
  v16 = v12;

  v17 = [objc_allocWithZone(MEMORY[0x277D757F8]) initWithTarget:v5 action:sel_pan_];
  v18 = v17;
  [v18 setDelegate_];
  v19 = [v5 view];
  if (v19)
  {
    v20 = v19;
    [v19 addGestureRecognizer_];

    [v10 setCancelsTouchesInView_];
    [v16 setCancelsTouchesInView_];

    [v18 setCancelsTouchesInView_];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_215474718()
{
  v1 = *&v0[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for TranscriptViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for TranscriptViewController()
{
  result = qword_27CA5E988;
  if (!qword_27CA5E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_215474A34(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TranscriptViewController();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    type metadata accessor for TranscriptView();
    [swift_dynamicCastClassUnconditional() becomeFirstResponder];

    v5 = *&v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model];
    v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
    result = swift_beginAccess();
    if (*(v5 + v6) == 1)
    {
      *(v5 + v6) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

      sub_21549ED8C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_215474D40()
{
  v1 = v0;
  v2 = sub_21549E28C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  type metadata accessor for TranscriptView();
  v9 = [swift_dynamicCastClassUnconditional() text];

  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = sub_2154A1D6C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v14 = &qword_27CA5E000;
  if (!v13)
  {
    v15 = [v1 view];
    if (!v15)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v16 = v15;
    swift_dynamicCastClassUnconditional();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;

      sub_21549EC0C();

      sub_21546EE90(v6);

      v14 = &qword_27CA5E000;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
    }
  }

  v19 = [v1 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v19;
  swift_dynamicCastClassUnconditional();
  sub_21546E5AC();

  v21 = *&v1[v14[298]];
  v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
  swift_beginAccess();
  if (*(v21 + v22) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v25[-2] = v21;
    LOBYTE(v25[-1]) = 0;
    v25[2] = v21;
    sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

    sub_21549ED8C();
  }

  else
  {
    *(v21 + v22) = 0;
  }

  v24 = MEMORY[0x277D84F90];
  sub_215454C94(MEMORY[0x277D84F90]);
  sub_215454EB4(v24);
}

void sub_2154754B8(void *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_21549E95C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v17 = v45 - v16;
  v18 = (v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter);
  v19 = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 80);
  v62[4] = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 64);
  v62[5] = v19;
  v62[6] = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 96);
  v20 = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 16);
  v62[0] = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter);
  v62[1] = v20;
  v21 = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 48);
  v62[2] = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 32);
  v62[3] = v21;
  if (*(&v62[0] + 1))
  {
    v55 = v62[0];
    v22 = v18[4];
    v23 = v18[5];
    v24 = v18[2];
    v58 = v18[3];
    v59 = v22;
    v25 = v18[6];
    v60 = v23;
    v61 = v25;
    v26 = *v18;
    v56 = v18[1];
    v57 = v24;
    v54[0] = v26;
    v54[1] = v56;
    v54[5] = v23;
    v54[6] = v25;
    v54[3] = v58;
    v54[4] = v22;
    v54[2] = v24;
    v50 = v15;
    v51 = v14;
    sub_21547B9B0(v54, v53);
    [a1 frame];
    v28 = v27;
    v49 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model;
    v29 = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model);
    swift_getKeyPath();
    v53[0] = v29;
    v48 = sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

    sub_21549ED9C();

    v30 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v46 = *(v11 + 16);
    v46(v17, v29 + v30, v10);

    v31 = (*(v11 + 88))(v17, v10) == *MEMORY[0x277D359E8];
    v47 = *(v11 + 8);
    v32 = v47(v17, v10);
    MEMORY[0x28223BE20](v32);
    v45[-6] = &v55;
    *&v45[-5] = a3;
    LOBYTE(v45[-4]) = v31;
    *&v45[-3] = a4;
    *&v45[-2] = v28;
    sub_2154A0FDC();
    sub_21549FBDC();
    v45[1] = 0;

    v33 = *(v5 + v49);
    swift_getKeyPath();
    v52 = v33;

    sub_21549ED9C();

    v34 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v35 = v33 + v34;
    v36 = v50;
    v46(v50, v35, v10);

    v37 = v51;
    (*(v11 + 104))(v51, *MEMORY[0x277D359D0], v10);
    v38 = v36;
    LOBYTE(v36) = sub_21549E94C();
    v39 = v47;
    v47(v37, v10);
    v40 = v39(v38, v10);
    if (v36)
    {
      v41 = v5;
      if ((*(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset + 16) & 1) != 0 || (*(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) & 1) == 0 || v28 >= a4 + -1.0 || (v42 = *(v5 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset + 8), v42 >= a3 + -5.0) && a3 + 5.0 >= v42)
      {
        sub_2151ADCD8(v62, &qword_27CA5E8C8);
      }

      else
      {
        v43 = MEMORY[0x216067B60](v40, 0.75, 1.0, 0.0);
        MEMORY[0x28223BE20](v43);
        v45[-2] = &v55;
        sub_21549FBDC();
        sub_2151ADCD8(v62, &qword_27CA5E8C8);
      }
    }

    else
    {
      sub_2151ADCD8(v62, &qword_27CA5E8C8);
      v41 = v5;
    }

    *(v41 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_isAutoScrollingForSegmentChange) = 0;
    v44 = v41 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset;
    *v44 = a2;
    *(v44 + 8) = a3;
    *(v44 + 16) = 0;
  }
}

uint64_t sub_215475A98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  sub_2154A0ECC();
  return sub_2154A0ECC();
}

id sub_215475B70()
{
  v24 = sub_21549E95C();
  v1 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21549E20C();
  MEMORY[0x28223BE20](v4);
  v5 = sub_21549E28C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model;

  sub_21549EC0C();

  result = [v0 view];
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = result;
  v21[1] = type metadata accessor for TranscriptView();
  swift_dynamicCastClassUnconditional();
  sub_21546EE90(v7);

  sub_21549E1AC();
  sub_21547BAAC(&unk_27CA5C7C0, MEMORY[0x277CC8B30]);
  sub_2154A1EFC();
  sub_215476074();
  v11 = *&v0[v8];
  swift_getKeyPath();
  v29 = v11;
  sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

  sub_21549ED9C();

  v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v13 = v11 + v12;
  v14 = v24;
  (*(v1 + 16))(v3, v13, v24);

  if ((*(v1 + 88))(v3, v14) != *MEMORY[0x277D359E8])
  {
    (*(v22 + 8))(v7, v23);

    return (*(v1 + 8))(v3, v14);
  }

  (*(v1 + 8))(v3, v14);
  v0[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_isAutoScrollingForSegmentChange] = 1;
  if (sub_2154A1E0C() >= 1)
  {
    v15 = sub_2154A1E0C();

    if (!__OFSUB__(v15, 1))
    {
      v16 = v7;
      result = [v0 view];
      if (result)
      {
        v17 = result;
        [swift_dynamicCastClassUnconditional() scrollRangeToVisible_];

        goto LABEL_9;
      }

LABEL_15:
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v7;
LABEL_9:
  v18 = &v0[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter];
  if (!*&v0[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 8])
  {
    return (*(v22 + 8))(v16, v23);
  }

  v19 = v18[40];
  v20 = *(v18 + 4);
  v26 = *(v18 + 3);
  v27 = v20;
  v28 = v19 & 1;
  v25 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
  sub_2154A0ECC();
  (*(v22 + 8))(v16, v23);
}

uint64_t sub_215476074()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges) = MEMORY[0x277D84F90];

  sub_21549EAFC();
  sub_21549EAEC();
  v3 = sub_2154A1E0C();

  sub_21549EAEC();
  sub_215324954();
  v4 = sub_2154A2B7C();

  v5 = *(v4 + 16);
  if (!v5)
  {
  }

  v6 = 0;
  v7 = v4 + 40;
  v17 = v3;
  while (1)
  {

    v8 = sub_2154A1E0C();

    if (v8 >= 1)
    {
      v10 = v8 - v3;
      if (__OFSUB__(v8, v3))
      {
        goto LABEL_16;
      }

      v11 = *(v1 + v2);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v2) = v11;
      if ((result & 1) == 0)
      {
        result = sub_215317AC0(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
        *(v1 + v2) = result;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_215317AC0((v12 > 1), v13 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = v6;
      *(v14 + 40) = v10;
      *(v1 + v2) = v11;
      v3 = v17;
    }

    v15 = v8 + v3;
    if (__OFADD__(v8, v3))
    {
      break;
    }

    v16 = __OFADD__(v6, v15);
    v6 += v15;
    if (v16)
    {
      goto LABEL_15;
    }

    v7 += 16;
    if (!--v5)
    {
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_215476244(NSUInteger a1, NSUInteger a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges];
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 0;
    v9 = (v6 + 40);
    while (v8 < *(v6 + 16))
    {
      if (*v9 >= 1)
      {
        v28.location = a1;
        v28.length = a2;
        if (NSIntersectionRange(*(v9 - 8), v28).length > 0)
        {

          return v8;
        }
      }

      ++v8;
      v9 += 2;
      if (v7 == v8)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  if (qword_27CA59938 != -1)
  {
LABEL_15:
    swift_once();
  }

  v10 = sub_21549F11C();
  __swift_project_value_buffer(v10, qword_27CA5E8D0);
  v11 = v3;
  v12 = sub_21549F0FC();
  v13 = sub_2154A226C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    v16 = sub_2154A2AFC();
    v18 = sub_215348D98(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    type metadata accessor for _NSRange(0);
    v20 = v19;

    v22 = MEMORY[0x216068B10](v21, v20);
    v24 = v23;

    v25 = sub_215348D98(v22, v24, &v27);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_2151A1000, v12, v13, "Couldn't find paragraphIndex for wordRange:%s. paragraphRanges:%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606B520](v15, -1, -1);
    MEMORY[0x21606B520](v14, -1, -1);
  }

  return 0;
}

void sub_2154764A0()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model];
  swift_getKeyPath();
  v11[1] = v6;
  sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);

  LODWORD(v7) = (*(v3 + 88))(v5, v2);
  LODWORD(v6) = *MEMORY[0x277D359E8];
  (*(v3 + 8))(v5, v2);
  if (v7 != v6)
  {
    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TranscriptView();
      v10 = [swift_dynamicCastClassUnconditional() findInteraction];

      if (v10)
      {
        [v10 presentFindNavigatorShowingReplace_];
      }

      *(v1 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_queryEntered) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2154766F4(uint64_t a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
    sub_2154A0ECC();
  }

  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      *(v2 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_queryEntered) = 1;
    }
  }

  sub_21547B050();
}

void sub_2154767AC()
{
  v1 = v0;
  v2 = sub_21549EBCC();
  v85 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v81 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v78 - v5;
  v6 = sub_21549E28C();
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78 - v15;
  v17 = sub_21549E6AC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  if (v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging] == 1)
  {
    if (qword_27CA59938 != -1)
    {
      swift_once();
    }

    v24 = sub_21549F11C();
    __swift_project_value_buffer(v24, qword_27CA5E8D0);
    v85 = sub_21549F0FC();
    v25 = sub_2154A224C();
    if (os_log_type_enabled(v85, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2151A1000, v85, v25, "Not scrolling to active segment because we're currently dragging/scrolling.", v26, 2u);
      MEMORY[0x21606B520](v26, -1, -1);
    }

    v27 = v85;

    return;
  }

  v80 = v6;
  v28 = &v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter];
  if (*&v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 8])
  {
    v29 = v28[64];
    v30 = *(v28 + 7);
    v86[3] = *(v28 + 6);
    v86[4] = v30;
    v87 = v29 & 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B230);
    MEMORY[0x216067A50](v86, v31);
    if (LOBYTE(v86[0]) == 1)
    {
      if (qword_27CA59938 != -1)
      {
        swift_once();
      }

      v32 = sub_21549F11C();
      __swift_project_value_buffer(v32, qword_27CA5E8D0);
      v33 = sub_21549F0FC();
      v34 = sub_2154A224C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2151A1000, v33, v34, "Not scrolling to active segment because we're currently showing the find navigator.", v35, 2u);
        MEMORY[0x21606B520](v35, -1, -1);
      }

      return;
    }
  }

  v36 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  swift_beginAccess();
  sub_215324EEC(&v1[v36], v16, &unk_27CA5EA60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2151ADCD8(v16, &unk_27CA5EA60);
    goto LABEL_20;
  }

  (*(v18 + 32))(v23, v16, v17);
  sub_21549E69C();
  sub_21549E64C();
  v38 = v37;
  v39 = *(v18 + 8);
  v39(v20, v17);
  v40 = fabs(v38);
  if (v40 > 5.0)
  {
    v39(v23, v17);
LABEL_20:
    v41 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
    swift_beginAccess();
    sub_215324EEC(&v1[v41], v13, &qword_27CA5E7C8);
    v42 = v85;
    isa = v85[6].isa;
    if ((isa)(v13, 1, v2))
    {
      sub_2151ADCD8(v13, &qword_27CA5E7C8);
      v44 = 0;
    }

    else
    {
      v79 = sub_21549EB9C();
      v51 = v55;
      sub_2151ADCD8(v13, &qword_27CA5E7C8);
      if (v51)
      {
        v56 = *&v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousSpeaker + 8];
        if (v56)
        {
          if (v79 == *&v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousSpeaker] && v51 == v56)
          {
            v52 = 0;
          }

          else
          {
            v52 = sub_2154A2FAC() ^ 1;
          }
        }

        else
        {
          v52 = 1;
        }

        sub_21549EC0C();

        sub_215324EEC(&v1[v41], v10, &qword_27CA5E7C8);
        if ((isa)(v10, 1, v2))
        {
          sub_2151ADCD8(v10, &qword_27CA5E7C8);
          v63 = 1;
          v64 = v83;
        }

        else
        {
          v65 = v81;
          (v42[2].isa)(v81, v10, v2);
          sub_2151ADCD8(v10, &qword_27CA5E7C8);
          v64 = v83;
          sub_21549EB8C();
          (v42[1].isa)(v65, v2);
          v63 = 0;
        }

        v66 = sub_21549E70C();
        v53 = 1;
        (*(*(v66 - 8) + 56))(v64, v63, 1, v66);
        sub_21549EB0C();
        sub_21547BAAC(&qword_27CA5E878, MEMORY[0x277D35A78]);
        v67 = v84;
        sub_21549E1CC();
        v46 = v68;
        v48 = v69;
        v71 = v70;
        sub_2151ADCD8(v64, &unk_27CA5EA00);
        (*(v82 + 8))(v67, v80);

        v54 = &qword_27CA5E000;
        v44 = v79;
        if (v71)
        {
          goto LABEL_49;
        }

LABEL_41:
        v72 = &v1[v54[286]];
        if ((v72[16] & 1) != 0 || *v72 != v46 || *(v72 + 1) != v48)
        {
          v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_isAutoScrollingForSegmentChange] = 1;
          v73 = [v1 view];
          if (!v73)
          {
            __break(1u);
            return;
          }

          v74 = v73;
          type metadata accessor for TranscriptView();
          swift_dynamicCastClassUnconditional();
          sub_21546E9C0(v46, v48);

          if ((v52 & 1) != 0 && [v1 ic_isViewVisible])
          {
            v75 = *&v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectionFeedbackGenerator];
            [v75 prepare];
            [v75 impactOccurredWithIntensity_];
          }
        }

        v53 = 0;
LABEL_49:
        v76 = &v1[v54[286]];
        *v76 = v46;
        *(v76 + 1) = v48;
        v76[16] = v53;
        v77 = &v1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousSpeaker];
        *v77 = v44;
        v77[1] = v51;

        return;
      }

      v44 = v79;
    }

    sub_2154791B0();
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v51 = 0;
    v52 = 1;
    v53 = 1;
    v54 = &qword_27CA5E000;
    if (v50)
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (qword_27CA59938 != -1)
  {
    swift_once();
  }

  v57 = sub_21549F11C();
  __swift_project_value_buffer(v57, qword_27CA5E8D0);
  v58 = sub_21549F0FC();
  v59 = sub_2154A224C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = v39;
    v61 = swift_slowAlloc();
    *v61 = 134218240;
    *(v61 + 4) = v40;
    *(v61 + 12) = 2048;
    *(v61 + 14) = 0x4014000000000000;
    _os_log_impl(&dword_2151A1000, v58, v59, "Not scrolling to active segment because it's been %fs since a drag and it hasn't been %f yet.", v61, 0x16u);
    v62 = v61;
    v39 = v60;
    MEMORY[0x21606B520](v62, -1, -1);
  }

  v39(v23, v17);
}

uint64_t sub_2154772A0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA30);
  MEMORY[0x28223BE20](v61);
  v3 = v44 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E858);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v44 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA40);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = v44 - v8;
  v9 = sub_21549E23C();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E850);
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = v44 - v11;
  v12 = sub_21549E26C();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v44 - v15;
  v17 = sub_21549E20C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v44 - v22;
  v24 = sub_21549E28C();
  v55 = *(v24 - 8);
  v56 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21549EC0C();

  v59 = v23;
  sub_21549E1AC();
  v58 = v26;
  v27 = v54;
  sub_21549E1AC();
  v28 = sub_21549E1EC();
  v30 = *(v18 + 8);
  v29 = v18 + 8;
  v31 = v20;
  v32 = v30;
  v30(v31, v17);
  if (v27 < 0 || v28 <= v27)
  {
    v32(v59, v17);
  }

  else
  {
    v44[0] = v32;
    v44[1] = v29;
    v45 = v17;
    v33 = v46;
    sub_21549E1DC();
    sub_21549E1FC();
    v34 = *(v60 + 8);
    v60 += 8;
    v54 = v34;
    v34(v33, v12);
    v35 = v47;
    sub_21549E25C();
    sub_21549EB0C();
    sub_21547BAAC(&qword_27CA5E878, MEMORY[0x277D35A78]);
    v36 = v50;
    sub_21549E24C();
    (*(v48 + 8))(v35, v49);
    v37 = v52;
    sub_21549E21C();
    (*(v51 + 8))(v36, v37);
    while (1)
    {
      sub_21549E22C();
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EA50);
      if ((*(*(v38 - 8) + 48))(v6, 1, v38) == 1)
      {
        break;
      }

      v39 = *v6;
      sub_21533FB7C(v6 + *(v38 + 48), v3, &unk_27CA5EA30);
      sub_21547BAAC(&qword_27CA5EA58, MEMORY[0x277CC8C20]);
      if (sub_2154A1CDC() & 1) != 0 && (sub_2154A1CCC())
      {
        if (v39)
        {
          v40 = v57;
          sub_21549E97C();

          sub_2151ADCD8(v3, &unk_27CA5EA30);
          (*(v53 + 8))(v63, v62);
          v54(v16, v12);
          (v44[0])(v59, v45);
          (*(v55 + 8))(v58, v56);
          v41 = 0;
          goto LABEL_14;
        }
      }

      else
      {
      }

      sub_2151ADCD8(v3, &unk_27CA5EA30);
    }

    (*(v53 + 8))(v63, v62);
    v54(v16, v12);
    (v44[0])(v59, v45);
  }

  (*(v55 + 8))(v58, v56);
  v41 = 1;
  v40 = v57;
LABEL_14:
  v42 = sub_21549EBCC();
  return (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
}

void sub_215477AC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController) currentAttachment];
  v2 = *(*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);

  v13 = [v2 attachment];
  if (!v13)
  {
    __break(1u);
    return;
  }

  if (v1)
  {
    v3 = v0;
    sub_2151A6C9C(0, &qword_281199690);
    v4 = sub_2154A291C();

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = sub_21549E18C();
    if (v5)
    {
      v6 = v5;
      sub_2154A1D6C();
      sub_2154A2D3C();
      if (*(v6 + 16))
      {
        v7 = sub_2153B1010(v14);
        if (v8)
        {
          sub_21533FC88(*(v6 + 56) + 32 * v7, &v15);
          sub_21533FC34(v14);

          if (*(&v16 + 1))
          {
            if (swift_dynamicCast())
            {
              if (*(v3 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_playbackTime) != v14[0])
              {
                *(v3 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_playbackTime) = v14[0];
                sub_2154784C4();
              }

              return;
            }

            goto LABEL_17;
          }

LABEL_16:
          sub_2151ADCD8(&v15, &qword_27CA5ABC0);
LABEL_17:
          if (qword_27CA59938 != -1)
          {
            swift_once();
          }

          v9 = sub_21549F11C();
          __swift_project_value_buffer(v9, qword_27CA5E8D0);
          v10 = sub_21549F0FC();
          v11 = sub_2154A226C();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_2151A1000, v10, v11, "ICAudioPlaybackNotification did not have ICAudioPlaybackNotificationTimeKey. Can't scroll transcript.", v12, 2u);
            MEMORY[0x21606B520](v12, -1, -1);
          }

          return;
        }
      }

      sub_21533FC34(v14);
    }

    v15 = 0u;
    v16 = 0u;
    goto LABEL_16;
  }
}

void sub_215477E74()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v19 - v4;
  v6 = [*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController) currentAttachment];
  v7 = *(*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);

  v20 = [v7 attachment];
  if (v20)
  {

    if (v6)
    {
      sub_2151A6C9C(0, &qword_281199690);
      v8 = sub_2154A291C();

      if (v8)
      {
        if (qword_27CA59938 != -1)
        {
          swift_once();
        }

        v9 = sub_21549F11C();
        __swift_project_value_buffer(v9, qword_27CA5E8D0);
        v10 = sub_21549F0FC();
        v11 = sub_2154A224C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_2151A1000, v10, v11, "Transcript State Machine: Received audio did stop", v12, 2u);
          MEMORY[0x21606B520](v12, -1, -1);
        }

        v13 = v1 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter;
        if (*(v1 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 8))
        {
          v14 = *(v13 + 88);
          v15 = *(v13 + 80);
          v21 = *(v13 + 72);
          v22 = v15;
          v23 = v14 & 1;
          v24 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F8);
          sub_2154A0ECC();
        }

        v16 = sub_21549EBCC();
        (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
        v17 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
        swift_beginAccess();
        sub_21547BA3C(v5, v1 + v17);
        swift_endAccess();
        sub_215478250();
        sub_2151ADCD8(v5, &qword_27CA5E7C8);
      }
    }

    else
    {
      v18 = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_215478250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_21549E28C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for TranscriptView();
    swift_dynamicCastClassUnconditional();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;

      sub_21549EC0C();

      sub_21546EE90(v8);

      (*(v5 + 8))(v8, v4);
    }

    else
    {
    }

    v13 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
    swift_beginAccess();
    sub_215324EEC(v0 + v13, v3, &qword_27CA5E7C8);
    v14 = sub_21549EBCC();
    LODWORD(v13) = (*(*(v14 - 8) + 48))(v3, 1, v14);
    sub_2151ADCD8(v3, &qword_27CA5E7C8);
    if (v13 != 1)
    {
      sub_2154767AC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2154784C4()
{
  v1 = v0;
  v2 = sub_21549EBCC();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EA18);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v8 - 8);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;

  v16 = sub_21549EC8C();

  sub_21547890C(v16, v15, *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_playbackTime));

  v17 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
  swift_beginAccess();
  v18 = *(v5 + 56);
  sub_215324EEC(v1 + v17, v7, &qword_27CA5E7C8);
  v19 = v28;
  sub_215324EEC(v15, &v7[v18], &qword_27CA5E7C8);
  v20 = *(v19 + 48);
  if (v20(v7, 1, v2) == 1)
  {
    if (v20(&v7[v18], 1, v2) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_215324EEC(v7, v12, &qword_27CA5E7C8);
    if (v20(&v7[v18], 1, v2) != 1)
    {
      v22 = v26;
      (*(v19 + 32))(v26, &v7[v18], v2);
      sub_21547BAAC(&unk_27CA5EA20, MEMORY[0x277D35AD0]);
      v23 = sub_2154A1D1C();
      v24 = *(v19 + 8);
      v24(v22, v2);
      v24(v12, v2);
      sub_2151ADCD8(v7, &qword_27CA5E7C8);
      if (v23)
      {
        return sub_2151ADCD8(v15, &qword_27CA5E7C8);
      }

      goto LABEL_7;
    }

    (*(v19 + 8))(v12, v2);
  }

  sub_2151ADCD8(v7, &qword_27CA5EA18);
LABEL_7:
  v7 = v27;
  sub_215324EEC(v15, v27, &qword_27CA5E7C8);
  swift_beginAccess();
  sub_21547BA3C(v7, v1 + v17);
  swift_endAccess();
  sub_215478250();
LABEL_8:
  sub_2151ADCD8(v7, &qword_27CA5E7C8);
  return sub_2151ADCD8(v15, &qword_27CA5E7C8);
}

uint64_t sub_21547890C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_21549EBCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = *(a1 + 16);
  v18 = *(v10 + 56);
  result = v18(a2, 1, 1, v9, v14);
  if (v17)
  {
    v51 = v18;
    v52 = v10 + 56;
    v49 = v8;
    v50 = v12;
    v53 = a2;
    v54 = v17;
    v20 = v17 - 1;
    v55 = v10;
    v22 = v10 + 16;
    v21 = *(v10 + 16);
    v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v24 = *(v22 + 56);
    v25 = (v22 - 8);
    v48 = a1 + v23;
    v21(v16);
    if (v20)
    {
      v26 = 0;
      v27 = a1 + v24 + v23;
      v28 = 0.0;
      v29 = v55;
      while (1)
      {
        sub_21549EBBC();
        v31 = v30;
        if (v30 < 0.0)
        {
          break;
        }

        if (v28 <= a3 && v30 >= a3)
        {
          break;
        }

        ++v26;
        (*v25)(v16, v9);
        (v21)(v16, v27, v9);
        v27 += v24;
        v28 = v31;
        if (v20 == v26)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v31 = 0.0;
      v29 = v55;
LABEL_13:
      sub_21549EBBC();
      if (v31 + v33 <= a3)
      {
        if (qword_27CA59938 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      v31 = -1.0;
      v26 = v20;
    }

    result = TSUFloatsAlmostEqual(a3, v31);
    if (!result)
    {
      v38 = v53;
      sub_2151ADCD8(v53, &qword_27CA5E7C8);
      (*(v29 + 32))(v38, v16, v9);
      return (v51)(v38, 0, 1, v9);
    }

    v34 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      if (v34 >= v54)
      {
        return (*v25)(v16, v9);
      }

      if (v34 < 0)
      {
        __break(1u);
      }

      else
      {
        v35 = v48 + v24 * v34;
        v36 = v49;
        (v21)(v49, v35, v9);
        (*v25)(v16, v9);
        v37 = v53;
        sub_2151ADCD8(v53, &qword_27CA5E7C8);
        (v51)(v36, 0, 1, v9);
        return sub_21533FB7C(v36, v37, &qword_27CA5E7C8);
      }

      return result;
    }

    __break(1u);
LABEL_28:
    swift_once();
LABEL_22:
    v39 = sub_21549F11C();
    __swift_project_value_buffer(v39, qword_27CA5E8D0);
    v40 = v50;
    (v21)(v50, v16, v9);
    v41 = sub_21549F0FC();
    v42 = sub_2154A226C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = a3;
      *(v43 + 12) = 2048;
      sub_21549EBBC();
      v45 = v44;
      v46 = *v25;
      (*v25)(v40, v9);
      *(v43 + 14) = v31 + v45;
      _os_log_impl(&dword_2151A1000, v41, v42, "currentPlaybackTime %f is greater than the total time in the transcript %f. Cannot provide the active segment.", v43, 0x16u);
      MEMORY[0x21606B520](v43, -1, -1);

      return v46(v16, v9);
    }

    else
    {

      v47 = *v25;
      (*v25)(v40, v9);
      return v47(v16, v9);
    }
  }

  return result;
}

uint64_t sub_215478DE8()
{
  v1 = v0;
  v2 = sub_21549EBCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_21549E28C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21549EC0C();

  v16 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
  swift_beginAccess();
  sub_215324EEC(v1 + v16, v8, &qword_27CA5E7C8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_2151ADCD8(v8, &qword_27CA5E7C8);
    v17 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_2151ADCD8(v8, &qword_27CA5E7C8);
    sub_21549EB8C();
    (*(v3 + 8))(v5, v2);
    v17 = 0;
  }

  v18 = sub_21549E70C();
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);
  sub_21549E96C();
  sub_21547BAAC(&qword_27CA5EA10, MEMORY[0x277D35A08]);
  v19 = sub_21549E1CC();
  sub_2151ADCD8(v11, &unk_27CA5EA00);
  (*(v13 + 8))(v15, v12);
  return v19;
}

unint64_t sub_2154791B0()
{
  v1 = v0;
  v2 = sub_21549EBCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_21549E28C();
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21549EC0C();

  v15 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
  swift_beginAccess();
  sub_215324EEC(v1 + v15, v8, &qword_27CA5E7C8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_2151ADCD8(v8, &qword_27CA5E7C8);
    v16 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_2151ADCD8(v8, &qword_27CA5E7C8);
    sub_21549EB8C();
    (*(v3 + 8))(v5, v2);
    v16 = 0;
  }

  v17 = sub_21549E70C();
  (*(*(v17 - 8) + 56))(v11, v16, 1, v17);
  sub_21549EB0C();
  sub_21547BAAC(&qword_27CA5E878, MEMORY[0x277D35A78]);
  v18 = sub_21549E1CC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2151ADCD8(v11, &unk_27CA5EA00);
  if (v24)
  {
    (*(v37 + 8))(v14, v38);

    return 0;
  }

  result = sub_215476244(v20, v22);
  if (v26)
  {
    if (qword_27CA59938 != -1)
    {
      swift_once();
    }

    v27 = sub_21549F11C();
    __swift_project_value_buffer(v27, qword_27CA5E8D0);
    v28 = sub_21549F0FC();
    v29 = sub_2154A227C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v30 = 136315138;
      v31 = sub_2154A2AFC();
      v33 = sub_215348D98(v31, v32, &v39);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_2151A1000, v28, v29, "Couldn't detect paragraphIndex for wordRange: %s.", v30, 0xCu);
      v34 = v36;
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x21606B520](v34, -1, -1);
      MEMORY[0x21606B520](v30, -1, -1);
    }

    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(*(v1 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges) + 16))
  {
LABEL_14:
    (*(v37 + 8))(v14, v38);
    return v18;
  }

  __break(1u);
  return result;
}

void sub_215479700(void *a1)
{
  v2 = v1;
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer;
  [*&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer] invalidate];
  v10 = [objc_opt_self() scheduledTimerWithTimeInterval:v2 target:sel_inactivityTimerFired selector:0 userInfo:0 repeats:5.0];
  v11 = *&v2[v9];
  *&v2[v9] = v10;

  v12 = *&v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model];
  swift_getKeyPath();
  v28[1] = v12;
  sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

  sub_21549ED9C();

  v13 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v5 + 16))(v8, v12 + v13, v4);

  v14 = (*(v5 + 88))(v8, v4);
  (*(v5 + 8))(v8, v4);
  if ((v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling] & 1) != 0 || v14 == *MEMORY[0x277D359E8])
  {
    v2[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling] = 0;
    return;
  }

  v15 = [v2 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  type metadata accessor for TranscriptView();
  [a1 locationInView_];
  v18 = v17;
  v20 = v19;

  v21 = [v2 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [swift_dynamicCastClassUnconditional() ic:v18 rangeFromRect:{v20, 1.0, 1.0}];

  v24 = [v2 view];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC11NotesEditor14TranscriptView_summaryButton);
  v27 = v26;

  if (v26)
  {
    [v27 bounds];
    v29.x = v18;
    v29.y = v20;
    if (!CGRectContainsPoint(v30, v29))
    {
      sub_215479F3C(v23, v18, v20);
    }
  }

  else
  {
    sub_215479F3C(v23, v18, v20);
  }
}

void sub_215479B2C(char *a1)
{
  v2 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer;
  v3 = *&a1[OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer];
  v4 = a1;
  [v3 invalidate];
  v5 = [objc_opt_self() scheduledTimerWithTimeInterval:v4 target:sel_inactivityTimerFired selector:0 userInfo:0 repeats:5.0];
  v6 = *&a1[v2];
  *&a1[v2] = v5;
}

void sub_215479C8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 80);
  v18 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 64);
  v19 = v1;
  v20 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 96);
  v2 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 16);
  v17[0] = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter);
  v17[1] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 48);
  v17[2] = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter + 32);
  v17[3] = v3;
  if (*(&v17[0] + 1))
  {
    v14 = *(&v18 + 1);
    v15 = v19;
    v10 = BYTE8(v19) & 1;
    v16 = BYTE8(v19) & 1;
    v11 = *(&v18 + 1);

    v12 = v19;

    v4 = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F8);
    MEMORY[0x216067A50](&v13);
    if (v13 == 1 && [*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController) isPlaying])
    {
      v14 = v11;
      v15 = v12;
      v16 = v10;
      v13 = 0;
      sub_2154A0ECC();
    }

    v5 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling;
    if (*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) == 1)
    {
      if (qword_27CA59938 != -1)
      {
        swift_once();
      }

      v6 = sub_21549F11C();
      __swift_project_value_buffer(v6, qword_27CA5E8D0);
      v7 = sub_21549F0FC();
      v8 = sub_2154A226C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2151A1000, v7, v8, "currentlyScrolling was true when the inactivity timer fired. This means we didn't get a kick from the scroll view when we should have.", v9, 2u);
        MEMORY[0x21606B520](v9, -1, -1);
      }

      sub_2151ADCD8(v17, &qword_27CA5E8C8);

      *(v4 + v5) = 0;
    }

    else
    {
      sub_2151ADCD8(v17, &qword_27CA5E8C8);
    }
  }
}

void sub_215479F3C(void (*a1)(char *, uint64_t), double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_21549EBCC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = aBlock - v16;
  sub_2154772A0(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v17, v10, v11);
    if (qword_27CA59938 != -1)
    {
      swift_once();
    }

    v26 = sub_21549F11C();
    __swift_project_value_buffer(v26, qword_27CA5E8D0);
    (*(v12 + 16))(v14, v17, v11);
    v27 = sub_21549F0FC();
    v28 = sub_2154A225C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      sub_21549EBBC();
      v31 = v30;
      v32 = *(v12 + 8);
      v32(v14, v11);
      *(v29 + 4) = v31;
      _os_log_impl(&dword_2151A1000, v27, v28, "Seeking audiocontroller to timestamp (from tapping): %f", v29, 0xCu);
      MEMORY[0x21606B520](v29, -1, -1);
    }

    else
    {

      v32 = *(v12 + 8);
      v32(v14, v11);
    }

    v33 = *(v3 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController);
    sub_21549EBBC();
    [v33 seekToTime:0 completion:?];
    if ([v33 isPlaying])
    {
      goto LABEL_17;
    }

    v34 = [v33 currentAttachment];
    v35 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model;
    v36 = *(*(v3 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);

    v37 = [v36 attachment];
    if (v37)
    {
      v38 = v37;

      if (v34)
      {
        sub_2151A6C9C(0, &qword_281199690);
        v39 = sub_2154A291C();

        if (v39)
        {
          [v33 play];
LABEL_17:
          v32(v17, v11);
          return;
        }
      }

      else
      {
      }

      v40 = *(v4 + v35);

      sub_21549EBBC();
      v42 = v41;
      v43 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController;
      v44 = *(v40 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
      v45 = [*(v40 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (v45)
      {
        v46 = v45;
        [v44 play_];

        v47 = *(v40 + v43);
        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2153DF054;
        aBlock[3] = &block_descriptor_36;
        v48 = _Block_copy(aBlock);
        [v47 seekToTime:v48 completion:v42];
        _Block_release(v48);
        v32(v17, v11);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_2151ADCD8(v10, &qword_27CA5E7C8);
  if (qword_27CA59938 != -1)
  {
    swift_once();
  }

  v18 = sub_21549F11C();
  __swift_project_value_buffer(v18, qword_27CA5E8D0);
  v19 = sub_21549F0FC();
  v20 = sub_2154A224C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315650;
    v23 = sub_2154A2AFC();
    v25 = sub_215348D98(v23, v24, aBlock);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = a2;
    *(v21 + 22) = 2048;
    *(v21 + 24) = a3;
    _os_log_impl(&dword_2151A1000, v19, v20, "Could not determine segment index for range: %s tap location: [%f,%f]. Perhaps it's not in bounds?", v21, 0x20u);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x21606B520](v22, -1, -1);
    MEMORY[0x21606B520](v21, -1, -1);
  }
}

void sub_21547A56C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model;
  v3 = *(*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel);
  swift_getKeyPath();
  sub_21547BAAC(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);

  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  swift_beginAccess();
  LOBYTE(v4) = *(v3 + v4);

  if (v4 & 1) != 0 || (v5 = *(v1 + v2), swift_getKeyPath(), sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel), , sub_21549ED9C(), , v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed, swift_beginAccess(), LOBYTE(v6) = *(v5 + v6), , (v6) || (v7 = *(v1 + v2), swift_getKeyPath(), , sub_21549ED9C(), , v8 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionTargets, swift_beginAccess(), v9 = *(v7 + v8), , , v10 = *(v9 + 16), , v10) && (v11 = *(v1 + v2), swift_getKeyPath(), , sub_21549ED9C(), , v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionActionTypes, swift_beginAccess(), v13 = *(v11 + v12), , , v14 = *(v13 + 16), , v14))
  {
    v15 = *(v1 + v2);
    swift_getKeyPath();
    sub_21547BAAC(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

    sub_21549ED9C();

    v16 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionTargets;
    swift_beginAccess();
    v17 = *(v15 + v16);

    v18 = *(*(v1 + v2) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel);
    swift_getKeyPath();

    sub_21549ED9C();

    v19 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionTargets;
    swift_beginAccess();
    v20 = *(v18 + v19);

    sub_21547EDC8(v20);
    v48 = v17;
    v21 = *(v1 + v2);
    swift_getKeyPath();

    sub_21549ED9C();

    v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptInteractionActionTypes;
    swift_beginAccess();
    v23 = *(v21 + v22);

    v24 = *(*(v1 + v2) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel);
    swift_getKeyPath();

    sub_21549ED9C();

    v25 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryInteractionActionTypes;
    swift_beginAccess();
    v26 = *(v24 + v25);

    sub_21547EDC8(v26);
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154C1890;
    *(inited + 32) = sub_2154A1D6C();
    *(inited + 40) = v29;
    v30 = *(*(v1 + v2) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);

    v31 = [v30 attachment];
    if (v31)
    {
      v32 = v31;

      v33 = [v32 objectID];

      *(inited + 72) = sub_2151A6C9C(0, &qword_2811995F0);
      *(inited + 48) = v33;
      *(inited + 80) = sub_2154A1D6C();
      *(inited + 88) = v34;
      v35 = *(*(v1 + v2) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_summaryViewModel);
      swift_getKeyPath();

      sub_21549ED9C();

      v36 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
      swift_beginAccess();
      LOBYTE(v36) = *(v35 + v36);

      v37 = MEMORY[0x277D839B0];
      *(inited + 120) = MEMORY[0x277D839B0];
      *(inited + 96) = v36;
      *(inited + 128) = sub_2154A1D6C();
      *(inited + 136) = v38;
      v39 = *(v1 + v2);
      swift_getKeyPath();

      sub_21549ED9C();

      v40 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
      swift_beginAccess();
      LOBYTE(v40) = *(v39 + v40);

      *(inited + 168) = v37;
      *(inited + 144) = v40;
      *(inited + 176) = sub_2154A1D6C();
      *(inited + 184) = v41;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
      *(inited + 216) = v42;
      *(inited + 192) = v48;
      *(inited + 224) = sub_2154A1D6C();
      *(inited + 232) = v43;
      *(inited + 264) = v42;
      *(inited + 240) = v27;
      v44 = sub_215327A78(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A490);
      swift_arrayDestroy();
      v45 = [objc_opt_self() defaultCenter];
      v46 = *MEMORY[0x277D36548];
      sub_21547AD88(v44);

      v47 = sub_2154A1C7C();

      [v45 postNotificationName:v46 object:0 userInfo:v47];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_21547AD88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9D8);
    v2 = sub_2154A2F3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21533FC88(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_21531E8D0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_21531E8D0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_21531E8D0(v31, v32);
    result = sub_2154A2D1C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_21531E8D0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_21547B050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB40;
  *(inited + 32) = sub_2154A1D6C();
  *(inited + 40) = v2;
  v3 = *(*(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);

  v4 = [v3 attachment];
  if (v4)
  {
    v5 = v4;

    v6 = [v5 objectID];

    *(inited + 72) = sub_2151A6C9C(0, &qword_2811995F0);
    *(inited + 48) = v6;
    *(inited + 80) = sub_2154A1D6C();
    *(inited + 88) = v7;
    v8 = *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_queryEntered);
    *(inited + 120) = MEMORY[0x277D839B0];
    *(inited + 96) = v8;
    v9 = sub_215327A78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A490);
    swift_arrayDestroy();
    v10 = [objc_opt_self() defaultCenter];
    v11 = *MEMORY[0x277D36578];
    sub_21547AD88(v9);

    v12 = sub_2154A1C7C();

    [v10 postNotificationName:v11 object:0 userInfo:v12];
  }

  else
  {
    __break(1u);
  }
}

void sub_21547B28C()
{
  sub_21547B408(319, &qword_27CA5E998, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_21547B408(319, &unk_27CA5E9A0, MEMORY[0x277D35AD0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21547B408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2154A2B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_21547B6C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21547B710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21547B77C()
{
  v1 = v0[6];
  v14 = v0[5];
  v15 = v1;
  v2 = v0[4];
  v12 = v0[3];
  v13 = v2;
  v3 = v0[1];
  v10[0] = *v0;
  v10[1] = v3;
  v11 = v0[2];
  v4 = v1;
  v9[0] = v10[0];
  v9[1] = v3;
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = v2;
  v9[5] = v14;
  v9[6] = v1;
  v5 = objc_allocWithZone(type metadata accessor for TranscriptViewController());

  sub_21547B9B0(v10, &v8);
  v6 = sub_215474008(v4, v9);
  sub_21549EE7C();
  return v6;
}

uint64_t sub_21547B828(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_model) = *(v1 + 96);
}

uint64_t sub_21547B8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21547B9E8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21547B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21547B9E8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21547B984()
{
  sub_21547B9E8();
  sub_2154A064C();
  __break(1u);
}

unint64_t sub_21547B9E8()
{
  result = qword_27CA5E9C8;
  if (!qword_27CA5E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E9C8);
  }

  return result;
}

uint64_t sub_21547BA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21547BAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21547BBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21547BC4C()
{
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_paragraphRanges) = MEMORY[0x277D84F90];
  v1 = v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousParagraphRange;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousSpeaker);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_queryEntered) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController____lazy_storage___scrollViewResizer) = 0;
  v3 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectionFeedbackGenerator;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755F0]) init];
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_selectActiveSegmentGR) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_longPressRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_hapticImpactIntensityForSelectionChange) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_interactionTimer) = 0;
  v4 = [objc_opt_self() sharedAudioController];
  if (!v4)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_audioController) = v4;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_playbackTime) = 0;
  v5 = (v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_representableAdapter);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_isAutoScrollingForSegmentChange) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyDragging) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_currentlyScrolling) = 0;
  v6 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_lastScrolledDate;
  v7 = sub_21549E6AC();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_previousContentOffset;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = OBJC_IVAR____TtC11NotesEditor24TranscriptViewController_activeSegment;
  v10 = sub_21549EBCC();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_21547BE8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void OutlineDisclosureButton.isCollapsed.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = [v1 imageView];
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v7;
      aBlock[4] = sub_2153DFF9C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_37;
      v10 = _Block_copy(aBlock);
      v11 = v1;
      v12 = v7;

      [v8 animateWithDuration:v10 animations:0.0];
      _Block_release(v10);
    }
  }
}

uint64_t OutlineDisclosureButton.isCollapsed.getter()
{
  v1 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21547C108(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  swift_beginAccess();
  if (*(a1 + v6) == 1)
  {
    v7 = 90;
    if (v5 != 1)
    {
      v7 = -90;
    }

    v8 = v7;
    [a2 transform];
    CGAffineTransformRotate(&v13, &v14, v8 * 3.14159265 / 180.0);
    v10 = *&v13.a;
    v9 = *&v13.c;
    v11 = *&v13.tx;
  }

  else
  {
    v9 = xmmword_2154BC090;
    v10 = xmmword_2154BC080;
    v11 = 0uLL;
  }

  *&v14.a = v10;
  *&v14.c = v9;
  *&v14.tx = v11;
  return [a2 setTransform_];
}

void (*OutlineDisclosureButton.isCollapsed.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v1 + v5);
  return sub_21547C2B8;
}

void sub_21547C2B8(id **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[9];
  v3 = (*a1)[10];
  v5 = *(*a1 + 88);
  v6 = v3[v4];
  v3[v4] = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      v7 = [v2[9] imageView];
      if (v7)
      {
        v8 = v7;
        v9 = &block_descriptor_10_0;
LABEL_8:
        v11 = v2[9];
        v12 = objc_opt_self();
        v13 = swift_allocObject();
        *(v13 + 16) = v11;
        *(v13 + 24) = v8;
        v2[4] = sub_21547D48C;
        v2[5] = v13;
        *v2 = MEMORY[0x277D85DD0];
        v2[1] = 1107296256;
        v2[2] = sub_2151BD7E4;
        v2[3] = v9;
        v14 = _Block_copy(v2);
        v15 = v11;
        v16 = v8;

        [v12 animateWithDuration:v14 animations:0.0];
        _Block_release(v14);
      }
    }
  }

  else if ((v5 ^ v6))
  {
    v10 = [v2[9] imageView];
    if (v10)
    {
      v8 = v10;
      v9 = &block_descriptor_17_0;
      goto LABEL_8;
    }
  }

  free(v2);
}

void OutlineDisclosureButton.textParagraph.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*OutlineDisclosureButton.textParagraph.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_textParagraph;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_215378298;
}

uint64_t OutlineDisclosureButton.writingDirection.getter()
{
  v1 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21547C678(void *a1, uint64_t (*a2)(void))
{
  if ([a1 sender])
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v13 = v18;
  v14 = v19;
  if (*(&v19 + 1))
  {
    type metadata accessor for OutlineDisclosureButton();
    if (swift_dynamicCast())
    {
      v3 = v17;
      v4 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
      swift_beginAccess();
      *(v17 + v4) = (*(v17 + v4) & 1) == 0;
      v5 = [v3 imageView];
      if (v5)
      {
        v6 = v5;
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        *(v8 + 16) = v3;
        *(v8 + 24) = v6;
        v15 = sub_21547D48C;
        v16 = v8;
        *&v13 = MEMORY[0x277D85DD0];
        *(&v13 + 1) = 1107296256;
        *&v14 = sub_2151BD7E4;
        *(&v14 + 1) = &block_descriptor_28_1;
        v9 = _Block_copy(&v13);
        v10 = v3;
        v11 = v6;

        [v7 animateWithDuration:v9 animations:0.0];
        _Block_release(v9);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_21532C870(&v13);
  }

  return a2();
}

uint64_t sub_21547C908()
{
  v0 = sub_21549E15C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = [Strong attributedString];

  v7 = [v6 string];
  v8 = sub_2154A1D6C();
  v10 = v9;

  v13[1] = v8;
  v13[2] = v10;
  sub_21549E11C();
  sub_215324954();
  v11 = sub_2154A2B8C();
  (*(v1 + 8))(v3, v0);

  return v11;
}

uint64_t _s11NotesEditor23OutlineDisclosureButtonC18accessibilityLabelSSSgvg_0()
{
  v0 = sub_21549E15C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = [Strong attributedString];

  v7 = [v6 string];
  v8 = sub_2154A1D6C();
  v10 = v9;

  v21[0] = v8;
  v21[1] = v10;
  sub_21549E11C();
  sub_215324954();
  v11 = MEMORY[0x277D837D0];
  v12 = sub_2154A2B8C();
  v14 = v13;
  (*(v1 + 8))(v3, v0);

  swift_beginAccess();
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_2154A1D2C();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  sub_2154A1D6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2154BDB50;
  *(v18 + 56) = v11;
  *(v18 + 64) = sub_215333D20();
  *(v18 + 32) = v12;
  *(v18 + 40) = v14;
  v19 = sub_2154A1D3C();

  return v19;
}

uint64_t _s11NotesEditor23OutlineDisclosureButtonC28accessibilityUserInputLabelsSaySSGSgvg_0()
{
  swift_beginAccess();
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = sub_2154A1D6C();
  v5 = v4;

  v31 = _s11NotesEditor23OutlineDisclosureButtonC18accessibilityLabelSSSgvg_0();
  v32 = v6;
  result = sub_21547C908();
  v8 = 0;
  v33 = result;
  v34 = v9;
  v35 = v3;
  v36 = v5;
  v10 = MEMORY[0x277D84F90];
LABEL_2:
  if (v8 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 + 1;
  v13 = 16 * v8 + 40;
  while (v8 != 3)
  {
    if (v12 == ++v8)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v14 = v13 + 16;
    v15 = *&v30[v13];
    v13 += 16;
    if (v15)
    {
      v16 = *&v30[v14 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_215317E44(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_215317E44((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0);
  result = swift_arrayDestroy();
  v20 = 0;
  v21 = *(v10 + 16);
  v22 = MEMORY[0x277D84F90];
LABEL_15:
  v23 = (v10 + 40 + 16 * v20);
  while (v21 != v20)
  {
    if (v20 >= *(v10 + 16))
    {
      goto LABEL_28;
    }

    ++v20;
    v25 = *(v23 - 1);
    v24 = *v23;
    v23 += 2;
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21531B5AC(0, *(v22 + 16) + 1, 1);
      }

      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_21531B5AC((v27 > 1), v28 + 1, 1);
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v24;
      goto LABEL_15;
    }
  }

  return v22;
}

uint64_t (*OutlineDisclosureButton.accessibilityLabel.modify(uint64_t *a1))()
{
  *a1 = _s11NotesEditor23OutlineDisclosureButtonC18accessibilityLabelSSSgvg_0();
  a1[1] = v2;
  return sub_2153D8E80;
}

unint64_t OutlineDisclosureButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_accessibilityTraits);
  if ((*MEMORY[0x277D76598] & v1) != 0)
  {
    v2 = ~*MEMORY[0x277D76598];
  }

  else
  {
    v2 = -1;
  }

  return v2 & v1;
}

id OutlineDisclosureButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_setAccessibilityTraits_, a1);
}

void (*OutlineDisclosureButton.accessibilityTraits.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v6 = [(objc_super *)v4 accessibilityTraits];
  if ((*MEMORY[0x277D76598] & v6) != 0)
  {
    v7 = ~*MEMORY[0x277D76598];
  }

  else
  {
    v7 = -1;
  }

  v4[3].receiver = (v7 & v6);
  return sub_21547D3C8;
}

void sub_21547D3C8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 6);
  v5 = 32;
  if (a2)
  {
    v5 = 16;
  }

  v6 = 40;
  if (a2)
  {
    v6 = 24;
  }

  *&v2[v5] = *(*a1 + 7);
  *&v2[v6] = v3;
  objc_msgSendSuper2(&v2[v5], sel_setAccessibilityTraits_, v4);

  free(v2);
}

id OutlineDisclosureButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LinkEditorControllerHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkEditorControllerHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkEditorControllerHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LinkEditorControllerHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkEditorControllerHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_21547D760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v43 = a1;
  v44 = a3;
  v48 = a10;
  v45 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for TextSelection();
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_215365FAC(a5, v16);
  v24 = v18[7];
  v25 = sub_21549E56C();
  (*(*(v25 - 8) + 56))(&v23[v24], 1, 1, v25);
  v27 = v18[8];
  v26 = v18[9];
  *v23 = v44;
  *(v23 + 1) = a4;

  sub_2153F1E24(v16, &v23[v24]);
  *&v23[v27] = a6;
  v29 = v46;
  v28 = v47;
  *&v23[v26] = v46;
  v30 = &v23[v18[10]];
  v31 = v45;
  *v30 = v28;
  *(v30 + 1) = v31;
  sub_21547DA4C(v23, v20);
  v32 = objc_allocWithZone(type metadata accessor for LinkEditorController());
  v33 = a6;
  v34 = v29;
  swift_unknownObjectRetain();
  v35 = LinkEditorController.init(textSelection:addApproach:delegate:)(v20, v48, a2);
  v36 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *&v35[v36] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v37 = *&v35[OBJC_IVAR___LinkEditorController_viewController];
  if (v37)
  {
    v38 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v39 = v37;
    v40 = [v38 initWithRootViewController_];
    [v40 setModalPresentationStyle_];
    [v40 setPreferredContentSize_];
    [v43 presentViewController:v40 animated:1 completion:0];
  }

  sub_21547DAB0(v23);
  return v35;
}

uint64_t sub_21547DA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSelection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21547DAB0(uint64_t a1)
{
  v2 = type metadata accessor for TextSelection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TextSelection.init(text:url:attachment:stringSelection:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v14 = type metadata accessor for TextSelection();
  v15 = v14[5];
  v16 = sub_21549E56C();
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[6];
  v18 = v14[7];
  *a8 = a1;
  *(a8 + 1) = a2;
  result = sub_2153F1E24(a3, &a8[v15]);
  *&a8[v17] = a4;
  *&a8[v18] = a5;
  v20 = &a8[v14[8]];
  *v20 = a6;
  *(v20 + 1) = a7;
  return result;
}

uint64_t type metadata accessor for TextSelection()
{
  result = qword_27CA5EA98;
  if (!qword_27CA5EA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21547DC5C()
{
  sub_21547DD58();
  if (v0 <= 0x3F)
  {
    sub_2151A5528();
    if (v1 <= 0x3F)
    {
      sub_21547DDA8(319, &qword_27CA5EAB0, &qword_2811995A8);
      if (v2 <= 0x3F)
      {
        sub_21547DDA8(319, &qword_27CA5EAB8, &qword_27CA5EAC0);
        if (v3 <= 0x3F)
        {
          type metadata accessor for _NSRange(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21547DD58()
{
  if (!qword_27CA5EAA8)
  {
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5EAA8);
    }
  }
}

void sub_21547DDA8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2151A6C9C(255, a3);
    v4 = sub_2154A2B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21547DE00(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2154A2C8C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x277D84F90];
    sub_21531B66C(0, v2 & ~(v2 >> 63), 0);
    v35 = v40;
    if (v33)
    {
      v3 = sub_2154A2C2C();
    }

    else
    {
      v3 = sub_2154A2BFC();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        sub_2153B3DF8(v37, v38, v39, v1);
        v12 = v11;
        v13 = [v11 range];
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21531B66C((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2154A2C4C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EB58);
          v6 = sub_2154A20EC();
          sub_2154A2D0C();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_215384B50(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_215384B50(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_215384B50(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

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

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_21547E180(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_2154A2C8C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_2154A2C8C();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_21532B814();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_215365064(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_2151A66EC();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_2154A2CDC())
    {
      goto LABEL_11;
    }

    sub_2151A6C9C(0, &unk_281199640);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_2154A1F8C();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_2154A2CDC())
      {
        sub_2151A6C9C(0, &unk_281199640);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_21547E508(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_215317E1C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_21549E93C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21547E634(uint64_t a1, uint64_t a2, char *a3, unint64_t a4)
{
  v67 = a2;
  v8 = sub_21549E93C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v65 = &v51 - v17;
  MEMORY[0x28223BE20](v16);
  v18 = &v51;
  v20 = &v51 - v19;
  v21 = (a4 >> 1);
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v66 = v11;
  v68 = v9;
  v69 = a1;
  v11 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v11[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v11 = sub_215317E1C(isUniquelyReferenced_nonNull_native, v27, 1, v11);
    v18 = (v11[3] >> 1);
  }

  v28 = &v18[-v11[2]];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v11;
      return result;
    }

LABEL_23:
    v64 = v18;
    v23 = v11[2];
    v25 = v68;
    v53 = *(v68 + 56);
    v54 = v68 + 56;
    v53(v20, 1, 1, v8);
    v32 = v65;
    sub_215324EEC(v20, v65, &qword_27CA5B1A8);
    v61 = *(v25 + 48);
    v62 = v25 + 48;
    if (v61(v32, 1, v8) == 1)
    {
      v33 = v65;
LABEL_25:
      sub_2151ADCD8(v20, &qword_27CA5B1A8);
      swift_unknownObjectRelease();
      result = sub_2151ADCD8(v33, &qword_27CA5B1A8);
      goto LABEL_19;
    }

LABEL_27:
    v57 = (v25 + 32);
    v51 = (v25 + 8);
    v52 = (v25 + 16);
    v34 = v23;
    v33 = v65;
    v59 = v20;
    v60 = v15;
    do
    {
      sub_2151ADCD8(v33, &qword_27CA5B1A8);
      v36 = v11[3];
      v37 = v36 >> 1;
      v38 = v34;
      if ((v36 >> 1) < v34 + 1)
      {
        v11 = sub_215317E1C(v36 > 1, v34 + 1, 1, v11);
        v37 = v11[3] >> 1;
      }

      v39 = *(v68 + 80);
      sub_215324EEC(v20, v15, &qword_27CA5B1A8);
      if (v61(v15, 1, v8) == 1)
      {
        v34 = v38;
        v40 = v60;
LABEL_34:
        sub_2151ADCD8(v40, &qword_27CA5B1A8);
        v35 = v34;
        v33 = v65;
        v15 = v40;
      }

      else
      {
        v56 = v11 + ((v39 + 32) & ~v39);
        v41 = *v57;
        v34 = v38;
        if (v38 <= v37)
        {
          v42 = v37;
        }

        else
        {
          v42 = v38;
        }

        v58 = v42;
        v40 = v60;
        v55 = v41;
        while (1)
        {
          v46 = v66;
          v41(v66, v40, v8);
          if (v58 == v34)
          {
            break;
          }

          v47 = v59;
          sub_2151ADCD8(v59, &qword_27CA5B1A8);
          v48 = v34;
          v49 = *(v68 + 72);
          v63 = v48;
          result = (v41)(&v56[v49 * v48], v46, v8);
          if (v64 == v21)
          {
            v43 = 1;
            v64 = v21;
            v44 = v60;
          }

          else
          {
            v44 = v60;
            if (v64 < a3 || v64 >= v21)
            {
              goto LABEL_47;
            }

            v50 = v64;
            (*v52)(v47, v67 + v49 * v64, v8);
            v43 = 0;
            v64 = v50 + 1;
          }

          v53(v47, v43, 1, v8);
          sub_215324EEC(v47, v44, &qword_27CA5B1A8);
          v45 = v61(v44, 1, v8);
          v34 = v63 + 1;
          v40 = v44;
          v41 = v55;
          if (v45 == 1)
          {
            goto LABEL_34;
          }
        }

        (*v51)(v46, v8);
        v35 = v58;
        v34 = v58;
        v33 = v65;
        v15 = v60;
      }

      v20 = v59;
      v11[2] = v35;
      sub_215324EEC(v20, v33, &qword_27CA5B1A8);
    }

    while (v61(v33, 1, v8) != 1);
    goto LABEL_25;
  }

  v30 = v11[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v11[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_21547EC84(uint64_t result)
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

  result = sub_2153181A8(result, v11, 1, v3);
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

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

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

uint64_t sub_21547EDC8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_215317E44(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21547EEBC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_215319048(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21547EFB4(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_2154A2C8C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_2154A2C8C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *AuthorHighlightsUpdater.textLayoutManager.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_textLayoutManager);
  v2 = v1;
  return v1;
}

id AuthorHighlightsUpdater.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
  v4 = [*&v0[OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController] note];
  v5 = [v4 textStorage];

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v26[0] = 0;
    v26[1] = MEMORY[0x277D84F90];
    v26[2] = 0x3FF0000000000000;
    v26[3] = MEMORY[0x277D84F90];
    v26[4] = MEMORY[0x277D84F90];
    v26[5] = MEMORY[0x277D84F90];
    v26[6] = MEMORY[0x277D84F90];
    sub_215488480(v5, v26);
    sub_215488710(v26);
  }

  v7 = [*&v1[v3] note];
  v8 = [v7 visibleAttachmentTextStoragesForTextLayoutManager_];

  type metadata accessor for _NSRange(0);
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A840);
  sub_21532C5B8();
  v11 = sub_2154A1C8C();

  v25[0] = v6;
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  if (v14)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      do
      {
LABEL_11:
        v14 &= v14 - 1;

        v10 = v25;
        sub_21547E180(v18);
      }

      while (v14);
      continue;
    }
  }

  v10 = v25[0];
  if (!(v25[0] >> 62))
  {
    v20 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_23:

    v24.receiver = v1;
    v24.super_class = ObjectType;
    return objc_msgSendSuper2(&v24, sel_dealloc);
  }

LABEL_22:
  result = sub_2154A2C8C();
  v20 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x216069960](v21, v10);
      }

      else
      {
        v22 = *(v10 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v25[0] = 0;
      v25[1] = v6;
      v25[2] = 0x3FF0000000000000;
      v25[3] = v6;
      v25[4] = v6;
      v25[5] = v6;
      v25[6] = v6;
      sub_215488480(v22, v25);
      sub_215488710(v25);
    }

    while (v20 != v21);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

double AuthorHighlightsUpdater.highlightedValue.getter()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AuthorHighlightsUpdater.highlightedValue.setter(double a1)
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AuthorHighlightsUpdater.focusedRange.getter()
{
  v1 = v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  return *v1;
}

uint64_t AuthorHighlightsUpdater.focusedRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

void *AuthorHighlightsUpdater.filter.getter()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AuthorHighlightsUpdater.filter.setter(void *a1)
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = sub_21547F9F8();
  v7 = *(v1 + v3);
  [v6 setFilter_];
}

void sub_21547F968(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v7 = sub_21547F9F8();
  v8 = *(v3 + v4);
  [v7 setFilter_];
}

id sub_21547F9F8()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper;
  v2 = *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note];
    v5 = [objc_allocWithZone(MEMORY[0x277D35FB8]) initWithNote_];

    [v5 setJoinsWhitespaceAndNewlineGaps_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*AuthorHighlightsUpdater.filter.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21547FB40;
}

void sub_21547FB40(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_21547F9F8();
    v7 = *(v4 + v5);
    [v6 setFilter_];
  }

  free(v3);
}

uint64_t AuthorHighlightsUpdater.collaboratorStatuses.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_collaboratorStatuses;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AuthorHighlightsUpdater.showsCollaboratorStatuses.getter()
{
  v1 = [*(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note];
  v2 = [v1 isSharedViaICloud];

  if (v2 && (v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue, swift_beginAccess(), *(v0 + v3) == 0.0))
  {
    return *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference);
  }

  else
  {
    return 0;
  }
}

void *AuthorHighlightsUpdater.searchHighlightRegexFinder.getter()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AuthorHighlightsUpdater.searchHighlightRegexFinder.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_21547FEE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_215487BE4(v5, v7) & 1;
}

uint64_t sub_21547FF44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  v7 = &selRef_generateFindPreviewImageForPaperKitAttachment_completion_;
  v54 = a2;
  if (*(v6 + 16) == 1)
  {
    v8 = [a1 ic_range];
    v10 = v9;
  }

  else
  {
    v8 = *v6;
    v10 = *(v6 + 8);
  }

  v11 = [a1 editsInRange_];
  if (!v11)
  {
    sub_2151A6C9C(0, &qword_27CA5EB48);
    sub_2154A1F4C();
    v11 = sub_2154A1F3C();
  }

  v12 = sub_21547F9F8();
  v13 = [v12 groupedEditsForEdits:v11 inAttributedString:a1];

  sub_2151A6C9C(0, &qword_2811995F8);
  v14 = sub_2154A1F4C();

  if (v14 >> 62)
  {
    v15 = sub_2154A2C8C();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v55 = v3;
  if (v15)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    result = sub_21531B66C(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v50 = v6;
    v18 = 0;
    v19 = aBlock[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x216069960](v18, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v18 + 32);
      }

      v21 = v20;
      v22 = [v20 range];
      v24 = v23;

      aBlock[0] = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21531B66C((v25 > 1), v26 + 1, 1);
        v19 = aBlock[0];
      }

      ++v18;
      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
    }

    while (v15 != v18);

    v6 = v50;
    v3 = v55;
    v7 = &selRef_generateFindPreviewImageForPaperKitAttachment_completion_;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v53 = *(v6 + 16);
  [a1 v7[362]];
  v51 = sub_2154A2B1C();
  v28 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v29 = 1.0;
  if (!*(v3 + v28))
  {
    v30 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
    swift_beginAccess();
    if (*(v3 + v30) <= 1.0)
    {
      v29 = *(v3 + v30);
    }

    else
    {
      v29 = 1.0;
    }
  }

  v57 = v16;
  v31 = [a1 highlightsAttributedString];
  v32 = *MEMORY[0x277D35FF8];
  v33 = [a1 v7[362]];
  v35 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = &v57;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_215489DAC;
  *(v37 + 24) = v36;
  aBlock[4] = sub_21532B77C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21532C43C;
  aBlock[3] = &block_descriptor_43_0;
  v38 = _Block_copy(aBlock);

  [v31 enumerateAttribute:v32 inRange:v33 options:v35 usingBlock:{0, v38}];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
    goto LABEL_34;
  }

  v39 = v57;

  v40 = sub_215480518();
  v41 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  result = swift_beginAccess();
  v42 = *(v55 + v41);
  if (v42)
  {
    v43 = v42;
    v44 = [a1 string];
    if (!v44)
    {
      sub_2154A1D6C();
      v44 = sub_2154A1D2C();
    }

    v45 = [v43 matchesInDocumentWithPerTokenFallback_];

    sub_2151A6C9C(0, &qword_281199580);
    sub_21533FBE4(&qword_281199578, &qword_281199580);
    v46 = sub_2154A20CC();

    sub_21547DE00(v46);
    v48 = v47;
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  v49 = -1.0;
  if (v53)
  {
    v49 = 0.0;
  }

  *v54 = v49;
  *(v54 + 8) = v52;
  *(v54 + 16) = v29;
  *(v54 + 24) = v19;
  *(v54 + 32) = v39;
  *(v54 + 40) = v40;
  *(v54 + 48) = v48;
  return result;
}

void *sub_215480518()
{
  v1 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v34 = type metadata accessor for CollaboratorStatus(0);
  v8 = *(v34 - 1);
  *&v9 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note];
  v13 = [v12 isSharedViaICloud];

  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  if (*(v0 + v14) != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  if (*(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = OBJC_IVAR___ICAuthorHighlightsUpdater_collaboratorStatuses;
  swift_beginAccess();
  v16 = *(v0 + v15);
  v17 = *(v16 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = v34[7];
  v19 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v35 = *(v8 + 72);
  v36 = v18;
  v31 = v16;

  v20 = MEMORY[0x277D84F90];
  do
  {
    sub_215489C80(v19, v11, type metadata accessor for CollaboratorStatus);
    v21 = sub_2154A22CC();
    if (*(v21 + 16))
    {
      v22 = sub_21549E70C();
      (*(*(v22 - 8) + 16))(v4, v11, v22);
      v23 = v7;
      v24 = *&v11[v34[6]];
      v25 = *&v11[v34[5]];
      v26 = v24;
      sub_215489CE8(v11, type metadata accessor for CollaboratorStatus);
      v27 = v32;
      *&v4[*(v32 + 20)] = v25;
      *&v4[*(v27 + 24)] = v26;
      v7 = v23;
      *&v4[*(v27 + 28)] = v21;
      sub_215489D48(v4, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_215318D44(0, v20[2] + 1, 1, v20);
      }

      v29 = v20[2];
      v28 = v20[3];
      if (v29 >= v28 >> 1)
      {
        v20 = sub_215318D44(v28 > 1, v29 + 1, 1, v20);
      }

      v20[2] = v29 + 1;
      sub_215489D48(v23, v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29);
    }

    else
    {
      sub_215489CE8(v11, type metadata accessor for CollaboratorStatus);
    }

    v19 += v35;
    --v17;
  }

  while (v17);

  return v20;
}

void sub_2154808F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  sub_215324EEC(a1, v18, &qword_27CA5ABC0);
  if (v19)
  {
    sub_2151A6C9C(0, &qword_27CA5EB60);
    if (swift_dynamicCast())
    {
      v8 = [v17 errors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88);
      v9 = sub_2154A1F4C();

      v10 = *(v9 + 16);

      if (v10)
      {
        v11 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_215318F48(0, *(v11 + 2) + 1, 1, v11);
          *a5 = v11;
        }

        v14 = *(v11 + 2);
        v13 = *(v11 + 3);
        if (v14 >= v13 >> 1)
        {
          *a5 = sub_215318F48((v13 > 1), v14 + 1, 1, v11);
        }

        v18[0] = 1;
        v15 = *a5;
        *(v15 + 2) = v14 + 1;
        v16 = &v15[64 * v14];
        *(v16 + 4) = a2;
        *(v16 + 5) = a3;
        *(v16 + 10) = 0;
        *(v16 + 3) = 0u;
        *(v16 + 4) = 0u;
        v16[88] = 1;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_2151ADCD8(v18, &qword_27CA5ABC0);
  }
}

id sub_215480AAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  v6 = MEMORY[0x277D84F90];
  if ((*(v5 + 16) & 1) == 0)
  {
    sub_2154A2B0C();
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A578);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2154BDB50;
      result = [a1 ic_range];
      *(v8 + 32) = result;
      *(v8 + 40) = v10;
      v11 = MEMORY[0x277D84F90];
      v12 = 1.0;
      v13 = MEMORY[0x277D84F90];
      v14 = MEMORY[0x277D84F90];
LABEL_28:
      *a2 = 0;
      *(a2 + 8) = v8;
      *(a2 + 16) = v12;
      *(a2 + 24) = v11;
      *(a2 + 32) = v6;
      *(a2 + 40) = v13;
      *(a2 + 48) = v14;
      return result;
    }
  }

  v15 = sub_21547F9F8();
  v16 = [a1 edits];
  if (!v16)
  {
    sub_2151A6C9C(0, &qword_27CA5EB48);
    sub_2154A1F4C();
    v16 = sub_2154A1F3C();
  }

  v40 = v2;
  v17 = [v15 groupedEditsForEdits:v16 inAttributedString:a1];

  sub_2151A6C9C(0, &qword_2811995F8);
  v18 = sub_2154A1F4C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = a2;
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_18:

    v11 = MEMORY[0x277D84F90];
LABEL_19:
    [a1 ic_range];
    v8 = sub_2154A2B1C();
    v29 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
    swift_beginAccess();
    v12 = 1.0;
    if (!*(v40 + v29))
    {
      v30 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
      swift_beginAccess();
      if (*(v40 + v30) <= 1.0)
      {
        v12 = *(v40 + v30);
      }

      else
      {
        v12 = 1.0;
      }
    }

    v13 = sub_215480F30(a1);
    v31 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
    result = swift_beginAccess();
    v32 = *(v40 + v31);
    if (v32)
    {
      v33 = v13;
      v34 = v32;
      v35 = [a1 string];
      a2 = v41;
      if (!v35)
      {
        sub_2154A1D6C();
        v35 = sub_2154A1D2C();
      }

      v36 = [v34 matchesInDocumentWithPerTokenFallback_];

      sub_2151A6C9C(0, &qword_281199580);
      sub_21533FBE4(&qword_281199578, &qword_281199580);
      v37 = sub_2154A20CC();

      sub_21547DE00(v37);
      v14 = v38;

      v13 = v33;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
      a2 = v41;
    }

    goto LABEL_28;
  }

  v19 = sub_2154A2C8C();
  v41 = a2;
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_8:
  result = sub_21531B66C(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v39 = a1;
    v20 = 0;
    v11 = v6;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x216069960](v20, v18);
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = [v21 range];
      v25 = v24;

      v27 = *(v11 + 16);
      v26 = *(v11 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21531B66C((v26 > 1), v27 + 1, 1);
      }

      ++v20;
      *(v11 + 16) = v27 + 1;
      v28 = v11 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v19 != v20);

    v6 = MEMORY[0x277D84F90];
    a1 = v39;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void *sub_215480F30(void *a1)
{
  v2 = v1;
  v4 = sub_2154A22EC();
  v70 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  v53 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for CollaboratorStatus(0);
  v59 = *(v13 - 8);
  v60 = v13;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v1 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
  v17 = [v58 note];
  v18 = [v17 isSharedViaICloud];

  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  if (*(v2 + v19) != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  if (*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference) != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = OBJC_IVAR___ICAuthorHighlightsUpdater_collaboratorStatuses;
  swift_beginAccess();
  v21 = *(v2 + v20);
  v56 = *(v21 + 16);
  if (!v56)
  {
    return MEMORY[0x277D84F90];
  }

  v55 = v21 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
  v63 = (v70 + 8);
  v67 = v70 + 16;
  v68 = (v70 + 32);

  v23 = 0;
  v61 = MEMORY[0x277D84F90];
  v65 = v4;
  v57 = v16;
  v64 = a1;
  v66 = v8;
  v50 = v12;
  v54 = v22;
  while (v23 < *(v22 + 16))
  {
    v24 = *(v59 + 72);
    v62 = v23;
    sub_215489C80(v55 + v24 * v23, v16, type metadata accessor for CollaboratorStatus);
    v8 = [v58 note];
    v25 = [v8 textStorage];

    if (v25)
    {
      v26 = sub_2154A22CC();

      v8 = v66;
      v71 = *(v26 + 16);
      if (v71)
      {
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        while (v27 < *(v26 + 16))
        {
          v29 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v30 = *(v70 + 72);
          (*(v70 + 16))(v8, v26 + v29 + v30 * v27, v4);
          if (sub_21548166C(v8, a1, v2))
          {
            v31 = v2;
            v32 = *v68;
            (*v68)(v69, v8, v4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21531B4C8(0, *(v28 + 16) + 1, 1);
              v28 = v72;
            }

            v35 = *(v28 + 16);
            v34 = *(v28 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_21531B4C8(v34 > 1, v35 + 1, 1);
              v28 = v72;
            }

            *(v28 + 16) = v35 + 1;
            v36 = v28 + v29 + v35 * v30;
            v4 = v65;
            v32(v36, v69, v65);
            v2 = v31;
            a1 = v64;
            v8 = v66;
          }

          else
          {
            (*v63)(v8, v4);
          }

          if (v71 == ++v27)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

      v28 = MEMORY[0x277D84F90];
LABEL_24:

      v12 = v50;
      v16 = v57;
      if (*(v28 + 16))
      {
LABEL_25:
        v37 = sub_21549E70C();
        v38 = v51;
        (*(*(v37 - 8) + 16))(v51, v16, v37);
        v39 = *&v16[*(v60 + 24)];
        v8 = *&v16[*(v60 + 20)];
        v40 = v39;
        v41 = v16;
        v42 = v40;
        sub_215489CE8(v41, type metadata accessor for CollaboratorStatus);
        v43 = v53;
        *(v38 + *(v53 + 20)) = v8;
        *(v38 + *(v43 + 24)) = v42;
        *(v38 + *(v43 + 28)) = v28;
        sub_215489D48(v38, v12);
        v44 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_215318D44(0, v44[2] + 1, 1, v44);
        }

        v46 = v44[2];
        v45 = v44[3];
        v61 = v44;
        v16 = v57;
        if (v46 >= v45 >> 1)
        {
          v61 = sub_215318D44(v45 > 1, v46 + 1, 1, v61);
        }

        v47 = v61;
        v61[2] = v46 + 1;
        sub_215489D48(v12, v47 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46);
        goto LABEL_7;
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_25;
      }
    }

    sub_215489CE8(v16, type metadata accessor for CollaboratorStatus);

LABEL_7:
    v23 = v62 + 1;
    v22 = v54;
    if (v62 + 1 == v56)
    {

      return v61;
    }
  }

  __break(1u);

  (*v63)(v8, v4);

  __break(1u);
  return result;
}

uint64_t sub_21548166C(void (*a1)(void, void, void, __n128), void *a2, uint64_t a3)
{
  v63 = a3;
  v64 = a2;
  v72 = a1;
  v65 = sub_21549E70C();
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v5;
  MEMORY[0x28223BE20](v6);
  v66 = &v55 - v7;
  v8 = sub_2154A22EC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = sub_2154A22AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = v72;
  v72 = *(v9 + 16);
  v72(v14, v23, v8, v20);
  if ((*(v9 + 88))(v14, v8) != *MEMORY[0x277D36410])
  {
    (*(v9 + 8))(v14, v8);
    goto LABEL_14;
  }

  (*(v9 + 96))(v14, v8);
  v60 = *v14;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
  (*(v16 + 32))(v22, &v14[*(v24 + 48)], v15);
  (*(v16 + 16))(v18, v22, v15);
  if ((*(v16 + 88))(v18, v15) != *MEMORY[0x277D363F8])
  {
    v42 = *(v16 + 8);
    v42(v22, v15);
    v42(v18, v15);
LABEL_14:
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  v57 = v22;
  v58 = v15;
  v59 = v16;
  (*(v16 + 96))(v18, v15);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F0);
  v26 = *(v25 + 48);
  v27 = *&v18[*(v25 + 64)];
  v28 = v67;
  v29 = v65;
  (*(v67 + 32))(v66, v18, v65);
  v30 = *(v28 + 8);
  v67 = v28 + 8;
  v56 = v30;
  result = (v30)(&v18[v26], v29);
  v32 = 0;
  v33 = *(v27 + 16);
  while (1)
  {
    if (v33 == v32)
    {

      v56(v66, v65);
      (*(v59 + 8))(v57, v58);
      goto LABEL_14;
    }

    if (v32 >= *(v27 + 16))
    {
      break;
    }

    (v72)(v11, v27 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32++, v8);
    v34 = sub_2154A22DC();
    result = (*(v9 + 8))(v11, v8);
    if (v34)
    {

      objc_opt_self();
      v35 = v64;
      v36 = swift_dynamicCastObjCClass();
      if (!v36)
      {
        v56(v66, v65);
LABEL_17:
        (*(v59 + 8))(v57, v58);
        return v36 & 1;
      }

      v37 = *(v63 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
      v38 = v35;
      v39 = [v37 note];
      v40 = [v39 textStorage];

      if (v40)
      {
        v41 = [v40 attribute:*MEMORY[0x277D74060] atIndex:v60 effectiveRange:0];

        if (v41)
        {
          sub_2154A2BCC();
          swift_unknownObjectRelease();
        }

        else
        {
          v68 = 0u;
          v69 = 0u;
        }

        v70 = v68;
        v71 = v69;
        if (*(&v69 + 1))
        {
          sub_2151A6C9C(0, &qword_27CA5B3D8);
          if (swift_dynamicCast())
          {
            v43 = v68;
            v44 = [v68 attachment];
            v45 = [v44 tableModel];

            if (v45)
            {
              v46 = [v45 table];

              if (v46)
              {
                v47 = sub_21549E6CC();
                v48 = [v46 textStorageForColumn_];

                v49 = [v36 columnID];
                v50 = v61;
                sub_21549E6EC();

                v36 = [v48 columnID];
                v51 = v62;
                sub_21549E6EC();

                LOBYTE(v36) = sub_21549E6DC();
                v52 = v51;
                v53 = v65;
                v54 = v56;
                v56(v52, v65);
                v54(v50, v53);
                v54(v66, v53);
                goto LABEL_17;
              }
            }
          }

          v56(v66, v65);
          (*(v59 + 8))(v57, v58);
          goto LABEL_29;
        }

        v56(v66, v65);
        (*(v59 + 8))(v57, v58);
      }

      else
      {

        v56(v66, v65);
        (*(v59 + 8))(v57, v58);
        v70 = 0u;
        v71 = 0u;
      }

      sub_2151ADCD8(&v70, &qword_27CA5ABC0);
LABEL_29:
      LOBYTE(v36) = 0;
      return v36 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215481ED8(void *a1, uint64_t a2)
{
  v42 = a1;
  sub_21547FF44(a1, v48);
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v43 = a2;
  while (v7)
  {
LABEL_10:
    v12 = v44;

    sub_215488884(v13);
    v15 = v14;

    v16 = *(v15 + 16);
    v17 = *(v10 + 2);
    v2 = (v17 + v16);
    if (__OFADD__(v17, v16))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v2 > *(v10 + 3) >> 1)
    {
      if (v17 <= v2)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      v10 = sub_215319048(isUniquelyReferenced_nonNull_native, v19, 1, v10);
    }

    v7 &= v7 - 1;
    if (*(v15 + 16))
    {
      if ((*(v10 + 3) >> 1) - *(v10 + 2) < v16)
      {
        goto LABEL_45;
      }

      swift_arrayInitWithCopy();

      a2 = v43;
      if (v16)
      {
        v20 = *(v10 + 2);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_46;
        }

        *(v10 + 2) = v22;
      }
    }

    else
    {

      a2 = v43;
      if (v16)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v44 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2154BDB20;
  v2 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
  *(v8 + 32) = [v42 document];
  v45 = MEMORY[0x277D84F90];
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v26 = (v23 + 63) >> 6;

  v27 = 0;
  if (v25)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_42;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v4 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      do
      {
LABEL_30:
        v25 &= v25 - 1;

        sub_21547E180(v29);
      }

      while (v25);
      continue;
    }
  }

  v4 = v45;
  if (!(v45 >> 62))
  {
    v30 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_48;
    }

    goto LABEL_34;
  }

LABEL_47:
  v30 = sub_2154A2C8C();
  if (!v30)
  {
LABEL_48:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_34:
  v46 = MEMORY[0x277D84F90];
  result = sub_2154A2E2C();
  if (v30 < 0)
  {
    __break(1u);
    return result;
  }

  v32 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x216069960](v32, v4);
    }

    else
    {
      v33 = *(v4 + 8 * v32 + 32);
    }

    v34 = v33;
    ++v32;
    v35 = [v33 v2[201]];

    sub_2154A2E0C();
    sub_2154A2E4C();
    sub_2154A2E5C();
    sub_2154A2E1C();
  }

  while (v30 != v32);

  v36 = v46;
LABEL_49:
  sub_21547EFB4(v36, sub_21532B814, sub_215433610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A500);
  v37 = swift_allocObject();
  v38 = v48[0];
  v39 = v48[1];
  *(v37 + 16) = xmmword_2154BDB50;
  *(v37 + 32) = v38;
  v40 = v48[2];
  *(v37 + 48) = v39;
  *(v37 + 64) = v40;
  *(v37 + 80) = v49;
  v47 = v37;
  sub_21547EEBC(v44);
  if (v8 >> 62)
  {
    sub_2151A6C9C(0, &qword_281199568);

    v41 = sub_2154A2EEC();
  }

  else
  {

    sub_2154A2FBC();
    sub_2151A6C9C(0, &qword_281199568);
    v41 = v8;
  }

  return sub_2154823E4(v41, v47);
}

uint64_t sub_2154823E4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = sub_2154A2C8C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(a2 + 16) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6F8);
    v7 = sub_2154A2F3C();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v10 = v7;
  sub_215488BE8(a1, a2, 1, &v10);

  v8 = v10;
  if (v2)
  {
  }

  return v8;
}

Swift::Void __swiftcall AuthorHighlightsUpdater.scheduleUpdate(animated:force:)(Swift::Bool animated, Swift::Bool force)
{
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) != 0 || (v5 = [*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note], v6 = objc_msgSend(v5, sel_isSharedViaICloud), v5, v6))
  {
    *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_animatesScheduledUpdate) = (*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_animatesScheduledUpdate) | animated) & 1;
    *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate) = (*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate) | force) & 1;
    v7 = OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer;
    if (!*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer))
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15[4] = sub_215488740;
      v15[5] = v8;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_2151B5B78;
      v15[3] = &block_descriptor_38;
      v9 = _Block_copy(v15);
      v10 = objc_opt_self();

      v11 = [v10 timerWithTimeInterval:0 repeats:v9 block:0.5];
      _Block_release(v9);

      [v11 setTolerance_];
      v12 = *(v2 + v7);
      *(v2 + v7) = v11;
      v13 = v11;

      v14 = [objc_opt_self() mainRunLoop];
      [v14 addTimer:v13 forMode:*MEMORY[0x277CBE640]];
    }
  }
}

void sub_21548278C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2[OBJC_IVAR___ICAuthorHighlightsUpdater_animatesScheduledUpdate];
    }

    else
    {
      v3 = 0;
    }

    AuthorHighlightsUpdater.update(animated:force:)(v3, v1[OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate]);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v4[OBJC_IVAR___ICAuthorHighlightsUpdater_animatesScheduledUpdate] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer);
    if (v7)
    {
      v8 = v7;

      [v8 invalidate];
      v6 = v8;
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer];
    *&v9[OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer] = 0;
  }
}

uint64_t AuthorHighlightsUpdater.updatesVisibleRangesOnly.getter()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

void AuthorHighlightsUpdater.updatesVisibleRangesOnly.setter(char a1)
{
  v3 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_215482AA4(v4);
}

void sub_215482AA4(char a1)
{
  if (a1)
  {
    v2 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
    swift_beginAccess();
    if ((*(v1 + v2) & 1) == 0)
    {
      v3 = *(v1 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
      v4 = [v3 note];
      v5 = [v4 textStorage];

      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB20;
        *(inited + 32) = v5;
        v7 = v5;
        v8 = [v3 note];
        v9 = [v8 visibleAttachmentTextStoragesForTextLayoutManager_];

        type metadata accessor for _NSRange(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A840);
        sub_21532C5B8();
        v10 = sub_2154A1C8C();

        v25 = MEMORY[0x277D84F90];
        v11 = 1 << *(v10 + 32);
        v12 = -1;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        v13 = v12 & *(v10 + 64);
        v14 = (v11 + 63) >> 6;

        v15 = 0;
        if (v13)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          if (v16 >= v14)
          {
            break;
          }

          v13 = *(v10 + 64 + 8 * v16);
          ++v15;
          if (v13)
          {
            v15 = v16;
            do
            {
LABEL_12:
              v13 &= v13 - 1;

              v9 = &v25;
              sub_21547E180(v17);
            }

            while (v13);
            continue;
          }
        }

        v18 = v25;
        v25 = inited;
        sub_21547EFB4(v18, sub_21532B814, sub_2154337B0);
        v9 = v25;
        if (!(v25 >> 62))
        {
          v19 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_16;
          }

LABEL_24:

          return;
        }

LABEL_23:
        v19 = sub_2154A2C8C();
        if (!v19)
        {
          goto LABEL_24;
        }

LABEL_16:
        if (v19 >= 1)
        {
          v20 = 0;
          do
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x216069960](v20, v9);
            }

            else
            {
              v21 = *(v9 + 8 * v20 + 32);
            }

            v22 = v21;
            ++v20;
            v23 = [v21 ic_range];
            [v3 performHighlightUpdatesForRange:v23 inTextStorage:v24 updates:{v22, 0}];
          }

          while (v19 != v20);
          goto LABEL_24;
        }

        __break(1u);
      }
    }
  }
}

void (*AuthorHighlightsUpdater.updatesVisibleRangesOnly.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_215482E50;
}

void sub_215482E50(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_215482AA4(v5);

  free(v1);
}

Swift::Void __swiftcall AuthorHighlightsUpdater.update(animated:force:)(Swift::Bool animated, Swift::Bool force)
{
  LODWORD(v178) = animated;
  if ((ICInternalSettingsIsTextKit2Enabled() & 1) == 0 && (v4 = [*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note], v5 = objc_msgSend(v4, sel_isSharedViaICloud), v4, !v5) || (v179 = *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController), v6 = objc_msgSend(v179, sel_note), v184 = objc_msgSend(v6, sel_textStorage), v6, !v184))
  {
    *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_states) = sub_2151AFA2C(MEMORY[0x277D84F90]);

    return;
  }

  if (*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_isUpdating))
  {

    return;
  }

  v163 = OBJC_IVAR___ICAuthorHighlightsUpdater_isUpdating;
  *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_isUpdating) = 1;
  v7 = (*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate) | force) & 1;
  v164 = OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate;
  *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate) = v7;
  v8 = [v179 note];
  v185 = v2;
  v9 = [v8 visibleAttachmentTextStoragesForTextLayoutManager_];

  type metadata accessor for _NSRange(0);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A840);
  sub_21532C5B8();
  v12 = sub_2154A1C8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB20;
  v14 = v184;
  *(inited + 32) = v184;
  v206[0] = MEMORY[0x277D84F90];
  v15 = v12 + 64;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v12 + 64);
  v19 = (v16 + 63) >> 6;
  v168 = v14;

  v20 = 0;
  if (v18)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      do
      {
LABEL_19:
        v18 &= v18 - 1;

        v11 = v206;
        sub_21547E180(v22);
      }

      while (v18);
      continue;
    }
  }

  v23 = v206[0];
  v206[0] = inited;
  sub_21547EFB4(v23, sub_21532B814, sub_2154337B0);
  v24 = v206[0];
  v15 = v185;
  v11 = sub_215481ED8(v168, v12);

  v25 = v24;
  v182 = v24;
  if (v24 >> 62)
  {
    goto LABEL_37;
  }

  v183 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v184 = v11;
  if (v183)
  {
    do
    {
      v26 = 0;
      v180 = v25 & 0xFFFFFFFFFFFFFF8;
      v181 = v25 & 0xC000000000000001;
      while (1)
      {
        if (v181)
        {
          v32 = MEMORY[0x216069960](v26);
        }

        else
        {
          if (v26 >= *(v180 + 16))
          {
            goto LABEL_36;
          }

          v32 = *(v25 + 8 * v26 + 32);
        }

        v33 = v32;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v35 = [v32 document];
        v36 = v35;
        v37 = 1.0;
        v38 = 0.0;
        if (v11[2] && (v39 = sub_2153B1320(v35), (v40 & 1) != 0))
        {
          v41 = (v11[7] + 56 * v39);
          v38 = *v41;
          v28 = *(v41 + 1);
          v37 = v41[2];
          v29 = *(v41 + 3);
          v30 = *(v41 + 4);
          v31 = *(v41 + 5);
          v27 = *(v41 + 6);
        }

        else
        {
          v27 = MEMORY[0x277D84F90];
          v28 = MEMORY[0x277D84F90];
          v29 = MEMORY[0x277D84F90];
          v30 = MEMORY[0x277D84F90];
          v31 = MEMORY[0x277D84F90];
        }

        *v206 = v38;
        v206[1] = v28;
        *&v206[2] = v37;
        v206[3] = v29;
        v206[4] = v30;
        v206[5] = v31;
        v206[6] = v27;
        sub_215488480(v33, v206);

        ++v26;
        v11 = v184;
        v15 = v185;
        v25 = v182;
        if (v34 == v183)
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v42 = sub_2154A2C8C();
      v25 = v182;
      v183 = v42;
      v184 = v11;
    }

    while (v42);
  }

LABEL_38:
  v162 = OBJC_IVAR___ICAuthorHighlightsUpdater_states;
  v43 = *(v15 + OBJC_IVAR___ICAuthorHighlightsUpdater_states);

  v44 = sub_2154879D8(v184, v43);
  v45 = v184;

  if ((v44 & 1) != 0 && (*(v15 + v164) & 1) == 0)
  {
    sub_2154841D4(v182, v184, v15);
    if ((v46 & 1) == 0)
    {
      goto LABEL_149;
    }
  }

  v181 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  if (v178)
  {
    swift_beginAccess();
    if (!v183)
    {
      goto LABEL_149;
    }

    v47 = 0;
    v173 = v182 & 0xFFFFFFFFFFFFFF8;
    v174 = v182 & 0xC000000000000001;
    v171 = &v190;
    v172 = (v182 + 32);
    while (1)
    {
      if (v174)
      {
        v48 = MEMORY[0x216069960](v47, v182);
      }

      else
      {
        if (v47 >= *(v173 + 16))
        {
          goto LABEL_154;
        }

        v48 = v172[v47];
      }

      v49 = v48;
      v50 = __OFADD__(v47++, 1);
      if (v50)
      {
        goto LABEL_152;
      }

      v51 = [v48 document];
      v52 = v51;
      v53 = 1.0;
      v54 = 0.0;
      if (v45[2] && (v55 = sub_2153B1320(v51), (v56 & 1) != 0))
      {
        v57 = (v45[7] + 56 * v55);
        v54 = *v57;
        v58 = *(v57 + 1);
        v53 = v57[2];
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v62 = *(v57 + 6);
      }

      else
      {
        v62 = MEMORY[0x277D84F90];
        v58 = MEMORY[0x277D84F90];
        v59 = MEMORY[0x277D84F90];
        v60 = MEMORY[0x277D84F90];
        v61 = MEMORY[0x277D84F90];
      }

      v175 = v62;
      v176 = v61;
      v177 = v60;
      v178 = v59;

      v199 = v54;
      v180 = v58;
      v200 = v58;
      v201 = v53;
      v202 = v59;
      v203 = v60;
      v204 = v61;
      v205 = v62;
      if (*(v15 + v181) != 1)
      {
        goto LABEL_93;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_93;
      }

      v63 = [v49 textViews];
      v64 = sub_2151A6C9C(0, &unk_2811996C0);
      sub_21533FBE4(&qword_2811996B8, &unk_2811996C0);
      v65 = sub_2154A20CC();

      v188 = MEMORY[0x277D84F90];
      v169 = v49;
      v170 = v64;
      v165 = v47;
      v167 = v65;
      if ((v65 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_2154A2C3C();
        sub_2154A20FC();
        v65 = v194;
        v66 = v195;
        v67 = v196;
        v68 = v197;
        v69 = v198;
      }

      else
      {
        v70 = -1 << *(v65 + 32);
        v66 = v65 + 56;
        v67 = ~v70;
        v71 = -v70;
        if (v71 < 64)
        {
          v72 = ~(-1 << v71);
        }

        else
        {
          v72 = -1;
        }

        v69 = v72 & *(v65 + 56);

        v68 = 0;
      }

      v166 = v67;
      v73 = (v67 + 64) >> 6;
      v74 = MEMORY[0x277D84F90];
      while (v65 < 0)
      {
        v78 = sub_2154A2CDC();
        if (!v78)
        {
          goto LABEL_75;
        }

        v186 = v78;
        swift_dynamicCast();
        v77 = v187;
        if (!v187)
        {
          goto LABEL_75;
        }

LABEL_70:
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x216068AC0]();
          if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2154A1F8C();
          }

          sub_2154A1FAC();
          v74 = v188;
        }

        else
        {
        }
      }

      v75 = v68;
      v76 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v68 >= v73)
          {
            goto LABEL_75;
          }

          v76 = *(v66 + 8 * v68);
          ++v75;
          if (v76)
          {
            goto LABEL_66;
          }
        }

        __break(1u);
        goto LABEL_151;
      }

LABEL_66:
      v69 = (v76 - 1) & v76;
      v77 = *(*(v65 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v76)))));
      if (v77)
      {
        goto LABEL_70;
      }

LABEL_75:
      sub_2151A66EC();

      if (v74 >> 62)
      {
        v79 = sub_2154A2C8C();
        v49 = v169;
        if (!v79)
        {
          goto LABEL_88;
        }

LABEL_77:
        v188 = MEMORY[0x277D84F90];
        sub_21531B66C(0, v79 & ~(v79 >> 63), 0);
        if (v79 < 0)
        {
          goto LABEL_156;
        }

        v80 = 0;
        v81 = v188;
        do
        {
          if ((v74 & 0xC000000000000001) != 0)
          {
            v82 = MEMORY[0x216069960](v80, v74);
          }

          else
          {
            v82 = *(v74 + 8 * v80 + 32);
          }

          v83 = v82;
          v84 = [v82 ic_visibleRange];
          v86 = v85;

          v188 = v81;
          v88 = *(v81 + 16);
          v87 = *(v81 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_21531B66C((v87 > 1), v88 + 1, 1);
            v81 = v188;
          }

          ++v80;
          *(v81 + 16) = v88 + 1;
          v89 = v81 + 16 * v88;
          *(v89 + 32) = v84;
          *(v89 + 40) = v86;
        }

        while (v79 != v80);

        v49 = v169;
      }

      else
      {
        v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v49 = v169;
        if (v79)
        {
          goto LABEL_77;
        }

LABEL_88:
      }

      v90 = sub_2154A2B2C();
      v15 = v185;
      v47 = v165;
      if (v92)
      {
        goto LABEL_93;
      }

      if (__OFSUB__(v90, 1))
      {
        goto LABEL_158;
      }

      if (__OFADD__(v91, 2))
      {
        goto LABEL_160;
      }

      [v49 ic_range];
      v93 = sub_2154A2B0C();
      if (v95)
      {
LABEL_93:
        v93 = [v49 ic_range];
      }

      v96 = v93;
      v97 = v94;
      v98 = v179;
      v99 = [v179 setAllowsAnimations_];
      MEMORY[0x28223BE20](v99);
      v159 = &v199;
      v160 = v15;
      v161 = v49;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_21548875C;
      *(v100 + 24) = v158;
      v192 = sub_215489DC8;
      v193 = v100;
      v188 = MEMORY[0x277D85DD0];
      v189 = 1107296256;
      v190 = sub_21538E878;
      v191 = &block_descriptor_13_0;
      v101 = _Block_copy(&v188);

      [v98 performHighlightUpdatesForRange:v96 inTextStorage:v97 updates:{v49, v101}];
      _Block_release(v101);

      v45 = v184;
      if (v47 == v183)
      {
LABEL_149:

        *(v15 + v162) = v45;

        v157 = v163;
        *(v15 + v164) = 0;
        *(v15 + v157) = 0;
        return;
      }
    }
  }

  swift_beginAccess();
  if (!v183)
  {
    goto LABEL_149;
  }

  v102 = 0;
  v103 = v182 & 0xC000000000000001;
  v104 = v182 & 0xFFFFFFFFFFFFFF8;
  v172 = &v190;
  v173 = v182 + 32;
  v165 = v182 & 0xC000000000000001;
  v174 = v182 & 0xFFFFFFFFFFFFFF8;
LABEL_98:
  if (v103)
  {
    v105 = MEMORY[0x216069960](v102, v182);
  }

  else
  {
    if (v102 >= *(v104 + 16))
    {
      goto LABEL_155;
    }

    v105 = *(v173 + 8 * v102);
  }

  v106 = v105;
  v50 = __OFADD__(v102++, 1);
  if (!v50)
  {
    v107 = [v105 document];
    v108 = v107;
    v109 = 1.0;
    v110 = 0.0;
    v111 = v103;
    if (v45[2] && (v112 = sub_2153B1320(v107), (v113 & 1) != 0))
    {
      v114 = (v45[7] + 56 * v112);
      v110 = *v114;
      v115 = *(v114 + 1);
      v109 = v114[2];
      v116 = *(v114 + 3);
      v117 = *(v114 + 4);
      v118 = *(v114 + 5);
      v119 = *(v114 + 6);
    }

    else
    {
      v119 = MEMORY[0x277D84F90];
      v115 = MEMORY[0x277D84F90];
      v116 = MEMORY[0x277D84F90];
      v117 = MEMORY[0x277D84F90];
      v118 = MEMORY[0x277D84F90];
    }

    v175 = v119;
    v176 = v118;
    v177 = v117;
    v178 = v116;

    v199 = v110;
    v180 = v115;
    v200 = v115;
    v201 = v109;
    v202 = v116;
    v203 = v117;
    v204 = v118;
    v205 = v119;
    v103 = v111;
    v104 = v174;
    if (*(v185 + v181) != 1)
    {
      goto LABEL_147;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_147;
    }

    v170 = v102;
    v120 = [v106 textViews];
    v121 = sub_2151A6C9C(0, &unk_2811996C0);
    sub_21533FBE4(&qword_2811996B8, &unk_2811996C0);
    v122 = sub_2154A20CC();

    v188 = MEMORY[0x277D84F90];
    v166 = v106;
    v169 = v122;
    v171 = v121;
    if ((v122 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2154A2C3C();
      sub_2154A20FC();
      v122 = v194;
      v123 = v195;
      v124 = v196;
      v125 = v197;
      v126 = v198;
    }

    else
    {
      v127 = -1 << *(v122 + 32);
      v123 = v122 + 56;
      v124 = ~v127;
      v128 = -v127;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      else
      {
        v129 = -1;
      }

      v126 = v129 & *(v122 + 56);

      v125 = 0;
    }

    v167 = v124;
    v130 = (v124 + 64) >> 6;
    v131 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v122 < 0)
      {
        v135 = sub_2154A2CDC();
        if (!v135)
        {
          goto LABEL_129;
        }

        v186 = v135;
        swift_dynamicCast();
        v134 = v187;
        if (!v187)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v132 = v125;
        v133 = v126;
        if (!v126)
        {
          while (1)
          {
            v125 = v132 + 1;
            if (__OFADD__(v132, 1))
            {
              break;
            }

            if (v125 >= v130)
            {
              goto LABEL_129;
            }

            v133 = *(v123 + 8 * v125);
            ++v132;
            if (v133)
            {
              goto LABEL_120;
            }
          }

LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          break;
        }

LABEL_120:
        v126 = (v133 - 1) & v133;
        v134 = *(*(v122 + 48) + ((v125 << 9) | (8 * __clz(__rbit64(v133)))));
        if (!v134)
        {
LABEL_129:
          sub_2151A66EC();

          if (v131 >> 62)
          {
            v136 = sub_2154A2C8C();
            v102 = v170;
            v103 = v165;
            v104 = v174;
            if (!v136)
            {
              goto LABEL_142;
            }

LABEL_131:
            v188 = MEMORY[0x277D84F90];
            sub_21531B66C(0, v136 & ~(v136 >> 63), 0);
            if (v136 < 0)
            {
              goto LABEL_157;
            }

            v137 = 0;
            v138 = v188;
            do
            {
              if ((v131 & 0xC000000000000001) != 0)
              {
                v139 = MEMORY[0x216069960](v137, v131);
              }

              else
              {
                v139 = *(v131 + 8 * v137 + 32);
              }

              v140 = v139;
              v141 = [v139 ic_visibleRange];
              v143 = v142;

              v188 = v138;
              v145 = *(v138 + 16);
              v144 = *(v138 + 24);
              if (v145 >= v144 >> 1)
              {
                sub_21531B66C((v144 > 1), v145 + 1, 1);
                v138 = v188;
              }

              ++v137;
              *(v138 + 16) = v145 + 1;
              v146 = v138 + 16 * v145;
              *(v146 + 32) = v141;
              *(v146 + 40) = v143;
            }

            while (v136 != v137);

            v102 = v170;
            v103 = v165;
            v104 = v174;
          }

          else
          {
            v136 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v102 = v170;
            v103 = v165;
            v104 = v174;
            if (v136)
            {
              goto LABEL_131;
            }

LABEL_142:
          }

          v147 = sub_2154A2B2C();
          v106 = v166;
          if (v149)
          {
            goto LABEL_147;
          }

          if (__OFSUB__(v147, 1))
          {
            goto LABEL_159;
          }

          if (__OFADD__(v148, 2))
          {
            goto LABEL_161;
          }

          [v166 ic_range];
          v150 = sub_2154A2B0C();
          if (v152)
          {
LABEL_147:
            v150 = [v106 ic_range];
          }

          v153 = v150;
          v154 = v151;
          MEMORY[0x28223BE20](v150);
          v15 = v185;
          v159 = &v199;
          v160 = v185;
          v161 = v106;
          v155 = swift_allocObject();
          *(v155 + 16) = sub_215488748;
          *(v155 + 24) = v158;
          v192 = sub_215488754;
          v193 = v155;
          v188 = MEMORY[0x277D85DD0];
          v189 = 1107296256;
          v190 = sub_21538E878;
          v191 = &block_descriptor_6_3;
          v156 = _Block_copy(&v188);

          [v179 performHighlightUpdatesForRange:v153 inTextStorage:v154 updates:{v106, v156}];
          _Block_release(v156);

          v45 = v184;
          if (v102 == v183)
          {
            goto LABEL_149;
          }

          goto LABEL_98;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x216068AC0]();
        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v188 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v131 = v188;
      }

      else
      {
      }
    }
  }

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
}

void sub_2154841D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v5 = sub_2154A22EC();
  v77 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v81 = (&v48 - v9);
  v68 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v74 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    v54 = v7;
    v76 = v5;
    v12 = 0;
    v60 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = a1 & 0xC000000000000001;
    v49 = a1;
    v78 = (a1 + 32);
    v71 = v77 + 16;
    v53 = (v77 + 88);
    v52 = *MEMORY[0x277D36408];
    v70 = (v77 + 8);
    v51 = (v77 + 96);
    v13 = *MEMORY[0x277D35FF0];
    v14 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
    v50 = xmmword_2154BDB50;
    v75 = i;
    while (1)
    {
      if (v80)
      {
        v15 = MEMORY[0x216069960](v12, v49);
      }

      else
      {
        if (v12 >= *(v79 + 16))
        {
          goto LABEL_41;
        }

        v15 = v78[v12];
      }

      v5 = v15;
      if (__OFADD__(v12++, 1))
      {
        break;
      }

      v17 = [v15 v14[201]];
      v18 = v17;
      if (*(a2 + 16) && (v19 = sub_2153B1320(v17), (v20 & 1) != 0))
      {
        v21 = (*(a2 + 56) + 56 * v19);
        v22 = v21[1];
        v23 = v21[3];
        v7 = v21[4];
        a1 = v21[5];
        v24 = v21[6];

        v61 = *(a1 + 16);
        if (v61)
        {
          v69 = v24;
          v48 = a2;
          v25 = 0;
          v26 = *(v68 + 28);
          v27 = (a1 + ((*(v73 + 80) + 32) & ~*(v73 + 80)));
          v14 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
          v65 = v23;
          v66 = v22;
          v63 = a1;
          v64 = v7;
          v56 = v26;
          v55 = v27;
          while (1)
          {
            if (v25 >= *(a1 + 16))
            {
              __break(1u);
              return;
            }

            v28 = *(v73 + 72);
            v62 = v25;
            v29 = &v27[v28 * v25];
            a2 = v74;
            sub_215489C80(v29, v74, type metadata accessor for ResolvedCollaboratorStatus);
            v30 = *(a2 + v26);
            a1 = &selRef_updateHeaderConfiguration;
            v67 = *(v30 + 16);
            if (v67)
            {
              break;
            }

LABEL_30:
            v25 = v62 + 1;
            sub_215489CE8(v74, type metadata accessor for ResolvedCollaboratorStatus);
            a1 = v63;
            v7 = v64;
            v26 = v56;
            v27 = v55;
            if (v25 == v61)
            {

              a2 = v48;
              goto LABEL_34;
            }
          }

          v31 = 0;
          v7 = *(v72 + v60);
          v32 = v30 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
          v59 = v30;
          v58 = v7;
          v57 = v32;
          while (2)
          {
            if (v31 >= *(v30 + 16))
            {
              goto LABEL_42;
            }

            v33 = *(v77 + 16);
            v33(v81, v32 + *(v77 + 72) * v31, v76);
            v34 = [v5 v14[201]];
            v35 = [v7 note];
            v36 = v14;
            v37 = [v35 textStorage];

            if (v37)
            {
              v38 = [v37 v36 + 471];

              if (v34 == v38)
              {
                v39 = v54;
                v40 = v76;
                v33(v54, v81, v76);
                v41 = (*v53)(v39, v40);
                if (v41 == v52)
                {
                  (*v51)(v39, v40);
                  v42 = *v39;
                  v43 = v39[1];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A578);
                  a2 = swift_allocObject();
                  *(a2 + 16) = v50;
                  *(a2 + 32) = v42;
                  *(a2 + 40) = v43;
                }

                else
                {
                  (*v70)(v39, v40);
                  a2 = MEMORY[0x277D84F90];
                }

LABEL_22:
                ++v31;
                v44 = (a2 + 40);
                v7 = -*(a2 + 16);
                v45 = -1;
                while (&v7[v45] != -1)
                {
                  if (++v45 >= *(a2 + 16))
                  {
                    __break(1u);
                    goto LABEL_40;
                  }

                  v46 = v44 + 2;
                  v47 = [v5 ic:v13 containsAttribute:*(v44 - 1) inRange:*v44];
                  v44 = v46;
                  if ((v47 & 1) == 0)
                  {

                    (*v70)(v81, v76);
                    sub_215489CE8(v74, type metadata accessor for ResolvedCollaboratorStatus);
                    return;
                  }
                }

                (*v70)(v81, v76);

                v14 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
                v30 = v59;
                v7 = v58;
                v32 = v57;
                if (v31 != v67)
                {
                  continue;
                }

                goto LABEL_30;
              }
            }

            else
            {
            }

            break;
          }

          a2 = sub_215488F54(v81);
          goto LABEL_22;
        }
      }

      else
      {
      }

      v14 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
LABEL_34:

      if (v12 == v75)
      {
        return;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }
}

void sub_21548499C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v108 = a5;
  v109 = a4;
  v6 = sub_2154A22EC();
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v115 = &v92 - v9;
  v99 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v117 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a3;
  v11 = *(a3 + 8);
  v12 = 0x277D36000uLL;
  v13 = &selRef_imageWithBounds_completion_;
  v14 = *(v11 + 16);
  v113 = v6;
  if (v14)
  {
    v15 = *v93;
    v16 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    v17 = (v11 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = *(v109 + v16);
      if (v15 >= 0.0)
      {
        [*(v109 + v16) removeHighlightValuesForRange:*(v17 - 1) inTextStorage:{*v17, v108}];
      }

      else
      {
        v21 = [objc_allocWithZone(*(v12 + 1776)) v13[42]];
        v22 = sub_2154A20AC();
        [v21 setValue_];

        v13 = &selRef_imageWithBounds_completion_;
        v12 = 0x277D36000;
        [v21 setColor_];
        [v20 setHighlightValue:v21 forRange:v18 inTextStorage:{v19, v108}];

        v6 = v113;
      }

      v17 += 2;
      --v14;
    }

    while (v14);
  }

  v23 = *(v93 + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v93 + 16);
    v26 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    v27 = (v23 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;
      v30 = *(v109 + v26);
      if (v25 <= 0.0)
      {
        [*(v109 + v26) removeHighlightValuesForRange:*(v27 - 1) inTextStorage:{*v27, v108}];
      }

      else
      {
        v31 = [objc_allocWithZone(*(v12 + 1776)) v13[42]];
        v32 = sub_2154A20AC();
        [v31 setValue_];

        v6 = v113;
        [v31 setColor_];
        [v30 setHighlightValue:v31 forRange:v28 inTextStorage:{v29, v108}];

        v13 = &selRef_imageWithBounds_completion_;
        v12 = 0x277D36000;
      }

      v27 += 2;
      --v24;
    }

    while (v24);
  }

  v33 = *(v93 + 40);
  v34 = v100;
  v97 = *(v33 + 16);
  if (!v97)
  {
LABEL_46:
    v77 = *(v93 + 48);
    v78 = *(v77 + 16);
    v79 = &selRef_imageWithBounds_completion_;
    v80 = 0x1FB06F000uLL;
    if (v78)
    {
      v81 = objc_opt_self();
      v116 = *(v109 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
      v117 = v81;
      v82 = (v77 + 40);
      do
      {
        v83 = *(v82 - 1);
        v84 = *v82;
        v85 = [v117 ICFindInNoteHighlightColor];
        v86 = objc_allocWithZone(MEMORY[0x277D366F0]);
        v87 = v85;
        v88 = [v86 v79[42]];
        v89 = v80;
        v90 = v79;
        v91 = sub_2154A20AC();
        [v88 setValue_];

        v79 = v90;
        v80 = v89;
        [v88 (v89 + 2168)];
        [v116 setHighlightValue:v88 forRange:v83 inTextStorage:{v84, v108}];

        v82 += 2;
        --v78;
      }

      while (v78);
    }

    return;
  }

  v35 = 0;
  v98 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
  v96 = v33 + ((v117[80] + 32) & ~v117[80]);
  v114 = v94 + 16;
  v106 = (v94 + 88);
  v105 = *MEMORY[0x277D36408];
  v112 = (v94 + 8);
  v103 = (v94 + 96);
  v95 = *(v117 + 9);
  v102 = xmmword_2154BDB50;
  while (1)
  {
    sub_215489C80(v96 + v95 * v35, v34, type metadata accessor for ResolvedCollaboratorStatus);
    v36 = *(v34 + *(v99 + 28));
    v37 = *(v36 + 16);
    v38 = v108;
    v101 = v35;
    if (v37)
    {
      break;
    }

    v42 = MEMORY[0x277D84F90];
LABEL_42:
    v64 = v38;
    v104 = v42;
    v65 = *(v42 + 2);
    v66 = &selRef_imageWithBounds_completion_;
    v67 = 0x1FB06F000uLL;
    if (v65)
    {
      v111 = *(v100 + *(v99 + 24));
      v110 = *(v109 + v98);
      v68 = (v104 + 40);
      do
      {
        v69 = *(v68 - 1);
        v116 = *v68;
        v117 = v69;
        v70 = objc_allocWithZone(MEMORY[0x277D366F0]);
        v71 = v111;
        v72 = [v70 v66[42]];
        v73 = v67;
        v74 = v66;
        v75 = v64;
        v76 = sub_2154A20AC();
        [v72 setValue_];

        v64 = v75;
        v66 = v74;
        v67 = v73;
        [v72 (v73 + 2168)];
        [v110 setHighlightValue:v72 forRange:v117 inTextStorage:{v116, v64}];

        v68 += 2;
        --v65;
      }

      while (v65);
    }

    v35 = v101 + 1;

    v34 = v100;
    sub_215489CE8(v100, type metadata accessor for ResolvedCollaboratorStatus);
    v6 = v113;
    if (v35 == v97)
    {
      goto LABEL_46;
    }
  }

  v39 = v36 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  v40 = *(v109 + v98);
  v116 = *(v94 + 72);
  v117 = v40;
  v41 = *(v94 + 16);
  v42 = MEMORY[0x277D84F90];
  v43 = v115;
  v41(v115, v39, v6);
  while (1)
  {
    v44 = [v38 document];
    v45 = [v117 note];
    v46 = [v45 textStorage];

    if (!v46)
    {

LABEL_26:
      v54 = sub_215488F54(v43);
      v50 = v113;
      goto LABEL_29;
    }

    v47 = [v46 document];

    if (v44 != v47)
    {
      goto LABEL_26;
    }

    v48 = v43;
    v49 = v107;
    v50 = v113;
    v41(v107, v48, v113);
    v51 = (*v106)(v49, v50);
    if (v51 == v105)
    {
      (*v103)(v49, v50);
      v52 = *v49;
      v53 = v49[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A578);
      v54 = swift_allocObject();
      *(v54 + 16) = v102;
      *(v54 + 32) = v52;
      *(v54 + 40) = v53;
    }

    else
    {
      (*v112)(v49, v50);
      v54 = MEMORY[0x277D84F90];
    }

    v43 = v115;
LABEL_29:
    (*v112)(v43, v50);
    v55 = *(v54 + 16);
    v56 = *(v42 + 2);
    v57 = v56 + v55;
    if (__OFADD__(v56, v55))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v57 > *(v42 + 3) >> 1)
    {
      if (v56 <= v57)
      {
        v59 = v56 + v55;
      }

      else
      {
        v59 = v56;
      }

      v42 = sub_215317AC0(isUniquelyReferenced_nonNull_native, v59, 1, v42);
    }

    v43 = v115;
    if (*(v54 + 16))
    {
      v60 = *(v42 + 2);
      if ((*(v42 + 3) >> 1) - v60 < v55)
      {
        goto LABEL_52;
      }

      memcpy(&v42[16 * v60 + 32], (v54 + 32), 16 * v55);

      if (v55)
      {
        v61 = *(v42 + 2);
        v62 = __OFADD__(v61, v55);
        v63 = v61 + v55;
        if (v62)
        {
          goto LABEL_53;
        }

        *(v42 + 2) = v63;
      }
    }

    else
    {

      if (v55)
      {
        goto LABEL_51;
      }
    }

    v39 += v116;
    if (!--v37)
    {
      goto LABEL_42;
    }

    v41(v43, v39, v50);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_2154852E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v159 = a5;
  v152 = a4;
  v155 = sub_2154A22EC();
  v139 = *(v155 - 1);
  MEMORY[0x28223BE20](v155);
  v151 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v137 - v8;
  v144 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v153 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v145 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = a3;
  v11 = *(a3 + 8);
  v12 = *(v11 + 16);
  v158 = v9;
  if (v12)
  {
    v13 = *v138;
    v157 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    v14 = (v11 + 40);
    do
    {
      v23 = *(v14 - 1);
      v22 = *v14;
      if (v13 >= 0.0)
      {
        v170 = 1;
        v169 = 1;
        v168 = 1;
        v28 = *(v152 + v157);
        v171 = 0;
        v172 = 1;
        v173 = 0;
        v174 = 1;
        v175 = 0;
        v176 = 1;
        v177 = 0;
        v178 = 256;
        v29 = objc_allocWithZone(MEMORY[0x277D366E8]);
        sub_215489B98(&v171, &v160);
        v30 = [v29 init];
        v31 = v174;
        [v30 setDuration_];

        v156 = v28;
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = sub_2154A20AC();
        }

        v36 = v22;
        v37 = v176;
        [v30 setFromValue_];

        v38 = v23;
        if (v37)
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_2154A20AC();
        }

        v16 = v177;
        v17 = v178;
        v18 = HIBYTE(v178);
        [v30 setToValue_];

        [v30 setColor_];
        [v30 setAboveExistingHighlights_];
        [v30 setRemovedOnCompletion_];
        v19 = v156;
        v20 = v159;
        [v156 setHighlightAnimation:v30 forRange:v38 inTextStorage:{v36, v159}];

        sub_215489BF4(&v171);
        [v19 removeHighlightValuesForRange:v38 inTextStorage:{v36, v20}];
        v160 = 0;
        v161 = 1;
        v162 = 0;
        v163 = 1;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 256;
        v21 = &v160;
      }

      else
      {
        v156 = *v14;
        LOBYTE(v160) = 1;
        v170 = 1;
        v169 = 0;
        v171 = 0;
        v172 = 1;
        v173 = 0;
        v174 = 1;
        v175 = *&v13;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v24 = *(v152 + v157);
        v25 = [objc_allocWithZone(MEMORY[0x277D366E8]) init];
        v26 = v174;
        [v25 setDuration_];

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = sub_2154A20AC();
        }

        v33 = v176;
        [v25 setFromValue_];

        if (v33)
        {
          v34 = v23;
          v35 = 0;
        }

        else
        {
          v34 = v23;
          v35 = sub_2154A20AC();
        }

        v39 = v177;
        v40 = v178;
        v41 = HIBYTE(v178);
        [v25 setToValue_];

        [v25 setColor_];
        [v25 setAboveExistingHighlights_];
        [v25 setRemovedOnCompletion_];
        [v24 setHighlightAnimation:v25 forRange:v34 inTextStorage:{v156, v159}];

        v21 = &v171;
      }

      sub_215489BF4(v21);
      v14 += 2;
      --v12;
      v9 = v158;
    }

    while (v12);
  }

  v42 = *(v138 + 24);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = *(v138 + 16);
    v45 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    v46 = (v42 + 40);
    v157 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
    do
    {
      v53 = *(v46 - 1);
      v54 = *v46;
      if (v44 <= 0.0)
      {
        v170 = 1;
        v169 = 1;
        v168 = 1;
        v59 = *(v152 + v45);
        v171 = 0;
        v172 = 1;
        v173 = 0;
        v174 = 1;
        v175 = 0;
        v176 = 1;
        v177 = 0;
        v178 = 257;
        v60 = objc_allocWithZone(MEMORY[0x277D366E8]);
        sub_215489B98(&v171, &v160);
        v61 = [v60 init];
        LOBYTE(v60) = v174;
        [v61 setDuration_];

        v156 = v59;
        if (v60)
        {
          v62 = 0;
        }

        else
        {
          v62 = sub_2154A20AC();
        }

        v66 = v54;
        v67 = v176;
        [v61 setFromValue_];

        v68 = v53;
        if (v67)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_2154A20AC();
        }

        v48 = v177;
        v49 = v178;
        v50 = HIBYTE(v178);
        [v61 setToValue_];

        [v61 setColor_];
        [v61 setAboveExistingHighlights_];
        [v61 setRemovedOnCompletion_];
        v51 = v156;
        v52 = v159;
        [v156 setHighlightAnimation:v61 forRange:v68 inTextStorage:{v66, v159}];

        sub_215489BF4(&v171);
        [v51 removeHighlightValuesForRange:v68 inTextStorage:{v66, v52}];
        v160 = 0;
        v161 = 1;
        v162 = 0;
        v163 = 1;
        v164 = 0;
        v165 = 1;
        v166 = 0;
        v167 = 257;
        sub_215489BF4(&v160);
        v45 = v157;
      }

      else
      {
        LOBYTE(v160) = 1;
        v170 = 1;
        v169 = 0;
        v171 = 0;
        v172 = 1;
        v173 = 0;
        v174 = 1;
        v175 = *&v44;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v55 = *(v152 + v45);
        v56 = [objc_allocWithZone(MEMORY[0x277D366E8]) init];
        v57 = v174;
        [v56 setDuration_];

        if (v57)
        {
          v58 = 0;
        }

        else
        {
          v58 = sub_2154A20AC();
        }

        v63 = v176;
        [v56 setFromValue_];

        v64 = v55;
        if (v63)
        {
          v65 = 0;
        }

        else
        {
          v65 = sub_2154A20AC();
        }

        v69 = v177;
        v70 = v178;
        v71 = HIBYTE(v178);
        [v56 setToValue_];

        [v56 setColor_];
        [v56 setAboveExistingHighlights_];
        [v56 setRemovedOnCompletion_];
        [v64 setHighlightAnimation:v56 forRange:v53 inTextStorage:{v54, v159}];

        sub_215489BF4(&v171);
        v45 = v157;
      }

      v46 += 2;
      --v43;
      v9 = v158;
    }

    while (v43);
  }

  v72 = *(v138 + 40);
  v73 = v155;
  v74 = v145;
  v142 = *(v72 + 16);
  if (!v142)
  {
LABEL_77:
    v119 = *(v138 + 48);
    v120 = *(v119 + 16);
    if (v120)
    {
      v155 = objc_opt_self();
      v154 = *(v152 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
      v121 = (v119 + 40);
      do
      {
        v126 = *(v121 - 1);
        v127 = *v121;
        v170 = 1;
        v169 = 1;
        v168 = 0;
        v128 = [v155 ICFindInNoteHighlightColor];
        v171 = 0;
        v129 = v170;
        v172 = v170;
        v173 = 0;
        v130 = v169;
        v174 = v169;
        v175 = 0x3FF0000000000000;
        LODWORD(v156) = v168;
        v176 = v168;
        v177 = v128;
        v178 = 0;
        v131 = objc_allocWithZone(MEMORY[0x277D366E8]);
        sub_215489B98(&v171, &v160);
        v132 = [v131 init];
        v133 = 0;
        if ((v129 & 1) == 0)
        {
          v133 = sub_2154A20AC();
        }

        v134 = v174;
        [v132 setDuration_];

        if (v134)
        {
          v135 = 0;
        }

        else
        {
          v135 = sub_2154A20AC();
        }

        v136 = v176;
        [v132 setFromValue_];

        v158 = v128;
        LODWORD(v157) = v130;
        if (v136)
        {
          v122 = 0;
        }

        else
        {
          v122 = sub_2154A20AC();
        }

        v121 += 2;
        v123 = v177;
        v124 = v178;
        v125 = HIBYTE(v178);
        [v132 setToValue_];

        [v132 setColor_];
        [v132 setAboveExistingHighlights_];
        [v132 setRemovedOnCompletion_];
        [v154 setHighlightAnimation:v132 forRange:v126 inTextStorage:{v127, v159}];

        sub_215489BF4(&v171);
        v160 = 0;
        v161 = v129;
        v162 = 0;
        v163 = v157;
        v164 = 0x3FF0000000000000;
        v165 = v156;
        v166 = v158;
        v167 = 0;
        sub_215489BF4(&v160);
        --v120;
      }

      while (v120);
    }

    return;
  }

  v75 = 0;
  v143 = OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController;
  v141 = v72 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
  v156 = (v139 + 16);
  v150 = (v139 + 88);
  v149 = *MEMORY[0x277D36408];
  v154 = (v139 + 8);
  v148 = (v139 + 96);
  v140 = v153[9];
  v76 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
  v147 = xmmword_2154BDB50;
  while (1)
  {
    v146 = v75;
    sub_215489C80(v141 + v140 * v75, v74, type metadata accessor for ResolvedCollaboratorStatus);
    v77 = *(v74 + *(v144 + 28));
    v78 = *(v77 + 16);
    if (v78)
    {
      break;
    }

    v82 = MEMORY[0x277D84F90];
LABEL_66:
    v104 = *(v82 + 2);
    if (v104)
    {
      v105 = *(v145 + *(v144 + 24));
      v153 = *(v152 + v143);
      v106 = v104 - 1;
      for (i = (v82 + 40); ; i += 2)
      {
        v108 = *(i - 1);
        v157 = *i;
        v170 = 1;
        v169 = 1;
        v168 = 0;
        v171 = 0;
        v172 = 1;
        v173 = 0;
        v174 = 1;
        v175 = 0x3FF0000000000000;
        v176 = 0;
        v177 = v105;
        v178 = 0;
        v109 = objc_allocWithZone(MEMORY[0x277D366E8]);
        v110 = v105;
        sub_215489B98(&v171, &v160);
        v111 = [v109 init];
        v112 = v174;
        [v111 setDuration_];

        v113 = (v112 & 1) != 0 ? 0 : sub_2154A20AC();
        v114 = v176;
        [v111 setFromValue_];

        v115 = (v114 & 1) != 0 ? 0 : sub_2154A20AC();
        v116 = HIBYTE(v178);
        v117 = v178;
        v118 = v177;
        [v111 setToValue_];

        [v111 setColor_];
        [v111 setAboveExistingHighlights_];
        [v111 setRemovedOnCompletion_];
        [v153 setHighlightAnimation:v111 forRange:v108 inTextStorage:{v157, v159}];

        sub_215489BF4(&v171);
        v160 = 0;
        v161 = 1;
        v162 = 0;
        v163 = 1;
        v164 = 0x3FF0000000000000;
        v165 = 0;
        v166 = v105;
        v167 = 0;
        sub_215489BF4(&v160);
        if (!v106)
        {
          break;
        }

        --v106;
      }

      v73 = v155;
      v9 = v158;
      v76 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
    }

    else
    {
    }

    v75 = v146 + 1;
    v74 = v145;
    sub_215489CE8(v145, type metadata accessor for ResolvedCollaboratorStatus);
    if (v75 == v142)
    {
      goto LABEL_77;
    }
  }

  v79 = v77 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v80 = *(v152 + v143);
  v157 = *(v139 + 72);
  v81 = *(v139 + 16);
  v82 = MEMORY[0x277D84F90];
  v81(v9, v79, v73);
  while (1)
  {
    v83 = v76;
    v84 = [v159 v76[201]];
    v85 = [v80 note];
    v86 = [v85 textStorage];

    if (!v86)
    {

LABEL_51:
      v89 = v158;
      v94 = sub_215488F54(v158);
      goto LABEL_52;
    }

    v87 = [v86 v83 + 471];

    if (v84 != v87)
    {
      goto LABEL_51;
    }

    v88 = v151;
    v89 = v158;
    v81(v151, v158, v73);
    v90 = (*v150)(v88, v73);
    if (v90 == v149)
    {
      (*v148)(v88, v73);
      v91 = v88;
      v92 = *v88;
      v93 = v91[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A578);
      v94 = swift_allocObject();
      *(v94 + 16) = v147;
      *(v94 + 32) = v92;
      *(v94 + 40) = v93;
      v73 = v155;
    }

    else
    {
      (*v154)(v88, v73);
      v94 = MEMORY[0x277D84F90];
    }

LABEL_52:
    (*v154)(v89, v73);
    v95 = *(v94 + 16);
    v96 = *(v82 + 2);
    v97 = v96 + v95;
    if (__OFADD__(v96, v95))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v97 > *(v82 + 3) >> 1)
    {
      if (v96 <= v97)
      {
        v99 = v96 + v95;
      }

      else
      {
        v99 = v96;
      }

      v82 = sub_215317AC0(isUniquelyReferenced_nonNull_native, v99, 1, v82);
    }

    v73 = v155;
    v9 = v158;
    if (*(v94 + 16))
    {
      v100 = *(v82 + 2);
      if ((*(v82 + 3) >> 1) - v100 < v95)
      {
        goto LABEL_91;
      }

      memcpy(&v82[16 * v100 + 32], (v94 + 32), 16 * v95);

      v76 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
      if (v95)
      {
        v101 = *(v82 + 2);
        v102 = __OFADD__(v101, v95);
        v103 = v101 + v95;
        if (v102)
        {
          goto LABEL_92;
        }

        *(v82 + 2) = v103;
      }
    }

    else
    {

      v76 = &selRef_currentStylesForStyleSelectorIgnoreTypingAttributes_;
      if (v95)
      {
        goto LABEL_90;
      }
    }

    v79 += v157;
    if (!--v78)
    {
      goto LABEL_66;
    }

    v81(v9, v79, v73);
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
}

char *sub_215486514()
{
  v1 = [*(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController) note];
  v2 = [v1 textStorage];

  if (!v2)
  {
    return 0;
  }

  v3 = v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  if (*(v3 + 16) == 1)
  {
    v4 = [v2 ic_range];
    v6 = v5;
  }

  else
  {
    v4 = *v3;
    v6 = *(v3 + 8);
  }

  v8 = [v2 editsInRange_];
  if (!v8)
  {
    sub_2151A6C9C(0, &qword_27CA5EB48);
    sub_2154A1F4C();
    v8 = sub_2154A1F3C();
  }

  v9 = sub_21547F9F8();
  v10 = [v9 groupedEditsForEdits:v8 inAttributedString:v2];

  sub_2151A6C9C(0, &qword_2811995F8);
  v11 = sub_2154A1F4C();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_10;
    }

LABEL_20:

LABEL_21:
    v7 = sub_2154A2B2C();

    return v7;
  }

  v12 = sub_2154A2C8C();
  if (!v12)
  {
    goto LABEL_20;
  }

LABEL_10:
  v24 = MEMORY[0x277D84F90];
  result = sub_21531B66C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v23 = v2;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x216069960](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 range];
      v19 = v18;

      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21531B66C((v20 > 1), v21 + 1, 1);
      }

      ++v14;
      *(v24 + 16) = v21 + 1;
      v22 = v24 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v12 != v14);

    v2 = v23;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void AuthorHighlightsUpdater.flashHighlights(for:in:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
  [v5 setAllowsAnimations_];
  v11[2] = a1;
  v12 = v2;
  v13 = a2;
  v6 = [a2 ic_range];
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_215488768;
  *(v9 + 24) = v11;
  aBlock[4] = sub_215489DC8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21538E878;
  aBlock[3] = &block_descriptor_20_1;
  v10 = _Block_copy(aBlock);

  [v5 performHighlightUpdatesForRange:v6 inTextStorage:v8 updates:{a2, v10}];
  _Block_release(v10);
}

void sub_215486920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_27CA597F8 == -1)
  {
    v6 = *(a3 + 16);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v12 = a3;
    v13 = a4;
    swift_once();
    a4 = v13;
    a3 = v12;
    v6 = *(v12 + 16);
    if (!v6)
    {
      return;
    }
  }

  v7 = *(a4 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
  v8 = (a3 + 40);
  do
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = sub_2154A20AC();
    [v7 flashHighlightsForRange:v9 withDuration:v10 inTextStorage:{v11, a5}];

    v8 += 2;
    --v6;
  }

  while (v6);
}

void AuthorHighlightsUpdater.flashHighlights(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController);
  v5 = [v4 note];
  v6 = [v5 textStorage];

  if (!v6)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BDB20;
  *(inited + 32) = v6;
  v52 = v6;
  v8 = [v4 note];
  v9 = [v8 visibleAttachmentTextStoragesForTextLayoutManager_];

  type metadata accessor for _NSRange(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A840);
  sub_21532C5B8();
  v10 = sub_2154A1C8C();

  aBlock[0] = MEMORY[0x277D84F90];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      do
      {
LABEL_10:
        v13 &= v13 - 1;

        sub_21547E180(v17);
      }

      while (v13);
      continue;
    }
  }

  v18 = aBlock[0];
  aBlock[0] = inited;
  sub_21547EFB4(v18, sub_21532B814, sub_2154337B0);
  v19 = sub_21547F9F8();
  v51 = [v19 filter];

  v61 = OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper;
  [*(v2 + OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper) setFilter_];
  v57 = inited;
  if (inited >> 62)
  {
LABEL_40:
    v20 = sub_2154A2C8C();
    if (!v20)
    {
      goto LABEL_41;
    }

LABEL_14:
    v21 = 0;
    v60 = v57 & 0xC000000000000001;
    v54 = v57 & 0xFFFFFFFFFFFFFF8;
    v53 = v57 + 32;
    v58 = v65;
    v56 = v2;
    v55 = v4;
    v59 = v20;
    while (1)
    {
      if (v60)
      {
        v30 = MEMORY[0x216069960](v21, v57);
      }

      else
      {
        if (v21 >= *(v54 + 16))
        {
          goto LABEL_39;
        }

        v30 = *(v53 + 8 * v21);
      }

      v31 = v30;
      v32 = __OFADD__(v21, 1);
      v33 = v21 + 1;
      if (v32)
      {
        goto LABEL_37;
      }

      v63 = v33;
      v34 = *(v2 + v61);
      v35 = [v31 edits];
      if (!v35)
      {
        sub_2151A6C9C(0, &qword_27CA5EB48);
        sub_2154A1F4C();
        v35 = sub_2154A1F3C();
      }

      v62 = v31;
      v36 = [v34 groupedEditsForEdits:v35 inAttributedString:v31];

      sub_2151A6C9C(0, &qword_2811995F8);
      v37 = sub_2154A1F4C();

      if (v37 >> 62)
      {
        v38 = sub_2154A2C8C();
        if (!v38)
        {
LABEL_35:

          v40 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_35;
        }
      }

      aBlock[0] = MEMORY[0x277D84F90];
      sub_21531B66C(0, v38 & ~(v38 >> 63), 0);
      if (v38 < 0)
      {
        goto LABEL_38;
      }

      v39 = 0;
      v40 = aBlock[0];
      do
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x216069960](v39, v37);
        }

        else
        {
          v41 = *(v37 + 8 * v39 + 32);
        }

        v42 = v41;
        v43 = [v41 range];
        v45 = v44;

        aBlock[0] = v40;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_21531B66C((v46 > 1), v47 + 1, 1);
          v40 = aBlock[0];
        }

        ++v39;
        *(v40 + 16) = v47 + 1;
        v48 = v40 + 16 * v47;
        *(v48 + 32) = v43;
        *(v48 + 40) = v45;
      }

      while (v38 != v39);

      v2 = v56;
      v4 = v55;
LABEL_15:
      v22 = [v4 setAllowsAnimations_];
      *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
      v50[2] = v40;
      v50[3] = v2;
      v24 = v62;
      v50[4] = v62;
      v25 = [v62 ic_range];
      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_215489DCC;
      *(v28 + 24) = v50;
      v65[2] = sub_215489DC8;
      v65[3] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v65[0] = sub_21538E878;
      v65[1] = &block_descriptor_28_2;
      v29 = _Block_copy(aBlock);

      [v4 performHighlightUpdatesForRange:v25 inTextStorage:v27 updates:{v24, v29}];
      _Block_release(v29);

      v21 = v63;
      if (v63 == v59)
      {
        goto LABEL_41;
      }
    }
  }

  v20 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_41:

  v49 = v51;
  [*(v2 + v61) setFilter_];
}

void sub_2154871AC()
{
  sub_21549E17C();
  if (v4)
  {
    sub_2151A6C9C(0, &qword_27CA5C700);
    if (swift_dynamicCast())
    {
      v1 = [v2 showsCollaboratorCursors];
      *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference) = v1;
      AuthorHighlightsUpdater.update(animated:force:)(1, *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate));
    }
  }

  else
  {
    sub_2151ADCD8(v3, &qword_27CA5ABC0);
  }
}

id AuthorHighlightsUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthorHighlightsUpdater.focusedRangeValue.getter()
{
  v1 = v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  result = 0;
  if ((*(v1 + 16) & 1) == 0)
  {
    return [objc_opt_self() valueWithRange_];
  }

  return result;
}

uint64_t AuthorHighlightsUpdater.focusedRangeValue.setter(id a1)
{
  if (a1)
  {
    v3 = [a1 rangeValue];
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  result = swift_beginAccess();
  *v6 = v3;
  *(v6 + 8) = v5;
  *(v6 + 16) = a1 == 0;
  return result;
}

id sub_215487630@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  result = 0;
  if ((*(v3 + 16) & 1) == 0)
  {
    result = [objc_opt_self() valueWithRange_];
  }

  *a2 = result;
  return result;
}

uint64_t sub_2154876C0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = [*a1 rangeValue];
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2 == 0;
  v8 = v3 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  result = swift_beginAccess();
  *v8 = v4;
  *(v8 + 8) = v6;
  *(v8 + 16) = v7;
  return result;
}

void (*AuthorHighlightsUpdater.focusedRangeValue.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = 0;
  if ((*(v6 + 16) & 1) == 0)
  {
    v7 = [objc_opt_self() valueWithRange_];
  }

  *(v4 + 24) = v7;
  return sub_215487820;
}

void sub_215487820(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    if (v3)
    {
      v5 = [*(*a1 + 24) rangeValue];
      v7 = *v4;
    }

    else
    {
      v7 = 0;
      v5 = 0;
      v6 = 0;
    }

    v11 = v2[4] + v2[5];
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v3 == 0;
  }

  else
  {
    if (v3)
    {
      v8 = [*(*a1 + 24) rangeValue];
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = v2[4] + v2[5];
    *v12 = v8;
    *(v12 + 8) = v10;
    *(v12 + 16) = v3 == 0;
  }

  free(v2);
}

id AuthorHighlightsUpdater.highlightedRangeValue.getter()
{
  v0 = sub_215486514();
  if (v2)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() valueWithRange_];
  }
}

uint64_t sub_2154879D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v30 = result + 64;
  v31 = result;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v29 = (v3 + 63) >> 6;
  while (v5)
  {
    v6 = __clz(__rbit64(v5));
    v33 = (v5 - 1) & v5;
LABEL_13:
    v9 = v6 | (v2 << 6);
    v10 = *(*(result + 48) + 8 * v9);
    v11 = (*(result + 56) + 56 * v9);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = v11[4];
    v17 = v11[5];
    v18 = v11[6];
    v19 = v10;

    if (!v10)
    {
      return 1;
    }

    v37[0] = v12;
    v37[1] = v13;
    v37[2] = v14;
    v37[3] = v15;
    v37[4] = v16;
    v37[5] = v17;
    v37[6] = v18;
    v20 = sub_2153B1320(v19);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      sub_215488710(v37);
      return 0;
    }

    v23 = *(a2 + 56) + 56 * v20;
    v25 = *(v23 + 16);
    v24 = *(v23 + 32);
    v26 = *v23;
    v36 = *(v23 + 48);
    v35[1] = v25;
    v35[2] = v24;
    v35[0] = v26;
    sub_215489C48(v35, v34);
    v27 = sub_215487BE4(v35, v37);
    sub_215488710(v35);
    sub_215488710(v37);
    result = v31;
    v5 = v33;
    v28 = v10 == 0;
    if ((v27 & 1) == 0)
    {
      return v28;
    }
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v29)
    {
      return 1;
    }

    v8 = *(v30 + 8 * v2);
    ++v7;
    if (v8)
    {
      v6 = __clz(__rbit64(v8));
      v33 = (v8 - 1) & v8;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215487BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2154A22EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v92 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v79 - v12;
  v83 = type metadata accessor for ResolvedCollaboratorStatus(0);
  v13 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v89 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v18 = *a2;
  if (*a1 == 0.0 && v18 == 0.0)
  {
    v19 = *(a1 + 16);
    v20 = *(a2 + 16);
    if (v19 == 0.0 && v20 == 0.0)
    {
      v21 = 1;
      goto LABEL_18;
    }

    if (v19 == v20)
    {
      v21 = 1;
      goto LABEL_16;
    }

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  if (*a1 == v18)
  {
    v21 = sub_215355584(*(a1 + 8), *(a2 + 8));
    v22 = *(a1 + 16);
    v23 = *(a2 + 16);
    if (v22 != 0.0 || v23 != 0.0)
    {
      if (v22 == v23)
      {
LABEL_16:
        v21 &= sub_215355584(*(a1 + 24), *(a2 + 24));
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(a2 + 16);
    v21 = 0;
    if ((v24 != 0.0 || v25 != 0.0) && v24 == v25)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v81 = v21;
  v26 = *(a1 + 32);
  v84 = a2;
  result = sub_2153555FC(v26, *(a2 + 32));
  v80 = result;
  v82 = a1;
  v28 = *(a1 + 40);
  v29 = *(v28 + 16);
  v94 = v4;
  v79 = v13;
  if (v29)
  {
    v93 = *(v83 + 28);
    v30 = v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v31 = *(v13 + 72);
    v32 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_215489C80(v30, v17, type metadata accessor for ResolvedCollaboratorStatus);
      v33 = *&v17[v93];

      result = sub_215489CE8(v17, type metadata accessor for ResolvedCollaboratorStatus);
      v34 = *(v33 + 16);
      v35 = *(v32 + 2);
      v36 = v35 + v34;
      if (__OFADD__(v35, v34))
      {
        goto LABEL_80;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v36 <= *(v32 + 3) >> 1)
      {
        if (!*(v33 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v37 = v35 + v34;
        }

        else
        {
          v37 = v35;
        }

        result = sub_215317988(result, v37, 1, v32);
        v32 = result;
        if (!*(v33 + 16))
        {
LABEL_20:

          v4 = v94;
          if (v34)
          {
            goto LABEL_81;
          }

          goto LABEL_21;
        }
      }

      if ((*(v32 + 3) >> 1) - *(v32 + 2) < v34)
      {
        goto LABEL_85;
      }

      v38 = v94;
      swift_arrayInitWithCopy();
      v4 = v38;

      if (v34)
      {
        v39 = *(v32 + 2);
        v40 = __OFADD__(v39, v34);
        v41 = v39 + v34;
        if (v40)
        {
          goto LABEL_87;
        }

        *(v32 + 2) = v41;
      }

LABEL_21:
      v30 += v31;
      if (!--v29)
      {
        goto LABEL_36;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_36:
  v42 = *(v32 + 2);
  if (v42)
  {
    v43 = 0;
    v86 = (v5 + 8);
    v91 = (v5 + 32);
    v93 = MEMORY[0x277D84F90];
    v44 = v88;
    v87 = v42;
    while (v43 < *(v32 + 2))
    {
      v45 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v46 = *(v5 + 72);
      (*(v5 + 16))(v44, &v32[v45 + v46 * v43], v4);
      if (sub_2154A22DC())
      {
        v47 = *v91;
        (*v91)(v92, v44, v4);
        v48 = v93;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21531B4C8(0, *(v48 + 16) + 1, 1);
          v48 = v95;
        }

        v51 = *(v48 + 16);
        v50 = *(v48 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21531B4C8(v50 > 1, v51 + 1, 1);
          v48 = v95;
        }

        *(v48 + 16) = v51 + 1;
        v93 = v48;
        v4 = v94;
        result = v47((v48 + v45 + v51 * v46), v92, v94);
        v42 = v87;
        v44 = v88;
      }

      else
      {
        result = (*v86)(v44, v4);
      }

      if (v42 == ++v43)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_48:

  v52 = *(v84 + 40);
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = *(v83 + 28);
    v55 = v52 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
    v56 = *(v79 + 72);
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      v58 = v89;
      sub_215489C80(v55, v89, type metadata accessor for ResolvedCollaboratorStatus);
      v59 = *(v58 + v54);

      result = sub_215489CE8(v58, type metadata accessor for ResolvedCollaboratorStatus);
      v60 = *(v59 + 16);
      v61 = *(v57 + 2);
      v62 = v61 + v60;
      if (__OFADD__(v61, v60))
      {
        goto LABEL_83;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v62 <= *(v57 + 3) >> 1)
      {
        if (!*(v59 + 16))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v61 <= v62)
        {
          v63 = v61 + v60;
        }

        else
        {
          v63 = v61;
        }

        result = sub_215317988(result, v63, 1, v57);
        v57 = result;
        if (!*(v59 + 16))
        {
LABEL_50:

          if (v60)
          {
            goto LABEL_84;
          }

          goto LABEL_51;
        }
      }

      if ((*(v57 + 3) >> 1) - *(v57 + 2) < v60)
      {
        goto LABEL_86;
      }

      swift_arrayInitWithCopy();

      if (v60)
      {
        v64 = *(v57 + 2);
        v40 = __OFADD__(v64, v60);
        v65 = v64 + v60;
        if (v40)
        {
          goto LABEL_88;
        }

        *(v57 + 2) = v65;
      }

LABEL_51:
      v55 += v56;
      if (!--v53)
      {
        goto LABEL_66;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_66:
  v66 = *(v57 + 2);
  if (!v66)
  {
    v68 = MEMORY[0x277D84F90];
LABEL_78:

    v77 = sub_215355370(v93, v68);

    v78 = sub_215355584(*(v82 + 48), *(v84 + 48));
    return v81 & v80 & v77 & v78 & 1;
  }

  v67 = 0;
  v88 = (v5 + 8);
  v92 = (v5 + 32);
  v68 = MEMORY[0x277D84F90];
  v69 = v94;
  v70 = v85;
  v91 = v66;
  v89 = v5 + 16;
  while (v67 < *(v57 + 2))
  {
    v71 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v72 = *(v5 + 72);
    (*(v5 + 16))(v70, &v57[v71 + v72 * v67], v69);
    if (sub_2154A22DC())
    {
      v73 = *v92;
      (*v92)(v90, v70, v69);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v68;
      if ((v74 & 1) == 0)
      {
        sub_21531B4C8(0, *(v68 + 16) + 1, 1);
        v70 = v85;
        v68 = v95;
      }

      v76 = *(v68 + 16);
      v75 = *(v68 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_21531B4C8(v75 > 1, v76 + 1, 1);
        v70 = v85;
        v68 = v95;
      }

      *(v68 + 16) = v76 + 1;
      v69 = v94;
      result = v73(v68 + v71 + v76 * v72, v90, v94);
      v66 = v91;
    }

    else
    {
      result = (*v88)(v70, v69);
    }

    if (v66 == ++v67)
    {
      goto LABEL_78;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_215488480(void *a1, uint64_t a2)
{
  v3 = [a1 textViews];
  sub_2151A6C9C(0, &unk_2811996C0);
  sub_21533FBE4(&qword_2811996B8, &unk_2811996C0);
  v4 = sub_2154A20CC();

  v5 = sub_215364D38(v4);

  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    v7 = *(v5 + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_16:
  }

  result = sub_2154A2C8C();
  v7 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x216069960](i, v5);
      }

      else
      {
        v12 = *(v5 + 8 * i + 32);
      }

      v11 = v12;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = a2;
        v16 = *(a2 + 32);
        v17 = v11;

        v18 = sub_215386A54();
        v19 = *&v18[OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers];
        *&v18[OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers] = v16;

        v21 = sub_2153555FC(v20, v19);

        if (!v21)
        {
          sub_21538EC84();
          [v18 ic_setNeedsDisplay];
        }

        a2 = v15;
        v9 = *(v15 + 40);
        v10 = v17;
        sub_2153AFAD4(v9);
        type metadata accessor for ResolvedCollaboratorStatus(0);
        v11 = sub_2154A1F3C();
        swift_beginAccess();
        objc_setAssociatedObject(v14, &unk_27CA5BD18, v11, 1);
        swift_endAccess();
      }
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2154887E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_215488828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_215488884(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2154A2C8C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21531B7D4(0, v2 & ~(v2 >> 63), 0);
    v3 = v41;
    if (v34)
    {
      v4 = sub_2154A2C2C();
    }

    else
    {
      v4 = sub_2154A2BFC();
      v5 = *(v1 + 36);
    }

    v36 = v4;
    v37 = v5;
    v38 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v36;
        v10 = v37;
        v11 = v38;
        v12 = v1;
        sub_2153B3E0C(v36, v37, v38, v1);
        v14 = v13;
        sub_215480AAC(v13, v39);

        v41 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21531B7D4((v15 > 1), v16 + 1, 1);
          v3 = v41;
        }

        *(v3 + 16) = v16 + 1;
        v17 = v3 + 56 * v16;
        v18 = v39[0];
        v19 = v39[1];
        v20 = v39[2];
        *(v17 + 80) = v40;
        *(v17 + 48) = v19;
        *(v17 + 64) = v20;
        *(v17 + 32) = v18;
        if (v34)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          v1 = v12;
          if (sub_2154A2C4C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EB50);
          v7 = sub_2154A20EC();
          sub_2154A2D0C();
          v7(v35, 0);
          if (v6 == v33)
          {
LABEL_32:
            sub_215384B50(v36, v37, v38);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v12;
          v21 = 1 << *(v12 + 32);
          if (v9 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v9 >> 6;
          v23 = *(v32 + 8 * (v9 >> 6));
          if (((v23 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v12 + 36) != v10)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v9 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_215384B50(v9, v10, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_215384B50(v9, v10, 0);
          }

LABEL_31:
          v30 = *(v12 + 36);
          v36 = v21;
          v37 = v30;
          v38 = 0;
          v2 = v33;
          if (v6 == v33)
          {
            goto LABEL_32;
          }
        }
      }

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

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_215488BE8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1 & 0xC000000000000001;

  v8 = 0;
  v48 = a2;
  v49 = a1;
  v9 = (a2 + 40);
  v47 = a1 >> 62;
  for (i = v7; ; v7 = i)
  {
    if (v47)
    {
      if (v8 == sub_2154A2C8C())
      {
        goto LABEL_25;
      }
    }

    else if (v8 == *(v7 + 16))
    {
      goto LABEL_25;
    }

    if (!v46)
    {
      break;
    }

    v17 = MEMORY[0x216069960](v8, v49);
LABEL_9:
    v18 = v17;
    v19 = *(v48 + 16);
    if (v8 == v19)
    {

LABEL_25:
    }

    if (v8 >= v19)
    {
      goto LABEL_27;
    }

    v20 = v9[4];
    v21 = v9[5];
    v23 = v9[2];
    v22 = v9[3];
    v24 = v9[1];
    v25 = *v9;
    v26 = *(v9 - 1);

    if (!v18)
    {
      goto LABEL_25;
    }

    v51 = v23;
    v50 = v8;
    v27 = *a4;
    v29 = sub_2153B1320(v18);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_28;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a3 & 1) == 0)
      {
        sub_2153DD814();
      }
    }

    else
    {
      sub_2153DBD78(v32, a3 & 1);
      v34 = sub_2153B1320(v18);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_30;
      }

      v29 = v34;
    }

    v36 = *a4;
    if (v33)
    {
      v10 = (v36[7] + 56 * v29);
      v11 = *v10;
      v43 = v10[1];
      v44 = 56 * v29;
      v12 = v10[2];
      v13 = v10[4];
      v42 = v10[3];
      v15 = v10[5];
      v14 = v10[6];

      v16 = (v36[7] + v44);
      *v16 = v11;
      v16[1] = v43;
      v16[2] = v12;
      v16[3] = v42;
      v16[4] = v13;
      v16[5] = v15;
      v16[6] = v14;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      *(v36[6] + 8 * v29) = v18;
      v37 = (v36[7] + 56 * v29);
      *v37 = v26;
      v37[1] = v25;
      v37[2] = v24;
      v37[3] = v51;
      v37[4] = v22;
      v37[5] = v20;
      v37[6] = v21;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_29;
      }

      v36[2] = v40;
    }

    v9 += 7;
    v8 = v50 + 1;
    a3 = 1;
  }

  if (v8 < *(v7 + 16))
  {
    v17 = *(v49 + 8 * v8 + 32);
    goto LABEL_9;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_2151A6C9C(0, &qword_281199568);
  result = sub_2154A300C();
  __break(1u);
  return result;
}

uint64_t sub_215488F54(uint64_t a1)
{
  v2 = sub_21549E70C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v114 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = &v91 - v6;
  v7 = sub_2154A22EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v107 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v111 = &v91 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  v15 = sub_2154A22AC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v109 = *(v8 + 16);
  v110 = v8 + 16;
  v109(v14, a1, v7, v20);
  v108 = *(v8 + 88);
  if (v108(v14, v7) != *MEMORY[0x277D36410])
  {
    (*(v8 + 8))(v14, v7);
    return MEMORY[0x277D84F90];
  }

  v104 = *(v8 + 96);
  v105 = v8 + 96;
  v104(v14, v7);
  v106 = *v14;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3E8);
  (*(v16 + 32))(v22, &v14[*(v23 + 48)], v15);
  (*(v16 + 16))(v18, v22, v15);
  if ((*(v16 + 88))(v18, v15) != *MEMORY[0x277D363F8])
  {
    v46 = *(v16 + 8);
    v46(v22, v15);
    v46(v18, v15);
    return MEMORY[0x277D84F90];
  }

  v98 = v8 + 88;
  v103 = v22;
  v24 = v15;
  v25 = v16;
  v26 = *(v16 + 96);
  v101 = v24;
  v26(v18);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B3F0);
  v28 = *(v27 + 48);
  v29 = *&v18[*(v27 + 64)];
  v30 = *(v3 + 32);
  v30(v113, v18, v2);
  v102 = v2;
  v30(v114, &v18[v28], v2);
  v31 = *&v112[OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController];
  v32 = [v31 note];
  v33 = [v32 textStorage];

  if (!v33)
  {

    v38 = v25;
LABEL_14:
    v47 = *(v3 + 8);
    v48 = v102;
    v47(v114, v102);
    v47(v113, v48);
    (*(v38 + 8))(v103, v101);
    return MEMORY[0x277D84F90];
  }

  v100 = v29;
  v99 = v3;
  v34 = [v33 textViews];

  sub_2151A6C9C(0, &unk_2811996C0);
  sub_21533FBE4(&qword_2811996B8, &unk_2811996C0);
  v35 = sub_2154A20CC();

  v36 = sub_2153B1BB8(v35);

  if (!v36)
  {

    v3 = v99;
    v38 = v25;
    goto LABEL_14;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  v38 = v25;
  if (!v37)
  {

    v3 = v99;
    goto LABEL_14;
  }

  v39 = v37;
  v40 = [v31 &selRef_layoutViewForInlineTextAttachment_atCharacterIndex_];
  v41 = [v40 textStorage];

  v42 = v99;
  if (!v41)
  {

    v50 = *(v42 + 8);
    v51 = v102;
    v50(v114, v102);
    v50(v113, v51);
    (*(v38 + 8))(v103, v101);
    v117 = 0u;
    v118 = 0u;
LABEL_25:
    sub_2151ADCD8(&v117, &qword_27CA5ABC0);
    return MEMORY[0x277D84F90];
  }

  v43 = v39;
  v44 = [v41 attribute:*MEMORY[0x277D74060] atIndex:v106 effectiveRange:0];

  v45 = v114;
  if (v44)
  {
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    v115 = 0u;
    v116 = 0u;
  }

  v117 = v115;
  v118 = v116;
  v52 = v103;
  if (!*(&v116 + 1))
  {

    v57 = *(v42 + 8);
    v58 = v102;
    v57(v45, v102);
    v57(v113, v58);
    (*(v38 + 8))(v52, v101);
    goto LABEL_25;
  }

  sub_2151A6C9C(0, &qword_27CA5B3D8);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_27:

    v59 = v45;
    v60 = *(v42 + 8);
LABEL_50:
    v88 = v102;
    v60(v59, v102);
    v60(v113, v88);
    (*(v38 + 8))(v52, v101);
    return MEMORY[0x277D84F90];
  }

  v53 = v115;
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v54 = *&v112[OBJC_IVAR___ICAuthorHighlightsUpdater_textLayoutManager];
    if (!v54)
    {

      v73 = 0;
LABEL_49:

      v60 = *(v42 + 8);
      v59 = v114;
      goto LABEL_50;
    }

    v112 = v53;
    v55 = [v54 tableViewControllerForAttachment:v53 createIfNeeded:0];
    if (v55)
    {
      v56 = v55;
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v61 = [v43 icLayoutManager];
  v112 = v53;
  v56 = [v61 viewControllerForTextAttachmentNoCreate_];

  if (!v56)
  {
LABEL_33:

LABEL_48:
    v73 = 0;
    v53 = v112;
    goto LABEL_49;
  }

  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55)
  {

    goto LABEL_48;
  }

LABEL_30:
  v62 = v55;
  v63 = v56;
  v64 = [v62 table];
  v65 = v62;
  v66 = v64;
  v94 = v65;

  v67 = sub_21549E6CC();
  v68 = [v66 textStorageForColumn_];

  v69 = v68;
  if (!v68)
  {

    v53 = v112;
    v73 = v94;
    goto LABEL_49;
  }

  v70 = sub_21549E6CC();
  v71 = [v68 characterRangeForRowID_];

  v72 = sub_21549E0EC();
  v106 = v71;
  if (v71 == v72)
  {

    goto LABEL_27;
  }

  v74 = *(v100 + 16);
  if (v74)
  {
    v92 = v69;
    v93 = v36;
    v75 = v100 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v76 = *(v8 + 72);
    v77 = (v8 + 32);
    v78 = *MEMORY[0x277D36408];
    v97 = (v8 + 8);
    v79 = MEMORY[0x277D84F90];
    v80 = v107;
    v96 = v76;
    v95 = v78;
    while (1)
    {
      v81 = v111;
      (v109)(v111, v75, v7);
      (*v77)(v80, v81, v7);
      if (v108(v80, v7) == v78)
      {
        result = (v104)(v80, v7);
        v82 = &v106[*v80];
        if (__OFADD__(v106, *v80))
        {
          __break(1u);
          return result;
        }

        v83 = *(v80 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_215317AC0(0, *(v79 + 2) + 1, 1, v79);
        }

        v84 = v79;
        v86 = *(v79 + 2);
        v85 = *(v79 + 3);
        if (v86 >= v85 >> 1)
        {
          v84 = sub_215317AC0((v85 > 1), v86 + 1, 1, v79);
        }

        *(v84 + 2) = v86 + 1;
        v79 = v84;
        v87 = &v84[16 * v86];
        *(v87 + 4) = v82;
        *(v87 + 5) = v83;
        v76 = v96;
        v78 = v95;
      }

      else
      {
        (*v97)(v80, v7);
      }

      v75 += v76;
      if (!--v74)
      {

        v42 = v99;
        v36 = v93;
        goto LABEL_53;
      }
    }
  }

  v79 = MEMORY[0x277D84F90];
LABEL_53:

  v89 = *(v42 + 8);
  v90 = v102;
  v89(v114, v102);
  v89(v113, v90);
  (*(v38 + 8))(v103, v101);
  return v79;
}

uint64_t sub_215489C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_215489CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_215489D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedCollaboratorStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id AttributionsUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AttributionsUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_215489F88(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v4 = sub_21549E83C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  result = [v2 collectionView];
  if (!result)
  {
    goto LABEL_48;
  }

  v18 = result;
  v19 = [result indexPathsForSelectedItems];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = sub_2154A1F4C();

  if (!*(v20 + 16))
  {
LABEL_9:

LABEL_10:
    if (v3)
    {
      return 0;
    }

    MEMORY[0x216065370](0, 0);
    v23 = &selRef_begin;
    goto LABEL_25;
  }

  v43 = v8;
  (*(v5 + 16))(v14, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  v8 = (v5 + 32);
  v42 = *(v5 + 32);
  v42(v16, v14, v4);
  result = [v2 collectionView];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v21 = result;
  v22 = [result numberOfItemsInSection_];

  result = sub_21549E7EC();
  if (v3)
  {
    v3 = result - 1;
    v23 = &selRef_begin;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_9;
  }

  v3 = result + 1;
  v23 = &selRef_begin;
  if (__OFADD__(result, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_14:
  if (v3 < v22)
  {
    v24 = sub_21549E82C();
    v25 = v24;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v26 = v3;
LABEL_24:
      MEMORY[0x216065390](v26, v25);
      (*(v5 + 8))(v16, v4);
      v42(v16, v11, v4);
      v8 = v43;
LABEL_25:
      result = [v2 v23[285]];
      if (!result)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v29 = result;
      v30 = sub_21549E7BC();
      [v29 selectItemAtIndexPath:v30 animated:0 scrollPosition:1];

      if (qword_27CA59960 != -1)
      {
        swift_once();
      }

      if (byte_27CA5EBE9 != 1)
      {
        (*(v5 + 8))(v16, v4);
        return 1;
      }

      sub_21548D9B4();
      (*(v5 + 16))(v8, v16, v4);
      result = sub_21549E80C();
      if (!__OFSUB__(*v31, 1))
      {
        --*v31;
        (result)(v44, 0);
        result = [v2 v23[285]];
        if (result)
        {
          v32 = result;
          v33 = sub_21549E7BC();
          v34 = [v32 cellForItemAtIndexPath_];

          if (v34)
          {
            type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
            v35 = swift_dynamicCastClass();
            if (v35)
            {
              [*(v35 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView) setHidden_];
            }
          }

          result = [v2 v23[285]];
          if (result)
          {
            v36 = result;
            v37 = sub_21549E7BC();
            v38 = [v36 cellForItemAtIndexPath_];

            if (v38)
            {
              type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
              v39 = swift_dynamicCastClass();
              if (v39)
              {
                [*(v39 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView) setHidden_];
                v40 = *(v5 + 8);
                v40(v8, v4);
                v40(v16, v4);

                return 1;
              }
            }

            v41 = *(v5 + 8);
            v41(v8, v4);
            v41(v16, v4);
            return 1;
          }

          goto LABEL_52;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_45;
    }

    if (v24)
    {
      result = sub_21549E82C();
      v25 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_23:
      v26 = 0;
      goto LABEL_24;
    }

LABEL_40:
    (*(v5 + 8))(v16, v4);
    return 0;
  }

  result = [v2 v23[285]];
  if (result)
  {
    v27 = result;
    v28 = [result numberOfSections];

    result = sub_21549E82C();
    v25 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v25 < v28)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_21548A58C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v14 = *(a4 + 32);
    a2(&v13, &v15, &v14);
    if (!v4)
    {
      v9 = (a4 + 33);
      for (i = v6 - 1; ; --i)
      {
        v5 = v13;
        v15 = v13;
        if (!i)
        {
          break;
        }

        v11 = *v9++;
        v14 = v11;
        a2(&v13, &v15, &v14);
      }
    }
  }

  return v5;
}

uint64_t sub_21548A634()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5EB80);
  __swift_project_value_buffer(v0, qword_27CA5EB80);
  return sub_21549F0CC();
}

id sub_21548A680()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  qword_27CA5EB98 = result;
  return result;
}

void sub_21548A6B4()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74410];
  v2 = *MEMORY[0x277D76918];
  v3 = [v0 ic:v2 preferredFontForStyle:v1 withFontWeight:?];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2154BDB20;
    v5 = objc_opt_self();
    *(v4 + 32) = [v5 labelColor];
    sub_2151A6C9C(0, &qword_2811994C0);
    v6 = sub_2154A1F3C();

    v7 = objc_opt_self();
    v8 = [v7 configurationWithPaletteColors_];

    if (qword_2811997A8 != -1)
    {
      swift_once();
    }

    v9 = [v7 configurationWithFont:qword_28119B1E0 scale:2];
    v10 = [v8 configurationByApplyingConfiguration_];

    v11 = [v5 secondarySystemFillColor];
    v12 = [v5 secondarySystemFillColor];
    v13 = [v5 secondarySystemFillColor];
    v14 = [v0 ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74418] withFontWeight:?];
    if (v14)
    {
      xmmword_27CA64A00 = xmmword_2154C6890;
      qword_27CA64A10 = 0x4034000000000000;
      byte_27CA64A18 = 0;
      xmmword_27CA64A20 = xmmword_2154C68A0;
      qword_27CA64A30 = 0x4034000000000000;
      unk_27CA64A38 = v3;
      LOWORD(xmmword_27CA64A40) = 1;
      *(&xmmword_27CA64A40 + 8) = xmmword_2154C6870;
      *&algn_27CA64A50[8] = xmmword_2154C6880;
      qword_27CA64A68 = v10;
      unk_27CA64A70 = v11;
      qword_27CA64A78 = v12;
      unk_27CA64A80 = v13;
      qword_27CA64A88 = v14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_21548A964()
{
  if ([objc_opt_self() ic_isVision])
  {
    if (qword_27CA59958 != -1)
    {
      swift_once();
    }

    v0 = &xmmword_27CA64A00;
  }

  else
  {
    if (qword_2811997A0 != -1)
    {
      swift_once();
    }

    v0 = &xmmword_28119B150;
  }

  v1 = v0[5];
  *v25 = v0[4];
  *&v25[16] = v1;
  v2 = v0[7];
  *&v25[32] = v0[6];
  *&v25[48] = v2;
  *&v25[64] = v0[8];
  v3 = v0[3];
  v23 = v0[2];
  v24 = v3;
  v4 = v0[1];
  v22[0] = *v0;
  v22[1] = v4;
  v5 = *&v25[72];
  v19 = *&v25[40];
  v20 = *&v25[56];
  v17 = *&v25[8];
  v18 = *&v25[24];
  v6 = v25[1];
  v7 = v25[0];
  v8 = *(&v3 + 1);
  v10 = *(&v23 + 1);
  v9 = v3;
  v11 = v23;
  v12 = BYTE8(v4);
  v14 = *(&v22[0] + 1);
  v13 = v4;
  v15 = *&v22[0];
  sub_21548F0E8(v22, v21);
  qword_27CA5EBA8 = v15;
  qword_27CA5EBB0 = v14;
  qword_27CA5EBB8 = v13;
  byte_27CA5EBC0 = v12;
  qword_27CA5EBC8 = v11;
  qword_27CA5EBD0 = v10;
  qword_27CA5EBD8 = v9;
  qword_27CA5EBE0 = v8;
  byte_27CA5EBE8 = v7;
  byte_27CA5EBE9 = v6;
  *&qword_27CA5EBF0 = v17;
  *&qword_27CA5EC00 = v18;
  result = v20;
  *&qword_27CA5EC10 = v19;
  *&qword_27CA5EC20 = v20;
  qword_27CA5EC30 = v5;
  return result;
}

id sub_21548AAF8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 widthAnchor];
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  v2 = [v1 constraintEqualToConstant_];

  [v2 setActive_];
  v3 = [v0 heightAnchor];
  v4 = [v3 constraintEqualToConstant_];

  [v4 setActive_];
  [v0 setContentMode_];

  return v0;
}

uint64_t sub_21548AC4C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_21549E93C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_linkSuggestion;
  swift_beginAccess();
  sub_21548EFCC(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_2151ADCD8(v4, &qword_27CA5B1A8);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_21549E8FC();
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView);
    if (qword_27CA59960 != -1)
    {
      swift_once();
    }

    v13 = qword_27CA5EC10;
    v14 = sub_2154A1D2C();

    v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

    [v12 setImage_];
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView);
    if (qword_27CA59948 != -1)
    {
      v24 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView);
      swift_once();
      v16 = v24;
    }

    [v16 setImage_];
  }

  v17 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_titleLabel);
  sub_21549E8DC();
  v18 = sub_2154A1D2C();

  [v17 setText_];

  sub_21549E92C();
  if (v19)
  {
    if ((sub_21549E8CC() & 1) == 0)
    {
      v22 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel);
      v23 = sub_2154A1D2C();

      [v22 setText_];

      return (*(v6 + 8))(v8, v5);
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel);
  v21 = sub_2154A1D2C();
  [v20 setText_];

  return (*(v6 + 8))(v8, v5);
}

id sub_21548AFDC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView;
  *&v4[v10] = sub_21548AAF8();
  v11 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setLineBreakMode_];
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  [v12 setFont_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74418] withFontWeight:?];
  [v14 setFont_];

  v16 = [objc_opt_self() secondaryLabelColor];
  [v14 setTextColor_];

  [v14 setFont_];
  *&v4[v13] = v14;
  v17 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v18 setBackgroundColor_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setHidden_];
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_linkSuggestion;
  v20 = sub_21549E93C();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21548B298();

  return v21;
}

void sub_21548B298()
{
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  if (byte_27CA5EBE8 == 1)
  {
    [v0 ic_applyRoundedCorners];
  }

  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v1 setBackgroundColor_];
  v59 = v1;
  [v0 setSelectedBackgroundView_];
  v2 = [v0 contentView];
  v3 = *&v0[OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView];
  [v2 addSubview_];

  v4 = [v0 contentView];
  v5 = *&v0[OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_titleLabel];
  [v4 addSubview_];

  v6 = [v0 contentView];
  v7 = *&v0[OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel];
  [v6 addSubview_];

  v8 = [v0 contentView];
  v60 = *&v0[OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView];
  [v8 addSubview_];

  v9 = [objc_allocWithZone(MEMORY[0x277D755A0]) initWithTarget:v0 action:sel_handleHoverWithRecognizer_];
  [v0 addGestureRecognizer_];

  LODWORD(v10) = 1144750080;
  [v7 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v11];
  if (byte_27CA5EBC0 == 1)
  {
    v12 = sub_2154A1D2C();
    v13 = [objc_opt_self() colorNamed_];

    if (v13)
    {
      [v0 setBackgroundColor_];
    }
  }

  if (qword_281199740 != -1)
  {
    swift_once();
  }

  if (byte_281199749 == 1)
  {
    v14 = [objc_opt_self() clearColor];
    [v0 setBackgroundColor_];
  }

  v15 = *&qword_27CA5EBD8 + *&qword_27CA5EBB0 + *&qword_27CA5EBA8;
  v16 = *&qword_27CA5EBF8;
  v58 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2154C68B0;
  v18 = [v3 leadingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:*&qword_27CA5EBB0];
  *(v17 + 32) = v21;
  v22 = [v3 centerYAnchor];
  v23 = [v0 contentView];
  v24 = [v23 centerYAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v17 + 40) = v25;
  v26 = [v5 leadingAnchor];
  v27 = [v3 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:*&qword_27CA5EBA8];

  *(v17 + 48) = v28;
  v29 = [v5 centerYAnchor];
  v30 = [v0 contentView];
  v31 = [v30 centerYAnchor];

  v32 = [v29 constraintEqualToAnchor_];
  *(v17 + 56) = v32;
  v33 = [v7 trailingAnchor];
  v34 = [v0 contentView];
  v35 = [v34 trailingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35 constant:-*&qword_27CA5EBB8];
  *(v17 + 64) = v36;
  v37 = [v7 centerYAnchor];
  v38 = [v0 contentView];
  v39 = [v38 centerYAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v17 + 72) = v40;
  v41 = [v7 leadingAnchor];
  v42 = [v5 trailingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:*&qword_27CA5EBA8];

  *(v17 + 80) = v43;
  v44 = [v60 heightAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v17 + 88) = v45;
  v46 = [v60 bottomAnchor];
  v47 = [v0 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v17 + 96) = v49;
  v50 = [v60 trailingAnchor];
  v51 = [v0 contentView];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v17 + 104) = v53;
  v54 = [v60 widthAnchor];
  v55 = [v0 contentView];
  v56 = [v55 widthAnchor];

  v57 = [v54 constraintEqualToAnchor:v56 constant:-v15];
  *(v17 + 112) = v57;
  sub_2151A6C9C(0, &qword_2811995A0);
  v61 = sub_2154A1F3C();

  [v58 activateConstraints_];
}

uint64_t sub_21548BC38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECA8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-1] - v3;
  v5 = sub_21549F18C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-1] - v10;
  sub_21549F15C();
  v12 = sub_21549F13C();
  v19[3] = v12;
  v19[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, a1, v12);
  sub_21549F17C();
  v14 = *(v6 + 8);
  v14(v8, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  if (byte_27CA5EBA0 == 1)
  {
    if (qword_27CA59960 != -1)
    {
      swift_once();
    }

    v15 = qword_27CA5EC18;
    sub_21549F14C();
  }

  if (qword_281199740 != -1)
  {
    swift_once();
  }

  if (byte_281199749 == 1)
  {
    v16 = [objc_opt_self() clearColor];
    sub_21549F14C();
  }

  (*(v6 + 16))(v4, v11, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x2160690C0](v4);
  return (v14)(v11, v5);
}

void sub_21548C0A4()
{
  sub_21548E978(319, &unk_281199730, MEMORY[0x277D359B8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21548C164()
{
  type metadata accessor for iOSLinkAcceleratorCollectionViewSeparatorCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECC8);
  result = sub_2154A1D9C();
  qword_27CA64A90 = result;
  *algn_27CA64A98 = v1;
  return result;
}

void sub_21548C308(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECB0);
  v5 = *(v45 - 8);
  v6 = MEMORY[0x28223BE20](v45);
  v42 = v7;
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECB8);
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v47);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_sizingCell;
  v46 = type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
  *&v2[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource] = 0;
  v16 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_currentSuggestionsContainer;
  v17 = sub_21549F8CC();
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  *&v2[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController] = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v19 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_21548ED90;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21548EA9C;
  aBlock[3] = &block_descriptor_39;
  v20 = _Block_copy(aBlock);
  v41 = a1;
  v21 = [v19 initWithSectionProvider_];
  _Block_release(v20);

  v48.receiver = v2;
  v48.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v48, sel_initWithCollectionViewLayout_, v21);

  v23 = v22;
  v24 = [v23 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v25 = v24;
  [v24 setScrollEnabled_];

  *(swift_allocObject() + 16) = v23;
  sub_21549E93C();
  v26 = v23;
  sub_2154A230C();
  if (![v26 collectionView])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = *(v9 + 16);
  v46 = v14;
  v28 = v47;
  v27(v12, v14, v47);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v12, v28);
  v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECC0));
  v32 = sub_21549F24C();
  v33 = v45;
  if (qword_27CA59968 != -1)
  {
    swift_once();
  }

  type metadata accessor for iOSLinkAcceleratorCollectionViewSeparatorCell();

  v34 = v44;
  sub_2154A231C();
  v35 = v43;
  (*(v5 + 16))(v43, v34, v33);
  v36 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v37 = swift_allocObject();
  (*(v5 + 32))(v37 + v36, v35, v33);
  sub_21549F25C();
  v38 = [v26 collectionView];

  if (v38)
  {
    [v38 setDataSource_];

    (*(v5 + 8))(v34, v33);
    (*(v9 + 8))(v46, v47);
    v39 = *&v26[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource];
    *&v26[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource] = v32;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_21548C91C(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_21549E93C();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a3, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_linkSuggestion;
  swift_beginAccess();
  sub_21548EF5C(v9, &a1[v12]);
  swift_endAccess();
  sub_21548AC4C();
  sub_2151ADCD8(v9, &qword_27CA5B1A8);
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  if (byte_27CA5EBE9 != 1)
  {
    goto LABEL_15;
  }

  v13 = sub_21549E82C();
  v14 = [a4 collectionView];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 numberOfSections];

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = sub_21549E81C();
  v19 = [a4 collectionView];
  if (!v19)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 numberOfItemsInSection_];

  if (__OFSUB__(v21, 1))
  {
    goto LABEL_21;
  }

  v23 = v13 != v17 || v18 >= v21 - 1;
  [*&a1[OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView] setHidden_];
LABEL_15:
  if (qword_281199740 != -1)
  {
    swift_once();
  }

  if (byte_281199749 == 1)
  {
    v24 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_21548CC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_21549E93C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
  v9 = sub_2154A232C();
  sub_2151ADCD8(v6, &qword_27CA5B1A8);
  return v9;
}

id sub_21548CD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CA59968 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a2 = v5;
    a3 = v6;
  }

  v3 = qword_27CA64A90 == a2 && *algn_27CA64A98 == a3;
  if (!v3 && (sub_2154A2FAC() & 1) == 0 || sub_21549E7EC())
  {
    return [objc_allocWithZone(MEMORY[0x277D75298]) init];
  }

  type metadata accessor for iOSLinkAcceleratorCollectionViewSeparatorCell();
  return sub_2154A233C();
}

void *sub_21548CE40@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_21548CF50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  v6 = [v4 estimatedDimension_];
  v7 = objc_opt_self();
  v8 = [v7 sizeWithWidthDimension:v5 heightDimension:v6];

  v30 = v8;
  v9 = [objc_opt_self() itemWithLayoutSize_];
  v10 = [v4 fractionalWidthDimension_];
  v11 = [v4 estimatedDimension_];
  v12 = [v7 sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2154BDB20;
  *(v14 + 32) = v9;
  sub_2151A6C9C(0, &qword_27CA5ECD0);
  v31 = v9;
  v15 = sub_2154A1F3C();

  v16 = [v13 verticalGroupWithLayoutSize:v12 subitems:v15];

  v17 = [objc_opt_self() sectionWithGroup_];
  if (((*((*MEMORY[0x277D85000] & *a3) + 0x138))() & 1) != 0 && !a1)
  {
    v18 = [v4 fractionalWidthDimension_];
    v19 = [v4 absoluteDimension_];
    v20 = [v7 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = qword_27CA59968;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_2154A1D2C();
    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:5];

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2154BDB20;
    *(v25 + 32) = v24;
    sub_2151A6C9C(0, &qword_27CA5ECD8);
    v26 = v24;
    v27 = sub_2154A1F3C();

    [v17 setBoundarySupplementaryItems_];
  }

  if (byte_27CA5EBE8 == 1)
  {
    [v17 setContentInsets_];
  }

  return v17;
}

void sub_21548D3CC()
{
  v1 = sub_21549E93C();
  v31 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECE0);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_21549F8CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_currentSuggestionsContainer;
    swift_beginAccess();
    if (!(*(v8 + 48))(v0 + v12, 1, v7))
    {
      (*(v8 + 16))(v10, v0 + v12, v7);
      v30 = v11;
      v17 = sub_21549F86C();
      (*(v8 + 8))(v10, v7);
      sub_21548F03C();
      sub_21548F090();
      v18 = sub_21549F20C();
      v34 = MEMORY[0x277D84F90];
      if (((*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_linkAcceleratorViewController)) + 0x138))(v18) & 1) != 0 && (v19 = *(v17 + 16)) != 0)
      {
        v20 = (*(v31 + 80) + 32) & ~*(v31 + 80);
        v28 = *(v31 + 16);
        v29 = v17;
        v28(v3, v17 + v20, v1);
        sub_21549F1DC();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A608);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_2154BDB50;
        v28((v21 + v20), v3, v1);
        v33 = 0;
        sub_21549F1BC();

        if (v19 == 1)
        {
          (*(v31 + 8))(v3, v1);
        }

        else
        {
          if (*(v29 + 16) < v19)
          {
            goto LABEL_28;
          }

          sub_21547E634(v29, v29 + v20, 1, (2 * v19) | 1);
          (*(v31 + 8))(v3, v1);
        }
      }

      else
      {
        sub_21549F1DC();
        sub_21547E508(v17);
      }

      v22 = v34;
      v23 = *(v34 + 16);
      if (!v23)
      {
LABEL_24:

        v27 = v30;
        sub_21549F26C();

        (*(v32 + 8))(v6, v4);
        return;
      }

      if (_UISolariumEnabled())
      {
        if (v23 < 6)
        {
          goto LABEL_23;
        }
      }

      else if (v23 <= 6)
      {
LABEL_23:
        v33 = 1;
        sub_21549F1BC();
        goto LABEL_24;
      }

      v24 = _UISolariumEnabled();
      v25 = 5;
      if (!v24)
      {
        v25 = 6;
      }

      v26 = *(v22 + 16);
      if (v26 >= v25)
      {
        if (v26 != v25)
        {
          sub_21536496C(v22, v22 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), 0, (2 * v25) | 1);
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }
  }

  if (qword_27CA59940 != -1)
  {
    swift_once();
  }

  v13 = sub_21549F11C();
  __swift_project_value_buffer(v13, qword_27CA5EB80);
  v14 = sub_21549F0FC();
  v15 = sub_2154A226C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2151A1000, v14, v15, "No suggestions available at currentSuggestionsContainer.didSet", v16, 2u);
    MEMORY[0x21606B520](v16, -1, -1);
  }
}

uint64_t sub_21548D9B4()
{
  v1 = v0;
  v2 = sub_21549E83C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECE0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *&v0[OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource];
  if (v11)
  {
    v12 = result;
    v26 = v11;
    sub_21549F27C();
    v13 = v12;
    v14 = v10;
    result = sub_21549F1FC();
    v31 = *(result + 16);
    if (v31)
    {
      v25 = v7;
      v15 = 0;
      v29 = v13;
      v30 = result + 32;
      v16 = (v3 + 8);
      v27 = result;
      v28 = v14;
      while (1)
      {
        if (v15 >= *(result + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v33 = *(v30 + v15);
        result = sub_21549F1CC();
        if (result < 0)
        {
          goto LABEL_20;
        }

        v18 = result;
        if (result)
        {
          break;
        }

LABEL_4:
        ++v15;
        v17 = v28;
        result = v27;
        if (v15 == v31)
        {
          v13 = v29;

          v7 = v25;
          goto LABEL_17;
        }
      }

      v19 = 0;
      v32 = result - 1;
      while (1)
      {
        result = [v1 collectionView];
        if (!result)
        {
          break;
        }

        v20 = result;
        MEMORY[0x216065390](v19, v15);
        v21 = sub_21549E7BC();
        (*v16)(v5, v2);
        v22 = [v20 cellForItemAtIndexPath_];

        if (v22)
        {
          type metadata accessor for iOSLinkAcceleratorCollectionViewCell(0);
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            [*(v23 + OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView) setHidden_];
          }
        }

        if (v18 == ++v19)
        {
          goto LABEL_4;
        }
      }

LABEL_21:
      __break(1u);
    }

    else
    {

      v17 = v10;
LABEL_17:

      return (*(v7 + 8))(v17, v13);
    }
  }

  return result;
}

double sub_21548DE08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v80 = &v61 - v5;
  v6 = sub_21549E93C();
  v69 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECE0);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  v68 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_dataSource);
  if (!v16)
  {
    if (qword_27CA59940 == -1)
    {
LABEL_32:
      v56 = sub_21549F11C();
      __swift_project_value_buffer(v56, qword_27CA5EB80);
      v57 = sub_21549F0FC();
      v58 = sub_2154A226C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2151A1000, v57, v58, "No data source was available when preferredSize was called. Returning zero size.", v59, 2u);
        MEMORY[0x21606B520](v59, -1, -1);
      }

      return 0.0;
    }

LABEL_42:
    swift_once();
    goto LABEL_32;
  }

  v84 = v9;
  v62 = v13;
  v17 = v16;
  sub_21549F27C();
  v18 = sub_21549F1FC();
  MEMORY[0x28223BE20](v18);
  *(&v61 - 2) = v15;
  v19 = sub_21548A58C(0, sub_21548F120, (&v61 - 4), v18);

  if (!v19)
  {

    (*(v62 + 8))(v15, v12);
    return 0.0;
  }

  v20 = sub_21549F1FC();
  v21 = v20;
  v71 = *(v20 + 16);
  if (v71)
  {
    v22 = 0;
    v63 = OBJC_IVAR____TtC11NotesEditor42iOSLinkAcceleratorCollectionViewController_sizingCell;
    v70 = v20 + 32;
    v82 = (v69 + 56);
    v83 = v69 + 16;
    v81 = (v69 + 48);
    v75 = (v69 + 32);
    v76 = v11;
    v87 = (v69 + 8);
    v23 = 0.0;
    v24 = 0.0;
    v74 = v4;
    v67 = v12;
    v66 = v15;
    v65 = v17;
    v64 = v20;
    while (v22 < *(v21 + 16))
    {
      v73 = v22;
      v88 = *(v70 + v22);
      v25 = sub_21549F1EC();
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = *(v68 + v63);
        v28 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_linkSuggestion;
        v77 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_titleLabel;
        v78 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel;
        v79 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView;
        v29 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v72 = v25;
        v30 = v25 + v29;
        v31 = *(v69 + 72);
        v85 = *(v69 + 16);
        v86 = v31;
        v32 = v80;
        while (1)
        {
          v33 = v85;
          v85(v11, v30, v6);
          v33(v32, v11, v6);
          (*v82)(v32, 0, 1, v6);
          swift_beginAccess();
          sub_21548EF5C(v32, &v27[v28]);
          swift_endAccess();
          sub_21548EFCC(&v27[v28], v4);
          if ((*v81)(v4, 1, v6) != 1)
          {
            break;
          }

          sub_2151ADCD8(v32, &qword_27CA5B1A8);
          v34 = v4;
LABEL_24:
          sub_2151ADCD8(v34, &qword_27CA5B1A8);
          if (qword_27CA59960 != -1)
          {
            swift_once();
          }

          LODWORD(v49) = 1112014848;
          LODWORD(v50) = 1112014848;
          [v27 systemLayoutSizeFittingSize:*&qword_27CA5EC00 withHorizontalFittingPriority:*&qword_27CA5EBC8 verticalFittingPriority:{v49, v50}];
          v52 = v51;
          v54 = v53;
          (*v87)(v11, v6);
          if (v24 < v52)
          {
            v24 = v52;
          }

          v23 = v23 + v54;
          v30 += v86;
          if (!--v26)
          {

            v12 = v67;
            v15 = v66;
            v17 = v65;
            v21 = v64;
            goto LABEL_5;
          }
        }

        (*v75)(v84, v4, v6);
        sub_21549E8FC();
        if (v35)
        {
          v36 = *&v27[v79];
          if (qword_27CA59960 != -1)
          {
            swift_once();
          }

          v37 = qword_27CA5EC10;
          v38 = sub_2154A1D2C();

          v39 = [objc_opt_self() systemImageNamed:v38 withConfiguration:v37];

          [v36 setImage_];
          v4 = v74;
        }

        else
        {
          v40 = *&v27[v79];
          if (qword_27CA59948 != -1)
          {
            v55 = *&v27[v79];
            swift_once();
            v40 = v55;
          }

          [v40 setImage_];
        }

        v41 = *&v27[v77];
        v42 = v84;
        sub_21549E8DC();
        v43 = sub_2154A1D2C();

        [v41 setText_];

        sub_21549E92C();
        if (v44)
        {
          if (sub_21549E8CC())
          {

            goto LABEL_21;
          }

          v47 = *&v27[v78];
          v48 = sub_2154A1D2C();

          [v47 setText_];
        }

        else
        {
LABEL_21:
          v45 = *&v27[v78];
          v46 = sub_2154A1D2C();
          [v45 setText_];
        }

        (*v87)(v42, v6);
        v32 = v80;
        v34 = v80;
        v11 = v76;
        goto LABEL_24;
      }

LABEL_5:
      v22 = v73 + 1;
      if (v73 + 1 == v71)
      {

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v24 = 0.0;
LABEL_39:

  (*(v62 + 8))(v15, v12);
  return v24;
}

uint64_t sub_21548E738@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECE0);
  v4 = *(sub_21549F1EC() + 16);

  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + v4;
  }

  return result;
}

void sub_21548E8B0()
{
  sub_21548E978(319, &qword_281199708, MEMORY[0x277D36398]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21548E978(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2154A2B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21548E9E0()
{
  result = qword_27CA5EC90;
  if (!qword_27CA5EC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EC90);
  }

  return result;
}

unint64_t sub_21548EA48()
{
  result = qword_27CA5ECA0;
  if (!qword_27CA5ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5ECA0);
  }

  return result;
}

id sub_21548EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_21548EB18()
{
  v1 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_imageView;
  *(v0 + v1) = sub_21548AAF8();
  v2 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setLineBreakMode_];
  if (qword_27CA59960 != -1)
  {
    swift_once();
  }

  [v3 setFont_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dateLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74418] withFontWeight:?];
  [v5 setFont_];

  v7 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor_];

  [v5 setFont_];
  *(v0 + v4) = v5;
  v8 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_dividerView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v9 setBackgroundColor_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setHidden_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC11NotesEditor36iOSLinkAcceleratorCollectionViewCell_linkSuggestion;
  v11 = sub_21549E93C();
  (*(*(v11 - 8) + 56))(v0 + v10, 1, 1, v11);
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_21548EDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECB8);

  return sub_21548CC0C(a1, a2, a3);
}

uint64_t objectdestroy_17Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

id sub_21548EEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ECB0);

  return sub_21548CD5C(a1, a2, a3);
}

uint64_t sub_21548EF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21548EFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21548F03C()
{
  result = qword_27CA5ECE8;
  if (!qword_27CA5ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5ECE8);
  }

  return result;
}

unint64_t sub_21548F090()
{
  result = qword_27CA5ECF0;
  if (!qword_27CA5ECF0)
  {
    sub_21549E93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5ECF0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21548F168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21548F1B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21548F444(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity] = 0;
  v4 = OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startDisplayMode;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startDisplayMode] = 3;
  v5 = OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endDisplayMode;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endDisplayMode] = 3;
  v6 = &v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasSmallStateUsage];
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasSmallStateUsage] = 0;
  v7 = &v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasMediumStateUsage];
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasMediumStateUsage] = 0;
  v8 = &v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasLargeStateUsage];
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasLargeStateUsage] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasFullscreenStateUsage] = 0;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount] = -1;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endPageCount] = -1;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasGestures] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasScroll] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPagination] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPinchZoom] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPinchToExpandState] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabView] = 0;
  v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabEdit] = 0;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_unknownState] = 0;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_smallState] = 1;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_mediumState] = 2;
  *&v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_largeState] = 3;
  v9 = &v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_attachmentIdentifier];
  *v9 = a1;
  v9[1] = a2;
  v3[v4] = a3;
  v3[v5] = a3;
  if (a3)
  {
    if (a3 != 1)
    {
      v7 = v8;
    }
  }

  else
  {
    v7 = v6;
  }

  *v7 = 1;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for PaperDocumentEngagementData();
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_21548F5BC()
{
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 0;
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endDisplayMode);
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startDisplayMode) = v1;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasSmallStateUsage) = v1 == 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasMediumStateUsage) = v1 == 1;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasLargeStateUsage) = v1 == 2;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasFullscreenStateUsage) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount) = *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endPageCount);
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasGestures) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasScroll) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPagination) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPinchZoom) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPinchToExpandState) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabView) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabEdit) = 0;
}

uint64_t sub_21548F6F4(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 1;
  *(v1 + *off_2781B0390[result]) = 1;
  *(v1 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endDisplayMode) = result;
  return result;
}

id sub_21548F75C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentEngagementData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TextElementAnimationConfiguration()
{
  result = qword_27CA5EE10;
  if (!qword_27CA5EE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21548F83C()
{
  sub_21549E70C();
  if (v0 <= 0x3F)
  {
    sub_2151A6C9C(319, &qword_2811994D0);
    if (v1 <= 0x3F)
    {
      sub_2151A6C9C(319, &qword_281199570);
      if (v2 <= 0x3F)
      {
        sub_2151A6C9C(319, &unk_281199660);
        if (v3 <= 0x3F)
        {
          sub_21548F938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21548F938()
{
  if (!qword_27CA5EE20)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5EE20);
    }
  }
}

id TextElementLocator.__allocating_init(textView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void *sub_21548FA0C()
{
  result = sub_2151C02CC();
  if (result)
  {
    v1 = result;
    v2 = [result subviews];
    sub_2151A6C9C(0, &qword_2811994D0);
    v3 = sub_2154A1F4C();

    if (v3 >> 62)
    {
      v4 = sub_2154A2C8C();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        result = objc_opt_self();
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = result;
        v24 = v1;
        v6 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x216069960](v6, v3);
          }

          else
          {
            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = [v5 deviceIsMac];
          if (v9)
          {
            v10 = 0xD00000000000001ALL;
          }

          else
          {
            v10 = 0xD000000000000019;
          }

          v11 = "rDocumentEngagementData";
          if (!v9)
          {
            v11 = "rectangle.3.group";
          }

          v12 = v11 | 0x8000000000000000;
          v13 = [v8 className];
          if (v13)
          {
            v14 = v13;
            v15 = sub_2154A1D6C();
            v17 = v16;

            if (v15 == v10 && v12 == v17)
            {
            }

            else
            {
              v19 = sub_2154A2FAC();

              if ((v19 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            [v5 deviceIsMac];
            v20 = sub_2154A1D2C();

            v21 = [v8 valueForKeyPath_];

            if (v21)
            {
              sub_2154A2BCC();
              swift_unknownObjectRelease();
            }

            else
            {
              v26 = 0u;
              v27 = 0u;
            }

            v28 = v26;
            v29 = v27;
            if (!*(&v27 + 1))
            {

LABEL_38:
              sub_21532C870(&v28);
              goto LABEL_8;
            }

            sub_2151A6C9C(0, &qword_281199570);
            if (swift_dynamicCast())
            {
              v22 = sub_2154A1D2C();
              v23 = [v25 valueForKeyPath_];

              if (v23)
              {
                sub_2154A2BCC();
                swift_unknownObjectRelease();
              }

              else
              {
                v26 = 0u;
                v27 = 0u;
              }

              v28 = v26;
              v29 = v27;
              if (!*(&v27 + 1))
              {

                goto LABEL_38;
              }

              sub_2151A6C9C(0, &unk_281199660);
              if ((swift_dynamicCast() & 1) == 0)
              {

                goto LABEL_8;
              }

              sub_2153DFDA0(v8);
            }
          }

          else
          {
          }

LABEL_7:

LABEL_8:
          if (v4 == ++v6)
          {
          }
        }
      }
    }
  }

  return result;
}

void *TextElementLocator.enumerateTextElements(_:)(void (*a1)(void *))
{
  result = sub_2151C02CC();
  if (result)
  {
    v3 = result;
    v4 = [result subviews];
    sub_2151A6C9C(0, &qword_2811994D0);
    v5 = sub_2154A1F4C();

    if (v5 >> 62)
    {
      v6 = sub_2154A2C8C();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        result = objc_opt_self();
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v7 = result;
        v30 = a1;
        v29 = v3;
        v8 = 0;
        v9 = &selRef_updateHeaderConfiguration;
        v31 = v6;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x216069960](v8, v5);
          }

          else
          {
            v11 = *(v5 + 8 * v8 + 32);
          }

          v12 = v11;
          v13 = [v7 v9[447]];
          if (v13)
          {
            v14 = 0xD00000000000001ALL;
          }

          else
          {
            v14 = 0xD000000000000019;
          }

          v15 = "rDocumentEngagementData";
          if (!v13)
          {
            v15 = "rectangle.3.group";
          }

          v16 = v15 | 0x8000000000000000;
          v17 = [v12 className];
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = v9;
          v20 = sub_2154A1D6C();
          v22 = v21;

          if (v20 == v14 && v16 == v22)
          {
          }

          else
          {
            v24 = sub_2154A2FAC();

            if ((v24 & 1) == 0)
            {

              v9 = v19;
              goto LABEL_7;
            }
          }

          v9 = v19;
          [v7 v19 + 3638];
          v25 = sub_2154A1D2C();

          v26 = [v12 valueForKeyPath_];

          if (v26)
          {
            sub_2154A2BCC();
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
          }

          v10 = v31;
          v35 = v33;
          v36 = v34;
          if (!*(&v34 + 1))
          {

LABEL_39:
            sub_21532C870(&v35);
            goto LABEL_8;
          }

          sub_2151A6C9C(0, &qword_281199570);
          if (swift_dynamicCast())
          {
            v27 = sub_2154A1D2C();
            v28 = [v32 valueForKeyPath_];

            if (v28)
            {
              sub_2154A2BCC();
              swift_unknownObjectRelease();
            }

            else
            {
              v33 = 0u;
              v34 = 0u;
            }

            v35 = v33;
            v36 = v34;
            if (*(&v34 + 1))
            {
              sub_2151A6C9C(0, &unk_281199660);
              if (swift_dynamicCast())
              {
                v30(v12);
              }

              else
              {
              }

              goto LABEL_8;
            }

            goto LABEL_39;
          }

LABEL_8:
          if (v10 == ++v8)
          {
          }
        }

LABEL_7:
        v10 = v31;
        goto LABEL_8;
      }
    }
  }

  return result;
}

id TextElementLocator.init(textView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id TextElementLocator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextElementLocator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_215490514(uint64_t a1, uint64_t a2)
{
  result = sub_2151C02CC();
  if (result)
  {
    v4 = result;
    v5 = [result subviews];
    sub_2151A6C9C(0, &qword_2811994D0);
    v6 = sub_2154A1F4C();

    if (v6 >> 62)
    {
      v7 = sub_2154A2C8C();
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        result = objc_opt_self();
        if (v7 < 1)
        {
          __break(1u);
          return result;
        }

        v8 = result;
        v30 = v4;
        v31 = a2;
        v9 = 0;
        v10 = &selRef_updateHeaderConfiguration;
        v32 = v7;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x216069960](v9, v6);
          }

          else
          {
            v12 = *(v6 + 8 * v9 + 32);
          }

          v13 = v12;
          v14 = [v8 v10[447]];
          if (v14)
          {
            v15 = 0xD00000000000001ALL;
          }

          else
          {
            v15 = 0xD000000000000019;
          }

          v16 = "rDocumentEngagementData";
          if (!v14)
          {
            v16 = "rectangle.3.group";
          }

          v17 = v16 | 0x8000000000000000;
          v18 = [v13 className];
          if (!v18)
          {
            break;
          }

          v19 = v18;
          v20 = v10;
          v21 = sub_2154A1D6C();
          v23 = v22;

          if (v21 == v15 && v17 == v23)
          {
          }

          else
          {
            v25 = sub_2154A2FAC();

            if ((v25 & 1) == 0)
            {

              v10 = v20;
              goto LABEL_7;
            }
          }

          v10 = v20;
          [v8 v20 + 3638];
          v26 = sub_2154A1D2C();

          v27 = [v13 valueForKeyPath_];

          if (v27)
          {
            sub_2154A2BCC();
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0u;
            v35 = 0u;
          }

          v11 = v32;
          v36 = v34;
          v37 = v35;
          if (!*(&v35 + 1))
          {

LABEL_39:
            sub_21532C870(&v36);
            goto LABEL_8;
          }

          sub_2151A6C9C(0, &qword_281199570);
          if (swift_dynamicCast())
          {
            v28 = sub_2154A1D2C();
            v29 = [v33 valueForKeyPath_];

            if (v29)
            {
              sub_2154A2BCC();
              swift_unknownObjectRelease();
            }

            else
            {
              v34 = 0u;
              v35 = 0u;
            }

            v36 = v34;
            v37 = v35;
            if (*(&v35 + 1))
            {
              sub_2151A6C9C(0, &unk_281199660);
              if (swift_dynamicCast())
              {
                sub_215423308(v13, v33, v33, v31);
              }

              else
              {
              }

              goto LABEL_8;
            }

            goto LABEL_39;
          }

LABEL_8:
          if (v11 == ++v9)
          {
          }
        }

LABEL_7:
        v11 = v32;
        goto LABEL_8;
      }
    }
  }

  return result;
}

void *sub_21549097C(uint64_t a1, uint64_t a2)
{
  result = sub_2151C02CC();
  if (result)
  {
    v3 = result;
    v4 = [result subviews];
    sub_2151A6C9C(0, &qword_2811994D0);
    v5 = sub_2154A1F4C();

    if (v5 >> 62)
    {
      v6 = sub_2154A2C8C();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        result = objc_opt_self();
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        v7 = result;
        v8 = 0;
        v29 = v3;
        v9 = &selRef_updateHeaderConfiguration;
        v31 = v6;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x216069960](v8, v5);
          }

          else
          {
            v11 = *(v5 + 8 * v8 + 32);
          }

          v12 = v11;
          v13 = [v7 v9[447]];
          if (v13)
          {
            v14 = 0xD00000000000001ALL;
          }

          else
          {
            v14 = 0xD000000000000019;
          }

          v15 = "rDocumentEngagementData";
          if (!v13)
          {
            v15 = "rectangle.3.group";
          }

          v16 = v15 | 0x8000000000000000;
          v17 = [v12 className];
          if (!v17)
          {
            break;
          }

          v18 = v17;
          v19 = v9;
          v20 = sub_2154A1D6C();
          v22 = v21;

          if (v20 == v14 && v16 == v22)
          {
          }

          else
          {
            v24 = sub_2154A2FAC();

            if ((v24 & 1) == 0)
            {

              v9 = v19;
              goto LABEL_7;
            }
          }

          v9 = v19;
          [v7 v19 + 3638];
          v25 = sub_2154A1D2C();

          v26 = [v12 valueForKeyPath_];

          if (v26)
          {
            sub_2154A2BCC();
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
          }

          v10 = v31;
          v35 = v33;
          v36 = v34;
          if (!*(&v34 + 1))
          {

LABEL_39:
            sub_21532C870(&v35);
            goto LABEL_8;
          }

          sub_2151A6C9C(0, &qword_281199570);
          if (swift_dynamicCast())
          {
            v27 = sub_2154A1D2C();
            v28 = [v32 valueForKeyPath_];

            if (v28)
            {
              sub_2154A2BCC();
              swift_unknownObjectRelease();
            }

            else
            {
              v33 = 0u;
              v34 = 0u;
            }

            v35 = v33;
            v36 = v34;
            if (*(&v34 + 1))
            {
              sub_2151A6C9C(0, &unk_281199660);
              if (swift_dynamicCast())
              {
                (*(a2 + 16))(a2, v12);
              }

              else
              {
              }

              goto LABEL_8;
            }

            goto LABEL_39;
          }

LABEL_8:
          if (v10 == ++v8)
          {
          }
        }

LABEL_7:
        v10 = v31;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t AttributionsPanelView.controller.getter()
{
  sub_215492000();

  return swift_unknownObjectRetain();
}

uint64_t sub_215490E18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AttributionsPanelView();
  *a1 = sub_215492000();

  return swift_unknownObjectRetain();
}

uint64_t AttributionsPanelView.controller.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 8) = a1;
  return result;
}

uint64_t AttributionsPanelView.body.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v5[2] = v6;
  v5[3] = v7;
  v5[4] = v4;
  v5[5] = v3;
  v8 = *(v7 + 48);
  swift_unknownObjectRetain_n();
  v9 = v8(v6, v7);
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2154A0C8C();
  }

  else
  {
    sub_2154A0C9C();
  }

  sub_2154A06DC();
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v4;
  v10[5] = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EE30);
  sub_215492014();
  sub_2154A0A1C();
}

uint64_t sub_215491064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  swift_unknownObjectRetain();
  v9(a4, a5);
  swift_unknownObjectRelease();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EED8);
  sub_21549222C();
  sub_2151ACC5C(&qword_27CA5EEF8, &qword_27CA5EED8);
  sub_21532210C(&qword_27CA5EF00, &qword_27CA5EF08);
  return sub_2154A0F4C();
}

uint64_t sub_2154911F0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v45 = a6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF10);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF18);
  v41 = *(v14 - 8);
  v15 = v41;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = *a1;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v21;
  v22[5] = a2;
  v22[6] = a3;
  v47 = sub_2154922DC;
  v48 = v22;
  v23 = v21;
  swift_unknownObjectRetain();
  [v23 adjustedFrame];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF20);
  sub_2151ACC5C(&qword_27CA5EF28, &qword_27CA5EF20);
  v40 = v20;
  sub_2154A097C();

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v47 = sub_2154922EC;
  v48 = v24;
  [v23 frame];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF30);
  sub_2151ACC5C(&qword_27CA5EF38, &qword_27CA5EF30);
  v25 = v46;
  sub_2154A097C();

  v26 = *(v15 + 16);
  v39 = v17;
  v27 = v20;
  v28 = v14;
  v26(v17, v27, v14);
  v30 = v42;
  v29 = v43;
  v31 = *(v42 + 16);
  v32 = v25;
  v33 = v44;
  v31(v43, v32, v44);
  v34 = v45;
  v26(v45, v17, v28);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF40);
  v31(&v34[*(v35 + 48)], v29, v33);
  v36 = *(v30 + 8);
  v36(v46, v33);
  v37 = *(v41 + 8);
  v37(v40, v28);
  v36(v29, v33);
  return (v37)(v39, v28);
}

uint64_t sub_215491644@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF98);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EFA0);
  MEMORY[0x28223BE20](v14 - 8);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = *(a5 + 48);
  swift_unknownObjectRetain();
  v48 = v19(a4, a5);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v44 = a2;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a1;
  LOBYTE(v51) = 0;
  swift_unknownObjectRetain();
  v21 = a1;
  sub_2154A0DDC();
  v46 = v52;
  v22 = v53;
  v23 = v21;
  if ([v23 isFocused])
  {
    v24 = [v23 childConfigurations];
    sub_2151A6C9C(0, &qword_27CA5EF08);
    v25 = sub_2154A1F4C();
    v43 = v22;
    v26 = v25;

    v51 = v26;
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v44;
    v27[5] = a3;
    swift_unknownObjectRetain();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EFB0);
    sub_21549222C();
    v28 = sub_215492430();
    v52 = &type metadata for AttributionView;
    v53 = v28;
    swift_getOpaqueTypeConformance2();
    sub_21532210C(&qword_27CA5EF00, &qword_27CA5EF08);
    v29 = v45;
    v22 = v43;
    sub_2154A0F4C();
    v30 = v49;
    v31 = v29;
    v32 = v50;
    (*(v49 + 32))(v18, v31, v50);
    v33 = 0;
    v34 = v32;
    v35 = v30;
  }

  else
  {
    v33 = 1;
    v35 = v49;
    v34 = v50;
  }

  (*(v35 + 56))(v18, v33, 1, v34);
  v36 = v47;
  sub_2151CD700(v18, v47);
  *a6 = v46;
  *(a6 + 8) = v22;
  *(a6 + 16) = v23;
  v37 = v48;
  *(a6 + 24) = v48;
  *(a6 + 32) = sub_215492414;
  *(a6 + 40) = v20;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EFA8);
  sub_2151CD700(v36, a6 + *(v38 + 48));
  v39 = v37;

  v40 = v23;
  sub_2151CD770(v18);
  sub_2151CD770(v36);
}

uint64_t sub_215491A98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 32);
  swift_unknownObjectRetain();
  v9 = a3;
  v8(a3, a4, a5);

  return swift_unknownObjectRelease();
}

void sub_215491B18(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a5 + 48);
  swift_unknownObjectRetain();
  v11 = v9;
  v12 = v10(a4, a5);
  swift_unknownObjectRelease();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  swift_unknownObjectRetain();
  sub_2154A0DDC();
  [v11 adjustedFrame];
  sub_215492430();
  sub_2154A096C();
}

double sub_215491C88@<D0>(id a1@<X1>, uint64_t a2@<X8>)
{
  v3 = [a1 highlightConfigurations];
  sub_2151A6C9C(0, &qword_27CA5EF48);
  sub_2154A1F4C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF58);
  sub_2151ACC5C(&qword_27CA5EF60, &qword_27CA5EF50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EF68);
  sub_2154922F4();
  swift_getOpaqueTypeConformance2();
  sub_21532210C(&qword_27CA5EF88, &qword_27CA5EF48);
  sub_2154A0F4C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF90);
  result = 0.0;
  *(a2 + *(v4 + 36)) = xmmword_2154C6BD0;
  return result;
}

uint64_t sub_215491E50(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF68);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = *a1;
  v6 = *(sub_21549FE2C() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_2154A01DC();
  (*(*(v8 - 8) + 104))(&v4[v6], v7, v8);
  __asm { FMOV            V0.2D, #2.75 }

  *v4 = _Q0;
  v14 = [v5 color];
  v15 = sub_2154A0C8C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF80);
  *&v4[*(v16 + 52)] = v15;
  *&v4[*(v16 + 56)] = 256;
  [v5 alpha];
  *&v4[*(v2 + 36)] = v17;
  [v5 adjustedFrame];
  sub_2154922F4();
  sub_2154A096C();
  return sub_2154923AC(v4);
}

unint64_t sub_215492014()
{
  result = qword_27CA5EE38;
  if (!qword_27CA5EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EE30);
    sub_2151ACC5C(&qword_27CA5EE40, qword_27CA5EE48);
    sub_2151ACC5C(&qword_27CA5BFB8, &qword_27CA5BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EE38);
  }

  return result;
}

uint64_t sub_21549213C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_215492184(uint64_t a1, int a2)
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

uint64_t sub_2154921CC(uint64_t result, int a2, int a3)
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

unint64_t sub_21549222C()
{
  result = qword_27CA5EEE0;
  if (!qword_27CA5EEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EED0);
    sub_2151ACC5C(&qword_27CA5EEE8, &qword_27CA5EEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EEE0);
  }

  return result;
}

unint64_t sub_2154922F4()
{
  result = qword_27CA5EF70;
  if (!qword_27CA5EF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EF68);
    sub_2151ACC5C(&qword_27CA5EF78, &qword_27CA5EF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EF70);
  }

  return result;
}

uint64_t sub_2154923AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EF68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_215492430()
{
  result = qword_27CA5EFB8;
  if (!qword_27CA5EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EFB8);
  }

  return result;
}

uint64_t sub_215492488()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 32);
  swift_unknownObjectRetain();
  v3(0, v1, v2);

  return swift_unknownObjectRelease();
}

void *sub_21549252C()
{
  v1 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_215492578(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_215492630()
{
  v1 = (v0 + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  swift_beginAccess();
  v2 = *v1;
  sub_2151BD748(*v1);
  return v2;
}

uint64_t sub_21549268C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2151AF750(v6);
}

uint64_t sub_215492784@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_215324EEC(v3 + v6, a3, a2);
}

uint64_t sub_2154927F0()
{
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  v1[19] = swift_task_alloc();
  v2 = sub_21549F8CC();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_2154A1FFC();
  v1[27] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();
  v1[28] = v4;
  v1[29] = v3;

  return MEMORY[0x2822009F8](sub_215492978, v4, v3);
}

uint64_t sub_215492978()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[30] = v3;
  if (!v3)
  {

    if (qword_27CA59970 != -1)
    {
      swift_once();
    }

    v18 = sub_21549F11C();
    __swift_project_value_buffer(v18, qword_27CA5EFC0);
    v19 = sub_21549F0FC();
    v20 = sub_2154A226C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2151A1000, v19, v20, "No linkAcceleratorController when refresh was called.", v21, 2u);
      MEMORY[0x21606B520](v21, -1, -1);
    }

    goto LABEL_15;
  }

  v4 = v3;
  v5 = LinkAcceleratorController.acceleratorDetectionResult.getter();
  v6 = &v5[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  v7 = *&v5[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  v0[31] = v7;
  v8 = *(v6 + 1);
  v0[32] = v8;

  if (v8)
  {
    v49 = v4;
    v9 = v0[26];
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[18];
    v13 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
    swift_beginAccess();
    sub_215324EEC(v12 + v13, v9, &qword_27CA5B140);
    v14 = *(v11 + 48);
    v0[33] = v14;
    v0[34] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v15 = v14(v9, 1, v10);
    v16 = v0[26];
    if (v15)
    {
      sub_2151ADCD8(v0[26], &qword_27CA5B140);
      v17 = 0;
    }

    else
    {
      v28 = v0[23];
      v48 = v7;
      v30 = v0[20];
      v29 = v0[21];
      (*(v29 + 16))(v28, v16, v30);
      sub_2151ADCD8(v16, &qword_27CA5B140);
      v31 = sub_21549F84C();
      (*(v29 + 8))(v28, v30);
      v7 = v48;
      v17 = *(v31 + 16);
    }

    v32 = v0[25];
    v33 = v0[20];
    sub_215324EEC(v12 + v13, v32, &qword_27CA5B140);
    v34 = v14(v32, 1, v33);
    v35 = v0[25];
    if (v34)
    {
      sub_2151ADCD8(v0[25], &qword_27CA5B140);
      goto LABEL_21;
    }

    v38 = v17;
    v39 = v0[23];
    v41 = v0[20];
    v40 = v0[21];
    (*(v40 + 16))(v39, v0[25], v41);
    sub_2151ADCD8(v35, &qword_27CA5B140);
    v42 = sub_21549F89C();
    v44 = v43;
    (*(v40 + 8))(v39, v41);
    if (!v44)
    {
      goto LABEL_21;
    }

    if (v7 == v42 && v8 == v44)
    {

      if (!v38)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v46 = sub_2154A2FAC();

      if ((v46 & 1) == 0 || !v38)
      {
LABEL_21:
        v36 = swift_task_alloc();
        v0[35] = v36;
        *v36 = v0;
        v36[1] = sub_215492F6C;
        v37 = v0[22];

        return sub_2154936E8(v37, v7, v8);
      }
    }

    if (qword_27CA59970 != -1)
    {
      swift_once();
    }

    v47 = sub_21549F11C();
    __swift_project_value_buffer(v47, qword_27CA5EFC0);
    v19 = sub_21549F0FC();
    v23 = sub_2154A225C();
    v4 = v49;
    if (!os_log_type_enabled(v19, v23))
    {
      goto LABEL_14;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "No need to refresh since we're already showing nonzero number of results for this query string.";
  }

  else
  {

    if (qword_27CA59970 != -1)
    {
      swift_once();
    }

    v22 = sub_21549F11C();
    __swift_project_value_buffer(v22, qword_27CA5EFC0);
    v19 = sub_21549F0FC();
    v23 = sub_2154A226C();
    if (!os_log_type_enabled(v19, v23))
    {
      goto LABEL_14;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Couldn't get accelerator text from linkAcceleratorController.";
  }

  _os_log_impl(&dword_2151A1000, v19, v23, v25, v24, 2u);
  MEMORY[0x21606B520](v24, -1, -1);
LABEL_14:

LABEL_15:

  v26 = v0[1];

  return v26();
}

uint64_t sub_215492F6C()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {

    v3 = v2[28];
    v4 = v2[29];
    v5 = sub_2154934D0;
  }

  else
  {
    v7 = v2[21];
    v6 = v2[22];
    v8 = v2[20];
    v9 = *(v7 + 8);
    v2[37] = v9;
    v2[38] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v3 = v2[28];
    v4 = v2[29];
    v5 = sub_2154930AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2154930AC()
{

  v1 = LinkAcceleratorController.acceleratorDetectionResult.getter();
  v3 = *&v1[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  v2 = *&v1[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText + 8];

  if (!v2)
  {

    if (qword_27CA59970 != -1)
    {
      swift_once();
    }

    v13 = sub_21549F11C();
    __swift_project_value_buffer(v13, qword_27CA5EFC0);
    v7 = sub_21549F0FC();
    v8 = sub_2154A225C();
    v14 = os_log_type_enabled(v7, v8);
    v10 = v0[30];
    if (v14)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "No longer have accelerator text to match.";
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (v3 == v0[31] && v2 == v0[32])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_2154A2FAC();

    if ((v5 & 1) == 0)
    {
      if (qword_27CA59970 != -1)
      {
        swift_once();
      }

      v6 = sub_21549F11C();
      __swift_project_value_buffer(v6, qword_27CA5EFC0);
      v7 = sub_21549F0FC();
      v8 = sub_2154A225C();
      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[30];
      if (v9)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Accelerator text has changed since this refresh was called. These results are likely no longer interesting. Dropping.";
LABEL_15:
        _os_log_impl(&dword_2151A1000, v7, v8, v12, v11, 2u);
        MEMORY[0x21606B520](v11, -1, -1);

        goto LABEL_23;
      }

LABEL_19:

      v7 = v10;
      goto LABEL_23;
    }
  }

  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[24];
  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[18];
  v21 = sub_21549E93C();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  swift_beginAccess();
  sub_215324C84(v19, v20 + v22, &qword_27CA5B1A8);
  swift_endAccess();
  v23 = *(v16 + OBJC_IVAR___ICLinkAcceleratorController_viewController);
  v24 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215324EEC(v23 + v24, v17, &qword_27CA5B140);
  if (v15(v17, 1, v18) == 1)
  {
    sub_2151ADCD8(v0[24], &qword_27CA5B140);
  }

  else
  {
    v25 = v0[37];
    v26 = v0[24];
    v27 = v0[20];
    v28 = sub_21549F86C();
    v25(v26, v27);
    v29 = *(v28 + 16);

    if (v29)
    {
      v7 = v0[30];
      (*((*MEMORY[0x277D85000] & *v0[18]) + 0xD8))(v30);
      goto LABEL_23;
    }
  }

  v7 = v0[30];
  LinkAcceleratorController.hideAccelerator()();
LABEL_23:

  v31 = v0[1];

  return v31();
}

uint64_t sub_2154934D0()
{
  v17 = v0;

  if (qword_27CA59970 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5EFC0);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[36];
  v8 = v0[30];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2154A306C();
    v13 = sub_215348D98(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2151A1000, v4, v5, "Encountered error during refresh: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21606B520](v10, -1, -1);
    MEMORY[0x21606B520](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2154936E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v5 = sub_21549F8CC();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v6 = sub_21549E93C();
  v4[23] = v6;
  v4[24] = *(v6 - 8);
  v4[25] = swift_task_alloc();
  v7 = sub_21549E6AC();
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  sub_2154A1FFC();
  v4[32] = sub_2154A1FEC();
  v9 = sub_2154A1FCC();
  v4[33] = v9;
  v4[34] = v8;

  return MEMORY[0x2822009F8](sub_215493944, v9, v8);
}

uint64_t sub_215493944()
{
  v0[11] = MEMORY[0x277D84F90];
  v1 = v0[15];
  sub_21549E69C();
  v2 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[35] = v3;
  if (!v3)
  {

    if (qword_27CA59970 != -1)
    {
      swift_once();
    }

    v9 = sub_21549F11C();
    __swift_project_value_buffer(v9, qword_27CA5EFC0);
    v10 = sub_21549F0FC();
    v11 = sub_2154A226C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2151A1000, v10, v11, "Encountered error trying to get linkAcceleratorController for linkSuggestions fetch", v12, 2u);
      MEMORY[0x21606B520](v12, -1, -1);
    }

    v13 = v0[31];
    v14 = v0[26];
    v15 = v0[27];

    sub_21549F8BC();
    (*(v15 + 8))(v13, v14);
    goto LABEL_24;
  }

  v4 = v3;
  v5 = LinkAcceleratorController.currentNoteIdentifier.getter();
  v7 = v6;
  v0[36] = v6;
  v8 = MEMORY[0x277D84F90];
  if (ICInternalSettingsIsNewNoteAcceleratorEnabled())
  {
    if (*&v4[OBJC_IVAR___ICLinkAcceleratorController_mode] || sub_2154A1E0C() < 1)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {

      sub_21549E8BC();
      v8 = sub_215317E1C(0, 1, 1, MEMORY[0x277D84F90]);
      v17 = v8[2];
      v16 = v8[3];
      if (v17 >= v16 >> 1)
      {
        v8 = sub_215317E1C(v16 > 1, v17 + 1, 1, v8);
      }

      v19 = v0[24];
      v18 = v0[25];
      v20 = v0[23];
      v8[2] = v17 + 1;
      (*(v19 + 32))(v8 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);
      v0[11] = v8;
    }
  }

  v0[37] = v8;
  if (sub_2154A1E0C() >= 1)
  {
    v21 = swift_task_alloc();
    v0[38] = v21;
    *v21 = v0;
    v21[1] = sub_215494230;
    v22 = v0[22];
    v23 = v0[13];
    v24 = v0[14];

    return MEMORY[0x282195948](v22, v23, v24, 0, v5, v7, 1, 1);
  }

  _UISolariumEnabled();
  sub_21549F83C();

  v25 = sub_21549F82C();

  sub_21547E508(v25);
  v26 = v0[19];
  v27 = v0[20];
  v28 = v0[18];
  v29 = v0[15];
  v30 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  v56 = v30;
  v57 = v29;
  sub_215324EEC(v29 + v30, v28, &qword_27CA5B140);
  if ((*(v27 + 48))(v28, 1, v26))
  {
    sub_2151ADCD8(v0[18], &qword_27CA5B140);
LABEL_23:
    v45 = v0[31];
    v46 = v0[27];
    v47 = v0[26];
    v48 = v0[20];
    v55 = v0[19];
    v49 = v0[16];
    v52 = v0[35];
    v53 = v0[17];
    v50 = v0[12];
    (*(v46 + 16))(v0[28], v45, v47);
    (*(v46 + 56))(v49, 1, 1, v47);

    sub_21549F85C();

    (*(v46 + 8))(v45, v47);
    (*(v48 + 16))(v53, v50, v55);
    (*(v48 + 56))(v53, 0, 1, v55);
    swift_beginAccess();
    sub_215324C84(v53, v57 + v56, &qword_27CA5B140);
    swift_endAccess();
LABEL_24:

    v44 = v0[1];
    goto LABEL_25;
  }

  v31 = v0[30];
  v32 = v0[29];
  v33 = v0[27];
  v54 = v0[26];
  v35 = v0[20];
  v34 = v0[21];
  v37 = v0[18];
  v36 = v0[19];
  (*(v35 + 16))(v34, v37, v36);
  sub_2151ADCD8(v37, &qword_27CA5B140);
  sub_21549F88C();
  (*(v35 + 8))(v34, v36);
  (*(v33 + 32))(v31, v32, v54);
  if ((sub_21549E65C() & 1) == 0)
  {
    (*(v0[27] + 8))(v0[30], v0[26]);
    goto LABEL_23;
  }

  v38 = v0[35];
  v40 = v0[30];
  v39 = v0[31];
  v41 = v0[26];
  v42 = v0[27];

  sub_2154977D4();
  swift_allocError();
  swift_willThrow();

  v43 = *(v42 + 8);
  v43(v40, v41);
  v43(v39, v41);

  v44 = v0[1];
LABEL_25:

  return v44();
}

uint64_t sub_215494230()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {

    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_2154947E0;
  }

  else
  {
    v3 = *(v2 + 264);
    v4 = *(v2 + 272);
    v5 = sub_21549435C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21549435C()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];

  v4 = sub_21549F86C();
  sub_21547E508(v4);
  sub_21549F8AC();
  (*(v2 + 8))(v1, v3);
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v0[15];
  v9 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  v35 = v9;
  v36 = v8;
  sub_215324EEC(v8 + v9, v7, &qword_27CA5B140);
  if ((*(v5 + 48))(v7, 1, v6))
  {
    sub_2151ADCD8(v0[18], &qword_27CA5B140);
  }

  else
  {
    v10 = v0[30];
    v11 = v0[29];
    v13 = v0[26];
    v12 = v0[27];
    v15 = v0[20];
    v14 = v0[21];
    v17 = v0[18];
    v16 = v0[19];
    (*(v15 + 16))(v14, v17, v16);
    sub_2151ADCD8(v17, &qword_27CA5B140);
    sub_21549F88C();
    (*(v15 + 8))(v14, v16);
    (*(v12 + 32))(v10, v11, v13);
    if (sub_21549E65C())
    {
      v18 = v0[35];
      v20 = v0[30];
      v19 = v0[31];
      v21 = v0[26];
      v22 = v0[27];

      sub_2154977D4();
      swift_allocError();
      swift_willThrow();

      v23 = *(v22 + 8);
      v23(v20, v21);
      v23(v19, v21);

      v24 = v0[1];
      goto LABEL_7;
    }

    (*(v0[27] + 8))(v0[30], v0[26]);
  }

  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[26];
  v28 = v0[20];
  v33 = v0[35];
  v34 = v0[19];
  v30 = v0[16];
  v29 = v0[17];
  v31 = v0[12];
  (*(v26 + 16))(v0[28], v25, v27);
  (*(v26 + 56))(v30, 1, 1, v27);

  sub_21549F85C();

  (*(v26 + 8))(v25, v27);
  (*(v28 + 16))(v29, v31, v34);
  (*(v28 + 56))(v29, 0, 1, v34);
  swift_beginAccess();
  sub_215324C84(v29, v36 + v35, &qword_27CA5B140);
  swift_endAccess();

  v24 = v0[1];
LABEL_7:

  return v24();
}

uint64_t sub_2154947E0()
{

  v1 = v0[39];
  if (qword_27CA59970 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5EFC0);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2151A1000, v4, v5, "Encountered error trying to get recently modified note link suggestions: %@", v6, 0xCu);
    sub_2151ADCD8(v7, &unk_27CA59E90);
    MEMORY[0x21606B520](v7, -1, -1);
    MEMORY[0x21606B520](v6, -1, -1);
  }

  v0[11] = MEMORY[0x277D84F90];
  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  v13 = v0[15];
  v14 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  v40 = v14;
  v41 = v13;
  sub_215324EEC(v13 + v14, v12, &qword_27CA5B140);
  if ((*(v11 + 48))(v12, 1, v10))
  {
    sub_2151ADCD8(v0[18], &qword_27CA5B140);
  }

  else
  {
    v15 = v0[30];
    v16 = v0[29];
    v17 = v0[26];
    v18 = v0[27];
    v20 = v0[20];
    v19 = v0[21];
    v22 = v0[18];
    v21 = v0[19];
    (*(v20 + 16))(v19, v22, v21);
    sub_2151ADCD8(v22, &qword_27CA5B140);
    sub_21549F88C();
    (*(v20 + 8))(v19, v21);
    (*(v18 + 32))(v15, v16, v17);
    if (sub_21549E65C())
    {
      v23 = v0[35];
      v25 = v0[30];
      v24 = v0[31];
      v26 = v0[26];
      v27 = v0[27];

      sub_2154977D4();
      swift_allocError();
      swift_willThrow();

      v28 = *(v27 + 8);
      v28(v25, v26);
      v28(v24, v26);

      v29 = v0[1];
      goto LABEL_11;
    }

    (*(v0[27] + 8))(v0[30], v0[26]);
  }

  v30 = v0[31];
  v31 = v0[27];
  v32 = v0[26];
  v33 = v0[20];
  v39 = v0[19];
  v34 = v0[16];
  v37 = v0[35];
  v38 = v0[17];
  v35 = v0[12];
  (*(v31 + 16))(v0[28], v30, v32);
  (*(v31 + 56))(v34, 1, 1, v32);

  sub_21549F85C();

  (*(v31 + 8))(v30, v32);
  (*(v33 + 16))(v38, v35, v39);
  (*(v33 + 56))(v38, 0, 1, v39);
  swift_beginAccess();
  sub_215324C84(v38, v41 + v40, &qword_27CA5B140);
  swift_endAccess();

  v29 = v0[1];
LABEL_11:

  return v29();
}

uint64_t sub_215494D60(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  v2[10] = swift_task_alloc();
  v3 = sub_21549F8CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  sub_2154A1FFC();
  v2[14] = sub_2154A1FEC();
  v5 = sub_2154A1FCC();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x2822009F8](sub_215494E8C, v5, v4);
}

uint64_t sub_215494E8C()
{
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = v3, v5 = LinkAcceleratorController.acceleratorDetectionResult.getter(), v4, v7 = *&v5[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText], v6 = *&v5[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText + 8], v0[17] = v6, , v5, v6))
  {
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_215495078;
    v9 = v0[13];

    return sub_2154936E8(v9, v7, v6);
  }

  else
  {
    v11 = v0[11];
    v12 = v0[12];
    v14 = v0[9];
    v13 = v0[10];

    v15 = *(v12 + 56);
    v15(v13, 1, 1, v11);
    v16 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
    swift_beginAccess();
    sub_215324C84(v13, v14 + v16, &qword_27CA5B140);
    swift_endAccess();
    v15(v0[8], 1, 1, v0[11]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_215495078()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_215495294;
  }

  else
  {
    v5 = sub_2154951D0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2154951D0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[8];

  (*(v3 + 32))(v4, v1, v2);
  (*(v3 + 56))(v0[8], 0, 1, v0[11]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_215495294()
{
  v1 = v0[19];
  v2 = v0[12];

  (*(v2 + 56))(v0[8], 1, 1, v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_215495340()
{
  v1 = sub_21549F8CC();
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_21549E93C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  swift_beginAccess();
  sub_215324EEC(v0 + v13, v8, &qword_27CA5B1A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v14 = &qword_27CA5B1A8;
    v15 = v8;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
    swift_beginAccess();
    sub_215324EEC(v0 + v16, v5, &qword_27CA5B140);
    v17 = v23;
    if (!(*(v23 + 48))(v5, 1, v1))
    {
      v19 = v22;
      (*(v17 + 16))(v22, v5, v1);
      sub_2151ADCD8(v5, &qword_27CA5B140);
      v20 = sub_21549F86C();
      (*(v17 + 8))(v19, v1);
      v21 = sub_21549594C(v12, v20, MEMORY[0x277D359B8], &qword_27CA5EFE8, MEMORY[0x277D359B8]);

      (*(v10 + 8))(v12, v9);
      return v21;
    }

    (*(v10 + 8))(v12, v9);
    v14 = &qword_27CA5B140;
    v15 = v5;
  }

  sub_2151ADCD8(v15, v14);
  return 0;
}

unint64_t sub_215495724(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_2154A2C8C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216069960](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_215497740();
    v8 = sub_2154A291C();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_215495814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_2154A1EEC() != a1 || v9 != a2)
  {
    v10 = sub_2154A2FAC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2154A1E1C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_21549594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_21549778C(a4, a5);
  v12 = 0;
  while ((sub_2154A1D1C() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

BOOL sub_215495A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = sub_21549F8CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (!v9)
  {
    return 0;
  }

  v10 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215324EEC(v0 + v10, v3, &qword_27CA5B140);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v11 = v9;
    sub_21549F89C();
    if (v12)
    {
      if (*&v11[OBJC_IVAR___ICLinkAcceleratorController_mode] == 1)
      {
        (*(v5 + 8))(v7, v4);

LABEL_10:

        return 0;
      }

      v13 = sub_2154A1E0C();

      if (v13 >= 1)
      {
        v14 = sub_21549F86C();

        (*(v5 + 8))(v7, v4);
        v15 = *(v14 + 16);

        return v15 > 1;
      }
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_10;
  }

  sub_2151ADCD8(v3, &qword_27CA5B140);
  return 0;
}

uint64_t sub_215495CF0()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5EFC0);
  __swift_project_value_buffer(v0, qword_27CA5EFC0);
  return sub_21549F0CC();
}

uint64_t sub_215495D3C()
{
  sub_2154A30DC();
  MEMORY[0x216069C80](0);
  return sub_2154A312C();
}

uint64_t sub_215495DA8()
{
  sub_2154A30DC();
  MEMORY[0x216069C80](0);
  return sub_2154A312C();
}

void sub_215495F90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_215495FF0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_215324CF4;
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

uint64_t sub_215496090(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2153ADD90;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_2151BD748(v3);
  return sub_2151AF750(v8);
}

uint64_t sub_215496158(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  sub_215324EEC(a1, &v17 - v12, a5);
  v14 = *a2;
  v15 = *a7;
  swift_beginAccess();
  sub_215324C84(v13, v14 + v15, a5);
  return swift_endAccess();
}

id LinkAcceleratorViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LinkAcceleratorViewController.init()()
{
  *&v0[OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController] = 0;
  v1 = &v0[OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  v3 = sub_21549F8CC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  v5 = sub_21549E93C();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LinkAcceleratorViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_215496468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v1 - 8);
  v24 = &v23 - v2;
  v3 = sub_21549F8CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_215495340();
  v12 = v11;
  v13 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
  swift_beginAccess();
  sub_215324EEC(v0 + v13, v9, &qword_27CA5B140);
  if (!(*(v4 + 48))(v9, 1, v3))
  {
    v14 = v0;
    v15 = v24;
    if (v12)
    {
      v16 = -1;
    }

    else
    {
      v16 = v10;
    }

    (*(v4 + 16))(v6, v9, v3);
    sub_2151ADCD8(v9, &qword_27CA5B140);
    v17 = sub_21549F86C();
    result = (*(v4 + 8))(v6, v3);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      if (v19 >= *(v17 + 16))
      {

        return 0;
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = sub_21549E93C();
        v21 = *(v20 - 8);
        (*(v21 + 16))(v15, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, v20);

        (*(v21 + 56))(v15, 0, 1, v20);
        v22 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
        swift_beginAccess();
        sub_215324C84(v15, v14 + v22, &qword_27CA5B1A8);
        swift_endAccess();
        return 1;
      }
    }

    __break(1u);
    return result;
  }

  sub_2151ADCD8(v9, &qword_27CA5B140);
  return 0;
}

uint64_t sub_2154967DC()
{
  v53 = sub_21549F8CC();
  v1 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B140);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = sub_21549E93C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  swift_beginAccess();
  sub_215324EEC(v0 + v17, v12, &qword_27CA5B1A8);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v16, v12, v13);
    v20 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSuggestionContainer;
    swift_beginAccess();
    sub_215324EEC(v0 + v20, v7, &qword_27CA5B140);
    v21 = v1[6];
    if (v21(v7, 1, v53))
    {
      (*(v14 + 8))(v16, v13);
      v18 = &qword_27CA5B140;
      v19 = v7;
      goto LABEL_5;
    }

    v48 = v21;
    v49 = v0;
    v23 = v1[2];
    v24 = v52;
    v25 = v53;
    v46 = v1 + 2;
    v44 = v17;
    v45 = v23;
    v23(v52, v7, v53);
    sub_2151ADCD8(v7, &qword_27CA5B140);
    v26 = sub_21549F86C();
    v27 = v25;
    v28 = v1[1];
    v47 = v1 + 1;
    v28(v24, v27);
    v29 = sub_21549594C(v16, v26, MEMORY[0x277D359B8], &qword_27CA5EFE8, MEMORY[0x277D359B8]);
    v31 = v30;

    (*(v14 + 8))(v16, v13);
    if (v31)
    {
      return 0;
    }

    v32 = v51;
    sub_215324EEC(v49 + v20, v51, &qword_27CA5B140);
    if (v48(v32, 1, v53))
    {
      v18 = &qword_27CA5B140;
      v19 = v32;
      goto LABEL_5;
    }

    v33 = v29;
    v35 = v52;
    v34 = v53;
    v45(v52, v32, v53);
    sub_2151ADCD8(v32, &qword_27CA5B140);
    v36 = sub_21549F86C();
    result = (v28)(v35, v34);
    v37 = v33 - 1;
    if (__OFSUB__(v33, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v49;
      v39 = v44;
      if ((v37 & 0x8000000000000000) != 0)
      {

        v43 = v50;
        (*(v14 + 56))(v50, 1, 1, v13);
        swift_beginAccess();
        v41 = v38 + v39;
        v42 = v43;
        goto LABEL_16;
      }

      if (v37 < *(v36 + 16))
      {
        v40 = v50;
        (*(v14 + 16))(v50, v36 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v37, v13);

        (*(v14 + 56))(v40, 0, 1, v13);
        swift_beginAccess();
        v41 = v38 + v39;
        v42 = v40;
LABEL_16:
        sub_215324C84(v42, v41, &qword_27CA5B1A8);
        swift_endAccess();
        return 1;
      }
    }

    __break(1u);
    return result;
  }

  v18 = &qword_27CA5B1A8;
  v19 = v12;
LABEL_5:
  sub_2151ADCD8(v19, v18);
  return 0;
}

uint64_t sub_215496DF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1A8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_21549E93C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_currentSelection;
  swift_beginAccess();
  sub_215324C84(v3, v0 + v5, &qword_27CA5B1A8);
  swift_endAccess();
  return 1;
}

id LinkAcceleratorViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2154A1D2C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LinkAcceleratorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAcceleratorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_215324EEC(v6 + v7, a4, a3);
}

uint64_t dispatch thunk of LinkAcceleratorViewController.refresh()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2151BD278;

  return v5();
}

void sub_2154976EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2154A2B5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_215497740()
{
  result = qword_281199620;
  if (!qword_281199620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199620);
  }

  return result;
}

uint64_t sub_21549778C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2154977D4()
{
  result = qword_27CA5EFF0;
  if (!qword_27CA5EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EFF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkAcceleratorViewControllerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LinkAcceleratorViewControllerError(_WORD *result, int a2, int a3)
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

unint64_t sub_21549790C()
{
  result = qword_27CA5EFF8;
  if (!qword_27CA5EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5EFF8);
  }

  return result;
}

uint64_t ICSystemPaperIndexableTextContentHelper.drawing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  swift_beginAccess();
  return sub_215497AF4(v1 + v3, a1);
}

uint64_t sub_215497AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ICSystemPaperIndexableTextContentHelper.drawing.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  swift_beginAccess();
  sub_215497D20(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_215497D20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ICSystemPaperIndexableTextContentHelper.__allocating_init(paperAttachment:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21549852C(a1);

  return v4;
}

id ICSystemPaperIndexableTextContentHelper.init(paperAttachment:)(void *a1)
{
  v2 = sub_21549852C(a1);

  return v2;
}

void *ICSystemPaperIndexableTextContentHelper.search(query:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = sub_2154A174C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - v16;
  v17 = sub_21549EABC();
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v42 = v17;
  sub_21549EADC();
  v19 = [*(v3 + OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_attachment) objectID];
  sub_21549EA8C();

  v20 = *(v15 + 48);
  v21 = v20(v10, 1, v14);
  v39 = v15;
  if (v21 == 1)
  {
    MEMORY[0x216065660](v42);
    if (v20(v10, 1, v14) != 1)
    {
      sub_2151ADCD8(v10, &qword_27CA5A7D8);
    }
  }

  else
  {
    (*(v15 + 32))(v13, v10, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
  }

  if (v20(v13, 1, v14) == 1)
  {

    sub_2151ADCD8(v13, &qword_27CA5A7D8);
    return MEMORY[0x277D84F90];
  }

  v22 = v39;
  v23 = *(v39 + 32);
  v38 = v14;
  v23(v43, v13, v14);
  result = sub_2154A1BBC();
  v25 = result;
  v18 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v26 = result[2];
  if (!v26)
  {
LABEL_16:

    (*(v22 + 8))(v43, v38);
    return v18;
  }

  v27 = 0;
  while (v27 < v25[2])
  {
    (*(v5 + 16))(v7, v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v4);
    v28 = objc_opt_self();
    sub_2154A173C();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    (*(v5 + 8))(v7, v4);
    result = [v28 ic:v30 valueWithRect:{v32, v34, v36}];
    if (!result)
    {
      goto LABEL_19;
    }

    MEMORY[0x216068AC0]();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v41 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2154A1F8C();
    }

    ++v27;
    result = sub_2154A1FAC();
    if (v26 == v27)
    {
      v18 = v44;
      v22 = v39;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

id ICSystemPaperIndexableTextContentHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperIndexableTextContentHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21549852C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E638);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E660);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E640);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v47 - v9;
  v10 = sub_2154A124C();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E648);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v51 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = v47 - v21;
  v22 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_drawing;
  v23 = sub_2154A1C5C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v49 = v23;
  v50 = v22;
  v47[1] = v24 + 56;
  v48 = v25;
  (v25)(&v2[v22], 1, 1);
  *&v2[OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_attachment] = a1;
  v26 = objc_allocWithZone(sub_21549EADC());
  v27 = a1;
  v28 = sub_21549EAAC();
  v29 = OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_paperDocument;
  *&v2[OBJC_IVAR___ICSystemPaperIndexableTextContentHelper_paperDocument] = v28;
  v30 = v28;
  v31 = sub_21549EABC();

  if (v31)
  {
    v32 = [v27 objectID];
    sub_21549EA8C();

    v33 = *(v20 + 48);
    if (v33(v15, 1, v19) == 1)
    {
      v34 = *&v2[v29];
      MEMORY[0x216065660](v31);

      if (v33(v15, 1, v19) != 1)
      {
        sub_2151ADCD8(v15, &qword_27CA5A7D8);
      }
    }

    else
    {
      (*(v20 + 32))(v18, v15, v19);
      (*(v20 + 56))(v18, 0, 1, v19);
    }

    if (v33(v18, 1, v19) == 1)
    {

      sub_2151ADCD8(v18, &qword_27CA5A7D8);
    }

    else
    {
      v35 = v55;
      (*(v20 + 32))(v55, v18, v19);
      v36 = v54;
      sub_2154A1B8C();
      v37 = v59;
      sub_2154A122C();
      (*(v56 + 8))(v36, v57);
      v38 = v58;
      v39 = v60;
      if ((*(v58 + 48))(v37, 1, v60) == 1)
      {
        (*(v20 + 8))(v35, v19);

        sub_2151ADCD8(v37, &qword_27CA5E640);
      }

      else
      {
        v40 = v35;
        v41 = v51;
        (*(v38 + 32))(v51, v37, v39);
        sub_215498DD8();
        sub_2154A1B4C();
        v42 = objc_allocWithZone(sub_2154A177C());
        v43 = sub_2154A176C();
        v44 = v53;
        sub_2154A1C4C();

        (*(v38 + 8))(v41, v39);
        (*(v20 + 8))(v40, v19);
        v48(v44, 0, 1, v49);
        v45 = v50;
        swift_beginAccess();
        sub_215497D20(v44, &v2[v45]);
        swift_endAccess();
      }
    }
  }

  v62.receiver = v2;
  v62.super_class = ObjectType;
  return objc_msgSendSuper2(&v62, sel_init);
}

uint64_t type metadata accessor for ICSystemPaperIndexableTextContentHelper()
{
  result = qword_27CA5F010;
  if (!qword_27CA5F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215498C68()
{
  sub_215498D34();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_215498D34()
{
  if (!qword_27CA5F020)
  {
    sub_2154A1C5C();
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA5F020);
    }
  }
}

unint64_t sub_215498D8C()
{
  result = qword_2811994C8;
  if (!qword_2811994C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811994C8);
  }

  return result;
}

unint64_t sub_215498DD8()
{
  result = qword_27CA5E650;
  if (!qword_27CA5E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E650);
  }

  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

double gotLoadHelper_x9__DDResultAttributeName(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsCore))
  {
    return dlopenHelper_DataDetectorsCore(result);
  }

  return result;
}

double gotLoadHelper_x8__DDResultAttributeName(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsCore))
  {
    return dlopenHelper_DataDetectorsCore(result);
  }

  return result;
}

double gotLoadHelper_x8__MUAnimationIconImage(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__MUAnimationMaskRect(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__MUAnimationSourceRect(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__MUAnimationTargetRect(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__MUDisplayAsFullScreen(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x9__MUEncryptPrivateMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__MUFileDisplayName(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NewsServices))
  {
    return dlopenHelper_NewsServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___QuickLookContentEditorBannerConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MarkupUI))
  {
    return dlopenHelper_MarkupUI(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_DataDetectorsCore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataDetectorsCore.framework/DataDetectorsCore", 0);
  atomic_store(1u, &dlopenHelperFlag_DataDetectorsCore);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MarkupUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MarkupUI.framework/MarkupUI", 0);
  atomic_store(1u, &dlopenHelperFlag_MarkupUI);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_NewsServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NewsServices.framework/NewsServices", 0);
  atomic_store(1u, &dlopenHelperFlag_NewsServices);
  return a1;
}