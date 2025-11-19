uint64_t sub_20CDB86F4(char a1)
{
  sub_20CD849AC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for HearingTestStepViewController();
  v22.receiver = v1;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1 & 1);
  v8 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager;
  v9 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager];
  v10 = *__swift_project_boxed_opaque_existential_1(&v9[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v9[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
  v11 = v9;
  sub_20CDB8E84(v1, v10);

  sub_20CE124D4();
  v12 = sub_20CE124E4();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, &v1[v13]);
  swift_endAccess();
  v14 = (*&v1[v8] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v15 = *v14;
  v16 = v14[1];
  ObjectType = swift_getObjectType();
  v21[0] = 0;
  v18 = *(v16 + 48);
  swift_unknownObjectRetain();
  v18(v21, v1, &protocol witness table for HearingTestStepViewController, ObjectType, v16);
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HearingTestStepViewController()
{
  result = qword_281111728;
  if (!qword_281111728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDB8AF4()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1E0))();
  v2 = sub_20CDB97F4(v1);

  return v2;
}

id HearingTestStepViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingTestStepViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDB8E24()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager);
  v5 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step);
  v2 = v1;
  v3 = sub_20CDDFE8C(&v5);

  return v3;
}

void sub_20CDB8E84(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C8177B0);
  v6 = a1;
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446466;
    nullsub_1(ObjectType, v11);
    v12 = sub_20CE14414();
    v14 = sub_20CD96DCC(v12, v13, &v30);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    type metadata accessor for HearingTestStepViewController();
    v15 = v6;
    v16 = sub_20CE13974();
    v18 = sub_20CD96DCC(v16, v17, &v30);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Setting listener to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8) = &off_2823BD470;
  v19 = swift_unknownObjectWeakAssign();
  v20 = (*((*MEMORY[0x277D85000] & *v6) + 0x1E0))(v19);
  v21 = sub_20CDB97F4(v20);

  v22 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions;
  v23 = *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions);
  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = v21;

  v24 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];
  v25 = *(a2 + v22);

  sub_20CE016F4(v26);

  v27 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v28 = sub_20CE13C34();

  v29 = [v27 initWithSet_];

  [v24 intersectOrderedSet_];
  sub_20CE01910(v24);
}

void sub_20CDB91B4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C8177B0);
  v6 = a1;
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446466;
    nullsub_1(ObjectType, v11);
    v12 = sub_20CE14414();
    v14 = sub_20CD96DCC(v12, v13, &v28);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    type metadata accessor for HTUIEvaluationViewController();
    v15 = v6;
    v16 = sub_20CE13974();
    v18 = sub_20CD96DCC(v16, v17, &v28);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Setting listener to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8) = &off_2823BDB50;
  swift_unknownObjectWeakAssign();
  v19 = sub_20CDB97F4(&unk_2823BAFA0);
  v20 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions;
  v21 = *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions);
  *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = v19;

  v22 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];
  v23 = *(a2 + v20);

  sub_20CE016F4(v24);

  v25 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v26 = sub_20CE13C34();

  v27 = [v25 initWithSet_];

  [v22 intersectOrderedSet_];
  sub_20CE01910(v22);
}

uint64_t sub_20CDB94AC(void *a1, uint64_t a2, void (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v7 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    result = swift_unknownObjectRelease();
    if (v9 == a1)
    {
      if (qword_27C811D18 != -1)
      {
        swift_once();
      }

      v10 = sub_20CE12CB4();
      __swift_project_value_buffer(v10, qword_27C8177B0);
      v11 = a1;
      v12 = sub_20CE12C94();
      v13 = sub_20CE13CD4();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25 = v15;
        *v14 = 136446466;
        nullsub_1(ObjectType, v16);
        v17 = sub_20CE14414();
        v19 = sub_20CD96DCC(v17, v18, &v25);

        *(v14 + 4) = v19;
        *(v14 + 12) = 2080;
        a3(0);
        v20 = v11;
        v21 = sub_20CE13974();
        v23 = sub_20CD96DCC(v21, v22, &v25);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] Unsetting listener from %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v15, -1, -1);
        MEMORY[0x20F314110](v14, -1, -1);
      }

      *(v7 + 8) = 0;
      swift_unknownObjectWeakAssign();
      v24 = *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions);
      *(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) = MEMORY[0x277D84FA0];
    }
  }

  return result;
}

void sub_20CDB96D8()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  v2 = sub_20CE124E4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v4 = (v0 + v3);
  v5 = unk_27C817870;
  *v4 = qword_27C817868;
  v4[1] = v5;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___continueButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___takeTestAgainButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneBarButton) = 0;
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDB97F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_20CDB9D40();
  result = MEMORY[0x20F313150](v2, &type metadata for HearingTestInterruptionType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_20CDD6734(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_20CDB9870()
{
  sub_20CD849AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20CDB9CF4()
{
  result = qword_27C812220;
  if (!qword_27C812220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812220);
  }

  return result;
}

unint64_t sub_20CDB9D40()
{
  result = qword_27C812C00;
  if (!qword_27C812C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C00);
  }

  return result;
}

BOOL sub_20CDB9D94(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [Strong setAlpha_];
  }

  return v4 == 0;
}

uint64_t sub_20CDB9E10(void (*a1)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_20CDB9EC0(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v65 = a1;
  v5 = sub_20CE12BF4();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12BC4();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = &v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v14 = qword_27C817868;
  v13 = unk_27C817870;
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  v59 = v14;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  *(v15 + 48) = 0xD000000000000015;
  *(v15 + 56) = 0x800000020CE1DD90;
  v68 = v15;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v64 = v13;

  v16 = sub_20CE138C4();
  v18 = v17;

  *v12 = v16;
  v12[1] = v18;
  sub_20CE13674();
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button] = 0;
  swift_unknownObjectWeakInit();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v19 = sub_20CE12354();
  v21 = v11;
  if (v11 > 3)
  {
    if (v11 == 4)
    {
      v56 = v19;
      v57 = v20;
      v55 = sub_20CE12354();
      if (qword_27C811D80 != -1)
      {
        swift_once();
      }

      v26 = 0;
      v54 = 0;
      v25 = 0;
      v27 = qword_27C8178F0;
      goto LABEL_22;
    }

    if (v11 == 5)
    {

      v31 = sub_20CE12354();
      v56 = sub_20CE12354();
      v57 = v32;
      v55 = v31;
      if (qword_27C811D88 != -1)
      {
        swift_once();
      }

      v26 = 0;
      v54 = 0;
      v25 = 0;
      v27 = qword_27C817908;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v56 = v19;
  v57 = v20;
  if (v11 != 2)
  {
    if (v11 == 3)
    {
      v28 = sub_20CE12354();
      v29 = sub_20CE12354();
      v25 = v30;
      v54 = v29;
      v55 = v28;
      if (qword_27C811D78 != -1)
      {
        swift_once();
      }

      v26 = 1;
      v27 = qword_27C8178D8;
      goto LABEL_22;
    }

LABEL_29:
    result = sub_20CE141B4();
    __break(1u);
    return result;
  }

  v22 = sub_20CE12354();
  v23 = sub_20CE12354();
  v25 = v24;
  v54 = v23;
  v55 = v22;
  if (qword_27C811D70 != -1)
  {
    swift_once();
  }

  v26 = 0;
  v27 = qword_27C8178C0;
LABEL_22:
  v33 = __swift_project_value_buffer(v8, v27);
  v34 = *(v58 + 16);
  v34(&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v33, v8);
  v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_supportsSampleTone] = v26;
  v34(v60, &v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v8);
  (*(v61 + 104))(v63, *MEMORY[0x277D111B0], v62);
  v35 = objc_allocWithZone(sub_20CE12BE4());
  *&v3[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView] = sub_20CE12BD4();
  v36 = OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_stepStartTime;
  v37 = sub_20CE124E4();
  (*(*(v37 - 8) + 56))(&v3[v36], 1, 1, v37);
  v38 = &v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_automationIdentifierBase];
  v39 = v64;
  *v38 = v59;
  v38[1] = v39;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___continueButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___takeTestAgainButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___cancelButton] = 0;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController____lazy_storage___doneBarButton] = 0;
  v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step] = v21;
  v40 = v65;
  *&v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager] = v65;
  v41 = &v3[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_continueButtonTitle];
  v42 = v57;
  *v41 = v56;
  v41[1] = v42;
  v43 = v40;

  v44 = v43;
  v45 = sub_20CE13914();

  if (v25)
  {
    v46 = sub_20CE13914();
  }

  else
  {
    v46 = 0;
  }

  if (v26)
  {
    v47 = 4;
  }

  else
  {
    v47 = 1;
  }

  v48 = type metadata accessor for HearingTestStepViewController();
  v67.receiver = v3;
  v67.super_class = v48;
  v49 = objc_msgSendSuper2(&v67, sel_initWithTitle_detailText_icon_contentLayout_, v45, v46, 0, v47, v54, v55);

  v66 = v21;
  v50 = v49;
  sub_20CDDF904(&v66, &v68);
  sub_20CDB7E58(v68 == 10, 0);

  v51 = v50;
  v52 = [v51 headerView];
  [v52 setTitleStyle_];

  return v51;
}

uint64_t type metadata accessor for HearingTestPreEvaluationCoachingViewController()
{
  result = qword_281111690;
  if (!qword_281111690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDBAB20()
{
  v1 = v0;
  v2 = [v0 headerView];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase + 8];
  sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20CE16360;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0x656C746954;
  *(v5 + 56) = 0xE500000000000000;
  sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v6 = sub_20CE13914();

  [v2 setTitleAccessibilityIdentifier_];

  v7 = [v1 headerView];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20CE16360;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = 0x656C746974627553;
  *(v8 + 56) = 0xE800000000000000;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v7 setDetailTextAccessibilityIdentifier_];
}

uint64_t sub_20CDBAD48()
{
  swift_getObjectType();
  v1 = [v0 contentView];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  sub_20CDBAE7C();
  sub_20CDBD3BC(0, &qword_27C8127C8, sub_20CDA153C, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE16370;
  v4 = sub_20CE12CC4();
  v5 = MEMORY[0x277D74BF0];
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_20CE13CF4();
  swift_unknownObjectRelease();
}

void sub_20CDBAE7C()
{
  v1 = [v0 contentView];
  v2 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView;
  [v1 addSubview_];

  [*&v0[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [*&v0[v2] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  [v6 setActive_];

  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v0 contentView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  [v10 setActive_];

  v11 = [*&v0[v2] centerXAnchor];
  v12 = [v0 contentView];
  v13 = [v12 centerXAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  [v14 setActive_];
}

id sub_20CDBB0A8()
{
  v1 = v0;
  v2 = sub_20CE13E74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE13F14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v41 - v13;
  result = [v1 secondaryContentView];
  if (result)
  {
    v16 = result;
    v41[0] = v7;
    sub_20CE13F04();
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    sub_20CE13EE4();
    v17 = sub_20CE13914();
    v18 = [objc_opt_self() systemImageNamed_];

    sub_20CE13EC4();
    sub_20CE13E94();
    (*(v3 + 104))(v6, *MEMORY[0x277D74FD8], v2);
    sub_20CE13E84();
    sub_20CD83128(0, &qword_27C8127E0, 0x277D75220);
    (*(v8 + 16))(v12, v14, v41[0]);
    sub_20CD83128(0, &qword_27C812C10, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20CE13E54();
    v19 = sub_20CE13F24();
    [v19 setSymbolAnimationEnabled_];
    v20 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase];
    v21 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase + 8];
    sub_20CD84DC0(0, &unk_27C813730, MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20CE16360;
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
    *(v22 + 48) = 0x7474754279616C50;
    *(v22 + 56) = 0xEA00000000006E6FLL;
    v41[1] = v22;
    sub_20CD84DC0(0, &qword_27C8121F0, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v23 = v19;

    sub_20CE138C4();

    v24 = sub_20CE13914();

    [v23 setAccessibilityIdentifier_];

    v25 = [v23 imageView];
    v26 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView];
    *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView] = v25;

    v27 = *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button];
    *&v1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button] = v23;
    v28 = v23;

    [v16 addSubview_];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];
    v29 = [v28 bottomAnchor];
    v30 = [v16 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    [v31 setActive_];
    v32 = [v28 topAnchor];
    v33 = [v16 topAnchor];
    v34 = [v32 constraintEqualToSystemSpacingBelowAnchor:v33 multiplier:2.0];

    [v34 setActive_];
    v35 = [v28 trailingAnchor];
    v36 = [v16 trailingAnchor];
    v37 = [v35 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v36 multiplier:1.0];

    [v37 setActive_];
    v38 = [v28 leadingAnchor];

    v39 = [v16 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor_];

    [v40 setActive_];
    return (*(v8 + 8))(v14, v41[0]);
  }

  return result;
}

void sub_20CDBB794()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong didTapPlaySample];
  }

  else
  {
  }
}

uint64_t sub_20CDBB864()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20CE136A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v7 = sub_20CE12CB4();
  __swift_project_value_buffer(v7, qword_27C817780);
  v8 = sub_20CE12C94();
  v9 = sub_20CE13CD4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = sub_20CE14414();
    v14 = sub_20CD96DCC(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20CD70000, v8, v9, "[%{public}s] Cleaning up sample tone infrastructure.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x20F314110](v11, -1, -1);
    MEMORY[0x20F314110](v10, -1, -1);
  }

  v15 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);

  sub_20CE128B4();

  v17 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView);
  if (v17)
  {
    v18 = v17;
    sub_20CE13694();
    sub_20CE13684();
    sub_20CDBD35C();
    sub_20CE13C94();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_20CDBBB04()
{
  [v0 cleanUp];
  v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager];
  v4 = v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_step];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1;
  sub_20CDE44CC(v0, &v4, v3, v2);
}

uint64_t sub_20CDBBC94()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12714();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CE136A4();
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_supportsSampleTone) == 1)
  {
    v19 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneImageView);
    if (v19)
    {
      v45 = v16;
      v47 = v4;
      v48 = v3;
      v50 = result;
      v20 = qword_27C811D08;
      v46 = v19;
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_20CE12CB4();
      __swift_project_value_buffer(v21, qword_27C817780);
      v22 = sub_20CE12C94();
      v23 = sub_20CE13CD4();
      v24 = os_log_type_enabled(v22, v23);
      v49 = ObjectType;
      if (v24)
      {
        v25 = swift_slowAlloc();
        v44 = v9;
        v26 = v25;
        v27 = swift_slowAlloc();
        v43 = v7;
        v28 = v27;
        v51 = v27;
        *v26 = 136446210;
        v29 = sub_20CE14414();
        v31 = v8;
        v32 = sub_20CD96DCC(v29, v30, &v51);

        *(v26 + 4) = v32;
        v8 = v31;
        _os_log_impl(&dword_20CD70000, v22, v23, "[%{public}s] User tapped to play sample. Playing sample...", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v33 = v28;
        v7 = v43;
        MEMORY[0x20F314110](v33, -1, -1);
        v34 = v26;
        v9 = v44;
        MEMORY[0x20F314110](v34, -1, -1);
      }

      sub_20CDBCA28();
      v35 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button);
      if (v35)
      {
        [v35 setEnabled_];
      }

      sub_20CE13694();
      sub_20CE13684();
      sub_20CDBD35C();
      v36 = v46;
      sub_20CE13C84();
      (*(v45 + 8))(v18, v50);
      v37 = *(*(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestStepViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
      v38 = *(v1 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount) * 10.0 + 60.0;
      (*(v47 + 104))(v7, *MEMORY[0x277D12CD8], v48);

      sub_20CE126F4();
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v41 = v49;
      *(v40 + 16) = v39;
      *(v40 + 24) = v41;

      sub_20CE128A4();

      (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

char *sub_20CDBC180(uint64_t a1, uint64_t a2)
{
  sub_20CDBD3BC(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28[-v5];
  sub_20CE13B84();
  sub_20CE13B74();
  v7 = MEMORY[0x277D85700];
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12CB4();
  __swift_project_value_buffer(v8, qword_27C817780);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136446210;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Sample finished playing.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v16 = v12;
    v7 = MEMORY[0x277D85700];
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = *&result[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      __break(1u);
      return result;
    }

    *&result[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_playToneCount] = v20;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_button);
    v23 = Strong;
    v24 = v22;

    if (v22)
    {
      [v24 setEnabled_];
    }
  }

  v25 = sub_20CE13BB4();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);

  v26 = sub_20CE13B74();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v7;
  v27[4] = a2;
  sub_20CDDAF10(0, 0, v6, &unk_20CE18118, v27);
}

uint64_t sub_20CDBC4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20CE13B84();
  v4[7] = sub_20CE13B74();
  v6 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDBC590, v6, v5);
}

uint64_t sub_20CDBC590()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    [Strong cleanUp];
  }

  **(v0 + 40) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_20CDBC654(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

void sub_20CDBC720()
{
  swift_getObjectType();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    Strong = [v3 windowScene];
    if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v4 = sub_20CE12CB4();
      __swift_project_value_buffer(v4, qword_27C817780);
      v5 = sub_20CE12C94();
      v6 = sub_20CE13CD4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20 = v8;
        *v7 = 136446210;
        v9 = sub_20CE14414();
        v11 = sub_20CD96DCC(v9, v10, &v20);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Setting _setSystemVolumeHUDEnabled to true.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x20F314110](v8, -1, -1);
        MEMORY[0x20F314110](v7, -1, -1);
      }

      [Strong _setSystemVolumeHUDEnabled:1];
    }

    else
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v12 = sub_20CE12CB4();
      __swift_project_value_buffer(v12, qword_27C817768);
      Strong = sub_20CE12C94();
      v13 = sub_20CE13CB4();
      if (os_log_type_enabled(Strong, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        v16 = sub_20CE14414();
        v18 = sub_20CD96DCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20CD70000, Strong, v13, "[%{public}s] Setting _setSystemVolumeHUDEnabled to true failed as the scene is nil.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x20F314110](v15, -1, -1);
        MEMORY[0x20F314110](v14, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDBCA28()
{
  swift_getObjectType();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v19 = [v3 windowScene], v3, v19))
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v4 = sub_20CE12CB4();
      __swift_project_value_buffer(v4, qword_27C817780);
      v5 = sub_20CE12C94();
      v6 = sub_20CE13CD4();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v20 = v8;
        *v7 = 136446210;
        v9 = sub_20CE14414();
        v11 = sub_20CD96DCC(v9, v10, &v20);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_20CD70000, v5, v6, "[%{public}s] Setting _setSystemVolumeHUDEnabled to false.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v8);
        MEMORY[0x20F314110](v8, -1, -1);
        MEMORY[0x20F314110](v7, -1, -1);
      }

      [v19 _setSystemVolumeHUDEnabled:0];
      swift_unknownObjectWeakAssign();
    }

    else
    {
      if (qword_27C811D08 != -1)
      {
        swift_once();
      }

      v12 = sub_20CE12CB4();
      __swift_project_value_buffer(v12, qword_27C817780);
      v19 = sub_20CE12C94();
      v13 = sub_20CE13CB4();
      if (os_log_type_enabled(v19, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136446210;
        v16 = sub_20CE14414();
        v18 = sub_20CD96DCC(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20CD70000, v19, v13, "[%{public}s] Setting _setSystemVolumeHUDEnabled to false failed as the scene is nil.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x20F314110](v15, -1, -1);
        MEMORY[0x20F314110](v14, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDBCD48()
{
  v1 = *(v0 + OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_automationIdentifierBase + 8);

  v2 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_symbolEffect;
  v3 = sub_20CE13684();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation;
  v5 = sub_20CE12BC4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  JUMPOUT(0x20F3141E0);
}

id HearingTestPreEvaluationCoachingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestPreEvaluationCoachingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CDBCF7C(char *a1, uint64_t a2)
{
  v21 = sub_20CE12BF4();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CE12BC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = [a1 traitCollection];
  v14 = [v13 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (v14)
  {
    v15 = OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView;
    [*&a1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animationView] removeFromSuperview];
    (*(v9 + 16))(v12, &a1[OBJC_IVAR____TtC13HearingTestUI46HearingTestPreEvaluationCoachingViewController_animation], v8);
    (*(v4 + 104))(v7, *MEMORY[0x277D111B0], v21);
    v16 = objc_allocWithZone(sub_20CE12BE4());
    v17 = sub_20CE12BD4();
    v18 = *&a1[v15];
    *&a1[v15] = v17;

    sub_20CDBAE7C();
    v19 = *&a1[v15];
    sub_20CE12B94();
  }

  else
  {
  }
}

uint64_t sub_20CDBD238()
{
  result = sub_20CE13684();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_20CE12BC4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_20CDBD35C()
{
  result = qword_27C812C08;
  if (!qword_27C812C08)
  {
    sub_20CE13684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C08);
  }

  return result;
}

void sub_20CDBD3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDBD420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CD7C660;

  return sub_20CDBC4F8(a1, v4, v5, v6);
}

id HearingTestInterruptionManager.__deallocating_deinit()
{
  sub_20CDBDA1C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestInterruptionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CDBD644()
{
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v1 = sub_20CE12CB4();
  __swift_project_value_buffer(v1, qword_27C8177B0);
  v2 = v0;
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v30);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    v10 = v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts];

    *(v5 + 14) = v10;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] *********** startObservingInterrupts shouldOverrideInterrupts %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  else
  {
  }

  if (v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] == 1)
  {
    v11 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider];
    if (v11)
    {
      sub_20CDC0F80(v2, *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue], *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider]);
      v12 = *(v11 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults;
        v15 = (v12 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          v18 = *(v11 + v14);

          v19 = sub_20CE13914();

          [v18 addObserver:v11 forKeyPath:v19 options:3 context:0];

          v15 += 2;
          --v13;
        }

        while (v13);
      }

      *(v11 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults) = 1;
    }
  }

  else
  {
    v20 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager];
    if (v20)
    {
      sub_20CDC0950(v2, *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue], v20);
    }

    sub_20CDC08C0(&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider], v30);
    v21 = v31;
    if (v31)
    {
      v22 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v29[3] = type metadata accessor for HearingTestInterruptionManager();
      v29[4] = &protocol witness table for HearingTestInterruptionManager;
      v29[0] = v2;
      v23 = *&v2[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue];
      v24 = *(v22 + 16);
      v25 = v2;
      v24(v29, v23, v21, v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

    else
    {
      sub_20CDC16E8(v30, &qword_27C812C30, &qword_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
    }

    v26 = objc_opt_self();
    v27 = [v26 defaultCenter];
    [v27 addObserver:v2 selector:sel_sceneDidEnterBackground name:*MEMORY[0x277D76E58] object:0];

    v28 = [v26 defaultCenter];
    [v28 addObserver:v2 selector:sel_sceneWillDeactivateNotification name:*MEMORY[0x277D76E78] object:0];
  }
}

void sub_20CDBDA1C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C8177B0);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] *********** stopObservingInterrupts **********", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults;
    if (*(v10 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults) == 1)
    {
      v12 = *(v10 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults;
        v15 = (v12 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          v18 = *(v10 + v14);

          v19 = sub_20CE13914();

          [v18 removeObserver:v10 forKeyPath:v19];

          v15 += 2;
          --v13;
        }

        while (v13);
      }

      *(v10 + v11) = 0;
    }
  }

  if (*&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager])
  {
    sub_20CDF8E38(v1);
  }

  sub_20CDC08C0(&v1[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider], v28);
  v20 = v29;
  if (v29)
  {
    v21 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v27[3] = type metadata accessor for HearingTestInterruptionManager();
    v27[4] = &protocol witness table for HearingTestInterruptionManager;
    v27[0] = v1;
    v22 = *(v21 + 24);
    v23 = v1;
    v22(v27, v20, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_20CDC16E8(v28, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  }

  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  [v25 removeObserver:v1 name:*MEMORY[0x277D76E58] object:0];

  v26 = [v24 defaultCenter];
  [v26 removeObserver:v1 name:*MEMORY[0x277D76E78] object:0];
}

void sub_20CDBDD90(unsigned __int8 *a1)
{
  v3 = sub_20CE13714();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = *(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue);
  *v7 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v10 = v9;
  LOBYTE(v9) = sub_20CE13744();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v12 = v8 == 2 || v8 == 5;
  v13 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  v14 = [*(v1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions) array];
  v15 = sub_20CE13AB4();

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    while (v17 < *(v15 + 16))
    {
      sub_20CD8A98C(v18, v29);
      if ((swift_dynamicCast() & 1) == 0 || (v28 != 2 ? (v19 = v28 == 5) : (v19 = 1), !v19 && (v8 == 3 ? (v20 = v28 == 3) : (v20 = 1), v20 ? (v21 = v8 == 7) : (v21 = 1), !v21 ? (v22 = 0) : (v22 = 1), (v23 = v12 | v22, v28 != 7) ? (v24 = v23) : (v24 = v12), v24)))
      {

        goto LABEL_32;
      }

      ++v17;
      v18 += 32;
      if (v16 == v17)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_31:

  v17 = v16;
LABEL_32:
  v25 = *(v1 + v13);
  v29[0] = v8;
  v26 = v25;
  [v26 insertObject:sub_20CE142C4() atIndex:v17];

  swift_unknownObjectRelease();
}

uint64_t sub_20CDBDFF8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F70];
  sub_20CDC1148(a1, v5, &qword_27C812D30, MEMORY[0x277D84F70] + 8);
  if (!v6)
  {
    sub_20CDC11C8(v5, &qword_27C812D30, v1 + 8);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  v2 = 0x18u >> v4;
  if (v4 > 7u)
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t sub_20CDBE0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CE136C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20CE136E4();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v3[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_20CE136D4();
  v22 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198]);
  v18 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v18);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v21);
}

void sub_20CDBE3D0(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_20CE12414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20]();
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE13714();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20]();
  v13 = (&v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue);
  *v13 = v15;
  v16 = v10[13];
  v95 = *MEMORY[0x277D85200];
  v96 = v10 + 13;
  v94 = v16;
  v16(v13);
  v92 = v15;
  LOBYTE(v15) = sub_20CE13744();
  v18 = v10[1];
  v17 = v10 + 1;
  v93 = v18;
  v18(v13, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_50;
  }

  v89 = v13;
  v90 = v17;
  v91 = v9;
  if (v14 != 8)
  {
    LOBYTE(aBlock) = v14;
    sub_20CDBDD90(&aBlock);
  }

  v97 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  v19 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  sub_20CE13CA4();
  sub_20CDC17A0(&qword_27C812CA8, 255, MEMORY[0x277CC9178]);
  sub_20CE13F74();
  v20 = MEMORY[0x277D84F90];
  if (v102)
  {
    v88 = v5;
    do
    {
      v21 = v20;
      while (1)
      {
        sub_20CD8A9E8(&aBlock, &v98);
        if (swift_dynamicCast())
        {
          v22 = v99;
          if (v99 != 8)
          {
            break;
          }
        }

        sub_20CE13F74();
        if (!v102)
        {
          v5 = v88;
          goto LABEL_17;
        }
      }

      v23 = v2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_20CD89904(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      v26 = v21;
      if (v25 >= v24 >> 1)
      {
        v26 = sub_20CD89904((v24 > 1), v25 + 1, 1, v21);
      }

      v27 = v26;
      *(v26 + 2) = v25 + 1;
      v26[v25 + 32] = v22;
      sub_20CE13F74();
      v20 = v27;
      v2 = v23;
      v5 = v88;
    }

    while (v102);
  }

LABEL_17:

  (*(v5 + 1))(v8, v4);
  v28 = *(v20 + 2);
  if (v28)
  {
    v86 = v2;
    *&aBlock = MEMORY[0x277D84F90];
    v88 = v20;
    sub_20CDB4650(0, v28, 0);
    v29 = v88;
    v4 = aBlock;
    v30 = 0x800000020CE1E100;
    v31 = 0x800000020CE1E140;
    v32 = 0x800000020CE1E160;
    v33 = 0x800000020CE1E180;
    v34 = 0x800000020CE1E1A0;
    v35 = 0x800000020CE1E1C0;
    v36 = 0x800000020CE1E1E0;
    v37 = 32;
    do
    {
      v38 = v29[v37];
      v39 = 0xD000000000000015;
      if (v38 == 6)
      {
        v39 = 0xD000000000000013;
        v40 = v31;
      }

      else
      {
        v40 = v30;
      }

      v41 = 0xD000000000000018;
      if (v38 == 4)
      {
        v41 = 0xD000000000000012;
        v42 = v33;
      }

      else
      {
        v42 = v32;
      }

      if (v29[v37] <= 5u)
      {
        v39 = v41;
        v40 = v42;
      }

      v43 = 0xD000000000000017;
      if (v38 == 2)
      {
        v44 = v35;
      }

      else
      {
        v43 = 0xD000000000000012;
        v44 = v34;
      }

      if (v29[v37])
      {
        v45 = 0x6361654420707041;
      }

      else
      {
        v45 = 0xD000000000000010;
      }

      if (v29[v37])
      {
        v46 = 0xEF64657461766974;
      }

      else
      {
        v46 = v36;
      }

      if (v29[v37] <= 1u)
      {
        v43 = v45;
        v44 = v46;
      }

      if (v29[v37] <= 3u)
      {
        v47 = v43;
      }

      else
      {
        v47 = v39;
      }

      if (v29[v37] <= 3u)
      {
        v48 = v44;
      }

      else
      {
        v48 = v40;
      }

      *&aBlock = v4;
      v50 = *(v4 + 16);
      v49 = *(v4 + 24);
      if (v50 >= v49 >> 1)
      {
        v83 = v33;
        v82 = v34;
        v81 = v30;
        v85 = v31;
        v84 = v32;
        v52 = v35;
        v80 = v36;
        sub_20CDB4650((v49 > 1), v50 + 1, 1);
        v36 = v80;
        v35 = v52;
        v34 = v82;
        v33 = v83;
        v32 = v84;
        v31 = v85;
        v30 = v81;
        v29 = v88;
        v4 = aBlock;
      }

      *(v4 + 16) = v50 + 1;
      v51 = v4 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      ++v37;
      --v28;
    }

    while (v28);

    v2 = v86;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  if (qword_27C811D18 != -1)
  {
    goto LABEL_58;
  }

LABEL_50:
  v53 = sub_20CE12CB4();
  __swift_project_value_buffer(v53, qword_27C8177B0);

  v54 = sub_20CE12C94();
  v55 = sub_20CE13CD4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v56 = 136446466;
    v58 = sub_20CE14414();
    v60 = sub_20CD96DCC(v58, v59, &aBlock);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v61 = MEMORY[0x20F312FD0](v4, MEMORY[0x277D837D0]);
    v63 = v62;

    v64 = sub_20CD96DCC(v61, v63, &aBlock);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_20CD70000, v54, v55, "[%{public}s] Processing interruptions %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v57, -1, -1);
    MEMORY[0x20F314110](v56, -1, -1);
  }

  else
  {
  }

  v65 = v91;
  v66 = v95;
  v68 = v93;
  v67 = v94;
  [*(v2 + v97) copy];
  sub_20CE13FC4();
  swift_unknownObjectRelease();
  sub_20CD83128(0, &qword_27C812CB0, 0x277CBEB70);
  swift_dynamicCast();
  v69 = v98;
  v70 = v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = *(v70 + 8);
    v72 = swift_getObjectType();
    (*(v71 + 8))(v69, v72, v71);
    swift_unknownObjectRelease();
  }

  v73 = v89;
  *v89 = v92;
  v67(v73, v66, v65);
  v74 = sub_20CE13744();
  v68(v73, v65);
  if (v74)
  {
    v75 = *(v2 + v97);
    v103 = sub_20CDC18C0;
    v104 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v101 = sub_20CE01620;
    v102 = &block_descriptor_57;
    v76 = _Block_copy(&aBlock);
    v77 = objc_opt_self();
    v78 = v75;
    v79 = [v77 predicateWithBlock_];
    _Block_release(v76);

    [v78 filterUsingPredicate_];
  }

  else
  {
    __break(1u);
  }
}

id HearingTestInterruptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20CDBEDC8(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v25[6] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177B0);
  sub_20CD996F0(a1, a2);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  sub_20CD99704(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136446722;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, v25);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE1E0D0, v25);
    *(v9 + 22) = 2080;
    v14 = sub_20CDF7BCC(a1, a2);
    v16 = sub_20CD96DCC(v14, v15, v25);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with: %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  if ((a2 >> 6) > 1u)
  {
    v18 = 8;
  }

  else if (a2 >> 6)
  {
    v18 = 2;
  }

  else
  {
    sub_20CDC1690(0, &unk_27C812B30, &type metadata for HearingTestInterruptionType, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20CE16370;
    *(inited + 32) = 2;
    v18 = 3;
    if (a2)
    {
      inited = sub_20CD89904(1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 33) = 3;
      v18 = 8;
    }

    v19 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
    v20 = *(v3 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
    LOBYTE(v25[0]) = *(inited + 32);
    v21 = v20;
    [v21 removeObject_];

    swift_unknownObjectRelease();
    if (a2)
    {
      v22 = *(v3 + v19);
      LOBYTE(v25[0]) = *(inited + 33);
      v23 = v22;
      [v23 removeObject_];

      swift_unknownObjectRelease();
    }
  }

  LOBYTE(v25[0]) = v18;
  sub_20CDBE3D0(v25);
  v24 = *MEMORY[0x277D85DE8];
}

void HearingTestInterruptionManager.noiseStatusChanged(status:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus;
  swift_beginAccess();
  sub_20CD85764(a1, v42);
  sub_20CDC1148(v1 + v4, v38, &qword_27C812308, &type metadata for NoiseStatus);
  sub_20CDC1148(v42, &v40, &qword_27C812308, &type metadata for NoiseStatus);
  if (v39 == 255)
  {
    sub_20CDC11C8(v42, &qword_27C812308, &type metadata for NoiseStatus);
    if (v41[24] == 255)
    {
      sub_20CDC11C8(v38, &qword_27C812308, &type metadata for NoiseStatus);
      return;
    }
  }

  else
  {
    sub_20CDC1148(v38, v37, &qword_27C812308, &type metadata for NoiseStatus);
    if (v41[24] != 255)
    {
      v35 = v40;
      v36[0] = *v41;
      *(v36 + 9) = *&v41[9];
      v5 = _s13HearingTestUI11NoiseStatusO2eeoiySbAC_ACtFZ_0(v37, &v35);
      sub_20CD85934(&v35);
      sub_20CDC11C8(v42, &qword_27C812308, &type metadata for NoiseStatus);
      sub_20CD85934(v37);
      sub_20CDC11C8(v38, &qword_27C812308, &type metadata for NoiseStatus);
      if (v5)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_20CDC11C8(v42, &qword_27C812308, &type metadata for NoiseStatus);
    sub_20CD85934(v37);
  }

  sub_20CDC1238(v38);
LABEL_9:
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C8177B0);
  sub_20CD85764(a1, v38);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37[0] = v10;
    *v9 = 136446466;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, v37);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_20CD85764(v38, v42);
    v14 = sub_20CE13974();
    v16 = v15;
    sub_20CD85934(v38);
    v17 = sub_20CD96DCC(v14, v16, v37);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Noise status changed to: %s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  else
  {

    sub_20CD85934(v38);
  }

  sub_20CD85764(a1, v38);
  if (v39)
  {
    sub_20CD85934(v38);
    if (*(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager))
    {
      v18 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager + 8);
      v19 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(ObjectType, v18);
      sub_20CD85764(a1, v38);
      sub_20CDAA09C(v38, v42);
      sub_20CD8F034(v42);

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
    }

    v21 = 4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v22 = *(v2 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
    LOBYTE(v38[0]) = 4;
    v23 = v22;
    [v23 removeObject_];

    swift_unknownObjectRelease();
    v21 = 8;
  }

  sub_20CD85764(a1, v38);
  swift_beginAccess();
  sub_20CDC131C(v38, v2 + v4);
  swift_endAccess();
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_20CE13914();
  v26 = [v24 initWithSuiteName_];

  if (v26)
  {
    v27 = sub_20CE0F3A8();

    if (v27)
    {
      v28 = sub_20CE12C94();
      v29 = sub_20CE13CD4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v38[0] = v31;
        *v30 = 136446210;
        v32 = sub_20CE14414();
        v34 = sub_20CD96DCC(v32, v33, v38);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_20CD70000, v28, v29, "[%{public}s] Ignoring noise status change because disableNoiseInterruptions is turned on.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x20F314110](v31, -1, -1);
        MEMORY[0x20F314110](v30, -1, -1);
      }
    }

    else
    {
      LOBYTE(v38[0]) = v21;
      sub_20CDBE3D0(v38);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDBF734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20CDA3DD4(a1, a2, WitnessTable);
}

uint64_t sub_20CDBF830(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v7 = v4;
  swift_getObjectType();
  v8 = sub_20CE136C4();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20CE136E4();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v16 = sub_20CE12CB4();
  __swift_project_value_buffer(v16, qword_27C8177B0);
  v17 = sub_20CE12C94();
  v18 = sub_20CE13CD4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v39 = a3;
    v20 = v19;
    v37 = v19;
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v20 = 136446210;
    v21 = sub_20CE14414();
    v23 = v7;
    v24 = v15;
    v25 = v11;
    v26 = v8;
    v27 = a4;
    v28 = sub_20CD96DCC(v21, v22, aBlock);

    v29 = v37;
    *(v37 + 4) = v28;
    a4 = v27;
    v8 = v26;
    v11 = v25;
    v15 = v24;
    v7 = v23;
    _os_log_impl(&dword_20CD70000, v17, v18, v40, v29, 0xCu);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x20F314110](v30, -1, -1);
    a3 = v39;
    MEMORY[0x20F314110](v29, -1, -1);
  }

  v31 = *&v7[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue];
  v32 = swift_allocObject();
  *(v32 + 16) = v7;
  aBlock[4] = a3;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = a4;
  v33 = _Block_copy(aBlock);
  v34 = v7;
  sub_20CE136D4();
  v44 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812AB8, 255, MEMORY[0x277D85198]);
  v35 = MEMORY[0x277D85198];
  sub_20CDC1084(0, &qword_27C812AC0, MEMORY[0x277D85198]);
  sub_20CDC13EC(&qword_27C812AC8, &qword_27C812AC0, v35);
  sub_20CE14044();
  MEMORY[0x20F313260](0, v15, v11, v33);
  _Block_release(v33);
  (*(v43 + 8))(v11, v8);
  (*(v41 + 8))(v15, v42);
}

void sub_20CDC0410(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  v4[1] = a2;
  v3 = v2;
  [v3 removeObject_];

  swift_unknownObjectRelease();
  v4[0] = 8;
  sub_20CDBE3D0(v4);
}

char *HearingTestInterruptionManager.__allocating_init(supportsMockInterruptions:delegate:)(int a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v26 = a1;
  v24 = sub_20CE13D34();
  v3 = *(v24 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE13D14();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_20CE136E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for HearingTestInterruptionManager();
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v25 = v11;
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
  *&v12[v13] = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
  v23 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue;
  v14 = sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v22[1] = "ptionManager";
  v22[2] = v14;
  sub_20CE136D4();
  v30 = MEMORY[0x277D84F90];
  sub_20CDC17A0(&qword_27C812C70, 255, MEMORY[0x277D85230]);
  v15 = MEMORY[0x277D85230];
  sub_20CDC1084(0, &qword_27C812C78, MEMORY[0x277D85230]);
  sub_20CDC13EC(&qword_27C812C80, &qword_27C812C78, v15);
  sub_20CE14044();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v24);
  *&v12[v23] = sub_20CE13D64();
  v16 = &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus];
  *(v16 + 4) = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[40] = -1;
  *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager] = 0;
  sub_20CDC08C0(v31, &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider]);
  v17 = 0;
  v18 = &v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager];
  *v18 = 0;
  v18[1] = 0;
  v19 = v26;
  v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] = v26;
  if (v19)
  {
    v17 = [objc_allocWithZone(type metadata accessor for MockInterruptionProvider()) init];
  }

  *&v12[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider] = v17;
  v29.receiver = v12;
  v29.super_class = v25;
  v20 = objc_msgSendSuper2(&v29, sel_init);
  sub_20CDC16E8(v31, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  *&v20[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = v27;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v20;
}

uint64_t sub_20CDC08C0(uint64_t a1, uint64_t a2)
{
  sub_20CDC1744(0, &qword_27C812C30, &unk_27C812C38, &protocol descriptor for NoiseStatusProviding, sub_20CD83038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20CDC0950(void *a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v7 = sub_20CE12CB4();
  __swift_project_value_buffer(v7, qword_27C8177C8);
  v8 = a2;
  v9 = a1;
  v10 = sub_20CE12C94();
  v11 = sub_20CE13CD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v12 = 136446722;
    nullsub_1(v6, v14);
    v15 = sub_20CE14414();
    v17 = sub_20CD96DCC(v15, v16, aBlock);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    type metadata accessor for HearingTestInterruptionManager();
    v18 = v9;
    v19 = sub_20CE13974();
    v21 = sub_20CD96DCC(v19, v20, aBlock);

    *(v12 + 14) = v21;
    *(v12 + 22) = 2112;
    *(v12 + 24) = v8;
    *v13 = a2;
    v22 = v8;
    _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] adding observer %s (queue: %@", v12, 0x20u);
    sub_20CDC16E8(v13, &qword_27C812CA0, &qword_27C813590, 0x277D82BB8, sub_20CD83128);
    MEMORY[0x20F314110](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v25, -1, -1);
    MEMORY[0x20F314110](v12, -1, -1);
  }

  v23 = a3[7];
  [v23 registerObserver:v9 queue:v8];
  aBlock[4] = sub_20CDC18C4;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDF91D0;
  aBlock[3] = &block_descriptor_61;
  v24 = _Block_copy(aBlock);

  [v23 notifyObservers_];
  _Block_release(v24);
}

void sub_20CDC0C64(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v7 = sub_20CE12CB4();
  __swift_project_value_buffer(v7, qword_27C8177C8);
  v8 = a2;

  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v11 = 136446722;
    nullsub_1(v6, v13);
    v14 = sub_20CE14414();
    v16 = sub_20CD96DCC(v14, v15, aBlock);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);

    v17 = sub_20CE13974();
    v19 = sub_20CD96DCC(v17, v18, aBlock);

    *(v11 + 14) = v19;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = a2;
    v20 = v8;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] adding observer %s (queue: %@", v11, 0x20u);
    sub_20CDC16E8(v12, &qword_27C812CA0, &qword_27C813590, 0x277D82BB8, sub_20CD83128);
    MEMORY[0x20F314110](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v23, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  v21 = a3[7];
  [v21 registerObserver:a1 queue:v8];
  aBlock[4] = sub_20CDC16E0;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDF91D0;
  aBlock[3] = &block_descriptor_54;
  v22 = _Block_copy(aBlock);

  [v21 notifyObservers_];
  _Block_release(v22);
}

uint64_t sub_20CDC0F80(void *a1, void *a2, uint64_t a3)
{
  v12[3] = type metadata accessor for HearingTestInterruptionManager();
  v12[4] = &protocol witness table for HearingTestInterruptionManager;
  v12[0] = a1;
  sub_20CD7C388(v12, v11);
  v6 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  v7 = a1;
  sub_20CDC17E8(v11, a3 + v6);
  swift_endAccess();
  v8 = *(a3 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue);
  *(a3 + OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue) = a2;

  v9 = a2;
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

void sub_20CDC1034()
{
  v1 = *(v0 + 16);
  v2 = 6;
  sub_20CDBE3D0(&v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CDC1084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CDC10D8()
{
  v1 = *(v0 + 16);
  v2 = 5;
  sub_20CDBE3D0(&v2);
}

void sub_20CDC1110()
{
  v1 = *(v0 + 16);
  v2 = 7;
  sub_20CDBE3D0(&v2);
}

uint64_t sub_20CDC1148(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_20CDC1690(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDC11C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_20CDC1690(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_20CDC1238(uint64_t a1)
{
  sub_20CDC1294();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDC1294()
{
  if (!qword_27C812C58)
  {
    sub_20CDC1690(255, &qword_27C812308, &type metadata for NoiseStatus, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812C58);
    }
  }
}

uint64_t sub_20CDC131C(uint64_t a1, uint64_t a2)
{
  sub_20CDC1690(0, &qword_27C812308, &type metadata for NoiseStatus, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20CDC13A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20CDBE3D0(&v2);
}

uint64_t sub_20CDC13EC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_20CDC1084(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20CDC143C(uint64_t a1, uint64_t a2)
{
  result = sub_20CDC17A0(&qword_27C812C90, a2, type metadata accessor for HearingTestInterruptionManager);
  *(a1 + 8) = result;
  return result;
}

void sub_20CDC1624()
{
  v1 = *(v0 + 16);
  v2 = 1;
  sub_20CDBE3D0(&v2);
}

void sub_20CDC165C()
{
  v1 = *(v0 + 16);
  v2 = 0;
  sub_20CDBE3D0(&v2);
}

void sub_20CDC1690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_20CDC16E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_20CDC1744(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDC1744(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_20CE13F44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CDC17A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20CDC17E8(uint64_t a1, uint64_t a2)
{
  sub_20CDC1744(0, &qword_27C812CB8, &qword_27C812CC0, &protocol descriptor for MockInterruptionObserving, sub_20CD83038);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20CDC18C8(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C817780);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v64 = v10;
    *v9 = 136446722;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, &v64);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20CD96DCC(0xD000000000000029, 0x800000020CE1E290, &v64);
    *(v9 + 22) = 2080;
    v14 = sub_20CDD108C(a2);
    v16 = sub_20CD96DCC(v14, v15, &v64);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s called with %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  v17 = *&v4[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
  v18 = *&v4[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8];
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 8);
  v21 = v20(ObjectType, v18);
  *&v64 = 0x7466654C6C616573;
  *(&v64 + 1) = 0xE800000000000000;
  v22 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (*(&v63 + 1))
  {
    v23 = swift_dynamicCast();
    v24 = v60;
    if (!v23)
    {
      v24 = 0;
    }

    v25 = v23 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v64);
    v24 = 0;
    v25 = 1;
  }

  v26 = v21 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreLeft;
  *v26 = v24;
  *(v26 + 8) = v25;

  v27 = v20(ObjectType, v18);
  *&v64 = 0x686769526C616573;
  *(&v64 + 1) = 0xE900000000000074;
  v28 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v28)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (*(&v63 + 1))
  {
    v29 = swift_dynamicCast();
    v30 = v60;
    if (!v29)
    {
      v30 = 0;
    }

    v31 = v29 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v64);
    v30 = 0;
    v31 = 1;
  }

  v32 = v27 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitScoreRight;
  *v32 = v30;
  *(v32 + 8) = v31;

  v33 = v20(ObjectType, v18);
  strcpy(&v64, "confidenceLeft");
  HIBYTE(v64) = -18;
  v34 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (*(&v63 + 1))
  {
    v35 = swift_dynamicCast();
    v36 = v60;
    if (!v35)
    {
      v36 = 0;
    }

    v37 = v35 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v64);
    v36 = 0;
    v37 = 1;
  }

  v38 = v33 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreLeft;
  *v38 = v36;
  *(v38 + 8) = v37;

  v39 = v20(ObjectType, v18);
  *&v64 = 0x6E656469666E6F63;
  *(&v64 + 1) = 0xEF74686769526563;
  v40 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v40)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (*(&v63 + 1))
  {
    v41 = swift_dynamicCast();
    v42 = v60;
    if (!v41)
    {
      v42 = 0;
    }

    v43 = v41 ^ 1;
  }

  else
  {
    sub_20CD8CFF0(&v64);
    v42 = 0;
    v43 = 1;
  }

  v44 = v39 + OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_fitConfidenceScoreRight;
  *v44 = v42;
  *(v44 + 8) = v43;

  if (!a2)
  {
    strcpy(&v62, "fitCheckResult");
    HIBYTE(v62) = -18;
    v46 = [a3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v46)
    {
      sub_20CE13FC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v60 == 6578498 && v61 == 0xE300000000000000)
        {

          v54 = 14;
LABEL_62:
          LOBYTE(v64) = v54;
          (*(v18 + 56))(&v64, ObjectType, v18);
          goto LABEL_63;
        }

        v56 = sub_20CE14284();

        if (v56)
        {
          v54 = 14;
          goto LABEL_62;
        }
      }
    }

    else
    {
      sub_20CD8CFF0(&v64);
    }

    *&v62 = 0xD000000000000010;
    *(&v62 + 1) = 0x800000020CE1E2C0;
    v55 = [a3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_20CE13FC4();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v60 == 6578498 && v61 == 0xE300000000000000)
        {

          v54 = 15;
          goto LABEL_62;
        }

        v57 = sub_20CE14284();

        if (v57)
        {
          v54 = 15;
          goto LABEL_62;
        }
      }
    }

    else
    {
      sub_20CD8CFF0(&v64);
    }

    v54 = 9;
    goto LABEL_62;
  }

  if (a2 == 1)
  {
    LOBYTE(v64) = 8;
    (*(v18 + 56))(&v64, ObjectType, v18);
    LOBYTE(v64) = 1;
    v45 = a1;
    sub_20CDE49CC(v45, &v64, v4, v45);

    return;
  }

  v47 = sub_20CE12C94();
  v48 = sub_20CE13CB4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v64 = v50;
    *v49 = 136446466;
    v51 = sub_20CE14414();
    v53 = sub_20CD96DCC(v51, v52, &v64);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    *(v49 + 14) = sub_20CD96DCC(0xD000000000000029, 0x800000020CE1E290, &v64);
    _os_log_impl(&dword_20CD70000, v47, v48, "[%{public}s] %s cancelling flow due to unhandled FitNoiseCheckStatus case.", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v50, -1, -1);
    MEMORY[0x20F314110](v49, -1, -1);
  }

LABEL_63:
  sub_20CDDE960();
}

void sub_20CDC22BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return;
  }

  v6 = [v5 buttonTray];
  if (!v6)
  {
    return;
  }

  if (a4 == 1)
  {
    v7 = &selRef_showButtonsBusy;
    goto LABEL_8;
  }

  if (a4 == 2)
  {
    v7 = &selRef_showButtonsAvailable;
LABEL_8:
    v8 = v6;
    [v6 *v7];
    v6 = v8;
  }
}

void sub_20CDC253C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v13);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E270, &v13);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called. Cancelling flow.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v11 = *(v1 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v14 = 4;
  (*(v11 + 56))(&v14, ObjectType, v11);

  sub_20CDDE960();
}

uint64_t static FeatureRegulatoryAboutView.makeHearingTestAboutView(healthStore:logger:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  sub_20CDC2BE4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_20CE12CB4();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v43);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2;
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v46[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1E2E0, v46);
    _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] Making Hearing Test regulated feature view.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CCD438]) initWithFeatureIdentifier:*MEMORY[0x277CCC058] healthStore:a1];
  v18 = sub_20CE12A34();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_20CE12A44();
  v22 = [objc_allocWithZone(MEMORY[0x277CCD090]) init];
  type metadata accessor for HearingTestDeviceManager();
  swift_allocObject();
  v23 = sub_20CDFA58C(v21, v22, 0xD00000000000001ALL, 0x800000020CE1E2E0);

  v24 = *(v8 + 16);
  v25 = v11;
  v26 = v11;
  v27 = v43;
  v24(v26, v12, v43);
  v28 = type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v17;

  sub_20CDC3488(v31, v23, v25);

  sub_20CDC373C(&qword_27C812450, type metadata accessor for HearingTestPairedDeviceFeatureAttributesDataSource);
  v24(v25, v12, v27);
  v32 = sub_20CE137E4();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v42[1] = sub_20CE137D4();
  v35 = type metadata accessor for HearingTestFeatureRegulatoryInfoTransformProvider(0);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = a1;
  v39 = sub_20CE13814();
  v46[3] = v35;
  v46[4] = MEMORY[0x277D12718];
  v46[0] = v39;
  v40 = sub_20CE13754();
  (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
  v24(v25, v12, v27);
  sub_20CE13794();
}

void sub_20CDC2BE4()
{
  if (!qword_27C812D40)
  {
    sub_20CE13754();
    v0 = sub_20CE13F44();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812D40);
    }
  }
}

uint64_t sub_20CDC2C3C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_20CE13814();
}

uint64_t sub_20CDC2C70()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

uint64_t sub_20CDC2D38()
{
  sub_20CE13824();

  return swift_deallocClassInstance();
}

id sub_20CDC2D68()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v13[0] = 0;
  v2 = [v1 pairedFeatureAttributesWithError_];
  v3 = v13[0];
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 32);
    if (v5)
    {
      sub_20CDC3784();
      v6 = v3;
      v7 = swift_unknownObjectRetain();
      v5 = sub_20CDC2EA4(v7);
    }

    else
    {
      v9 = v13[0];
    }

    v10 = [v4 localAttributes];
    v3 = [objc_allocWithZone(MEMORY[0x277CCD780]) initWithLocalAttributes:v10 pairedAttributes:v5];
  }

  else
  {
    v8 = v13[0];
    sub_20CE12394();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_20CDC2EA4(void *a1)
{
  v2 = _HKHearingTestAlgorithmVersionString();
  v3 = v2;
  v4 = v2;
  if (!v2)
  {
    sub_20CE13954();
    v4 = sub_20CE13914();

    sub_20CE13954();
    v3 = sub_20CE13914();
  }

  v5 = v2;
  v6 = [a1 firmwareVersion];
  if (v6)
  {
    v7 = v6;
    sub_20CE13954();
  }

  v8 = *MEMORY[0x277D11258];
  v9 = sub_20CE13914();

  v10 = HKFeatureUpdateVersionFromMajorVersionAndBuildVersion();

  v11 = v10;
  v12 = v10;
  if (!v10)
  {
    sub_20CE13954();
    v12 = sub_20CE13914();

    sub_20CE13954();
    v11 = sub_20CE13914();
  }

  v13 = v10;
  v14 = HKUDIDeviceIdentifierFromDeviceIdentifierAndBatchNumber();

  if (!v14)
  {
    sub_20CE13954();
    v14 = sub_20CE13914();
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = *MEMORY[0x277CCBBD0];
  v17 = [v15 initWithFeatureVersion:v3 updateVersion:v11 UDIDeviceIdentifier:v14 yearOfRelease:v16];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_20CDC30A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC13HearingTestUIP33_116C8C56BE95EDEDF8D44CEE6DB6B8A850HearingTestPairedDeviceFeatureAttributesDataSource_logger;
  v5 = sub_20CE12CB4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_20CDC3168()
{
  result = *(v0 + 32);
  if (result)
  {
    result = [result productName];
    if (result)
    {
      v2 = result;
      v3 = sub_20CE13954();

      return v3;
    }
  }

  return result;
}

uint64_t sub_20CDC31EC()
{
  v2 = *(v0 + 40);
  sub_20CDC36D8();
  sub_20CDC373C(&qword_27C812DA0, sub_20CDC36D8);
  return sub_20CE12E34();
}

uint64_t sub_20CDC3268(void *a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = *v2;
  sub_20CD996F0(a1, a2);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  sub_20CD99704(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446466;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_20CDF7BCC(a1, a2);
    v16 = sub_20CD96DCC(v14, v15, &v23);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] Device check mode did change: (%{public}s)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  v17 = v3[3];
  if (*(v17 + 24) > 0x3Fu)
  {
    v19 = 0;
  }

  else
  {
    v18 = *(v17 + 16);
    v19 = swift_unknownObjectRetain();
  }

  v20 = v3[4];
  v3[4] = v19;
  swift_unknownObjectRelease();
  v21 = v3[5];
  sub_20CDC36D8();
  sub_20CDC373C(&qword_27C812DA8, sub_20CDC36D8);
  return sub_20CE12E24();
}

char *sub_20CDC3488(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = 0;
  sub_20CDC36D8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a1;

  *(v4 + 5) = sub_20CE12DC4();
  v12 = OBJC_IVAR____TtC13HearingTestUIP33_116C8C56BE95EDEDF8D44CEE6DB6B8A850HearingTestPairedDeviceFeatureAttributesDataSource_logger;
  v13 = sub_20CE12CB4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v4[v12], a3, v13);

  sub_20CDC0C64(v15, 0, a2);

  (*(v14 + 8))(a3, v13);
  return v4;
}

uint64_t sub_20CDC3620()
{
  result = sub_20CE12CB4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20CDC36D8()
{
  if (!qword_27C812D98)
  {
    v0 = sub_20CE12DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812D98);
    }
  }
}

uint64_t sub_20CDC373C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20CDC3784()
{
  result = qword_27C812DB0;
  if (!qword_27C812DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812DB0);
  }

  return result;
}

uint64_t sub_20CDC37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D85720];
  v9 = MEMORY[0x277D83D88];
  sub_20CDCB5A8(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v25 - v12;
  sub_20CDCB6CC(a3, v25 - v12, &qword_27C811EA0, v8, v9, sub_20CDCB5A8);
  v14 = sub_20CE13BB4();
  v15 = *(v14 - 8);
  LODWORD(v8) = (*(v15 + 48))(v13, 1, v14);

  if (v8 == 1)
  {
    sub_20CDCB994(v13, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);
  }

  else
  {
    sub_20CE13BA4();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20CE13B24();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20CE13994() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_20CDCB994(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20CDCB994(a3, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_20CDCB5A8);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

id sub_20CDC3B78()
{
  v0 = type metadata accessor for HearingTestOptions();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_27C812DC0 = result;
  return result;
}

id HearingTestOptions.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

char *sub_20CDC3C70()
{
  result = sub_20CDCAA9C(MEMORY[0x277D84F90]);
  qword_27C812DC8 = result;
  return result;
}

id sub_20CDC3CBC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_20CDC3D44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4 != -1)
  {
    swift_once();
  }

  v7 = *a5;

  return v7;
}

id HearingTestOptions.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HearingTestOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL sub_20CDC3ED4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F70];
  sub_20CDCB6CC(a1, v7, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
  if (v8)
  {
    type metadata accessor for HearingTestOptions();
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
      v4 = *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

      return v3 == v4;
    }
  }

  else
  {
    sub_20CDCB994(v7, &qword_27C812D30, v2 + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
  }

  return 0;
}

id HearingTestOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_20CDC412C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

uint64_t sub_20CDC4190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = sub_20CDCB740();

  return MEMORY[0x2821FE780](a1, WitnessTable, v3);
}

uint64_t sub_20CDC4200(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = *(v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v14.receiver = v6;
  v14.super_class = v4;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v9 = *(v3 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v4);
  *&v10[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v9;
  v13.receiver = v10;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  LOBYTE(v2) = sub_20CE13E44();

  return v2 & 1;
}

void sub_20CDC42D8()
{
  swift_getWitnessTable();
  sub_20CE143E4();
  v1 = *v0;
}

void sub_20CDC4360(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void **, uint64_t, uint64_t))
{
  WitnessTable = swift_getWitnessTable();
  a4(a1, a2, WitnessTable);

  v9 = *a1;
}

BOOL sub_20CDC43E8(char **a1, char **a2)
{
  v2 = *a2;
  v3 = sub_20CDC441C(a1, *a2);

  return v3;
}

BOOL sub_20CDC441C(char **a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v7 = *(*v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v8 = type metadata accessor for HearingTestOptions();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v7;
  v23.receiver = v9;
  v23.super_class = v8;
  v10 = objc_msgSendSuper2(&v23, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v12 = *&a2[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];
  v13 = objc_allocWithZone(v8);
  *&v13[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v12 & v11;
  v22.receiver = v13;
  v22.super_class = v8;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = sub_20CE13E44();
  if ((v15 & 1) == 0)
  {

    v16 = *&v5[v6];
    v14 = a2;

    v17 = objc_allocWithZone(v8);
    *&v17[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v16 | v12;
    v21.receiver = v17;
    v21.super_class = v8;
    v18 = objc_msgSendSuper2(&v21, sel_init);

    *v3 = v18;
  }

  *a1 = v14;
  return (v15 & 1) == 0;
}

id sub_20CDC4548@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_20CDC4574(*a1);
  *a2 = result;
  return result;
}

id sub_20CDC4574(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v6 = *(*v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v7 = type metadata accessor for HearingTestOptions();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v6;
  v33.receiver = v8;
  v33.super_class = v7;
  v9 = objc_msgSendSuper2(&v33, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v11 = *(a1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v12 = objc_allocWithZone(v7);
  *&v12[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v11 & v10;
  v32.receiver = v12;
  v32.super_class = v7;
  v13 = objc_msgSendSuper2(&v32, sel_init);
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v31.receiver = v14;
  v31.super_class = v7;
  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = sub_20CE13E44();

  if (v16)
  {

    return 0;
  }

  else
  {
    v17 = *&v4[v5];
    v18 = objc_allocWithZone(v7);
    *&v18[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v17;
    v30.receiver = v18;
    v30.super_class = v7;
    v19 = objc_msgSendSuper2(&v30, sel_init);
    v20 = *&v19[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

    v21 = objc_allocWithZone(v7);
    *&v21[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v20 ^ v11;
    v29.receiver = v21;
    v29.super_class = v7;
    v22 = objc_msgSendSuper2(&v29, sel_init);
    v23 = *&v4[v5];

    v24 = *(v22 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v23;
    v25 = objc_allocWithZone(v7);
    *&v25[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v24;
    v28.receiver = v25;
    v28.super_class = v7;
    v26 = objc_msgSendSuper2(&v28, sel_init);

    *v2 = v26;
  }

  return v13;
}

void sub_20CDC4718(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_20CDC4758(*a1);

  *a2 = v4;
}

id sub_20CDC4758(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
  v5 = *(*v1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = type metadata accessor for HearingTestOptions();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v21.receiver = v7;
  v21.super_class = v6;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v10 = *(a1 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v10 & v9;
  v20.receiver = v11;
  v20.super_class = v6;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = *&v3[v4];

  v14 = objc_allocWithZone(v6);
  *&v14[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v13 | v10;
  v19.receiver = v14;
  v19.super_class = v6;
  *v1 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v18.receiver = v15;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  LOBYTE(v6) = sub_20CE13E44();

  if (v6)
  {

    return 0;
  }

  return v12;
}

uint64_t sub_20CDC48A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = sub_20CDCB740();

  return MEMORY[0x2821FE768](a1, a2, WitnessTable, v5);
}

void sub_20CDC492C(void **a1, uint64_t a2, uint64_t a3, void (*a4)(void **, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v8 = sub_20CDCB740();
  a4(a1, a2, WitnessTable, v8);
  v9 = *a1;
}

void sub_20CDC49B0()
{
  sub_20CE13FF4();
  v1 = *v0;
}

uint64_t sub_20CDC4A20@<X0>(unint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = sub_20CDCAA9C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_20CDC4AA8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20CDC4B08(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_importFlowProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CDC4BA0;
}

void sub_20CDC4BA0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

id sub_20CDC4C20()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton;
  v2 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton);
  }

  else
  {
    v4 = [objc_opt_self() boldButton];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id HearingTestMainViewController.__allocating_init(healthStore:entryPoint:options:articleProvider:importFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_20CDCACA4(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

id HearingTestMainViewController.init(healthStore:entryPoint:options:articleProvider:importFlowProvider:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_20CDCACA4(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

id sub_20CDC4D80(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for HearingTestMainViewController());
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = sub_20CDCACA4(v9, a2, v10, a4);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v12 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v12 setModalInPresentation_];
  [v12 setModalPresentationStyle_];

  return v12;
}

uint64_t sub_20CDC51E0(unsigned __int8 *a1, char *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  v6 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager;
  v7 = *(v2 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager);
  swift_beginAccess();
  v8 = *(v7 + 32);
  LOBYTE(v15[0]) = v5;
  v16 = v4;

  v9 = sub_20CD8F120(v15, &v16);

  *(v9 + 40) = v4;
  v10 = *(v3 + v6);
  type metadata accessor for HearingTestFlowEvent();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = *(v10 + 24);
  v15[4] = sub_20CDEA9B4;
  v15[5] = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_20CDEABD0;
  v15[3] = &block_descriptor_32_0;
  v13 = _Block_copy(v15);

  [v12 submitEvent:v11 completion:v13];
  _Block_release(v13);
}

void sub_20CDC534C()
{
  v1 = v0;
  sub_20CDCB5A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager;
  if (!*(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager))
  {
    __break(1u);
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v8 = Strong;
  v9 = *(v1 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager);
  swift_beginAccess();
  v10 = *(v9 + 32);

  sub_20CE124D4();
  v11 = sub_20CE124E4();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = OBJC_IVAR____TtC13HearingTestUI28HearingTestFlowAnalyticsData_flowStartTime;
  swift_beginAccess();
  sub_20CD83094(v5, v10 + v12);
  swift_endAccess();

  v25[0] = 1;
  v24 = 0;
  sub_20CDC51E0(v25, &v24);
  v13 = *(v1 + v6);
  if (!v13)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  sub_20CDDB588(v25);
  sub_20CDDEAC4(v25);
  if (v15)
  {
    v16 = v15;

    [v8 pushViewController:v16 animated:1];
    v17 = *(v1 + v6);
    if (v17)
    {
      v18 = __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager], *&v17[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24]);
      v19 = *v18;
      *(*v18 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8) = &off_2823BCE30;
      swift_unknownObjectWeakAssign();
      v20 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager;
      *(*(v19 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8) = &off_2823BE868;
      swift_unknownObjectWeakAssign();
      v21 = *(v19 + v20);
      v22 = v17;
      sub_20CDBD644();

      return;
    }

    goto LABEL_9;
  }

LABEL_10:
  sub_20CE141B4();
  __break(1u);
}

uint64_t sub_20CDC5678()
{
  v1 = v0;
  swift_getObjectType();
  sub_20CDCB5A8(0, &qword_27C811EA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v6 = sub_20CE12CB4();
  __swift_project_value_buffer(v6, qword_27C817768);
  v7 = sub_20CE12C94();
  v8 = sub_20CE13CD4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446210;
    v11 = sub_20CE14414();
    v13 = sub_20CD96DCC(v11, v12, &v27);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] User tapped to start test.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x20F314110](v10, -1, -1);
    MEMORY[0x20F314110](v9, -1, -1);
  }

  v14 = sub_20CDC4C20();
  [v14 showsBusyIndicator];

  sub_20CD81FDC(0, &qword_27C812E60, &qword_27C812E68, &protocol descriptor for PreTestTask, MEMORY[0x277D84560]);
  result = swift_allocObject();
  *(result + 16) = xmmword_20CE183A0;
  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager];
  *(result + 56) = &type metadata for EnsureSingleTest;
  *(result + 64) = &off_2823BE6C8;
  *(result + 32) = v16;
  *(result + 96) = &type metadata for ActivateDiscovery;
  *(result + 104) = &off_2823BCDA8;
  *(result + 72) = v16;
  v17 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
  if (v17)
  {
    v18 = result;
    v19 = *(v17 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
    v20 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager];
    *(result + 136) = &type metadata for CheckConnectedDevice;
    *(result + 144) = &off_2823BC428;
    *(result + 112) = v19;
    *(result + 120) = v20;
    *(result + 176) = &type metadata for CheckDeviceFault;
    *(result + 184) = &off_2823BCC00;
    *(result + 152) = v16;
    v21 = sub_20CE13BB4();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_20CE13B84();
    swift_retain_n();

    v22 = v1;
    v23 = sub_20CE13B74();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v18;
    v24[5] = v22;
    sub_20CDC37D0(0, 0, v5, &unk_20CE185A0, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20CDC5A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for PreTestError();
  v5[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  sub_20CE13B84();
  v5[9] = sub_20CE13B74();
  v9 = sub_20CE13B24();
  v5[10] = v9;
  v5[11] = v8;

  return MEMORY[0x2822009F8](sub_20CDC5AF8, v9, v8);
}

uint64_t sub_20CDC5AF8()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[12] = v2;
  if (v2)
  {
    v0[13] = 0;
    v3 = v1[7];
    v4 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
    v5 = *(v4 + 8);
    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_20CDC5CC8;
    v8 = v0[8];

    return v18(v8, v3, v4);
  }

  else
  {
    v10 = v0[9];
    v11 = v0[4];

    sub_20CDC534C();
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    v15 = v0[4];
    v16 = sub_20CDC4C20();
    [v16 hidesBusyIndicator];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_20CDC5CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_20CDC5FE0;
  }

  else
  {
    v7 = sub_20CDC5E04;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20CDC5E04()
{
  v1 = v0[13] + 1;
  if (v1 == v0[12])
  {
    v2 = v0[9];
    v3 = v0[4];

    sub_20CDC534C();
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = v0[4];
    v8 = sub_20CDC4C20();
    [v8 hidesBusyIndicator];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v0[13] = v1;
    v11 = (v0[3] + 40 * v1);
    v12 = v11[7];
    v13 = v11[8];
    __swift_project_boxed_opaque_existential_1(v11 + 4, v12);
    v14 = *(v13 + 8);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_20CDC5CC8;
    v17 = v0[8];

    return v18(v17, v12, v13);
  }
}

uint64_t sub_20CDC5FE0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  sub_20CDCB28C(&qword_27C812648, 255, type metadata accessor for PreTestError);
  v5 = swift_allocError();
  sub_20CD99634(v2, v6);
  *(v0 + 16) = v5;
  v7 = v5;
  sub_20CD83038(0, &qword_281111358);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 56);
    v9 = *(v0 + 32);
    sub_20CD99634(*(v0 + 48), v8);
    sub_20CDC9EC0(v8);
    sub_20CDCB4D0(v8);

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);
    v14 = sub_20CDC4C20();
    [v14 hidesBusyIndicator];
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20CDC61AC()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = ObjectType;
    aBlock[4] = sub_20CDCB588;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CD95834;
    aBlock[3] = &block_descriptor_5;
    v6 = _Block_copy(aBlock);

    [v3 didTapImportAudiogramLinkIn:v0 completion:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }

  LOBYTE(aBlock[0]) = 7;
  v8 = 0;
  return sub_20CDC51E0(aBlock, &v8);
}

void sub_20CDC62F8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
    v4 = Strong;
    v5 = v3;

    if (!v3)
    {
      __break(1u);
      goto LABEL_27;
    }

    v6 = *&v5[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram];
    *&v5[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = a1;
    v7 = a1;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *(v8 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
  v10 = v8;
  v11 = v9;

  if (!v9)
  {
LABEL_27:
    __break(1u);
    return;
  }

  LOBYTE(v35[0]) = 9;
  sub_20CDDEAC4(v35);
  v13 = v12;

  if (v13)
  {
    if ([a1 leftEarDiagnostic] && objc_msgSend(a1, sel_rightEarDiagnostic))
    {
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v14 = sub_20CE12CB4();
      __swift_project_value_buffer(v14, qword_27C817768);
      v15 = sub_20CE12C94();
      v16 = sub_20CE13CD4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35[0] = v18;
        *v17 = 136446210;
        v19 = sub_20CE14414();
        v21 = sub_20CD96DCC(v19, v20, v35);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_20CD70000, v15, v16, "[%{public}s] Showing results page as audiogram ingestion has completed.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x20F314110](v18, -1, -1);
        MEMORY[0x20F314110](v17, -1, -1);
      }

      swift_beginAccess();
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 navigationController];

        if (v24)
        {
          [v24 pushViewController:v13 animated:1];
        }
      }

      goto LABEL_24;
    }
  }

LABEL_17:
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v25 = sub_20CE12CB4();
  __swift_project_value_buffer(v25, qword_27C817768);
  v26 = sub_20CE12C94();
  v27 = sub_20CE13CD4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0] = v29;
    *v28 = 136446210;
    v30 = sub_20CE14414();
    v32 = sub_20CD96DCC(v30, v31, v35);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_20CD70000, v26, v27, "[%{public}s] Asking our presenter to dismiss us as audiogram ingestion has completed and we don't have results to show.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x20F314110](v29, -1, -1);
    MEMORY[0x20F314110](v28, -1, -1);
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    v13 = [v33 presentingViewController];

    if (v13)
    {
      [v13 dismissViewControllerAnimated:1 completion:0];
LABEL_24:
    }
  }
}

uint64_t sub_20CDC672C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_unknownObjectRetain();
  v7 = a1;
  sub_20CE13FC4();
  v8 = swift_unknownObjectRelease();
  a5(v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void sub_20CDC6814()
{
  v1 = v0;
  v82 = sub_20CE13D34();
  v81 = *(v82 - 1);
  v2 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20CE13D14();
  v4 = *(*(v79 - 1) + 64);
  MEMORY[0x28223BE20](v79);
  v5 = sub_20CE136E4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = [v0 navigationController];
  if (v75)
  {
    v84 = type metadata accessor for HearingTestFlowManager();
    v91[0] = v84;
    sub_20CDCBA0C();
    v7 = sub_20CE13974();
    v9 = v8;
    v10 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager];
    v11 = objc_allocWithZone(MEMORY[0x277CCD090]);

    v12 = [v11 init];
    type metadata accessor for HearingTestDeviceManager();
    swift_allocObject();
    v13 = sub_20CDFA58C(v10, v12, v7, v9);

    v91[3] = sub_20CE12A34();
    v91[4] = &protocol witness table for HTRequirementStatusManager;
    v91[0] = v10;
    v78 = v1;
    v77 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager;
    v14 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager];
    v76 = type metadata accessor for HearingTestInterruptionManager();
    v15 = objc_allocWithZone(v76);
    v16 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions;
    v17 = objc_allocWithZone(MEMORY[0x277CBEB40]);
    v83 = v10;
    swift_retain_n();

    *&v15[v16] = [v17 init];
    v18 = OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptionQueue;
    sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
    sub_20CE136D4();
    v87[0] = MEMORY[0x277D84F90];
    sub_20CDCB28C(&qword_27C812C70, 255, MEMORY[0x277D85230]);
    sub_20CDCB5A8(0, &qword_27C812C78, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_20CDCBA54();
    sub_20CE14044();
    (*(v81 + 104))(v80, *MEMORY[0x277D85260], v82);
    *&v15[v18] = sub_20CE13D64();
    v19 = &v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_currentNoiseStatus];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    *(v19 + 4) = 0;
    v19[40] = -1;
    *&v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_deviceManager] = v13;
    sub_20CDC08C0(v91, &v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_noiseStatusProvider]);
    v20 = &v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_analyicsManager];
    *v20 = v14;
    v20[1] = &off_2823BE0C0;
    v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v22 = sub_20CE13914();
    v23 = [v21 initWithSuiteName_];

    if (v23)
    {
      v82 = "fitConfidenceScoreRight";
      v24 = sub_20CE0F2C4();

      v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_shouldOverrideInterrupts] = v24 & 1;
      v25 = 0;
      if (v24)
      {
        v25 = [objc_allocWithZone(type metadata accessor for MockInterruptionProvider()) init];
      }

      v26 = v84;
      v27 = v83;
      *&v15[OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_mockInterruptProvider] = v25;
      v90.receiver = v15;
      v90.super_class = v76;
      v28 = objc_msgSendSuper2(&v90, sel_init);

      sub_20CDCBADC(v91);
      v29 = v78;
      v30 = v77;
      v31 = *&v78[v77];

      v32 = sub_20CDCA990(v28, v27, v31, v13);
      v33 = *&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_healthStore];
      v81 = v13;
      v34 = *&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_application];
      v35 = *&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus];
      v36 = *&v29[v30];
      sub_20CD7C388(&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_articlePresenter], v91);
      v37 = type metadata accessor for HearingTestInterruptionViewControllerManager();
      v88 = v37;
      v89 = &off_2823BE878;
      v87[0] = v32;
      v38 = objc_allocWithZone(v26);
      v39 = v88;
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
      v79 = &v73;
      v41 = *(*(v39 - 8) + 64);
      MEMORY[0x28223BE20](v40);
      v43 = (&v73 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v44 + 16))(v43);
      v45 = *v43;
      v86[4] = &off_2823BE878;
      v86[3] = v37;
      v86[0] = v45;
      v46 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails;
      *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_setupDetails] = 0;
      *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultAudiogram] = 0;
      v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous] = 0;
      v73 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_navigationController;
      swift_unknownObjectWeakInit();
      v47 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v76 = v33;
      v74 = v34;
      v80 = v35;

      v77 = v36;

      v48 = sub_20CE13914();
      v49 = [v47 initWithSuiteName_];

      if (v49)
      {
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_defaults] = v49;
        v50 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer;
        v51 = sub_20CE128C4();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        *&v38[v50] = sub_20CE128D4();
        v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isHearingTestSessionEnabled] = 0;
        v54 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
        v55 = sub_20CE124E4();
        (*(*(v55 - 8) + 56))(&v38[v54], 1, 1, v55);
        v56 = &v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_resultsProcessor];
        sub_20CDCBB64(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
        v58 = v57;
        v59 = MEMORY[0x277D84F90];
        *&v56[v57[7]] = MEMORY[0x277D84F90];
        *&v56[v57[8]] = v59;
        *&v56[v57[9]] = v59;
        *&v56[v57[10]] = v59;
        *&v56[v57[11]] = v59;
        v60 = *MEMORY[0x277D12C48];
        v61 = sub_20CE12644();
        (*(*(v61 - 8) + 104))(v56, v60, v61);
        v62 = &v56[v58[12]];
        *v62 = 0;
        v62[8] = 1;
        v63 = &v56[v58[13]];
        *v63 = 0;
        v63[8] = 1;
        type metadata accessor for ResultsProcessor();
        swift_storeEnumTagMultiPayload();
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_stepsToSkip] = v59;
        v64 = v76;
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_healthStore] = v76;
        v65 = v74;
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_application] = v74;
        v66 = v75;
        swift_unknownObjectWeakAssign();
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_featureStatus] = v80;
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager] = v83;
        *&v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager] = v81;
        sub_20CD7C388(v91, &v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_articlePresenter]);
        sub_20CD7C388(v86, &v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager]);
        v67 = *&v38[v46];
        *&v38[v46] = 0;

        v68 = v64;
        v69 = v65;

        v70 = &v38[OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager];
        *v70 = v77;
        v70[1] = &off_2823BE0C0;
        v85.receiver = v38;
        v85.super_class = v84;
        v71 = objc_msgSendSuper2(&v85, sel_init);

        __swift_destroy_boxed_opaque_existential_1Tm(v91);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        v72 = *&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
        *&v29[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager] = v71;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  sub_20CE141B4();
  __break(1u);
}

void sub_20CDC734C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:0 action:0];
  v4 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v3 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v5 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D84560];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20CE16360;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = 0x6C65636E6143;
  *(v7 + 56) = 0xE600000000000000;
  v27[0] = v7;
  sub_20CDCBB64(0, &qword_27C8121F0, v5, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v8 = v2;

  sub_20CE138C4();

  v9 = sub_20CE13914();

  [v8 setAccessibilityIdentifier_];

  sub_20CD83128(0, &qword_27C812C10, 0x277D750C8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_20CE13E54();
  [v8 setPrimaryAction_];

  sub_20CDCBB64(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, v6);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CE183B0;
  *(v12 + 32) = v8;
  v27[10] = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = v8;
  v15 = sub_20CE13914();
  v16 = [v13 initWithSuiteName_];

  if (v16)
  {
    sub_20CE11910();
    v18 = v17;

    if (v18)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CE16F10;
      v27[3] = type metadata accessor for HearingTestMainViewController();
      v27[0] = v1;
      v20 = v1;
      v21 = sub_20CDEA770(v27, sel_invokeTapToRadar);
      sub_20CDCB994(v27, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDCBB64);
      *(inited + 32) = v21;
      v22 = sub_20CE13914();
      v23 = [objc_opt_self() systemImageNamed_];

      v24 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v23 style:0 target:v20 action:sel_didTapDebugVFXView];
      *(inited + 40) = v24;
      sub_20CDE52A4(inited);
    }

    v25 = [v1 navigationItem];
    sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
    v26 = sub_20CE13AA4();

    [v25 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDC77B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      sub_20CDDE960();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_20CDC7834()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_20CDCB5A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v31 - v4;
  sub_20CDCB794();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB82C();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB8C4();
  v35 = *(v15 - 8);
  v36 = v15;
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v19 = sub_20CE13914();

  v20 = sub_20CE13914();
  v21 = sub_20CE13914();
  [v1 addBulletedListItemWithTitle:v19 description:v20 symbolName:v21];

  v38 = *(*&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus] + 32);
  sub_20CDA3448();
  sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448);

  sub_20CE12E54();

  sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794);
  sub_20CE12E44();
  (*(v7 + 8))(v10, v6);
  v22 = [objc_opt_self() mainRunLoop];
  v38 = v22;
  v23 = sub_20CE13F34();
  v24 = v34;
  (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C);
  sub_20CDA33E0();
  v25 = v33;
  sub_20CE12E64();
  sub_20CDCB994(v24, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88], sub_20CDCB5A8);

  (*(v32 + 8))(v14, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  v28 = ObjectType;
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  sub_20CDCB28C(&qword_27C812EA8, 255, sub_20CDCB8C4);
  v29 = v36;
  sub_20CE12E84();

  (*(v35 + 8))(v18, v29);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

uint64_t sub_20CDC7EA8(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_20CE14284();
  }

  return v2 & 1;
}

void sub_20CDC7FB4()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12CB4();
  __swift_project_value_buffer(v0, qword_27C817780);
  v1 = sub_20CE12C94();
  v2 = sub_20CE13CD4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v13 = v4;
    *v3 = 136446210;
    v5 = sub_20CE14414();
    v7 = sub_20CD96DCC(v5, v6, &v13);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_20CD70000, v1, v2, "[%{public}s] Adding second bullet as Hearing Aid is available.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x20F314110](v4, -1, -1);
    MEMORY[0x20F314110](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v10 = sub_20CE13914();

    v11 = sub_20CE13914();
    v12 = sub_20CE13914();
    [v9 addBulletedListItemWithTitle:v10 description:v11 symbolName:{v12, 0xE000000000000000}];
  }

  else
  {
  }
}

uint64_t sub_20CDC8294()
{
  ObjectType = swift_getObjectType();
  v33 = MEMORY[0x277CC9E70];
  v32 = MEMORY[0x277D83D88];
  sub_20CDCB5A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v28 - v3;
  sub_20CDCB794();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB82C();
  v12 = *(v11 - 8);
  v29 = v11;
  v30 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB8C4();
  v31 = v16;
  v34 = *(v16 - 8);
  v17 = *(v34 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(*(v0 + OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus) + 32);
  sub_20CDA3448();
  sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448);

  sub_20CE12E54();

  sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794);
  sub_20CE12E44();
  (*(v7 + 8))(v10, v6);
  v20 = [objc_opt_self() mainRunLoop];
  v36 = v20;
  v21 = sub_20CE13F34();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C);
  sub_20CDA33E0();
  v22 = v29;
  sub_20CE12E64();
  sub_20CDCB994(v4, &qword_27C812800, v33, v32, sub_20CDCB5A8);

  (*(v30 + 8))(v15, v22);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v25 = ObjectType;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  sub_20CDCB28C(&qword_27C812EA8, 255, sub_20CDCB8C4);
  v26 = v31;
  sub_20CE12E84();

  (*(v34 + 8))(v19, v26);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

uint64_t sub_20CDC87FC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1)
  {
    v2 = sub_20CE14284();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

void sub_20CDC8914(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!v1)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v13 = sub_20CE12CB4();
    __swift_project_value_buffer(v13, qword_27C817780);
    v14 = sub_20CE12C94();
    v15 = sub_20CE13CC4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32[0] = v17;
      *v16 = 136446466;
      v18 = sub_20CE14414();
      v20 = sub_20CD96DCC(v18, v19, v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_20CD96DCC(0x676E69646E6570, 0xE700000000000000, v32);
      _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] Returned with unhandled status %s.", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v17, -1, -1);
      MEMORY[0x20F314110](v16, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v1 != 1)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v22 = sub_20CE12CB4();
    __swift_project_value_buffer(v22, qword_27C817780);
    v23 = sub_20CE12C94();
    v24 = sub_20CE13CD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v25 = 136446210;
      v27 = sub_20CE14414();
      v29 = sub_20CD96DCC(v27, v28, v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] Adding caption text with Hearing Aid is available.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x20F314110](v26, -1, -1);
      MEMORY[0x20F314110](v25, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_25;
    }

LABEL_23:
    v30 = Strong;
    v12 = [Strong buttonTray];

    if (qword_27C811DC8 == -1)
    {
LABEL_24:
      sub_20CE12354();
      v31 = sub_20CE13914();

      [v12 setCaptionText_];

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_24;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32[0] = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, v32);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Adding caption text with Hearing Aid is available.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 buttonTray];

    if (qword_27C811DC8 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

LABEL_25:
}

void sub_20CDC8F04()
{
  v1 = v0;
  v2 = sub_20CDC4C20();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v3 = sub_20CE13914();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  v4 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton;
  v5 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton];
  v7 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v6 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v8 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = 0x7365547472617453;
  *(v9 + 56) = 0xEF6E6F7474754274;
  sub_20CDCBB64(0, &qword_27C8121F0, v8, MEMORY[0x277D83940]);
  sub_20CD81F60();
  v10 = v5;

  sub_20CE138C4();

  v11 = sub_20CE13914();

  [v10 setAccessibilityIdentifier_];

  [*&v1[v4] addTarget:v1 action:sel_didTapStartTest_ forControlEvents:64];
  v12 = [v1 buttonTray];
  [v12 addButton_];
}

void sub_20CDC9188()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_options];
  if (qword_27C811D90 != -1)
  {
    swift_once();
  }

  v3 = qword_27C812DC0;
  v4 = type metadata accessor for HearingTestOptions();
  v5 = *(v3 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue);
  v6 = objc_allocWithZone(v4);
  *&v6[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v5;
  v22.receiver = v6;
  v22.super_class = v4;
  v7 = objc_msgSendSuper2(&v22, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

  v9 = *(v2 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v8;
  v10 = objc_allocWithZone(v4);
  *&v10[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v9;
  v21.receiver = v10;
  v21.super_class = v4;
  v11 = objc_msgSendSuper2(&v21, sel_init);
  LOBYTE(v3) = sub_20CE13E44();

  if (v3)
  {
    v12 = [objc_opt_self() linkButton];
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    sub_20CE12354();
    v13 = sub_20CE13914();

    [v12 setTitle:v13 forState:{0, 0xE000000000000000}];

    v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
    v14 = *&v1[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
    v16 = MEMORY[0x277D837D0];
    sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CE16360;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    *(v17 + 48) = 0xD000000000000013;
    *(v17 + 56) = 0x800000020CE1EA00;
    sub_20CDCBB64(0, &qword_27C8121F0, v16, MEMORY[0x277D83940]);
    sub_20CD81F60();
    v18 = v12;

    sub_20CE138C4();

    v19 = sub_20CE13914();

    [v18 setAccessibilityIdentifier_];

    [v18 addTarget:v1 action:sel_didTapImportPriorResult_ forControlEvents:64];
    v20 = [v1 buttonTray];
    [v20 addButton_];
  }
}

void sub_20CDC94D4()
{
  v1 = v0;
  v2 = [v0 headerView];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase + 8];
  v5 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CE16360;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  *(v6 + 48) = 0x6E6F63496E69614DLL;
  *(v6 + 56) = 0xE800000000000000;
  sub_20CDCBB64(0, &qword_27C8121F0, v5, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v7 = sub_20CE13914();

  [v2 setIconAccessibilityIdentifier_];

  v8 = [v1 headerView];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20CE16360;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = 0x656C746954;
  *(v9 + 56) = 0xE500000000000000;

  sub_20CE138C4();

  v10 = sub_20CE13914();

  [v8 setTitleAccessibilityIdentifier_];
}

void sub_20CDC970C(uint64_t a1)
{
  v2 = v1;
  v61 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE129C4();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v59 - v9;
  v11 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager;
  v12 = *&v2[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager];
  if (!v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
  v14 = *(v13 + 24);
  v59 = v8;
  if (v14 <= 0x3F && (v15 = [*(v13 + 16) name]) != 0)
  {
    v16 = v15;
    v17 = sub_20CE13954();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = *&v2[v11];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = *(v20 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager);
  if (*(v21 + 24) <= 0x3Fu && (v22 = [*(v21 + 16) btAddress]) != 0)
  {
    v23 = v22;
    v24 = sub_20CE13954();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v29 = ObjectType;
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;

  v30 = sub_20CDF02C0(v61, v17, v19, v24, v26);

  if (v30)
  {
    v31 = qword_27C811D08;
    v32 = v30;
    v33 = v3;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = sub_20CE12CB4();
    __swift_project_value_buffer(v34, qword_27C817780);
    v35 = v59;
    (*(v59 + 16))(v10, v61, v3);
    v36 = sub_20CE12C94();
    v37 = sub_20CE13CD4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v61 = v2;
      v39 = v35;
      v40 = v38;
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136446722;
      v42 = sub_20CE14414();
      v44 = sub_20CD96DCC(v42, v43, &v62);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1E800, &v62);
      *(v40 + 22) = 2080;
      v45 = HTFaultStatusWithReason.debugDescription.getter();
      v47 = v46;
      (*(v39 + 8))(v10, v33);
      v2 = v61;
      v48 = sub_20CD96DCC(v45, v47, &v62);

      *(v40 + 24) = v48;
      _os_log_impl(&dword_20CD70000, v36, v37, "[%{public}s] %s A device fault has been detected: %s. Presenting its alert.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v41, -1, -1);
      MEMORY[0x20F314110](v40, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v10, v3);
    }

    [v2 presentViewController:v32 animated:1 completion:{0, v59}];
  }

  else
  {
    v49 = v3;
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v50 = sub_20CE12CB4();
    __swift_project_value_buffer(v50, qword_27C817780);
    v51 = sub_20CE12C94();
    v52 = sub_20CE13CC4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v53 = 136446466;
      v55 = sub_20CE14414();
      v57 = sub_20CD96DCC(v55, v56, &v62);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1E800, &v62);
      _os_log_impl(&dword_20CD70000, v51, v52, "[%{public}s] %s A device fault has not been detected. Recursing with HTFaultStatusResultUnknown.", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v54, -1, -1);
      MEMORY[0x20F314110](v53, -1, -1);
    }

    v58 = v59;
    (*(v59 + 104))(v7, *MEMORY[0x277D12D38], v49);
    sub_20CDC970C(v7);
    (*(v58 + 8))(v7, v49);
  }
}

void sub_20CDC9D28(uint64_t a1)
{
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Presenting a controller on behalf of the fault controller.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong presentViewController:a1 animated:1 completion:0];
  }
}

uint64_t sub_20CDC9EC0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_20CE129C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v57 = type metadata accessor for PreTestError();
  v11 = *(*(v57 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v17 = sub_20CE12CB4();
  __swift_project_value_buffer(v17, qword_27C817780);
  v58 = a1;
  sub_20CDCB46C(a1, v16);
  v18 = sub_20CE12C94();
  v19 = sub_20CE13CB4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v54 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v55 = v1;
    v23 = v22;
    v59 = v22;
    *v21 = 136446466;
    v24 = sub_20CE14414();
    v26 = sub_20CD96DCC(v24, v25, &v59);
    ObjectType = v8;
    v27 = v10;
    v28 = v3;
    v29 = v26;

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = sub_20CDEF9E0();
    v32 = v31;
    sub_20CDCB4D0(v16);
    v33 = sub_20CD96DCC(v30, v32, &v59);
    v3 = v28;
    v10 = v27;
    v8 = ObjectType;

    *(v21 + 14) = v33;
    _os_log_impl(&dword_20CD70000, v18, v19, "[%{public}s] Test cannot start. Error: %s.", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v23, -1, -1);
    v34 = v21;
    v4 = v54;
    MEMORY[0x20F314110](v34, -1, -1);
  }

  else
  {

    sub_20CDCB4D0(v16);
  }

  sub_20CDCB46C(v58, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v36 = *v14;
      v37 = *(v14 + 1);
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      v38 = sub_20CE12354();
      v40 = v39;
      sub_20CE12354();
      sub_20CD81FDC(0, &qword_27C8135A0, &qword_27C812240, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_20CE16370;
      *(v41 + 56) = MEMORY[0x277D837D0];
      *(v41 + 64) = sub_20CDCB52C();
      *(v41 + 32) = v36;
      *(v41 + 40) = v37;
      v42 = sub_20CE13924();
      v44 = v43;

      sub_20CD95C28(v38, v40, v42, v44, 0);
    }

    v46 = *v14;
    v47 = sub_20CDA3584(*v14);
    v49 = v48;
    v50 = sub_20CDA3760(v46);
LABEL_18:
    sub_20CD95C28(v47, v49, v50, v51, 0);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (qword_27C811DC8 != -1)
    {
      swift_once();
    }

    v47 = sub_20CE12354();
    v49 = v52;
    v50 = sub_20CE12354();
    goto LABEL_18;
  }

  (*(v4 + 32))(v10, v14, v3);
  (*(v4 + 16))(v8, v10, v3);
  if ((*(v4 + 88))(v8, v3) == *MEMORY[0x277D12D48])
  {
    v61 = 1;
    v60 = 15;
    sub_20CDC51E0(&v61, &v60);
  }

  else
  {
    v63 = 1;
    v62 = 4;
    sub_20CDC51E0(&v63, &v62);
    (*(v4 + 8))(v8, v3);
  }

  sub_20CDC970C(v10);
  return (*(v4 + 8))(v10, v3);
}

id HearingTestMainViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingTestMainViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CDCA7BC()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id sub_20CDCA868(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20CDCA990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HearingTestInterruptionViewControllerManager();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
  *v10 = 0;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions] = MEMORY[0x277D84FA0];
  v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck] = 0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager] = a1;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_requirementStatusManager] = a2;
  v11 = &v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_analyticsManager];
  *v11 = a3;
  v11[1] = &off_2823BE0C0;
  *&v9[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager] = a4;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

char *sub_20CDCAA9C(unint64_t a1)
{
  v2 = type metadata accessor for HearingTestOptions();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = 0;
  v29.receiver = v3;
  v29.super_class = v2;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE141C4())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F313610](v5, a1);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
      v10 = *&v25[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];
      v11 = objc_allocWithZone(v2);
      *&v11[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v10;
      v28.receiver = v11;
      v28.super_class = v2;
      v12 = objc_msgSendSuper2(&v28, sel_init);
      v13 = *&v12[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue];

      v14 = OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue;
      v15 = *(v7 + OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue) & v13;
      v16 = objc_allocWithZone(v2);
      *&v16[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v15;
      v27.receiver = v16;
      v27.super_class = v2;
      v17 = objc_msgSendSuper2(&v27, sel_init);
      v18 = sub_20CE13E44();

      if (v18)
      {

        ++v5;
        if (v8 == i)
        {
          return v25;
        }
      }

      else
      {
        v19 = *&v25[v9];
        v20 = v7;

        v21 = *(v7 + v14) | v19;
        v22 = objc_allocWithZone(v2);
        *&v22[OBJC_IVAR____TtC13HearingTestUI18HearingTestOptions_rawValue] = v21;
        v26.receiver = v22;
        v26.super_class = v2;
        v25 = objc_msgSendSuper2(&v26, sel_init);

        v5 = v8;
        if (v8 == i)
        {
          return v25;
        }
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  return v25;
}

id sub_20CDCACA4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_requirementStatusManager;
  v11 = sub_20CE12A34();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v4[v10] = sub_20CE12A44();
  v14 = &v4[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_automationIdentifierBase];
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v16 = qword_27C817868;
  v15 = unk_27C817870;
  v17 = MEMORY[0x277D837D0];
  sub_20CDCBB64(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20CE16360;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  *(v18 + 48) = 0x776569566E69614DLL;
  *(v18 + 56) = 0xE800000000000000;
  v47[0] = v18;
  sub_20CDCBB64(0, &qword_27C8121F0, v17, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v19 = sub_20CE138C4();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_flowManager] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController____lazy_storage___startHearingTestButton] = 0;
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_cancellables] = MEMORY[0x277D84FA0];
  if (a4)
  {
    v22 = [swift_unknownObjectRetain() hearingLossArticleViewController];
    v48 = &type metadata for ControllerBasedArticlePresenter;
    v49 = &off_2823BC0D0;
    swift_unknownObjectRelease();
    v47[0] = v22;
  }

  else
  {
    v23 = [objc_opt_self() sharedApplication];
    v48 = &type metadata for URLBasedArticlePresenter;
    v49 = &off_2823BCF30;
    v47[0] = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
  }

  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_healthStore] = a1;
  v24 = objc_opt_self();
  v25 = a1;
  v26 = [v24 sharedApplication];
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_application] = v26;
  v27 = type metadata accessor for HearingTestFlowAnalyticsData();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v25;
  v31 = HearingTestFlowAnalyticsData.init(entryPoint:)(a2);
  type metadata accessor for HearingTestAnalyticsManager();
  v32 = swift_allocObject();
  v32[2] = v30;
  v33 = v30;
  v34 = HKLogHearingCategory();
  v35 = [objc_allocWithZone(MEMORY[0x277CCCFE8]) initWithLoggingCategory:v34 healthDataSource:v33];

  v32[3] = v35;
  v32[4] = v31;
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_analyticsManager] = v32;
  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_options] = a3;
  sub_20CD7C388(v47, &v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_articlePresenter]);
  _s13FeatureStatusCMa();
  swift_allocObject();
  v36 = v33;
  v37 = a3;
  v38 = sub_20CDA2E30(v36);

  *&v5[OBJC_IVAR____TtC13HearingTestUI29HearingTestMainViewController_featureStatus] = v38;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v39 = qword_27C8179E8;
  sub_20CE12354();
  v40 = sub_20CE13914();

  v41 = v39;
  v42 = sub_20CE13914();
  v43 = [objc_opt_self() imageNamed:v42 inBundle:{v41, 0xE000000000000000}];

  v46.receiver = v5;
  v46.super_class = type metadata accessor for HearingTestMainViewController();
  v44 = objc_msgSendSuper2(&v46, sel_initWithTitle_detailText_icon_contentLayout_, v40, 0, v43, 2);

  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v44;
}

uint64_t sub_20CDCB28C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_20CDCB46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreTestError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCB4D0(uint64_t a1)
{
  v2 = type metadata accessor for PreTestError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CDCB52C()
{
  result = qword_27C812E58;
  if (!qword_27C812E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812E58);
  }

  return result;
}

void sub_20CDCB580(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20CDC9D28(a1);
}

void sub_20CDCB588(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20CDC62F8(a1);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CDCB5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDCB60C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20CD7C660;

  return sub_20CDC5A18(a1, v4, v5, v7, v6);
}

uint64_t sub_20CDCB6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_20CDCB740()
{
  result = qword_27C812E70;
  if (!qword_27C812E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812E70);
  }

  return result;
}

void sub_20CDCB794()
{
  if (!qword_27C812E78)
  {
    sub_20CDA3448();
    sub_20CDCB28C(&qword_27C812E80, 255, sub_20CDA3448);
    v0 = sub_20CE12D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812E78);
    }
  }
}

void sub_20CDCB82C()
{
  if (!qword_27C812E88)
  {
    sub_20CDCB794();
    sub_20CDCB28C(&qword_27C812E90, 255, sub_20CDCB794);
    v0 = sub_20CE12D74();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812E88);
    }
  }
}

void sub_20CDCB8C4()
{
  if (!qword_27C812E98)
  {
    sub_20CDCB82C();
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    sub_20CDCB28C(&qword_27C812EA0, 255, sub_20CDCB82C);
    sub_20CDA33E0();
    v0 = sub_20CE12D94();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812E98);
    }
  }
}

uint64_t sub_20CDCB994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDCB9F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20CDC7FB4();
}

void sub_20CDCB9FC(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_20CDC8914(a1);
}

unint64_t sub_20CDCBA0C()
{
  result = qword_27C812EB0;
  if (!qword_27C812EB0)
  {
    type metadata accessor for HearingTestFlowManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27C812EB0);
  }

  return result;
}

unint64_t sub_20CDCBA54()
{
  result = qword_27C812C80;
  if (!qword_27C812C80)
  {
    sub_20CDCB5A8(255, &qword_27C812C78, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812C80);
  }

  return result;
}

uint64_t sub_20CDCBADC(uint64_t a1)
{
  sub_20CD81FDC(0, &qword_27C812C30, &qword_27C812C38, &protocol descriptor for NoiseStatusProviding, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20CDCBB64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *HearingTestInterruptionType.makeViewController(noiseStatusProvider:deviceName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_20CDCBC20(v8, a2, a3, v3, v6, v7);
}

void *sub_20CDCBC20(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v27[3] = a5;
  v27[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (*a4 == 4)
  {
    v26 = 4;
    sub_20CD7C388(v27, v24);
    v13 = objc_allocWithZone(type metadata accessor for HearingTestNoiseInterruptionViewController());
    v14 = v25;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    v20 = sub_20CDA99E4(&v26, v18, v13, a5, a6);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    LOBYTE(v24[0]) = *a4;
    v21 = objc_allocWithZone(type metadata accessor for HearingTestInterruptionsViewController());

    v20 = sub_20CD83D04(v24, a2, a3, 2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v20;
}

void sub_20CDCBE88()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE13284();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HearingTestDetailedResultsViewController();
  v106.receiver = v0;
  v106.super_class = v7;
  objc_msgSendSuper2(&v106, sel_viewDidLoad);
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 secondarySystemBackgroundColor];
  [v9 setBackgroundColor_];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v12 = sub_20CE13914();

  [v1 setTitle_];

  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v99 = v10;
  v100 = v6;
  v98 = ObjectType;
  v15 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView];
  [v13 addSubview_];

  v101 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer];
  [v15 addSubview_];
  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_chartController];
  [v1 addChildViewController_];
  v17 = [v16 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase];
  v20 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase + 8];
  v21 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  v97 = xmmword_20CE16360;
  *(v22 + 16) = xmmword_20CE16360;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = 0x7472616843;
  *(v22 + 56) = 0xE500000000000000;
  v102 = v22;
  sub_20CDA1464(0, &qword_27C8121F0, v21, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  v23 = sub_20CE13914();

  [v18 setAccessibilityIdentifier_];

  v24 = [v16 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = v101;
  [v101 addArrangedSubview_];

  [v16 didMoveToParentViewController_];
  v28 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_audiogramSample];
  v102 = *&v1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_healthStore];
  v27 = v102;
  v103 = v28;
  v104 = v19;
  v105 = v20;
  sub_20CDCDCB0();
  v30 = objc_allocWithZone(v29);

  v31 = v27;
  v32 = v28;
  v33 = sub_20CE131F4();
  sub_20CE13274();
  sub_20CE131D4();
  v34 = v33;
  [v1 addChildViewController_];
  v35 = [v34 view];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v35;
  v37 = [v1 view];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  [v37 frame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v36 setFrame_];
  v47 = [v34 view];

  if (!v47)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v48 = [v99 clearColor];
  [v47 setBackgroundColor_];

  v49 = [v34 view];
  if (!v49)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v49 setTranslatesAutoresizingMaskIntoConstraints_];

  v50 = [v34 view];
  if (!v50)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v26 addArrangedSubview_];

  [v34 didMoveToParentViewController_];
  sub_20CDA1464(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20CE185B0;
  v52 = [v15 topAnchor];
  v53 = [v1 view];
  if (!v53)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = v53;
  v55 = [v53 safeAreaLayoutGuide];

  v56 = [v55 topAnchor];
  v57 = [v52 constraintEqualToAnchor_];

  *(v51 + 32) = v57;
  v58 = [v15 bottomAnchor];
  v59 = [v1 &selRef_setModalInPresentation_];
  if (!v59)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v60 = v59;
  v61 = [v59 safeAreaLayoutGuide];

  v62 = [v61 bottomAnchor];
  v63 = [v58 constraintEqualToAnchor_];

  *(v51 + 40) = v63;
  v64 = [v15 leadingAnchor];
  v65 = [v1 &selRef_setModalInPresentation_];
  if (!v65)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v66 = v65;
  v67 = [v65 leadingAnchor];

  v68 = [v64 constraintEqualToAnchor_];
  *(v51 + 48) = v68;
  v69 = [v15 trailingAnchor];
  v70 = [v1 &selRef_setModalInPresentation_];
  if (v70)
  {
    v71 = v70;
    v100 = objc_opt_self();
    v72 = [v71 trailingAnchor];

    v73 = [v69 constraintEqualToAnchor_];
    *(v51 + 56) = v73;
    v74 = v101;
    v75 = [v101 topAnchor];
    v76 = [v15 topAnchor];
    v77 = [v75 constraintEqualToAnchor_];

    *(v51 + 64) = v77;
    v78 = [v74 bottomAnchor];
    v79 = [v15 bottomAnchor];
    v80 = [v78 constraintEqualToAnchor:v79 constant:-16.0];

    *(v51 + 72) = v80;
    v81 = [v74 leadingAnchor];
    v82 = [v15 leadingAnchor];
    v83 = [v81 constraintEqualToAnchor_];

    *(v51 + 80) = v83;
    v84 = [v74 trailingAnchor];
    v85 = [v15 trailingAnchor];
    v86 = [v84 constraintEqualToAnchor_];

    *(v51 + 88) = v86;
    v87 = [v74 widthAnchor];
    v88 = [v15 widthAnchor];
    v89 = [v87 constraintEqualToAnchor_];

    *(v51 + 96) = v89;
    sub_20CD83128(0, &qword_27C812F10, 0x277CCAAD0);
    v90 = sub_20CE13AA4();

    [v100 activateConstraints_];

    v91 = [v1 traitCollection];
    sub_20CE13D74();

    sub_20CE13DD4();
    [v74 setDirectionalLayoutMargins_];
    sub_20CDCE16C(0, &qword_27C8127C8, sub_20CDA153C, MEMORY[0x277D84560]);
    v92 = swift_allocObject();
    *(v92 + 16) = v97;
    v93 = sub_20CE13784();
    v94 = sub_20CDCDD60(&qword_27C812F18, MEMORY[0x277D126D0]);
    *(v92 + 32) = v93;
    *(v92 + 40) = v94;
    v95 = sub_20CE12D34();
    v96 = MEMORY[0x277D74DB8];
    *(v92 + 48) = v95;
    *(v92 + 56) = v96;
    sub_20CE13CF4();

    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_20CDCCAFC()
{
  v17 = *(v0 + OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer);
  v1 = [v17 arrangedSubviews];
  sub_20CD83128(0, &qword_27C812EF8, 0x277D75D18);
  v2 = sub_20CE13AB4();

  v18 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20CE141C4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F313610](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v6 removeFromSuperview];
      v8 = v6;
      MEMORY[0x20F312FA0]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20CE13AD4();
      }

      sub_20CE13AF4();

      v9 = v18;

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_19:

  if (v9 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_20CE141C4())
  {
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F313610](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_20CE13B84();
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v17 addArrangedSubview_];

      ++v12;
      if (v15 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
}

id sub_20CDCCEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTestDetailedResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDCCF98@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v91 = a1;
  v92 = a2;
  v90 = a3;
  sub_20CDCE3BC();
  v86 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v89 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v75 - v11;
  sub_20CDCE2B4();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v87 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = &v75 - v16;
  sub_20CE13B84();
  v85 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v100 = sub_20CE12354();
  v101 = v17;
  v76 = sub_20CD935CC();
  v18 = sub_20CE13414();
  v20 = v19;
  v22 = v21;
  sub_20CE13334();
  sub_20CE132E4();

  v23 = sub_20CE133E4();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_20CD93620(v18, v20, v22 & 1);

  v100 = v23;
  v101 = v25;
  v30 = v27 & 1;
  LOBYTE(v102) = v27 & 1;
  v103 = v29;
  LOWORD(v104) = 256;
  v31 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v84 = v32;
  v33 = swift_allocObject();
  v83 = xmmword_20CE16360;
  *(v33 + 16) = xmmword_20CE16360;
  v34 = v92;
  *(v33 + 32) = v91;
  *(v33 + 40) = v34;
  *(v33 + 48) = 0xD000000000000012;
  *(v33 + 56) = 0x800000020CE1ECE0;
  v94 = v33;
  sub_20CDA1464(0, &qword_27C8121F0, v31, MEMORY[0x277D83940]);
  v82 = v35;
  v81 = sub_20CD81F60();
  swift_bridgeObjectRetain_n();
  sub_20CE138C4();

  v36 = MEMORY[0x277CDFC50];
  sub_20CDCE50C(0, &qword_27C812528, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
  sub_20CDCE990(&qword_27C812A40, &qword_27C812528, v36);
  sub_20CE134A4();

  sub_20CD93620(v23, v25, v30);

  sub_20CE135F4();
  sub_20CE12F04();
  v80 = v100;
  v79 = v102;
  v78 = v104;
  v77 = v105;
  v98 = 1;
  v97 = v101;
  v96 = v103;
  v94 = sub_20CDCE560();
  v95 = v37;
  v76 = sub_20CE13414();
  v39 = v38;
  LOBYTE(v18) = v40;
  v42 = v41;
  LOBYTE(v23) = sub_20CE132A4();
  sub_20CE12E94();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  LOBYTE(v31) = v18 & 1;
  LOBYTE(v94) = v18 & 1;
  LOBYTE(v99[0]) = 0;
  v51 = [objc_opt_self() tertiarySystemBackgroundColor];
  v52 = sub_20CE134B4();
  LOBYTE(v36) = sub_20CE132A4();
  sub_20CDCE348(0, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
  v54 = &v6[*(v53 + 36)];
  v55 = *(sub_20CE12FE4() + 20);
  v56 = *MEMORY[0x277CE0118];
  v57 = sub_20CE13174();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  __asm { FMOV            V0.2D, #10.0 }

  *v54 = _Q0;
  sub_20CD922F4();
  *&v54[*(v63 + 36)] = 256;
  *v6 = v76;
  *(v6 + 1) = v39;
  v6[16] = v31;
  *(v6 + 3) = v42;
  v6[32] = v23;
  *(v6 + 5) = v44;
  *(v6 + 6) = v46;
  *(v6 + 7) = v48;
  *(v6 + 8) = v50;
  v6[72] = 0;
  *(v6 + 73) = v99[0];
  *(v6 + 19) = *(v99 + 3);
  *(v6 + 10) = v52;
  v6[88] = v36;
  *&v6[*(v86 + 36)] = 256;
  v64 = swift_allocObject();
  *(v64 + 16) = v83;
  v65 = v92;
  *(v64 + 32) = v91;
  *(v64 + 40) = v65;
  *(v64 + 48) = 0xD000000000000010;
  *(v64 + 56) = 0x800000020CE1ED00;
  v94 = v64;
  sub_20CE138C4();

  sub_20CDCE790();
  v66 = v88;
  sub_20CE134A4();

  sub_20CDCEC24(v6, sub_20CDCE3BC);
  v67 = v93;
  v68 = v87;
  sub_20CDCEAA0(v93, v87);
  LOBYTE(v56) = v98;
  LOBYTE(v55) = v97;
  LOBYTE(v39) = v96;
  v69 = v89;
  sub_20CDCEB04(v66, v89);
  v70 = v90;
  sub_20CDCEAA0(v68, v90);
  sub_20CDCE1D0();
  v72 = v70 + *(v71 + 48);
  *v72 = 0;
  *(v72 + 8) = v56;
  *(v72 + 16) = v80;
  *(v72 + 24) = v55;
  *(v72 + 32) = v79;
  *(v72 + 40) = v39;
  v73 = v77;
  *(v72 + 48) = v78;
  *(v72 + 56) = v73;
  sub_20CDCEB04(v69, v70 + *(v71 + 64));
  sub_20CDCEB98(v66);
  sub_20CDCEC24(v67, sub_20CDCE2B4);
  sub_20CDCEB98(v69);
  sub_20CDCEC24(v68, sub_20CDCE2B4);
}

uint64_t sub_20CDCD830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_20CE131C4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_20CDCE0D4();
  return sub_20CDCCF98(v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_20CDCD89C(char *a1)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [a1 traitCollection];
  v3 = sub_20CE13D74();

  if (v3 != sub_20CE13D74())
  {
    v4 = [a1 traitCollection];
    sub_20CE13D74();

    v5 = *&a1[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer];
    sub_20CE13DD4();
    [v5 setDirectionalLayoutMargins_];
  }

  sub_20CDCCAFC();
}

id sub_20CDCD9C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView;
  v7 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v7 setShowsHorizontalScrollIndicator_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setDistribution_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v11 = &v3[v10];
  v13 = qword_27C817868;
  v12 = unk_27C817870;
  v14 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CE16360;
  *(v15 + 32) = v13;
  *(v15 + 40) = v12;
  *(v15 + 48) = 0x64656C6961746544;
  *(v15 + 56) = 0xEF73746C75736552;
  v25 = v15;
  sub_20CDA1464(0, &qword_27C8121F0, v14, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v16 = sub_20CE138C4();
  v18 = v17;

  *v11 = v16;
  v11[1] = v18;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_bottomPadding] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_audiogramSample] = a1;
  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_healthStore] = a2;
  v19 = objc_allocWithZone(MEMORY[0x277D128C0]);
  v20 = a1;
  v21 = [v19 initWithHealthStore_];
  v22 = [v21 staticAudiogramChartViewControllerWithAudiogramSample:v20 hideEnhancedUI:1];

  *&v3[OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_chartController] = v22;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for HearingTestDetailedResultsViewController();
  return objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
}

void sub_20CDCDCB0()
{
  if (!qword_27C812F00)
  {
    sub_20CDCDD0C();
    v0 = sub_20CE13204();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812F00);
    }
  }
}

unint64_t sub_20CDCDD0C()
{
  result = qword_27C812F08;
  if (!qword_27C812F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F08);
  }

  return result;
}

uint64_t sub_20CDCDD60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CDCDDA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollView;
  v3 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_scrollViewContainer;
  v5 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v5 setAxis_];
  [v5 setSpacing_];
  [v5 setDistribution_];
  [v5 setLayoutMarginsRelativeArrangement_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v6 = OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_automationIdentifierBase;
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v7 = (v1 + v6);
  v9 = qword_27C817868;
  v8 = unk_27C817870;
  v10 = MEMORY[0x277D837D0];
  sub_20CDA1464(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CE16360;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = 0x64656C6961746544;
  *(v11 + 56) = 0xEF73746C75736552;
  sub_20CDA1464(0, &qword_27C8121F0, v10, MEMORY[0x277D83940]);
  sub_20CD81F60();

  v12 = sub_20CE138C4();
  v14 = v13;

  *v7 = v12;
  v7[1] = v14;
  *(v1 + OBJC_IVAR____TtC13HearingTestUI40HearingTestDetailedResultsViewController_bottomPadding) = 0x4030000000000000;
  sub_20CE141B4();
  __break(1u);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20CDCE020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20CDCE068(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_20CDCE0D4()
{
  if (!qword_27C812F20)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    v0 = sub_20CE12F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812F20);
    }
  }
}

void sub_20CDCE16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDCE1D0()
{
  if (!qword_27C812F30)
  {
    sub_20CDCE2B4();
    sub_20CDCE50C(255, &qword_27C812508, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_20CDCE348(255, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C812F30);
    }
  }
}

void sub_20CDCE2B4()
{
  if (!qword_27C812F38)
  {
    sub_20CDCE50C(255, &qword_27C812528, MEMORY[0x277CE0BD8], MEMORY[0x277CDFC50], MEMORY[0x277CDFAB8]);
    sub_20CE13264();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812F38);
    }
  }
}

void sub_20CDCE348(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CDCE3BC()
{
  if (!qword_27C812F48)
  {
    sub_20CDCE348(255, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812F48);
    }
  }
}

void sub_20CDCE44C()
{
  if (!qword_27C812F58)
  {
    sub_20CDCE50C(255, &qword_27C812F60, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_20CDCE50C(255, &qword_27C812F68, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812F58);
    }
  }
}

void sub_20CDCE50C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_20CDCE560()
{
  v0 = [objc_opt_self() displayTypeWithIdentifier_];
  if (v0 && (v1 = v0, v2 = [v0 localization], v1, v3 = objc_msgSend(v2, sel_summary), v2, v3))
  {
    v4 = sub_20CE13954();
    v6 = v5;

    v14[0] = v4;
    v14[1] = v6;
    sub_20CD935CC();
    v7 = sub_20CE13FA4();

    return v7;
  }

  else
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v9 = sub_20CE12CB4();
    __swift_project_value_buffer(v9, qword_27C817768);
    v10 = sub_20CE12C94();
    v11 = sub_20CE13CC4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_20CD96DCC(0xD000000000000043, 0x800000020CE1ED20, v14);
      _os_log_impl(&dword_20CD70000, v10, v11, "[%{public}s] Couldn't fetch audiogram data type summary", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_20CDCE790()
{
  result = qword_27C812F70;
  if (!qword_27C812F70)
  {
    sub_20CDCE3BC();
    sub_20CDCE810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F70);
  }

  return result;
}

unint64_t sub_20CDCE810()
{
  result = qword_27C812F78;
  if (!qword_27C812F78)
  {
    sub_20CDCE348(255, &qword_27C812F50, sub_20CDCE44C, sub_20CD922F4);
    sub_20CDCE8F0();
    sub_20CDCDD60(&qword_27C812588, sub_20CD922F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F78);
  }

  return result;
}

unint64_t sub_20CDCE8F0()
{
  result = qword_27C812F80;
  if (!qword_27C812F80)
  {
    sub_20CDCE44C();
    sub_20CDCE990(&qword_27C812F88, &qword_27C812F60, MEMORY[0x277CDF928]);
    sub_20CDCEA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F80);
  }

  return result;
}

uint64_t sub_20CDCE990(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_20CDCE50C(255, a2, MEMORY[0x277CE0BD8], a3, MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20CDCEA1C()
{
  result = qword_27C812F90;
  if (!qword_27C812F90)
  {
    sub_20CDCE50C(255, &qword_27C812F68, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812F90);
  }

  return result;
}

uint64_t sub_20CDCEAA0(uint64_t a1, uint64_t a2)
{
  sub_20CDCE2B4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCEB04(uint64_t a1, uint64_t a2)
{
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDCEB98(uint64_t a1)
{
  sub_20CDCE348(0, &qword_27C812F40, sub_20CDCE3BC, MEMORY[0x277CDE470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDCEC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20CDCEC84()
{
  if (!qword_27C812FA0)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    sub_20CDCED18();
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FA0);
    }
  }
}

unint64_t sub_20CDCED18()
{
  result = qword_27C812FA8;
  if (!qword_27C812FA8)
  {
    sub_20CDCE16C(255, &qword_27C812F28, sub_20CDCE1D0, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C812FA8);
  }

  return result;
}

Swift::String __swiftcall LocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_20CDCEE7C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v72 = sub_20CE131A4();
  v70 = *(v72 - 8);
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCF810();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCF9A0();
  v61 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFA8C();
  v62 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFB0C();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFFA4(0, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
  v59 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v60 = &v58 - v22;
  sub_20CDCFE64();
  v63 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCFF70(0);
  v64 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD00C8(0);
  v66 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v65 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v1;
  *v7 = sub_20CE13114();
  *(v7 + 1) = 0x4010000000000000;
  v7[16] = 0;
  sub_20CDD00FC();
  sub_20CDCF4E4(v34, &v7[*(v35 + 44)]);
  if (v34)
  {
    v36 = sub_20CE134E4();
  }

  else
  {
    v36 = sub_20CE134D4();
  }

  v37 = v36;
  KeyPath = swift_getKeyPath();
  sub_20CDD01BC(v7, v11, sub_20CDCF810);
  v39 = &v11[*(v61 + 36)];
  *v39 = KeyPath;
  v39[1] = v37;
  v40 = sub_20CE13334();
  v41 = swift_getKeyPath();
  sub_20CDD01BC(v11, v15, sub_20CDCF9A0);
  v42 = &v15[*(v62 + 36)];
  *v42 = v41;
  v42[1] = v40;
  sub_20CE13314();
  sub_20CDCFB90();
  sub_20CE13444();
  sub_20CDD0644(v15, sub_20CDCFA8C);
  v43 = v60;
  v44 = &v60[*(v59 + 36)];
  sub_20CDCFD98(0);
  v46 = *(v45 + 28);
  v47 = *MEMORY[0x277CE0B48];
  v48 = sub_20CE133D4();
  v49 = *(v48 - 8);
  (*(v49 + 104))(v44 + v46, v47, v48);
  (*(v49 + 56))(v44 + v46, 0, 1, v48);
  *v44 = swift_getKeyPath();
  (*(v67 + 32))(v43, v19, v68);
  v50 = swift_getKeyPath();
  sub_20CD741A4(v43, v26);
  v51 = &v26[*(v63 + 36)];
  *v51 = v50;
  v51[1] = 0x3FE0000000000000;
  v52 = sub_20CE13624();
  sub_20CD74238(v26, v30);
  v53 = &v30[*(v64 + 36)];
  *v53 = v52;
  v53[8] = v34;
  v75 = v34;
  v73 = sub_20CDCF748();
  v74 = v54;
  sub_20CDD02C0();
  sub_20CD935CC();
  v55 = v65;
  sub_20CE13474();

  sub_20CDD057C(v30, sub_20CDCFF70);
  v56 = v69;
  sub_20CE13194();
  sub_20CE12FC4();
  (*(v70 + 8))(v56, v72);
  return sub_20CDD057C(v55, sub_20CDD00C8);
}

uint64_t sub_20CDCF4E4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_20CDCF940();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = sub_20CE13534();
  sub_20CE13484();

  v25 = a1 & 1;
  v23 = sub_20CDCF748();
  v24 = v11;
  sub_20CD935CC();
  v12 = sub_20CE13414();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_20CDD05DC(v10, v8, sub_20CDCF940);
  sub_20CDD05DC(v8, a2, sub_20CDCF940);
  sub_20CDCF8D8();
  v20 = a2 + *(v19 + 48);
  *v20 = v12;
  *(v20 + 8) = v14;
  *(v20 + 16) = v16 & 1;
  *(v20 + 24) = v18;
  sub_20CD93B54(v12, v14, v16 & 1);

  sub_20CDD0644(v10, sub_20CDCF940);
  sub_20CD93620(v12, v14, v16 & 1);

  sub_20CDD0644(v8, sub_20CDCF940);
}

uint64_t sub_20CDCF748()
{
  *v0;
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  return sub_20CE12354();
}

void sub_20CDCF810()
{
  if (!qword_27C812FB0)
  {
    sub_20CDCF8A4(255);
    sub_20CDCFD00(&qword_27C812FD0, sub_20CDCF8A4);
    v0 = sub_20CE13574();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FB0);
    }
  }
}

void sub_20CDCF8D8()
{
  if (!qword_27C812FC0)
  {
    sub_20CDCF940();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C812FC0);
    }
  }
}

void sub_20CDCF940()
{
  if (!qword_27C812FC8)
  {
    sub_20CE13264();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FC8);
    }
  }
}

void sub_20CDCF9A0()
{
  if (!qword_27C812FD8)
  {
    sub_20CDCF810();
    sub_20CDCFA20(255, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FD8);
    }
  }
}

void sub_20CDCFA20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CDCFF20(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE13254();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDCFA8C()
{
  if (!qword_27C812FF0)
  {
    sub_20CDCF9A0();
    sub_20CDCFA20(255, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812FF0);
    }
  }
}

void sub_20CDCFB0C()
{
  if (!qword_27C813008)
  {
    sub_20CDCFA8C();
    sub_20CDCFB90();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27C813008);
    }
  }
}

unint64_t sub_20CDCFB90()
{
  result = qword_27C813010;
  if (!qword_27C813010)
  {
    sub_20CDCFA8C();
    sub_20CDCFC30();
    sub_20CDCFD48(&qword_27C813030, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813010);
  }

  return result;
}

unint64_t sub_20CDCFC30()
{
  result = qword_27C813018;
  if (!qword_27C813018)
  {
    sub_20CDCF9A0();
    sub_20CDCFD00(&qword_27C813020, sub_20CDCF810);
    sub_20CDCFD48(&qword_27C813028, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813018);
  }

  return result;
}

uint64_t sub_20CDCFD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CDCFD48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDCFA20(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDCFDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDCFE64()
{
  if (!qword_27C813050)
  {
    sub_20CDCFFA4(255, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
    sub_20CDCFF20(255, &qword_27C813058, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813050);
    }
  }
}

void sub_20CDCFF20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_20CDCFFA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_20CE12FD4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_20CDD0018()
{
  if (!qword_27C813068)
  {
    sub_20CDD0074();
    v0 = sub_20CE13184();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813068);
    }
  }
}

unint64_t sub_20CDD0074()
{
  result = qword_27C813070;
  if (!qword_27C813070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813070);
  }

  return result;
}

void sub_20CDD00FC()
{
  if (!qword_27C813080)
  {
    sub_20CDCF8A4(255);
    v0 = sub_20CE12F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813080);
    }
  }
}

uint64_t sub_20CDD0164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20CE130B4();
  *a1 = result;
  return result;
}

uint64_t sub_20CDD0190(uint64_t *a1)
{
  v1 = *a1;

  return sub_20CE130C4();
}

uint64_t sub_20CDD01BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDD0224(uint64_t a1)
{
  sub_20CDCFE30(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20CDD05DC(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), sub_20CDCFE30);
  return sub_20CE130E4();
}

unint64_t sub_20CDD02C0()
{
  result = qword_27C813088;
  if (!qword_27C813088)
  {
    sub_20CDCFF70(255);
    sub_20CDD0370();
    sub_20CDCFD00(&qword_27C8130B0, sub_20CDD0018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813088);
  }

  return result;
}

unint64_t sub_20CDD0370()
{
  result = qword_27C813090;
  if (!qword_27C813090)
  {
    sub_20CDCFE64();
    sub_20CDD03F0();
    sub_20CDD0500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813090);
  }

  return result;
}

unint64_t sub_20CDD03F0()
{
  result = qword_27C813098;
  if (!qword_27C813098)
  {
    sub_20CDCFFA4(255, &qword_27C813038, sub_20CDCFB0C, sub_20CDCFD98);
    sub_20CDCFA8C();
    sub_20CDCFB90();
    swift_getOpaqueTypeConformance2();
    sub_20CDCFD00(&qword_27C8130A0, sub_20CDCFD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813098);
  }

  return result;
}

unint64_t sub_20CDD0500()
{
  result = qword_27C8130A8;
  if (!qword_27C8130A8)
  {
    sub_20CDCFF20(255, &qword_27C813058, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130A8);
  }

  return result;
}

uint64_t sub_20CDD057C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CDD05DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDD0644(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CDD06A4()
{
  result = qword_27C8130B8;
  if (!qword_27C8130B8)
  {
    sub_20CDD00C8(255);
    sub_20CDD02C0();
    sub_20CDCFD00(&qword_27C8125B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130B8);
  }

  return result;
}

void sub_20CDD0754(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = [a1 hearingLevelSummary];
  v10 = [v9 leftEarMetrics];
  if (!v10)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v12 = 0;
LABEL_14:
    v47 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 averageSensitivity];

  if (!v12)
  {
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_14;
  }

  v13 = a4;
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v43 = 0xE000000000000000;
  sub_20CE12354();
  sub_20CD935CC();
  v14 = sub_20CE13F94();
  v50 = v15;
  v51 = v14;

  v16 = HKHearingLevelClassificationForSensitivity();
  v17 = sub_20CDAAE2C(v16);
  v48 = v18;
  v49 = v17;
  sub_20CDD0AE8(0, a2);
  v20 = v19;
  v22 = v21;

  if (v22)
  {
    v12 = v20;
  }

  else
  {
    v12 = 0;
  }

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v47 = v23;
  a4 = v13;
LABEL_15:
  v24 = [v9 rightEarMetrics];
  if (v24)
  {
    v46 = v12;
    v25 = v24;
    v26 = [v24 averageSensitivity];

    if (v26)
    {
      v44 = v9;
      v45 = a4;
      v27 = a1;
      v28 = a2;
      if (qword_27C811DC8 != -1)
      {
        swift_once();
      }

      sub_20CE12354();
      sub_20CD935CC();
      v29 = sub_20CE13F94();
      v31 = v30;

      v32 = HKHearingLevelClassificationForSensitivity();
      v33 = sub_20CDAAE2C(v32);
      v35 = v34;
      v36 = v27;
      sub_20CDD0AE8(1, v28);
      v38 = v37;
      v40 = v39;

      if (v40)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      v42 = 0xE000000000000000;
      if (v40)
      {
        v42 = v40;
      }

      a4 = v45;
    }

    else
    {

      v29 = 0;
      v31 = 0;
      v33 = 0;
      v35 = 0;
      v41 = 0;
      v42 = 0;
    }

    v12 = v46;
  }

  else
  {

    v29 = 0;
    v31 = 0;
    v33 = 0;
    v35 = 0;
    v41 = 0;
    v42 = 0;
  }

  *a5 = v51;
  a5[1] = v50;
  a5[2] = v49;
  a5[3] = v48;
  a5[4] = v12;
  a5[5] = v47;
  a5[6] = v29;
  a5[7] = v31;
  a5[8] = v33;
  a5[9] = v35;
  a5[10] = v41;
  a5[11] = v42;
  a5[12] = a3;
  a5[13] = a4;
}

void sub_20CDD0AE8(uint64_t a1, void *a2)
{
  v5 = sub_20CE12434();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20CE12544();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_20CDD0FC0();
  v12 = v11;
  v37 = *(v11 - 8);
  v13 = *(v37 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = objc_opt_self();
  v20 = [v19 decibelHearingLevelUnit];
  v21 = [a2 localizedDisplayNameForUnit:v20 value:0];

  v42 = v21;
  v43 = v21;
  if (!v21)
  {
    sub_20CE13954();
    v43 = sub_20CE13914();

    sub_20CE13954();
    v42 = sub_20CE13914();
  }

  v41 = a1;
  swift_getKeyPath();
  v22 = v21;
  v40 = v2;
  v23 = [v2 hearingLevelSummary];
  v46 = v23;
  swift_getAtKeyPath();
  v24 = v45;
  if (!v45)
  {

    return;
  }

  v25 = [v45 averageSensitivity];

  if (!v25)
  {

    return;
  }

  v26 = [v19 decibelHearingLevelUnit];
  v36 = v25;
  [v25 doubleValueForUnit_];
  v28 = v27;

  v44 = v28;
  sub_20CE12534();
  sub_20CDA1354();
  sub_20CE123A4();
  sub_20CE12424();
  MEMORY[0x20F311900](v8, v12);
  (*(v38 + 8))(v8, v39);
  v29 = *(v37 + 8);
  v29(v16, v12);
  sub_20CDD1028();
  sub_20CE13864();
  v29(v18, v12);
  if ([v40 isAverageSensitivityUpperClampedForSide_])
  {

    v30 = sub_20CE13914();

    v31 = v43;
    v32 = HKLocalizedStringForUpperClampedValueAndUnit();

LABEL_11:
    sub_20CE13954();

    return;
  }

  v33 = sub_20CE13914();
  v34 = v42;
  v32 = HKFormatValueAndUnit();

  if (v32)
  {

    goto LABEL_11;
  }

  __break(1u);
}

void sub_20CDD0FC0()
{
  if (!qword_27C8130C0)
  {
    sub_20CDA1354();
    v0 = sub_20CE12404();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8130C0);
    }
  }
}

unint64_t sub_20CDD1028()
{
  result = qword_27C8130C8;
  if (!qword_27C8130C8)
  {
    sub_20CDD0FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8130C8);
  }

  return result;
}

uint64_t sub_20CDD108C(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x646573736170;
  }

  if (!a1)
  {
    return 0x64656C696166;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817780);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CB4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20CD70000, v3, v4, "Please handle new case of HearingModeUI.FitNoiseCheckStatus.", v5, 2u);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  return 0x6E776F6E6B6E75;
}

void sub_20CDD11B4(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_userDefaults] = v5;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_maxPauseTime] = 0x405E000000000000;
    v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] = 0;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager] = 0;
    v6 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
    v7 = sub_20CE124E4();
    (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
    v8 = &v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration];
    *v8 = 0;
    v8[8] = 1;
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer] = 0;
    swift_unknownObjectWeakInit();
    *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] = a1;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for HTUIEvaluationViewController();
    objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for HTUIEvaluationViewController()
{
  result = qword_281111368;
  if (!qword_281111368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDD16A4(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HTUIEvaluationViewController();
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
  v5 = *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
  v6 = *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager + 8);
  ObjectType = swift_getObjectType();
  v10 = 0;
  v8 = *(v6 + 48);
  swift_unknownObjectRetain();
  v8(&v10, v2, &protocol witness table for HTUIEvaluationViewController, ObjectType, v6);
  swift_unknownObjectRelease();
  sub_20CDD19E0(1);
  [*(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_application) setIdleTimerDisabled_];
  v9 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24));
  sub_20CDB91B4(v2, *v9);
  if ((v2[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] & 1) == 0)
  {
    [v2 scheduleEvaluationStart];
  }
}

void sub_20CDD19E0(char a1)
{
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v3 = sub_20CE12CB4();
  __swift_project_value_buffer(v3, qword_27C817768);
  v4 = sub_20CE12C94();
  v5 = sub_20CE13CD4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136446466;
    v8 = sub_20CE14414();
    v10 = sub_20CD96DCC(v8, v9, &v26);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (a1)
    {
      v11 = 0x657669746361;
    }

    else
    {
      v11 = 0x6576697463616E69;
    }

    if (a1)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    v13 = sub_20CD96DCC(v11, v12, &v26);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20CD70000, v4, v5, "[%{public}s] Setting sbsui_hearingTestMode to %s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v7, -1, -1);
    MEMORY[0x20F314110](v6, -1, -1);
  }

  v14 = [v1 viewIfLoaded];
  v15 = [v14 window];

  v24 = [v15 windowScene];
  v16 = v24;
  if (v24)
  {
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
LABEL_14:
    v25 = v16;
    swift_unknownObjectWeakAssign();
    [v25 SBSUI_setHearingTestMode:a1 & 1];
    [v25 _setSystemVolumeHUDEnabled:(a1 & 1) == 0];
    goto LABEL_15;
  }

  v25 = sub_20CE12C94();
  v18 = sub_20CE13CB4();
  if (os_log_type_enabled(v25, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446210;
    v21 = sub_20CE14414();
    v23 = sub_20CD96DCC(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20CD70000, v25, v18, "[%{public}s] Setting sbsui_hearingTestMode failed as the scene is nil.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x20F314110](v20, -1, -1);
    MEMORY[0x20F314110](v19, -1, -1);
  }

LABEL_15:
}

void sub_20CDD1D3C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton_];

  sub_20CDD9040(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CE183B0;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_didTapCancel];
  v15 = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_20CE13914();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    sub_20CE11910();
    v8 = v7;

    if (v8)
    {
      v14[3] = type metadata accessor for HTUIEvaluationViewController();
      v14[0] = v1;
      v9 = v1;
      sub_20CDEA770(v14, sel_invokeTapToRadar);
      v10 = sub_20CDD8EC0(v14, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDD9040);
      MEMORY[0x20F312FA0](v10);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20CE13AD4();
      }

      sub_20CE13AF4();
    }

    v11 = [v1 navigationItem];
    sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
    v12 = sub_20CE13AA4();

    [v11 setRightBarButtonItems_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDD1FB0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_20CE136C4();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CE136E4();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20CE13704();
  v31 = *(v38 - 8);
  v7 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v38);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817768);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CD4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    v18 = sub_20CE14414();
    v20 = ObjectType;
    v21 = sub_20CD96DCC(v18, v19, aBlock);

    *(v16 + 4) = v21;
    ObjectType = v20;
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] Scheduling initial state transition.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }

  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v22 = sub_20CE13D44();
  sub_20CE136F4();
  sub_20CE13734();
  v31 = *(v31 + 8);
  (v31)(v10, v38);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = ObjectType;
  aBlock[4] = sub_20CDD8C04;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_38;
  v25 = _Block_copy(aBlock);

  v26 = v32;
  sub_20CE136D4();
  v39 = MEMORY[0x277D84F90];
  sub_20CDD8C0C();
  sub_20CDD8C64(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDD8CC8();
  v27 = v33;
  v28 = v37;
  sub_20CE14044();
  MEMORY[0x20F313230](v12, v26, v27, v25);
  _Block_release(v25);

  (*(v36 + 8))(v27, v28);
  (*(v34 + 8))(v26, v35);
  (v31)(v12, v38);
}

void sub_20CDD24B8()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v1 = Strong;
  if (*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer])
  {
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v2 = sub_20CE12CB4();
    __swift_project_value_buffer(v2, qword_27C817768);
    v3 = sub_20CE12C94();
    v4 = sub_20CE13CD4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136446210;
      v7 = sub_20CE14414();
      v9 = sub_20CD96DCC(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Aborting initial state transition as the evaluation is paused.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x20F314110](v6, -1, -1);
      MEMORY[0x20F314110](v5, -1, -1);
    }
  }

  else
  {
    Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_hasTransitionedPastFirstState] = 1;
    v10 = [Strong view];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for HTUIEvaluationViewController.View();
      [swift_dynamicCastClassUnconditional() transitionToNextState];

      v12 = *&v1[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
      if (v12)
      {
        [v12 startTest];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_20CDD2764()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  type metadata accessor for HTUIEvaluationViewController.View();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  v6 = *(v3 + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_didTapHearHandler);
  v7 = v5[1];
  *v5 = sub_20CDD9038;
  v5[1] = v4;

  sub_20CD84E24(v6);

  v8 = [v0 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_actionButton);

  [v10 addTarget:v0 action:sel_didTapAction forControlEvents:64];
}

void sub_20CDD28DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager);
    v2 = Strong;

    if (v1)
    {
      sub_20CD75E84(1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20CDD2958(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
    v7 = *(v6 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_requirementStatusManager);

    static SessionFactory.make(defaults:channel:statusManager:)(v5, a1, v7, v20);

    v8 = *(v6 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_tonePlayer);
    v18 = sub_20CE128C4();
    v19 = &off_2823BD880;
    *&v17 = v8;
    v9 = type metadata accessor for SessionManager(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC13HearingTestUI14SessionManager_playState;
    v14 = type metadata accessor for SessionManager.PlayState(0);
    (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
    *(v12 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_continueTestTask) = 0;
    *(v12 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
    sub_20CD75924(v20, v12 + 72);
    sub_20CD75924(&v17, v12 + 32);
    v15 = (v12 + OBJC_IVAR____TtC13HearingTestUI14SessionManager_tonePlayDelay);
    *v15 = sub_20CD75964;
    v15[1] = 0;
    *(v12 + 24) = &off_2823BDB28;
    swift_unknownObjectWeakAssign();
    v16 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager);
    *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager) = v12;
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD2B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_10;
      }

LABEL_9:

      return;
    }

    v21 = (*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
    v22 = *v21;
    v7 = v21[1];
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = 1;
LABEL_16:
    LOBYTE(v24) = v11;
    v23 = *(v7 + 48);
    swift_unknownObjectRetain();
    v23(&v24, v9, &protocol witness table for HTUIEvaluationViewController, ObjectType, v7);

    swift_unknownObjectRelease();
    return;
  }

  if (a4 == 2)
  {
    goto LABEL_9;
  }

  if (a4 == 3)
  {
    v6 = (*&Strong[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
    v8 = *v6;
    v7 = v6[1];
    v9 = Strong;
    ObjectType = swift_getObjectType();
    v11 = 3;
    goto LABEL_16;
  }

LABEL_10:
  v12 = Strong;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v13 = sub_20CE12CB4();
  __swift_project_value_buffer(v13, qword_27C817768);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v24);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000012, 0x800000020CE1F000, &v24);
    _os_log_impl(&dword_20CD70000, v14, v15, "[%{public}s] %s received .cannotContinue and that should not happen.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }
}

void sub_20CDD2DE8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HTUIEvaluationViewController.View();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
    if (v3 == 4)
    {
      sub_20CDDE960();
    }

    else
    {
      v5 = *(*__swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(v4 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
      sub_20CDBE3A8();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD2F04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_20CE12924();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20CDD3454();
  if (v8 == 4)
  {
    v9 = [v0 view];
    if (!v9)
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = v9;
    type metadata accessor for HTUIEvaluationViewController.View();
    v11 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    if (v11 == 4)
    {
      v32 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager];
      LOBYTE(v45) = 6;
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_20CDDDFEC(v1, &v45, v32, v33, ObjectType);

      return;
    }

    if (v11 == 3)
    {
      v12 = [v0 view];
      if (v12)
      {
        v13 = v12;
        [swift_dynamicCastClassUnconditional() transitionToNextState];

        (*(v4 + 104))(v7, *MEMORY[0x277D12CE0], v3);
        sub_20CDD2958(v7);
        (*(v4 + 8))(v7, v3);
        v14 = *&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager];
        if (v14)
        {
          [v14 startTest];
          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v34 = sub_20CE12CB4();
    __swift_project_value_buffer(v34, qword_27C817768);
    v43 = sub_20CE12C94();
    v35 = sub_20CE13CB4();
    if (os_log_type_enabled(v43, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v45 = v37;
      *v36 = 136446210;
      v38 = sub_20CE14414();
      v40 = sub_20CD96DCC(v38, v39, &v45);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_20CD70000, v43, v35, "[%{public}s] Unexpected view state when user tapped action button.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x20F314110](v37, -1, -1);
      MEMORY[0x20F314110](v36, -1, -1);
    }

    else
    {
      v41 = v43;
    }
  }

  else
  {
    v15 = v8;
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C817768);
    v17 = sub_20CE12C94();
    v18 = sub_20CE13CB4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136446466;
      v21 = sub_20CE14414();
      v23 = sub_20CD96DCC(v21, v22, &v45);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      v44 = v15;
      v24 = sub_20CE13974();
      v26 = sub_20CD96DCC(v24, v25, &v45);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_20CD70000, v17, v18, "[%{public}s] User tapped action, but progress is blocked by %s. Showing alert.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v20, -1, -1);
      MEMORY[0x20F314110](v19, -1, -1);
    }

    v27 = sub_20CDA3584(v15);
    v29 = v28;
    v30 = sub_20CDA3760(v15);
    sub_20CD95C28(v27, v29, v30, v31, 0);
  }
}

uint64_t sub_20CDD3454()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for HTUIEvaluationViewController.View();
    v3 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

    if (v3 == 3)
    {
      v4 = *(*(*&v0[OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager] + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
      if (v4 <= 0x3F && (v4 & 1) != 0)
      {
        if (sub_20CDDF9E4())
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HTUIEvaluationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20CE13914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HTUIEvaluationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTUIEvaluationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDD377C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_20CE124E4();
  v39 = *(v2 - 8);
  v3 = v39[8];
  MEMORY[0x28223BE20](v2);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD8C64(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v14 = sub_20CE12CB4();
  __swift_project_value_buffer(v14, qword_27C817768);
  v15 = sub_20CE12C94();
  v16 = sub_20CE13CD4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136315394;
    v19 = sub_20CE14414();
    v21 = sub_20CD96DCC(v19, v20, v40);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_20CD96DCC(0xD000000000000011, 0x800000020CE1F020, v40);
    _os_log_impl(&dword_20CD70000, v15, v16, "[%s] %s called.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v18, -1, -1);
    MEMORY[0x20F314110](v17, -1, -1);
  }

  sub_20CE124D4();
  v22 = v39;
  v35 = v39[7];
  v35(v13, 0, 1, v2);
  v23 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  swift_beginAccess();
  v36 = v13;
  sub_20CD83094(v13, v1 + v23);
  swift_endAccess();
  v24 = *(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
  v25 = OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_hearingTestStartDate;
  swift_beginAccess();
  sub_20CD7DC78(v24 + v25, v11);
  v26 = v1;
  v27 = v2;
  v28 = v22[6];
  LODWORD(v22) = v28(v11, 1, v2);
  result = sub_20CDD8EC0(v11, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
  if (v22 == 1)
  {
    v30 = v38;
    sub_20CD7DC78(v26 + v23, v38);
    if (v28(v30, 1, v2) == 1)
    {
      return sub_20CDD8EC0(v30, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
    }

    else
    {
      v31 = v39[4];
      v32 = v37;
      v31(v37, v30, v27);
      v33 = v36;
      v31(v36, v32, v27);
      v35(v33, 0, 1, v27);
      swift_beginAccess();
      sub_20CD83094(v33, v24 + v25);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_20CDD3C78(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SessionManager.EndReason(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v108 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v100 = &v100 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v100 - v12;
  MEMORY[0x28223BE20](v11);
  v111 = &v100 - v13;
  v14 = sub_20CE127E4();
  v103 = *(v14 - 8);
  v15 = *(v103 + 64);
  MEMORY[0x28223BE20](v14);
  v107 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20CE12694();
  v101 = *(v17 - 8);
  v102 = v17;
  v18 = *(v101 + 64);
  MEMORY[0x28223BE20](v17);
  v106 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD8C64(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v100 - v22;
  v24 = sub_20CE124E4();
  v110 = *(v24 - 8);
  v25 = *(v110 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v105 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v30 = sub_20CE12CB4();
  v114 = __swift_project_value_buffer(v30, qword_27C817768);
  v31 = sub_20CE12C94();
  v32 = sub_20CE13CD4();
  v33 = os_log_type_enabled(v31, v32);
  v112 = a1;
  v113 = ObjectType;
  v104 = v14;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v116[0] = v35;
    *v34 = 136315394;
    v36 = sub_20CE14414();
    v38 = v2;
    v39 = sub_20CD96DCC(v36, v37, v116);

    *(v34 + 4) = v39;
    v2 = v38;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_20CD96DCC(0xD000000000000016, 0x800000020CE1F040, v116);
    _os_log_impl(&dword_20CD70000, v31, v32, "[%s] %s called.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v35, -1, -1);
    MEMORY[0x20F314110](v34, -1, -1);
  }

  v40 = [v2 view];
  if (!v40)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = v40;
  type metadata accessor for HTUIEvaluationViewController.View();
  v42 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

  if ((v42 - 2) < 3)
  {
    v114 = sub_20CE12C94();
    v43 = sub_20CE13CC4();
    if (os_log_type_enabled(v114, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v116[0] = v45;
      *v44 = 136446210;
      v46 = sub_20CE14414();
      v48 = sub_20CD96DCC(v46, v47, v116);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_20CD70000, v114, v43, "[%{public}s] Method called with .sessionEnded while view is in an unexpected state.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x20F314110](v45, -1, -1);
      MEMORY[0x20F314110](v44, -1, -1);
    }

    else
    {
      v51 = v114;
    }

    return;
  }

  v49 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationStartDate;
  swift_beginAccess();
  sub_20CD7DC78(v2 + v49, v23);
  v50 = v110;
  if ((*(v110 + 48))(v23, 1, v24) == 1)
  {
    sub_20CDD8EC0(v23, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_20CDD8C64);
  }

  else
  {
    (*(v50 + 32))(v29, v23, v24);
    v52 = v105;
    sub_20CE124D4();
    sub_20CE12494();
    v54 = v53;
    v55 = *(v50 + 8);
    v55(v52, v24);
    v55(v29, v24);
    v56 = v2 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_evaluationDuration;
    *v56 = v54;
    v56[8] = 0;
  }

  v58 = v111;
  v57 = v112;
  sub_20CDD8F74(v112, v111);
  sub_20CD7B6A4();
  v60 = v59;
  v61 = *(*(v59 - 8) + 48);
  if (v61(v58, 2, v59))
  {
    sub_20CDD89B0(v58);
    v62 = v109;
    sub_20CDD8F74(v57, v109);
    v63 = sub_20CE12C94();
    v64 = sub_20CE13CB4();
    if (os_log_type_enabled(v63, v64))
    {
      v114 = v2;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v115 = v66;
      *v65 = 136446466;
      v67 = sub_20CE14414();
      v69 = sub_20CD96DCC(v67, v68, &v115);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = v100;
      sub_20CDD8F74(v62, v100);
      v71 = v61(v70, 2, v60);
      if (v71)
      {
        if (v71 == 1)
        {
          v72 = 0xEC00000065766973;
          v73 = 0x756C636E6F636E49;
        }

        else
        {
          v72 = 0xEE00646574726F62;
          v73 = 0x4120746E65696C43;
        }
      }

      else
      {
        (*(v103 + 8))(v70 + *(v60 + 48), v104);
        (*(v101 + 8))(v70, v102);
        v72 = 0xE900000000000064;
        v73 = 0x6574656C706D6F43;
      }

      sub_20CDD89B0(v109);
      v89 = sub_20CD96DCC(v73, v72, &v115);

      *(v65 + 14) = v89;
      _os_log_impl(&dword_20CD70000, v63, v64, "[%{public}s] Session ended with: %s.", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v66, -1, -1);
      MEMORY[0x20F314110](v65, -1, -1);

      v2 = v114;
      v57 = v112;
    }

    else
    {

      sub_20CDD89B0(v62);
    }

    v90 = v108;
    sub_20CDD8F74(v57, v108);
    v91 = v61(v90, 2, v60);
    sub_20CDD89B0(v90);
    if (v91 == 1)
    {
      v92 = (*(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_analyticsManager);
      v94 = *v92;
      v93 = v92[1];
      v95 = swift_getObjectType();
      v96 = v2;
      v97 = *(v93 + 8);
      swift_unknownObjectRetain();
      v97(v95, v93);
      v2 = v96;
      swift_unknownObjectRelease();
      LOBYTE(v115) = 4;
      sub_20CD8EDF0(&v115);
    }

    v98 = *(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
    LOBYTE(v115) = 6;
    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_20CDDDFEC(v2, &v115, v98, v99, v113);

    return;
  }

  v74 = *(v60 + 48);
  v76 = v101;
  v75 = v102;
  v77 = v106;
  (*(v101 + 32))(v106, v58, v102);
  v79 = v103;
  v78 = v104;
  v80 = v58 + v74;
  v81 = v107;
  (*(v103 + 32))(v107, v80, v104);
  v82 = *(&v2->isa + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager);
  sub_20CDDBA74(v77, v81);
  if (*(v82 + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_isPartialResultAmbiguous))
  {
    (*(v79 + 8))(v81, v78);
    (*(v76 + 8))(v77, v75);
    return;
  }

  v83 = [v2 view];
  if (!v83)
  {
    goto LABEL_35;
  }

  v84 = v83;
  [swift_dynamicCastClassUnconditional() transitionToNextState];

  v85 = [v2 view];
  if (!v85)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v86 = v85;
  v87 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCC13HearingTestUI28HTUIEvaluationViewController4View_state);

  v88 = v106;
  if (v87 == 4)
  {
    sub_20CDD19E0(0);
  }

  (*(v79 + 8))(v107, v78);
  (*(v76 + 8))(v88, v75);
}

void sub_20CDD4870()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] Received audio interruption.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = *(*__swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager), *(*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_interruptionViewControllerManager + 24)) + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager);
  sub_20CDBE098();
}

uint64_t HTUIEvaluationViewController.handledInterruptionsSet.getter()
{
  v0 = sub_20CDB9D40();
  v3 = MEMORY[0x20F313150](8, &type metadata for HearingTestInterruptionType, v0);
  sub_20CDD6734(&v2, byte_2823BAFC0);
  sub_20CDD6734(&v2, byte_2823BAFC1);
  sub_20CDD6734(&v2, byte_2823BAFC2);
  sub_20CDD6734(&v2, byte_2823BAFC3);
  sub_20CDD6734(&v2, byte_2823BAFC4);
  sub_20CDD6734(&v2, byte_2823BAFC5);
  sub_20CDD6734(&v2, byte_2823BAFC6);
  sub_20CDD6734(&v2, byte_2823BAFC7);
  return v3;
}

uint64_t sub_20CDD4AF4()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_flowManager) + OBJC_IVAR____TtC13HearingTestUI22HearingTestFlowManager_deviceManager) + 24);
  if (v1 > 0x3F || (v1 & 1) == 0)
  {
    return 2;
  }

  if (sub_20CDDF9E4())
  {
    return 3;
  }

  return 4;
}

Swift::Void __swiftcall HTUIEvaluationViewController.terminalInterruptionEncountered()()
{
  v1 = type metadata accessor for SessionManager.EndReason(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDD4C98();
  v5 = *(v0 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_sessionManager);
  if (v5)
  {
    sub_20CD7B6A4();
    (*(*(v6 - 8) + 56))(v4, 2, 2, v6);

    sub_20CD776F4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20CDD3C78(v4);
      swift_unknownObjectRelease();
    }

    if (*(v5 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) == 1)
    {
      *(v5 + OBJC_IVAR____TtC13HearingTestUI14SessionManager__sessionIsActive) = 0;
      sub_20CD770DC();
    }

    sub_20CDD89B0(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDD4C98()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD000000000000019, 0x800000020CE1F060, &v12);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer;
  [*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer) invalidate];
  v11 = *(v1 + v10);
  *(v1 + v10) = 0;
}

void sub_20CDD4E60()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12CB4();
  __swift_project_value_buffer(v2, qword_27C817768);
  v3 = sub_20CE12C94();
  v4 = sub_20CE13CD4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136446466;
    v7 = sub_20CE14414();
    v9 = sub_20CD96DCC(v7, v8, aBlock);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1EFE0, aBlock);
    _os_log_impl(&dword_20CD70000, v3, v4, "[%{public}s] %s called.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v6, -1, -1);
    MEMORY[0x20F314110](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI28HTUIEvaluationViewController_pauseTimer))
  {
    oslog = sub_20CE12C94();
    v11 = sub_20CE13CD4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v14 = sub_20CE14414();
      v16 = sub_20CD96DCC(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_20CD70000, oslog, v11, "[%{public}s] Not setting up a new pause threshold timer as one already exists.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x20F314110](v13, -1, -1);
      MEMORY[0x20F314110](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v18 = sub_20CE13914();
    v19 = [v17 initWithSuiteName_];

    if (v19)
    {
      v20 = COERCE_DOUBLE(NSUserDefaults.overrideHearingTestSessionPauseThreshold.getter());
      v22 = v21;

      if (v22)
      {
        v23 = 120.0;
      }

      else
      {
        v23 = v20;
      }

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_20CDD8B30;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CD95834;
      aBlock[3] = &block_descriptor_6;
      v25 = _Block_copy(aBlock);
      v26 = objc_opt_self();

      v27 = [v26 timerWithTimeInterval:0 repeats:v25 block:v23];
      _Block_release(v25);

      v28 = *(v1 + v10);
      *(v1 + v10) = v27;
      v29 = v27;

      if (v29)
      {
        v30 = [objc_opt_self() mainRunLoop];
        [v30 addTimer:v29 forMode:*MEMORY[0x277CBE738]];
      }

      else
      {
        v31 = sub_20CE12C94();
        v32 = sub_20CE13CB4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          aBlock[0] = v34;
          *v33 = 136446466;
          v35 = sub_20CE14414();
          v37 = sub_20CD96DCC(v35, v36, aBlock);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_20CD96DCC(0xD00000000000001ALL, 0x800000020CE1EFE0, aBlock);
          _os_log_impl(&dword_20CD70000, v31, v32, "[%{public}s] %s Timer deallocated before it could be added to the RunLoop.", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F314110](v34, -1, -1);
          MEMORY[0x20F314110](v33, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}